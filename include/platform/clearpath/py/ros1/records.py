"""@file records.py
@brief Complete original clearpath values using the shared strict Python codec.
@details Source-only identities confer no native ROS registration or permission.
"""

from ros.py.wire import Record, Registry

REGISTRY = Registry()


class Ros1Clearpath_camera_msgsInspectPOIGoal(Record):
    """@brief Own every original clearpath_camera_msgs/InspectPOIGoal field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("poi_uuid", "zoom")
    # @brief Original poi_uuid: string; shape scalar.
    # @brief Original zoom: float32; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_565be10d97c4c60912d396cfb44121df60bc367458a8907d0dbccb48df3a35db",
        "minimum": 8,
        "maximum": 264,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "poi_uuid",
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
                "name": "zoom",
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
        "type": "clearpath_camera_msgs/InspectPOIGoal",
    }


REGISTRY.add(Ros1Clearpath_camera_msgsInspectPOIGoal)


class Ros1Clearpath_camera_msgsInspectPOIResult(Record):
    """@brief Own every original clearpath_camera_msgs/InspectPOIResult field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("success", "message")
    # @brief Original success: bool; shape scalar.
    # @brief Original message: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_6e3fb05c4e74fb8dd7de685bc0f774506921e3b4cf060721b2a756771403e156",
        "minimum": 5,
        "maximum": 261,
        "semantics": "",
        "ros_version": 1,
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
        "type": "clearpath_camera_msgs/InspectPOIResult",
    }


REGISTRY.add(Ros1Clearpath_camera_msgsInspectPOIResult)


class Ros1Clearpath_camera_msgsInspectPOIFeedback(Record):
    """@brief Own every original clearpath_camera_msgs/InspectPOIFeedback field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("message",)
    # @brief Original message: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_27296847f85ab4f22770912227596b59886335e35a4c3b0313fee5bf5b386777",
        "minimum": 4,
        "maximum": 260,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
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
                "raw": False,
                "element_minimum": 4,
            }
        ],
        "type": "clearpath_camera_msgs/InspectPOIFeedback",
    }


REGISTRY.add(Ros1Clearpath_camera_msgsInspectPOIFeedback)


class Ros1Clearpath_dock_msgsLocalDockGoal(Record):
    """@brief Own every original clearpath_dock_msgs/LocalDockGoal field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ()
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_45a53e58200f1fae57933c2414443a3ee7c0c80dfe5d849d59f5085030abab81",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [],
        "type": "clearpath_dock_msgs/LocalDockGoal",
    }


REGISTRY.add(Ros1Clearpath_dock_msgsLocalDockGoal)


class Ros1Clearpath_dock_msgsLocalDockResult(Record):
    """@brief Own every original clearpath_dock_msgs/LocalDockResult field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("success", "message")
    # @brief Original success: bool; shape scalar.
    # @brief Original message: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_eb485112962a291a8ab4d789f8d36a96e9dd45b54c35ecd070ffefcef510310b",
        "minimum": 5,
        "maximum": 261,
        "semantics": "",
        "ros_version": 1,
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
        "type": "clearpath_dock_msgs/LocalDockResult",
    }


REGISTRY.add(Ros1Clearpath_dock_msgsLocalDockResult)


class Ros1Clearpath_dock_msgsLocalDockFeedback(Record):
    """@brief Own every original clearpath_dock_msgs/LocalDockFeedback field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("message",)
    # @brief Original message: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_242011c30d8e33482c33e2d379c7d70a021236a000ecf3f6df4941980cfe10e1",
        "minimum": 4,
        "maximum": 260,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
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
                "raw": False,
                "element_minimum": 4,
            }
        ],
        "type": "clearpath_dock_msgs/LocalDockFeedback",
    }


REGISTRY.add(Ros1Clearpath_dock_msgsLocalDockFeedback)


class Ros1Clearpath_dock_msgsLocalUndockGoal(Record):
    """@brief Own every original clearpath_dock_msgs/LocalUndockGoal field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("undock_distance",)
    # @brief Original undock_distance: float32; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_9ae8cdbd777755af0f8d92e93b3a45438af4b1b02af9fedfedf97ea45a0d81fc",
        "minimum": 4,
        "maximum": 4,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "undock_distance",
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
            }
        ],
        "type": "clearpath_dock_msgs/LocalUndockGoal",
    }


REGISTRY.add(Ros1Clearpath_dock_msgsLocalUndockGoal)


class Ros1Clearpath_dock_msgsLocalUndockResult(Record):
    """@brief Own every original clearpath_dock_msgs/LocalUndockResult field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("success", "message")
    # @brief Original success: bool; shape scalar.
    # @brief Original message: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_e6f44748c15f5653f3f79ac5ebbcb8067a52736c1905aeb76a8646d4d0caf6c2",
        "minimum": 5,
        "maximum": 261,
        "semantics": "",
        "ros_version": 1,
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
        "type": "clearpath_dock_msgs/LocalUndockResult",
    }


REGISTRY.add(Ros1Clearpath_dock_msgsLocalUndockResult)


class Ros1Clearpath_dock_msgsLocalUndockFeedback(Record):
    """@brief Own every original clearpath_dock_msgs/LocalUndockFeedback field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("message",)
    # @brief Original message: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_f3d6f32b8f1735c612aba8c5bfc6bc4d45f59b80b3ed75e6fc64f20b821d534f",
        "minimum": 4,
        "maximum": 260,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
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
                "raw": False,
                "element_minimum": 4,
            }
        ],
        "type": "clearpath_dock_msgs/LocalUndockFeedback",
    }


REGISTRY.add(Ros1Clearpath_dock_msgsLocalUndockFeedback)


class Ros1Clearpath_dock_msgsNetworkDockGoal(Record):
    """@brief Own every original clearpath_dock_msgs/NetworkDockGoal field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("dock_uuid", "network_uuid")
    # @brief Original dock_uuid: string; shape scalar.
    # @brief Original network_uuid: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_d4b9ecb8f25cbbb6b0db567d93de10a739e9d4f5b5cc9a9744a45bd515de45ec",
        "minimum": 8,
        "maximum": 520,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "dock_uuid",
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
                "name": "network_uuid",
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
        "type": "clearpath_dock_msgs/NetworkDockGoal",
    }


REGISTRY.add(Ros1Clearpath_dock_msgsNetworkDockGoal)


class Ros1Clearpath_dock_msgsNetworkDockResult(Record):
    """@brief Own every original clearpath_dock_msgs/NetworkDockResult field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("success", "message")
    # @brief Original success: bool; shape scalar.
    # @brief Original message: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_7f7886646fa1c9792d2ded3033e67f6476d5401a5d67536365d7b97b9318a913",
        "minimum": 5,
        "maximum": 261,
        "semantics": "",
        "ros_version": 1,
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
        "type": "clearpath_dock_msgs/NetworkDockResult",
    }


REGISTRY.add(Ros1Clearpath_dock_msgsNetworkDockResult)


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


class Ros1Clearpath_navigation_msgsTask(Record):
    """@brief Own every original clearpath_navigation_msgs/Task field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("name", "uuid", "action_server_name", "version", "floats", "strings", "allow_failure")
    # @brief Original name: string; shape scalar.
    # @brief Original uuid: string; shape scalar.
    # @brief Original action_server_name: string; shape scalar.
    # @brief Original version: string; shape scalar.
    # @brief Original floats: float64; shape sequence.
    # @brief Original strings: string; shape sequence.
    # @brief Original allow_failure: bool; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_9800265a8c633618cc26019c169871c8f2cb53c56aebba1567b1de52f15ac658",
        "minimum": 25,
        "maximum": 1457,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "uuid",
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
                "name": "action_server_name",
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "floats",
                "type": "float64",
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
                "element_minimum": 8,
            },
            {
                "name": "strings",
                "type": "string",
                "array": "sequence",
                "count": 2,
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
                "name": "allow_failure",
                "type": "bool",
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
        "type": "clearpath_navigation_msgs/Task",
    }


REGISTRY.add(Ros1Clearpath_navigation_msgsTask)


class Ros1Clearpath_navigation_msgsWaypoint(Record):
    """@brief Own every original clearpath_navigation_msgs/Waypoint field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("uuid", "name", "latitude", "longitude", "heading", "position_tolerance", "yaw_tolerance", "tasks")
    # @brief Original uuid: string; shape scalar.
    # @brief Original name: string; shape scalar.
    # @brief Original latitude: float64; shape scalar.
    # @brief Original longitude: float64; shape scalar.
    # @brief Original heading: float64; shape scalar.
    # @brief Original position_tolerance: float64; shape scalar.
    # @brief Original yaw_tolerance: float64; shape scalar.
    # @brief Original tasks: clearpath_navigation_msgs/Task; shape sequence.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_68f7d2e826789aad21d6f15bd06060b6e0fb0bdac40bdc7de685c935afc93c30",
        "minimum": 52,
        "maximum": 3350,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "uuid",
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "latitude",
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
                "name": "longitude",
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
                "name": "heading",
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
                "name": "position_tolerance",
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
                "name": "yaw_tolerance",
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
                "name": "tasks",
                "type": "clearpath_navigation_msgs/Task",
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
                "element_minimum": 25,
            },
        ],
        "type": "clearpath_navigation_msgs/Waypoint",
    }


REGISTRY.add(Ros1Clearpath_navigation_msgsWaypoint)


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


class Ros1Clearpath_navigation_msgsNetworkMissionSegment(Record):
    """@brief Own every original clearpath_navigation_msgs/NetworkMissionSegment field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("header", "goal", "points")
    # @brief Original header: std_msgs/Header; shape scalar.
    # @brief Original goal: clearpath_navigation_msgs/Waypoint; shape scalar.
    # @brief Original points: geometry_msgs/Point; shape sequence.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_63c55d82f410637d740a5a5c93fe4f1e0d1539bdbce947eac474bb2472355877",
        "minimum": 72,
        "maximum": 3546,
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
                "name": "goal",
                "type": "clearpath_navigation_msgs/Waypoint",
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
                "element_minimum": 52,
            },
            {
                "name": "points",
                "type": "geometry_msgs/Point",
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
                "element_minimum": 24,
            },
        ],
        "type": "clearpath_navigation_msgs/NetworkMissionSegment",
    }


REGISTRY.add(Ros1Clearpath_navigation_msgsNetworkMissionSegment)


class Ros1Clearpath_dock_msgsNetworkDockFeedback(Record):
    """@brief Own every original clearpath_dock_msgs/NetworkDockFeedback field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("message", "network_plan")
    # @brief Original message: string; shape scalar.
    # @brief Original network_plan: clearpath_navigation_msgs/NetworkMissionSegment; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_5b1b091da1ad18a3686cd6b3c57b2c181539a5b94e0f31dd2ddb89aa297bd6f6",
        "minimum": 76,
        "maximum": 3806,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "network_plan",
                "type": "clearpath_navigation_msgs/NetworkMissionSegment",
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
                "element_minimum": 72,
            },
        ],
        "type": "clearpath_dock_msgs/NetworkDockFeedback",
    }


REGISTRY.add(Ros1Clearpath_dock_msgsNetworkDockFeedback)


class Ros1Clearpath_dock_msgsRadiusDockGoal(Record):
    """@brief Own every original clearpath_dock_msgs/RadiusDockGoal field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("dock_uuid",)
    # @brief Original dock_uuid: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_078d5852eab50c98283fcb512c9b9161ea1a710b5827b5738fbe0199323230a9",
        "minimum": 4,
        "maximum": 260,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "dock_uuid",
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
        "type": "clearpath_dock_msgs/RadiusDockGoal",
    }


REGISTRY.add(Ros1Clearpath_dock_msgsRadiusDockGoal)


class Ros1Clearpath_dock_msgsRadiusDockResult(Record):
    """@brief Own every original clearpath_dock_msgs/RadiusDockResult field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("success", "message")
    # @brief Original success: bool; shape scalar.
    # @brief Original message: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_e4b1757e3b129f7de6427334ea3ad10d6bd7df27a0558af6130b20ab37a5c30a",
        "minimum": 5,
        "maximum": 261,
        "semantics": "",
        "ros_version": 1,
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
        "type": "clearpath_dock_msgs/RadiusDockResult",
    }


REGISTRY.add(Ros1Clearpath_dock_msgsRadiusDockResult)


class Ros1Clearpath_dock_msgsRadiusDockFeedback(Record):
    """@brief Own every original clearpath_dock_msgs/RadiusDockFeedback field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("message",)
    # @brief Original message: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_1a3467aced8c46a9d3c1146d69d9af4b1ec04849b52c2fb971ed12e6c587c048",
        "minimum": 4,
        "maximum": 260,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
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
                "raw": False,
                "element_minimum": 4,
            }
        ],
        "type": "clearpath_dock_msgs/RadiusDockFeedback",
    }


REGISTRY.add(Ros1Clearpath_dock_msgsRadiusDockFeedback)


class Ros1Clearpath_localization_msgsSurveyBaseStationGoal(Record):
    """@brief Own every original clearpath_localization_msgs/SurveyBaseStationGoal field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("number_of_desired_fixes",)
    # @brief Original number_of_desired_fixes: uint32; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_0cc3ffd35550c179c2cc3a7a40a6c0976ff2749c5405473d8b0504ff1bd2e904",
        "minimum": 4,
        "maximum": 4,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "number_of_desired_fixes",
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
            }
        ],
        "type": "clearpath_localization_msgs/SurveyBaseStationGoal",
    }


REGISTRY.add(Ros1Clearpath_localization_msgsSurveyBaseStationGoal)


class Ros1Clearpath_localization_msgsSurveyBaseStationResult(Record):
    """@brief Own every original clearpath_localization_msgs/SurveyBaseStationResult field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("success",)
    # @brief Original success: bool; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_80e92d291c46cd247b66d76aef498a69a9a1289d55442d2fc170092728a1b466",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "ros_version": 1,
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
            }
        ],
        "type": "clearpath_localization_msgs/SurveyBaseStationResult",
    }


REGISTRY.add(Ros1Clearpath_localization_msgsSurveyBaseStationResult)


class Ros1Clearpath_localization_msgsSurveyBaseStationFeedback(Record):
    """@brief Own every original clearpath_localization_msgs/SurveyBaseStationFeedback field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("percent_complete",)
    # @brief Original percent_complete: float32; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_d90857766b78e69fe9ccd7fcc4fc234e8411fcd162ef0d1912b3d11465ba3d72",
        "minimum": 4,
        "maximum": 4,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "percent_complete",
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
            }
        ],
        "type": "clearpath_localization_msgs/SurveyBaseStationFeedback",
    }


REGISTRY.add(Ros1Clearpath_localization_msgsSurveyBaseStationFeedback)


class Ros1Duration(Record):
    """@brief Own every original duration field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("sec", "nsec")
    # @brief Original sec: int32; shape scalar.
    # @brief Original nsec: int32; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_8dbec6cdfef79495208abb358c5e8283ec8d9d471f984424afcda997d142cca8",
        "minimum": 8,
        "maximum": 8,
        "semantics": "",
        "ros_version": 1,
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
                "name": "nsec",
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
        ],
        "type": "duration",
    }


REGISTRY.add(Ros1Duration)


class Ros1Clearpath_mission_scheduler_msgsRunScheduleByUuidGoal(Record):
    """@brief Own every original clearpath_mission_scheduler_msgs/RunScheduleByUuidGoal field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("uuid", "delay")
    # @brief Original uuid: string; shape scalar.
    # @brief Original delay: duration; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_cbe7e0318b365563a448441b29166d798a20ef92c0c65415f80c1a71a00cbf72",
        "minimum": 12,
        "maximum": 268,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "uuid",
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
                "name": "delay",
                "type": "duration",
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
        "type": "clearpath_mission_scheduler_msgs/RunScheduleByUuidGoal",
    }


REGISTRY.add(Ros1Clearpath_mission_scheduler_msgsRunScheduleByUuidGoal)


class Ros1Clearpath_mission_scheduler_msgsRunScheduleByUuidResult(Record):
    """@brief Own every original clearpath_mission_scheduler_msgs/RunScheduleByUuidResult field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("success",)
    # @brief Original success: bool; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_01288b98deab00397457f14ea6817e320bff6448f839acfad0047654facb91d4",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "ros_version": 1,
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
            }
        ],
        "type": "clearpath_mission_scheduler_msgs/RunScheduleByUuidResult",
    }


REGISTRY.add(Ros1Clearpath_mission_scheduler_msgsRunScheduleByUuidResult)


class Ros1Clearpath_mission_scheduler_msgsRunScheduleByUuidFeedback(Record):
    """@brief Own every original clearpath_mission_scheduler_msgs/RunScheduleByUuidFeedback field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("current_mission_uuid", "state")
    # @brief Original current_mission_uuid: string; shape scalar.
    # @brief Original state: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_8b075ffb1cdf13580f5a4ddec2cb3d6edbeb88a9ba1e038d85a82a6029ec0f32",
        "minimum": 8,
        "maximum": 520,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "current_mission_uuid",
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
        "type": "clearpath_mission_scheduler_msgs/RunScheduleByUuidFeedback",
    }


REGISTRY.add(Ros1Clearpath_mission_scheduler_msgsRunScheduleByUuidFeedback)


class Ros1Clearpath_navigation_msgsExecuteMissionByUuidGoal(Record):
    """@brief Own every original clearpath_navigation_msgs/ExecuteMissionByUuidGoal field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("uuid", "from_start", "start_waypoint_uuid")
    # @brief Original uuid: string; shape scalar.
    # @brief Original from_start: bool; shape scalar.
    # @brief Original start_waypoint_uuid: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_2026328374c75acb27d33669d0e8a4aa7aa9527b90607c23e5aae986b2be7801",
        "minimum": 9,
        "maximum": 521,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "uuid",
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
                "name": "from_start",
                "type": "bool",
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
                "name": "start_waypoint_uuid",
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
        "type": "clearpath_navigation_msgs/ExecuteMissionByUuidGoal",
    }


REGISTRY.add(Ros1Clearpath_navigation_msgsExecuteMissionByUuidGoal)


class Ros1Clearpath_navigation_msgsExecuteMissionByUuidResult(Record):
    """@brief Own every original clearpath_navigation_msgs/ExecuteMissionByUuidResult field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("success", "message")
    # @brief Original success: bool; shape scalar.
    # @brief Original message: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_5b93894ac84b85948b10ebe884bd74c1c0bc90031a86f407516badb1940a12f8",
        "minimum": 5,
        "maximum": 261,
        "semantics": "",
        "ros_version": 1,
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
        "type": "clearpath_navigation_msgs/ExecuteMissionByUuidResult",
    }


REGISTRY.add(Ros1Clearpath_navigation_msgsExecuteMissionByUuidResult)


class Ros1Clearpath_navigation_msgsExecuteMissionByUuidFeedback(Record):
    """@brief Own every original clearpath_navigation_msgs/ExecuteMissionByUuidFeedback field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("message",)
    # @brief Original message: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_f86df88585d2f804900f3d362f53bcb1552c3981c806b9d5a3eb83be6023b8fb",
        "minimum": 4,
        "maximum": 260,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
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
                "raw": False,
                "element_minimum": 4,
            }
        ],
        "type": "clearpath_navigation_msgs/ExecuteMissionByUuidFeedback",
    }


REGISTRY.add(Ros1Clearpath_navigation_msgsExecuteMissionByUuidFeedback)


class Ros1Clearpath_navigation_msgsExecuteNetworkGoToGoal(Record):
    """@brief Own every original clearpath_navigation_msgs/ExecuteNetworkGoToGoal field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("map_uuid", "waypoint")
    # @brief Original map_uuid: string; shape scalar.
    # @brief Original waypoint: clearpath_navigation_msgs/Waypoint; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_0877cd8087712f31f6f7d6461f9a12eb23c62b0369b02b1363be5367e6bbe9a5",
        "minimum": 56,
        "maximum": 3610,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "map_uuid",
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
                "name": "waypoint",
                "type": "clearpath_navigation_msgs/Waypoint",
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
                "element_minimum": 52,
            },
        ],
        "type": "clearpath_navigation_msgs/ExecuteNetworkGoToGoal",
    }


REGISTRY.add(Ros1Clearpath_navigation_msgsExecuteNetworkGoToGoal)


class Ros1Clearpath_navigation_msgsExecuteNetworkGoToResult(Record):
    """@brief Own every original clearpath_navigation_msgs/ExecuteNetworkGoToResult field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("code", "success", "message")
    # @brief Original code: uint8; shape scalar.
    # @brief Original success: bool; shape scalar.
    # @brief Original message: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_2b2841163f46c7b7debb7cfe15df2b60f32e103396455f68ed328a1a11cddeda",
        "minimum": 6,
        "maximum": 262,
        "semantics": "",
        "ros_version": 1,
        "constants": {
            "UNKNOWN": 0,
            "CANCELLED": 1,
            "COLLISION": 2,
            "PLANNING": 3,
            "START_TASKS": 4,
            "END_TASKS": 5,
            "MISSION_TASKS": 6,
        },
        "fields": [
            {
                "name": "code",
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
                "name": "success",
                "type": "bool",
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
        "type": "clearpath_navigation_msgs/ExecuteNetworkGoToResult",
    }


REGISTRY.add(Ros1Clearpath_navigation_msgsExecuteNetworkGoToResult)


class Ros1Clearpath_navigation_msgsExecuteNetworkGoToFeedback(Record):
    """@brief Own every original clearpath_navigation_msgs/ExecuteNetworkGoToFeedback field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("message", "network_plan")
    # @brief Original message: string; shape scalar.
    # @brief Original network_plan: clearpath_navigation_msgs/NetworkMissionSegment; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_fe1de33d922bd1483c747ede295e8383a18848ae5911e66fb947fd110a196067",
        "minimum": 76,
        "maximum": 3806,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "network_plan",
                "type": "clearpath_navigation_msgs/NetworkMissionSegment",
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
                "element_minimum": 72,
            },
        ],
        "type": "clearpath_navigation_msgs/ExecuteNetworkGoToFeedback",
    }


REGISTRY.add(Ros1Clearpath_navigation_msgsExecuteNetworkGoToFeedback)


class Ros1Clearpath_navigation_msgsExecuteNetworkMissionByUuidGoal(Record):
    """@brief Own every original clearpath_navigation_msgs/ExecuteNetworkMissionByUuidGoal field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("mission_uuid", "map_uuid")
    # @brief Original mission_uuid: string; shape scalar.
    # @brief Original map_uuid: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_f75615051b84d90d373e7a16785d6cfaf7c48465ea3a644dc54711172a13be65",
        "minimum": 8,
        "maximum": 520,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "mission_uuid",
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
                "name": "map_uuid",
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
        "type": "clearpath_navigation_msgs/ExecuteNetworkMissionByUuidGoal",
    }


REGISTRY.add(Ros1Clearpath_navigation_msgsExecuteNetworkMissionByUuidGoal)


class Ros1Clearpath_navigation_msgsNetworkGoalState(Record):
    """@brief Own every original clearpath_navigation_msgs/NetworkGoalState field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("state", "waypoint")
    # @brief Original state: uint8; shape scalar.
    # @brief Original waypoint: clearpath_navigation_msgs/Waypoint; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_2a039023aed39c0b8b3e91c1938a6b9b41c94e698639bc4b27fb377e9e5dde01",
        "minimum": 53,
        "maximum": 3351,
        "semantics": "",
        "ros_version": 1,
        "constants": {
            "PENDING": 0,
            "ACTIVE": 1,
            "SUCCEEDED": 2,
            "NAV_FAILURE": 3,
            "TASK_WARNING": 4,
            "TASK_FAILURE": 5,
        },
        "fields": [
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
            {
                "name": "waypoint",
                "type": "clearpath_navigation_msgs/Waypoint",
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
                "element_minimum": 52,
            },
        ],
        "type": "clearpath_navigation_msgs/NetworkGoalState",
    }


REGISTRY.add(Ros1Clearpath_navigation_msgsNetworkGoalState)


class Ros1Clearpath_navigation_msgsExecuteNetworkMissionByUuidResult(Record):
    """@brief Own every original clearpath_navigation_msgs/ExecuteNetworkMissionByUuidResult field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("code", "success", "message", "goal_states")
    # @brief Original code: uint8; shape scalar.
    # @brief Original success: bool; shape scalar.
    # @brief Original message: string; shape scalar.
    # @brief Original goal_states: clearpath_navigation_msgs/NetworkGoalState; shape sequence.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_5bdab4569bc5bb4f94910b294acf04708f4677f6a1adcc326ee0420edf6de856",
        "minimum": 10,
        "maximum": 6968,
        "semantics": "",
        "ros_version": 1,
        "constants": {
            "UNKNOWN": 0,
            "CANCELLED": 1,
            "COLLISION": 2,
            "PLANNING": 3,
            "START_TASKS": 4,
            "END_TASKS": 5,
            "MISSION_TASKS": 6,
        },
        "fields": [
            {
                "name": "code",
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
                "name": "success",
                "type": "bool",
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
            {
                "name": "goal_states",
                "type": "clearpath_navigation_msgs/NetworkGoalState",
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
                "element_minimum": 53,
            },
        ],
        "type": "clearpath_navigation_msgs/ExecuteNetworkMissionByUuidResult",
    }


REGISTRY.add(Ros1Clearpath_navigation_msgsExecuteNetworkMissionByUuidResult)


class Ros1Clearpath_navigation_msgsExecuteNetworkMissionByUuidFeedback(Record):
    """@brief Own every original clearpath_navigation_msgs/ExecuteNetworkMissionByUuidFeedback field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("message", "goal_states", "network_plan")
    # @brief Original message: string; shape scalar.
    # @brief Original goal_states: clearpath_navigation_msgs/NetworkGoalState; shape sequence.
    # @brief Original network_plan: clearpath_navigation_msgs/NetworkMissionSegment; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_f36146854331b1ff188708a23717889180d6bda4fed7ae6c6e758782372d0927",
        "minimum": 80,
        "maximum": 10512,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "goal_states",
                "type": "clearpath_navigation_msgs/NetworkGoalState",
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
                "element_minimum": 53,
            },
            {
                "name": "network_plan",
                "type": "clearpath_navigation_msgs/NetworkMissionSegment",
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
                "element_minimum": 72,
            },
        ],
        "type": "clearpath_navigation_msgs/ExecuteNetworkMissionByUuidFeedback",
    }


REGISTRY.add(Ros1Clearpath_navigation_msgsExecuteNetworkMissionByUuidFeedback)


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


class Ros1Geometry_msgsPoseStamped(Record):
    """@brief Own every original geometry_msgs/PoseStamped field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("header", "pose")
    # @brief Original header: std_msgs/Header; shape scalar.
    # @brief Original pose: geometry_msgs/Pose; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_bb59c4e82f561266c0f10500bfbbd1a809e9c1122ecbf559a812326af3eb2e95",
        "minimum": 72,
        "maximum": 200,
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
        ],
        "type": "geometry_msgs/PoseStamped",
    }


REGISTRY.add(Ros1Geometry_msgsPoseStamped)


class Ros1Clearpath_navigation_msgsGetWaypointPathGoal(Record):
    """@brief Own every original clearpath_navigation_msgs/GetWaypointPathGoal field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("waypoints", "use_start_pose", "start_pose", "tolerance", "planner", "concurrency_slot")
    # @brief Original waypoints: geometry_msgs/PoseStamped; shape sequence.
    # @brief Original use_start_pose: bool; shape scalar.
    # @brief Original start_pose: geometry_msgs/PoseStamped; shape scalar.
    # @brief Original tolerance: float64; shape scalar.
    # @brief Original planner: string; shape scalar.
    # @brief Original concurrency_slot: uint8; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_9f4e55ff8c5c423e58bc206b5ba8cf40f2dce89fe6b6194e3f274f33915c8373",
        "minimum": 90,
        "maximum": 874,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "waypoints",
                "type": "geometry_msgs/PoseStamped",
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
                "element_minimum": 72,
            },
            {
                "name": "use_start_pose",
                "type": "bool",
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
                "name": "start_pose",
                "type": "geometry_msgs/PoseStamped",
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
                "element_minimum": 72,
            },
            {
                "name": "tolerance",
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
                "name": "planner",
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
                "name": "concurrency_slot",
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
        "type": "clearpath_navigation_msgs/GetWaypointPathGoal",
    }


REGISTRY.add(Ros1Clearpath_navigation_msgsGetWaypointPathGoal)


class Ros1Nav_msgsPath(Record):
    """@brief Own every original nav_msgs/Path field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("header", "poses")
    # @brief Original header: std_msgs/Header; shape scalar.
    # @brief Original poses: geometry_msgs/PoseStamped; shape sequence.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_4451806e82167229ab44f7a8f9f3de7bdcec2e8b7c98e8765b029c7e76af7f60",
        "minimum": 20,
        "maximum": 548,
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
                "name": "poses",
                "type": "geometry_msgs/PoseStamped",
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
                "element_minimum": 72,
            },
        ],
        "type": "nav_msgs/Path",
    }


REGISTRY.add(Ros1Nav_msgsPath)


class Ros1Std_msgsDuration(Record):
    """@brief Own every original std_msgs/Duration field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("data",)
    # @brief Original data: duration; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_195444342590aabe87833226c1cce7cc900519e5b1fe13ff460406396e3ce175",
        "minimum": 8,
        "maximum": 8,
        "semantics": "normalized-duration",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "data",
                "type": "duration",
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
            }
        ],
        "type": "std_msgs/Duration",
    }


REGISTRY.add(Ros1Std_msgsDuration)


class Ros1Clearpath_navigation_msgsGetWaypointPathResult(Record):
    """@brief Own every original clearpath_navigation_msgs/GetWaypointPathResult field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("outcome", "message", "path", "cost", "planning_time")
    # @brief Original outcome: uint32; shape scalar.
    # @brief Original message: string; shape scalar.
    # @brief Original path: nav_msgs/Path; shape scalar.
    # @brief Original cost: float64; shape scalar.
    # @brief Original planning_time: std_msgs/Duration; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_e380ef98ced5ac0bb2edff0accf0df86828cc9d9a8d17c73d7b236b8f660c396",
        "minimum": 44,
        "maximum": 828,
        "semantics": "",
        "ros_version": 1,
        "constants": {
            "SUCCESS": 0,
            "FAILURE": 50,
            "CANCELED": 51,
            "INVALID_START": 52,
            "INVALID_GOAL": 53,
            "NO_PATH_FOUND": 54,
            "PAT_EXCEEDED": 55,
            "EMPTY_PATH": 56,
            "TF_ERROR": 57,
            "NOT_INITIALIZED": 58,
            "INVALID_PLUGIN": 59,
            "INTERNAL_ERROR": 60,
            "OUT_OF_MAP": 61,
            "MAP_ERROR": 62,
            "STOPPED": 63,
        },
        "fields": [
            {
                "name": "outcome",
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
            {
                "name": "path",
                "type": "nav_msgs/Path",
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
                "element_minimum": 20,
            },
            {
                "name": "cost",
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
                "name": "planning_time",
                "type": "std_msgs/Duration",
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
        "type": "clearpath_navigation_msgs/GetWaypointPathResult",
    }


REGISTRY.add(Ros1Clearpath_navigation_msgsGetWaypointPathResult)


class Ros1Clearpath_navigation_msgsGetWaypointPathFeedback(Record):
    """@brief Own every original clearpath_navigation_msgs/GetWaypointPathFeedback field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ()
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_d1e0f84cfd174723eaae1a46d298702562ce42b19875146e18bf58ac6a1c9cec",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [],
        "type": "clearpath_navigation_msgs/GetWaypointPathFeedback",
    }


REGISTRY.add(Ros1Clearpath_navigation_msgsGetWaypointPathFeedback)


class Ros1Clearpath_navigation_msgsMission(Record):
    """@brief Own every original clearpath_navigation_msgs/Mission field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("header", "name", "uuid", "waypoints", "on_start", "on_stop", "onav_config")
    # @brief Original header: std_msgs/Header; shape scalar.
    # @brief Original name: string; shape scalar.
    # @brief Original uuid: string; shape scalar.
    # @brief Original waypoints: clearpath_navigation_msgs/Waypoint; shape sequence.
    # @brief Original on_start: clearpath_navigation_msgs/Task; shape sequence.
    # @brief Original on_stop: clearpath_navigation_msgs/Task; shape sequence.
    # @brief Original onav_config: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_7a2e7409a879989eedd02009b13a33cc775188ee2af9409a3a47ed8fd38d4490",
        "minimum": 40,
        "maximum": 13336,
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "uuid",
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
                "name": "waypoints",
                "type": "clearpath_navigation_msgs/Waypoint",
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
                "element_minimum": 52,
            },
            {
                "name": "on_start",
                "type": "clearpath_navigation_msgs/Task",
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
                "element_minimum": 25,
            },
            {
                "name": "on_stop",
                "type": "clearpath_navigation_msgs/Task",
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
                "element_minimum": 25,
            },
            {
                "name": "onav_config",
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
        "type": "clearpath_navigation_msgs/Mission",
    }


REGISTRY.add(Ros1Clearpath_navigation_msgsMission)


class Ros1Clearpath_navigation_msgsMissionGoal(Record):
    """@brief Own every original clearpath_navigation_msgs/MissionGoal field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("mission", "from_start", "start_waypoint")
    # @brief Original mission: clearpath_navigation_msgs/Mission; shape scalar.
    # @brief Original from_start: bool; shape scalar.
    # @brief Original start_waypoint: clearpath_navigation_msgs/Waypoint; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_d763e90ea09778c5cf9d16bb789eaec779b81a3527fec14fa556b2a2fbfe41bc",
        "minimum": 93,
        "maximum": 16687,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "mission",
                "type": "clearpath_navigation_msgs/Mission",
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
                "element_minimum": 40,
            },
            {
                "name": "from_start",
                "type": "bool",
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
                "name": "start_waypoint",
                "type": "clearpath_navigation_msgs/Waypoint",
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
                "element_minimum": 52,
            },
        ],
        "type": "clearpath_navigation_msgs/MissionGoal",
    }


REGISTRY.add(Ros1Clearpath_navigation_msgsMissionGoal)


class Ros1Clearpath_navigation_msgsMissionResult(Record):
    """@brief Own every original clearpath_navigation_msgs/MissionResult field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("success", "message")
    # @brief Original success: bool; shape scalar.
    # @brief Original message: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_9f8dcc6b43b368957630f5dd039ec3a7e3bc1091a04a3acd639a9571293628a2",
        "minimum": 5,
        "maximum": 261,
        "semantics": "",
        "ros_version": 1,
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
        "type": "clearpath_navigation_msgs/MissionResult",
    }


REGISTRY.add(Ros1Clearpath_navigation_msgsMissionResult)


class Ros1Clearpath_navigation_msgsMissionFeedback(Record):
    """@brief Own every original clearpath_navigation_msgs/MissionFeedback field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("message",)
    # @brief Original message: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_dfb40538ac8673b076a60565a1bca3b9805b7cf6a0ab5b50a46cbc6cdd59f2ef",
        "minimum": 4,
        "maximum": 260,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
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
                "raw": False,
                "element_minimum": 4,
            }
        ],
        "type": "clearpath_navigation_msgs/MissionFeedback",
    }


REGISTRY.add(Ros1Clearpath_navigation_msgsMissionFeedback)


class Ros1Clearpath_navigation_msgsNetworkGoToPOIGoal(Record):
    """@brief Own every original clearpath_navigation_msgs/NetworkGoToPOIGoal field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("poi_uuid", "map_uuid")
    # @brief Original poi_uuid: string; shape scalar.
    # @brief Original map_uuid: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_f8c1dddcecc439487e6811465240e02f26291fe68ae773d9cbf2a61a976de4bd",
        "minimum": 8,
        "maximum": 520,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "poi_uuid",
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
                "name": "map_uuid",
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
        "type": "clearpath_navigation_msgs/NetworkGoToPOIGoal",
    }


REGISTRY.add(Ros1Clearpath_navigation_msgsNetworkGoToPOIGoal)


class Ros1Clearpath_navigation_msgsNetworkGoToPOIResult(Record):
    """@brief Own every original clearpath_navigation_msgs/NetworkGoToPOIResult field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("success", "message")
    # @brief Original success: bool; shape scalar.
    # @brief Original message: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_402e95779afd664798a412dbebce299c4a4cc332c5d01bda4b19f2c24023c548",
        "minimum": 5,
        "maximum": 261,
        "semantics": "",
        "ros_version": 1,
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
        "type": "clearpath_navigation_msgs/NetworkGoToPOIResult",
    }


REGISTRY.add(Ros1Clearpath_navigation_msgsNetworkGoToPOIResult)


class Ros1Clearpath_navigation_msgsNetworkGoToPOIFeedback(Record):
    """@brief Own every original clearpath_navigation_msgs/NetworkGoToPOIFeedback field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("message", "network_plan")
    # @brief Original message: string; shape scalar.
    # @brief Original network_plan: clearpath_navigation_msgs/NetworkMissionSegment; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_77676f75545d6eb58b93904be926923f749a6ddc7332476dd23e635ed0e072e8",
        "minimum": 76,
        "maximum": 3806,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "network_plan",
                "type": "clearpath_navigation_msgs/NetworkMissionSegment",
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
                "element_minimum": 72,
            },
        ],
        "type": "clearpath_navigation_msgs/NetworkGoToPOIFeedback",
    }


