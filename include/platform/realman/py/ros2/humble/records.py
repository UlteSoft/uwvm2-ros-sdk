"""@file records.py
@brief Complete original vendor values and canonical codecs.
@details Owned fields preserve widths, quotas and defaults. Native identity remains unbound.
No constructor or codec opens a ROS resource or grants a capability.
"""
from ros.py.wire import Record, Registry

REGISTRY = Registry()


class Ros2Geometry_msgsMsgPoint(Record):
    """@brief Own all original geometry_msgs/msg/Point fields.
    @details 3 ordered fields; 24..24 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original x: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original y: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original z: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('x', 'y', 'z')
    SCHEMA = {'symbol': 'Ros2Geometry_msgsMsgPoint',
     'type': 'geometry_msgs/msg/Point',
     'ros_version': 2,
     'native_type': 'geometry_msgs/msg/Point',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616',
     'minimum': 24,
     'maximum': 24,
     'semantics': '',
     'fields': [{'name': 'x',
                 'type': 'float64',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'y',
                 'type': 'float64',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'z',
                 'type': 'float64',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Geometry_msgsMsgPoint)

class Ros2Geometry_msgsMsgQuaternion(Record):
    """@brief Own all original geometry_msgs/msg/Quaternion fields.
    @details 4 ordered fields; 32..32 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original x: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original y: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original z: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original w: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('x', 'y', 'z', 'w')
    SCHEMA = {'symbol': 'Ros2Geometry_msgsMsgQuaternion',
     'type': 'geometry_msgs/msg/Quaternion',
     'ros_version': 2,
     'native_type': 'geometry_msgs/msg/Quaternion',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672',
     'minimum': 32,
     'maximum': 32,
     'semantics': '',
     'fields': [{'name': 'x',
                 'type': 'float64',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': '0.0',
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': 0.0},
                {'name': 'y',
                 'type': 'float64',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': '0.0',
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': 0.0},
                {'name': 'z',
                 'type': 'float64',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': '0.0',
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': 0.0},
                {'name': 'w',
                 'type': 'float64',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': '1.0',
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': 1.0}],
     'constants': {}}

REGISTRY.add(Ros2Geometry_msgsMsgQuaternion)

class Ros2Geometry_msgsMsgPose(Record):
    """@brief Own all original geometry_msgs/msg/Pose fields.
    @details 2 ordered fields; 56..56 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original position: geometry_msgs/msg/Point, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original orientation: geometry_msgs/msg/Quaternion, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('position', 'orientation')
    SCHEMA = {'symbol': 'Ros2Geometry_msgsMsgPose',
     'type': 'geometry_msgs/msg/Pose',
     'ros_version': 2,
     'native_type': 'geometry_msgs/msg/Pose',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777',
     'minimum': 56,
     'maximum': 56,
     'semantics': '',
     'fields': [{'name': 'position',
                 'type': 'geometry_msgs/msg/Point',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'orientation',
                 'type': 'geometry_msgs/msg/Quaternion',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Geometry_msgsMsgPose)

class Ros2Rm_ros_interfacesMsgAlohastate(Record):
    """@brief Own all original rm_ros_interfaces/msg/Alohastate fields.
    @details 2 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original io1_state: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original io2_state: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('io1_state', 'io2_state')
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgAlohastate',
     'type': 'rm_ros_interfaces/msg/Alohastate',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/Alohastate',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_b7a68ce1f12539a9373d1f0247bf4ea39a109525ae650c23c027103d071cf8ab',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'io1_state',
                 'type': 'int16',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'io2_state',
                 'type': 'int16',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgAlohastate)

class Ros2Rm_ros_interfacesMsgArmcurrentstatus(Record):
    """@brief Own all original rm_ros_interfaces/msg/Armcurrentstatus fields.
    @details 1 ordered fields; 2..2 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original arm_current_status: uint16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('arm_current_status',)
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgArmcurrentstatus',
     'type': 'rm_ros_interfaces/msg/Armcurrentstatus',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/Armcurrentstatus',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_b7a53dc8378d2b76cf8a1872289030302e994f37f026f44da38d2a53a974b3dc',
     'minimum': 2,
     'maximum': 2,
     'semantics': '',
     'fields': [{'name': 'arm_current_status',
                 'type': 'uint16',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgArmcurrentstatus)

class Ros2Rm_ros_interfacesMsgArmoriginalstate(Record):
    """@brief Own all original rm_ros_interfaces/msg/Armoriginalstate fields.
    @details 5 ordered fields; 32..96 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original joint: float32, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    # @brief Original pose: float32, array.
    # @details Count/quota 6; string byte bound 0; caller owns storage.
    # @brief Original err: uint16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original err_len: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original dof: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('joint', 'pose', 'err', 'err_len', 'dof')
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgArmoriginalstate',
     'type': 'rm_ros_interfaces/msg/Armoriginalstate',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/Armoriginalstate',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_72f48f6c5542e0c0eed997cfd22554b16a8936ff3376dd1d60cb9aae274c8d2c',
     'minimum': 32,
     'maximum': 96,
     'semantics': '',
     'fields': [{'name': 'joint',
                 'type': 'float32',
                 'array': 'sequence',
                 'count': 16,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'pose',
                 'type': 'float32',
                 'array': 'array',
                 'count': 6,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'err',
                 'type': 'uint16',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'err_len',
                 'type': 'uint8',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'dof',
                 'type': 'uint8',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgArmoriginalstate)

class Ros2Rm_ros_interfacesMsgSoftwarebuildinfo(Record):
    """@brief Own all original rm_ros_interfaces/msg/Softwarebuildinfo fields.
    @details 2 ordered fields; 8..520 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original build_time: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original version: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    __slots__ = ('build_time', 'version')
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgSoftwarebuildinfo',
     'type': 'rm_ros_interfaces/msg/Softwarebuildinfo',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/Softwarebuildinfo',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_d84d8da289dce8e1735e963b652e574a78f5dcf7549ffe3a84a870c30f6901bc',
     'minimum': 8,
     'maximum': 520,
     'semantics': '',
     'fields': [{'name': 'build_time',
                 'type': 'string',
                 'array': '',
                 'count': 0,
                 'string_bound': 256,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'version',
                 'type': 'string',
                 'array': '',
                 'count': 0,
                 'string_bound': 256,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgSoftwarebuildinfo)

class Ros2Rm_ros_interfacesMsgArmsoftversion(Record):
    """@brief Own all original rm_ros_interfaces/msg/Armsoftversion fields.
    @details 14 ordered fields; 69..4421 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original product_version: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original controller_version: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original algorithm_info: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original ctrl_info: rm_ros_interfaces/msg/Softwarebuildinfo, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original dynamic_info: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original plan_info: rm_ros_interfaces/msg/Softwarebuildinfo, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original com_info: rm_ros_interfaces/msg/Softwarebuildinfo, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original program_info: rm_ros_interfaces/msg/Softwarebuildinfo, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original state: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original planversion: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original ctrlversion: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original kernal1: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original kernal2: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original productversion: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    __slots__ = ('product_version',
     'controller_version',
     'algorithm_info',
     'ctrl_info',
     'dynamic_info',
     'plan_info',
     'com_info',
     'program_info',
     'state',
     'planversion',
     'ctrlversion',
     'kernal1',
     'kernal2',
     'productversion')
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgArmsoftversion',
     'type': 'rm_ros_interfaces/msg/Armsoftversion',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/Armsoftversion',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_3b92125820667f7d207022aa8b2d078c9e70724c037c261b1e9dd07764e14d9c',
     'minimum': 69,
     'maximum': 4421,
     'semantics': '',
     'fields': [{'name': 'product_version',
                 'type': 'string',
                 'array': '',
                 'count': 0,
                 'string_bound': 256,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'controller_version',
                 'type': 'string',
                 'array': '',
                 'count': 0,
                 'string_bound': 256,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'algorithm_info',
                 'type': 'string',
                 'array': '',
                 'count': 0,
                 'string_bound': 256,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'ctrl_info',
                 'type': 'rm_ros_interfaces/msg/Softwarebuildinfo',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'dynamic_info',
                 'type': 'string',
                 'array': '',
                 'count': 0,
                 'string_bound': 256,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'plan_info',
                 'type': 'rm_ros_interfaces/msg/Softwarebuildinfo',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'com_info',
                 'type': 'rm_ros_interfaces/msg/Softwarebuildinfo',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'program_info',
                 'type': 'rm_ros_interfaces/msg/Softwarebuildinfo',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'state',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'planversion',
                 'type': 'string',
                 'array': '',
                 'count': 0,
                 'string_bound': 256,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'ctrlversion',
                 'type': 'string',
                 'array': '',
                 'count': 0,
                 'string_bound': 256,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'kernal1',
                 'type': 'string',
                 'array': '',
                 'count': 0,
                 'string_bound': 256,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'kernal2',
                 'type': 'string',
                 'array': '',
                 'count': 0,
                 'string_bound': 256,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'productversion',
                 'type': 'string',
                 'array': '',
                 'count': 0,
                 'string_bound': 256,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgArmsoftversion)

class Ros2Rm_ros_interfacesMsgArmsoftversionv3(Record):
    """@brief Own all original rm_ros_interfaces/msg/Armsoftversionv3 fields.
    @details 6 ordered fields; 32..2080 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original product_version: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original controller_version: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original algorithm_info: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original ctrl_info: rm_ros_interfaces/msg/Softwarebuildinfo, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original dynamic_info: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original plan_info: rm_ros_interfaces/msg/Softwarebuildinfo, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('product_version',
     'controller_version',
     'algorithm_info',
     'ctrl_info',
     'dynamic_info',
     'plan_info')
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgArmsoftversionv3',
     'type': 'rm_ros_interfaces/msg/Armsoftversionv3',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/Armsoftversionv3',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_ea5589dc88dc36fc961682ec2d46be8a9909d28c3c26372614cfa6b153b76e8b',
     'minimum': 32,
     'maximum': 2080,
     'semantics': '',
     'fields': [{'name': 'product_version',
                 'type': 'string',
                 'array': '',
                 'count': 0,
                 'string_bound': 256,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'controller_version',
                 'type': 'string',
                 'array': '',
                 'count': 0,
                 'string_bound': 256,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'algorithm_info',
                 'type': 'string',
                 'array': '',
                 'count': 0,
                 'string_bound': 256,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'ctrl_info',
                 'type': 'rm_ros_interfaces/msg/Softwarebuildinfo',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'dynamic_info',
                 'type': 'string',
                 'array': '',
                 'count': 0,
                 'string_bound': 256,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'plan_info',
                 'type': 'rm_ros_interfaces/msg/Softwarebuildinfo',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgArmsoftversionv3)

class Ros2Rm_ros_interfacesMsgArmsoftversionv4(Record):
    """@brief Own all original rm_ros_interfaces/msg/Armsoftversionv4 fields.
    @details 6 ordered fields; 36..2340 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original product_version: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original controller_version: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original algorithm_info: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original ctrl_info: rm_ros_interfaces/msg/Softwarebuildinfo, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original com_info: rm_ros_interfaces/msg/Softwarebuildinfo, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original program_info: rm_ros_interfaces/msg/Softwarebuildinfo, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('product_version',
     'controller_version',
     'algorithm_info',
     'ctrl_info',
     'com_info',
     'program_info')
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgArmsoftversionv4',
     'type': 'rm_ros_interfaces/msg/Armsoftversionv4',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/Armsoftversionv4',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_b496d4a867605c13dbc7387895bd4f333ec435ed10a3b5a82c246c7f99d6de0d',
     'minimum': 36,
     'maximum': 2340,
     'semantics': '',
     'fields': [{'name': 'product_version',
                 'type': 'string',
                 'array': '',
                 'count': 0,
                 'string_bound': 256,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'controller_version',
                 'type': 'string',
                 'array': '',
                 'count': 0,
                 'string_bound': 256,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'algorithm_info',
                 'type': 'string',
                 'array': '',
                 'count': 0,
                 'string_bound': 256,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'ctrl_info',
                 'type': 'rm_ros_interfaces/msg/Softwarebuildinfo',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'com_info',
                 'type': 'rm_ros_interfaces/msg/Softwarebuildinfo',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'program_info',
                 'type': 'rm_ros_interfaces/msg/Softwarebuildinfo',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgArmsoftversionv4)

class Ros2Rm_ros_interfacesMsgArmstate(Record):
    """@brief Own all original rm_ros_interfaces/msg/Armstate fields.
    @details 5 ordered fields; 64..128 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original joint: float32, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    # @brief Original pose: geometry_msgs/msg/Pose, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original err: uint16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original err_len: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original dof: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('joint', 'pose', 'err', 'err_len', 'dof')
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgArmstate',
     'type': 'rm_ros_interfaces/msg/Armstate',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/Armstate',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_00bcb934e0cb6bd35e60269a9620381834adf8e33234bafa6f678ecf59ffdde7',
     'minimum': 64,
     'maximum': 128,
     'semantics': '',
     'fields': [{'name': 'joint',
                 'type': 'float32',
                 'array': 'sequence',
                 'count': 16,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'pose',
                 'type': 'geometry_msgs/msg/Pose',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'err',
                 'type': 'uint16',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'err_len',
                 'type': 'uint8',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'dof',
                 'type': 'uint8',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgArmstate)

class Ros2Rm_ros_interfacesMsgCartepos(Record):
    """@brief Own all original rm_ros_interfaces/msg/Cartepos fields.
    @details 2 ordered fields; 57..57 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original pose: geometry_msgs/msg/Pose, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original follow: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('pose', 'follow')
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgCartepos',
     'type': 'rm_ros_interfaces/msg/Cartepos',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/Cartepos',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_378453679d2951117a929eb7c976fc94961c57c93ef3444fbea04fe1a6f35b13',
     'minimum': 57,
     'maximum': 57,
     'semantics': '',
     'fields': [{'name': 'pose',
                 'type': 'geometry_msgs/msg/Pose',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'follow',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgCartepos)

class Ros2Rm_ros_interfacesMsgCarteposcustom(Record):
    """@brief Own all original rm_ros_interfaces/msg/Carteposcustom fields.
    @details 4 ordered fields; 59..59 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original pose: geometry_msgs/msg/Pose, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original follow: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original trajectory_mode: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original radio: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('pose', 'follow', 'trajectory_mode', 'radio')
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgCarteposcustom',
     'type': 'rm_ros_interfaces/msg/Carteposcustom',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/Carteposcustom',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_6d61e6f37210c02d518a084147de131bc437839101278c95653814d2bb32d67c',
     'minimum': 59,
     'maximum': 59,
     'semantics': '',
     'fields': [{'name': 'pose',
                 'type': 'geometry_msgs/msg/Pose',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'follow',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'trajectory_mode',
                 'type': 'uint8',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'radio',
                 'type': 'uint8',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgCarteposcustom)

class Ros2Rm_ros_interfacesMsgExpandpos(Record):
    """@brief Own all original rm_ros_interfaces/msg/Expandpos fields.
    @details 3 ordered fields; 7..7 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original pos: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original speed: uint16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original block: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('pos', 'speed', 'block')
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgExpandpos',
     'type': 'rm_ros_interfaces/msg/Expandpos',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/Expandpos',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_0e0290c8170fde709b7208f29a8711e103283040e3447d0d68a03e5cf0762f6c',
     'minimum': 7,
     'maximum': 7,
     'semantics': '',
     'fields': [{'name': 'pos',
                 'type': 'int32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'speed',
                 'type': 'uint16',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'block',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgExpandpos)

class Ros2Rm_ros_interfacesMsgExpandstate(Record):
    """@brief Own all original rm_ros_interfaces/msg/Expandstate fields.
    @details 4 ordered fields; 12..12 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original pos: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original current: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original err_flag: uint16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original mode: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('pos', 'current', 'err_flag', 'mode')
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgExpandstate',
     'type': 'rm_ros_interfaces/msg/Expandstate',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/Expandstate',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_3f4b075ae44707e2ce086829663fb4d774d74e0c40be23a0a6e73f2da07249e4',
     'minimum': 12,
     'maximum': 12,
     'semantics': '',
     'fields': [{'name': 'pos',
                 'type': 'int32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'current',
                 'type': 'int32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'err_flag',
                 'type': 'uint16',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'mode',
                 'type': 'int16',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgExpandstate)

class Ros2Rm_ros_interfacesMsgFlowchartrunstate(Record):
    """@brief Own all original rm_ros_interfaces/msg/Flowchartrunstate fields.
    @details 7 ordered fields; 13..525 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original run_state: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original id: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original name: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original plan_speed: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original step_mode: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original modal_id: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original state: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('run_state', 'id', 'name', 'plan_speed', 'step_mode', 'modal_id', 'state')
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgFlowchartrunstate',
     'type': 'rm_ros_interfaces/msg/Flowchartrunstate',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/Flowchartrunstate',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_61b4e904b5818c2eca883f9842bd69695c8b47737cb8066aefefd24fb9f6422f',
     'minimum': 13,
     'maximum': 525,
     'semantics': '',
     'fields': [{'name': 'run_state',
                 'type': 'uint8',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'id',
                 'type': 'uint8',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'name',
                 'type': 'string',
                 'array': '',
                 'count': 0,
                 'string_bound': 256,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'plan_speed',
                 'type': 'uint8',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'step_mode',
                 'type': 'uint8',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'modal_id',
                 'type': 'string',
                 'array': '',
                 'count': 0,
                 'string_bound': 256,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'state',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgFlowchartrunstate)

class Ros2Rm_ros_interfacesMsgForce_Position_State(Record):
    """@brief Own all original rm_ros_interfaces/msg/Force_Position_State fields.
    @details 3 ordered fields; 30..30 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original joint: float32, array.
    # @details Count/quota 6; string byte bound 0; caller owns storage.
    # @brief Original force: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original arm_err: uint16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('joint', 'force', 'arm_err')
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgForce_Position_State',
     'type': 'rm_ros_interfaces/msg/Force_Position_State',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/Force_Position_State',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_98c23957f0547ada86fa7d65a0c53a1d4f994995541d821e38e7d8e6e86678c7',
     'minimum': 30,
     'maximum': 30,
     'semantics': '',
     'fields': [{'name': 'joint',
                 'type': 'float32',
                 'array': 'array',
                 'count': 6,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'force',
                 'type': 'float32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'arm_err',
                 'type': 'uint16',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgForce_Position_State)

class Ros2Rm_ros_interfacesMsgForcepositionmove(Record):
    """@brief Own all original rm_ros_interfaces/msg/Forcepositionmove fields.
    @details 11 ordered fields; 121..185 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original pose: geometry_msgs/msg/Pose, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original joint: float32, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    # @brief Original flag: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original sensor: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original mode: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original control_mode: uint8, array.
    # @details Count/quota 6; string byte bound 0; caller owns storage.
    # @brief Original follow: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original desired_force: float32, array.
    # @details Count/quota 6; string byte bound 0; caller owns storage.
    # @brief Original limit_vel: float32, array.
    # @details Count/quota 6; string byte bound 0; caller owns storage.
    # @brief Original trajectory_mode: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original radio: uint16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('pose',
     'joint',
     'flag',
     'sensor',
     'mode',
     'control_mode',
     'follow',
     'desired_force',
     'limit_vel',
     'trajectory_mode',
     'radio')
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgForcepositionmove',
     'type': 'rm_ros_interfaces/msg/Forcepositionmove',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/Forcepositionmove',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_ff24ba9bda14e6d5a9ddafa24b3e8d72f5de5b99ba1161416fe2d8a8140fc224',
     'minimum': 121,
     'maximum': 185,
     'semantics': '',
     'fields': [{'name': 'pose',
                 'type': 'geometry_msgs/msg/Pose',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'joint',
                 'type': 'float32',
                 'array': 'sequence',
                 'count': 16,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'flag',
                 'type': 'uint8',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'sensor',
                 'type': 'uint8',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'mode',
                 'type': 'uint8',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'control_mode',
                 'type': 'uint8',
                 'array': 'array',
                 'count': 6,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'follow',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'desired_force',
                 'type': 'float32',
                 'array': 'array',
                 'count': 6,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'limit_vel',
                 'type': 'float32',
                 'array': 'array',
                 'count': 6,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'trajectory_mode',
                 'type': 'uint8',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'radio',
                 'type': 'uint16',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgForcepositionmove)

class Ros2Rm_ros_interfacesMsgForcepositionmovejoint(Record):
    """@brief Own all original rm_ros_interfaces/msg/Forcepositionmovejoint fields.
    @details 7 ordered fields; 14..78 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original joint: float32, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    # @brief Original sensor: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original mode: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original dir: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original force: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original follow: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original dof: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('joint', 'sensor', 'mode', 'dir', 'force', 'follow', 'dof')
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgForcepositionmovejoint',
     'type': 'rm_ros_interfaces/msg/Forcepositionmovejoint',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/Forcepositionmovejoint',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_1a8435bfb309f07ef73c7ec8295b87918d6182fb718ebdf0c24ade35895d1bed',
     'minimum': 14,
     'maximum': 78,
     'semantics': '',
     'fields': [{'name': 'joint',
                 'type': 'float32',
                 'array': 'sequence',
                 'count': 16,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'sensor',
                 'type': 'uint8',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'mode',
                 'type': 'uint8',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'dir',
                 'type': 'int16',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'force',
                 'type': 'float32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'follow',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'dof',
                 'type': 'uint8',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgForcepositionmovejoint)

class Ros2Rm_ros_interfacesMsgForcepositionmovepose(Record):
    """@brief Own all original rm_ros_interfaces/msg/Forcepositionmovepose fields.
    @details 6 ordered fields; 62..62 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original pose: geometry_msgs/msg/Pose, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original sensor: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original mode: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original dir: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original force: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original follow: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('pose', 'sensor', 'mode', 'dir', 'force', 'follow')
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgForcepositionmovepose',
     'type': 'rm_ros_interfaces/msg/Forcepositionmovepose',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/Forcepositionmovepose',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_1440c6075db6349d807d6a57247bd59711eb72afe9ba4d6c4a3c809e15a8f8a3',
     'minimum': 62,
     'maximum': 62,
     'semantics': '',
     'fields': [{'name': 'pose',
                 'type': 'geometry_msgs/msg/Pose',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'sensor',
                 'type': 'uint8',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'mode',
                 'type': 'uint8',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'dir',
                 'type': 'uint8',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'force',
                 'type': 'int16',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'follow',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgForcepositionmovepose)

class Ros2Rm_ros_interfacesMsgGetArmState_Command(Record):
    """@brief Own all original rm_ros_interfaces/msg/GetArmState_Command fields.
    @details 1 ordered fields; 4..260 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original command: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    __slots__ = ('command',)
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgGetArmState_Command',
     'type': 'rm_ros_interfaces/msg/GetArmState_Command',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/GetArmState_Command',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_8e1d91f4b8d1801b92f1b8b2c2e2d6fa07b32ade96a6984d692be1fde986cb30',
     'minimum': 4,
     'maximum': 260,
     'semantics': '',
     'fields': [{'name': 'command',
                 'type': 'string',
                 'array': '',
                 'count': 0,
                 'string_bound': 256,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgGetArmState_Command)

class Ros2Rm_ros_interfacesMsgGetallframe(Record):
    """@brief Own all original rm_ros_interfaces/msg/Getallframe fields.
    @details 1 ordered fields; 40..2600 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original frame_name: string, array.
    # @details Count/quota 10; string byte bound 256; caller owns storage.
    __slots__ = ('frame_name',)
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgGetallframe',
     'type': 'rm_ros_interfaces/msg/Getallframe',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/Getallframe',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_f63c4069d35368010998526b3db41b2ccedab8adb990d3b4e7214edfc4c566ef',
     'minimum': 40,
     'maximum': 2600,
     'semantics': '',
     'fields': [{'name': 'frame_name',
                 'type': 'string',
                 'array': 'array',
                 'count': 10,
                 'string_bound': 256,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgGetallframe)

class Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist(Record):
    """@brief Own all original rm_ros_interfaces/msg/Getmodbustcpmasterlist fields.
    @details 3 ordered fields; 12..268 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original page_num: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original page_size: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original vague_search: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    __slots__ = ('page_num', 'page_size', 'vague_search')
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist',
     'type': 'rm_ros_interfaces/msg/Getmodbustcpmasterlist',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/Getmodbustcpmasterlist',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_09604efe1f3cef804f05d3f5c7cc8db9c468fa17e2343675e96920f1555a9686',
     'minimum': 12,
     'maximum': 268,
     'semantics': '',
     'fields': [{'name': 'page_num',
                 'type': 'int32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'page_size',
                 'type': 'int32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'vague_search',
                 'type': 'string',
                 'array': '',
                 'count': 0,
                 'string_bound': 256,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist)

class Ros2Rm_ros_interfacesMsgGettrajectorylist(Record):
    """@brief Own all original rm_ros_interfaces/msg/Gettrajectorylist fields.
    @details 3 ordered fields; 12..268 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original page_num: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original page_size: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original vague_search: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    __slots__ = ('page_num', 'page_size', 'vague_search')
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgGettrajectorylist',
     'type': 'rm_ros_interfaces/msg/Gettrajectorylist',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/Gettrajectorylist',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_58b7256031125746972a86fabed4beaf76a44b780cdd76908697169ae909cf8b',
     'minimum': 12,
     'maximum': 268,
     'semantics': '',
     'fields': [{'name': 'page_num',
                 'type': 'int32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'page_size',
                 'type': 'int32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'vague_search',
                 'type': 'string',
                 'array': '',
                 'count': 0,
                 'string_bound': 256,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgGettrajectorylist)

class Ros2Rm_ros_interfacesMsgGripperpick(Record):
    """@brief Own all original rm_ros_interfaces/msg/Gripperpick fields.
    @details 4 ordered fields; 7..7 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original speed: uint16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original force: uint16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original block: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original timeout: uint16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('speed', 'force', 'block', 'timeout')
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgGripperpick',
     'type': 'rm_ros_interfaces/msg/Gripperpick',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/Gripperpick',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_fa6da630bd224eff4924d45c471eefae227314781b28c271ff34295d60616ce2',
     'minimum': 7,
     'maximum': 7,
     'semantics': '',
     'fields': [{'name': 'speed',
                 'type': 'uint16',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'force',
                 'type': 'uint16',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'block',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'timeout',
                 'type': 'uint16',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgGripperpick)

class Ros2Rm_ros_interfacesMsgGripperset(Record):
    """@brief Own all original rm_ros_interfaces/msg/Gripperset fields.
    @details 3 ordered fields; 5..5 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original position: uint16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original block: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original timeout: uint16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('position', 'block', 'timeout')
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgGripperset',
     'type': 'rm_ros_interfaces/msg/Gripperset',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/Gripperset',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_71e19bd655b84b8e1cb948c0180331b23e1cabfc02b6f8883209113d0fa8626b',
     'minimum': 5,
     'maximum': 5,
     'semantics': '',
     'fields': [{'name': 'position',
                 'type': 'uint16',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'block',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'timeout',
                 'type': 'uint16',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgGripperset)

class Ros2Rm_ros_interfacesMsgHandangle(Record):
    """@brief Own all original rm_ros_interfaces/msg/Handangle fields.
    @details 2 ordered fields; 13..13 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original hand_angle: int16, array.
    # @details Count/quota 6; string byte bound 0; caller owns storage.
    # @brief Original block: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('hand_angle', 'block')
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgHandangle',
     'type': 'rm_ros_interfaces/msg/Handangle',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/Handangle',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_a213f476b5734891798b4e19c4200fdf496486b913fb4f43808905f087b1cabf',
     'minimum': 13,
     'maximum': 13,
     'semantics': '',
     'fields': [{'name': 'hand_angle',
                 'type': 'int16',
                 'array': 'array',
                 'count': 6,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'block',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgHandangle)

class Ros2Rm_ros_interfacesMsgHandforce(Record):
    """@brief Own all original rm_ros_interfaces/msg/Handforce fields.
    @details 1 ordered fields; 2..2 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original hand_force: uint16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('hand_force',)
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgHandforce',
     'type': 'rm_ros_interfaces/msg/Handforce',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/Handforce',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_910b9c8f264852d96c22d01fd2e38471ec596fe0be4dbab44c93f495061dfab2',
     'minimum': 2,
     'maximum': 2,
     'semantics': '',
     'fields': [{'name': 'hand_force',
                 'type': 'uint16',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgHandforce)

class Ros2Rm_ros_interfacesMsgHandposture(Record):
    """@brief Own all original rm_ros_interfaces/msg/Handposture fields.
    @details 3 ordered fields; 5..5 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original posture_num: uint16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original block: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original timeout: uint16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('posture_num', 'block', 'timeout')
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgHandposture',
     'type': 'rm_ros_interfaces/msg/Handposture',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/Handposture',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_78080b4fd20c87b0f05ce5cb42983ccc0242c3e114c7ba984398aa00f60c204f',
     'minimum': 5,
     'maximum': 5,
     'semantics': '',
     'fields': [{'name': 'posture_num',
                 'type': 'uint16',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'block',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'timeout',
                 'type': 'uint16',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgHandposture)

class Ros2Rm_ros_interfacesMsgHandseq(Record):
    """@brief Own all original rm_ros_interfaces/msg/Handseq fields.
    @details 3 ordered fields; 5..5 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original seq_num: uint16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original block: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original timeout: uint16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('seq_num', 'block', 'timeout')
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgHandseq',
     'type': 'rm_ros_interfaces/msg/Handseq',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/Handseq',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_29f300b4608a4ea140cfb38eeb316c376002638012efc5b9e6b19f95788ba842',
     'minimum': 5,
     'maximum': 5,
     'semantics': '',
     'fields': [{'name': 'seq_num',
                 'type': 'uint16',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'block',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'timeout',
                 'type': 'uint16',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgHandseq)

class Ros2Rm_ros_interfacesMsgHandspeed(Record):
    """@brief Own all original rm_ros_interfaces/msg/Handspeed fields.
    @details 1 ordered fields; 2..2 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original hand_speed: uint16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('hand_speed',)
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgHandspeed',
     'type': 'rm_ros_interfaces/msg/Handspeed',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/Handspeed',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_85e90353ad0e2d1c14b390080d13d447de9acfa563f046ab7a89929183dbc684',
     'minimum': 2,
     'maximum': 2,
     'semantics': '',
     'fields': [{'name': 'hand_speed',
                 'type': 'uint16',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgHandspeed)

class Ros2Rm_ros_interfacesMsgHandstatus(Record):
    """@brief Own all original rm_ros_interfaces/msg/Handstatus fields.
    @details 5 ordered fields; 50..50 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original hand_angle: uint16, array.
    # @details Count/quota 6; string byte bound 0; caller owns storage.
    # @brief Original hand_pos: uint16, array.
    # @details Count/quota 6; string byte bound 0; caller owns storage.
    # @brief Original hand_state: uint16, array.
    # @details Count/quota 6; string byte bound 0; caller owns storage.
    # @brief Original hand_force: uint16, array.
    # @details Count/quota 6; string byte bound 0; caller owns storage.
    # @brief Original hand_err: uint16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('hand_angle', 'hand_pos', 'hand_state', 'hand_force', 'hand_err')
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgHandstatus',
     'type': 'rm_ros_interfaces/msg/Handstatus',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/Handstatus',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_1f7a21721b551df6853b1ce4166cabf2058b705f854bacda8fe692f7544688f3',
     'minimum': 50,
     'maximum': 50,
     'semantics': '',
     'fields': [{'name': 'hand_angle',
                 'type': 'uint16',
                 'array': 'array',
                 'count': 6,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'hand_pos',
                 'type': 'uint16',
                 'array': 'array',
                 'count': 6,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'hand_state',
                 'type': 'uint16',
                 'array': 'array',
                 'count': 6,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'hand_force',
                 'type': 'uint16',
                 'array': 'array',
                 'count': 6,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'hand_err',
                 'type': 'uint16',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgHandstatus)

class Ros2Rm_ros_interfacesMsgJointcurrent(Record):
    """@brief Own all original rm_ros_interfaces/msg/Jointcurrent fields.
    @details 1 ordered fields; 4..68 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original joint_current: float32, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    __slots__ = ('joint_current',)
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgJointcurrent',
     'type': 'rm_ros_interfaces/msg/Jointcurrent',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/Jointcurrent',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_0e7a72e78bd556b1ea6fc796b88097b8c03c612de0cc7e5063d722eee2bdef91',
     'minimum': 4,
     'maximum': 68,
     'semantics': '',
     'fields': [{'name': 'joint_current',
                 'type': 'float32',
                 'array': 'sequence',
                 'count': 16,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgJointcurrent)

class Ros2Rm_ros_interfacesMsgJointenflag(Record):
    """@brief Own all original rm_ros_interfaces/msg/Jointenflag fields.
    @details 1 ordered fields; 4..20 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original joint_en_flag: bool, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    __slots__ = ('joint_en_flag',)
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgJointenflag',
     'type': 'rm_ros_interfaces/msg/Jointenflag',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/Jointenflag',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_ffa9e21886e47f6af286452c886cc0f0dd7be24dabd373e05866a675962c6187',
     'minimum': 4,
     'maximum': 20,
     'semantics': '',
     'fields': [{'name': 'joint_en_flag',
                 'type': 'bool',
                 'array': 'sequence',
                 'count': 16,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgJointenflag)

class Ros2Rm_ros_interfacesMsgJointerrclear(Record):
    """@brief Own all original rm_ros_interfaces/msg/Jointerrclear fields.
    @details 1 ordered fields; 1..1 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original joint_num: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('joint_num',)
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgJointerrclear',
     'type': 'rm_ros_interfaces/msg/Jointerrclear',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/Jointerrclear',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_c575447e4110836ee8d0ffa2833ab702379cb0c1cd5f7bd87be315edb85cff45',
     'minimum': 1,
     'maximum': 1,
     'semantics': '',
     'fields': [{'name': 'joint_num',
                 'type': 'uint8',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgJointerrclear)

class Ros2Rm_ros_interfacesMsgJointerrorcode(Record):
    """@brief Own all original rm_ros_interfaces/msg/Jointerrorcode fields.
    @details 2 ordered fields; 5..37 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original joint_error: uint16, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    # @brief Original dof: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('joint_error', 'dof')
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgJointerrorcode',
     'type': 'rm_ros_interfaces/msg/Jointerrorcode',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/Jointerrorcode',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_78839a57795d363e53861265202facab5c8bc8ee6c21ba7548af68e49abbd99b',
     'minimum': 5,
     'maximum': 37,
     'semantics': '',
     'fields': [{'name': 'joint_error',
                 'type': 'uint16',
                 'array': 'sequence',
                 'count': 16,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'dof',
                 'type': 'uint8',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgJointerrorcode)

class Ros2Rm_ros_interfacesMsgJointpos(Record):
    """@brief Own all original rm_ros_interfaces/msg/Jointpos fields.
    @details 4 ordered fields; 10..74 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original joint: float32, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    # @brief Original follow: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original expand: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original dof: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('joint', 'follow', 'expand', 'dof')
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgJointpos',
     'type': 'rm_ros_interfaces/msg/Jointpos',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/Jointpos',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_f093835b430211359eca6939f16762efb33ebbd732878a54d60c405355c2cae9',
     'minimum': 10,
     'maximum': 74,
     'semantics': '',
     'fields': [{'name': 'joint',
                 'type': 'float32',
                 'array': 'sequence',
                 'count': 16,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'follow',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'expand',
                 'type': 'float32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'dof',
                 'type': 'uint8',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgJointpos)

class Ros2Rm_ros_interfacesMsgJointposcustom(Record):
    """@brief Own all original rm_ros_interfaces/msg/Jointposcustom fields.
    @details 6 ordered fields; 12..76 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original joint: float32, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    # @brief Original follow: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original expand: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original dof: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original trajectory_mode: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original radio: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('joint', 'follow', 'expand', 'dof', 'trajectory_mode', 'radio')
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgJointposcustom',
     'type': 'rm_ros_interfaces/msg/Jointposcustom',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/Jointposcustom',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_a8342c466e6de5036f06f8eb54492af807c2c72478bc9c613c45ef0f36d43128',
     'minimum': 12,
     'maximum': 76,
     'semantics': '',
     'fields': [{'name': 'joint',
                 'type': 'float32',
                 'array': 'sequence',
                 'count': 16,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'follow',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'expand',
                 'type': 'float32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'dof',
                 'type': 'uint8',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'trajectory_mode',
                 'type': 'uint8',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'radio',
                 'type': 'uint8',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgJointposcustom)

class Ros2Rm_ros_interfacesMsgJointposeeuler(Record):
    """@brief Own all original rm_ros_interfaces/msg/Jointposeeuler fields.
    @details 2 ordered fields; 24..24 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original euler: float32, array.
    # @details Count/quota 3; string byte bound 0; caller owns storage.
    # @brief Original position: float32, array.
    # @details Count/quota 3; string byte bound 0; caller owns storage.
    __slots__ = ('euler', 'position')
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgJointposeeuler',
     'type': 'rm_ros_interfaces/msg/Jointposeeuler',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/Jointposeeuler',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_f629f726ea37ea8117468b93977e518cd14b15e0ba59db57baaccc7645563a61',
     'minimum': 24,
     'maximum': 24,
     'semantics': '',
     'fields': [{'name': 'euler',
                 'type': 'float32',
                 'array': 'array',
                 'count': 3,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'position',
                 'type': 'float32',
                 'array': 'array',
                 'count': 3,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgJointposeeuler)

class Ros2Rm_ros_interfacesMsgJointspeed(Record):
    """@brief Own all original rm_ros_interfaces/msg/Jointspeed fields.
    @details 1 ordered fields; 4..68 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original joint_speed: float32, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    __slots__ = ('joint_speed',)
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgJointspeed',
     'type': 'rm_ros_interfaces/msg/Jointspeed',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/Jointspeed',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_fe8c4201f8ce64b32defc98be2c587cce8c4ced032a8d9d4ab5f40849ae8855f',
     'minimum': 4,
     'maximum': 68,
     'semantics': '',
     'fields': [{'name': 'joint_speed',
                 'type': 'float32',
                 'array': 'sequence',
                 'count': 16,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgJointspeed)

class Ros2Rm_ros_interfacesMsgJointteach(Record):
    """@brief Own all original rm_ros_interfaces/msg/Jointteach fields.
    @details 3 ordered fields; 3..3 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original num: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original direction: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original speed: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('num', 'direction', 'speed')
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgJointteach',
     'type': 'rm_ros_interfaces/msg/Jointteach',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/Jointteach',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_ec3fa3fab05b88842b98fe91feab43fd24883090b27c7d791c77044df2ec7795',
     'minimum': 3,
     'maximum': 3,
     'semantics': '',
     'fields': [{'name': 'num',
                 'type': 'uint8',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'direction',
                 'type': 'uint8',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'speed',
                 'type': 'uint8',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgJointteach)

class Ros2Rm_ros_interfacesMsgJointtemperature(Record):
    """@brief Own all original rm_ros_interfaces/msg/Jointtemperature fields.
    @details 1 ordered fields; 4..68 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original joint_temperature: float32, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    __slots__ = ('joint_temperature',)
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgJointtemperature',
     'type': 'rm_ros_interfaces/msg/Jointtemperature',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/Jointtemperature',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_cd4f782ab0c44d6542411d0e27612ad69a5607797634fdf106695a37fee355d9',
     'minimum': 4,
     'maximum': 68,
     'semantics': '',
     'fields': [{'name': 'joint_temperature',
                 'type': 'float32',
                 'array': 'sequence',
                 'count': 16,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgJointtemperature)

class Ros2Rm_ros_interfacesMsgJointversion(Record):
    """@brief Own all original rm_ros_interfaces/msg/Jointversion fields.
    @details 2 ordered fields; 5..4165 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original joint_version: string, sequence.
    # @details Count/quota 16; string byte bound 256; caller owns storage.
    # @brief Original state: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('joint_version', 'state')
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgJointversion',
     'type': 'rm_ros_interfaces/msg/Jointversion',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/Jointversion',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_ec4c6257d44d793efb960169834aa5364d28d874e1e82c68867ad39927bcb962',
     'minimum': 5,
     'maximum': 4165,
     'semantics': '',
     'fields': [{'name': 'joint_version',
                 'type': 'string',
                 'array': 'sequence',
                 'count': 16,
                 'string_bound': 256,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'state',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgJointversion)

class Ros2Rm_ros_interfacesMsgJointvoltage(Record):
    """@brief Own all original rm_ros_interfaces/msg/Jointvoltage fields.
    @details 1 ordered fields; 4..68 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original joint_voltage: float32, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    __slots__ = ('joint_voltage',)
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgJointvoltage',
     'type': 'rm_ros_interfaces/msg/Jointvoltage',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/Jointvoltage',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_db1925898d4173459af2cd3006f9b16d058ea1dac52ba3fa3daad369af77d791',
     'minimum': 4,
     'maximum': 68,
     'semantics': '',
     'fields': [{'name': 'joint_voltage',
                 'type': 'float32',
                 'array': 'sequence',
                 'count': 16,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgJointvoltage)

class Ros2Rm_ros_interfacesMsgLiftheight(Record):
    """@brief Own all original rm_ros_interfaces/msg/Liftheight fields.
    @details 3 ordered fields; 5..5 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original height: uint16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original speed: uint16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original block: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('height', 'speed', 'block')
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgLiftheight',
     'type': 'rm_ros_interfaces/msg/Liftheight',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/Liftheight',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_069897e24e5d2ab8792f17309fd78237ef749275aa7ce8002c10745effbaf5c2',
     'minimum': 5,
     'maximum': 5,
     'semantics': '',
     'fields': [{'name': 'height',
                 'type': 'uint16',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'speed',
                 'type': 'uint16',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'block',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgLiftheight)

class Ros2Rm_ros_interfacesMsgLiftspeed(Record):
    """@brief Own all original rm_ros_interfaces/msg/Liftspeed fields.
    @details 1 ordered fields; 2..2 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original speed: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('speed',)
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgLiftspeed',
     'type': 'rm_ros_interfaces/msg/Liftspeed',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/Liftspeed',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_a2dffb64c850113dbf21eadc10be768ca45895b848d718dfa51a639832c26b29',
     'minimum': 2,
     'maximum': 2,
     'semantics': '',
     'fields': [{'name': 'speed',
                 'type': 'int16',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgLiftspeed)

class Ros2Rm_ros_interfacesMsgLiftstate(Record):
    """@brief Own all original rm_ros_interfaces/msg/Liftstate fields.
    @details 4 ordered fields; 8..8 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original height: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original current: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original err_flag: uint16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original mode: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('height', 'current', 'err_flag', 'mode')
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgLiftstate',
     'type': 'rm_ros_interfaces/msg/Liftstate',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/Liftstate',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_3d4d81e28af889981b06f0876afd85f9552495f97f9cb2c0ca497106f3481d87',
     'minimum': 8,
     'maximum': 8,
     'semantics': '',
     'fields': [{'name': 'height',
                 'type': 'int16',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'current',
                 'type': 'int16',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'err_flag',
                 'type': 'uint16',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'mode',
                 'type': 'int16',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgLiftstate)

class Ros2Rm_ros_interfacesMsgMastername(Record):
    """@brief Own all original rm_ros_interfaces/msg/Mastername fields.
    @details 1 ordered fields; 4..260 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original master_name: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    __slots__ = ('master_name',)
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgMastername',
     'type': 'rm_ros_interfaces/msg/Mastername',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/Mastername',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_139229cd2fb36838100463930d44a9451f9325fc0ab30386d86695fc6a6fd7e6',
     'minimum': 4,
     'maximum': 260,
     'semantics': '',
     'fields': [{'name': 'master_name',
                 'type': 'string',
                 'array': '',
                 'count': 0,
                 'string_bound': 256,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgMastername)

class Ros2Rm_ros_interfacesMsgModbusreaddata(Record):
    """@brief Own all original rm_ros_interfaces/msg/Modbusreaddata fields.
    @details 2 ordered fields; 5..69 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original read_data: int32, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    # @brief Original state: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('read_data', 'state')
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgModbusreaddata',
     'type': 'rm_ros_interfaces/msg/Modbusreaddata',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/Modbusreaddata',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_a2305fd01b5801de653361a6a8423c175b5a09619510d6fc52d3c6b6efcc61a4',
     'minimum': 5,
     'maximum': 69,
     'semantics': '',
     'fields': [{'name': 'read_data',
                 'type': 'int32',
                 'array': 'sequence',
                 'count': 16,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'state',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgModbusreaddata)

class Ros2Rm_ros_interfacesMsgModbusrtureadparams(Record):
    """@brief Own all original rm_ros_interfaces/msg/Modbusrtureadparams fields.
    @details 4 ordered fields; 16..16 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original address: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original device: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original type: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original num: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('address', 'device', 'type', 'num')
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgModbusrtureadparams',
     'type': 'rm_ros_interfaces/msg/Modbusrtureadparams',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/Modbusrtureadparams',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_693c1477a64d83682ffe6c3e3b74ab774880599b01a5e7cd476ac815aa75347d',
     'minimum': 16,
     'maximum': 16,
     'semantics': '',
     'fields': [{'name': 'address',
                 'type': 'int32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'device',
                 'type': 'int32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'type',
                 'type': 'int32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'num',
                 'type': 'int32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgModbusrtureadparams)

class Ros2Rm_ros_interfacesMsgModbusrtuwriteparams(Record):
    """@brief Own all original rm_ros_interfaces/msg/Modbusrtuwriteparams fields.
    @details 5 ordered fields; 20..84 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original address: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original device: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original type: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original num: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original data: int32, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    __slots__ = ('address', 'device', 'type', 'num', 'data')
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgModbusrtuwriteparams',
     'type': 'rm_ros_interfaces/msg/Modbusrtuwriteparams',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/Modbusrtuwriteparams',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_01403c6213c6c470c16c3c2b8b249db85ab20700c15f46f3a96561d6aab6cb18',
     'minimum': 20,
     'maximum': 84,
     'semantics': '',
     'fields': [{'name': 'address',
                 'type': 'int32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'device',
                 'type': 'int32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'type',
                 'type': 'int32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'num',
                 'type': 'int32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'data',
                 'type': 'int32',
                 'array': 'sequence',
                 'count': 16,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgModbusrtuwriteparams)

class Ros2Rm_ros_interfacesMsgModbustcpmasterinfo(Record):
    """@brief Own all original rm_ros_interfaces/msg/Modbustcpmasterinfo fields.
    @details 4 ordered fields; 13..525 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original master_name: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original ip: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original port: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original state: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('master_name', 'ip', 'port', 'state')
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgModbustcpmasterinfo',
     'type': 'rm_ros_interfaces/msg/Modbustcpmasterinfo',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/Modbustcpmasterinfo',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_6b81b28c45a124529e96888975b122b33c869fd74368d64f60d43cd56698e8aa',
     'minimum': 13,
     'maximum': 525,
     'semantics': '',
     'fields': [{'name': 'master_name',
                 'type': 'string',
                 'array': '',
                 'count': 0,
                 'string_bound': 256,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'ip',
                 'type': 'string',
                 'array': '',
                 'count': 0,
                 'string_bound': 256,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'port',
                 'type': 'int32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'state',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgModbustcpmasterinfo)

class Ros2Rm_ros_interfacesMsgModbustcpmasterlist(Record):
    """@brief Own all original rm_ros_interfaces/msg/Modbustcpmasterlist fields.
    @details 6 ordered fields; 12..8668 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original page_num: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original page_size: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original total_size: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original vague_search: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original master_list: rm_ros_interfaces/msg/Modbustcpmasterinfo, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    # @brief Original state: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('page_num', 'page_size', 'total_size', 'vague_search', 'master_list', 'state')
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgModbustcpmasterlist',
     'type': 'rm_ros_interfaces/msg/Modbustcpmasterlist',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/Modbustcpmasterlist',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_79e01c84e9ca23b339485c5720ea9c973161d03944ec0c74079840d04f9774a1',
     'minimum': 12,
     'maximum': 8668,
     'semantics': '',
     'fields': [{'name': 'page_num',
                 'type': 'uint8',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'page_size',
                 'type': 'uint8',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'total_size',
                 'type': 'uint8',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'vague_search',
                 'type': 'string',
                 'array': '',
                 'count': 0,
                 'string_bound': 256,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'master_list',
                 'type': 'rm_ros_interfaces/msg/Modbustcpmasterinfo',
                 'array': 'sequence',
                 'count': 16,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'state',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgModbustcpmasterlist)

class Ros2Rm_ros_interfacesMsgModbustcpmasterupdata(Record):
    """@brief Own all original rm_ros_interfaces/msg/Modbustcpmasterupdata fields.
    @details 4 ordered fields; 16..784 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original master_name: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original new_master_name: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original ip: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original port: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('master_name', 'new_master_name', 'ip', 'port')
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgModbustcpmasterupdata',
     'type': 'rm_ros_interfaces/msg/Modbustcpmasterupdata',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/Modbustcpmasterupdata',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_0b2b3932e2862e95368c47f6a94ec604f12b76d5c8098808a23de6b2f9df68ad',
     'minimum': 16,
     'maximum': 784,
     'semantics': '',
     'fields': [{'name': 'master_name',
                 'type': 'string',
                 'array': '',
                 'count': 0,
                 'string_bound': 256,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'new_master_name',
                 'type': 'string',
                 'array': '',
                 'count': 0,
                 'string_bound': 256,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'ip',
                 'type': 'string',
                 'array': '',
                 'count': 0,
                 'string_bound': 256,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'port',
                 'type': 'int32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgModbustcpmasterupdata)

class Ros2Rm_ros_interfacesMsgModbustcpreadparams(Record):
    """@brief Own all original rm_ros_interfaces/msg/Modbustcpreadparams fields.
    @details 5 ordered fields; 20..532 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original address: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original master_name: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original ip: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original port: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original num: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('address', 'master_name', 'ip', 'port', 'num')
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgModbustcpreadparams',
     'type': 'rm_ros_interfaces/msg/Modbustcpreadparams',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/Modbustcpreadparams',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_091439cacdc77a5c2d9087a75e112cb174b255a8bd6776a79800a69146e4b7e7',
     'minimum': 20,
     'maximum': 532,
     'semantics': '',
     'fields': [{'name': 'address',
                 'type': 'int32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'master_name',
                 'type': 'string',
                 'array': '',
                 'count': 0,
                 'string_bound': 256,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'ip',
                 'type': 'string',
                 'array': '',
                 'count': 0,
                 'string_bound': 256,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'port',
                 'type': 'int32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'num',
                 'type': 'int32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgModbustcpreadparams)

class Ros2Rm_ros_interfacesMsgModbustcpwriteparams(Record):
    """@brief Own all original rm_ros_interfaces/msg/Modbustcpwriteparams fields.
    @details 6 ordered fields; 24..600 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original address: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original master_name: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original ip: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original port: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original num: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original data: int32, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    __slots__ = ('address', 'master_name', 'ip', 'port', 'num', 'data')
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgModbustcpwriteparams',
     'type': 'rm_ros_interfaces/msg/Modbustcpwriteparams',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/Modbustcpwriteparams',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_4a64e731b883a1dde6928a5f16a5760b7f6ac64eaf578066d859d8b5a8c0f59b',
     'minimum': 24,
     'maximum': 600,
     'semantics': '',
     'fields': [{'name': 'address',
                 'type': 'int32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'master_name',
                 'type': 'string',
                 'array': '',
                 'count': 0,
                 'string_bound': 256,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'ip',
                 'type': 'string',
                 'array': '',
                 'count': 0,
                 'string_bound': 256,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'port',
                 'type': 'int32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'num',
                 'type': 'int32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'data',
                 'type': 'int32',
                 'array': 'sequence',
                 'count': 16,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgModbustcpwriteparams)

class Ros2Rm_ros_interfacesMsgMovec(Record):
    """@brief Own all original rm_ros_interfaces/msg/Movec fields.
    @details 6 ordered fields; 116..116 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original pose_mid: geometry_msgs/msg/Pose, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original pose_end: geometry_msgs/msg/Pose, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original speed: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original trajectory_connect: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original block: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original loop: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('pose_mid', 'pose_end', 'speed', 'trajectory_connect', 'block', 'loop')
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgMovec',
     'type': 'rm_ros_interfaces/msg/Movec',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/Movec',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_38ff7f7728a8e7dbf41a13933af66970695ea84b7f574103e4787164bf4c139b',
     'minimum': 116,
     'maximum': 116,
     'semantics': '',
     'fields': [{'name': 'pose_mid',
                 'type': 'geometry_msgs/msg/Pose',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'pose_end',
                 'type': 'geometry_msgs/msg/Pose',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'speed',
                 'type': 'uint8',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'trajectory_connect',
                 'type': 'uint8',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'block',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'loop',
                 'type': 'uint8',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgMovec)

class Ros2Rm_ros_interfacesMsgMovej(Record):
    """@brief Own all original rm_ros_interfaces/msg/Movej fields.
    @details 5 ordered fields; 8..72 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original joint: float32, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    # @brief Original speed: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original block: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original trajectory_connect: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original dof: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('joint', 'speed', 'block', 'trajectory_connect', 'dof')
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgMovej',
     'type': 'rm_ros_interfaces/msg/Movej',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/Movej',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_312993173527a5b6dde9ea4a53329acb4db998fd018e48571d5fe67cfd41b37b',
     'minimum': 8,
     'maximum': 72,
     'semantics': '',
     'fields': [{'name': 'joint',
                 'type': 'float32',
                 'array': 'sequence',
                 'count': 16,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'speed',
                 'type': 'uint8',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'block',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'trajectory_connect',
                 'type': 'uint8',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'dof',
                 'type': 'uint8',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgMovej)

class Ros2Rm_ros_interfacesMsgMovejp(Record):
    """@brief Own all original rm_ros_interfaces/msg/Movejp fields.
    @details 4 ordered fields; 59..59 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original pose: geometry_msgs/msg/Pose, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original speed: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original trajectory_connect: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original block: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('pose', 'speed', 'trajectory_connect', 'block')
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgMovejp',
     'type': 'rm_ros_interfaces/msg/Movejp',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/Movejp',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_582d06c87282798190aadeffec820a654c3eb6d4cdb7dd600acff05aa0be5d72',
     'minimum': 59,
     'maximum': 59,
     'semantics': '',
     'fields': [{'name': 'pose',
                 'type': 'geometry_msgs/msg/Pose',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'speed',
                 'type': 'uint8',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'trajectory_connect',
                 'type': 'uint8',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'block',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgMovejp)

class Ros2Rm_ros_interfacesMsgMovel(Record):
    """@brief Own all original rm_ros_interfaces/msg/Movel fields.
    @details 4 ordered fields; 59..59 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original pose: geometry_msgs/msg/Pose, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original speed: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original trajectory_connect: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original block: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('pose', 'speed', 'trajectory_connect', 'block')
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgMovel',
     'type': 'rm_ros_interfaces/msg/Movel',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/Movel',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_bedd323ae798e9ee8c9bdfd37723bcd04da6d4ea2be2ea3b135617b9896fa5e8',
     'minimum': 59,
     'maximum': 59,
     'semantics': '',
     'fields': [{'name': 'pose',
                 'type': 'geometry_msgs/msg/Pose',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'speed',
                 'type': 'uint8',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'trajectory_connect',
                 'type': 'uint8',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'block',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgMovel)

class Ros2Rm_ros_interfacesMsgMoveloffset(Record):
    """@brief Own all original rm_ros_interfaces/msg/Moveloffset fields.
    @details 6 ordered fields; 67..67 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original pose: geometry_msgs/msg/Pose, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original speed: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original r: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original trajectory_connect: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original frame_type: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original block: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('pose', 'speed', 'r', 'trajectory_connect', 'frame_type', 'block')
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgMoveloffset',
     'type': 'rm_ros_interfaces/msg/Moveloffset',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/Moveloffset',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_8db628a7aa137fd0a632e9a613158da09b3f8c779d3bd626cd6fc66c1b926493',
     'minimum': 67,
     'maximum': 67,
     'semantics': '',
     'fields': [{'name': 'pose',
                 'type': 'geometry_msgs/msg/Pose',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'speed',
                 'type': 'int32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'r',
                 'type': 'int32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'trajectory_connect',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'frame_type',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'block',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgMoveloffset)

class Ros2Rm_ros_interfacesMsgOrtteach(Record):
    """@brief Own all original rm_ros_interfaces/msg/Ortteach fields.
    @details 3 ordered fields; 3..3 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original type: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original direction: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original speed: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('type', 'direction', 'speed')
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgOrtteach',
     'type': 'rm_ros_interfaces/msg/Ortteach',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/Ortteach',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_828e6ff29149aa578dcf551d9ad3e97087a267dd0bbe20f8da158ea9dff2a7e3',
     'minimum': 3,
     'maximum': 3,
     'semantics': '',
     'fields': [{'name': 'type',
                 'type': 'uint8',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'direction',
                 'type': 'uint8',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'speed',
                 'type': 'uint8',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgOrtteach)

class Ros2Rm_ros_interfacesMsgPosteach(Record):
    """@brief Own all original rm_ros_interfaces/msg/Posteach fields.
    @details 3 ordered fields; 3..3 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original type: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original direction: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original speed: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('type', 'direction', 'speed')
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgPosteach',
     'type': 'rm_ros_interfaces/msg/Posteach',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/Posteach',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_bc647691f20ce4406973651c48148a74c7e080ec9916ab10fc85087b16ab9439',
     'minimum': 3,
     'maximum': 3,
     'semantics': '',
     'fields': [{'name': 'type',
                 'type': 'uint8',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'direction',
                 'type': 'uint8',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'speed',
                 'type': 'uint8',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgPosteach)

class Ros2Rm_ros_interfacesMsgProgramrunstate(Record):
    """@brief Own all original rm_ros_interfaces/msg/Programrunstate fields.
    @details 10 ordered fields; 37..165 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original run_state: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original id: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original edit_id: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original plan_num: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original total_loop: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original step_mode: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original plan_speed: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original loop_num: int32, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    # @brief Original loop_cont: int32, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    # @brief Original state: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('run_state',
     'id',
     'edit_id',
     'plan_num',
     'total_loop',
     'step_mode',
     'plan_speed',
     'loop_num',
     'loop_cont',
     'state')
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgProgramrunstate',
     'type': 'rm_ros_interfaces/msg/Programrunstate',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/Programrunstate',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_8177293c0a3c1aeee271d02ae322c7ae3494084d37ada682224566ec830f2964',
     'minimum': 37,
     'maximum': 165,
     'semantics': '',
     'fields': [{'name': 'run_state',
                 'type': 'int32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'id',
                 'type': 'int32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'edit_id',
                 'type': 'int32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'plan_num',
                 'type': 'int32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'total_loop',
                 'type': 'int32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'step_mode',
                 'type': 'int32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'plan_speed',
                 'type': 'int32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'loop_num',
                 'type': 'int32',
                 'array': 'sequence',
                 'count': 16,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'loop_cont',
                 'type': 'int32',
                 'array': 'sequence',
                 'count': 16,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'state',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgProgramrunstate)

class Ros2Rm_ros_interfacesMsgRS485params(Record):
    """@brief Own all original rm_ros_interfaces/msg/RS485params fields.
    @details 3 ordered fields; 9..9 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original mode: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original baudrate: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original state: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('mode', 'baudrate', 'state')
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgRS485params',
     'type': 'rm_ros_interfaces/msg/RS485params',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/RS485params',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_232cdd997f067a79a7b7fb4f80fcf650de9da72f55545aeb786b45f281a5d5d7',
     'minimum': 9,
     'maximum': 9,
     'semantics': '',
     'fields': [{'name': 'mode',
                 'type': 'int32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'baudrate',
                 'type': 'int32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'state',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgRS485params)

class Ros2Rm_ros_interfacesMsgRmerr(Record):
    """@brief Own all original rm_ros_interfaces/msg/Rmerr fields.
    @details 2 ordered fields; 5..69 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original err_len: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original err: int32, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    __slots__ = ('err_len', 'err')
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgRmerr',
     'type': 'rm_ros_interfaces/msg/Rmerr',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/Rmerr',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_0214f854e52c466ae60250c310e46d762242fe3a0ae85bf7b266949c8d10c74b',
     'minimum': 5,
     'maximum': 69,
     'semantics': '',
     'fields': [{'name': 'err_len',
                 'type': 'uint8',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'err',
                 'type': 'int32',
                 'array': 'sequence',
                 'count': 16,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgRmerr)

class Ros2Rm_ros_interfacesMsgRmplusbase(Record):
    """@brief Own all original rm_ros_interfaces/msg/Rmplusbase fields.
    @details 22 ordered fields; 413..1437 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original manu: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original type: int8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original hv: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original sv: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original bv: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original id: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original dof: int8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original check: int8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original bee: int8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original force: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original touch: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original touch_num: int8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original touch_sw: int8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original hand: int8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original pos_up: int32, array.
    # @details Count/quota 12; string byte bound 0; caller owns storage.
    # @brief Original pos_low: int32, array.
    # @details Count/quota 12; string byte bound 0; caller owns storage.
    # @brief Original angle_up: int32, array.
    # @details Count/quota 12; string byte bound 0; caller owns storage.
    # @brief Original angle_low: int32, array.
    # @details Count/quota 12; string byte bound 0; caller owns storage.
    # @brief Original speed_up: int32, array.
    # @details Count/quota 12; string byte bound 0; caller owns storage.
    # @brief Original speed_low: int32, array.
    # @details Count/quota 12; string byte bound 0; caller owns storage.
    # @brief Original force_up: int32, array.
    # @details Count/quota 12; string byte bound 0; caller owns storage.
    # @brief Original force_low: int32, array.
    # @details Count/quota 12; string byte bound 0; caller owns storage.
    __slots__ = ('manu',
     'type',
     'hv',
     'sv',
     'bv',
     'id',
     'dof',
     'check',
     'bee',
     'force',
     'touch',
     'touch_num',
     'touch_sw',
     'hand',
     'pos_up',
     'pos_low',
     'angle_up',
     'angle_low',
     'speed_up',
     'speed_low',
     'force_up',
     'force_low')
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgRmplusbase',
     'type': 'rm_ros_interfaces/msg/Rmplusbase',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/Rmplusbase',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_624630b927c67066221f379ec58ca895880e86576a803448636fdfe0b4f2f3d6',
     'minimum': 413,
     'maximum': 1437,
     'semantics': '',
     'fields': [{'name': 'manu',
                 'type': 'string',
                 'array': '',
                 'count': 0,
                 'string_bound': 256,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'type',
                 'type': 'int8',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'hv',
                 'type': 'string',
                 'array': '',
                 'count': 0,
                 'string_bound': 256,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'sv',
                 'type': 'string',
                 'array': '',
                 'count': 0,
                 'string_bound': 256,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'bv',
                 'type': 'string',
                 'array': '',
                 'count': 0,
                 'string_bound': 256,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'id',
                 'type': 'int32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'dof',
                 'type': 'int8',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'check',
                 'type': 'int8',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'bee',
                 'type': 'int8',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'force',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'touch',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'touch_num',
                 'type': 'int8',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'touch_sw',
                 'type': 'int8',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'hand',
                 'type': 'int8',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'pos_up',
                 'type': 'int32',
                 'array': 'array',
                 'count': 12,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'pos_low',
                 'type': 'int32',
                 'array': 'array',
                 'count': 12,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'angle_up',
                 'type': 'int32',
                 'array': 'array',
                 'count': 12,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'angle_low',
                 'type': 'int32',
                 'array': 'array',
                 'count': 12,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'speed_up',
                 'type': 'int32',
                 'array': 'array',
                 'count': 12,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'speed_low',
                 'type': 'int32',
                 'array': 'array',
                 'count': 12,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'force_up',
                 'type': 'int32',
                 'array': 'array',
                 'count': 12,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'force_low',
                 'type': 'int32',
                 'array': 'array',
                 'count': 12,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgRmplusbase)

class Ros2Rm_ros_interfacesMsgRmplusstate(Record):
    """@brief Own all original rm_ros_interfaces/msg/Rmplusstate fields.
    @details 14 ordered fields; 724..724 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original sys_state: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original dof_state: int32, array.
    # @details Count/quota 12; string byte bound 0; caller owns storage.
    # @brief Original dof_err: int32, array.
    # @details Count/quota 12; string byte bound 0; caller owns storage.
    # @brief Original pos: int32, array.
    # @details Count/quota 12; string byte bound 0; caller owns storage.
    # @brief Original speed: int32, array.
    # @details Count/quota 12; string byte bound 0; caller owns storage.
    # @brief Original angle: int32, array.
    # @details Count/quota 12; string byte bound 0; caller owns storage.
    # @brief Original current: int32, array.
    # @details Count/quota 12; string byte bound 0; caller owns storage.
    # @brief Original normal_force: int32, array.
    # @details Count/quota 18; string byte bound 0; caller owns storage.
    # @brief Original tangential_force: int32, array.
    # @details Count/quota 18; string byte bound 0; caller owns storage.
    # @brief Original tangential_force_dir: int32, array.
    # @details Count/quota 18; string byte bound 0; caller owns storage.
    # @brief Original tsa: uint32, array.
    # @details Count/quota 12; string byte bound 0; caller owns storage.
    # @brief Original tma: uint32, array.
    # @details Count/quota 12; string byte bound 0; caller owns storage.
    # @brief Original touch_data: int32, array.
    # @details Count/quota 18; string byte bound 0; caller owns storage.
    # @brief Original force: int32, array.
    # @details Count/quota 12; string byte bound 0; caller owns storage.
    __slots__ = ('sys_state',
     'dof_state',
     'dof_err',
     'pos',
     'speed',
     'angle',
     'current',
     'normal_force',
     'tangential_force',
     'tangential_force_dir',
     'tsa',
     'tma',
     'touch_data',
     'force')
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgRmplusstate',
     'type': 'rm_ros_interfaces/msg/Rmplusstate',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/Rmplusstate',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_d01da3123f147e3c5eb51c8ea9e08c56b224d49ea8a41afa60d81af99cf894a1',
     'minimum': 724,
     'maximum': 724,
     'semantics': '',
     'fields': [{'name': 'sys_state',
                 'type': 'int32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'dof_state',
                 'type': 'int32',
                 'array': 'array',
                 'count': 12,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'dof_err',
                 'type': 'int32',
                 'array': 'array',
                 'count': 12,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'pos',
                 'type': 'int32',
                 'array': 'array',
                 'count': 12,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'speed',
                 'type': 'int32',
                 'array': 'array',
                 'count': 12,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'angle',
                 'type': 'int32',
                 'array': 'array',
                 'count': 12,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'current',
                 'type': 'int32',
                 'array': 'array',
                 'count': 12,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'normal_force',
                 'type': 'int32',
                 'array': 'array',
                 'count': 18,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'tangential_force',
                 'type': 'int32',
                 'array': 'array',
                 'count': 18,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'tangential_force_dir',
                 'type': 'int32',
                 'array': 'array',
                 'count': 18,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'tsa',
                 'type': 'uint32',
                 'array': 'array',
                 'count': 12,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'tma',
                 'type': 'uint32',
                 'array': 'array',
                 'count': 12,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'touch_data',
                 'type': 'int32',
                 'array': 'array',
                 'count': 18,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'force',
                 'type': 'int32',
                 'array': 'array',
                 'count': 12,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgRmplusstate)

class Ros2Rm_ros_interfacesMsgRmversion(Record):
    """@brief Own all original rm_ros_interfaces/msg/Rmversion fields.
    @details 1 ordered fields; 4..260 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original version: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    __slots__ = ('version',)
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgRmversion',
     'type': 'rm_ros_interfaces/msg/Rmversion',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/Rmversion',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_74ea4fcf0c1b128d73ea1b321af8bc72f281eec2755d43969497d34295484eff',
     'minimum': 4,
     'maximum': 260,
     'semantics': '',
     'fields': [{'name': 'version',
                 'type': 'string',
                 'array': '',
                 'count': 0,
                 'string_bound': 256,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgRmversion)

class Ros2Rm_ros_interfacesMsgRobotInfo(Record):
    """@brief Own all original rm_ros_interfaces/msg/RobotInfo fields.
    @details 5 ordered fields; 5..5 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original arm_dof: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original arm_model: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original force_type: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original robot_controller_version: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original state: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('arm_dof', 'arm_model', 'force_type', 'robot_controller_version', 'state')
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgRobotInfo',
     'type': 'rm_ros_interfaces/msg/RobotInfo',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/RobotInfo',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_cfe5e9cc7c94b43607d08a463a12d3f15b2a91f9a35ed5c77e9fb333bed3a2d2',
     'minimum': 5,
     'maximum': 5,
     'semantics': '',
     'fields': [{'name': 'arm_dof',
                 'type': 'uint8',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'arm_model',
                 'type': 'uint8',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'force_type',
                 'type': 'uint8',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'robot_controller_version',
                 'type': 'uint8',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'state',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgRobotInfo)

class Ros2Rm_ros_interfacesMsgSendproject(Record):
    """@brief Own all original rm_ros_interfaces/msg/Sendproject fields.
    @details 8 ordered fields; 32..288 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original project_path: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original project_path_len: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original plan_speed: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original only_save: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original save_id: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original step_flag: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original auto_start: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original project_type: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('project_path',
     'project_path_len',
     'plan_speed',
     'only_save',
     'save_id',
     'step_flag',
     'auto_start',
     'project_type')
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgSendproject',
     'type': 'rm_ros_interfaces/msg/Sendproject',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/Sendproject',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_625ceba69efce5e5797055d9139300b83f9c8c506b49c55d0ce45f22e022f330',
     'minimum': 32,
     'maximum': 288,
     'semantics': '',
     'fields': [{'name': 'project_path',
                 'type': 'string',
                 'array': '',
                 'count': 0,
                 'string_bound': 256,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'project_path_len',
                 'type': 'int32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'plan_speed',
                 'type': 'int32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'only_save',
                 'type': 'int32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'save_id',
                 'type': 'int32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'step_flag',
                 'type': 'int32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'auto_start',
                 'type': 'int32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'project_type',
                 'type': 'int32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgSendproject)

class Ros2Rm_ros_interfacesMsgSetforceposition(Record):
    """@brief Own all original rm_ros_interfaces/msg/Setforceposition fields.
    @details 4 ordered fields; 5..5 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original sensor: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original mode: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original direction: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original n: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('sensor', 'mode', 'direction', 'n')
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgSetforceposition',
     'type': 'rm_ros_interfaces/msg/Setforceposition',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/Setforceposition',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_5789fffaac8dbc81a98dba271defe524caa2400ed010026b1236a1635d0af157',
     'minimum': 5,
     'maximum': 5,
     'semantics': '',
     'fields': [{'name': 'sensor',
                 'type': 'uint8',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'mode',
                 'type': 'uint8',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'direction',
                 'type': 'uint8',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'n',
                 'type': 'int16',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgSetforceposition)

class Ros2Rm_ros_interfacesMsgSetrealtimepush(Record):
    """@brief Own all original rm_ros_interfaces/msg/Setrealtimepush fields.
    @details 12 ordered fields; 18..274 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original cycle: uint16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original port: uint16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original force_coordinate: uint16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original ip: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original aloha_state_enable: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original arm_current_status_enable: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original expand_state_enable: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original hand_enable: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original joint_speed_enable: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original lift_state_enable: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original plus_base_enable: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original plus_state_enable: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('cycle',
     'port',
     'force_coordinate',
     'ip',
     'aloha_state_enable',
     'arm_current_status_enable',
     'expand_state_enable',
     'hand_enable',
     'joint_speed_enable',
     'lift_state_enable',
     'plus_base_enable',
     'plus_state_enable')
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgSetrealtimepush',
     'type': 'rm_ros_interfaces/msg/Setrealtimepush',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/Setrealtimepush',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_ce4398bb4bc2a30a854b9f2e610ce31867b4b01d1979bb1ca7c27ee8e0356368',
     'minimum': 18,
     'maximum': 274,
     'semantics': '',
     'fields': [{'name': 'cycle',
                 'type': 'uint16',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'port',
                 'type': 'uint16',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'force_coordinate',
                 'type': 'uint16',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'ip',
                 'type': 'string',
                 'array': '',
                 'count': 0,
                 'string_bound': 256,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'aloha_state_enable',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'arm_current_status_enable',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'expand_state_enable',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'hand_enable',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'joint_speed_enable',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'lift_state_enable',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'plus_base_enable',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'plus_state_enable',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgSetrealtimepush)

class Ros2Rm_ros_interfacesMsgSixforce(Record):
    """@brief Own all original rm_ros_interfaces/msg/Sixforce fields.
    @details 6 ordered fields; 24..24 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original force_fx: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original force_fy: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original force_fz: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original force_mx: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original force_my: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original force_mz: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('force_fx', 'force_fy', 'force_fz', 'force_mx', 'force_my', 'force_mz')
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgSixforce',
     'type': 'rm_ros_interfaces/msg/Sixforce',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/Sixforce',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_004ddf4ebf23f01c921ea38e652f7ab45bf6b17e747ac33e55f08838b760a288',
     'minimum': 24,
     'maximum': 24,
     'semantics': '',
     'fields': [{'name': 'force_fx',
                 'type': 'float32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'force_fy',
                 'type': 'float32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'force_fz',
                 'type': 'float32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'force_mx',
                 'type': 'float32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'force_my',
                 'type': 'float32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'force_mz',
                 'type': 'float32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgSixforce)

class Ros2Rm_ros_interfacesMsgStop(Record):
    """@brief Own all original rm_ros_interfaces/msg/Stop fields.
    @details 1 ordered fields; 1..1 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original state: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('state',)
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgStop',
     'type': 'rm_ros_interfaces/msg/Stop',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/Stop',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_b515c85f83dde19caf6ae3e504952314ba9be77064556d3aed9fbab6ee8d778a',
     'minimum': 1,
     'maximum': 1,
     'semantics': '',
     'fields': [{'name': 'state',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgStop)

class Ros2Rm_ros_interfacesMsgToolsoftwareversionv4(Record):
    """@brief Own all original rm_ros_interfaces/msg/Toolsoftwareversionv4 fields.
    @details 2 ordered fields; 5..261 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original tool_version: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original state: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('tool_version', 'state')
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgToolsoftwareversionv4',
     'type': 'rm_ros_interfaces/msg/Toolsoftwareversionv4',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/Toolsoftwareversionv4',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_ab5015e1cb20be291a6a66c7e169b79f59b41558b05095438fc8fb9f14e44991',
     'minimum': 5,
     'maximum': 261,
     'semantics': '',
     'fields': [{'name': 'tool_version',
                 'type': 'string',
                 'array': '',
                 'count': 0,
                 'string_bound': 256,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'state',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgToolsoftwareversionv4)

class Ros2Rm_ros_interfacesMsgTrajectoryinfo(Record):
    """@brief Own all original rm_ros_interfaces/msg/Trajectoryinfo fields.
    @details 4 ordered fields; 13..525 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original name: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original create_time: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original point_num: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original state: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('name', 'create_time', 'point_num', 'state')
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgTrajectoryinfo',
     'type': 'rm_ros_interfaces/msg/Trajectoryinfo',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/Trajectoryinfo',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_99a949e7baea68f6d2c4e2811bb45e47ce4c3e49fd572429adf1bb5501753af1',
     'minimum': 13,
     'maximum': 525,
     'semantics': '',
     'fields': [{'name': 'name',
                 'type': 'string',
                 'array': '',
                 'count': 0,
                 'string_bound': 256,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'create_time',
                 'type': 'string',
                 'array': '',
                 'count': 0,
                 'string_bound': 256,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'point_num',
                 'type': 'int32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'state',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgTrajectoryinfo)

class Ros2Rm_ros_interfacesMsgTrajectorylist(Record):
    """@brief Own all original rm_ros_interfaces/msg/Trajectorylist fields.
    @details 6 ordered fields; 21..8677 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original page_num: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original page_size: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original total_size: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original vague_search: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original tra_list: rm_ros_interfaces/msg/Trajectoryinfo, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    # @brief Original state: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('page_num', 'page_size', 'total_size', 'vague_search', 'tra_list', 'state')
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgTrajectorylist',
     'type': 'rm_ros_interfaces/msg/Trajectorylist',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/Trajectorylist',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_9498185ae3b53a6877f05feb80b72a7471f52105f7c394fd7ee091798391dc9f',
     'minimum': 21,
     'maximum': 8677,
     'semantics': '',
     'fields': [{'name': 'page_num',
                 'type': 'int32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'page_size',
                 'type': 'int32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'total_size',
                 'type': 'int32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'vague_search',
                 'type': 'string',
                 'array': '',
                 'count': 0,
                 'string_bound': 256,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'tra_list',
                 'type': 'rm_ros_interfaces/msg/Trajectoryinfo',
                 'array': 'sequence',
                 'count': 16,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'state',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgTrajectorylist)

class Ros2Rm_ros_interfacesMsgUdpexpandstate(Record):
    """@brief Own all original rm_ros_interfaces/msg/Udpexpandstate fields.
    @details 6 ordered fields; 14..14 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original pos: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original current: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original err_flag: uint16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original en_flag: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original joint_id: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original mode: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('pos', 'current', 'err_flag', 'en_flag', 'joint_id', 'mode')
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgUdpexpandstate',
     'type': 'rm_ros_interfaces/msg/Udpexpandstate',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/Udpexpandstate',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_d3704bef2217ad73435bc3b958f185335ecdcd9ba3112d99f5dd29664a76a7c5',
     'minimum': 14,
     'maximum': 14,
     'semantics': '',
     'fields': [{'name': 'pos',
                 'type': 'int32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'current',
                 'type': 'int32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'err_flag',
                 'type': 'uint16',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'en_flag',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'joint_id',
                 'type': 'uint8',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'mode',
                 'type': 'int16',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgUdpexpandstate)

class Ros2Rm_ros_interfacesMsgUdpliftstate(Record):
    """@brief Own all original rm_ros_interfaces/msg/Udpliftstate fields.
    @details 5 ordered fields; 13..13 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original height: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original pos: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original current: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original en_flag: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original err_flag: uint16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('height', 'pos', 'current', 'en_flag', 'err_flag')
    SCHEMA = {'symbol': 'Ros2Rm_ros_interfacesMsgUdpliftstate',
     'type': 'rm_ros_interfaces/msg/Udpliftstate',
     'ros_version': 2,
     'native_type': 'rm_ros_interfaces/msg/Udpliftstate',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_8ba0450948ef53ead53ed721c81f39548616ee59820b96c7e7d5b3385edc8817',
     'minimum': 13,
     'maximum': 13,
     'semantics': '',
     'fields': [{'name': 'height',
                 'type': 'int32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'pos',
                 'type': 'float32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'current',
                 'type': 'int16',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'en_flag',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'err_flag',
                 'type': 'uint16',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Rm_ros_interfacesMsgUdpliftstate)