REGISTRY.add(Ros1Clearpath_navigation_msgsNetworkGoToPOIFeedback)


class Ros1Clearpath_navigation_msgsRecordPathGoal(Record):
    """@brief Own every original clearpath_navigation_msgs/RecordPathGoal field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("max_deviation", "min_distance")
    # @brief Original max_deviation: float64; shape scalar.
    # @brief Original min_distance: float64; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_64cc3f4f8c7cd725d8a5a1a7286cacafd7a41ab74e8d664dc10149ac92b0cf68",
        "minimum": 16,
        "maximum": 16,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "max_deviation",
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
                "name": "min_distance",
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
        "type": "clearpath_navigation_msgs/RecordPathGoal",
    }


REGISTRY.add(Ros1Clearpath_navigation_msgsRecordPathGoal)


class Ros1Clearpath_navigation_msgsVector2D64(Record):
    """@brief Own every original clearpath_navigation_msgs/Vector2D64 field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("point",)
    # @brief Original point: float64; shape array.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_13edfb447d3fdb131755cd00318a6ce89fc45096b9e41440b021231b324caee9",
        "minimum": 16,
        "maximum": 16,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "point",
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
                "raw": False,
                "element_minimum": 8,
            }
        ],
        "type": "clearpath_navigation_msgs/Vector2D64",
    }


REGISTRY.add(Ros1Clearpath_navigation_msgsVector2D64)


class Ros1Clearpath_navigation_msgsRecordPathResult(Record):
    """@brief Own every original clearpath_navigation_msgs/RecordPathResult field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("points",)
    # @brief Original points: clearpath_navigation_msgs/Vector2D64; shape sequence.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_e2b420a2149b030f0aac9bba36797abfcb705d6478679dfe85b00e83be0ebe98",
        "minimum": 4,
        "maximum": 36,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "points",
                "type": "clearpath_navigation_msgs/Vector2D64",
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
                "element_minimum": 16,
            }
        ],
        "type": "clearpath_navigation_msgs/RecordPathResult",
    }


REGISTRY.add(Ros1Clearpath_navigation_msgsRecordPathResult)


class Ros1Clearpath_navigation_msgsRecordPathFeedback(Record):
    """@brief Own every original clearpath_navigation_msgs/RecordPathFeedback field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("points",)
    # @brief Original points: clearpath_navigation_msgs/Vector2D64; shape sequence.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_3d12790afde54b03439f03f1fd1453d746fbfeddf8a8cfd2cf0af0f2a4e8ee7a",
        "minimum": 4,
        "maximum": 36,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "points",
                "type": "clearpath_navigation_msgs/Vector2D64",
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
                "element_minimum": 16,
            }
        ],
        "type": "clearpath_navigation_msgs/RecordPathFeedback",
    }


REGISTRY.add(Ros1Clearpath_navigation_msgsRecordPathFeedback)


class Ros1Clearpath_navigation_msgsRunNetworkGoToPlannerGoal(Record):
    """@brief Own every original clearpath_navigation_msgs/RunNetworkGoToPlannerGoal field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("map_uuid", "waypoint")
    # @brief Original map_uuid: string; shape scalar.
    # @brief Original waypoint: clearpath_navigation_msgs/Waypoint; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_95c219ff4985d097b9bd8e24f7811fb1090ce3d0d977f6d53f7ad8191cfeb4dc",
        "minimum": 56,
        "maximum": 3610,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "map_uuid",
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
                "name": "waypoint",
                "type": "clearpath_navigation_msgs/Waypoint",
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
                "element_minimum": 52,
            },
        ],
        "type": "clearpath_navigation_msgs/RunNetworkGoToPlannerGoal",
    }


REGISTRY.add(Ros1Clearpath_navigation_msgsRunNetworkGoToPlannerGoal)


class Ros1Clearpath_navigation_msgsRunNetworkGoToPlannerResult(Record):
    """@brief Own every original clearpath_navigation_msgs/RunNetworkGoToPlannerResult field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("success",)
    # @brief Original success: bool; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_74a36e238244de86de447c97874d3b22a8cea29c61c0000a38cb97981bd0ffad",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "ros_version": 1,
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
            }
        ],
        "type": "clearpath_navigation_msgs/RunNetworkGoToPlannerResult",
    }


REGISTRY.add(Ros1Clearpath_navigation_msgsRunNetworkGoToPlannerResult)


class Ros1Clearpath_navigation_msgsRunNetworkGoToPlannerFeedback(Record):
    """@brief Own every original clearpath_navigation_msgs/RunNetworkGoToPlannerFeedback field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("header", "points")
    # @brief Original header: std_msgs/Header; shape scalar.
    # @brief Original points: geometry_msgs/Point; shape sequence.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_0a0c6aa1c129a3c64ab4fc70915d8d4fe2c320b24d0a127f61b09b55c091f0be",
        "minimum": 20,
        "maximum": 196,
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
                "name": "points",
                "type": "geometry_msgs/Point",
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
                "element_minimum": 24,
            },
        ],
        "type": "clearpath_navigation_msgs/RunNetworkGoToPlannerFeedback",
    }


REGISTRY.add(Ros1Clearpath_navigation_msgsRunNetworkGoToPlannerFeedback)


class Ros1Clearpath_navigation_msgsRunNetworkMissionPreviewerGoal(Record):
    """@brief Own every original clearpath_navigation_msgs/RunNetworkMissionPreviewerGoal field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("map_uuid", "mission_uuid")
    # @brief Original map_uuid: string; shape scalar.
    # @brief Original mission_uuid: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_80e350b2bcb3fe42a76d2a717ca07e57f7d9a31ba2f21066d5f2b59822ec8966",
        "minimum": 8,
        "maximum": 520,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "map_uuid",
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
                "name": "mission_uuid",
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
        "type": "clearpath_navigation_msgs/RunNetworkMissionPreviewerGoal",
    }


REGISTRY.add(Ros1Clearpath_navigation_msgsRunNetworkMissionPreviewerGoal)


class Ros1Clearpath_navigation_msgsRunNetworkMissionPreviewerResult(Record):
    """@brief Own every original clearpath_navigation_msgs/RunNetworkMissionPreviewerResult field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("success",)
    # @brief Original success: bool; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_57d1973b7ae42cf0dbba42920caf934cb9ce1dee9c934e11b7044e52b4fc7b10",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "ros_version": 1,
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
            }
        ],
        "type": "clearpath_navigation_msgs/RunNetworkMissionPreviewerResult",
    }


REGISTRY.add(Ros1Clearpath_navigation_msgsRunNetworkMissionPreviewerResult)


class Ros1Clearpath_navigation_msgsRunNetworkMissionPreviewerFeedback(Record):
    """@brief Own every original clearpath_navigation_msgs/RunNetworkMissionPreviewerFeedback field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("segments",)
    # @brief Original segments: clearpath_navigation_msgs/NetworkMissionSegment; shape sequence.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_5e2c543ebca10579806d00dd9b7cc5c302e31a2fcf54321ff07f55fa58ec8e89",
        "minimum": 4,
        "maximum": 7096,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "segments",
                "type": "clearpath_navigation_msgs/NetworkMissionSegment",
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
                "element_minimum": 72,
            }
        ],
        "type": "clearpath_navigation_msgs/RunNetworkMissionPreviewerFeedback",
    }


REGISTRY.add(Ros1Clearpath_navigation_msgsRunNetworkMissionPreviewerFeedback)


class Ros1Clearpath_navigation_msgsSmoothPathGoal(Record):
    """@brief Own every original clearpath_navigation_msgs/SmoothPathGoal field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = (
        "path",
        "type",
        "spline_points_per_unit",
        "spline_skip_points",
        "spline_use_end_conditions",
        "spline_use_middle_conditions",
        "dubins_turning_radius",
        "dubins_step_size",
        "generic_enable_refinement",
        "generic_refinement_iterations",
    )
    # @brief Original path: nav_msgs/Path; shape scalar.
    # @brief Original type: uint8; shape scalar.
    # @brief Original spline_points_per_unit: int32; shape scalar.
    # @brief Original spline_skip_points: int32; shape scalar.
    # @brief Original spline_use_end_conditions: bool; shape scalar.
    # @brief Original spline_use_middle_conditions: bool; shape scalar.
    # @brief Original dubins_turning_radius: float64; shape scalar.
    # @brief Original dubins_step_size: float64; shape scalar.
    # @brief Original generic_enable_refinement: bool; shape scalar.
    # @brief Original generic_refinement_iterations: int32; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_bed6cefe852634fd4fa352eb0413c69583559346cc66772514345d4c71ae8a05",
        "minimum": 52,
        "maximum": 580,
        "semantics": "",
        "ros_version": 1,
        "constants": {"CUBIC_SPLINE_SMOOTHER": 1, "DUBINS_SMOOTHER": 2, "GENERIC_SMOOTHER": 3},
        "fields": [
            {
                "name": "path",
                "type": "nav_msgs/Path",
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
                "element_minimum": 20,
            },
            {
                "name": "type",
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
                "name": "spline_points_per_unit",
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
                "name": "spline_skip_points",
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
                "name": "spline_use_end_conditions",
                "type": "bool",
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
                "name": "spline_use_middle_conditions",
                "type": "bool",
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
                "name": "dubins_turning_radius",
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
                "name": "dubins_step_size",
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
                "name": "generic_enable_refinement",
                "type": "bool",
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
                "name": "generic_refinement_iterations",
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
        ],
        "type": "clearpath_navigation_msgs/SmoothPathGoal",
    }


REGISTRY.add(Ros1Clearpath_navigation_msgsSmoothPathGoal)


class Ros1Clearpath_navigation_msgsSmoothPathResult(Record):
    """@brief Own every original clearpath_navigation_msgs/SmoothPathResult field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("smoothed_path", "time")
    # @brief Original smoothed_path: nav_msgs/Path; shape scalar.
    # @brief Original time: float64; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_f42205bb1dad95ed43d6d8f9159ea3803a944050dcfc5b840309e9fd104bf5f9",
        "minimum": 28,
        "maximum": 556,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "smoothed_path",
                "type": "nav_msgs/Path",
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
                "element_minimum": 20,
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
                "raw": False,
                "element_minimum": 8,
            },
        ],
        "type": "clearpath_navigation_msgs/SmoothPathResult",
    }


REGISTRY.add(Ros1Clearpath_navigation_msgsSmoothPathResult)


class Ros1Clearpath_navigation_msgsSmoothPathFeedback(Record):
    """@brief Own every original clearpath_navigation_msgs/SmoothPathFeedback field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("sequence",)
    # @brief Original sequence: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_f5ab7d56fd2811fd4caac7fe44c6a1c7a4f6b5593ee1903251bf312a979c09d1",
        "minimum": 4,
        "maximum": 260,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "sequence",
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
        "type": "clearpath_navigation_msgs/SmoothPathFeedback",
    }


REGISTRY.add(Ros1Clearpath_navigation_msgsSmoothPathFeedback)


class Ros1Clearpath_navigation_msgsUITaskGoal(Record):
    """@brief Own every original clearpath_navigation_msgs/UITaskGoal field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("version", "floats", "strings")
    # @brief Original version: string; shape scalar.
    # @brief Original floats: float64; shape sequence.
    # @brief Original strings: string; shape sequence.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_29c35437efebdb8c8c42b2ab4ed29f81e6f8e91c300380ba7099dd68a862ef9b",
        "minimum": 12,
        "maximum": 804,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "floats",
                "type": "float64",
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
                "element_minimum": 8,
            },
            {
                "name": "strings",
                "type": "string",
                "array": "sequence",
                "count": 2,
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
        "type": "clearpath_navigation_msgs/UITaskGoal",
    }


REGISTRY.add(Ros1Clearpath_navigation_msgsUITaskGoal)


class Ros1Clearpath_navigation_msgsUITaskResult(Record):
    """@brief Own every original clearpath_navigation_msgs/UITaskResult field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("success",)
    # @brief Original success: bool; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_f88d16093a93f26c60a09ed08a0944ba8b3da03fda60d514dce4a8e48533b3ad",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "ros_version": 1,
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
            }
        ],
        "type": "clearpath_navigation_msgs/UITaskResult",
    }


REGISTRY.add(Ros1Clearpath_navigation_msgsUITaskResult)


class Ros1Clearpath_navigation_msgsUITaskFeedback(Record):
    """@brief Own every original clearpath_navigation_msgs/UITaskFeedback field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("state",)
    # @brief Original state: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_bb14cbf36189f1bc9759c168619ab4cd6be5d68147658ac54535f16d36f2960f",
        "minimum": 4,
        "maximum": 260,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
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
                "raw": False,
                "element_minimum": 4,
            }
        ],
        "type": "clearpath_navigation_msgs/UITaskFeedback",
    }


REGISTRY.add(Ros1Clearpath_navigation_msgsUITaskFeedback)


class Ros1Clearpath_configuration_msgsAutonomyConfig(Record):
    """@brief Own every original clearpath_configuration_msgs/AutonomyConfig field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("version", "uptime")
    # @brief Original version: string; shape scalar.
    # @brief Original uptime: float64; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_94bd6352cf4c46adffcfffd54ad5ac5e1b0cb4aadc98ea00eeb9c62a8ec5be2c",
        "minimum": 12,
        "maximum": 268,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "uptime",
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
        "type": "clearpath_configuration_msgs/AutonomyConfig",
    }


REGISTRY.add(Ros1Clearpath_configuration_msgsAutonomyConfig)


class Ros1Clearpath_configuration_msgsPlatformConfig(Record):
    """@brief Own every original clearpath_configuration_msgs/PlatformConfig field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ()
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_8ec6a196a91bd5d6cd4d4ea2af14b5c549d8efe82c1da95ec08903bb4cbc5407",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [],
        "type": "clearpath_configuration_msgs/PlatformConfig",
    }


REGISTRY.add(Ros1Clearpath_configuration_msgsPlatformConfig)


class Ros1Clearpath_control_msgsAutonomySync(Record):
    """@brief Own every original clearpath_control_msgs/AutonomySync field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("status", "missionType")
    # @brief Original status: uint8; shape scalar.
    # @brief Original missionType: uint8; shape sequence.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_55bd50b3af5341d9a4793156e250a75451dfc293f5b18036d493c22cc23ca7a4",
        "minimum": 5,
        "maximum": 7,
        "semantics": "",
        "ros_version": 1,
        "constants": {
            "EMPTY": 0,
            "PROCESSING": 1,
            "PENDING_PAUSE": 2,
            "PAUSED": 3,
            "IDLE": 4,
            "TEACH": 5,
            "REPEAT": 6,
            "MANNED": 7,
            "UNMANNED": 8,
        },
        "fields": [
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
                "raw": False,
                "element_minimum": 1,
            },
            {
                "name": "missionType",
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
            },
        ],
        "type": "clearpath_control_msgs/AutonomySync",
    }


REGISTRY.add(Ros1Clearpath_control_msgsAutonomySync)


class Ros1Clearpath_control_msgsControlMode(Record):
    """@brief Own every original clearpath_control_msgs/ControlMode field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("mode",)
    # @brief Original mode: int8; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_654f836cb5e86bdc3c861109e4c976683f6368e8d856c7145642c6b2c7260cfc",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "ros_version": 1,
        "constants": {"NEUTRAL": 0, "MANUAL": 1, "AUTONOMY": 2},
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
            }
        ],
        "type": "clearpath_control_msgs/ControlMode",
    }


REGISTRY.add(Ros1Clearpath_control_msgsControlMode)


class Ros1Clearpath_control_msgsControlState(Record):
    """@brief Own every original clearpath_control_msgs/ControlState field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("enabled", "paused")
    # @brief Original enabled: bool; shape scalar.
    # @brief Original paused: bool; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_3553232b4b685317bcb311ee342d756f535155d72b33a58b1346eb036badd860",
        "minimum": 2,
        "maximum": 2,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
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
            {
                "name": "paused",
                "type": "bool",
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
        "type": "clearpath_control_msgs/ControlState",
    }


REGISTRY.add(Ros1Clearpath_control_msgsControlState)


class Ros1Clearpath_control_msgsControlSelectionState(Record):
    """@brief Own every original clearpath_control_msgs/ControlSelectionState field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("autonomy", "mode")
    # @brief Original autonomy: clearpath_control_msgs/ControlState; shape scalar.
    # @brief Original mode: clearpath_control_msgs/ControlMode; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_1dff74daa9b8550504ebab354d18f2a40a143fcb3cfd721e3d04aab79546f994",
        "minimum": 3,
        "maximum": 3,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "autonomy",
                "type": "clearpath_control_msgs/ControlState",
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
                "name": "mode",
                "type": "clearpath_control_msgs/ControlMode",
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
        "type": "clearpath_control_msgs/ControlSelectionState",
    }


REGISTRY.add(Ros1Clearpath_control_msgsControlSelectionState)


class Ros1Clearpath_dock_msgsDockInfo(Record):
    """@brief Own every original clearpath_dock_msgs/DockInfo field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = (
        "name",
        "uuid",
        "frame",
        "target_template",
        "last_location_set_time",
        "max_predock_distance",
        "predock_distance",
        "latitude",
        "longitude",
        "heading",
    )
    # @brief Original name: string; shape scalar.
    # @brief Original uuid: string; shape scalar.
    # @brief Original frame: string; shape scalar.
    # @brief Original target_template: string; shape scalar.
    # @brief Original last_location_set_time: string; shape scalar.
    # @brief Original max_predock_distance: float32; shape scalar.
    # @brief Original predock_distance: float32; shape scalar.
    # @brief Original latitude: float64; shape scalar.
    # @brief Original longitude: float64; shape scalar.
    # @brief Original heading: float64; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_d4c6b31ecbec7e01340e6693718db5de0429a897dda5caea9ee49b58a77649c7",
        "minimum": 52,
        "maximum": 1204,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "uuid",
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
                "name": "frame",
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
                "name": "target_template",
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
                "name": "last_location_set_time",
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
                "name": "max_predock_distance",
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
                "name": "predock_distance",
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
                "name": "latitude",
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
                "name": "longitude",
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
                "name": "heading",
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
        "type": "clearpath_dock_msgs/DockInfo",
    }


REGISTRY.add(Ros1Clearpath_dock_msgsDockInfo)


class Ros1Clearpath_dock_msgsDockProperties(Record):
    """@brief Own every original clearpath_dock_msgs/DockProperties field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("docks",)
    # @brief Original docks: clearpath_dock_msgs/DockInfo; shape sequence.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_842af6b3b69fb6e2dfe1fdaabed4e45d6a39410456960dd7a4422eb491d19a76",
        "minimum": 4,
        "maximum": 2412,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "docks",
                "type": "clearpath_dock_msgs/DockInfo",
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
                "element_minimum": 52,
            }
        ],
        "type": "clearpath_dock_msgs/DockProperties",
    }


REGISTRY.add(Ros1Clearpath_dock_msgsDockProperties)


class Ros1Clearpath_dock_msgsDockState(Record):
    """@brief Own every original clearpath_dock_msgs/DockState field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("state",)
    # @brief Original state: uint8; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_18f6c0addce5321932de99e4b80127dc1ac69f545778938e39b293be4c5e7a53",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "ros_version": 1,
        "constants": {"UNDOCKED": 0, "DOCKED": 1, "IN_PROGRESS": 2, "FAILED": 3, "CANCELLED": 4},
        "fields": [
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
            }
        ],
        "type": "clearpath_dock_msgs/DockState",
    }


REGISTRY.add(Ros1Clearpath_dock_msgsDockState)


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


class Ros1Geometry_msgsPoseWithCovarianceStamped(Record):
    """@brief Own every original geometry_msgs/PoseWithCovarianceStamped field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("header", "pose")
    # @brief Original header: std_msgs/Header; shape scalar.
    # @brief Original pose: geometry_msgs/PoseWithCovariance; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_6708292fe381a7f14aaf84f47a969f55af7446087bfcb309d3b86ab95f34a2d9",
        "minimum": 360,
        "maximum": 488,
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
        ],
        "type": "geometry_msgs/PoseWithCovarianceStamped",
    }


REGISTRY.add(Ros1Geometry_msgsPoseWithCovarianceStamped)


class Ros1Clearpath_dock_msgsTargetTrackerState(Record):
    """@brief Own every original clearpath_dock_msgs/TargetTrackerState field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("active", "target_locked", "target_pose", "score", "distance_to_target")
    # @brief Original active: bool; shape scalar.
    # @brief Original target_locked: bool; shape scalar.
    # @brief Original target_pose: geometry_msgs/PoseWithCovarianceStamped; shape scalar.
    # @brief Original score: float32; shape scalar.
    # @brief Original distance_to_target: float64; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_22cddfc9827c9b576e8baf843379e8856efd0b22c309ae700c619945c45274a8",
        "minimum": 374,
        "maximum": 502,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "active",
                "type": "bool",
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
                "name": "target_locked",
                "type": "bool",
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
                "name": "target_pose",
                "type": "geometry_msgs/PoseWithCovarianceStamped",
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
                "element_minimum": 360,
            },
            {
                "name": "score",
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
                "name": "distance_to_target",
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
        "type": "clearpath_dock_msgs/TargetTrackerState",
    }


REGISTRY.add(Ros1Clearpath_dock_msgsTargetTrackerState)


class Ros1Clearpath_localization_msgsGNSSStatus(Record):
    """@brief Own every original clearpath_localization_msgs/GNSSStatus field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = (
        "receiver_type",
        "position_fix_type",
        "heading_fix_type",
        "num_connected_sats",
        "num_sats_solution",
        "cn0",
        "correction_age",
    )
    # @brief Original receiver_type: uint8; shape scalar.
    # @brief Original position_fix_type: uint8; shape scalar.
    # @brief Original heading_fix_type: uint8; shape scalar.
    # @brief Original num_connected_sats: uint8; shape scalar.
    # @brief Original num_sats_solution: uint8; shape scalar.
    # @brief Original cn0: float32; shape sequence.
    # @brief Original correction_age: float64; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_4bda462d76cea809faf3fad93446de6db661c1379d743f829f7bcf64ef7959f3",
        "minimum": 17,
        "maximum": 273,
        "semantics": "",
        "ros_version": 1,
        "constants": {
            "POSITION_RECEIVER": 0,
            "HEADING_RECEIVER": 1,
            "BASE_STATION_RECEIVER": 2,
            "POSITION_NO_FIX": 0,
            "POSITION_SPP": 1,
            "POSITION_SBAS": 2,
            "POSITION_RTK_FLOAT": 3,
            "POSITION_RTK_FIXED": 4,
            "HEADING_NOT_APPLICABLE": 0,
            "HEADING_NO_SOLUTION": 1,
            "HEADING_RTK_FLOAT": 2,
            "HEADING_RTK_FIXED": 3,
        },
        "fields": [
            {
                "name": "receiver_type",
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
                "name": "position_fix_type",
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
                "name": "heading_fix_type",
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
                "name": "num_connected_sats",
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
                "name": "num_sats_solution",
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
                "name": "cn0",
                "type": "float32",
                "array": "sequence",
                "count": 64,
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
                "name": "correction_age",
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
        "type": "clearpath_localization_msgs/GNSSStatus",
    }


REGISTRY.add(Ros1Clearpath_localization_msgsGNSSStatus)


class Ros1Clearpath_localization_msgsLocalizationStatus(Record):
    """@brief Own every original clearpath_localization_msgs/LocalizationStatus field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("header", "accuracy", "position_gnss", "heading_gnss", "base_station_gnss", "dead_reckoning")
    # @brief Original header: std_msgs/Header; shape scalar.
    # @brief Original accuracy: float32; shape scalar.
    # @brief Original position_gnss: clearpath_localization_msgs/GNSSStatus; shape scalar.
    # @brief Original heading_gnss: clearpath_localization_msgs/GNSSStatus; shape scalar.
    # @brief Original base_station_gnss: clearpath_localization_msgs/GNSSStatus; shape scalar.
    # @brief Original dead_reckoning: bool; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_2dcb14d889fb5ccc69ad66860b3495b7c3eadd94fb9d814b9f475ff0f6dffc74",
        "minimum": 72,
        "maximum": 968,
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
                "name": "accuracy",
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
                "name": "position_gnss",
                "type": "clearpath_localization_msgs/GNSSStatus",
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
                "element_minimum": 17,
            },
            {
                "name": "heading_gnss",
                "type": "clearpath_localization_msgs/GNSSStatus",
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
                "element_minimum": 17,
            },
            {
                "name": "base_station_gnss",
                "type": "clearpath_localization_msgs/GNSSStatus",
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
                "element_minimum": 17,
            },
            {
                "name": "dead_reckoning",
                "type": "bool",
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
        "type": "clearpath_localization_msgs/LocalizationStatus",
    }


REGISTRY.add(Ros1Clearpath_localization_msgsLocalizationStatus)


class Ros1Sensor_msgsNavSatStatus(Record):
    """@brief Own every original sensor_msgs/NavSatStatus field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("status", "service")
    # @brief Original status: int8; shape scalar.
    # @brief Original service: uint16; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_a44d99b9b113b546b2f45c991925ea62a8e28ffceed7de4da2dbc81936fd2453",
        "minimum": 3,
        "maximum": 3,
        "semantics": "",
        "ros_version": 1,
        "constants": {
            "STATUS_NO_FIX": -1,
            "STATUS_FIX": 0,
            "STATUS_SBAS_FIX": 1,
            "STATUS_GBAS_FIX": 2,
            "SERVICE_GPS": 1,
            "SERVICE_GLONASS": 2,
            "SERVICE_COMPASS": 4,
            "SERVICE_GALILEO": 8,
        },
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
                "raw": False,
                "element_minimum": 1,
            },
            {
                "name": "service",
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
        ],
        "type": "sensor_msgs/NavSatStatus",
    }


REGISTRY.add(Ros1Sensor_msgsNavSatStatus)


class Ros1Sensor_msgsNavSatFix(Record):
    """@brief Own every original sensor_msgs/NavSatFix field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = (
        "header",
        "status",
        "latitude",
        "longitude",
        "altitude",
        "position_covariance",
        "position_covariance_type",
    )
    # @brief Original header: std_msgs/Header; shape scalar.
    # @brief Original status: sensor_msgs/NavSatStatus; shape scalar.
    # @brief Original latitude: float64; shape scalar.
    # @brief Original longitude: float64; shape scalar.
    # @brief Original altitude: float64; shape scalar.
    # @brief Original position_covariance: float64; shape array.
    # @brief Original position_covariance_type: uint8; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_40bcafbbd6e6fed3086df74b5bd06aea5c2b6bf3244fcee92ab8cfab9c3c4d4d",
        "minimum": 116,
        "maximum": 244,
        "semantics": "",
        "ros_version": 1,
        "constants": {
            "COVARIANCE_TYPE_UNKNOWN": 0,
            "COVARIANCE_TYPE_APPROXIMATED": 1,
            "COVARIANCE_TYPE_DIAGONAL_KNOWN": 2,
            "COVARIANCE_TYPE_KNOWN": 3,
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
                "name": "status",
                "type": "sensor_msgs/NavSatStatus",
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
                "element_minimum": 3,
            },
            {
                "name": "latitude",
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
                "name": "longitude",
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
                "name": "altitude",
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
                "name": "position_covariance",
                "type": "float64",
                "array": "array",
                "count": 9,
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
                "name": "position_covariance_type",
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
        "type": "sensor_msgs/NavSatFix",
    }


REGISTRY.add(Ros1Sensor_msgsNavSatFix)


class Ros1Clearpath_localization_msgsSurveyProperties(Record):
    """@brief Own every original clearpath_localization_msgs/SurveyProperties field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("last_survey_time", "num_samples", "base_location", "success")
    # @brief Original last_survey_time: string; shape scalar.
    # @brief Original num_samples: uint32; shape scalar.
    # @brief Original base_location: sensor_msgs/NavSatFix; shape scalar.
    # @brief Original success: bool; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_91f7b0f79ca81b76885c2a05a5de907620de7b5420f71e1ca08166bdb320c393",
        "minimum": 125,
        "maximum": 509,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "last_survey_time",
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
                "name": "num_samples",
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
                "name": "base_location",
                "type": "sensor_msgs/NavSatFix",
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
                "element_minimum": 116,
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
                "raw": False,
                "element_minimum": 1,
            },
        ],
        "type": "clearpath_localization_msgs/SurveyProperties",
    }


REGISTRY.add(Ros1Clearpath_localization_msgsSurveyProperties)


class Ros1Clearpath_localization_msgsXvnStatus(Record):
    """@brief Own every original clearpath_localization_msgs/XvnStatus field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = (
        "header",
        "latitude",
        "longitude",
        "yaw",
        "stddev_x",
        "stddev_y",
        "stddev_yaw",
        "fusion_status",
        "imu_status",
        "wheelspeed_status",
        "gnss1_status",
        "gnss2_status",
        "rtk_status",
    )
    # @brief Original header: std_msgs/Header; shape scalar.
    # @brief Original latitude: float64; shape scalar.
    # @brief Original longitude: float64; shape scalar.
    # @brief Original yaw: float32; shape scalar.
    # @brief Original stddev_x: float32; shape scalar.
    # @brief Original stddev_y: float32; shape scalar.
    # @brief Original stddev_yaw: float32; shape scalar.
    # @brief Original fusion_status: uint8; shape scalar.
    # @brief Original imu_status: uint8; shape scalar.
    # @brief Original wheelspeed_status: int8; shape scalar.
    # @brief Original gnss1_status: uint8; shape scalar.
    # @brief Original gnss2_status: uint8; shape scalar.
    # @brief Original rtk_status: uint8; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_16bffc785ac0a8da2af278aefa77478e1ecc986d6a505b306e6df5f9db6e7def",
        "minimum": 54,
        "maximum": 182,
        "semantics": "",
        "ros_version": 1,
        "constants": {
            "UNKNOWN": 0,
            "VISION": 1,
            "VISUAL_INERTIAL": 2,
            "INERTIAL_GNSS": 3,
            "VI_GNSS": 4,
            "IMU_NOT_CONVERGED": 0,
            "IMU_CONVERGED": 1,
            "WS_NOT_USED": -1,
            "WS_NOT_CONVERGED": 0,
            "WS_CONVERGED": 1,
            "GNSS_UNKNOWN": 0,
            "GNSS_NO_FIX": 1,
            "GNSS_DEAD_RECKONING": 2,
            "GNSS_TIME_FIX": 3,
            "GNSS_2D_FIX": 4,
            "GNSS_3D_FIX": 5,
            "GNSS_3D_WITH_DR": 6,
            "GNSS_RTK_FLOAT": 7,
            "GNSS_RTK_FIX": 8,
            "RTK_ERROR": 0,
            "RTK_WARNING": 1,
            "RTK_CONNECTING": 2,
            "RTK_CONNECTED": 3,
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
                "name": "latitude",
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
                "name": "longitude",
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "stddev_x",
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
                "name": "stddev_y",
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
                "name": "stddev_yaw",
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
                "name": "fusion_status",
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
                "name": "imu_status",
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
                "name": "wheelspeed_status",
                "type": "int8",
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
                "name": "gnss1_status",
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
                "name": "gnss2_status",
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
                "name": "rtk_status",
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
        "type": "clearpath_localization_msgs/XvnStatus",
    }


REGISTRY.add(Ros1Clearpath_localization_msgsXvnStatus)


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
        "codec_identity": "UWVMROS1_e0ff5eb7aef868891846ac7618249b12c18fcf0969653f24fdeaa7644e636ca0",
        "minimum": 700,
        "maximum": 1084,
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


class Ros1Clearpath_logger_msgsEvent(Record):
    """@brief Own every original clearpath_logger_msgs/Event field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = (
        "header",
        "media_path",
        "media_mime_type",
        "frame_pose",
        "lat_lon_heading",
        "odometry",
        "velocity",
        "battery_percent",
        "charging",
        "power_saver",
        "error_code",
        "error_msg",
        "error_component",
        "tags",
        "custom_fields_json",
    )
    # @brief Original header: std_msgs/Header; shape scalar.
    # @brief Original media_path: string; shape scalar.
    # @brief Original media_mime_type: string; shape scalar.
    # @brief Original frame_pose: geometry_msgs/Pose; shape scalar.
    # @brief Original lat_lon_heading: geometry_msgs/Point; shape scalar.
    # @brief Original odometry: nav_msgs/Odometry; shape scalar.
    # @brief Original velocity: geometry_msgs/Twist; shape scalar.
    # @brief Original battery_percent: float32; shape scalar.
    # @brief Original charging: bool; shape scalar.
    # @brief Original power_saver: bool; shape scalar.
    # @brief Original error_code: int32; shape scalar.
    # @brief Original error_msg: string; shape scalar.
    # @brief Original error_component: string; shape scalar.
    # @brief Original tags: string; shape sequence.
    # @brief Original custom_fields_json: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_3ab8dbb5d488cb1c0789bbb96076f531b245703045330fb6f9b01079d78177ca",
        "minimum": 878,
        "maximum": 3190,
        "semantics": "",
        "ros_version": 1,
        "constants": {
            "TAG_MEDIA": "media",
            "TAG_POWER": "power",
            "TAG_LOCATION": "location",
            "TAG_ODOMETRY": "odom",
            "TAG_VELOCITY": "vel",
            "TAG_ERROR": "error",
            "TAG_AUTO_TELEMETRY": "auto_telemetry",
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
                "name": "media_path",
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
                "name": "media_mime_type",
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
                "name": "frame_pose",
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
                "name": "lat_lon_heading",
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
                "name": "odometry",
                "type": "nav_msgs/Odometry",
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
                "element_minimum": 700,
            },
            {
                "name": "velocity",
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
                "name": "battery_percent",
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
                "name": "charging",
                "type": "bool",
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
                "name": "power_saver",
                "type": "bool",
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "error_msg",
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
                "name": "error_component",
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
                "name": "tags",
                "type": "string",
                "array": "sequence",
                "count": 2,
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
                "name": "custom_fields_json",
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
        "type": "clearpath_logger_msgs/Event",
    }


REGISTRY.add(Ros1Clearpath_logger_msgsEvent)


class Ros1Clearpath_logger_msgsEventLog(Record):
    """@brief Own every original clearpath_logger_msgs/EventLog field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = (
        "state",
        "start_time",
        "end_time",
        "uuid",
        "name",
        "battery_percent_used",
        "distance_driven",
        "custom_fields_json",
        "events",
    )
    # @brief Original state: int32; shape scalar.
    # @brief Original start_time: time; shape scalar.
    # @brief Original end_time: time; shape scalar.
    # @brief Original uuid: string; shape scalar.
    # @brief Original name: string; shape scalar.
    # @brief Original battery_percent_used: float32; shape scalar.
    # @brief Original distance_driven: float32; shape scalar.
    # @brief Original custom_fields_json: string; shape scalar.
    # @brief Original events: clearpath_logger_msgs/Event; shape sequence.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_ff2b4c89394c5f796204cf33e19c125c1affe603a96e22fd18268d75becd9c98",
        "minimum": 44,
        "maximum": 7064,
        "semantics": "",
        "ros_version": 1,
        "constants": {"STATE_ACTIVE": 0, "STATE_CLOSED": 1, "STATE_DELETED": 2},
        "fields": [
            {
                "name": "state",
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
                "name": "start_time",
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
                "name": "end_time",
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
                "name": "uuid",
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "battery_percent_used",
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
                "name": "distance_driven",
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
                "name": "custom_fields_json",
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
                "name": "events",
                "type": "clearpath_logger_msgs/Event",
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
                "element_minimum": 878,
            },
        ],
        "type": "clearpath_logger_msgs/EventLog",
    }


REGISTRY.add(Ros1Clearpath_logger_msgsEventLog)


class Ros1Clearpath_logger_msgsEventLogs(Record):
    """@brief Own every original clearpath_logger_msgs/EventLogs field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("logs",)
    # @brief Original logs: clearpath_logger_msgs/EventLog; shape sequence.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_0bd7c8adb2807c9a4273f01efb36309685301550a6e201f76865c6b5becabd61",
        "minimum": 4,
        "maximum": 14132,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "logs",
                "type": "clearpath_logger_msgs/EventLog",
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
                "element_minimum": 44,
            }
        ],
        "type": "clearpath_logger_msgs/EventLogs",
    }


REGISTRY.add(Ros1Clearpath_logger_msgsEventLogs)


class Ros1Clearpath_mission_manager_msgsNetworkEdgeReq(Record):
    """@brief Own every original clearpath_mission_manager_msgs/NetworkEdgeReq field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("start_point_id", "end_point_id", "speed_limit", "radius")
    # @brief Original start_point_id: string; shape scalar.
    # @brief Original end_point_id: string; shape scalar.
    # @brief Original speed_limit: float32; shape scalar.
    # @brief Original radius: float32; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_134bc2836c26c258057ae81465e06ba1f52307895c8016da1bab139a8efb9d62",
        "minimum": 16,
        "maximum": 528,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "start_point_id",
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
                "name": "end_point_id",
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
                "name": "speed_limit",
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
                "name": "radius",
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
        "type": "clearpath_mission_manager_msgs/NetworkEdgeReq",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsNetworkEdgeReq)


class Ros1Clearpath_mission_manager_msgsNetworkMapState(Record):
    """@brief Own every original clearpath_mission_manager_msgs/NetworkMapState field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("uuid", "exists", "num_subgraphs", "disconnected_point_ids", "size_exceeded")
    # @brief Original uuid: string; shape scalar.
    # @brief Original exists: bool; shape scalar.
    # @brief Original num_subgraphs: int32; shape scalar.
    # @brief Original disconnected_point_ids: string; shape sequence.
    # @brief Original size_exceeded: bool; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_c87392fb395b63731581dec3a3b199c830a7ed5001c53949c3002f9062d4958c",
        "minimum": 14,
        "maximum": 790,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "uuid",
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
                "name": "exists",
                "type": "bool",
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
                "name": "num_subgraphs",
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
                "name": "disconnected_point_ids",
                "type": "string",
                "array": "sequence",
                "count": 2,
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
                "name": "size_exceeded",
                "type": "bool",
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
        "type": "clearpath_mission_manager_msgs/NetworkMapState",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsNetworkMapState)


class Ros1Clearpath_mission_manager_msgsNetworkMapValidityState(Record):
    """@brief Own every original clearpath_mission_manager_msgs/NetworkMapValidityState field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("map_states",)
    # @brief Original map_states: clearpath_mission_manager_msgs/NetworkMapState; shape sequence.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_12fe0cef6a55971defedc37a35a87257b71c7e3bb103b91cbbeb6bfbd30e850a",
        "minimum": 4,
        "maximum": 1584,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "map_states",
                "type": "clearpath_mission_manager_msgs/NetworkMapState",
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
                "element_minimum": 14,
            }
        ],
        "type": "clearpath_mission_manager_msgs/NetworkMapValidityState",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsNetworkMapValidityState)


class Ros1Clearpath_navigation_msgsNetworkMission(Record):
    """@brief Own every original clearpath_navigation_msgs/NetworkMission field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = (
        "header",
        "name",
        "uuid",
        "waypoints",
        "on_start",
        "on_stop",
        "return_to_dock_enabled",
        "return_to_dock_id",
        "return_to_dock_battery_level",
        "resume_mission_battery_level",
        "network_replan_enabled",
        "onav_config",
    )
    # @brief Original header: std_msgs/Header; shape scalar.
    # @brief Original name: string; shape scalar.
    # @brief Original uuid: string; shape scalar.
    # @brief Original waypoints: clearpath_navigation_msgs/Waypoint; shape sequence.
    # @brief Original on_start: clearpath_navigation_msgs/Task; shape sequence.
    # @brief Original on_stop: clearpath_navigation_msgs/Task; shape sequence.
    # @brief Original return_to_dock_enabled: bool; shape scalar.
    # @brief Original return_to_dock_id: string; shape scalar.
    # @brief Original return_to_dock_battery_level: float32; shape scalar.
    # @brief Original resume_mission_battery_level: float32; shape scalar.
    # @brief Original network_replan_enabled: bool; shape scalar.
    # @brief Original onav_config: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_8dff81532124b3498e9e9e82252f2ba06804a29c6ccfadb7e75b04483d850c2e",
        "minimum": 54,
        "maximum": 13606,
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "uuid",
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
                "name": "waypoints",
                "type": "clearpath_navigation_msgs/Waypoint",
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
                "element_minimum": 52,
            },
            {
                "name": "on_start",
                "type": "clearpath_navigation_msgs/Task",
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
                "element_minimum": 25,
            },
            {
                "name": "on_stop",
                "type": "clearpath_navigation_msgs/Task",
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
                "element_minimum": 25,
            },
            {
                "name": "return_to_dock_enabled",
                "type": "bool",
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
                "name": "return_to_dock_id",
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
                "name": "return_to_dock_battery_level",
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
                "name": "resume_mission_battery_level",
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
                "name": "network_replan_enabled",
                "type": "bool",
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
                "name": "onav_config",
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
        "type": "clearpath_navigation_msgs/NetworkMission",
    }


REGISTRY.add(Ros1Clearpath_navigation_msgsNetworkMission)


class Ros1Clearpath_navigation_msgsNetworkPoint(Record):
    """@brief Own every original clearpath_navigation_msgs/NetworkPoint field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("uuid", "latitude", "longitude")
    # @brief Original uuid: string; shape scalar.
    # @brief Original latitude: float64; shape scalar.
    # @brief Original longitude: float64; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_d64f71c07c2c73314a1e23969620110e52e225f9d46a745413f84e2030855014",
        "minimum": 20,
        "maximum": 276,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "uuid",
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
                "name": "latitude",
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
                "name": "longitude",
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
        "type": "clearpath_navigation_msgs/NetworkPoint",
    }


REGISTRY.add(Ros1Clearpath_navigation_msgsNetworkPoint)


class Ros1Clearpath_navigation_msgsNetworkEdge(Record):
    """@brief Own every original clearpath_navigation_msgs/NetworkEdge field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("uuid", "start_point", "end_point", "radius", "speed_limit", "cost_factor")
    # @brief Original uuid: string; shape scalar.
    # @brief Original start_point: clearpath_navigation_msgs/NetworkPoint; shape scalar.
    # @brief Original end_point: clearpath_navigation_msgs/NetworkPoint; shape scalar.
    # @brief Original radius: float32; shape scalar.
    # @brief Original speed_limit: float32; shape scalar.
    # @brief Original cost_factor: float32; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_2d67f3d8176b117f6f00334633385aee6b1fd23a24a2c8b214e40793fc1c2943",
        "minimum": 56,
        "maximum": 824,
        "semantics": "",
        "ros_version": 1,
        "constants": {"MIN_COST_FACTOR": 0.0, "MAX_COST_FACTOR": 100.0, "DEFAULT_COST_FACTOR": 1.0},
        "fields": [
            {
                "name": "uuid",
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
                "name": "start_point",
                "type": "clearpath_navigation_msgs/NetworkPoint",
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
                "element_minimum": 20,
            },
            {
                "name": "end_point",
                "type": "clearpath_navigation_msgs/NetworkPoint",
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
                "element_minimum": 20,
            },
            {
                "name": "radius",
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
                "name": "speed_limit",
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
                "name": "cost_factor",
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
        "type": "clearpath_navigation_msgs/NetworkEdge",
    }


REGISTRY.add(Ros1Clearpath_navigation_msgsNetworkEdge)


class Ros1Clearpath_navigation_msgsNetworkMap(Record):
    """@brief Own every original clearpath_navigation_msgs/NetworkMap field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("name", "uuid", "default_radius", "default_speed_limit", "points", "connections")
    # @brief Original name: string; shape scalar.
    # @brief Original uuid: string; shape scalar.
    # @brief Original default_radius: float32; shape scalar.
    # @brief Original default_speed_limit: float32; shape scalar.
    # @brief Original points: clearpath_navigation_msgs/NetworkPoint; shape sequence.
    # @brief Original connections: clearpath_navigation_msgs/NetworkEdge; shape sequence.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_3b14eff4b520d1eaeb357959f984142dcfcc1039cb1434469247f32fb16f06fe",
        "minimum": 24,
        "maximum": 2608,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "uuid",
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
                "name": "default_radius",
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
                "name": "default_speed_limit",
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
                "name": "points",
                "type": "clearpath_navigation_msgs/NetworkPoint",
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
                "element_minimum": 20,
            },
            {
                "name": "connections",
                "type": "clearpath_navigation_msgs/NetworkEdge",
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
                "element_minimum": 56,
            },
        ],
        "type": "clearpath_navigation_msgs/NetworkMap",
    }


REGISTRY.add(Ros1Clearpath_navigation_msgsNetworkMap)


class Ros1Clearpath_navigation_msgsPointOfInterest(Record):
    """@brief Own every original clearpath_navigation_msgs/PointOfInterest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = (
        "uuid",
        "name",
        "latitude",
        "longitude",
        "elevation",
        "enable_heading",
        "heading",
        "tags",
        "custom_fields_json",
    )
    # @brief Original uuid: string; shape scalar.
    # @brief Original name: string; shape scalar.
    # @brief Original latitude: float64; shape scalar.
    # @brief Original longitude: float64; shape scalar.
    # @brief Original elevation: float64; shape scalar.
    # @brief Original enable_heading: bool; shape scalar.
    # @brief Original heading: float64; shape scalar.
    # @brief Original tags: string; shape sequence.
    # @brief Original custom_fields_json: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_8d302ade38f6b9c0046c577a1cb4fce0dad418fc4b1aa9de496409fac4632d2c",
        "minimum": 49,
        "maximum": 1209,
        "semantics": "",
        "ros_version": 1,
        "constants": {"TAG_GOTO": "goto", "TAG_INSPECT": "inspect"},
        "fields": [
            {
                "name": "uuid",
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "latitude",
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
                "name": "longitude",
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
                "name": "elevation",
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
                "name": "enable_heading",
                "type": "bool",
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
                "name": "heading",
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
                "name": "tags",
                "type": "string",
                "array": "sequence",
                "count": 2,
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
                "name": "custom_fields_json",
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
        "type": "clearpath_navigation_msgs/PointOfInterest",
    }


REGISTRY.add(Ros1Clearpath_navigation_msgsPointOfInterest)


class Ros1Clearpath_mission_manager_msgsStorageState(Record):
    """@brief Own every original clearpath_mission_manager_msgs/StorageState field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("missions", "waypoints", "tasks", "network_missions", "network_maps", "points_of_interest")
    # @brief Original missions: clearpath_navigation_msgs/Mission; shape sequence.
    # @brief Original waypoints: clearpath_navigation_msgs/Waypoint; shape sequence.
    # @brief Original tasks: clearpath_navigation_msgs/Task; shape sequence.
    # @brief Original network_missions: clearpath_navigation_msgs/NetworkMission; shape sequence.
    # @brief Original network_maps: clearpath_navigation_msgs/NetworkMap; shape sequence.
    # @brief Original points_of_interest: clearpath_navigation_msgs/PointOfInterest; shape sequence.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_3f23f2e49c54f2e0c5b3302d299dace8b15bcb205530b7b0f040125ed8b6e189",
        "minimum": 24,
        "maximum": 32768,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "missions",
                "type": "clearpath_navigation_msgs/Mission",
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
                "element_minimum": 40,
            },
            {
                "name": "waypoints",
                "type": "clearpath_navigation_msgs/Waypoint",
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
                "element_minimum": 52,
            },
            {
                "name": "tasks",
                "type": "clearpath_navigation_msgs/Task",
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
                "element_minimum": 25,
            },
            {
                "name": "network_missions",
                "type": "clearpath_navigation_msgs/NetworkMission",
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
                "element_minimum": 54,
            },
            {
                "name": "network_maps",
                "type": "clearpath_navigation_msgs/NetworkMap",
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
                "element_minimum": 24,
            },
            {
                "name": "points_of_interest",
                "type": "clearpath_navigation_msgs/PointOfInterest",
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
                "element_minimum": 49,
            },
        ],
        "type": "clearpath_mission_manager_msgs/StorageState",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsStorageState)


class Ros1Clearpath_mission_scheduler_msgsNextSchedule(Record):
    """@brief Own every original clearpath_mission_scheduler_msgs/NextSchedule field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("uuid", "time_to_start")
    # @brief Original uuid: string; shape scalar.
    # @brief Original time_to_start: duration; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_a2be03201266ebf80af5587b59ff48514b3e97a536078c6b235c434e6dc80f3a",
        "minimum": 12,
        "maximum": 268,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "uuid",
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
                "name": "time_to_start",
                "type": "duration",
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
        "type": "clearpath_mission_scheduler_msgs/NextSchedule",
    }


REGISTRY.add(Ros1Clearpath_mission_scheduler_msgsNextSchedule)


class Ros1Clearpath_mission_scheduler_msgsUtcTime(Record):
    """@brief Own every original clearpath_mission_scheduler_msgs/UtcTime field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("hour", "minute", "second", "millisecond")
    # @brief Original hour: uint8; shape scalar.
    # @brief Original minute: uint8; shape scalar.
    # @brief Original second: uint8; shape scalar.
    # @brief Original millisecond: uint16; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_5d8b0173e89fb44a2c6444028d65232a492255e596b8a535d2aea714fca0ab49",
        "minimum": 5,
        "maximum": 5,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "hour",
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
                "name": "minute",
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
                "name": "second",
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
                "name": "millisecond",
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
        ],
        "type": "clearpath_mission_scheduler_msgs/UtcTime",
    }


REGISTRY.add(Ros1Clearpath_mission_scheduler_msgsUtcTime)


class Ros1Clearpath_mission_scheduler_msgsSchedule(Record):
    """@brief Own every original clearpath_mission_scheduler_msgs/Schedule field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = (
        "name",
        "uuid",
        "start_time",
        "mode",
        "loop_repeats",
        "loop_interval",
        "mission_ids",
        "min_battery",
        "timeout",
        "enabled",
    )
    # @brief Original name: string; shape scalar.
    # @brief Original uuid: string; shape scalar.
    # @brief Original start_time: clearpath_mission_scheduler_msgs/UtcTime; shape scalar.
    # @brief Original mode: uint8; shape scalar.
    # @brief Original loop_repeats: uint8; shape scalar.
    # @brief Original loop_interval: duration; shape scalar.
    # @brief Original mission_ids: string; shape sequence.
    # @brief Original min_battery: float32; shape scalar.
    # @brief Original timeout: duration; shape scalar.
    # @brief Original enabled: bool; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_552fe3494bad6517edf7d69e98021b0ebc373bf084de7335d57d1e074caa1465",
        "minimum": 40,
        "maximum": 944,
        "semantics": "",
        "ros_version": 1,
        "constants": {"MODE_ONCE": 0, "MODE_LOOP": 1, "MODE_TRANSIENT": 2},
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "uuid",
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
                "name": "start_time",
                "type": "clearpath_mission_scheduler_msgs/UtcTime",
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
                "element_minimum": 5,
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
                "name": "loop_repeats",
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
                "name": "loop_interval",
                "type": "duration",
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
                "name": "mission_ids",
                "type": "string",
                "array": "sequence",
                "count": 2,
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
                "name": "min_battery",
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
                "name": "timeout",
                "type": "duration",
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
        "type": "clearpath_mission_scheduler_msgs/Schedule",
    }


REGISTRY.add(Ros1Clearpath_mission_scheduler_msgsSchedule)


class Ros1Clearpath_mission_scheduler_msgsStorageState(Record):
    """@brief Own every original clearpath_mission_scheduler_msgs/StorageState field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("schedules",)
    # @brief Original schedules: clearpath_mission_scheduler_msgs/Schedule; shape sequence.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_e2993af302bafec841a18f71a54d104c34b9c7ce91c84e3e4ee3be7f643a4f9a",
        "minimum": 4,
        "maximum": 1892,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "schedules",
                "type": "clearpath_mission_scheduler_msgs/Schedule",
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
                "element_minimum": 40,
            }
        ],
        "type": "clearpath_mission_scheduler_msgs/StorageState",
    }


REGISTRY.add(Ros1Clearpath_mission_scheduler_msgsStorageState)


class Ros1Std_msgsTime(Record):
    """@brief Own every original std_msgs/Time field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("data",)
    # @brief Original data: time; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_64c147e5ad9757a29f19692f4f933be0b2079e1b8ae40566bb3c20841734a7d1",
        "minimum": 8,
        "maximum": 8,
        "semantics": "normalized-time",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "data",
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
            }
        ],
        "type": "std_msgs/Time",
    }


REGISTRY.add(Ros1Std_msgsTime)


class Ros1Std_msgsString(Record):
    """@brief Own every original std_msgs/String field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("data",)
    # @brief Original data: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_2e8d1356eb6d39d2456dc2744c3aab174c093deebb56384704976f0a9aae5413",
        "minimum": 4,
        "maximum": 260,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
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
                "raw": False,
                "element_minimum": 4,
            }
        ],
        "type": "std_msgs/String",
    }


REGISTRY.add(Ros1Std_msgsString)


class Ros1Clearpath_navigation_msgsAutonomyStatus(Record):
    """@brief Own every original clearpath_navigation_msgs/AutonomyStatus field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("header", "last_start", "mission_uuid", "map_uuid", "state")
    # @brief Original header: std_msgs/Header; shape scalar.
    # @brief Original last_start: std_msgs/Time; shape scalar.
    # @brief Original mission_uuid: std_msgs/String; shape scalar.
    # @brief Original map_uuid: std_msgs/String; shape scalar.
    # @brief Original state: uint8; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_69ab909d6efdf65bcd36d0f8c159047b0dc3ecd5e9f03015936b69c6397dfdaf",
        "minimum": 33,
        "maximum": 673,
        "semantics": "",
        "ros_version": 1,
        "constants": {
            "IDLE": 0,
            "MISSION_DIRECT": 1,
            "MISSION_BY_ID": 2,
            "NETWORK_MISSION": 3,
            "NETWORK_GOTO": 4,
            "NETWORK_GOTO_POI": 5,
            "LOCAL_DOCKING": 6,
            "LOCAL_UNDOCKING": 7,
            "RADIUS_DOCKING": 8,
            "NETWORK_DOCKING": 9,
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
                "name": "last_start",
                "type": "std_msgs/Time",
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
                "name": "mission_uuid",
                "type": "std_msgs/String",
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
                "name": "map_uuid",
                "type": "std_msgs/String",
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
        "type": "clearpath_navigation_msgs/AutonomyStatus",
    }


REGISTRY.add(Ros1Clearpath_navigation_msgsAutonomyStatus)


class Ros1Clearpath_navigation_msgsDistanceToGoal(Record):
    """@brief Own every original clearpath_navigation_msgs/DistanceToGoal field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("euclidean", "path")
    # @brief Original euclidean: float32; shape scalar.
    # @brief Original path: float32; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_d1dec9c2784feaf6a70c2a5291ed9cb407145d6f42e2132ad71a141f5993a519",
        "minimum": 8,
        "maximum": 8,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "euclidean",
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
                "name": "path",
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
        "type": "clearpath_navigation_msgs/DistanceToGoal",
    }


REGISTRY.add(Ros1Clearpath_navigation_msgsDistanceToGoal)


class Ros1Clearpath_navigation_msgsMetrics(Record):
    """@brief Own every original clearpath_navigation_msgs/Metrics field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = (
        "total_distance_travelled",
        "total_duration",
        "num_missions_sent",
        "num_missions_completed",
        "num_replans",
        "num_recoveries",
        "num_tasks_executed",
    )
    # @brief Original total_distance_travelled: float64; shape scalar.
    # @brief Original total_duration: float64; shape scalar.
    # @brief Original num_missions_sent: uint64; shape scalar.
    # @brief Original num_missions_completed: uint64; shape scalar.
    # @brief Original num_replans: uint64; shape scalar.
    # @brief Original num_recoveries: uint64; shape scalar.
    # @brief Original num_tasks_executed: uint64; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_6e28edfbea9de8f1e0e52e200560b25b0f636160461f1bd99d353595906d7c19",
        "minimum": 56,
        "maximum": 56,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "total_distance_travelled",
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
                "name": "total_duration",
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
                "name": "num_missions_sent",
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
                "name": "num_missions_completed",
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
                "name": "num_replans",
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
                "name": "num_recoveries",
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
                "name": "num_tasks_executed",
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
        "type": "clearpath_navigation_msgs/Metrics",
    }


REGISTRY.add(Ros1Clearpath_navigation_msgsMetrics)


class Ros1Clearpath_navigation_msgsWaypointStatus(Record):
    """@brief Own every original clearpath_navigation_msgs/WaypointStatus field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("waypoint", "visited", "skipped")
    # @brief Original waypoint: clearpath_navigation_msgs/Waypoint; shape scalar.
    # @brief Original visited: bool; shape scalar.
    # @brief Original skipped: bool; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_8a69049422ce8a2ef23a319f2d3ed7783455381a91b7083fca402a3ca59c6644",
        "minimum": 54,
        "maximum": 3352,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "waypoint",
                "type": "clearpath_navigation_msgs/Waypoint",
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
                "element_minimum": 52,
            },
            {
                "name": "visited",
                "type": "bool",
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
                "name": "skipped",
                "type": "bool",
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
        "type": "clearpath_navigation_msgs/WaypointStatus",
    }


REGISTRY.add(Ros1Clearpath_navigation_msgsWaypointStatus)


class Ros1Clearpath_navigation_msgsMissionStatus(Record):
    """@brief Own every original clearpath_navigation_msgs/MissionStatus field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("header", "name", "uuid", "waypoints")
    # @brief Original header: std_msgs/Header; shape scalar.
    # @brief Original name: string; shape scalar.
    # @brief Original uuid: string; shape scalar.
    # @brief Original waypoints: clearpath_navigation_msgs/WaypointStatus; shape sequence.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_e1ecf20b0466f7bda1f41537b80304e5c93cd0d7e599a4164da047a653edd9e4",
        "minimum": 28,
        "maximum": 7244,
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "uuid",
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
                "name": "waypoints",
                "type": "clearpath_navigation_msgs/WaypointStatus",
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
                "element_minimum": 54,
            },
        ],
        "type": "clearpath_navigation_msgs/MissionStatus",
    }


REGISTRY.add(Ros1Clearpath_navigation_msgsMissionStatus)


class Ros1Clearpath_navigation_msgsMotionState(Record):
    """@brief Own every original clearpath_navigation_msgs/MotionState field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("motion", "indicator", "direction")
    # @brief Original motion: uint8; shape scalar.
    # @brief Original indicator: uint8; shape scalar.
    # @brief Original direction: uint8; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_04e1a2cc31ea5b08b7f385b305b8e89acc31a7c6675b36a473930116076a1efa",
        "minimum": 3,
        "maximum": 3,
        "semantics": "",
        "ros_version": 1,
        "constants": {
            "MOTION_NORMAL": 10,
            "MOTION_STOPPED": 11,
            "MOTION_REVERSE": 12,
            "MOTION_SLOWING": 13,
            "INDICATOR_NORMAL": 20,
            "INDICATOR_LEFT_TURN": 21,
            "INDICATOR_RIGHT_TURN": 22,
            "INDICATOR_CLOCKWISE": 23,
            "INDICATOR_COUNTERCLOCKWISE": 24,
            "INDICATOR_HAZARD": 25,
            "DIRECTION_FORWARD": 30,
            "DIRECTION_REVERSE": 31,
        },
        "fields": [
            {
                "name": "motion",
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
                "name": "indicator",
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
                "name": "direction",
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
        "type": "clearpath_navigation_msgs/MotionState",
    }


REGISTRY.add(Ros1Clearpath_navigation_msgsMotionState)


class Ros1Clearpath_navigation_msgsNavigationState(Record):
    """@brief Own every original clearpath_navigation_msgs/NavigationState field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("states",)
    # @brief Original states: uint8; shape sequence.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_59723baf8c5871ea7bff969a09fe753455ef07d0cbc982ef23c1f55b984a7d2a",
        "minimum": 4,
        "maximum": 6,
        "semantics": "",
        "ros_version": 1,
        "constants": {
            "STATE_IDLE": 0,
            "STATE_COMPUTE_PATH": 1,
            "STATE_EXECUTE_PATH": 2,
            "STATE_REPLAN": 3,
            "STATE_NAVIGATING_AROUND_OBSTACLE": 4,
            "STATE_RECOVERY": 5,
            "STATE_LOST": 6,
            "STATE_DONE": 7,
            "STATE_SAFETY_STOP": 8,
            "STATE_PAUSE": 9,
            "STATE_DISABLE": 10,
        },
        "fields": [
            {
                "name": "states",
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
        "type": "clearpath_navigation_msgs/NavigationState",
    }


REGISTRY.add(Ros1Clearpath_navigation_msgsNavigationState)


class Ros1Clearpath_navigation_msgsOdomIntent(Record):
    """@brief Own every original clearpath_navigation_msgs/OdomIntent field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("header", "odom", "predicted_odom", "dt")
    # @brief Original header: std_msgs/Header; shape scalar.
    # @brief Original odom: nav_msgs/Odometry; shape scalar.
    # @brief Original predicted_odom: nav_msgs/Odometry; shape scalar.
    # @brief Original dt: float32; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_84aa6a07039ac3402c2762cdf89f217053c0f7e2448f535e12282c1184635f69",
        "minimum": 1420,
        "maximum": 2316,
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
                "name": "odom",
                "type": "nav_msgs/Odometry",
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
                "element_minimum": 700,
            },
            {
                "name": "predicted_odom",
                "type": "nav_msgs/Odometry",
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
                "element_minimum": 700,
            },
            {
                "name": "dt",
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
        "type": "clearpath_navigation_msgs/OdomIntent",
    }


REGISTRY.add(Ros1Clearpath_navigation_msgsOdomIntent)


class Ros1Clearpath_navigation_msgsVector2D(Record):
    """@brief Own every original clearpath_navigation_msgs/Vector2D field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("point",)
    # @brief Original point: float32; shape array.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_fab839d4e160f8dca805b36fd2d93362ea5929238c33f34f0695f8edaed15047",
        "minimum": 8,
        "maximum": 8,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "point",
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
            }
        ],
        "type": "clearpath_navigation_msgs/Vector2D",
    }


REGISTRY.add(Ros1Clearpath_navigation_msgsVector2D)


class Ros1Clearpath_navigation_msgsPointVector(Record):
    """@brief Own every original clearpath_navigation_msgs/PointVector field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("header", "cloud")
    # @brief Original header: std_msgs/Header; shape scalar.
    # @brief Original cloud: clearpath_navigation_msgs/Vector2D; shape sequence.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_4372dc043aaa0a9b16845e53db15405ec5dd98c4b5bc314319d185ba4557c9b8",
        "minimum": 20,
        "maximum": 164,
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
                "name": "cloud",
                "type": "clearpath_navigation_msgs/Vector2D",
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
                "element_minimum": 8,
            },
        ],
        "type": "clearpath_navigation_msgs/PointVector",
    }


REGISTRY.add(Ros1Clearpath_navigation_msgsPointVector)


class Ros1Clearpath_navigation_msgsProgress(Record):
    """@brief Own every original clearpath_navigation_msgs/Progress field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("path_progress", "goal_progress", "mission_progress")
    # @brief Original path_progress: float32; shape scalar.
    # @brief Original goal_progress: float32; shape scalar.
    # @brief Original mission_progress: float32; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_a85be472664da59faec23030269b688f4afd1d071c0f8d9d02d5c10d6f7649d7",
        "minimum": 12,
        "maximum": 12,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "path_progress",
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
                "name": "goal_progress",
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
                "name": "mission_progress",
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
        "type": "clearpath_navigation_msgs/Progress",
    }


REGISTRY.add(Ros1Clearpath_navigation_msgsProgress)


class Ros1Clearpath_navigation_msgsScanPoints(Record):
    """@brief Own every original clearpath_navigation_msgs/ScanPoints field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("header", "frames_vector", "cloud_vector")
    # @brief Original header: std_msgs/Header; shape scalar.
    # @brief Original frames_vector: string; shape sequence.
    # @brief Original cloud_vector: clearpath_navigation_msgs/PointVector; shape sequence.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_99d632501402a495a9337dee91bda1c0078fa379b9dbf872b45ad29af85a25b5",
        "minimum": 24,
        "maximum": 1000,
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
                "name": "frames_vector",
                "type": "string",
                "array": "sequence",
                "count": 2,
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
                "name": "cloud_vector",
                "type": "clearpath_navigation_msgs/PointVector",
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
                "element_minimum": 20,
            },
        ],
        "type": "clearpath_navigation_msgs/ScanPoints",
    }


REGISTRY.add(Ros1Clearpath_navigation_msgsScanPoints)


class Ros1Clearpath_navigation_msgsTrackError(Record):
    """@brief Own every original clearpath_navigation_msgs/TrackError field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("header", "cross_track_error", "heading_error")
    # @brief Original header: std_msgs/Header; shape scalar.
    # @brief Original cross_track_error: float32; shape scalar.
    # @brief Original heading_error: float32; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_ddaf051241e0ae7ffa19ed965cbaf65bb7c11a0b7feaa2e0530ca6068a633323",
        "minimum": 24,
        "maximum": 152,
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
                "name": "cross_track_error",
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
                "name": "heading_error",
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
        "type": "clearpath_navigation_msgs/TrackError",
    }


REGISTRY.add(Ros1Clearpath_navigation_msgsTrackError)


class Ros1Clearpath_platform_msgsDrive(Record):
    """@brief Own every original clearpath_platform_msgs/Drive field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("mode", "drivers")
    # @brief Original mode: int8; shape scalar.
    # @brief Original drivers: float32; shape array.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_5189b2de776409879f0b7baa8687b3c59663b886de4a9038a9bff5b7da962ea6",
        "minimum": 9,
        "maximum": 9,
        "semantics": "",
        "ros_version": 1,
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
        "type": "clearpath_platform_msgs/Drive",
    }


REGISTRY.add(Ros1Clearpath_platform_msgsDrive)


class Ros1Clearpath_platform_msgsDriveFeedback(Record):
    """@brief Own every original clearpath_platform_msgs/DriveFeedback field.
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
        "codec_identity": "UWVMROS1_07cc1a72329f8ef223455d21ed1ac6398ea48b87c5be0b78aec5513791172c16",
        "minimum": 25,
        "maximum": 25,
        "semantics": "",
        "ros_version": 1,
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
        "type": "clearpath_platform_msgs/DriveFeedback",
    }


REGISTRY.add(Ros1Clearpath_platform_msgsDriveFeedback)


class Ros1Clearpath_platform_msgsFans(Record):
    """@brief Own every original clearpath_platform_msgs/Fans field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("fans",)
    # @brief Original fans: uint8; shape sequence.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_5ce5485623fa8b07de5f3094110877bf5741c94e90a508fb0bb66a9552a13fb5",
        "minimum": 4,
        "maximum": 6,
        "semantics": "",
        "ros_version": 1,
        "constants": {
            "RIDGEBACK_EQUIPMENT_BAY_INTAKE": 0,
            "RIDGEBACK_EQUIPMENT_BAY_EXHAUST": 1,
            "RIDGEBACK_CHARGER_BAY_INTAKE": 2,
            "RIDGEBACK_CHARGER_BAY_EXHAUST": 3,
            "RIDGEBACK_USER_BAY_INTAKE": 4,
            "RIDGEBACK_USER_BAY_EXHAUST": 5,
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
        "type": "clearpath_platform_msgs/Fans",
    }


REGISTRY.add(Ros1Clearpath_platform_msgsFans)


class Ros1Clearpath_platform_msgsFeedback(Record):
    """@brief Own every original clearpath_platform_msgs/Feedback field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("header", "drivers", "commanded_mode", "actual_mode")
    # @brief Original header: std_msgs/Header; shape scalar.
    # @brief Original drivers: clearpath_platform_msgs/DriveFeedback; shape array.
    # @brief Original commanded_mode: int8; shape scalar.
    # @brief Original actual_mode: int8; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_38f073bad8f592e143e0a60cb123a652bf00b72b160dd9e0a356bfc73eb0312a",
        "minimum": 68,
        "maximum": 196,
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
                "name": "drivers",
                "type": "clearpath_platform_msgs/DriveFeedback",
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
        "type": "clearpath_platform_msgs/Feedback",
    }


REGISTRY.add(Ros1Clearpath_platform_msgsFeedback)


class Ros1Clearpath_platform_msgsRGB(Record):
    """@brief Own every original clearpath_platform_msgs/RGB field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("red", "green", "blue")
    # @brief Original red: uint8; shape scalar.
    # @brief Original green: uint8; shape scalar.
    # @brief Original blue: uint8; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_8c848638975b7775b8ce0ff10d07c7d79c856f800745d30af6051c574c019056",
        "minimum": 3,
        "maximum": 3,
        "semantics": "",
        "ros_version": 1,
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
        "type": "clearpath_platform_msgs/RGB",
    }


REGISTRY.add(Ros1Clearpath_platform_msgsRGB)


class Ros1Clearpath_platform_msgsLights(Record):
    """@brief Own every original clearpath_platform_msgs/Lights field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("lights",)
    # @brief Original lights: clearpath_platform_msgs/RGB; shape sequence.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_21d6dc7f4b57ae3468a7ee08945ee60f8d6bc9cbf24217f5ff48e55a4ce33c4b",
        "minimum": 4,
        "maximum": 10,
        "semantics": "",
        "ros_version": 1,
        "constants": {
            "DINGO_LIGHTS_REAR_LEFT": 0,
            "DINGO_LIGHTS_FRONT_LEFT": 1,
            "DINGO_LIGHTS_FRONT_RIGHT": 2,
            "DINGO_LIGHTS_REAR_RIGHT": 3,
            "RIDGEBACK_LIGHTS_FRONT_PORT_UPPER": 0,
            "RIDGEBACK_LIGHTS_FRONT_PORT_LOWER": 1,
            "RIDGEBACK_LIGHTS_FRONT_STARBOARD_UPPER": 2,
            "RIDGEBACK_LIGHTS_FRONT_STARBOARD_LOWER": 3,
            "RIDGEBACK_LIGHTS_REAR_PORT_UPPER": 4,
            "RIDGEBACK_LIGHTS_REAR_PORT_LOWER": 5,
            "RIDGEBACK_LIGHTS_REAR_STARBOARD_UPPER": 6,
            "RIDGEBACK_LIGHTS_REAR_STARBOARD_LOWER": 7,
            "WARTHOG_LIGHTS_FRONT_LEFT": 0,
            "WARTHOG_LIGHTS_FRONT_RIGHT": 1,
            "WARTHOG_LIGHTS_REAR_LEFT": 2,
            "WARTHOG_LIGHTS_REAR_RIGHT": 3,
        },
        "fields": [
            {
                "name": "lights",
                "type": "clearpath_platform_msgs/RGB",
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
        "type": "clearpath_platform_msgs/Lights",
    }


REGISTRY.add(Ros1Clearpath_platform_msgsLights)


class Ros1Clearpath_platform_msgsPlatformID(Record):
    """@brief Own every original clearpath_platform_msgs/PlatformID field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("model", "serial_id", "hardware_revision", "firmware_revision")
    # @brief Original model: string; shape scalar.
    # @brief Original serial_id: string; shape scalar.
    # @brief Original hardware_revision: string; shape scalar.
    # @brief Original firmware_revision: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_dc63cb65c84ae77ef0a36e938c77beeb234ad1e63acf11270ea4de337d5b2b07",
        "minimum": 16,
        "maximum": 1040,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
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
                "name": "serial_id",
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
                "name": "hardware_revision",
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
                "name": "firmware_revision",
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
        "type": "clearpath_platform_msgs/PlatformID",
    }


REGISTRY.add(Ros1Clearpath_platform_msgsPlatformID)


class Ros1Clearpath_platform_msgsPower(Record):
    """@brief Own every original clearpath_platform_msgs/Power field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = (
        "header",
        "shore_power_connected",
        "battery_connected",
        "power_12v_user_nominal",
        "charging_complete",
        "measured_voltages",
        "measured_currents",
    )
    # @brief Original header: std_msgs/Header; shape scalar.
    # @brief Original shore_power_connected: int8; shape scalar.
    # @brief Original battery_connected: int8; shape scalar.
    # @brief Original power_12v_user_nominal: int8; shape scalar.
    # @brief Original charging_complete: int8; shape scalar.
    # @brief Original measured_voltages: float32; shape sequence.
    # @brief Original measured_currents: float32; shape sequence.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_59c3c92a37e301e2fdfc43e0d1585138e26cda4c7821dab3085869c1c9115efc",
        "minimum": 28,
        "maximum": 172,
        "semantics": "",
        "ros_version": 1,
        "constants": {
            "NOT_APPLICABLE": -1,
            "JACKAL_MEASURED_BATTERY": 0,
            "JACKAL_MEASURED_5V": 1,
            "JACKAL_MEASURED_12V": 2,
            "DINGO_MEASURED_BATTERY": 0,
            "DINGO_MEASURED_5V": 1,
            "DINGO_MEASURED_12V": 2,
            "WARTHOG_MEASURED_BATTERY": 0,
            "WARTHOG_MEASURED_12V": 1,
            "WARTHOG_MEASURED_24V": 2,
            "WARTHOG_MEASURED_48V": 3,
            "RIDGEBACK_MEASURED_BATTERY": 0,
            "RIDGEBACK_MEASURED_5V": 1,
            "RIDGEBACK_MEASURED_12V": 2,
            "RIDGEBACK_MEASURED_INVERTER": 3,
            "RIDGEBACK_MEASURED_FRONT_AXLE": 4,
            "RIDGEBACK_MEASURED_REAR_AXLE": 5,
            "RIDGEBACK_MEASURED_LIGHT": 6,
            "JACKAL_TOTAL_CURRENT": 0,
            "JACKAL_COMPUTER_CURRENT": 1,
            "JACKAL_DRIVE_CURRENT": 2,
            "JACKAL_USER_CURRENT": 3,
            "DINGO_TOTAL_CURRENT": 0,
            "DINGO_COMPUTER_CURRENT": 1,
            "WARTHOG_TOTAL_CURRENT": 0,
            "WARTHOG_COMPUTER_CURRENT": 1,
            "WARTHOG_12V_CURRENT": 2,
            "WARTHOG_24V_CURRENT": 3,
            "WARTHOG_48V_CURRENT": 4,
            "RIDGEBACK_TOTAL_CURRENT": 0,
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
        "type": "clearpath_platform_msgs/Power",
    }


REGISTRY.add(Ros1Clearpath_platform_msgsPower)


class Ros1Clearpath_platform_msgsRYG(Record):
    """@brief Own every original clearpath_platform_msgs/RYG field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("red", "yellow", "green")
    # @brief Original red: uint8; shape scalar.
    # @brief Original yellow: uint8; shape scalar.
    # @brief Original green: uint8; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_7a5c0869aad03d552e5029582d0a63d70723954f84b63ab459f45121ea1da8df",
        "minimum": 3,
        "maximum": 3,
        "semantics": "",
        "ros_version": 1,
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
                "name": "yellow",
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
        ],
        "type": "clearpath_platform_msgs/RYG",
    }


REGISTRY.add(Ros1Clearpath_platform_msgsRYG)


class Ros1Clearpath_platform_msgsStackLightState(Record):
    """@brief Own every original clearpath_platform_msgs/StackLightState field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("color", "strobe_on", "message")
    # @brief Original color: clearpath_platform_msgs/RYG; shape scalar.
    # @brief Original strobe_on: bool; shape scalar.
    # @brief Original message: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_508b54b7050d7598a79aa238e96f210280796c177de357d9b969df4437d969e1",
        "minimum": 8,
        "maximum": 264,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "color",
                "type": "clearpath_platform_msgs/RYG",
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
                "element_minimum": 3,
            },
            {
                "name": "strobe_on",
                "type": "bool",
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
        "type": "clearpath_platform_msgs/StackLightState",
    }


REGISTRY.add(Ros1Clearpath_platform_msgsStackLightState)


class Ros1Clearpath_platform_msgsStatus(Record):
    """@brief Own every original clearpath_platform_msgs/Status field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = (
        "header",
        "hardware_id",
        "firmware_commit",
        "mcu_uptime",
        "connection_uptime",
        "pcb_temperature",
        "mcu_temperature",
    )
    # @brief Original header: std_msgs/Header; shape scalar.
    # @brief Original hardware_id: string; shape scalar.
    # @brief Original firmware_commit: string; shape scalar.
    # @brief Original mcu_uptime: std_msgs/Duration; shape scalar.
    # @brief Original connection_uptime: std_msgs/Duration; shape scalar.
    # @brief Original pcb_temperature: float32; shape scalar.
    # @brief Original mcu_temperature: float32; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_9db960375fb63d011c0c038266421414c4c5f4ce1909ff5105e63dd2e1289a33",
        "minimum": 48,
        "maximum": 688,
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
                "name": "firmware_commit",
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
                "type": "std_msgs/Duration",
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
                "type": "std_msgs/Duration",
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
        ],
        "type": "clearpath_platform_msgs/Status",
    }


REGISTRY.add(Ros1Clearpath_platform_msgsStatus)


class Ros1Clearpath_platform_msgsStopStatus(Record):
    """@brief Own every original clearpath_platform_msgs/StopStatus field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("header", "stop_power_status", "external_stop_present")
    # @brief Original header: std_msgs/Header; shape scalar.
    # @brief Original stop_power_status: bool; shape scalar.
    # @brief Original external_stop_present: bool; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_e16505686f22cd4183a6eb89e53c3b4184ccd58a15b1bc46efa656d50b0b3a18",
        "minimum": 18,
        "maximum": 146,
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
        ],
        "type": "clearpath_platform_msgs/StopStatus",
    }


REGISTRY.add(Ros1Clearpath_platform_msgsStopStatus)


class Ros1Clearpath_safety_msgsAssistedTeleopState(Record):
    """@brief Own every original clearpath_safety_msgs/AssistedTeleopState field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("state", "assist_off_trigger", "error_message")
    # @brief Original state: uint8; shape scalar.
    # @brief Original assist_off_trigger: uint8; shape scalar.
    # @brief Original error_message: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_e502d2181d51f1de7976b35a95ea2463644d374becce390d668a81e549fad82e",
        "minimum": 6,
        "maximum": 262,
        "semantics": "",
        "ros_version": 1,
        "constants": {
            "STATE_ACTIVE": 0,
            "STATE_DISABLED": 1,
            "STATE_COLLISION_IMMINENT": 2,
            "STATE_STOPPED": 3,
            "STATE_COLLISION": 4,
            "STATE_ERROR": 5,
            "ASSIST_ON": 100,
            "ASSIST_OFF_SERVICE": 101,
            "ASSIST_OFF_JOYSTICK_OVERRIDE": 102,
            "ASSIST_OFF_SENSOR_TIMEOUT": 103,
            "ASSIST_OFF_REMOTE_CONTROLLER_OVERRIDE": 104,
        },
        "fields": [
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
            {
                "name": "assist_off_trigger",
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
                "name": "error_message",
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
        "type": "clearpath_safety_msgs/AssistedTeleopState",
    }


REGISTRY.add(Ros1Clearpath_safety_msgsAssistedTeleopState)


class Ros1Clearpath_safety_msgsObstacleMap(Record):
    """@brief Own every original clearpath_safety_msgs/ObstacleMap field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("threat_level",)
    # @brief Original threat_level: float32; shape sequence.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_e137bca7b7ac8e14451792df0b9347910c5ff236087eb0f5db872c5a0f3e0f93",
        "minimum": 4,
        "maximum": 12,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "threat_level",
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
        "type": "clearpath_safety_msgs/ObstacleMap",
    }


REGISTRY.add(Ros1Clearpath_safety_msgsObstacleMap)


class Ros1Clearpath_safety_msgsSafety(Record):
    """@brief Own every original clearpath_safety_msgs/Safety field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("safety_monitor_triggered", "trigger_type", "message")
    # @brief Original safety_monitor_triggered: bool; shape scalar.
    # @brief Original trigger_type: uint8; shape scalar.
    # @brief Original message: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_033ee9ca48e803538ac663cdd476b65fdc5e29359be86b8ea6251cfaaa85e9ce",
        "minimum": 6,
        "maximum": 262,
        "semantics": "",
        "ros_version": 1,
        "constants": {"SAFETY_ESTOP": 0, "SAFETY_SENSOR_TIMEOUT": 1},
        "fields": [
            {
                "name": "safety_monitor_triggered",
                "type": "bool",
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
                "name": "trigger_type",
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
        "type": "clearpath_safety_msgs/Safety",
    }


REGISTRY.add(Ros1Clearpath_safety_msgsSafety)


class Ros1Clearpath_safety_msgsWatchdogConfigCommon(Record):
    """@brief Own every original clearpath_safety_msgs/WatchdogConfigCommon field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("name", "type", "enabled", "components", "on_trigger_action")
    # @brief Original name: string; shape scalar.
    # @brief Original type: string; shape scalar.
    # @brief Original enabled: bool; shape scalar.
    # @brief Original components: string; shape sequence.
    # @brief Original on_trigger_action: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_508d2bd15b0b42a056f3ef82fd04799bd2b6d8d4d6d03dc571e151f5c30c8844",
        "minimum": 17,
        "maximum": 1177,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "type",
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
            {
                "name": "components",
                "type": "string",
                "array": "sequence",
                "count": 2,
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
                "name": "on_trigger_action",
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
        "type": "clearpath_safety_msgs/WatchdogConfigCommon",
    }


REGISTRY.add(Ros1Clearpath_safety_msgsWatchdogConfigCommon)


class Ros1Clearpath_safety_msgsWatchdogConfigCommunication(Record):
    """@brief Own every original clearpath_safety_msgs/WatchdogConfigCommunication field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("base_config", "protocol", "ip", "interface", "timeout")
    # @brief Original base_config: clearpath_safety_msgs/WatchdogConfigCommon; shape scalar.
    # @brief Original protocol: string; shape scalar.
    # @brief Original ip: string; shape scalar.
    # @brief Original interface: string; shape scalar.
    # @brief Original timeout: float32; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_be40239142afe7ffedef0d13cc13f093e1c6c5f49b73074cfa5c9ccaa0106446",
        "minimum": 33,
        "maximum": 1961,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "base_config",
                "type": "clearpath_safety_msgs/WatchdogConfigCommon",
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
                "element_minimum": 17,
            },
            {
                "name": "protocol",
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "interface",
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
                "name": "timeout",
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
        "type": "clearpath_safety_msgs/WatchdogConfigCommunication",
    }


REGISTRY.add(Ros1Clearpath_safety_msgsWatchdogConfigCommunication)


class Ros1Clearpath_safety_msgsWatchdogConfigHeartbeat(Record):
    """@brief Own every original clearpath_safety_msgs/WatchdogConfigHeartbeat field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("base_config", "topic", "timeout")
    # @brief Original base_config: clearpath_safety_msgs/WatchdogConfigCommon; shape scalar.
    # @brief Original topic: string; shape scalar.
    # @brief Original timeout: float32; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_66f859db1405ce185c91bd0e04b20901c12cb4e66deb3c2fff3a7085647a2cc2",
        "minimum": 25,
        "maximum": 1441,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "base_config",
                "type": "clearpath_safety_msgs/WatchdogConfigCommon",
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
                "element_minimum": 17,
            },
            {
                "name": "topic",
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
                "name": "timeout",
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
        "type": "clearpath_safety_msgs/WatchdogConfigHeartbeat",
    }


REGISTRY.add(Ros1Clearpath_safety_msgsWatchdogConfigHeartbeat)


class Ros1Clearpath_safety_msgsWatchdogConfigInclination(Record):
    """@brief Own every original clearpath_safety_msgs/WatchdogConfigInclination field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("base_config", "roll_limit", "pitch_limit", "delay", "topic")
    # @brief Original base_config: clearpath_safety_msgs/WatchdogConfigCommon; shape scalar.
    # @brief Original roll_limit: float32; shape scalar.
    # @brief Original pitch_limit: float32; shape scalar.
    # @brief Original delay: float32; shape scalar.
    # @brief Original topic: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_55022d7e5888b670bce29de4cc9c54da784e26b21d8843770de5a9db75f78d77",
        "minimum": 33,
        "maximum": 1449,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "base_config",
                "type": "clearpath_safety_msgs/WatchdogConfigCommon",
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
                "element_minimum": 17,
            },
            {
                "name": "roll_limit",
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
                "name": "pitch_limit",
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
                "name": "delay",
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
                "name": "topic",
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
        "type": "clearpath_safety_msgs/WatchdogConfigInclination",
    }


REGISTRY.add(Ros1Clearpath_safety_msgsWatchdogConfigInclination)


class Ros1Clearpath_safety_msgsWatchdogConfigNodeStatus(Record):
    """@brief Own every original clearpath_safety_msgs/WatchdogConfigNodeStatus field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("base_config", "node_name", "num_requests")
    # @brief Original base_config: clearpath_safety_msgs/WatchdogConfigCommon; shape scalar.
    # @brief Original node_name: string; shape scalar.
    # @brief Original num_requests: uint8; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_b8efb3fe844ee27f21c9f77dcb71be6e818931c2d927b163c70fd988c371f0f9",
        "minimum": 22,
        "maximum": 1438,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "base_config",
                "type": "clearpath_safety_msgs/WatchdogConfigCommon",
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
                "element_minimum": 17,
            },
            {
                "name": "node_name",
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
                "name": "num_requests",
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
        "type": "clearpath_safety_msgs/WatchdogConfigNodeStatus",
    }


REGISTRY.add(Ros1Clearpath_safety_msgsWatchdogConfigNodeStatus)


class Ros1Clearpath_safety_msgsWatchdogConfigNodeletStatus(Record):
    """@brief Own every original clearpath_safety_msgs/WatchdogConfigNodeletStatus field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("base_config", "manager", "nodelet", "num_requests")
    # @brief Original base_config: clearpath_safety_msgs/WatchdogConfigCommon; shape scalar.
    # @brief Original manager: string; shape scalar.
    # @brief Original nodelet: string; shape scalar.
    # @brief Original num_requests: uint8; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_170ba32f5c32e65fd02acf9aee6715014a6e3ed471fc416f1181e2759182ba5f",
        "minimum": 26,
        "maximum": 1698,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "base_config",
                "type": "clearpath_safety_msgs/WatchdogConfigCommon",
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
                "element_minimum": 17,
            },
            {
                "name": "manager",
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
                "name": "nodelet",
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
                "name": "num_requests",
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
        "type": "clearpath_safety_msgs/WatchdogConfigNodeletStatus",
    }


REGISTRY.add(Ros1Clearpath_safety_msgsWatchdogConfigNodeletStatus)


class Ros1Clearpath_safety_msgsWatchdogConfigNumPoints(Record):
    """@brief Own every original clearpath_safety_msgs/WatchdogConfigNumPoints field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("base_config", "topic", "threshold")
    # @brief Original base_config: clearpath_safety_msgs/WatchdogConfigCommon; shape scalar.
    # @brief Original topic: string; shape scalar.
    # @brief Original threshold: int32; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_ea9a231a5a1f6471b20965acd6b2ec11ece3d76dd510649ac2e93b33c5235b85",
        "minimum": 25,
        "maximum": 1441,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "base_config",
                "type": "clearpath_safety_msgs/WatchdogConfigCommon",
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
                "element_minimum": 17,
            },
            {
                "name": "topic",
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
                "name": "threshold",
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
        ],
        "type": "clearpath_safety_msgs/WatchdogConfigNumPoints",
    }


REGISTRY.add(Ros1Clearpath_safety_msgsWatchdogConfigNumPoints)


class Ros1Clearpath_safety_msgsWatchdogConfigOdomCovariance(Record):
    """@brief Own every original clearpath_safety_msgs/WatchdogConfigOdomCovariance field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("base_config", "topic", "xy_threshold", "yaw_threshold", "timeout")
    # @brief Original base_config: clearpath_safety_msgs/WatchdogConfigCommon; shape scalar.
    # @brief Original topic: string; shape scalar.
    # @brief Original xy_threshold: float32; shape scalar.
    # @brief Original yaw_threshold: float32; shape scalar.
    # @brief Original timeout: float32; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_16d77772c5fed2351e0d79f6ab3d2e80bd2ac3c8d96fa16234d6148baa66c813",
        "minimum": 33,
        "maximum": 1449,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "base_config",
                "type": "clearpath_safety_msgs/WatchdogConfigCommon",
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
                "element_minimum": 17,
            },
            {
                "name": "topic",
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
                "name": "xy_threshold",
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
                "name": "yaw_threshold",
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
                "name": "timeout",
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
        "type": "clearpath_safety_msgs/WatchdogConfigOdomCovariance",
    }


REGISTRY.add(Ros1Clearpath_safety_msgsWatchdogConfigOdomCovariance)


class Ros1Clearpath_safety_msgsWatchdogConfigRtkFix(Record):
    """@brief Own every original clearpath_safety_msgs/WatchdogConfigRtkFix field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("base_config", "rtk_heading_required", "rtk_position_required", "timeout", "gnss_type")
    # @brief Original base_config: clearpath_safety_msgs/WatchdogConfigCommon; shape scalar.
    # @brief Original rtk_heading_required: bool; shape scalar.
    # @brief Original rtk_position_required: bool; shape scalar.
    # @brief Original timeout: float32; shape scalar.
    # @brief Original gnss_type: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_c73d2db18765570053184bef37ec0519c43d8265f73dae48a18e209577190bc2",
        "minimum": 27,
        "maximum": 1443,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "base_config",
                "type": "clearpath_safety_msgs/WatchdogConfigCommon",
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
                "element_minimum": 17,
            },
            {
                "name": "rtk_heading_required",
                "type": "bool",
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
                "name": "rtk_position_required",
                "type": "bool",
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
                "name": "timeout",
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
                "name": "gnss_type",
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
        "type": "clearpath_safety_msgs/WatchdogConfigRtkFix",
    }


REGISTRY.add(Ros1Clearpath_safety_msgsWatchdogConfigRtkFix)


class Ros1Clearpath_safety_msgsWatchdogConfigTopicData(Record):
    """@brief Own every original clearpath_safety_msgs/WatchdogConfigTopicData field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("base_config", "topic", "timeout")
    # @brief Original base_config: clearpath_safety_msgs/WatchdogConfigCommon; shape scalar.
    # @brief Original topic: string; shape scalar.
    # @brief Original timeout: float32; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_1bf0a230aef86f09014852b1be0cf0d5998d4e8a69e4630a9e387b10b470ad8f",
        "minimum": 25,
        "maximum": 1441,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "base_config",
                "type": "clearpath_safety_msgs/WatchdogConfigCommon",
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
                "element_minimum": 17,
            },
            {
                "name": "topic",
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
                "name": "timeout",
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
        "type": "clearpath_safety_msgs/WatchdogConfigTopicData",
    }


REGISTRY.add(Ros1Clearpath_safety_msgsWatchdogConfigTopicData)


class Ros1Clearpath_safety_msgsWatchdogConfigArray(Record):
    """@brief Own every original clearpath_safety_msgs/WatchdogConfigArray field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = (
        "communication_config",
        "heartbeat_config",
        "inclination_config",
        "node_status_config",
        "nodelet_status_config",
        "num_points_config",
        "odom_covariance_config",
        "rtk_fix_config",
        "topic_data_config",
    )
    # @brief Original communication_config: clearpath_safety_msgs/WatchdogConfigCommunication; shape sequence.
    # @brief Original heartbeat_config: clearpath_safety_msgs/WatchdogConfigHeartbeat; shape sequence.
    # @brief Original inclination_config: clearpath_safety_msgs/WatchdogConfigInclination; shape sequence.
    # @brief Original node_status_config: clearpath_safety_msgs/WatchdogConfigNodeStatus; shape sequence.
    # @brief Original nodelet_status_config: clearpath_safety_msgs/WatchdogConfigNodeletStatus; shape sequence.
    # @brief Original num_points_config: clearpath_safety_msgs/WatchdogConfigNumPoints; shape sequence.
    # @brief Original odom_covariance_config: clearpath_safety_msgs/WatchdogConfigOdomCovariance; shape sequence.
    # @brief Original rtk_fix_config: clearpath_safety_msgs/WatchdogConfigRtkFix; shape sequence.
    # @brief Original topic_data_config: clearpath_safety_msgs/WatchdogConfigTopicData; shape sequence.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_5395da95a24a49234ff91d9149558ae13d621524f233b286744dcc28e6a558d3",
        "minimum": 36,
        "maximum": 27558,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "communication_config",
                "type": "clearpath_safety_msgs/WatchdogConfigCommunication",
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
                "element_minimum": 33,
            },
            {
                "name": "heartbeat_config",
                "type": "clearpath_safety_msgs/WatchdogConfigHeartbeat",
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
                "element_minimum": 25,
            },
            {
                "name": "inclination_config",
                "type": "clearpath_safety_msgs/WatchdogConfigInclination",
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
                "element_minimum": 33,
            },
            {
                "name": "node_status_config",
                "type": "clearpath_safety_msgs/WatchdogConfigNodeStatus",
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
                "element_minimum": 22,
            },
            {
                "name": "nodelet_status_config",
                "type": "clearpath_safety_msgs/WatchdogConfigNodeletStatus",
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
                "element_minimum": 26,
            },
            {
                "name": "num_points_config",
                "type": "clearpath_safety_msgs/WatchdogConfigNumPoints",
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
                "element_minimum": 25,
            },
            {
                "name": "odom_covariance_config",
                "type": "clearpath_safety_msgs/WatchdogConfigOdomCovariance",
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
                "element_minimum": 33,
            },
            {
                "name": "rtk_fix_config",
                "type": "clearpath_safety_msgs/WatchdogConfigRtkFix",
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
                "element_minimum": 27,
            },
            {
                "name": "topic_data_config",
                "type": "clearpath_safety_msgs/WatchdogConfigTopicData",
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
                "element_minimum": 25,
            },
        ],
        "type": "clearpath_safety_msgs/WatchdogConfigArray",
    }


REGISTRY.add(Ros1Clearpath_safety_msgsWatchdogConfigArray)


class Ros1Clearpath_safety_msgsWatchdogStatus(Record):
    """@brief Own every original clearpath_safety_msgs/WatchdogStatus field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("name", "triggered", "trigger_message", "action")
    # @brief Original name: string; shape scalar.
    # @brief Original triggered: bool; shape scalar.
    # @brief Original trigger_message: string; shape scalar.
    # @brief Original action: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_823af4aa5da6787f2014faecb325f5c78d28f593409fc73f3237eb43ed01b5cc",
        "minimum": 13,
        "maximum": 653,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "triggered",
                "type": "bool",
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
                "name": "trigger_message",
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
                "name": "action",
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
        "type": "clearpath_safety_msgs/WatchdogStatus",
    }


REGISTRY.add(Ros1Clearpath_safety_msgsWatchdogStatus)


class Ros1Clearpath_safety_msgsWatchdogStatusArray(Record):
    """@brief Own every original clearpath_safety_msgs/WatchdogStatusArray field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("header", "statuses")
    # @brief Original header: std_msgs/Header; shape scalar.
    # @brief Original statuses: clearpath_safety_msgs/WatchdogStatus; shape sequence.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_744df181cbf598672b82290fc5bac35af5fb6c4e62b55e5afed820a7cf270f96",
        "minimum": 20,
        "maximum": 1454,
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
                "name": "statuses",
                "type": "clearpath_safety_msgs/WatchdogStatus",
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
                "element_minimum": 13,
            },
        ],
        "type": "clearpath_safety_msgs/WatchdogStatusArray",
    }


REGISTRY.add(Ros1Clearpath_safety_msgsWatchdogStatusArray)


class Ros1Husky_msgsHuskyStatus(Record):
    """@brief Own every original husky_msgs/HuskyStatus field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = (
        "header",
        "uptime",
        "ros_control_loop_freq",
        "mcu_and_user_port_current",
        "left_driver_current",
        "right_driver_current",
        "battery_voltage",
        "left_driver_voltage",
        "right_driver_voltage",
        "left_driver_temp",
        "right_driver_temp",
        "left_motor_temp",
        "right_motor_temp",
        "capacity_estimate",
        "charge_estimate",
        "timeout",
        "lockout",
        "e_stop",
        "ros_pause",
        "no_battery",
        "current_limit",
    )
    # @brief Original header: std_msgs/Header; shape scalar.
    # @brief Original uptime: uint32; shape scalar.
    # @brief Original ros_control_loop_freq: float64; shape scalar.
    # @brief Original mcu_and_user_port_current: float64; shape scalar.
    # @brief Original left_driver_current: float64; shape scalar.
    # @brief Original right_driver_current: float64; shape scalar.
    # @brief Original battery_voltage: float64; shape scalar.
    # @brief Original left_driver_voltage: float64; shape scalar.
    # @brief Original right_driver_voltage: float64; shape scalar.
    # @brief Original left_driver_temp: float64; shape scalar.
    # @brief Original right_driver_temp: float64; shape scalar.
    # @brief Original left_motor_temp: float64; shape scalar.
    # @brief Original right_motor_temp: float64; shape scalar.
    # @brief Original capacity_estimate: uint16; shape scalar.
    # @brief Original charge_estimate: float64; shape scalar.
    # @brief Original timeout: bool; shape scalar.
    # @brief Original lockout: bool; shape scalar.
    # @brief Original e_stop: bool; shape scalar.
    # @brief Original ros_pause: bool; shape scalar.
    # @brief Original no_battery: bool; shape scalar.
    # @brief Original current_limit: bool; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_4aaed6c015314bd743406086571c12760cb41e446d5248d26537e6fc22c40a86",
        "minimum": 124,
        "maximum": 252,
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
                "name": "uptime",
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
                "name": "ros_control_loop_freq",
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
                "name": "mcu_and_user_port_current",
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
                "name": "left_driver_current",
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
                "name": "right_driver_current",
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
                "name": "left_driver_voltage",
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
                "name": "right_driver_voltage",
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
                "name": "left_driver_temp",
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
                "name": "right_driver_temp",
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
                "name": "left_motor_temp",
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
                "name": "right_motor_temp",
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
                "name": "capacity_estimate",
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
                "name": "charge_estimate",
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
                "name": "timeout",
                "type": "bool",
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
                "name": "lockout",
                "type": "bool",
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
                "name": "e_stop",
                "type": "bool",
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
                "name": "ros_pause",
                "type": "bool",
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
                "name": "no_battery",
                "type": "bool",
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
                "name": "current_limit",
                "type": "bool",
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
        "type": "husky_msgs/HuskyStatus",
    }


REGISTRY.add(Ros1Husky_msgsHuskyStatus)


class Ros1Jackal_msgsDrive(Record):
    """@brief Own every original jackal_msgs/Drive field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("mode", "drivers")
    # @brief Original mode: int8; shape scalar.
    # @brief Original drivers: float32; shape array.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_a1991d124f321c1aaa7e02647dfdd7114d5c389197d621ddc8213b240b3541e6",
        "minimum": 9,
        "maximum": 9,
        "semantics": "",
        "ros_version": 1,
        "constants": {"MODE_VELOCITY": 0, "MODE_PWM": 1, "MODE_EFFORT": 2, "MODE_NONE": -1, "LEFT": 0, "RIGHT": 1},
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
        "type": "jackal_msgs/Drive",
    }


REGISTRY.add(Ros1Jackal_msgsDrive)


class Ros1Jackal_msgsDriveFeedback(Record):
    """@brief Own every original jackal_msgs/DriveFeedback field.
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
        "codec_identity": "UWVMROS1_491d1150e13f8a9985582d3d80ccaadfb11feb4686624beb32689b1ff4b096d1",
        "minimum": 25,
        "maximum": 25,
        "semantics": "",
        "ros_version": 1,
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
        "type": "jackal_msgs/DriveFeedback",
    }


REGISTRY.add(Ros1Jackal_msgsDriveFeedback)


class Ros1Jackal_msgsFeedback(Record):
    """@brief Own every original jackal_msgs/Feedback field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("header", "drivers", "pcb_temperature", "mcu_temperature", "commanded_mode", "actual_mode")
    # @brief Original header: std_msgs/Header; shape scalar.
    # @brief Original drivers: jackal_msgs/DriveFeedback; shape array.
    # @brief Original pcb_temperature: float32; shape scalar.
    # @brief Original mcu_temperature: float32; shape scalar.
    # @brief Original commanded_mode: int8; shape scalar.
    # @brief Original actual_mode: int8; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_5d574303e5854771234ad6b215d5923df4319cb597acc70ff00a6c73c27ccb89",
        "minimum": 76,
        "maximum": 204,
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
                "name": "drivers",
                "type": "jackal_msgs/DriveFeedback",
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
        "type": "jackal_msgs/Feedback",
    }


REGISTRY.add(Ros1Jackal_msgsFeedback)


class Ros1Jackal_msgsStatus(Record):
    """@brief Own every original jackal_msgs/Status field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = (
        "header",
        "hardware_id",
        "mcu_uptime",
        "connection_uptime",
        "drivers_active",
        "driver_external_stop_present",
        "driver_external_stop_stopped",
        "measured_battery",
        "measured_12v",
        "measured_5v",
        "drive_current",
        "user_current",
        "computer_current",
        "total_current",
        "total_current_peak",
        "total_power_consumed",
    )
    # @brief Original header: std_msgs/Header; shape scalar.
    # @brief Original hardware_id: string; shape scalar.
    # @brief Original mcu_uptime: duration; shape scalar.
    # @brief Original connection_uptime: duration; shape scalar.
    # @brief Original drivers_active: bool; shape scalar.
    # @brief Original driver_external_stop_present: bool; shape scalar.
    # @brief Original driver_external_stop_stopped: bool; shape scalar.
    # @brief Original measured_battery: float32; shape scalar.
    # @brief Original measured_12v: float32; shape scalar.
    # @brief Original measured_5v: float32; shape scalar.
    # @brief Original drive_current: float32; shape scalar.
    # @brief Original user_current: float32; shape scalar.
    # @brief Original computer_current: float32; shape scalar.
    # @brief Original total_current: float32; shape scalar.
    # @brief Original total_current_peak: float32; shape scalar.
    # @brief Original total_power_consumed: float64; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_e340e68eb138003c1a4f99aa0defbe651fe573681fda03dff451e1c5d73d48af",
        "minimum": 79,
        "maximum": 463,
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
                "name": "mcu_uptime",
                "type": "duration",
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
                "type": "duration",
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
                "name": "drivers_active",
                "type": "bool",
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
                "name": "driver_external_stop_present",
                "type": "bool",
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
                "name": "driver_external_stop_stopped",
                "type": "bool",
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
                "name": "measured_battery",
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
                "name": "measured_12v",
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
                "name": "measured_5v",
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
                "name": "drive_current",
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
                "name": "user_current",
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
                "name": "computer_current",
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
                "name": "total_current",
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
                "name": "total_current_peak",
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
                "name": "total_power_consumed",
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
        "type": "jackal_msgs/Status",
    }


REGISTRY.add(Ros1Jackal_msgsStatus)


class Ros1Clearpath_camera_msgsQ62AreaZoomRequest(Record):
    """@brief Own every original clearpath_camera_msgs/q62AreaZoomRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("x", "y", "zoom_factor")
    # @brief Original x: float32; shape scalar.
    # @brief Original y: float32; shape scalar.
    # @brief Original zoom_factor: float32; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_f1c8e9c75b7792b47733669fc00a61bbb2340e058450e72fcbaab9211b33362f",
        "minimum": 12,
        "maximum": 12,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
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
                "raw": False,
                "element_minimum": 4,
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "zoom_factor",
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
        "type": "clearpath_camera_msgs/q62AreaZoomRequest",
    }


REGISTRY.add(Ros1Clearpath_camera_msgsQ62AreaZoomRequest)


class Ros1Clearpath_camera_msgsQ62AreaZoomResponse(Record):
    """@brief Own every original clearpath_camera_msgs/q62AreaZoomResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("success", "message")
    # @brief Original success: bool; shape scalar.
    # @brief Original message: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_af1389573cb858990ad84dde13231fba6e758b46629c100bb8ae30fbf141ae3b",
        "minimum": 5,
        "maximum": 261,
        "semantics": "",
        "ros_version": 1,
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
        "type": "clearpath_camera_msgs/q62AreaZoomResponse",
    }


REGISTRY.add(Ros1Clearpath_camera_msgsQ62AreaZoomResponse)


class Ros1Clearpath_control_msgsSetControlModeRequest(Record):
    """@brief Own every original clearpath_control_msgs/SetControlModeRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("mode",)
    # @brief Original mode: clearpath_control_msgs/ControlMode; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_80b29d151ddf41bb49d6deffc3b119e278ad7893d3a63f976f21f86ffc21a23f",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "mode",
                "type": "clearpath_control_msgs/ControlMode",
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
        "type": "clearpath_control_msgs/SetControlModeRequest",
    }


REGISTRY.add(Ros1Clearpath_control_msgsSetControlModeRequest)


class Ros1Clearpath_control_msgsSetControlModeResponse(Record):
    """@brief Own every original clearpath_control_msgs/SetControlModeResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ()
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_9aeb21dcef1fa6b6c12300e9c93cb7859090a5a96e58c9d2dd6ed00af3049734",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [],
        "type": "clearpath_control_msgs/SetControlModeResponse",
    }


REGISTRY.add(Ros1Clearpath_control_msgsSetControlModeResponse)


class Ros1Clearpath_dock_msgsAddDockRequest(Record):
    """@brief Own every original clearpath_dock_msgs/AddDockRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("dock",)
    # @brief Original dock: clearpath_dock_msgs/DockInfo; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_d779d320a6f98a81388a91a74c0199608b11f794ded24f3863a42b38b9a2d340",
        "minimum": 52,
        "maximum": 1204,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "dock",
                "type": "clearpath_dock_msgs/DockInfo",
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
                "element_minimum": 52,
            }
        ],
        "type": "clearpath_dock_msgs/AddDockRequest",
    }


REGISTRY.add(Ros1Clearpath_dock_msgsAddDockRequest)


class Ros1Clearpath_dock_msgsAddDockResponse(Record):
    """@brief Own every original clearpath_dock_msgs/AddDockResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("success", "message")
    # @brief Original success: bool; shape scalar.
    # @brief Original message: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_ba1e0ca5cef0dbfbc42d0a22fc241f044fd90ad8d5fff3f8b94be57dae26d08f",
        "minimum": 5,
        "maximum": 261,
        "semantics": "",
        "ros_version": 1,
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
        "type": "clearpath_dock_msgs/AddDockResponse",
    }


REGISTRY.add(Ros1Clearpath_dock_msgsAddDockResponse)


class Ros1Clearpath_dock_msgsExportDataRequest(Record):
    """@brief Own every original clearpath_dock_msgs/ExportDataRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ()
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_5921228fb0be54a809ad2ca87d1a56293cd455f080d90800880d147617044827",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [],
        "type": "clearpath_dock_msgs/ExportDataRequest",
    }


REGISTRY.add(Ros1Clearpath_dock_msgsExportDataRequest)


class Ros1Clearpath_dock_msgsExportDataResponse(Record):
    """@brief Own every original clearpath_dock_msgs/ExportDataResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("data",)
    # @brief Original data: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_6fc247ff50ba6c24159cd8f308df22b541e86ebc56f8aa27207d5fcdfaf9cb2c",
        "minimum": 4,
        "maximum": 260,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
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
                "raw": False,
                "element_minimum": 4,
            }
        ],
        "type": "clearpath_dock_msgs/ExportDataResponse",
    }


REGISTRY.add(Ros1Clearpath_dock_msgsExportDataResponse)


class Ros1Clearpath_dock_msgsGetDockByUuidRequest(Record):
    """@brief Own every original clearpath_dock_msgs/GetDockByUuidRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("dock_uuid",)
    # @brief Original dock_uuid: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_a54abd75f8db68630e6964a3f5f7ea520f5ef37103e2ba07c44ba85f519b339c",
        "minimum": 4,
        "maximum": 260,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "dock_uuid",
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
        "type": "clearpath_dock_msgs/GetDockByUuidRequest",
    }


REGISTRY.add(Ros1Clearpath_dock_msgsGetDockByUuidRequest)


class Ros1Clearpath_dock_msgsGetDockByUuidResponse(Record):
    """@brief Own every original clearpath_dock_msgs/GetDockByUuidResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("dock_pose", "predock_pose", "info")
    # @brief Original dock_pose: geometry_msgs/Pose; shape scalar.
    # @brief Original predock_pose: geometry_msgs/Pose; shape scalar.
    # @brief Original info: clearpath_dock_msgs/DockInfo; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_e574e53eca717e5855217d0829d238a7604133fa944db368b39a2660acdeef54",
        "minimum": 164,
        "maximum": 1316,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "dock_pose",
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
                "name": "predock_pose",
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
                "name": "info",
                "type": "clearpath_dock_msgs/DockInfo",
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
                "element_minimum": 52,
            },
        ],
        "type": "clearpath_dock_msgs/GetDockByUuidResponse",
    }


REGISTRY.add(Ros1Clearpath_dock_msgsGetDockByUuidResponse)


class Ros1Clearpath_dock_msgsImportDataRequest(Record):
    """@brief Own every original clearpath_dock_msgs/ImportDataRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("data",)
    # @brief Original data: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_a9ffc12e91eac79296a09b8a795b665e0bb176380d9ec48b598c2bffde5ad9ae",
        "minimum": 4,
        "maximum": 260,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
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
                "raw": False,
                "element_minimum": 4,
            }
        ],
        "type": "clearpath_dock_msgs/ImportDataRequest",
    }


REGISTRY.add(Ros1Clearpath_dock_msgsImportDataRequest)


class Ros1Clearpath_dock_msgsImportDataResponse(Record):
    """@brief Own every original clearpath_dock_msgs/ImportDataResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("docks",)
    # @brief Original docks: clearpath_dock_msgs/DockInfo; shape sequence.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_582614b533e6d2f79eb08cdd1f8f7786a98428d13ca197c967b87a169f847e5d",
        "minimum": 4,
        "maximum": 2412,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "docks",
                "type": "clearpath_dock_msgs/DockInfo",
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
                "element_minimum": 52,
            }
        ],
        "type": "clearpath_dock_msgs/ImportDataResponse",
    }


REGISTRY.add(Ros1Clearpath_dock_msgsImportDataResponse)


class Ros1Clearpath_dock_msgsRemoveDockRequest(Record):
    """@brief Own every original clearpath_dock_msgs/RemoveDockRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("uuid", "name")
    # @brief Original uuid: string; shape scalar.
    # @brief Original name: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_eac82f7b602d69a732174a7a43c45550e91e299973d0d6de9a8d5a58d261058e",
        "minimum": 8,
        "maximum": 392,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "uuid",
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
                "raw": False,
                "element_minimum": 4,
            },
        ],
        "type": "clearpath_dock_msgs/RemoveDockRequest",
    }


REGISTRY.add(Ros1Clearpath_dock_msgsRemoveDockRequest)


class Ros1Clearpath_dock_msgsRemoveDockResponse(Record):
    """@brief Own every original clearpath_dock_msgs/RemoveDockResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("success", "message")
    # @brief Original success: bool; shape scalar.
    # @brief Original message: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_64707a9a3b2ad309850d39b89a8ae0f0f26a5f823dc142f2ee3e4ccb4769574f",
        "minimum": 5,
        "maximum": 261,
        "semantics": "",
        "ros_version": 1,
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
        "type": "clearpath_dock_msgs/RemoveDockResponse",
    }


REGISTRY.add(Ros1Clearpath_dock_msgsRemoveDockResponse)


class Ros1Clearpath_dock_msgsSetDockLocationByIdRequest(Record):
    """@brief Own every original clearpath_dock_msgs/SetDockLocationByIdRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("uuid",)
    # @brief Original uuid: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_581419b14cf665be4a9d3dda8ba2c4233ebf084576d8c9a659158c3dc63d3c6b",
        "minimum": 4,
        "maximum": 260,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "uuid",
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
        "type": "clearpath_dock_msgs/SetDockLocationByIdRequest",
    }


REGISTRY.add(Ros1Clearpath_dock_msgsSetDockLocationByIdRequest)


class Ros1Clearpath_dock_msgsSetDockLocationByIdResponse(Record):
    """@brief Own every original clearpath_dock_msgs/SetDockLocationByIdResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("success", "message")
    # @brief Original success: bool; shape scalar.
    # @brief Original message: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_c3a384f22b47a30e4ca35aff300960108f5feced16af4bffeee342fcd3b07b12",
        "minimum": 5,
        "maximum": 261,
        "semantics": "",
        "ros_version": 1,
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
        "type": "clearpath_dock_msgs/SetDockLocationByIdResponse",
    }


REGISTRY.add(Ros1Clearpath_dock_msgsSetDockLocationByIdResponse)


class Ros1Clearpath_dock_msgsSetDockLocationByNameRequest(Record):
    """@brief Own every original clearpath_dock_msgs/SetDockLocationByNameRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("name",)
    # @brief Original name: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_4751614c464a74f577b3da7c8224def643d79dfcdfdb250deb6aa4dd5ffd3773",
        "minimum": 4,
        "maximum": 132,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
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
                "raw": False,
                "element_minimum": 4,
            }
        ],
        "type": "clearpath_dock_msgs/SetDockLocationByNameRequest",
    }


REGISTRY.add(Ros1Clearpath_dock_msgsSetDockLocationByNameRequest)


class Ros1Clearpath_dock_msgsSetDockLocationByNameResponse(Record):
    """@brief Own every original clearpath_dock_msgs/SetDockLocationByNameResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("success", "message")
    # @brief Original success: bool; shape scalar.
    # @brief Original message: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_596351bd90396d0cfd1f195b82dcae64edc481f8e9fba25dc9548942df2aca6e",
        "minimum": 5,
        "maximum": 261,
        "semantics": "",
        "ros_version": 1,
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
        "type": "clearpath_dock_msgs/SetDockLocationByNameResponse",
    }


REGISTRY.add(Ros1Clearpath_dock_msgsSetDockLocationByNameResponse)


class Ros1Clearpath_localization_msgsConvertCartesianToLatLonRequest(Record):
    """@brief Own every original clearpath_localization_msgs/ConvertCartesianToLatLonRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("pose",)
    # @brief Original pose: geometry_msgs/PoseStamped; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_c2cd021cd86fca2e45b47022987f7de44d14d010abf5fcf31c326310abd19305",
        "minimum": 72,
        "maximum": 200,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "pose",
                "type": "geometry_msgs/PoseStamped",
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
                "element_minimum": 72,
            }
        ],
        "type": "clearpath_localization_msgs/ConvertCartesianToLatLonRequest",
    }


REGISTRY.add(Ros1Clearpath_localization_msgsConvertCartesianToLatLonRequest)


class Ros1Clearpath_localization_msgsConvertCartesianToLatLonResponse(Record):
    """@brief Own every original clearpath_localization_msgs/ConvertCartesianToLatLonResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("msg",)
    # @brief Original msg: sensor_msgs/NavSatFix; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_4de91da28a53ef701e8d063d74fb527d296118d5b7bb9255ee027057f7f35312",
        "minimum": 116,
        "maximum": 244,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "msg",
                "type": "sensor_msgs/NavSatFix",
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
                "element_minimum": 116,
            }
        ],
        "type": "clearpath_localization_msgs/ConvertCartesianToLatLonResponse",
    }


REGISTRY.add(Ros1Clearpath_localization_msgsConvertCartesianToLatLonResponse)


class Ros1Clearpath_localization_msgsConvertCartesianToLatLonArrayRequest(Record):
    """@brief Own every original clearpath_localization_msgs/ConvertCartesianToLatLonArrayRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("pose",)
    # @brief Original pose: geometry_msgs/PoseStamped; shape sequence.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_03e1cf82239cc5336b5b7b54c69c267afc70318c1e221ef30913f9add2a0aa70",
        "minimum": 4,
        "maximum": 404,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "pose",
                "type": "geometry_msgs/PoseStamped",
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
                "element_minimum": 72,
            }
        ],
        "type": "clearpath_localization_msgs/ConvertCartesianToLatLonArrayRequest",
    }


REGISTRY.add(Ros1Clearpath_localization_msgsConvertCartesianToLatLonArrayRequest)


class Ros1Clearpath_localization_msgsConvertCartesianToLatLonArrayResponse(Record):
    """@brief Own every original clearpath_localization_msgs/ConvertCartesianToLatLonArrayResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("msg",)
    # @brief Original msg: sensor_msgs/NavSatFix; shape sequence.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_403b1732b1772db7eee605e8e7560f923756d1d43c9ed036705455bd0f33498b",
        "minimum": 4,
        "maximum": 492,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "msg",
                "type": "sensor_msgs/NavSatFix",
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
                "element_minimum": 116,
            }
        ],
        "type": "clearpath_localization_msgs/ConvertCartesianToLatLonArrayResponse",
    }


REGISTRY.add(Ros1Clearpath_localization_msgsConvertCartesianToLatLonArrayResponse)


class Ros1Clearpath_localization_msgsConvertLatLonToCartesianRequest(Record):
    """@brief Own every original clearpath_localization_msgs/ConvertLatLonToCartesianRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("msg",)
    # @brief Original msg: sensor_msgs/NavSatFix; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_e1aed3afdc81e8fb0a2539f2b46971fe70f67bafaf6660dcc96e575bcb92d95b",
        "minimum": 116,
        "maximum": 244,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "msg",
                "type": "sensor_msgs/NavSatFix",
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
                "element_minimum": 116,
            }
        ],
        "type": "clearpath_localization_msgs/ConvertLatLonToCartesianRequest",
    }


REGISTRY.add(Ros1Clearpath_localization_msgsConvertLatLonToCartesianRequest)


class Ros1Clearpath_localization_msgsConvertLatLonToCartesianResponse(Record):
    """@brief Own every original clearpath_localization_msgs/ConvertLatLonToCartesianResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("pose",)
    # @brief Original pose: geometry_msgs/PoseStamped; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_252d8d183faa2f20cfa6b10d35deeee44a2c2b2ae04ef01e20e556426a63ce76",
        "minimum": 72,
        "maximum": 200,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "pose",
                "type": "geometry_msgs/PoseStamped",
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
                "element_minimum": 72,
            }
        ],
        "type": "clearpath_localization_msgs/ConvertLatLonToCartesianResponse",
    }


REGISTRY.add(Ros1Clearpath_localization_msgsConvertLatLonToCartesianResponse)


class Ros1Clearpath_localization_msgsConvertLatLonToCartesianArrayRequest(Record):
    """@brief Own every original clearpath_localization_msgs/ConvertLatLonToCartesianArrayRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("msg",)
    # @brief Original msg: sensor_msgs/NavSatFix; shape sequence.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_20251e11541b312f114d6a6c0c007086369ed272952a4144e459af9d37472e9a",
        "minimum": 4,
        "maximum": 492,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "msg",
                "type": "sensor_msgs/NavSatFix",
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
                "element_minimum": 116,
            }
        ],
        "type": "clearpath_localization_msgs/ConvertLatLonToCartesianArrayRequest",
    }


REGISTRY.add(Ros1Clearpath_localization_msgsConvertLatLonToCartesianArrayRequest)


class Ros1Clearpath_localization_msgsConvertLatLonToCartesianArrayResponse(Record):
    """@brief Own every original clearpath_localization_msgs/ConvertLatLonToCartesianArrayResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("pose",)
    # @brief Original pose: geometry_msgs/PoseStamped; shape sequence.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_b2b9af859bba03c260b29eea8953b0a1c232e8c482353188a19db61a40480ae3",
        "minimum": 4,
        "maximum": 404,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "pose",
                "type": "geometry_msgs/PoseStamped",
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
                "element_minimum": 72,
            }
        ],
        "type": "clearpath_localization_msgs/ConvertLatLonToCartesianArrayResponse",
    }


REGISTRY.add(Ros1Clearpath_localization_msgsConvertLatLonToCartesianArrayResponse)


class Ros1Clearpath_localization_msgsResetLocalizationRequest(Record):
    """@brief Own every original clearpath_localization_msgs/ResetLocalizationRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("require_gnss", "gnss_samples")
    # @brief Original require_gnss: bool; shape scalar.
    # @brief Original gnss_samples: uint32; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_22fbc4612b0b68bd20e0018476f5ed22276b22cc677fbfdb7645f6e242a8c707",
        "minimum": 5,
        "maximum": 5,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "require_gnss",
                "type": "bool",
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
                "name": "gnss_samples",
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
        "type": "clearpath_localization_msgs/ResetLocalizationRequest",
    }


REGISTRY.add(Ros1Clearpath_localization_msgsResetLocalizationRequest)


class Ros1Clearpath_localization_msgsResetLocalizationResponse(Record):
    """@brief Own every original clearpath_localization_msgs/ResetLocalizationResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("success",)
    # @brief Original success: bool; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_6c613160101b7598e26b7243f7e756c3f55aecad15725e5d68f64540ef5f28ab",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "ros_version": 1,
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
            }
        ],
        "type": "clearpath_localization_msgs/ResetLocalizationResponse",
    }


REGISTRY.add(Ros1Clearpath_localization_msgsResetLocalizationResponse)


class Ros1Clearpath_localization_msgsSetDatumRequest(Record):
    """@brief Own every original clearpath_localization_msgs/SetDatumRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("lat", "lon")
    # @brief Original lat: float32; shape scalar.
    # @brief Original lon: float32; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_c1e4818a01522e1c73da13bf605db0464c245908182f728b016d436fdf4a6574",
        "minimum": 8,
        "maximum": 8,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "lat",
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
                "name": "lon",
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
        "type": "clearpath_localization_msgs/SetDatumRequest",
    }


REGISTRY.add(Ros1Clearpath_localization_msgsSetDatumRequest)


class Ros1Clearpath_localization_msgsSetDatumResponse(Record):
    """@brief Own every original clearpath_localization_msgs/SetDatumResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("success",)
    # @brief Original success: bool; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_db90d1e0168fb29d9563692c1b5d86c1a30b2cf4bb1186b370ed177842acc6f2",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "ros_version": 1,
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
            }
        ],
        "type": "clearpath_localization_msgs/SetDatumResponse",
    }


REGISTRY.add(Ros1Clearpath_localization_msgsSetDatumResponse)


class Ros1Clearpath_logger_msgsDeleteLogRequest(Record):
    """@brief Own every original clearpath_logger_msgs/DeleteLogRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("uuid", "delete_media", "purge_record")
    # @brief Original uuid: string; shape scalar.
    # @brief Original delete_media: bool; shape scalar.
    # @brief Original purge_record: bool; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_b54559708072a689b0944885be1d6627b37bbee14845982890968cb51be523da",
        "minimum": 6,
        "maximum": 262,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "uuid",
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
                "name": "delete_media",
                "type": "bool",
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
                "name": "purge_record",
                "type": "bool",
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
        "type": "clearpath_logger_msgs/DeleteLogRequest",
    }


REGISTRY.add(Ros1Clearpath_logger_msgsDeleteLogRequest)


class Ros1Clearpath_logger_msgsDeleteLogResponse(Record):
    """@brief Own every original clearpath_logger_msgs/DeleteLogResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("success",)
    # @brief Original success: bool; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_d78cf7d455fda53e3ab5882e1990e75da7f93546f9e59e6e3b2325c738cabc49",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "ros_version": 1,
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
            }
        ],
        "type": "clearpath_logger_msgs/DeleteLogResponse",
    }


REGISTRY.add(Ros1Clearpath_logger_msgsDeleteLogResponse)


class Ros1Clearpath_logger_msgsDownloadLogRequest(Record):
    """@brief Own every original clearpath_logger_msgs/DownloadLogRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("log_uuid",)
    # @brief Original log_uuid: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_92e66dfc586d2444e0314d6eb77604c23354c0f1922b50f88b84d970217d5e64",
        "minimum": 4,
        "maximum": 260,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "log_uuid",
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
        "type": "clearpath_logger_msgs/DownloadLogRequest",
    }


REGISTRY.add(Ros1Clearpath_logger_msgsDownloadLogRequest)


class Ros1Clearpath_logger_msgsDownloadLogResponse(Record):
    """@brief Own every original clearpath_logger_msgs/DownloadLogResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("path", "media_missing")
    # @brief Original path: string; shape scalar.
    # @brief Original media_missing: bool; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_02df348a428fed4659fff462c547d41fa0aaa1daa0101a2eee25d0634924bcf8",
        "minimum": 5,
        "maximum": 261,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "path",
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
                "name": "media_missing",
                "type": "bool",
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
        "type": "clearpath_logger_msgs/DownloadLogResponse",
    }


REGISTRY.add(Ros1Clearpath_logger_msgsDownloadLogResponse)


class Ros1Clearpath_logger_msgsGetAllLogsRequest(Record):
    """@brief Own every original clearpath_logger_msgs/GetAllLogsRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ()
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_68d786f935d2fd1912ac01f0196841b491f5c6d1b6e319ab22bdca371993fbb6",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [],
        "type": "clearpath_logger_msgs/GetAllLogsRequest",
    }


REGISTRY.add(Ros1Clearpath_logger_msgsGetAllLogsRequest)


class Ros1Clearpath_logger_msgsGetAllLogsResponse(Record):
    """@brief Own every original clearpath_logger_msgs/GetAllLogsResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("logs",)
    # @brief Original logs: clearpath_logger_msgs/EventLog; shape sequence.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_3c4c4948dd5425a9ca6a1042f07aa926138e21ce73c01ead9fe7471f27690149",
        "minimum": 4,
        "maximum": 14132,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "logs",
                "type": "clearpath_logger_msgs/EventLog",
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
                "element_minimum": 44,
            }
        ],
        "type": "clearpath_logger_msgs/GetAllLogsResponse",
    }


REGISTRY.add(Ros1Clearpath_logger_msgsGetAllLogsResponse)


class Ros1Clearpath_logger_msgsRecordCustomEventRequest(Record):
    """@brief Own every original clearpath_logger_msgs/RecordCustomEventRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("custom_fields_json", "tags", "frame_id")
    # @brief Original custom_fields_json: string; shape scalar.
    # @brief Original tags: string; shape sequence.
    # @brief Original frame_id: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_63b69b7bad4a34c168013248ed6c6e7dede8c588750a66d78e174f13ed0f89c5",
        "minimum": 12,
        "maximum": 916,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "custom_fields_json",
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
                "name": "tags",
                "type": "string",
                "array": "sequence",
                "count": 2,
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
        "type": "clearpath_logger_msgs/RecordCustomEventRequest",
    }


REGISTRY.add(Ros1Clearpath_logger_msgsRecordCustomEventRequest)


class Ros1Clearpath_logger_msgsRecordCustomEventResponse(Record):
    """@brief Own every original clearpath_logger_msgs/RecordCustomEventResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("event",)
    # @brief Original event: clearpath_logger_msgs/Event; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_2c722c562ef52b0eea7c7888b494cc98bb79947cde164074b4cbed645caa93cd",
        "minimum": 878,
        "maximum": 3190,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "event",
                "type": "clearpath_logger_msgs/Event",
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
                "element_minimum": 878,
            }
        ],
        "type": "clearpath_logger_msgs/RecordCustomEventResponse",
    }


REGISTRY.add(Ros1Clearpath_logger_msgsRecordCustomEventResponse)


class Ros1Clearpath_logger_msgsRecordErrorEventRequest(Record):
    """@brief Own every original clearpath_logger_msgs/RecordErrorEventRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("error_code", "error_msg", "error_component")
    # @brief Original error_code: int32; shape scalar.
    # @brief Original error_msg: string; shape scalar.
    # @brief Original error_component: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_a9cdf939aa39c10e714f29245790b1ec112d2e0ee5ec7629ee81df1effbfbc78",
        "minimum": 12,
        "maximum": 524,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "error_msg",
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
                "name": "error_component",
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
        "type": "clearpath_logger_msgs/RecordErrorEventRequest",
    }


REGISTRY.add(Ros1Clearpath_logger_msgsRecordErrorEventRequest)


class Ros1Clearpath_logger_msgsRecordErrorEventResponse(Record):
    """@brief Own every original clearpath_logger_msgs/RecordErrorEventResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("event",)
    # @brief Original event: clearpath_logger_msgs/Event; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_d8134e572a44c305c69f2ae1da4f37a6d9920cd762bbe9a90dc15e9ef7981b54",
        "minimum": 878,
        "maximum": 3190,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "event",
                "type": "clearpath_logger_msgs/Event",
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
                "element_minimum": 878,
            }
        ],
        "type": "clearpath_logger_msgs/RecordErrorEventResponse",
    }


REGISTRY.add(Ros1Clearpath_logger_msgsRecordErrorEventResponse)


class Ros1Clearpath_logger_msgsRecordEventRequest(Record):
    """@brief Own every original clearpath_logger_msgs/RecordEventRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("event",)
    # @brief Original event: clearpath_logger_msgs/Event; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_05f725bbe2f4fbd2976bf766a0e60e6a5566326b27dd09f774a096c0864f677e",
        "minimum": 878,
        "maximum": 3190,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "event",
                "type": "clearpath_logger_msgs/Event",
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
                "element_minimum": 878,
            }
        ],
        "type": "clearpath_logger_msgs/RecordEventRequest",
    }


REGISTRY.add(Ros1Clearpath_logger_msgsRecordEventRequest)


class Ros1Clearpath_logger_msgsRecordEventResponse(Record):
    """@brief Own every original clearpath_logger_msgs/RecordEventResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("event",)
    # @brief Original event: clearpath_logger_msgs/Event; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_5b1e7fb4032c38c3b4a7ab8477019fc0290c643e9f1cff449d007d33c9a22961",
        "minimum": 878,
        "maximum": 3190,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "event",
                "type": "clearpath_logger_msgs/Event",
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
                "element_minimum": 878,
            }
        ],
        "type": "clearpath_logger_msgs/RecordEventResponse",
    }


REGISTRY.add(Ros1Clearpath_logger_msgsRecordEventResponse)


class Ros1Clearpath_logger_msgsRecordLocationEventRequest(Record):
    """@brief Own every original clearpath_logger_msgs/RecordLocationEventRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("latitude", "longitude", "heading", "velocity", "odometry", "tags")
    # @brief Original latitude: float64; shape scalar.
    # @brief Original longitude: float64; shape scalar.
    # @brief Original heading: float64; shape scalar.
    # @brief Original velocity: geometry_msgs/Twist; shape scalar.
    # @brief Original odometry: nav_msgs/Odometry; shape scalar.
    # @brief Original tags: string; shape sequence.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_066b7fbb43be3ddb476c6542478e70c253dad5bb6930d5b757f2e578a9a8e884",
        "minimum": 776,
        "maximum": 1680,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "latitude",
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
                "name": "longitude",
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
                "name": "heading",
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
                "name": "velocity",
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
                "name": "odometry",
                "type": "nav_msgs/Odometry",
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
                "element_minimum": 700,
            },
            {
                "name": "tags",
                "type": "string",
                "array": "sequence",
                "count": 2,
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
        "type": "clearpath_logger_msgs/RecordLocationEventRequest",
    }


REGISTRY.add(Ros1Clearpath_logger_msgsRecordLocationEventRequest)


class Ros1Clearpath_logger_msgsRecordLocationEventResponse(Record):
    """@brief Own every original clearpath_logger_msgs/RecordLocationEventResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("event",)
    # @brief Original event: clearpath_logger_msgs/Event; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_707fdc02afa7c63796a952af43697c371d530d5976661c42e1867e3fe5c75e3d",
        "minimum": 878,
        "maximum": 3190,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "event",
                "type": "clearpath_logger_msgs/Event",
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
                "element_minimum": 878,
            }
        ],
        "type": "clearpath_logger_msgs/RecordLocationEventResponse",
    }


REGISTRY.add(Ros1Clearpath_logger_msgsRecordLocationEventResponse)


class Ros1Clearpath_logger_msgsRecordMediaEventRequest(Record):
    """@brief Own every original clearpath_logger_msgs/RecordMediaEventRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("media_path", "mime_type", "frame_id")
    # @brief Original media_path: string; shape scalar.
    # @brief Original mime_type: string; shape scalar.
    # @brief Original frame_id: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_df1b4ba70aa6a687d2be8935aaed1ccadade1ac77a148db72a563a74b300bda5",
        "minimum": 12,
        "maximum": 652,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "media_path",
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
                "name": "mime_type",
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
        "type": "clearpath_logger_msgs/RecordMediaEventRequest",
    }


REGISTRY.add(Ros1Clearpath_logger_msgsRecordMediaEventRequest)


class Ros1Clearpath_logger_msgsRecordMediaEventResponse(Record):
    """@brief Own every original clearpath_logger_msgs/RecordMediaEventResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("event",)
    # @brief Original event: clearpath_logger_msgs/Event; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_7f8ccc45f90b3c2df031bb6aef4c00e7e35ddf620bbc899a9c229d453eb275ae",
        "minimum": 878,
        "maximum": 3190,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "event",
                "type": "clearpath_logger_msgs/Event",
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
                "element_minimum": 878,
            }
        ],
        "type": "clearpath_logger_msgs/RecordMediaEventResponse",
    }


REGISTRY.add(Ros1Clearpath_logger_msgsRecordMediaEventResponse)


class Ros1Clearpath_logger_msgsRecordPowerEventRequest(Record):
    """@brief Own every original clearpath_logger_msgs/RecordPowerEventRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("battery_percent", "charging")
    # @brief Original battery_percent: float32; shape scalar.
    # @brief Original charging: bool; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_82706bac64cc379346fc004d2c86b8d466e976a3bb676dea2e8ae7ed1947d974",
        "minimum": 5,
        "maximum": 5,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "battery_percent",
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
                "name": "charging",
                "type": "bool",
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
        "type": "clearpath_logger_msgs/RecordPowerEventRequest",
    }


REGISTRY.add(Ros1Clearpath_logger_msgsRecordPowerEventRequest)


class Ros1Clearpath_logger_msgsRecordPowerEventResponse(Record):
    """@brief Own every original clearpath_logger_msgs/RecordPowerEventResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("event",)
    # @brief Original event: clearpath_logger_msgs/Event; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_4d15a62946c8e9941fc9760d43e8eebcc7e9125561e01e646c6fb6edf7aaf866",
        "minimum": 878,
        "maximum": 3190,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "event",
                "type": "clearpath_logger_msgs/Event",
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
                "element_minimum": 878,
            }
        ],
        "type": "clearpath_logger_msgs/RecordPowerEventResponse",
    }


REGISTRY.add(Ros1Clearpath_logger_msgsRecordPowerEventResponse)


class Ros1Clearpath_logger_msgsStartRecordingRequest(Record):
    """@brief Own every original clearpath_logger_msgs/StartRecordingRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("name",)
    # @brief Original name: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_eb42cefac21b32710fd09c9fb1629f55a334eabc10cc958e0d98911e786ca42f",
        "minimum": 4,
        "maximum": 132,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
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
                "raw": False,
                "element_minimum": 4,
            }
        ],
        "type": "clearpath_logger_msgs/StartRecordingRequest",
    }


REGISTRY.add(Ros1Clearpath_logger_msgsStartRecordingRequest)


class Ros1Clearpath_logger_msgsStartRecordingResponse(Record):
    """@brief Own every original clearpath_logger_msgs/StartRecordingResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("log",)
    # @brief Original log: clearpath_logger_msgs/EventLog; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_2220536f6a937fb7bb198bfdbd288855bf294a4b3404e702349f9ff83428af31",
        "minimum": 44,
        "maximum": 7064,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "log",
                "type": "clearpath_logger_msgs/EventLog",
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
                "element_minimum": 44,
            }
        ],
        "type": "clearpath_logger_msgs/StartRecordingResponse",
    }


REGISTRY.add(Ros1Clearpath_logger_msgsStartRecordingResponse)


class Ros1Clearpath_logger_msgsStopRecordingRequest(Record):
    """@brief Own every original clearpath_logger_msgs/StopRecordingRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("custom_fields_json",)
    # @brief Original custom_fields_json: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_ece885864f4cc93062aec96411096358e1d2c4885f30431b762b4732d3ff44b5",
        "minimum": 4,
        "maximum": 260,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "custom_fields_json",
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
        "type": "clearpath_logger_msgs/StopRecordingRequest",
    }


REGISTRY.add(Ros1Clearpath_logger_msgsStopRecordingRequest)


class Ros1Clearpath_logger_msgsStopRecordingResponse(Record):
    """@brief Own every original clearpath_logger_msgs/StopRecordingResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("log",)
    # @brief Original log: clearpath_logger_msgs/EventLog; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_bc3f620603442ee53fa1b62618eb73ca1fa68347be928b6b38acc65d63295eca",
        "minimum": 44,
        "maximum": 7064,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "log",
                "type": "clearpath_logger_msgs/EventLog",
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
                "element_minimum": 44,
            }
        ],
        "type": "clearpath_logger_msgs/StopRecordingResponse",
    }


REGISTRY.add(Ros1Clearpath_logger_msgsStopRecordingResponse)


class Ros1Clearpath_mission_manager_msgsAddNetworkEdgeRequest(Record):
    """@brief Own every original clearpath_mission_manager_msgs/AddNetworkEdgeRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("map_id", "start_point_id", "end_point_id", "radius", "speed_limit", "cost_factor", "symmetrical")
    # @brief Original map_id: string; shape scalar.
    # @brief Original start_point_id: string; shape scalar.
    # @brief Original end_point_id: string; shape scalar.
    # @brief Original radius: float32; shape scalar.
    # @brief Original speed_limit: float32; shape scalar.
    # @brief Original cost_factor: float32; shape scalar.
    # @brief Original symmetrical: bool; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_c2ad8aa1d5988fb0397e85e15aa37211b7041a2ecdc67e5c89b53a38431e56f3",
        "minimum": 25,
        "maximum": 793,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "map_id",
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
                "name": "start_point_id",
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
                "name": "end_point_id",
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
                "name": "radius",
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
                "name": "speed_limit",
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
                "name": "cost_factor",
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
                "name": "symmetrical",
                "type": "bool",
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
        "type": "clearpath_mission_manager_msgs/AddNetworkEdgeRequest",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsAddNetworkEdgeRequest)


class Ros1Clearpath_mission_manager_msgsAddNetworkEdgeResponse(Record):
    """@brief Own every original clearpath_mission_manager_msgs/AddNetworkEdgeResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("edges",)
    # @brief Original edges: clearpath_navigation_msgs/NetworkEdge; shape sequence.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_2e14500e273e2a953389948d0c7533b096e7559f41d17e518f9eec6e93b7df4f",
        "minimum": 4,
        "maximum": 1652,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "edges",
                "type": "clearpath_navigation_msgs/NetworkEdge",
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
                "element_minimum": 56,
            }
        ],
        "type": "clearpath_mission_manager_msgs/AddNetworkEdgeResponse",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsAddNetworkEdgeResponse)


class Ros1Clearpath_mission_manager_msgsAddNetworkPathRequest(Record):
    """@brief Own every original clearpath_mission_manager_msgs/AddNetworkPathRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("latitudes", "longitudes", "map_id", "symmetrical")
    # @brief Original latitudes: float64; shape sequence.
    # @brief Original longitudes: float64; shape sequence.
    # @brief Original map_id: string; shape scalar.
    # @brief Original symmetrical: bool; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_0c8717a0058d4fbdf9927579f6bb29d84e32cadcaa811b2d3aa02464807c55d0",
        "minimum": 13,
        "maximum": 301,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "latitudes",
                "type": "float64",
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
                "element_minimum": 8,
            },
            {
                "name": "longitudes",
                "type": "float64",
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
                "element_minimum": 8,
            },
            {
                "name": "map_id",
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
                "name": "symmetrical",
                "type": "bool",
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
        "type": "clearpath_mission_manager_msgs/AddNetworkPathRequest",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsAddNetworkPathRequest)


class Ros1Clearpath_mission_manager_msgsAddNetworkPathResponse(Record):
    """@brief Own every original clearpath_mission_manager_msgs/AddNetworkPathResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("success", "message")
    # @brief Original success: bool; shape scalar.
    # @brief Original message: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_ec9794b231eb22dfd44263164562c393069793f34f603bc35181ef358f26782c",
        "minimum": 5,
        "maximum": 261,
        "semantics": "",
        "ros_version": 1,
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
        "type": "clearpath_mission_manager_msgs/AddNetworkPathResponse",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsAddNetworkPathResponse)


class Ros1Clearpath_mission_manager_msgsAddNetworkPointRequest(Record):
    """@brief Own every original clearpath_mission_manager_msgs/AddNetworkPointRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("latitude", "longitude", "map_id", "connect_from", "connect_to", "symmetrical")
    # @brief Original latitude: float64; shape scalar.
    # @brief Original longitude: float64; shape scalar.
    # @brief Original map_id: string; shape scalar.
    # @brief Original connect_from: string; shape sequence.
    # @brief Original connect_to: string; shape sequence.
    # @brief Original symmetrical: bool; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_c1eb740c2558280db5b6fbe8be5cb67ba3c1538d2e9dd19d7fb5b38df316f909",
        "minimum": 29,
        "maximum": 1325,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "latitude",
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
                "name": "longitude",
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
                "name": "map_id",
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
                "name": "connect_from",
                "type": "string",
                "array": "sequence",
                "count": 2,
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
                "name": "connect_to",
                "type": "string",
                "array": "sequence",
                "count": 2,
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
                "name": "symmetrical",
                "type": "bool",
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
        "type": "clearpath_mission_manager_msgs/AddNetworkPointRequest",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsAddNetworkPointRequest)


class Ros1Clearpath_mission_manager_msgsAddNetworkPointResponse(Record):
    """@brief Own every original clearpath_mission_manager_msgs/AddNetworkPointResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("point",)
    # @brief Original point: clearpath_navigation_msgs/NetworkPoint; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_adf7216e0cef0cf515203d17726e6c5acf46c03601cd931a4a1e59cdeca313be",
        "minimum": 20,
        "maximum": 276,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "point",
                "type": "clearpath_navigation_msgs/NetworkPoint",
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
                "element_minimum": 20,
            }
        ],
        "type": "clearpath_mission_manager_msgs/AddNetworkPointResponse",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsAddNetworkPointResponse)


class Ros1Clearpath_mission_manager_msgsAddRemoveByIdRequest(Record):
    """@brief Own every original clearpath_mission_manager_msgs/AddRemoveByIdRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("uuid", "parent_uuid", "position")
    # @brief Original uuid: string; shape scalar.
    # @brief Original parent_uuid: string; shape scalar.
    # @brief Original position: int32; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_3eb2a9e36f226c731491dcb174d1af9bf5bcfe131206dcea36d0d2b42cfc028e",
        "minimum": 12,
        "maximum": 524,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "uuid",
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
                "name": "parent_uuid",
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
                "name": "position",
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
        ],
        "type": "clearpath_mission_manager_msgs/AddRemoveByIdRequest",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsAddRemoveByIdRequest)


class Ros1Clearpath_mission_manager_msgsAddRemoveByIdResponse(Record):
    """@brief Own every original clearpath_mission_manager_msgs/AddRemoveByIdResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("ok",)
    # @brief Original ok: bool; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_a81b57d98295b7ad37f1bcf070b016e40ea73d802ae5c113822b8341891c12ea",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "ok",
                "type": "bool",
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
        "type": "clearpath_mission_manager_msgs/AddRemoveByIdResponse",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsAddRemoveByIdResponse)


class Ros1Clearpath_mission_manager_msgsAddRemoveTagRequest(Record):
    """@brief Own every original clearpath_mission_manager_msgs/AddRemoveTagRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("uuid", "tag")
    # @brief Original uuid: string; shape scalar.
    # @brief Original tag: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_23ac2c4784aae50c56d78d68ee369ee365113dad9331c6224673b9c53576f2f6",
        "minimum": 8,
        "maximum": 520,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "uuid",
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
                "name": "tag",
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
        "type": "clearpath_mission_manager_msgs/AddRemoveTagRequest",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsAddRemoveTagRequest)


class Ros1Clearpath_mission_manager_msgsAddRemoveTagResponse(Record):
    """@brief Own every original clearpath_mission_manager_msgs/AddRemoveTagResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("tags",)
    # @brief Original tags: string; shape sequence.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_f2514cde45093626fc3ec068327521d1e077279df21ca36f3812abc6bcd316c6",
        "minimum": 4,
        "maximum": 524,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "tags",
                "type": "string",
                "array": "sequence",
                "count": 2,
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
        "type": "clearpath_mission_manager_msgs/AddRemoveTagResponse",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsAddRemoveTagResponse)


class Ros1Clearpath_mission_manager_msgsCloneMissionRequest(Record):
    """@brief Own every original clearpath_mission_manager_msgs/CloneMissionRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("uuid", "new_name", "reverse")
    # @brief Original uuid: string; shape scalar.
    # @brief Original new_name: string; shape scalar.
    # @brief Original reverse: bool; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_7c3d4053b272033a901c1fbe5c7eecaf16cd7bd7e28e2d5c6369183a7b6d62d4",
        "minimum": 9,
        "maximum": 521,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "uuid",
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
                "name": "new_name",
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
                "name": "reverse",
                "type": "bool",
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
        "type": "clearpath_mission_manager_msgs/CloneMissionRequest",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsCloneMissionRequest)


class Ros1Clearpath_mission_manager_msgsCloneMissionResponse(Record):
    """@brief Own every original clearpath_mission_manager_msgs/CloneMissionResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("mission",)
    # @brief Original mission: clearpath_navigation_msgs/Mission; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_88894721fb1457e6aafd8b131c6a3b26af8d96ee27a8224e3bb1277bc0f987cc",
        "minimum": 40,
        "maximum": 13336,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "mission",
                "type": "clearpath_navigation_msgs/Mission",
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
                "element_minimum": 40,
            }
        ],
        "type": "clearpath_mission_manager_msgs/CloneMissionResponse",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsCloneMissionResponse)


class Ros1Clearpath_mission_manager_msgsCloneNetworkMapRequest(Record):
    """@brief Own every original clearpath_mission_manager_msgs/CloneNetworkMapRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("uuid", "new_name")
    # @brief Original uuid: string; shape scalar.
    # @brief Original new_name: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_2f74e78c9bc6bff2eb44665cdb4b516c6fdafa209addd1a4d4f3fa3c1976a5f5",
        "minimum": 8,
        "maximum": 520,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "uuid",
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
                "name": "new_name",
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
        "type": "clearpath_mission_manager_msgs/CloneNetworkMapRequest",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsCloneNetworkMapRequest)


class Ros1Clearpath_mission_manager_msgsCloneNetworkMapResponse(Record):
    """@brief Own every original clearpath_mission_manager_msgs/CloneNetworkMapResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("map",)
    # @brief Original map: clearpath_navigation_msgs/NetworkMap; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_1143b6aaee73251732ae77f676ba29ca561a47c11d5443d56e74326689a38ffb",
        "minimum": 24,
        "maximum": 2608,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "map",
                "type": "clearpath_navigation_msgs/NetworkMap",
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
            }
        ],
        "type": "clearpath_mission_manager_msgs/CloneNetworkMapResponse",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsCloneNetworkMapResponse)


class Ros1Clearpath_mission_manager_msgsCloneNetworkMissionRequest(Record):
    """@brief Own every original clearpath_mission_manager_msgs/CloneNetworkMissionRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("uuid", "new_name", "reverse")
    # @brief Original uuid: string; shape scalar.
    # @brief Original new_name: string; shape scalar.
    # @brief Original reverse: bool; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_46048ce502c1e4aa8629826444bf77de18318f16c9398768ea75283549b802b4",
        "minimum": 9,
        "maximum": 521,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "uuid",
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
                "name": "new_name",
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
                "name": "reverse",
                "type": "bool",
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
        "type": "clearpath_mission_manager_msgs/CloneNetworkMissionRequest",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsCloneNetworkMissionRequest)


class Ros1Clearpath_mission_manager_msgsCloneNetworkMissionResponse(Record):
    """@brief Own every original clearpath_mission_manager_msgs/CloneNetworkMissionResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("mission",)
    # @brief Original mission: clearpath_navigation_msgs/NetworkMission; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_7aa5c1e17efce3523e3c751e6900a63eacea43b47b6c1e8987fce3d98462b63d",
        "minimum": 54,
        "maximum": 13606,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "mission",
                "type": "clearpath_navigation_msgs/NetworkMission",
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
                "element_minimum": 54,
            }
        ],
        "type": "clearpath_mission_manager_msgs/CloneNetworkMissionResponse",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsCloneNetworkMissionResponse)


class Ros1Clearpath_mission_manager_msgsClonePointOfInterestRequest(Record):
    """@brief Own every original clearpath_mission_manager_msgs/ClonePointOfInterestRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("uuid", "new_name")
    # @brief Original uuid: string; shape scalar.
    # @brief Original new_name: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_ffa35600ea2a044f4ef3388627f8f34323407b6dfdf314d5e68e8a997f95cc69",
        "minimum": 8,
        "maximum": 520,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "uuid",
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
                "name": "new_name",
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
        "type": "clearpath_mission_manager_msgs/ClonePointOfInterestRequest",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsClonePointOfInterestRequest)


class Ros1Clearpath_mission_manager_msgsClonePointOfInterestResponse(Record):
    """@brief Own every original clearpath_mission_manager_msgs/ClonePointOfInterestResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("result",)
    # @brief Original result: clearpath_navigation_msgs/PointOfInterest; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_97edd93b8afb8681c2c0755f0313129e0ea8bea5384235a03b3b48c39e6438d0",
        "minimum": 49,
        "maximum": 1209,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "result",
                "type": "clearpath_navigation_msgs/PointOfInterest",
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
                "element_minimum": 49,
            }
        ],
        "type": "clearpath_mission_manager_msgs/ClonePointOfInterestResponse",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsClonePointOfInterestResponse)


class Ros1Clearpath_mission_manager_msgsCreateMissionRequest(Record):
    """@brief Own every original clearpath_mission_manager_msgs/CreateMissionRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("name", "onav_config", "waypoint_ids", "on_start_ids", "on_stop_ids")
    # @brief Original name: string; shape scalar.
    # @brief Original onav_config: string; shape scalar.
    # @brief Original waypoint_ids: string; shape sequence.
    # @brief Original on_start_ids: string; shape sequence.
    # @brief Original on_stop_ids: string; shape sequence.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_caa700efafa4dbdb056e78e08af082f2f4d985f1b431b5bfb2ae019542f3925f",
        "minimum": 20,
        "maximum": 1964,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "onav_config",
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
                "name": "waypoint_ids",
                "type": "string",
                "array": "sequence",
                "count": 2,
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
                "name": "on_start_ids",
                "type": "string",
                "array": "sequence",
                "count": 2,
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
                "name": "on_stop_ids",
                "type": "string",
                "array": "sequence",
                "count": 2,
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
        "type": "clearpath_mission_manager_msgs/CreateMissionRequest",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsCreateMissionRequest)


class Ros1Clearpath_mission_manager_msgsCreateMissionResponse(Record):
    """@brief Own every original clearpath_mission_manager_msgs/CreateMissionResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("result",)
    # @brief Original result: clearpath_navigation_msgs/Mission; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_ce4a3a3cc959015bffb0a98373399a9d1063d5dee0baa4b4e685c6fde879bc01",
        "minimum": 40,
        "maximum": 13336,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "result",
                "type": "clearpath_navigation_msgs/Mission",
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
                "element_minimum": 40,
            }
        ],
        "type": "clearpath_mission_manager_msgs/CreateMissionResponse",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsCreateMissionResponse)


class Ros1Clearpath_mission_manager_msgsCreateNetworkMapRequest(Record):
    """@brief Own every original clearpath_mission_manager_msgs/CreateNetworkMapRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("name", "default_radius", "default_speed_limit", "points", "connections")
    # @brief Original name: string; shape scalar.
    # @brief Original default_radius: float32; shape scalar.
    # @brief Original default_speed_limit: float32; shape scalar.
    # @brief Original points: clearpath_navigation_msgs/NetworkPoint; shape sequence.
    # @brief Original connections: clearpath_mission_manager_msgs/NetworkEdgeReq; shape sequence.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_339dba93c2db9e3f5280805772411b26292f0587a465f95a6369828c556d9f3a",
        "minimum": 20,
        "maximum": 1756,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "default_radius",
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
                "name": "default_speed_limit",
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
                "name": "points",
                "type": "clearpath_navigation_msgs/NetworkPoint",
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
                "element_minimum": 20,
            },
            {
                "name": "connections",
                "type": "clearpath_mission_manager_msgs/NetworkEdgeReq",
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
                "element_minimum": 16,
            },
        ],
        "type": "clearpath_mission_manager_msgs/CreateNetworkMapRequest",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsCreateNetworkMapRequest)


class Ros1Clearpath_mission_manager_msgsCreateNetworkMapResponse(Record):
    """@brief Own every original clearpath_mission_manager_msgs/CreateNetworkMapResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("result",)
    # @brief Original result: clearpath_navigation_msgs/NetworkMap; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_cc887ebcf4ab3232cff47e7c47c90a3458fd83ca6c252d6942d4d7e2b9a4b5cb",
        "minimum": 24,
        "maximum": 2608,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "result",
                "type": "clearpath_navigation_msgs/NetworkMap",
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
            }
        ],
        "type": "clearpath_mission_manager_msgs/CreateNetworkMapResponse",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsCreateNetworkMapResponse)


class Ros1Clearpath_mission_manager_msgsCreateNetworkMissionRequest(Record):
    """@brief Own every original clearpath_mission_manager_msgs/CreateNetworkMissionRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = (
        "name",
        "onav_config",
        "waypoint_ids",
        "on_start_ids",
        "on_stop_ids",
        "return_to_dock_enabled",
        "return_to_dock_id",
        "return_to_dock_battery_level",
        "resume_mission_battery_level",
        "network_replan_enabled",
    )
    # @brief Original name: string; shape scalar.
    # @brief Original onav_config: string; shape scalar.
    # @brief Original waypoint_ids: string; shape sequence.
    # @brief Original on_start_ids: string; shape sequence.
    # @brief Original on_stop_ids: string; shape sequence.
    # @brief Original return_to_dock_enabled: bool; shape scalar.
    # @brief Original return_to_dock_id: string; shape scalar.
    # @brief Original return_to_dock_battery_level: float32; shape scalar.
    # @brief Original resume_mission_battery_level: float32; shape scalar.
    # @brief Original network_replan_enabled: bool; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_7f681e1a88063ba1d41a6e6156a499e7dc0cc68f656c09931589b8a1532e95bf",
        "minimum": 34,
        "maximum": 2234,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "onav_config",
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
                "name": "waypoint_ids",
                "type": "string",
                "array": "sequence",
                "count": 2,
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
                "name": "on_start_ids",
                "type": "string",
                "array": "sequence",
                "count": 2,
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
                "name": "on_stop_ids",
                "type": "string",
                "array": "sequence",
                "count": 2,
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
                "name": "return_to_dock_enabled",
                "type": "bool",
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
                "name": "return_to_dock_id",
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
                "name": "return_to_dock_battery_level",
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
                "name": "resume_mission_battery_level",
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
                "name": "network_replan_enabled",
                "type": "bool",
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
        "type": "clearpath_mission_manager_msgs/CreateNetworkMissionRequest",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsCreateNetworkMissionRequest)


class Ros1Clearpath_mission_manager_msgsCreateNetworkMissionResponse(Record):
    """@brief Own every original clearpath_mission_manager_msgs/CreateNetworkMissionResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("result",)
    # @brief Original result: clearpath_navigation_msgs/NetworkMission; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_7795dd8fd48439f93f4ff545ed7ecdb4948692d973e4d688d197c7a2c8afb374",
        "minimum": 54,
        "maximum": 13606,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "result",
                "type": "clearpath_navigation_msgs/NetworkMission",
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
                "element_minimum": 54,
            }
        ],
        "type": "clearpath_mission_manager_msgs/CreateNetworkMissionResponse",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsCreateNetworkMissionResponse)


class Ros1Clearpath_mission_manager_msgsCreatePointOfInterestRequest(Record):
    """@brief Own every original clearpath_mission_manager_msgs/CreatePointOfInterestRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = (
        "name",
        "latitude",
        "longitude",
        "elevation",
        "enable_heading",
        "heading",
        "tags",
        "custom_fields_json",
    )
    # @brief Original name: string; shape scalar.
    # @brief Original latitude: float64; shape scalar.
    # @brief Original longitude: float64; shape scalar.
    # @brief Original elevation: float64; shape scalar.
    # @brief Original enable_heading: bool; shape scalar.
    # @brief Original heading: float64; shape scalar.
    # @brief Original tags: string; shape sequence.
    # @brief Original custom_fields_json: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_46db8c6cd151bb2b514dbbb6ca3c5638186e78ed8c0a5b587c63d263dbf4e707",
        "minimum": 45,
        "maximum": 949,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "latitude",
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
                "name": "longitude",
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
                "name": "elevation",
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
                "name": "enable_heading",
                "type": "bool",
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
                "name": "heading",
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
                "name": "tags",
                "type": "string",
                "array": "sequence",
                "count": 2,
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
                "name": "custom_fields_json",
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
        "type": "clearpath_mission_manager_msgs/CreatePointOfInterestRequest",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsCreatePointOfInterestRequest)


class Ros1Clearpath_mission_manager_msgsCreatePointOfInterestResponse(Record):
    """@brief Own every original clearpath_mission_manager_msgs/CreatePointOfInterestResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("result",)
    # @brief Original result: clearpath_navigation_msgs/PointOfInterest; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_0a515e14a911f9bbb05e1b44fccbe91b8ae9c5d83e6bf3b3055bdd46c95ab82e",
        "minimum": 49,
        "maximum": 1209,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "result",
                "type": "clearpath_navigation_msgs/PointOfInterest",
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
                "element_minimum": 49,
            }
        ],
        "type": "clearpath_mission_manager_msgs/CreatePointOfInterestResponse",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsCreatePointOfInterestResponse)


class Ros1Clearpath_mission_manager_msgsCreateTaskRequest(Record):
    """@brief Own every original clearpath_mission_manager_msgs/CreateTaskRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = (
        "name",
        "action_server_name",
        "version",
        "floats",
        "strings",
        "allow_failure",
        "assign_to_wp",
        "assign_on_start",
        "assign_on_stop",
    )
    # @brief Original name: string; shape scalar.
    # @brief Original action_server_name: string; shape scalar.
    # @brief Original version: string; shape scalar.
    # @brief Original floats: float64; shape sequence.
    # @brief Original strings: string; shape sequence.
    # @brief Original allow_failure: bool; shape scalar.
    # @brief Original assign_to_wp: string; shape sequence.
    # @brief Original assign_on_start: string; shape sequence.
    # @brief Original assign_on_stop: string; shape sequence.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_b6d1b102bd25c79e40c1c8f009688a8a183d7fbebb3983b97ab8ecb219e4eab3",
        "minimum": 33,
        "maximum": 2769,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "action_server_name",
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "floats",
                "type": "float64",
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
                "element_minimum": 8,
            },
            {
                "name": "strings",
                "type": "string",
                "array": "sequence",
                "count": 2,
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
                "name": "allow_failure",
                "type": "bool",
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
                "name": "assign_to_wp",
                "type": "string",
                "array": "sequence",
                "count": 2,
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
                "name": "assign_on_start",
                "type": "string",
                "array": "sequence",
                "count": 2,
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
                "name": "assign_on_stop",
                "type": "string",
                "array": "sequence",
                "count": 2,
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
        "type": "clearpath_mission_manager_msgs/CreateTaskRequest",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsCreateTaskRequest)


class Ros1Clearpath_mission_manager_msgsCreateTaskResponse(Record):
    """@brief Own every original clearpath_mission_manager_msgs/CreateTaskResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("result",)
    # @brief Original result: clearpath_navigation_msgs/Task; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_1fab04f16b13985ec3cffd38cace15e459fbb8de05d7283917df6ac0e7e30c8a",
        "minimum": 25,
        "maximum": 1457,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "result",
                "type": "clearpath_navigation_msgs/Task",
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
                "element_minimum": 25,
            }
        ],
        "type": "clearpath_mission_manager_msgs/CreateTaskResponse",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsCreateTaskResponse)


class Ros1Clearpath_mission_manager_msgsCreateWaypointRequest(Record):
    """@brief Own every original clearpath_mission_manager_msgs/CreateWaypointRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = (
        "name",
        "latitude",
        "longitude",
        "heading",
        "position_tolerance",
        "yaw_tolerance",
        "task_ids",
        "assign_to",
    )
    # @brief Original name: string; shape scalar.
    # @brief Original latitude: float64; shape scalar.
    # @brief Original longitude: float64; shape scalar.
    # @brief Original heading: float64; shape scalar.
    # @brief Original position_tolerance: float64; shape scalar.
    # @brief Original yaw_tolerance: float64; shape scalar.
    # @brief Original task_ids: string; shape sequence.
    # @brief Original assign_to: string; shape sequence.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_0779feb60308617994f391072eba0fb734890defcf0b05974cf4a54485586188",
        "minimum": 52,
        "maximum": 1220,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "latitude",
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
                "name": "longitude",
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
                "name": "heading",
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
                "name": "position_tolerance",
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
                "name": "yaw_tolerance",
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
                "name": "task_ids",
                "type": "string",
                "array": "sequence",
                "count": 2,
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
                "name": "assign_to",
                "type": "string",
                "array": "sequence",
                "count": 2,
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
        "type": "clearpath_mission_manager_msgs/CreateWaypointRequest",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsCreateWaypointRequest)


class Ros1Clearpath_mission_manager_msgsCreateWaypointResponse(Record):
    """@brief Own every original clearpath_mission_manager_msgs/CreateWaypointResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("result",)
    # @brief Original result: clearpath_navigation_msgs/Waypoint; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_ecf69fcfa5288295555651d9e8215b75b0b368a019447a7f50f25390eaf73a37",
        "minimum": 52,
        "maximum": 3350,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "result",
                "type": "clearpath_navigation_msgs/Waypoint",
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
                "element_minimum": 52,
            }
        ],
        "type": "clearpath_mission_manager_msgs/CreateWaypointResponse",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsCreateWaypointResponse)


class Ros1Clearpath_mission_manager_msgsCreateWaypointFromPoiRequest(Record):
    """@brief Own every original clearpath_mission_manager_msgs/CreateWaypointFromPoiRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("point_of_interest",)
    # @brief Original point_of_interest: clearpath_navigation_msgs/PointOfInterest; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_792f6ca7e821aa73a48aafcec57ba7b6c729115e7d2fbd4b4ac25412e1d76522",
        "minimum": 49,
        "maximum": 1209,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "point_of_interest",
                "type": "clearpath_navigation_msgs/PointOfInterest",
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
                "element_minimum": 49,
            }
        ],
        "type": "clearpath_mission_manager_msgs/CreateWaypointFromPoiRequest",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsCreateWaypointFromPoiRequest)


class Ros1Clearpath_mission_manager_msgsCreateWaypointFromPoiResponse(Record):
    """@brief Own every original clearpath_mission_manager_msgs/CreateWaypointFromPoiResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("waypoint",)
    # @brief Original waypoint: clearpath_navigation_msgs/Waypoint; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_39d1b867f9aa0a0fa17ceb11ab8b301a42a96c3156a97a8258d2a775853549ac",
        "minimum": 52,
        "maximum": 3350,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "waypoint",
                "type": "clearpath_navigation_msgs/Waypoint",
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
                "element_minimum": 52,
            }
        ],
        "type": "clearpath_mission_manager_msgs/CreateWaypointFromPoiResponse",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsCreateWaypointFromPoiResponse)


class Ros1Clearpath_mission_manager_msgsDeleteByIdRequest(Record):
    """@brief Own every original clearpath_mission_manager_msgs/DeleteByIdRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("uuid",)
    # @brief Original uuid: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_489c2a214ef86b4b1b60e32ee19f71e11e7d000a3293ae747d48c20b746527f2",
        "minimum": 4,
        "maximum": 260,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "uuid",
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
        "type": "clearpath_mission_manager_msgs/DeleteByIdRequest",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsDeleteByIdRequest)


class Ros1Clearpath_mission_manager_msgsDeleteByIdResponse(Record):
    """@brief Own every original clearpath_mission_manager_msgs/DeleteByIdResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("ok",)
    # @brief Original ok: bool; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_a93b6bdc62702c29ed1db507504586a1b651ba32f98725326faf10b14e5abfcf",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "ok",
                "type": "bool",
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
        "type": "clearpath_mission_manager_msgs/DeleteByIdResponse",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsDeleteByIdResponse)


class Ros1Clearpath_mission_manager_msgsDeleteEverythingRequest(Record):
    """@brief Own every original clearpath_mission_manager_msgs/DeleteEverythingRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("yes_i_am_absolutely_sure_i_want_to_do_this",)
    # @brief Original yes_i_am_absolutely_sure_i_want_to_do_this: bool; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_a0b2722e0ba476021308ba2d3dc2a6ef9843dbcf607c0e6ca18d8c4de60256f8",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "yes_i_am_absolutely_sure_i_want_to_do_this",
                "type": "bool",
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
        "type": "clearpath_mission_manager_msgs/DeleteEverythingRequest",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsDeleteEverythingRequest)


class Ros1Clearpath_mission_manager_msgsDeleteEverythingResponse(Record):
    """@brief Own every original clearpath_mission_manager_msgs/DeleteEverythingResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("ok",)
    # @brief Original ok: bool; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_cd73a92e3a56214ea6fd445e5f7b20aab1a91945875774af4db25426f4a67a4d",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "ok",
                "type": "bool",
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
        "type": "clearpath_mission_manager_msgs/DeleteEverythingResponse",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsDeleteEverythingResponse)


class Ros1Clearpath_mission_manager_msgsDeleteMultipleRequest(Record):
    """@brief Own every original clearpath_mission_manager_msgs/DeleteMultipleRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("uuids", "parent_id")
    # @brief Original uuids: string; shape sequence.
    # @brief Original parent_id: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_93d59bed5a06ad0d5d7c19f7c2881255ab70f4136e8d9633c6619e7060d2c2df",
        "minimum": 8,
        "maximum": 784,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "uuids",
                "type": "string",
                "array": "sequence",
                "count": 2,
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
                "name": "parent_id",
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
        "type": "clearpath_mission_manager_msgs/DeleteMultipleRequest",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsDeleteMultipleRequest)


class Ros1Clearpath_mission_manager_msgsDeleteMultipleResponse(Record):
    """@brief Own every original clearpath_mission_manager_msgs/DeleteMultipleResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("failed_uuids",)
    # @brief Original failed_uuids: string; shape sequence.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_ddfebd2869fb25d1e6d51221ab483db5d1015d44607cfbf7d45fb2c28cd4cb60",
        "minimum": 4,
        "maximum": 524,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "failed_uuids",
                "type": "string",
                "array": "sequence",
                "count": 2,
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
        "type": "clearpath_mission_manager_msgs/DeleteMultipleResponse",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsDeleteMultipleResponse)


class Ros1Clearpath_mission_manager_msgsExportDataRequest(Record):
    """@brief Own every original clearpath_mission_manager_msgs/ExportDataRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ()
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_273ca86bcaa10fda29a72290dd5b605569d6c59562e935e4779deee94249e5f4",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [],
        "type": "clearpath_mission_manager_msgs/ExportDataRequest",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsExportDataRequest)


class Ros1Clearpath_mission_manager_msgsExportDataResponse(Record):
    """@brief Own every original clearpath_mission_manager_msgs/ExportDataResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("data",)
    # @brief Original data: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_497c67643bdb2dfb03f415e5af67a58b3dcfe439842441973fece1df28e56dbb",
        "minimum": 4,
        "maximum": 260,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
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
                "raw": False,
                "element_minimum": 4,
            }
        ],
        "type": "clearpath_mission_manager_msgs/ExportDataResponse",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsExportDataResponse)


class Ros1Clearpath_mission_manager_msgsGetAllMissionsRequest(Record):
    """@brief Own every original clearpath_mission_manager_msgs/GetAllMissionsRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ()
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_9b2758f137a20a5a8d0c798befe715f0d834c3fa912fddd5005a88c95340fb45",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [],
        "type": "clearpath_mission_manager_msgs/GetAllMissionsRequest",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsGetAllMissionsRequest)


class Ros1Clearpath_mission_manager_msgsGetAllMissionsResponse(Record):
    """@brief Own every original clearpath_mission_manager_msgs/GetAllMissionsResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("missions",)
    # @brief Original missions: clearpath_navigation_msgs/Mission; shape sequence.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_b3936fa567f9f915b83d8933633c280b42684da025f096333fd133772642649b",
        "minimum": 4,
        "maximum": 26676,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "missions",
                "type": "clearpath_navigation_msgs/Mission",
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
                "element_minimum": 40,
            }
        ],
        "type": "clearpath_mission_manager_msgs/GetAllMissionsResponse",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsGetAllMissionsResponse)


class Ros1Clearpath_mission_manager_msgsGetAllNetworkMapsRequest(Record):
    """@brief Own every original clearpath_mission_manager_msgs/GetAllNetworkMapsRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ()
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_b366fcf604486b90ff0de6d4cdf601f179509337b308b423d51a941857b964ed",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [],
        "type": "clearpath_mission_manager_msgs/GetAllNetworkMapsRequest",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsGetAllNetworkMapsRequest)


class Ros1Clearpath_mission_manager_msgsGetAllNetworkMapsResponse(Record):
    """@brief Own every original clearpath_mission_manager_msgs/GetAllNetworkMapsResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("maps",)
    # @brief Original maps: clearpath_navigation_msgs/NetworkMap; shape sequence.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_ac5719469bbfc8fbc6f0dd9a897cea857ecde83b65f7d2d6b19ac1b2c3905f3d",
        "minimum": 4,
        "maximum": 5220,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "maps",
                "type": "clearpath_navigation_msgs/NetworkMap",
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
                "element_minimum": 24,
            }
        ],
        "type": "clearpath_mission_manager_msgs/GetAllNetworkMapsResponse",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsGetAllNetworkMapsResponse)


class Ros1Clearpath_mission_manager_msgsGetAllNetworkMissionsRequest(Record):
    """@brief Own every original clearpath_mission_manager_msgs/GetAllNetworkMissionsRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ()
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_a1aed2728f1c66328d9c6f15d5866d67b379abfe7afd71b03c02ce69ef4fd11f",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [],
        "type": "clearpath_mission_manager_msgs/GetAllNetworkMissionsRequest",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsGetAllNetworkMissionsRequest)


class Ros1Clearpath_mission_manager_msgsGetAllNetworkMissionsResponse(Record):
    """@brief Own every original clearpath_mission_manager_msgs/GetAllNetworkMissionsResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("missions",)
    # @brief Original missions: clearpath_navigation_msgs/NetworkMission; shape sequence.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_e0f273f3e31d98804e84ffe011f5060be89d009d790fb34992de6aaa346ef0e2",
        "minimum": 4,
        "maximum": 27216,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "missions",
                "type": "clearpath_navigation_msgs/NetworkMission",
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
                "element_minimum": 54,
            }
        ],
        "type": "clearpath_mission_manager_msgs/GetAllNetworkMissionsResponse",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsGetAllNetworkMissionsResponse)


class Ros1Clearpath_mission_manager_msgsGetAllPointsOfInterestRequest(Record):
    """@brief Own every original clearpath_mission_manager_msgs/GetAllPointsOfInterestRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ()
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_1774ba572ac91b4246b91b9e006829ff4f38a195ae67b23f5ed461574d72ccc9",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [],
        "type": "clearpath_mission_manager_msgs/GetAllPointsOfInterestRequest",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsGetAllPointsOfInterestRequest)


class Ros1Clearpath_mission_manager_msgsGetAllPointsOfInterestResponse(Record):
    """@brief Own every original clearpath_mission_manager_msgs/GetAllPointsOfInterestResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("points_of_interest",)
    # @brief Original points_of_interest: clearpath_navigation_msgs/PointOfInterest; shape sequence.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_8105af95e78f446b3f73eb05379d4633513a51c29ea157adf3fb24ebed014fe4",
        "minimum": 4,
        "maximum": 2422,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "points_of_interest",
                "type": "clearpath_navigation_msgs/PointOfInterest",
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
                "element_minimum": 49,
            }
        ],
        "type": "clearpath_mission_manager_msgs/GetAllPointsOfInterestResponse",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsGetAllPointsOfInterestResponse)


class Ros1Clearpath_mission_manager_msgsGetAllTasksRequest(Record):
    """@brief Own every original clearpath_mission_manager_msgs/GetAllTasksRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ()
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_e345153b30f5709bffaea462092527b89285ab0902c8b7c78f759f92d823c74e",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [],
        "type": "clearpath_mission_manager_msgs/GetAllTasksRequest",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsGetAllTasksRequest)


class Ros1Clearpath_mission_manager_msgsGetAllTasksResponse(Record):
    """@brief Own every original clearpath_mission_manager_msgs/GetAllTasksResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("tasks",)
    # @brief Original tasks: clearpath_navigation_msgs/Task; shape sequence.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_fed546c0b2b8ea2db1ca9e8e13e918144b436e4a2a818e724fadfe5a3775c148",
        "minimum": 4,
        "maximum": 2918,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "tasks",
                "type": "clearpath_navigation_msgs/Task",
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
                "element_minimum": 25,
            }
        ],
        "type": "clearpath_mission_manager_msgs/GetAllTasksResponse",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsGetAllTasksResponse)


class Ros1Clearpath_mission_manager_msgsGetAllWaypointsRequest(Record):
    """@brief Own every original clearpath_mission_manager_msgs/GetAllWaypointsRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ()
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_d5a22af162ba215c95bddbd955eac6aba558134ee4a5c988a13b6819fc5e22c7",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [],
        "type": "clearpath_mission_manager_msgs/GetAllWaypointsRequest",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsGetAllWaypointsRequest)


class Ros1Clearpath_mission_manager_msgsGetAllWaypointsResponse(Record):
    """@brief Own every original clearpath_mission_manager_msgs/GetAllWaypointsResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("waypoints",)
    # @brief Original waypoints: clearpath_navigation_msgs/Waypoint; shape sequence.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_daacee9b652bc78820380eaf5d515c8813f8387fc7d2a3b934d7961fd1f46208",
        "minimum": 4,
        "maximum": 6704,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "waypoints",
                "type": "clearpath_navigation_msgs/Waypoint",
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
                "element_minimum": 52,
            }
        ],
        "type": "clearpath_mission_manager_msgs/GetAllWaypointsResponse",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsGetAllWaypointsResponse)


class Ros1Clearpath_mission_manager_msgsGetEverythingRequest(Record):
    """@brief Own every original clearpath_mission_manager_msgs/GetEverythingRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ()
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_6be79503b5553344dcbc97ef60843035d672883c3431f33b86a6e367bff35783",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [],
        "type": "clearpath_mission_manager_msgs/GetEverythingRequest",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsGetEverythingRequest)


class Ros1Clearpath_mission_manager_msgsGetEverythingResponse(Record):
    """@brief Own every original clearpath_mission_manager_msgs/GetEverythingResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("state",)
    # @brief Original state: clearpath_mission_manager_msgs/StorageState; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_135f1c7e2aea6353167ae048ae6afdc57fb6614c64a1a135321015734fc79069",
        "minimum": 24,
        "maximum": 32768,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "state",
                "type": "clearpath_mission_manager_msgs/StorageState",
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
            }
        ],
        "type": "clearpath_mission_manager_msgs/GetEverythingResponse",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsGetEverythingResponse)


class Ros1Clearpath_mission_manager_msgsGetMissionRequest(Record):
    """@brief Own every original clearpath_mission_manager_msgs/GetMissionRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("uuid",)
    # @brief Original uuid: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_c1587963d27ada2cb3d8fbb4ccad1faa2f7bdbe2cb88081b76e573843f51051f",
        "minimum": 4,
        "maximum": 260,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "uuid",
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
        "type": "clearpath_mission_manager_msgs/GetMissionRequest",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsGetMissionRequest)


class Ros1Clearpath_mission_manager_msgsGetMissionResponse(Record):
    """@brief Own every original clearpath_mission_manager_msgs/GetMissionResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("mission",)
    # @brief Original mission: clearpath_navigation_msgs/Mission; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_ed24abebf6a3316c8583a2d6d9e62f7eca8ea493607c7772130b057468aa483f",
        "minimum": 40,
        "maximum": 13336,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "mission",
                "type": "clearpath_navigation_msgs/Mission",
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
                "element_minimum": 40,
            }
        ],
        "type": "clearpath_mission_manager_msgs/GetMissionResponse",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsGetMissionResponse)


class Ros1Clearpath_mission_manager_msgsGetNetworkMapRequest(Record):
    """@brief Own every original clearpath_mission_manager_msgs/GetNetworkMapRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("uuid",)
    # @brief Original uuid: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_67930348022f20b977b129f0a583130b9664cf9c45d26bcfaf5a5af087e185b7",
        "minimum": 4,
        "maximum": 260,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "uuid",
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
        "type": "clearpath_mission_manager_msgs/GetNetworkMapRequest",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsGetNetworkMapRequest)


class Ros1Clearpath_mission_manager_msgsGetNetworkMapResponse(Record):
    """@brief Own every original clearpath_mission_manager_msgs/GetNetworkMapResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("map",)
    # @brief Original map: clearpath_navigation_msgs/NetworkMap; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_0a25742662a313fe30697c86f1463304d54a7bfc06e86b6e6a2c9881c09dc775",
        "minimum": 24,
        "maximum": 2608,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "map",
                "type": "clearpath_navigation_msgs/NetworkMap",
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
            }
        ],
        "type": "clearpath_mission_manager_msgs/GetNetworkMapResponse",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsGetNetworkMapResponse)


class Ros1Clearpath_mission_manager_msgsGetNetworkMissionRequest(Record):
    """@brief Own every original clearpath_mission_manager_msgs/GetNetworkMissionRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("uuid",)
    # @brief Original uuid: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_a69493f449f860b33c6c6c510b7a23b015ce5c3566ac13aae7d2d42b4a0652b7",
        "minimum": 4,
        "maximum": 260,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "uuid",
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
        "type": "clearpath_mission_manager_msgs/GetNetworkMissionRequest",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsGetNetworkMissionRequest)


class Ros1Clearpath_mission_manager_msgsGetNetworkMissionResponse(Record):
    """@brief Own every original clearpath_mission_manager_msgs/GetNetworkMissionResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("mission",)
    # @brief Original mission: clearpath_navigation_msgs/NetworkMission; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_9ec509115489f3011105522578f549180057312e652eb9bf1a1c3f1dbee2025a",
        "minimum": 54,
        "maximum": 13606,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "mission",
                "type": "clearpath_navigation_msgs/NetworkMission",
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
                "element_minimum": 54,
            }
        ],
        "type": "clearpath_mission_manager_msgs/GetNetworkMissionResponse",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsGetNetworkMissionResponse)


class Ros1Clearpath_mission_manager_msgsGetPointOfInterestRequest(Record):
    """@brief Own every original clearpath_mission_manager_msgs/GetPointOfInterestRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("uuid",)
    # @brief Original uuid: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_a6b60dbc44cf3fdfc7deea9ce5d8826b9bfb17cfe3bdf6e5a82ae485d51fa9a7",
        "minimum": 4,
        "maximum": 260,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "uuid",
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
        "type": "clearpath_mission_manager_msgs/GetPointOfInterestRequest",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsGetPointOfInterestRequest)


class Ros1Clearpath_mission_manager_msgsGetPointOfInterestResponse(Record):
    """@brief Own every original clearpath_mission_manager_msgs/GetPointOfInterestResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("point_of_interest",)
    # @brief Original point_of_interest: clearpath_navigation_msgs/PointOfInterest; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_711a556a81c17e244578495cac6e6721c5e7b81dadf505784ea191cc1f0b9a13",
        "minimum": 49,
        "maximum": 1209,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "point_of_interest",
                "type": "clearpath_navigation_msgs/PointOfInterest",
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
                "element_minimum": 49,
            }
        ],
        "type": "clearpath_mission_manager_msgs/GetPointOfInterestResponse",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsGetPointOfInterestResponse)


class Ros1Clearpath_mission_manager_msgsGetTaskRequest(Record):
    """@brief Own every original clearpath_mission_manager_msgs/GetTaskRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("uuid",)
    # @brief Original uuid: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_854685ce6f5dc28caf2c8e11d82813aa8f0611945d5c76d29bb2ca11461a94dc",
        "minimum": 4,
        "maximum": 260,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "uuid",
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
        "type": "clearpath_mission_manager_msgs/GetTaskRequest",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsGetTaskRequest)


class Ros1Clearpath_mission_manager_msgsGetTaskResponse(Record):
    """@brief Own every original clearpath_mission_manager_msgs/GetTaskResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("task",)
    # @brief Original task: clearpath_navigation_msgs/Task; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_7ddc2f1b761f344a7765b4f54d9a15a91a4097e715f0610c741fc2a16dba947f",
        "minimum": 25,
        "maximum": 1457,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "task",
                "type": "clearpath_navigation_msgs/Task",
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
                "element_minimum": 25,
            }
        ],
        "type": "clearpath_mission_manager_msgs/GetTaskResponse",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsGetTaskResponse)


class Ros1Clearpath_mission_manager_msgsGetWaypointRequest(Record):
    """@brief Own every original clearpath_mission_manager_msgs/GetWaypointRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("uuid",)
    # @brief Original uuid: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_d3530712135cd3a80f746e233124cb3e79ef8d8ef69ca6fe1f26c750a3314539",
        "minimum": 4,
        "maximum": 260,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "uuid",
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
        "type": "clearpath_mission_manager_msgs/GetWaypointRequest",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsGetWaypointRequest)


class Ros1Clearpath_mission_manager_msgsGetWaypointResponse(Record):
    """@brief Own every original clearpath_mission_manager_msgs/GetWaypointResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("waypoint",)
    # @brief Original waypoint: clearpath_navigation_msgs/Waypoint; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_8226d0597a337e9b43babecca8bf4ba09274c53802cd87ece58feea9c0954c66",
        "minimum": 52,
        "maximum": 3350,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "waypoint",
                "type": "clearpath_navigation_msgs/Waypoint",
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
                "element_minimum": 52,
            }
        ],
        "type": "clearpath_mission_manager_msgs/GetWaypointResponse",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsGetWaypointResponse)


class Ros1Clearpath_mission_manager_msgsImportDataRequest(Record):
    """@brief Own every original clearpath_mission_manager_msgs/ImportDataRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("data",)
    # @brief Original data: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_5e0a54e52dea50a99d18f8e82ded58dafd203c692fd467c0123e0fb057e37d25",
        "minimum": 4,
        "maximum": 260,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
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
                "raw": False,
                "element_minimum": 4,
            }
        ],
        "type": "clearpath_mission_manager_msgs/ImportDataRequest",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsImportDataRequest)


class Ros1Clearpath_mission_manager_msgsImportDataResponse(Record):
    """@brief Own every original clearpath_mission_manager_msgs/ImportDataResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("state",)
    # @brief Original state: clearpath_mission_manager_msgs/StorageState; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_16cd6e810a8c986454949c165ec577118481f2557bf2d1620fc098108b806488",
        "minimum": 24,
        "maximum": 32768,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "state",
                "type": "clearpath_mission_manager_msgs/StorageState",
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
            }
        ],
        "type": "clearpath_mission_manager_msgs/ImportDataResponse",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsImportDataResponse)


class Ros1Clearpath_mission_manager_msgsImportMissionRequest(Record):
    """@brief Own every original clearpath_mission_manager_msgs/ImportMissionRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("mission",)
    # @brief Original mission: clearpath_navigation_msgs/Mission; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_4eb653a68629b1c4461091d9ab12f90d26ed5e8b063d13b3cbbe1a2944f3fb53",
        "minimum": 40,
        "maximum": 13336,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "mission",
                "type": "clearpath_navigation_msgs/Mission",
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
                "element_minimum": 40,
            }
        ],
        "type": "clearpath_mission_manager_msgs/ImportMissionRequest",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsImportMissionRequest)


class Ros1Clearpath_mission_manager_msgsImportMissionResponse(Record):
    """@brief Own every original clearpath_mission_manager_msgs/ImportMissionResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("mission",)
    # @brief Original mission: clearpath_navigation_msgs/Mission; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_8881f8b70cb092d74936eb93345036049e07cc11cd5c55e52b2b3f7f36d07e7d",
        "minimum": 40,
        "maximum": 13336,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "mission",
                "type": "clearpath_navigation_msgs/Mission",
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
                "element_minimum": 40,
            }
        ],
        "type": "clearpath_mission_manager_msgs/ImportMissionResponse",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsImportMissionResponse)


class Ros1Clearpath_mission_manager_msgsImportNetworkMapRequest(Record):
    """@brief Own every original clearpath_mission_manager_msgs/ImportNetworkMapRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("map",)
    # @brief Original map: clearpath_navigation_msgs/NetworkMap; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_ca063451548e0a85552a3069cccf7b86524d6cb30c5dd6c788d44ba0fc508978",
        "minimum": 24,
        "maximum": 2608,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "map",
                "type": "clearpath_navigation_msgs/NetworkMap",
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
            }
        ],
        "type": "clearpath_mission_manager_msgs/ImportNetworkMapRequest",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsImportNetworkMapRequest)


class Ros1Clearpath_mission_manager_msgsImportNetworkMapResponse(Record):
    """@brief Own every original clearpath_mission_manager_msgs/ImportNetworkMapResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("map",)
    # @brief Original map: clearpath_navigation_msgs/NetworkMap; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_b53c8f06e58b7dde2c5127df98451db37c1825fe667cf8eb816c0cacf93ecf3f",
        "minimum": 24,
        "maximum": 2608,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "map",
                "type": "clearpath_navigation_msgs/NetworkMap",
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
            }
        ],
        "type": "clearpath_mission_manager_msgs/ImportNetworkMapResponse",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsImportNetworkMapResponse)


class Ros1Clearpath_mission_manager_msgsImportNetworkMissionRequest(Record):
    """@brief Own every original clearpath_mission_manager_msgs/ImportNetworkMissionRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("mission",)
    # @brief Original mission: clearpath_navigation_msgs/NetworkMission; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_03140f9073798b8de77e3ba9b8fc8f048b0ab43fa5d17c17bb767c23dfcf1a39",
        "minimum": 54,
        "maximum": 13606,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "mission",
                "type": "clearpath_navigation_msgs/NetworkMission",
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
                "element_minimum": 54,
            }
        ],
        "type": "clearpath_mission_manager_msgs/ImportNetworkMissionRequest",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsImportNetworkMissionRequest)


class Ros1Clearpath_mission_manager_msgsImportNetworkMissionResponse(Record):
    """@brief Own every original clearpath_mission_manager_msgs/ImportNetworkMissionResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("mission",)
    # @brief Original mission: clearpath_navigation_msgs/NetworkMission; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_2f4b00981cea86beab4c6872e8184ad90257612396bb44d0a120290b8404c7d8",
        "minimum": 54,
        "maximum": 13606,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "mission",
                "type": "clearpath_navigation_msgs/NetworkMission",
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
                "element_minimum": 54,
            }
        ],
        "type": "clearpath_mission_manager_msgs/ImportNetworkMissionResponse",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsImportNetworkMissionResponse)


class Ros1Clearpath_mission_manager_msgsSplitNetworkEdgeRequest(Record):
    """@brief Own every original clearpath_mission_manager_msgs/SplitNetworkEdgeRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("map_id", "edge_id", "new_point_latitude", "new_point_longitude", "symmetrical")
    # @brief Original map_id: string; shape scalar.
    # @brief Original edge_id: string; shape scalar.
    # @brief Original new_point_latitude: float64; shape scalar.
    # @brief Original new_point_longitude: float64; shape scalar.
    # @brief Original symmetrical: bool; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_6d083d95fc9720932b330979fdf997abeaa7e463265226bf7ae09fec1bb97be5",
        "minimum": 25,
        "maximum": 537,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "map_id",
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
                "name": "edge_id",
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
                "name": "new_point_latitude",
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
                "name": "new_point_longitude",
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
                "name": "symmetrical",
                "type": "bool",
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
        "type": "clearpath_mission_manager_msgs/SplitNetworkEdgeRequest",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsSplitNetworkEdgeRequest)


class Ros1Clearpath_mission_manager_msgsSplitNetworkEdgeResponse(Record):
    """@brief Own every original clearpath_mission_manager_msgs/SplitNetworkEdgeResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("result",)
    # @brief Original result: clearpath_navigation_msgs/NetworkMap; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_55fdb27f06984817af8a20e3e0bcc8dd85c33db0fbc65f1881822eabc6ab14b3",
        "minimum": 24,
        "maximum": 2608,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "result",
                "type": "clearpath_navigation_msgs/NetworkMap",
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
            }
        ],
        "type": "clearpath_mission_manager_msgs/SplitNetworkEdgeResponse",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsSplitNetworkEdgeResponse)


class Ros1Clearpath_mission_manager_msgsUpdateMissionRequest(Record):
    """@brief Own every original clearpath_mission_manager_msgs/UpdateMissionRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("uuid", "name", "onav_config", "waypoint_ids", "on_start_ids", "on_stop_ids")
    # @brief Original uuid: string; shape scalar.
    # @brief Original name: string; shape scalar.
    # @brief Original onav_config: string; shape scalar.
    # @brief Original waypoint_ids: string; shape sequence.
    # @brief Original on_start_ids: string; shape sequence.
    # @brief Original on_stop_ids: string; shape sequence.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_3320e01dc2228359832eb75a54c3df011870d017f0f8f862fe2a68d2cb56a3d3",
        "minimum": 24,
        "maximum": 2224,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "uuid",
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "onav_config",
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
                "name": "waypoint_ids",
                "type": "string",
                "array": "sequence",
                "count": 2,
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
                "name": "on_start_ids",
                "type": "string",
                "array": "sequence",
                "count": 2,
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
                "name": "on_stop_ids",
                "type": "string",
                "array": "sequence",
                "count": 2,
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
        "type": "clearpath_mission_manager_msgs/UpdateMissionRequest",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsUpdateMissionRequest)


class Ros1Clearpath_mission_manager_msgsUpdateMissionResponse(Record):
    """@brief Own every original clearpath_mission_manager_msgs/UpdateMissionResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("result",)
    # @brief Original result: clearpath_navigation_msgs/Mission; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_1d43fee27013957863e01990de9010ebb6b8a7a8668cf6b3916835aaa92e18a9",
        "minimum": 40,
        "maximum": 13336,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "result",
                "type": "clearpath_navigation_msgs/Mission",
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
                "element_minimum": 40,
            }
        ],
        "type": "clearpath_mission_manager_msgs/UpdateMissionResponse",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsUpdateMissionResponse)


class Ros1Clearpath_mission_manager_msgsUpdateNetworkEdgeRequest(Record):
    """@brief Own every original clearpath_mission_manager_msgs/UpdateNetworkEdgeRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("map_id", "uuid", "start_point_id", "end_point_id", "radius", "speed_limit", "cost_factor")
    # @brief Original map_id: string; shape scalar.
    # @brief Original uuid: string; shape scalar.
    # @brief Original start_point_id: string; shape scalar.
    # @brief Original end_point_id: string; shape scalar.
    # @brief Original radius: float32; shape scalar.
    # @brief Original speed_limit: float32; shape scalar.
    # @brief Original cost_factor: float32; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_6f6eb31133df261e82cf165b1e93ae4d853c4a9de1a928a612ac35115d0bd563",
        "minimum": 28,
        "maximum": 1052,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "map_id",
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
                "name": "uuid",
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
                "name": "start_point_id",
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
                "name": "end_point_id",
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
                "name": "radius",
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
                "name": "speed_limit",
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
                "name": "cost_factor",
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
        "type": "clearpath_mission_manager_msgs/UpdateNetworkEdgeRequest",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsUpdateNetworkEdgeRequest)


class Ros1Clearpath_mission_manager_msgsUpdateNetworkEdgeResponse(Record):
    """@brief Own every original clearpath_mission_manager_msgs/UpdateNetworkEdgeResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("result",)
    # @brief Original result: clearpath_navigation_msgs/NetworkEdge; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_4534230375b42cc0956c57d587baac63882da426edfe851fccc4b95a42d59c01",
        "minimum": 56,
        "maximum": 824,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "result",
                "type": "clearpath_navigation_msgs/NetworkEdge",
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
            }
        ],
        "type": "clearpath_mission_manager_msgs/UpdateNetworkEdgeResponse",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsUpdateNetworkEdgeResponse)


class Ros1Clearpath_mission_manager_msgsUpdateNetworkEdgesRequest(Record):
    """@brief Own every original clearpath_mission_manager_msgs/UpdateNetworkEdgesRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("map_id", "uuids", "radii", "speed_limits", "cost_factors")
    # @brief Original map_id: string; shape scalar.
    # @brief Original uuids: string; shape sequence.
    # @brief Original radii: float32; shape sequence.
    # @brief Original speed_limits: float32; shape sequence.
    # @brief Original cost_factors: float32; shape sequence.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_9126cc96d7840c27a84dbb4144580cb9a76a7c77aa1fefea23b6b965e6d2d7f4",
        "minimum": 20,
        "maximum": 820,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "map_id",
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
                "name": "uuids",
                "type": "string",
                "array": "sequence",
                "count": 2,
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
                "name": "radii",
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
                "name": "speed_limits",
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
                "name": "cost_factors",
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
        "type": "clearpath_mission_manager_msgs/UpdateNetworkEdgesRequest",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsUpdateNetworkEdgesRequest)


class Ros1Clearpath_mission_manager_msgsUpdateNetworkEdgesResponse(Record):
    """@brief Own every original clearpath_mission_manager_msgs/UpdateNetworkEdgesResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("result",)
    # @brief Original result: clearpath_navigation_msgs/NetworkEdge; shape sequence.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_0a5fee23a1ef3a75299f92c499ef73bc22f39f15932a9c383d7406445cb89b0c",
        "minimum": 4,
        "maximum": 1652,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "result",
                "type": "clearpath_navigation_msgs/NetworkEdge",
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
                "element_minimum": 56,
            }
        ],
        "type": "clearpath_mission_manager_msgs/UpdateNetworkEdgesResponse",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsUpdateNetworkEdgesResponse)


class Ros1Clearpath_mission_manager_msgsUpdateNetworkMapRequest(Record):
    """@brief Own every original clearpath_mission_manager_msgs/UpdateNetworkMapRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("uuid", "name", "default_radius", "default_speed_limit")
    # @brief Original uuid: string; shape scalar.
    # @brief Original name: string; shape scalar.
    # @brief Original default_radius: float32; shape scalar.
    # @brief Original default_speed_limit: float32; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_527641cfaf5b2283be483c5fceb31d82cdcbe01dd9199343033b910c1864e012",
        "minimum": 16,
        "maximum": 400,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "uuid",
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "default_radius",
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
                "name": "default_speed_limit",
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
        "type": "clearpath_mission_manager_msgs/UpdateNetworkMapRequest",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsUpdateNetworkMapRequest)


class Ros1Clearpath_mission_manager_msgsUpdateNetworkMapResponse(Record):
    """@brief Own every original clearpath_mission_manager_msgs/UpdateNetworkMapResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("result",)
    # @brief Original result: clearpath_navigation_msgs/NetworkMap; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_1ea078b7625f7a8593ddbd8df3f158972cfcc973bb956f041d36e66734a03924",
        "minimum": 24,
        "maximum": 2608,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "result",
                "type": "clearpath_navigation_msgs/NetworkMap",
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
            }
        ],
        "type": "clearpath_mission_manager_msgs/UpdateNetworkMapResponse",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsUpdateNetworkMapResponse)


class Ros1Clearpath_mission_manager_msgsUpdateNetworkMissionRequest(Record):
    """@brief Own every original clearpath_mission_manager_msgs/UpdateNetworkMissionRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = (
        "uuid",
        "name",
        "onav_config",
        "waypoint_ids",
        "on_start_ids",
        "on_stop_ids",
        "return_to_dock_enabled",
        "return_to_dock_id",
        "return_to_dock_battery_level",
        "resume_mission_battery_level",
        "network_replan_enabled",
    )
    # @brief Original uuid: string; shape scalar.
    # @brief Original name: string; shape scalar.
    # @brief Original onav_config: string; shape scalar.
    # @brief Original waypoint_ids: string; shape sequence.
    # @brief Original on_start_ids: string; shape sequence.
    # @brief Original on_stop_ids: string; shape sequence.
    # @brief Original return_to_dock_enabled: bool; shape scalar.
    # @brief Original return_to_dock_id: string; shape scalar.
    # @brief Original return_to_dock_battery_level: float32; shape scalar.
    # @brief Original resume_mission_battery_level: float32; shape scalar.
    # @brief Original network_replan_enabled: bool; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_e3f246a1753021aee8ab1d6a7792a878fda832ee63d797b52ecabff917a41d95",
        "minimum": 38,
        "maximum": 2494,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "uuid",
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "onav_config",
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
                "name": "waypoint_ids",
                "type": "string",
                "array": "sequence",
                "count": 2,
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
                "name": "on_start_ids",
                "type": "string",
                "array": "sequence",
                "count": 2,
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
                "name": "on_stop_ids",
                "type": "string",
                "array": "sequence",
                "count": 2,
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
                "name": "return_to_dock_enabled",
                "type": "bool",
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
                "name": "return_to_dock_id",
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
                "name": "return_to_dock_battery_level",
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
                "name": "resume_mission_battery_level",
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
                "name": "network_replan_enabled",
                "type": "bool",
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
        "type": "clearpath_mission_manager_msgs/UpdateNetworkMissionRequest",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsUpdateNetworkMissionRequest)


class Ros1Clearpath_mission_manager_msgsUpdateNetworkMissionResponse(Record):
    """@brief Own every original clearpath_mission_manager_msgs/UpdateNetworkMissionResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("result",)
    # @brief Original result: clearpath_navigation_msgs/NetworkMission; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_223f3be41c5e6b365f0aed33952e2b53619fdb700b6249cd79cdb835a66317f3",
        "minimum": 54,
        "maximum": 13606,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "result",
                "type": "clearpath_navigation_msgs/NetworkMission",
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
                "element_minimum": 54,
            }
        ],
        "type": "clearpath_mission_manager_msgs/UpdateNetworkMissionResponse",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsUpdateNetworkMissionResponse)


class Ros1Clearpath_mission_manager_msgsUpdateNetworkPointRequest(Record):
    """@brief Own every original clearpath_mission_manager_msgs/UpdateNetworkPointRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("map_id", "uuid", "latitude", "longitude")
    # @brief Original map_id: string; shape scalar.
    # @brief Original uuid: string; shape scalar.
    # @brief Original latitude: float64; shape scalar.
    # @brief Original longitude: float64; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_ced6a1449a9a8f8c92cec59f865adbb3563e6840d992c977ca124e018668fd85",
        "minimum": 24,
        "maximum": 536,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "map_id",
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
                "name": "uuid",
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
                "name": "latitude",
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
                "name": "longitude",
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
        "type": "clearpath_mission_manager_msgs/UpdateNetworkPointRequest",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsUpdateNetworkPointRequest)


class Ros1Clearpath_mission_manager_msgsUpdateNetworkPointResponse(Record):
    """@brief Own every original clearpath_mission_manager_msgs/UpdateNetworkPointResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("result",)
    # @brief Original result: clearpath_navigation_msgs/NetworkPoint; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_7015a36b6124bdbb162c38c33a1a107431c3b2050cdd48d33707d4a27317d2ee",
        "minimum": 20,
        "maximum": 276,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "result",
                "type": "clearpath_navigation_msgs/NetworkPoint",
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
                "element_minimum": 20,
            }
        ],
        "type": "clearpath_mission_manager_msgs/UpdateNetworkPointResponse",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsUpdateNetworkPointResponse)


class Ros1Clearpath_mission_manager_msgsUpdateNetworkPointsRequest(Record):
    """@brief Own every original clearpath_mission_manager_msgs/UpdateNetworkPointsRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("map_id", "uuids", "latitudes", "longitudes")
    # @brief Original map_id: string; shape scalar.
    # @brief Original uuids: string; shape sequence.
    # @brief Original latitudes: float64; shape sequence.
    # @brief Original longitudes: float64; shape sequence.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_cd684b3f95616f37e2620228a24e41609f3c102f286797d0d49069ad6f8fb7d9",
        "minimum": 16,
        "maximum": 824,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "map_id",
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
                "name": "uuids",
                "type": "string",
                "array": "sequence",
                "count": 2,
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
                "name": "latitudes",
                "type": "float64",
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
                "element_minimum": 8,
            },
            {
                "name": "longitudes",
                "type": "float64",
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
                "element_minimum": 8,
            },
        ],
        "type": "clearpath_mission_manager_msgs/UpdateNetworkPointsRequest",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsUpdateNetworkPointsRequest)


class Ros1Clearpath_mission_manager_msgsUpdateNetworkPointsResponse(Record):
    """@brief Own every original clearpath_mission_manager_msgs/UpdateNetworkPointsResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("result",)
    # @brief Original result: clearpath_navigation_msgs/NetworkPoint; shape sequence.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_867e62ceec9cffd73f6bc697994998578c0d848b489c7fb1536ff29cc2ed740d",
        "minimum": 4,
        "maximum": 556,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "result",
                "type": "clearpath_navigation_msgs/NetworkPoint",
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
                "element_minimum": 20,
            }
        ],
        "type": "clearpath_mission_manager_msgs/UpdateNetworkPointsResponse",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsUpdateNetworkPointsResponse)


class Ros1Clearpath_mission_manager_msgsUpdatePointOfInterestRequest(Record):
    """@brief Own every original clearpath_mission_manager_msgs/UpdatePointOfInterestRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = (
        "uuid",
        "name",
        "latitude",
        "longitude",
        "elevation",
        "enable_heading",
        "heading",
        "tags",
        "custom_fields_json",
    )
    # @brief Original uuid: string; shape scalar.
    # @brief Original name: string; shape scalar.
    # @brief Original latitude: float64; shape scalar.
    # @brief Original longitude: float64; shape scalar.
    # @brief Original elevation: float64; shape scalar.
    # @brief Original enable_heading: bool; shape scalar.
    # @brief Original heading: float64; shape scalar.
    # @brief Original tags: string; shape sequence.
    # @brief Original custom_fields_json: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_e1dc3af1f989ce0787973a31ea9f5fc4e4be8c2a23cc73e258ceb5f5e503ff51",
        "minimum": 49,
        "maximum": 1209,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "uuid",
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "latitude",
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
                "name": "longitude",
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
                "name": "elevation",
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
                "name": "enable_heading",
                "type": "bool",
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
                "name": "heading",
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
                "name": "tags",
                "type": "string",
                "array": "sequence",
                "count": 2,
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
                "name": "custom_fields_json",
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
        "type": "clearpath_mission_manager_msgs/UpdatePointOfInterestRequest",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsUpdatePointOfInterestRequest)


class Ros1Clearpath_mission_manager_msgsUpdatePointOfInterestResponse(Record):
    """@brief Own every original clearpath_mission_manager_msgs/UpdatePointOfInterestResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("result",)
    # @brief Original result: clearpath_navigation_msgs/PointOfInterest; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_4bfcd0f85d450d766dc190745d8abdddb2320a4b8990e02cf1fce80aff304e05",
        "minimum": 49,
        "maximum": 1209,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "result",
                "type": "clearpath_navigation_msgs/PointOfInterest",
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
                "element_minimum": 49,
            }
        ],
        "type": "clearpath_mission_manager_msgs/UpdatePointOfInterestResponse",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsUpdatePointOfInterestResponse)


class Ros1Clearpath_mission_manager_msgsUpdateTaskRequest(Record):
    """@brief Own every original clearpath_mission_manager_msgs/UpdateTaskRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("uuid", "name", "action_server_name", "version", "floats", "strings", "allow_failure")
    # @brief Original uuid: string; shape scalar.
    # @brief Original name: string; shape scalar.
    # @brief Original action_server_name: string; shape scalar.
    # @brief Original version: string; shape scalar.
    # @brief Original floats: float64; shape sequence.
    # @brief Original strings: string; shape sequence.
    # @brief Original allow_failure: bool; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_a5844fedb72c67d92446e533cd49d4e18fb1cec1aecc522646fc0fb5834fde15",
        "minimum": 25,
        "maximum": 1457,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "uuid",
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "action_server_name",
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "floats",
                "type": "float64",
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
                "element_minimum": 8,
            },
            {
                "name": "strings",
                "type": "string",
                "array": "sequence",
                "count": 2,
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
                "name": "allow_failure",
                "type": "bool",
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
        "type": "clearpath_mission_manager_msgs/UpdateTaskRequest",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsUpdateTaskRequest)


class Ros1Clearpath_mission_manager_msgsUpdateTaskResponse(Record):
    """@brief Own every original clearpath_mission_manager_msgs/UpdateTaskResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("result",)
    # @brief Original result: clearpath_navigation_msgs/Task; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_9e2be799a216403d720d9aac572b8faf20a4cb81abd299fa6f845798cb64e86d",
        "minimum": 25,
        "maximum": 1457,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "result",
                "type": "clearpath_navigation_msgs/Task",
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
                "element_minimum": 25,
            }
        ],
        "type": "clearpath_mission_manager_msgs/UpdateTaskResponse",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsUpdateTaskResponse)


class Ros1Clearpath_mission_manager_msgsUpdateWaypointRequest(Record):
    """@brief Own every original clearpath_mission_manager_msgs/UpdateWaypointRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("uuid", "name", "latitude", "longitude", "heading", "position_tolerance", "yaw_tolerance", "task_ids")
    # @brief Original uuid: string; shape scalar.
    # @brief Original name: string; shape scalar.
    # @brief Original latitude: float64; shape scalar.
    # @brief Original longitude: float64; shape scalar.
    # @brief Original heading: float64; shape scalar.
    # @brief Original position_tolerance: float64; shape scalar.
    # @brief Original yaw_tolerance: float64; shape scalar.
    # @brief Original task_ids: string; shape sequence.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_79fb82878e0bc290e0975c281962165c5ea99dd8cf550607896633a9a2a3215a",
        "minimum": 52,
        "maximum": 956,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "uuid",
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "latitude",
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
                "name": "longitude",
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
                "name": "heading",
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
                "name": "position_tolerance",
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
                "name": "yaw_tolerance",
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
                "name": "task_ids",
                "type": "string",
                "array": "sequence",
                "count": 2,
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
        "type": "clearpath_mission_manager_msgs/UpdateWaypointRequest",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsUpdateWaypointRequest)


class Ros1Clearpath_mission_manager_msgsUpdateWaypointResponse(Record):
    """@brief Own every original clearpath_mission_manager_msgs/UpdateWaypointResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("result",)
    # @brief Original result: clearpath_navigation_msgs/Waypoint; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_7488513078df8a3a9b1b3bfcca432aee912b3f7bf028f9d772c67f91e26c850c",
        "minimum": 52,
        "maximum": 3350,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "result",
                "type": "clearpath_navigation_msgs/Waypoint",
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
                "element_minimum": 52,
            }
        ],
        "type": "clearpath_mission_manager_msgs/UpdateWaypointResponse",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsUpdateWaypointResponse)


class Ros1Clearpath_mission_manager_msgsValidateNetworkMapRequest(Record):
    """@brief Own every original clearpath_mission_manager_msgs/ValidateNetworkMapRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("uuid",)
    # @brief Original uuid: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_6924bb2508845236c9ef6c5ef4d71881eed30960550df58105c3b9e91fa45041",
        "minimum": 4,
        "maximum": 260,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "uuid",
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
        "type": "clearpath_mission_manager_msgs/ValidateNetworkMapRequest",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsValidateNetworkMapRequest)


class Ros1Clearpath_mission_manager_msgsValidateNetworkMapResponse(Record):
    """@brief Own every original clearpath_mission_manager_msgs/ValidateNetworkMapResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("state",)
    # @brief Original state: clearpath_mission_manager_msgs/NetworkMapState; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_c213df6efac189646a82ff69eb42d36321e72356308da44743cce592910c4bd8",
        "minimum": 14,
        "maximum": 790,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "state",
                "type": "clearpath_mission_manager_msgs/NetworkMapState",
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
                "element_minimum": 14,
            }
        ],
        "type": "clearpath_mission_manager_msgs/ValidateNetworkMapResponse",
    }


REGISTRY.add(Ros1Clearpath_mission_manager_msgsValidateNetworkMapResponse)


class Ros1Clearpath_mission_scheduler_msgsCloneScheduleRequest(Record):
    """@brief Own every original clearpath_mission_scheduler_msgs/CloneScheduleRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("uuid", "new_name")
    # @brief Original uuid: string; shape scalar.
    # @brief Original new_name: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_8387bc2882c59ffb6124127d6a5dd54bc7e2685fd5a0aa3453389612e50b3216",
        "minimum": 8,
        "maximum": 520,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "uuid",
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
                "name": "new_name",
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
        "type": "clearpath_mission_scheduler_msgs/CloneScheduleRequest",
    }


REGISTRY.add(Ros1Clearpath_mission_scheduler_msgsCloneScheduleRequest)


class Ros1Clearpath_mission_scheduler_msgsCloneScheduleResponse(Record):
    """@brief Own every original clearpath_mission_scheduler_msgs/CloneScheduleResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("schedule",)
    # @brief Original schedule: clearpath_mission_scheduler_msgs/Schedule; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_2245dcf9c323b09f914e5ff952fadd117c5ae6a3c62e31d2b7faa4b723be27a0",
        "minimum": 40,
        "maximum": 944,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "schedule",
                "type": "clearpath_mission_scheduler_msgs/Schedule",
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
                "element_minimum": 40,
            }
        ],
        "type": "clearpath_mission_scheduler_msgs/CloneScheduleResponse",
    }


REGISTRY.add(Ros1Clearpath_mission_scheduler_msgsCloneScheduleResponse)


class Ros1Clearpath_mission_scheduler_msgsCreateScheduleRequest(Record):
    """@brief Own every original clearpath_mission_scheduler_msgs/CreateScheduleRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = (
        "name",
        "start_time",
        "mode",
        "loop_repeats",
        "loop_interval",
        "mission_ids",
        "min_battery",
        "timeout",
        "enabled",
    )
    # @brief Original name: string; shape scalar.
    # @brief Original start_time: clearpath_mission_scheduler_msgs/UtcTime; shape scalar.
    # @brief Original mode: uint8; shape scalar.
    # @brief Original loop_repeats: uint8; shape scalar.
    # @brief Original loop_interval: duration; shape scalar.
    # @brief Original mission_ids: string; shape sequence.
    # @brief Original min_battery: float32; shape scalar.
    # @brief Original timeout: duration; shape scalar.
    # @brief Original enabled: bool; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_5c2188fde6641a0d1d38f8c03f09f2feef33a0c6938310fb2233adef32719b53",
        "minimum": 36,
        "maximum": 684,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "start_time",
                "type": "clearpath_mission_scheduler_msgs/UtcTime",
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
                "element_minimum": 5,
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
                "name": "loop_repeats",
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
                "name": "loop_interval",
                "type": "duration",
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
                "name": "mission_ids",
                "type": "string",
                "array": "sequence",
                "count": 2,
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
                "name": "min_battery",
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
                "name": "timeout",
                "type": "duration",
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
        "type": "clearpath_mission_scheduler_msgs/CreateScheduleRequest",
    }


REGISTRY.add(Ros1Clearpath_mission_scheduler_msgsCreateScheduleRequest)


class Ros1Clearpath_mission_scheduler_msgsCreateScheduleResponse(Record):
    """@brief Own every original clearpath_mission_scheduler_msgs/CreateScheduleResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("result",)
    # @brief Original result: clearpath_mission_scheduler_msgs/Schedule; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_9859bffd0fb72f93e6692c733cf9160af07d648b317f8bf9fdc34f6a7dc7b24c",
        "minimum": 40,
        "maximum": 944,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "result",
                "type": "clearpath_mission_scheduler_msgs/Schedule",
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
                "element_minimum": 40,
            }
        ],
        "type": "clearpath_mission_scheduler_msgs/CreateScheduleResponse",
    }


REGISTRY.add(Ros1Clearpath_mission_scheduler_msgsCreateScheduleResponse)


class Ros1Clearpath_mission_scheduler_msgsEnableScheduleRequest(Record):
    """@brief Own every original clearpath_mission_scheduler_msgs/EnableScheduleRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("uuid", "enable")
    # @brief Original uuid: string; shape scalar.
    # @brief Original enable: bool; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_26ad79f2ef123281877514e3bc65268a180f01441229ccc08c907bc76f16e953",
        "minimum": 5,
        "maximum": 261,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "uuid",
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
                "name": "enable",
                "type": "bool",
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
        "type": "clearpath_mission_scheduler_msgs/EnableScheduleRequest",
    }


REGISTRY.add(Ros1Clearpath_mission_scheduler_msgsEnableScheduleRequest)


class Ros1Clearpath_mission_scheduler_msgsEnableScheduleResponse(Record):
    """@brief Own every original clearpath_mission_scheduler_msgs/EnableScheduleResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("ok",)
    # @brief Original ok: bool; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_4ca5afdf4ac83e2d03d94b02e3bd156bfaec1835922a6f3d719ea700251324b2",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "ok",
                "type": "bool",
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
        "type": "clearpath_mission_scheduler_msgs/EnableScheduleResponse",
    }


REGISTRY.add(Ros1Clearpath_mission_scheduler_msgsEnableScheduleResponse)


class Ros1Clearpath_mission_scheduler_msgsExportDataRequest(Record):
    """@brief Own every original clearpath_mission_scheduler_msgs/ExportDataRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ()
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_8ad06898b5c892ea73d57aa1db2f7b8b0a8e435d05c8a614c6d76d08ac598c54",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [],
        "type": "clearpath_mission_scheduler_msgs/ExportDataRequest",
    }


REGISTRY.add(Ros1Clearpath_mission_scheduler_msgsExportDataRequest)


class Ros1Clearpath_mission_scheduler_msgsExportDataResponse(Record):
    """@brief Own every original clearpath_mission_scheduler_msgs/ExportDataResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("data",)
    # @brief Original data: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_b3ee9c9b3c93a5e1c1df96c51d33fc883713fc6dc1657e6c9c8a567be368847b",
        "minimum": 4,
        "maximum": 260,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
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
                "raw": False,
                "element_minimum": 4,
            }
        ],
        "type": "clearpath_mission_scheduler_msgs/ExportDataResponse",
    }


REGISTRY.add(Ros1Clearpath_mission_scheduler_msgsExportDataResponse)


class Ros1Clearpath_mission_scheduler_msgsGetAllSchedulesRequest(Record):
    """@brief Own every original clearpath_mission_scheduler_msgs/GetAllSchedulesRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ()
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_cdf67fd2aa2ebffb723416c55f3aff5700dfad53b2464ba446fd115342da54c1",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [],
        "type": "clearpath_mission_scheduler_msgs/GetAllSchedulesRequest",
    }


REGISTRY.add(Ros1Clearpath_mission_scheduler_msgsGetAllSchedulesRequest)


class Ros1Clearpath_mission_scheduler_msgsGetAllSchedulesResponse(Record):
    """@brief Own every original clearpath_mission_scheduler_msgs/GetAllSchedulesResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("schedules",)
    # @brief Original schedules: clearpath_mission_scheduler_msgs/Schedule; shape sequence.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_79b76d2badd9a5a0ab76421b3f992b0c90552d8c879c2a4727966ca749014834",
        "minimum": 4,
        "maximum": 1892,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "schedules",
                "type": "clearpath_mission_scheduler_msgs/Schedule",
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
                "element_minimum": 40,
            }
        ],
        "type": "clearpath_mission_scheduler_msgs/GetAllSchedulesResponse",
    }


REGISTRY.add(Ros1Clearpath_mission_scheduler_msgsGetAllSchedulesResponse)


class Ros1Clearpath_mission_scheduler_msgsGetNextScheduleRequest(Record):
    """@brief Own every original clearpath_mission_scheduler_msgs/GetNextScheduleRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ()
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_3c10499a950f4c7431e738bf8e1d56a6407f06eec6b570b10ef5532f67ad0e31",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [],
        "type": "clearpath_mission_scheduler_msgs/GetNextScheduleRequest",
    }


REGISTRY.add(Ros1Clearpath_mission_scheduler_msgsGetNextScheduleRequest)


class Ros1Clearpath_mission_scheduler_msgsGetNextScheduleResponse(Record):
    """@brief Own every original clearpath_mission_scheduler_msgs/GetNextScheduleResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("uuid", "time_to_start")
    # @brief Original uuid: string; shape scalar.
    # @brief Original time_to_start: duration; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_eb0d25c6d02bf163d55bf197402c0818a96089948b79be7747bdb4a9d97089fa",
        "minimum": 12,
        "maximum": 268,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "uuid",
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
                "name": "time_to_start",
                "type": "duration",
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
        "type": "clearpath_mission_scheduler_msgs/GetNextScheduleResponse",
    }


REGISTRY.add(Ros1Clearpath_mission_scheduler_msgsGetNextScheduleResponse)


class Ros1Clearpath_mission_scheduler_msgsGetScheduleRequest(Record):
    """@brief Own every original clearpath_mission_scheduler_msgs/GetScheduleRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("uuid",)
    # @brief Original uuid: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_631d2966a939673a63824e4aab11b1dc1b7f6df6446e64307151b9826264800a",
        "minimum": 4,
        "maximum": 260,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "uuid",
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
        "type": "clearpath_mission_scheduler_msgs/GetScheduleRequest",
    }


REGISTRY.add(Ros1Clearpath_mission_scheduler_msgsGetScheduleRequest)


class Ros1Clearpath_mission_scheduler_msgsGetScheduleResponse(Record):
    """@brief Own every original clearpath_mission_scheduler_msgs/GetScheduleResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("schedule",)
    # @brief Original schedule: clearpath_mission_scheduler_msgs/Schedule; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_c731f817524bcf55c9efd68faeb390dc88a160f2efb2fa472d81a8aaff2cd970",
        "minimum": 40,
        "maximum": 944,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "schedule",
                "type": "clearpath_mission_scheduler_msgs/Schedule",
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
                "element_minimum": 40,
            }
        ],
        "type": "clearpath_mission_scheduler_msgs/GetScheduleResponse",
    }


REGISTRY.add(Ros1Clearpath_mission_scheduler_msgsGetScheduleResponse)


class Ros1Clearpath_mission_scheduler_msgsImportDataRequest(Record):
    """@brief Own every original clearpath_mission_scheduler_msgs/ImportDataRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("data",)
    # @brief Original data: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_7c1b0e75e3d4dacd5f9fc3d82b7ddab8629686215f1c52d7be83c802a1316561",
        "minimum": 4,
        "maximum": 260,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
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
                "raw": False,
                "element_minimum": 4,
            }
        ],
        "type": "clearpath_mission_scheduler_msgs/ImportDataRequest",
    }


REGISTRY.add(Ros1Clearpath_mission_scheduler_msgsImportDataRequest)


class Ros1Clearpath_mission_scheduler_msgsImportDataResponse(Record):
    """@brief Own every original clearpath_mission_scheduler_msgs/ImportDataResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("state",)
    # @brief Original state: clearpath_mission_scheduler_msgs/StorageState; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_2a5e62341836cc9171f7c292463a116fc84ddb7b2a8600107e3c5fb2ce5a004f",
        "minimum": 4,
        "maximum": 1892,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "state",
                "type": "clearpath_mission_scheduler_msgs/StorageState",
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
            }
        ],
        "type": "clearpath_mission_scheduler_msgs/ImportDataResponse",
    }


REGISTRY.add(Ros1Clearpath_mission_scheduler_msgsImportDataResponse)


class Ros1Clearpath_mission_scheduler_msgsUpdateScheduleRequest(Record):
    """@brief Own every original clearpath_mission_scheduler_msgs/UpdateScheduleRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = (
        "uuid",
        "name",
        "start_time",
        "mode",
        "loop_repeats",
        "loop_interval",
        "mission_ids",
        "min_battery",
        "timeout",
        "enabled",
    )
    # @brief Original uuid: string; shape scalar.
    # @brief Original name: string; shape scalar.
    # @brief Original start_time: clearpath_mission_scheduler_msgs/UtcTime; shape scalar.
    # @brief Original mode: uint8; shape scalar.
    # @brief Original loop_repeats: uint8; shape scalar.
    # @brief Original loop_interval: duration; shape scalar.
    # @brief Original mission_ids: string; shape sequence.
    # @brief Original min_battery: float32; shape scalar.
    # @brief Original timeout: duration; shape scalar.
    # @brief Original enabled: bool; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_24baafba1e1af2d47b61f21aa7f2c5795f298477a90181b97e3d942f8da25b8f",
        "minimum": 40,
        "maximum": 944,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "uuid",
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "start_time",
                "type": "clearpath_mission_scheduler_msgs/UtcTime",
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
                "element_minimum": 5,
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
                "name": "loop_repeats",
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
                "name": "loop_interval",
                "type": "duration",
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
                "name": "mission_ids",
                "type": "string",
                "array": "sequence",
                "count": 2,
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
                "name": "min_battery",
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
                "name": "timeout",
                "type": "duration",
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
        "type": "clearpath_mission_scheduler_msgs/UpdateScheduleRequest",
    }


REGISTRY.add(Ros1Clearpath_mission_scheduler_msgsUpdateScheduleRequest)


class Ros1Clearpath_mission_scheduler_msgsUpdateScheduleResponse(Record):
    """@brief Own every original clearpath_mission_scheduler_msgs/UpdateScheduleResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("result",)
    # @brief Original result: clearpath_mission_scheduler_msgs/Schedule; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_9b32778480e054c6aa5d6100fab9bc44efde5fec5456e05af13618e53b410853",
        "minimum": 40,
        "maximum": 944,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "result",
                "type": "clearpath_mission_scheduler_msgs/Schedule",
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
                "element_minimum": 40,
            }
        ],
        "type": "clearpath_mission_scheduler_msgs/UpdateScheduleResponse",
    }


REGISTRY.add(Ros1Clearpath_mission_scheduler_msgsUpdateScheduleResponse)


class Ros1Clearpath_navigation_msgsAutonomyTaskSrvRequest(Record):
    """@brief Own every original clearpath_navigation_msgs/AutonomyTaskSrvRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("version", "floats", "strings")
    # @brief Original version: string; shape scalar.
    # @brief Original floats: float64; shape sequence.
    # @brief Original strings: string; shape sequence.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_e8a7610c646bb07a6de057f8882dd431405a8ce00f8f5ee11679a383d73cb9d6",
        "minimum": 12,
        "maximum": 804,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "floats",
                "type": "float64",
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
                "element_minimum": 8,
            },
            {
                "name": "strings",
                "type": "string",
                "array": "sequence",
                "count": 2,
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
        "type": "clearpath_navigation_msgs/AutonomyTaskSrvRequest",
    }


REGISTRY.add(Ros1Clearpath_navigation_msgsAutonomyTaskSrvRequest)


class Ros1Clearpath_navigation_msgsAutonomyTaskSrvResponse(Record):
    """@brief Own every original clearpath_navigation_msgs/AutonomyTaskSrvResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("success", "status")
    # @brief Original success: bool; shape scalar.
    # @brief Original status: int8; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_f1c6ef16107712804760b090620b57e8bb60dd19ccfbb516630ed916acf42e8c",
        "minimum": 2,
        "maximum": 2,
        "semantics": "",
        "ros_version": 1,
        "constants": {
            "NOGPS": 0,
            "NOHEADING_RTK": 1,
            "ROBOT_IS_MOVING": 2,
            "ERROR": 3,
            "SERVICE_NOT_AVAILABLE": 4,
            "PENDING": 5,
            "COMPLETED": 6,
        },
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
                "raw": False,
                "element_minimum": 1,
            },
        ],
        "type": "clearpath_navigation_msgs/AutonomyTaskSrvResponse",
    }


REGISTRY.add(Ros1Clearpath_navigation_msgsAutonomyTaskSrvResponse)


class Ros1Clearpath_navigation_msgsSetDelayCompensationRequest(Record):
    """@brief Own every original clearpath_navigation_msgs/SetDelayCompensationRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("enable_delay_compensation", "delay")
    # @brief Original enable_delay_compensation: bool; shape scalar.
    # @brief Original delay: uint16; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_ec8f99417bf6bf770da1acdebb86acc69ec41b9dd523e235688c4ccc0fff453e",
        "minimum": 3,
        "maximum": 3,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "enable_delay_compensation",
                "type": "bool",
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
                "name": "delay",
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
        ],
        "type": "clearpath_navigation_msgs/SetDelayCompensationRequest",
    }


REGISTRY.add(Ros1Clearpath_navigation_msgsSetDelayCompensationRequest)


class Ros1Clearpath_navigation_msgsSetDelayCompensationResponse(Record):
    """@brief Own every original clearpath_navigation_msgs/SetDelayCompensationResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("success", "message")
    # @brief Original success: bool; shape scalar.
    # @brief Original message: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_9fc1ca659396456af96f2abb819cec8217992f10b6dd3b0e0f94baf37e70e6bc",
        "minimum": 5,
        "maximum": 261,
        "semantics": "",
        "ros_version": 1,
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
        "type": "clearpath_navigation_msgs/SetDelayCompensationResponse",
    }


REGISTRY.add(Ros1Clearpath_navigation_msgsSetDelayCompensationResponse)


class Ros1Clearpath_navigation_msgsSetPathShifterRequest(Record):
    """@brief Own every original clearpath_navigation_msgs/SetPathShifterRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("enable_path_shifter", "path_shift_offset", "path_shift_time")
    # @brief Original enable_path_shifter: bool; shape scalar.
    # @brief Original path_shift_offset: float32; shape scalar.
    # @brief Original path_shift_time: float32; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_66a02e58f180dfdb2a32bd6162bf329004e3dd5a91232507dffc15fe4ba0bd6c",
        "minimum": 9,
        "maximum": 9,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "enable_path_shifter",
                "type": "bool",
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
                "name": "path_shift_offset",
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
                "name": "path_shift_time",
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
        "type": "clearpath_navigation_msgs/SetPathShifterRequest",
    }


REGISTRY.add(Ros1Clearpath_navigation_msgsSetPathShifterRequest)


class Ros1Clearpath_navigation_msgsSetPathShifterResponse(Record):
    """@brief Own every original clearpath_navigation_msgs/SetPathShifterResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("success", "message")
    # @brief Original success: bool; shape scalar.
    # @brief Original message: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_64e3a6c0fe9c4303436ad8400fb0c5a74b47b226162648e2dad5e19db256ac2e",
        "minimum": 5,
        "maximum": 261,
        "semantics": "",
        "ros_version": 1,
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
        "type": "clearpath_navigation_msgs/SetPathShifterResponse",
    }


REGISTRY.add(Ros1Clearpath_navigation_msgsSetPathShifterResponse)


class Ros1Clearpath_navigation_msgsSetPathSmootherRequest(Record):
    """@brief Own every original clearpath_navigation_msgs/SetPathSmootherRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("enable_path_smoother", "turn_radius", "step_size")
    # @brief Original enable_path_smoother: bool; shape scalar.
    # @brief Original turn_radius: float32; shape scalar.
    # @brief Original step_size: float32; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_13ca562ab68dfd839bd370ac19cd4eec02c7a855876b5e9ec6e5b00f968b111f",
        "minimum": 9,
        "maximum": 9,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "enable_path_smoother",
                "type": "bool",
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
                "name": "turn_radius",
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
                "name": "step_size",
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
        "type": "clearpath_navigation_msgs/SetPathSmootherRequest",
    }


REGISTRY.add(Ros1Clearpath_navigation_msgsSetPathSmootherRequest)


class Ros1Clearpath_navigation_msgsSetPathSmootherResponse(Record):
    """@brief Own every original clearpath_navigation_msgs/SetPathSmootherResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("success", "message")
    # @brief Original success: bool; shape scalar.
    # @brief Original message: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_4317fa93c867dc6ef5a4c5bdaece4bdad2ab9d888d707202f65a23d15ce8f0d1",
        "minimum": 5,
        "maximum": 261,
        "semantics": "",
        "ros_version": 1,
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
        "type": "clearpath_navigation_msgs/SetPathSmootherResponse",
    }


REGISTRY.add(Ros1Clearpath_navigation_msgsSetPathSmootherResponse)


class Ros1Clearpath_navigation_msgsSetStopDistanceRequest(Record):
    """@brief Own every original clearpath_navigation_msgs/SetStopDistanceRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("enable_stop_distance", "stop_distance")
    # @brief Original enable_stop_distance: bool; shape scalar.
    # @brief Original stop_distance: float32; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_66c986cb752a0c4990e08b616557fc67e8400f3f4a38a5603d6e5cd5c5b69b12",
        "minimum": 5,
        "maximum": 5,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "enable_stop_distance",
                "type": "bool",
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
                "name": "stop_distance",
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
        "type": "clearpath_navigation_msgs/SetStopDistanceRequest",
    }


REGISTRY.add(Ros1Clearpath_navigation_msgsSetStopDistanceRequest)


class Ros1Clearpath_navigation_msgsSetStopDistanceResponse(Record):
    """@brief Own every original clearpath_navigation_msgs/SetStopDistanceResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("success", "message")
    # @brief Original success: bool; shape scalar.
    # @brief Original message: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_9bb0632e92b3f8733eec16b7915dea0f19749b7020466e9a9391365f87d24d19",
        "minimum": 5,
        "maximum": 261,
        "semantics": "",
        "ros_version": 1,
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
        "type": "clearpath_navigation_msgs/SetStopDistanceResponse",
    }


REGISTRY.add(Ros1Clearpath_navigation_msgsSetStopDistanceResponse)


class Ros1Clearpath_safety_msgsAddCommunicationWatchdogRequest(Record):
    """@brief Own every original clearpath_safety_msgs/AddCommunicationWatchdogRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("config",)
    # @brief Original config: clearpath_safety_msgs/WatchdogConfigCommunication; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_9a1cdf2a02fa873143b12cf9225980c0fd4ba681c8c600fcd11705503a85834d",
        "minimum": 33,
        "maximum": 1961,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "config",
                "type": "clearpath_safety_msgs/WatchdogConfigCommunication",
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
                "element_minimum": 33,
            }
        ],
        "type": "clearpath_safety_msgs/AddCommunicationWatchdogRequest",
    }


REGISTRY.add(Ros1Clearpath_safety_msgsAddCommunicationWatchdogRequest)


class Ros1Clearpath_safety_msgsAddCommunicationWatchdogResponse(Record):
    """@brief Own every original clearpath_safety_msgs/AddCommunicationWatchdogResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("success",)
    # @brief Original success: bool; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_cc124f08c384c233c2239b1c5cd634d70becf8ed0f556aaeec16011c2e09f159",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "ros_version": 1,
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
            }
        ],
        "type": "clearpath_safety_msgs/AddCommunicationWatchdogResponse",
    }


REGISTRY.add(Ros1Clearpath_safety_msgsAddCommunicationWatchdogResponse)


class Ros1Clearpath_safety_msgsAddHeartbeatWatchdogRequest(Record):
    """@brief Own every original clearpath_safety_msgs/AddHeartbeatWatchdogRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("config",)
    # @brief Original config: clearpath_safety_msgs/WatchdogConfigHeartbeat; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_58a8482be436683e3b1def8c5cfe6b974e63ce9e129d3de2c88531a3112580b4",
        "minimum": 25,
        "maximum": 1441,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "config",
                "type": "clearpath_safety_msgs/WatchdogConfigHeartbeat",
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
                "element_minimum": 25,
            }
        ],
        "type": "clearpath_safety_msgs/AddHeartbeatWatchdogRequest",
    }


REGISTRY.add(Ros1Clearpath_safety_msgsAddHeartbeatWatchdogRequest)


class Ros1Clearpath_safety_msgsAddHeartbeatWatchdogResponse(Record):
    """@brief Own every original clearpath_safety_msgs/AddHeartbeatWatchdogResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("success",)
    # @brief Original success: bool; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_4c15aaf99a3ceab29b595b76df4d641282de57182511447b584126119265b7ce",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "ros_version": 1,
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
            }
        ],
        "type": "clearpath_safety_msgs/AddHeartbeatWatchdogResponse",
    }


REGISTRY.add(Ros1Clearpath_safety_msgsAddHeartbeatWatchdogResponse)


class Ros1Clearpath_safety_msgsAddInclinationWatchdogRequest(Record):
    """@brief Own every original clearpath_safety_msgs/AddInclinationWatchdogRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("config",)
    # @brief Original config: clearpath_safety_msgs/WatchdogConfigInclination; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_1463748d4c746f08f9347ca0d94fc3860009fff7de2b24862d1fc2b35c328470",
        "minimum": 33,
        "maximum": 1449,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "config",
                "type": "clearpath_safety_msgs/WatchdogConfigInclination",
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
                "element_minimum": 33,
            }
        ],
        "type": "clearpath_safety_msgs/AddInclinationWatchdogRequest",
    }


REGISTRY.add(Ros1Clearpath_safety_msgsAddInclinationWatchdogRequest)


class Ros1Clearpath_safety_msgsAddInclinationWatchdogResponse(Record):
    """@brief Own every original clearpath_safety_msgs/AddInclinationWatchdogResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("success",)
    # @brief Original success: bool; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_366c7d76dcd82a989d1dd1453d5441e57ff229795b6f978a6a8aa1b1f00cf2d2",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "ros_version": 1,
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
            }
        ],
        "type": "clearpath_safety_msgs/AddInclinationWatchdogResponse",
    }


REGISTRY.add(Ros1Clearpath_safety_msgsAddInclinationWatchdogResponse)


class Ros1Clearpath_safety_msgsAddNodeStatusWatchdogRequest(Record):
    """@brief Own every original clearpath_safety_msgs/AddNodeStatusWatchdogRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("config",)
    # @brief Original config: clearpath_safety_msgs/WatchdogConfigNodeStatus; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_418c383184ef1e70c02fabf773dd943f5afc14b581ba07253eb9c285d0ba7836",
        "minimum": 22,
        "maximum": 1438,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "config",
                "type": "clearpath_safety_msgs/WatchdogConfigNodeStatus",
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
                "element_minimum": 22,
            }
        ],
        "type": "clearpath_safety_msgs/AddNodeStatusWatchdogRequest",
    }


REGISTRY.add(Ros1Clearpath_safety_msgsAddNodeStatusWatchdogRequest)


class Ros1Clearpath_safety_msgsAddNodeStatusWatchdogResponse(Record):
    """@brief Own every original clearpath_safety_msgs/AddNodeStatusWatchdogResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("success",)
    # @brief Original success: bool; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_08c4dd8bd289e405d27a981707ebc959c5c786640ac50c6bbeda628245644cfc",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "ros_version": 1,
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
            }
        ],
        "type": "clearpath_safety_msgs/AddNodeStatusWatchdogResponse",
    }


REGISTRY.add(Ros1Clearpath_safety_msgsAddNodeStatusWatchdogResponse)


class Ros1Clearpath_safety_msgsAddNodeletStatusWatchdogRequest(Record):
    """@brief Own every original clearpath_safety_msgs/AddNodeletStatusWatchdogRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("config",)
    # @brief Original config: clearpath_safety_msgs/WatchdogConfigNodeletStatus; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_9d7b4e34a74a50528b1e2c61db3fc36eef9d2e93ccd03815ed8c770526070e8c",
        "minimum": 26,
        "maximum": 1698,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "config",
                "type": "clearpath_safety_msgs/WatchdogConfigNodeletStatus",
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
                "element_minimum": 26,
            }
        ],
        "type": "clearpath_safety_msgs/AddNodeletStatusWatchdogRequest",
    }


REGISTRY.add(Ros1Clearpath_safety_msgsAddNodeletStatusWatchdogRequest)


class Ros1Clearpath_safety_msgsAddNodeletStatusWatchdogResponse(Record):
    """@brief Own every original clearpath_safety_msgs/AddNodeletStatusWatchdogResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("success",)
    # @brief Original success: bool; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_e1f797bf8282c0cc3cdfb105c0545438a3ac9f12e7027231001ed87b2e62dba6",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "ros_version": 1,
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
            }
        ],
        "type": "clearpath_safety_msgs/AddNodeletStatusWatchdogResponse",
    }


REGISTRY.add(Ros1Clearpath_safety_msgsAddNodeletStatusWatchdogResponse)


class Ros1Clearpath_safety_msgsAddNumPointsWatchdogRequest(Record):
    """@brief Own every original clearpath_safety_msgs/AddNumPointsWatchdogRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("config",)
    # @brief Original config: clearpath_safety_msgs/WatchdogConfigNumPoints; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_4303f93fc59680bbd04437b832060a2f2d3f93fe4cb06c5fb42ebba9736f1f73",
        "minimum": 25,
        "maximum": 1441,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "config",
                "type": "clearpath_safety_msgs/WatchdogConfigNumPoints",
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
                "element_minimum": 25,
            }
        ],
        "type": "clearpath_safety_msgs/AddNumPointsWatchdogRequest",
    }


REGISTRY.add(Ros1Clearpath_safety_msgsAddNumPointsWatchdogRequest)


class Ros1Clearpath_safety_msgsAddNumPointsWatchdogResponse(Record):
    """@brief Own every original clearpath_safety_msgs/AddNumPointsWatchdogResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("success",)
    # @brief Original success: bool; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_d51e4b3bfb779b244d3f2bb6979db7bb8144de7c5fafc9eef0b49a4c1f8030ef",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "ros_version": 1,
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
            }
        ],
        "type": "clearpath_safety_msgs/AddNumPointsWatchdogResponse",
    }


REGISTRY.add(Ros1Clearpath_safety_msgsAddNumPointsWatchdogResponse)


class Ros1Clearpath_safety_msgsAddOdomCovarianceWatchdogRequest(Record):
    """@brief Own every original clearpath_safety_msgs/AddOdomCovarianceWatchdogRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("config",)
    # @brief Original config: clearpath_safety_msgs/WatchdogConfigOdomCovariance; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_807e8d5088be66039e0e9264f239a0a8f1ca0f067cb2c7173e62b1a5ff9d49b7",
        "minimum": 33,
        "maximum": 1449,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "config",
                "type": "clearpath_safety_msgs/WatchdogConfigOdomCovariance",
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
                "element_minimum": 33,
            }
        ],
        "type": "clearpath_safety_msgs/AddOdomCovarianceWatchdogRequest",
    }


REGISTRY.add(Ros1Clearpath_safety_msgsAddOdomCovarianceWatchdogRequest)


class Ros1Clearpath_safety_msgsAddOdomCovarianceWatchdogResponse(Record):
    """@brief Own every original clearpath_safety_msgs/AddOdomCovarianceWatchdogResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("success",)
    # @brief Original success: bool; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_2af9a9a057aa4368b076c14bfcef6e7b0bae09a5727ab0e0ad79a6f2c5a21b06",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "ros_version": 1,
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
            }
        ],
        "type": "clearpath_safety_msgs/AddOdomCovarianceWatchdogResponse",
    }


REGISTRY.add(Ros1Clearpath_safety_msgsAddOdomCovarianceWatchdogResponse)


class Ros1Clearpath_safety_msgsAddRtkFixWatchdogRequest(Record):
    """@brief Own every original clearpath_safety_msgs/AddRtkFixWatchdogRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("config",)
    # @brief Original config: clearpath_safety_msgs/WatchdogConfigRtkFix; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_debc849b5738a49920e4adea8e76f75a55f071c2d971a048fbd639c5b3ababe4",
        "minimum": 27,
        "maximum": 1443,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "config",
                "type": "clearpath_safety_msgs/WatchdogConfigRtkFix",
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
                "element_minimum": 27,
            }
        ],
        "type": "clearpath_safety_msgs/AddRtkFixWatchdogRequest",
    }


REGISTRY.add(Ros1Clearpath_safety_msgsAddRtkFixWatchdogRequest)


class Ros1Clearpath_safety_msgsAddRtkFixWatchdogResponse(Record):
    """@brief Own every original clearpath_safety_msgs/AddRtkFixWatchdogResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("success",)
    # @brief Original success: bool; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_1f680adab1e07f42b3d76200810f330ad5e70dcf350484bf5aca0f4dbd32c535",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "ros_version": 1,
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
            }
        ],
        "type": "clearpath_safety_msgs/AddRtkFixWatchdogResponse",
    }


REGISTRY.add(Ros1Clearpath_safety_msgsAddRtkFixWatchdogResponse)


class Ros1Clearpath_safety_msgsAddTopicDataWatchdogRequest(Record):
    """@brief Own every original clearpath_safety_msgs/AddTopicDataWatchdogRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("config",)
    # @brief Original config: clearpath_safety_msgs/WatchdogConfigTopicData; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_0bdeed1e711b9da18829c30d7499ea3eda6afa5538db74d2bb0e88385b0bc1fd",
        "minimum": 25,
        "maximum": 1441,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "config",
                "type": "clearpath_safety_msgs/WatchdogConfigTopicData",
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
                "element_minimum": 25,
            }
        ],
        "type": "clearpath_safety_msgs/AddTopicDataWatchdogRequest",
    }


REGISTRY.add(Ros1Clearpath_safety_msgsAddTopicDataWatchdogRequest)


class Ros1Clearpath_safety_msgsAddTopicDataWatchdogResponse(Record):
    """@brief Own every original clearpath_safety_msgs/AddTopicDataWatchdogResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("success",)
    # @brief Original success: bool; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_9fea6483689717396e22f81e995067ccb427a3a2ac18b48ddd91b72246e8621d",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "ros_version": 1,
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
            }
        ],
        "type": "clearpath_safety_msgs/AddTopicDataWatchdogResponse",
    }


REGISTRY.add(Ros1Clearpath_safety_msgsAddTopicDataWatchdogResponse)


class Ros1Clearpath_safety_msgsRemoveWatchdogRequest(Record):
    """@brief Own every original clearpath_safety_msgs/RemoveWatchdogRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("name",)
    # @brief Original name: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_87a214c09e13bf5a9627f6be0b7d59c473fdbb7680791e4f96a580253f820a45",
        "minimum": 4,
        "maximum": 132,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
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
                "raw": False,
                "element_minimum": 4,
            }
        ],
        "type": "clearpath_safety_msgs/RemoveWatchdogRequest",
    }


REGISTRY.add(Ros1Clearpath_safety_msgsRemoveWatchdogRequest)


class Ros1Clearpath_safety_msgsRemoveWatchdogResponse(Record):
    """@brief Own every original clearpath_safety_msgs/RemoveWatchdogResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("success",)
    # @brief Original success: bool; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_cb5e504b035471d2b78f9574fa83b212689a4e68f197881aa787bfb13defe8a1",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "ros_version": 1,
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
            }
        ],
        "type": "clearpath_safety_msgs/RemoveWatchdogResponse",
    }


REGISTRY.add(Ros1Clearpath_safety_msgsRemoveWatchdogResponse)


class Ros1Clearpath_safety_msgsUpdateCommunicationWatchdogRequest(Record):
    """@brief Own every original clearpath_safety_msgs/UpdateCommunicationWatchdogRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("new_config", "current_name")
    # @brief Original new_config: clearpath_safety_msgs/WatchdogConfigCommunication; shape scalar.
    # @brief Original current_name: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_28311849018f0a63f18add101832a0f70fe8a3cb50455b598f9a4fdea9f0a172",
        "minimum": 37,
        "maximum": 2221,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "new_config",
                "type": "clearpath_safety_msgs/WatchdogConfigCommunication",
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
                "element_minimum": 33,
            },
            {
                "name": "current_name",
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
        "type": "clearpath_safety_msgs/UpdateCommunicationWatchdogRequest",
    }


REGISTRY.add(Ros1Clearpath_safety_msgsUpdateCommunicationWatchdogRequest)


class Ros1Clearpath_safety_msgsUpdateCommunicationWatchdogResponse(Record):
    """@brief Own every original clearpath_safety_msgs/UpdateCommunicationWatchdogResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("success",)
    # @brief Original success: bool; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_16bf85e3159ebef01b8aa74c8b2dd8bd4037ea3b98723ce5feeaadaee1086f08",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "ros_version": 1,
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
            }
        ],
        "type": "clearpath_safety_msgs/UpdateCommunicationWatchdogResponse",
    }


REGISTRY.add(Ros1Clearpath_safety_msgsUpdateCommunicationWatchdogResponse)


class Ros1Clearpath_safety_msgsUpdateHeartbeatWatchdogRequest(Record):
    """@brief Own every original clearpath_safety_msgs/UpdateHeartbeatWatchdogRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("new_config", "current_name")
    # @brief Original new_config: clearpath_safety_msgs/WatchdogConfigHeartbeat; shape scalar.
    # @brief Original current_name: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_38f7e38b9de37001d85a0d0642420bcedabc3d16e5477c3c0e80cdd3c01c33dc",
        "minimum": 29,
        "maximum": 1701,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "new_config",
                "type": "clearpath_safety_msgs/WatchdogConfigHeartbeat",
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
                "element_minimum": 25,
            },
            {
                "name": "current_name",
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
        "type": "clearpath_safety_msgs/UpdateHeartbeatWatchdogRequest",
    }


REGISTRY.add(Ros1Clearpath_safety_msgsUpdateHeartbeatWatchdogRequest)


class Ros1Clearpath_safety_msgsUpdateHeartbeatWatchdogResponse(Record):
    """@brief Own every original clearpath_safety_msgs/UpdateHeartbeatWatchdogResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("success",)
    # @brief Original success: bool; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_5102240f548751135043fe3e20cc41d8ed189ed39f75f5c8328e169e3bf5c4fc",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "ros_version": 1,
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
            }
        ],
        "type": "clearpath_safety_msgs/UpdateHeartbeatWatchdogResponse",
    }


REGISTRY.add(Ros1Clearpath_safety_msgsUpdateHeartbeatWatchdogResponse)


class Ros1Clearpath_safety_msgsUpdateInclinationWatchdogRequest(Record):
    """@brief Own every original clearpath_safety_msgs/UpdateInclinationWatchdogRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("new_config", "current_name")
    # @brief Original new_config: clearpath_safety_msgs/WatchdogConfigInclination; shape scalar.
    # @brief Original current_name: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_cab6e7cbad06eb1c7692a64f0b7870ec5e3e6e56172916597f551a6dfb6a442c",
        "minimum": 37,
        "maximum": 1709,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "new_config",
                "type": "clearpath_safety_msgs/WatchdogConfigInclination",
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
                "element_minimum": 33,
            },
            {
                "name": "current_name",
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
        "type": "clearpath_safety_msgs/UpdateInclinationWatchdogRequest",
    }


REGISTRY.add(Ros1Clearpath_safety_msgsUpdateInclinationWatchdogRequest)


class Ros1Clearpath_safety_msgsUpdateInclinationWatchdogResponse(Record):
    """@brief Own every original clearpath_safety_msgs/UpdateInclinationWatchdogResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("success",)
    # @brief Original success: bool; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_822cddd0fc632d1140f7f32b375eee38348748c4eba1ce79cb271ffdf100e1fb",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "ros_version": 1,
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
            }
        ],
        "type": "clearpath_safety_msgs/UpdateInclinationWatchdogResponse",
    }


REGISTRY.add(Ros1Clearpath_safety_msgsUpdateInclinationWatchdogResponse)


class Ros1Clearpath_safety_msgsUpdateNodeStatusWatchdogRequest(Record):
    """@brief Own every original clearpath_safety_msgs/UpdateNodeStatusWatchdogRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("new_config", "current_name")
    # @brief Original new_config: clearpath_safety_msgs/WatchdogConfigNodeStatus; shape scalar.
    # @brief Original current_name: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_962c4c93dd43f25968ee1cae173f614573c8f488bb58e4d254f8e2f9a8ee20cb",
        "minimum": 26,
        "maximum": 1698,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "new_config",
                "type": "clearpath_safety_msgs/WatchdogConfigNodeStatus",
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
                "element_minimum": 22,
            },
            {
                "name": "current_name",
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
        "type": "clearpath_safety_msgs/UpdateNodeStatusWatchdogRequest",
    }


REGISTRY.add(Ros1Clearpath_safety_msgsUpdateNodeStatusWatchdogRequest)


class Ros1Clearpath_safety_msgsUpdateNodeStatusWatchdogResponse(Record):
    """@brief Own every original clearpath_safety_msgs/UpdateNodeStatusWatchdogResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("success",)
    # @brief Original success: bool; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_4c78b86fb01b4f645285f53ba1f03f7992db7aa21928129d3e436885ee241b07",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "ros_version": 1,
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
            }
        ],
        "type": "clearpath_safety_msgs/UpdateNodeStatusWatchdogResponse",
    }


REGISTRY.add(Ros1Clearpath_safety_msgsUpdateNodeStatusWatchdogResponse)


class Ros1Clearpath_safety_msgsUpdateNodeletStatusWatchdogRequest(Record):
    """@brief Own every original clearpath_safety_msgs/UpdateNodeletStatusWatchdogRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("new_config", "current_name")
    # @brief Original new_config: clearpath_safety_msgs/WatchdogConfigNodeletStatus; shape scalar.
    # @brief Original current_name: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_696685f347ed5da62811b33ff4bc7d5a368b71347e72ff96ae20852c404e5a7b",
        "minimum": 30,
        "maximum": 1958,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "new_config",
                "type": "clearpath_safety_msgs/WatchdogConfigNodeletStatus",
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
                "element_minimum": 26,
            },
            {
                "name": "current_name",
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
        "type": "clearpath_safety_msgs/UpdateNodeletStatusWatchdogRequest",
    }


REGISTRY.add(Ros1Clearpath_safety_msgsUpdateNodeletStatusWatchdogRequest)


class Ros1Clearpath_safety_msgsUpdateNodeletStatusWatchdogResponse(Record):
    """@brief Own every original clearpath_safety_msgs/UpdateNodeletStatusWatchdogResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("success",)
    # @brief Original success: bool; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_7948d56be62c8db523533c6de69635c32bb16b9ee1f46c5ab2150a148e8951d3",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "ros_version": 1,
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
            }
        ],
        "type": "clearpath_safety_msgs/UpdateNodeletStatusWatchdogResponse",
    }


REGISTRY.add(Ros1Clearpath_safety_msgsUpdateNodeletStatusWatchdogResponse)


class Ros1Clearpath_safety_msgsUpdateNumPointsWatchdogRequest(Record):
    """@brief Own every original clearpath_safety_msgs/UpdateNumPointsWatchdogRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("new_config", "current_name")
    # @brief Original new_config: clearpath_safety_msgs/WatchdogConfigNumPoints; shape scalar.
    # @brief Original current_name: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_b6990dab39039686f9f0ca55bc832b07f299522b0c5a94d441cebcfb78f8da61",
        "minimum": 29,
        "maximum": 1701,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "new_config",
                "type": "clearpath_safety_msgs/WatchdogConfigNumPoints",
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
                "element_minimum": 25,
            },
            {
                "name": "current_name",
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
        "type": "clearpath_safety_msgs/UpdateNumPointsWatchdogRequest",
    }


REGISTRY.add(Ros1Clearpath_safety_msgsUpdateNumPointsWatchdogRequest)


class Ros1Clearpath_safety_msgsUpdateNumPointsWatchdogResponse(Record):
    """@brief Own every original clearpath_safety_msgs/UpdateNumPointsWatchdogResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("success",)
    # @brief Original success: bool; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_edb0c4ab7f230636492b5e9ddae9d0717f37a042167aed3d1473489321fa5b96",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "ros_version": 1,
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
            }
        ],
        "type": "clearpath_safety_msgs/UpdateNumPointsWatchdogResponse",
    }


REGISTRY.add(Ros1Clearpath_safety_msgsUpdateNumPointsWatchdogResponse)


class Ros1Clearpath_safety_msgsUpdateOdomCovarianceWatchdogRequest(Record):
    """@brief Own every original clearpath_safety_msgs/UpdateOdomCovarianceWatchdogRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("new_config", "current_name")
    # @brief Original new_config: clearpath_safety_msgs/WatchdogConfigOdomCovariance; shape scalar.
    # @brief Original current_name: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_884e8b91e3bcb9b559ca03b46c268eebbda100aa40c92c62f805c29f69fae628",
        "minimum": 37,
        "maximum": 1709,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "new_config",
                "type": "clearpath_safety_msgs/WatchdogConfigOdomCovariance",
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
                "element_minimum": 33,
            },
            {
                "name": "current_name",
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
        "type": "clearpath_safety_msgs/UpdateOdomCovarianceWatchdogRequest",
    }


REGISTRY.add(Ros1Clearpath_safety_msgsUpdateOdomCovarianceWatchdogRequest)


class Ros1Clearpath_safety_msgsUpdateOdomCovarianceWatchdogResponse(Record):
    """@brief Own every original clearpath_safety_msgs/UpdateOdomCovarianceWatchdogResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("success",)
    # @brief Original success: bool; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_36ab644fd1658850c45accb7a3443210e51420d9bb30200566ab1444de17de20",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "ros_version": 1,
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
            }
        ],
        "type": "clearpath_safety_msgs/UpdateOdomCovarianceWatchdogResponse",
    }


REGISTRY.add(Ros1Clearpath_safety_msgsUpdateOdomCovarianceWatchdogResponse)


class Ros1Clearpath_safety_msgsUpdateRtkFixWatchdogRequest(Record):
    """@brief Own every original clearpath_safety_msgs/UpdateRtkFixWatchdogRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("new_config", "current_name")
    # @brief Original new_config: clearpath_safety_msgs/WatchdogConfigRtkFix; shape scalar.
    # @brief Original current_name: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_346015ad9d35ab1f670410d69707f5e7464bc961c610ad5f03e1a072bf270e71",
        "minimum": 31,
        "maximum": 1703,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "new_config",
                "type": "clearpath_safety_msgs/WatchdogConfigRtkFix",
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
                "element_minimum": 27,
            },
            {
                "name": "current_name",
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
        "type": "clearpath_safety_msgs/UpdateRtkFixWatchdogRequest",
    }


REGISTRY.add(Ros1Clearpath_safety_msgsUpdateRtkFixWatchdogRequest)


class Ros1Clearpath_safety_msgsUpdateRtkFixWatchdogResponse(Record):
    """@brief Own every original clearpath_safety_msgs/UpdateRtkFixWatchdogResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("success",)
    # @brief Original success: bool; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_8011c3715440e0b385c2700ba784d7e144a885141644b6446a2bb0d170c02572",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "ros_version": 1,
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
            }
        ],
        "type": "clearpath_safety_msgs/UpdateRtkFixWatchdogResponse",
    }


REGISTRY.add(Ros1Clearpath_safety_msgsUpdateRtkFixWatchdogResponse)


class Ros1Clearpath_safety_msgsUpdateTopicDataWatchdogRequest(Record):
    """@brief Own every original clearpath_safety_msgs/UpdateTopicDataWatchdogRequest field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("new_config", "current_name")
    # @brief Original new_config: clearpath_safety_msgs/WatchdogConfigTopicData; shape scalar.
    # @brief Original current_name: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_d5e48e1a2fdc42e8a2e69d6e3052128b040476caf17478fc14cdec784addcc39",
        "minimum": 29,
        "maximum": 1701,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "new_config",
                "type": "clearpath_safety_msgs/WatchdogConfigTopicData",
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
                "element_minimum": 25,
            },
            {
                "name": "current_name",
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
        "type": "clearpath_safety_msgs/UpdateTopicDataWatchdogRequest",
    }


REGISTRY.add(Ros1Clearpath_safety_msgsUpdateTopicDataWatchdogRequest)


class Ros1Clearpath_safety_msgsUpdateTopicDataWatchdogResponse(Record):
    """@brief Own every original clearpath_safety_msgs/UpdateTopicDataWatchdogResponse field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("success",)
    # @brief Original success: bool; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_491070db415651a6f37bedaa7c23caceda299a84fa956b272dd21fb062684f85",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "ros_version": 1,
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
            }
        ],
        "type": "clearpath_safety_msgs/UpdateTopicDataWatchdogResponse",
    }


REGISTRY.add(Ros1Clearpath_safety_msgsUpdateTopicDataWatchdogResponse)
