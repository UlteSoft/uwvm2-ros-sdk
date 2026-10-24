"""@file records.py
@brief Complete original vendor values and canonical codecs.
@details Owned fields preserve widths, quotas and defaults. Native identity remains unbound.
No constructor or codec opens a ROS resource or grants a capability.
"""
from ros.py.wire import Record, Registry

REGISTRY = Registry()


class Ros2Builtin_interfacesMsgTime(Record):
    """@brief Own all original builtin_interfaces/msg/Time fields.
    @details 2 ordered fields; 8..8 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original sec: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original nanosec: uint32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('sec', 'nanosec')
    SCHEMA = {'symbol': 'Ros2Builtin_interfacesMsgTime',
     'type': 'builtin_interfaces/msg/Time',
     'ros_version': 2,
     'native_type': 'builtin_interfaces/msg/Time',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7',
     'minimum': 8,
     'maximum': 8,
     'semantics': 'normalized-time',
     'fields': [{'name': 'sec',
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
                {'name': 'nanosec',
                 'type': 'uint32',
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

REGISTRY.add(Ros2Builtin_interfacesMsgTime)

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

class Ros2Std_msgsMsgHeader(Record):
    """@brief Own all original std_msgs/msg/Header fields.
    @details 2 ordered fields; 12..268 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original stamp: builtin_interfaces/msg/Time, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original frame_id: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    __slots__ = ('stamp', 'frame_id')
    SCHEMA = {'symbol': 'Ros2Std_msgsMsgHeader',
     'type': 'std_msgs/msg/Header',
     'ros_version': 2,
     'native_type': 'std_msgs/msg/Header',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_2f4f374a97a14337b36f87987a2c2fe2fba6dc9597fa4455029ba3bef65c1c2b',
     'minimum': 12,
     'maximum': 268,
     'semantics': '',
     'fields': [{'name': 'stamp',
                 'type': 'builtin_interfaces/msg/Time',
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
                {'name': 'frame_id',
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

REGISTRY.add(Ros2Std_msgsMsgHeader)

class Ros2Xarm_msgsMsgCIOState(Record):
    """@brief Own all original xarm_msgs/msg/CIOState fields.
    @details 9 ordered fields; 72..328 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original header: std_msgs/msg/Header, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original state: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original code: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original input_digitals: uint16, array.
    # @details Count/quota 2; string byte bound 0; caller owns storage.
    # @brief Original output_digitals: uint16, array.
    # @details Count/quota 2; string byte bound 0; caller owns storage.
    # @brief Original input_analogs: float32, array.
    # @details Count/quota 2; string byte bound 0; caller owns storage.
    # @brief Original output_analogs: float32, array.
    # @details Count/quota 2; string byte bound 0; caller owns storage.
    # @brief Original input_conf: uint8, array.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    # @brief Original output_conf: uint8, array.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    __slots__ = ('header',
     'state',
     'code',
     'input_digitals',
     'output_digitals',
     'input_analogs',
     'output_analogs',
     'input_conf',
     'output_conf')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsMsgCIOState',
     'type': 'xarm_msgs/msg/CIOState',
     'ros_version': 2,
     'native_type': 'xarm_msgs/msg/CIOState',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_87e50011fee05d07ce49effe9f8fd2be4e5edf3a09a2b3cd735692fea85c2268',
     'minimum': 72,
     'maximum': 328,
     'semantics': '',
     'fields': [{'name': 'header',
                 'type': 'std_msgs/msg/Header',
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
                {'name': 'code',
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
                {'name': 'input_digitals',
                 'type': 'uint16',
                 'array': 'array',
                 'count': 2,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'output_digitals',
                 'type': 'uint16',
                 'array': 'array',
                 'count': 2,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'input_analogs',
                 'type': 'float32',
                 'array': 'array',
                 'count': 2,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'output_analogs',
                 'type': 'float32',
                 'array': 'array',
                 'count': 2,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'input_conf',
                 'type': 'uint8',
                 'array': 'array',
                 'count': 16,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'output_conf',
                 'type': 'uint8',
                 'array': 'array',
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

REGISTRY.add(Ros2Xarm_msgsMsgCIOState)

class Ros2Xarm_msgsMsgIOState(Record):
    """@brief Own all original xarm_msgs/msg/IOState fields.
    @details 4 ordered fields; 16..16 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original digital_1: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original digital_2: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original analog_1: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original analog_2: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('digital_1', 'digital_2', 'analog_1', 'analog_2')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsMsgIOState',
     'type': 'xarm_msgs/msg/IOState',
     'ros_version': 2,
     'native_type': 'xarm_msgs/msg/IOState',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_8f3e77d7d4c6ac1e49dadd8f4615cb015c028ecf494050a5a6b794d310863dc3',
     'minimum': 16,
     'maximum': 16,
     'semantics': '',
     'fields': [{'name': 'digital_1',
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
                {'name': 'digital_2',
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
                {'name': 'analog_1',
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
                {'name': 'analog_2',
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

REGISTRY.add(Ros2Xarm_msgsMsgIOState)

class Ros2Xarm_msgsMsgMoveVelocity(Record):
    """@brief Own all original xarm_msgs/msg/MoveVelocity fields.
    @details 4 ordered fields; 10..138 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original speeds: float32, sequence.
    # @details Count/quota 32; string byte bound 0; caller owns storage.
    # @brief Original is_sync: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original is_tool_coord: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original duration: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('speeds', 'is_sync', 'is_tool_coord', 'duration')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsMsgMoveVelocity',
     'type': 'xarm_msgs/msg/MoveVelocity',
     'ros_version': 2,
     'native_type': 'xarm_msgs/msg/MoveVelocity',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_5ba20d989b68823e2b6a83c108f75912c8ab3472caf926903a76078321b5366f',
     'minimum': 10,
     'maximum': 138,
     'semantics': '',
     'fields': [{'name': 'speeds',
                 'type': 'float32',
                 'array': 'sequence',
                 'count': 32,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'is_sync',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': 'True',
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': True},
                {'name': 'is_tool_coord',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': 'False',
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': False},
                {'name': 'duration',
                 'type': 'float32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': '-1.0',
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': -1.0}],
     'constants': {}}

REGISTRY.add(Ros2Xarm_msgsMsgMoveVelocity)

class Ros2Xarm_msgsMsgRobotMsg(Record):
    """@brief Own all original xarm_msgs/msg/RobotMsg fields.
    @details 11 ordered fields; 78..362 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original header: std_msgs/msg/Header, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original state: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original mode: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original cmdnum: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original mt_brake: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original mt_able: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original err: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original warn: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original angle: float32, sequence.
    # @details Count/quota 7; string byte bound 0; caller owns storage.
    # @brief Original pose: float32, array.
    # @details Count/quota 6; string byte bound 0; caller owns storage.
    # @brief Original offset: float32, array.
    # @details Count/quota 6; string byte bound 0; caller owns storage.
    __slots__ = ('header',
     'state',
     'mode',
     'cmdnum',
     'mt_brake',
     'mt_able',
     'err',
     'warn',
     'angle',
     'pose',
     'offset')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsMsgRobotMsg',
     'type': 'xarm_msgs/msg/RobotMsg',
     'ros_version': 2,
     'native_type': 'xarm_msgs/msg/RobotMsg',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_065254beab3e0439a6fb2965a10d270ca0aef1384523118d04cb39e886841c78',
     'minimum': 78,
     'maximum': 362,
     'semantics': '',
     'fields': [{'name': 'header',
                 'type': 'std_msgs/msg/Header',
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
                 'default': None},
                {'name': 'cmdnum',
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
                {'name': 'mt_brake',
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
                {'name': 'mt_able',
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
                {'name': 'err',
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
                {'name': 'warn',
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
                {'name': 'angle',
                 'type': 'float32',
                 'array': 'sequence',
                 'count': 7,
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
                {'name': 'offset',
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
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Xarm_msgsMsgRobotMsg)

class Ros2Xarm_msgsSrvBioGripperCtrl_Request(Record):
    """@brief Own all original xarm_msgs/srv/BioGripperCtrl_Request fields.
    @details 3 ordered fields; 7..7 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original speed: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original wait: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original timeout: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('speed', 'wait', 'timeout')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvBioGripperCtrl_Request',
     'type': 'xarm_msgs/srv/BioGripperCtrl_Request',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/BioGripperCtrl_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_7eccf0c454f9b64aae93f91d23083b3b5121f540b0d0406142ea7e234a2f634f',
     'minimum': 7,
     'maximum': 7,
     'semantics': '',
     'fields': [{'name': 'speed',
                 'type': 'int16',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': '0',
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': 0},
                {'name': 'wait',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': 'True',
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': True},
                {'name': 'timeout',
                 'type': 'float32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': '5.0',
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': 5.0}],
     'constants': {}}

REGISTRY.add(Ros2Xarm_msgsSrvBioGripperCtrl_Request)

class Ros2Xarm_msgsSrvBioGripperCtrl_Response(Record):
    """@brief Own all original xarm_msgs/srv/BioGripperCtrl_Response fields.
    @details 2 ordered fields; 6..262 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original ret: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original message: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    __slots__ = ('ret', 'message')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvBioGripperCtrl_Response',
     'type': 'xarm_msgs/srv/BioGripperCtrl_Response',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/BioGripperCtrl_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_c72e0d7eb90ef20e8f7f521346886fc558547a1357a7915058d0e47c238f316a',
     'minimum': 6,
     'maximum': 262,
     'semantics': '',
     'fields': [{'name': 'ret',
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
                {'name': 'message',
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

REGISTRY.add(Ros2Xarm_msgsSrvBioGripperCtrl_Response)

class Ros2Xarm_msgsSrvBioGripperEnable_Request(Record):
    """@brief Own all original xarm_msgs/srv/BioGripperEnable_Request fields.
    @details 3 ordered fields; 6..6 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original enable: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original wait: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original timeout: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('enable', 'wait', 'timeout')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvBioGripperEnable_Request',
     'type': 'xarm_msgs/srv/BioGripperEnable_Request',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/BioGripperEnable_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_611333734053d9a2c9d3f776be73081c9ddcaaf435d927e1c87ff9b74f12eb43',
     'minimum': 6,
     'maximum': 6,
     'semantics': '',
     'fields': [{'name': 'enable',
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
                {'name': 'wait',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': 'False',
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': False},
                {'name': 'timeout',
                 'type': 'float32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': '3.0',
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': 3.0}],
     'constants': {}}

REGISTRY.add(Ros2Xarm_msgsSrvBioGripperEnable_Request)

class Ros2Xarm_msgsSrvBioGripperEnable_Response(Record):
    """@brief Own all original xarm_msgs/srv/BioGripperEnable_Response fields.
    @details 2 ordered fields; 6..262 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original ret: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original message: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    __slots__ = ('ret', 'message')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvBioGripperEnable_Response',
     'type': 'xarm_msgs/srv/BioGripperEnable_Response',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/BioGripperEnable_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_95ffb8f48b2e1bf41855513b3234b6a7b070e0d58d5a07d98fd7de4454034586',
     'minimum': 6,
     'maximum': 262,
     'semantics': '',
     'fields': [{'name': 'ret',
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
                {'name': 'message',
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

REGISTRY.add(Ros2Xarm_msgsSrvBioGripperEnable_Response)

class Ros2Xarm_msgsSrvCall_Request(Record):
    """@brief Own all original xarm_msgs/srv/Call_Request fields.
    @details 0 ordered fields; 0..0 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    __slots__ = ()
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvCall_Request',
     'type': 'xarm_msgs/srv/Call_Request',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/Call_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_6646b9fc8c0050e5c56cf918988e8cf8d7c633aabece1be11ec515f1ca2f837d',
     'minimum': 0,
     'maximum': 0,
     'semantics': '',
     'fields': [],
     'constants': {}}

REGISTRY.add(Ros2Xarm_msgsSrvCall_Request)

class Ros2Xarm_msgsSrvCall_Response(Record):
    """@brief Own all original xarm_msgs/srv/Call_Response fields.
    @details 2 ordered fields; 8..264 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original ret: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original message: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    __slots__ = ('ret', 'message')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvCall_Response',
     'type': 'xarm_msgs/srv/Call_Response',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/Call_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_c41e249f4ee21ea39233597918f3204e3a276e70c67b120b164c9cd3852c19da',
     'minimum': 8,
     'maximum': 264,
     'semantics': '',
     'fields': [{'name': 'ret',
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
                {'name': 'message',
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

REGISTRY.add(Ros2Xarm_msgsSrvCall_Response)

class Ros2Xarm_msgsSrvFtAdmittanceParams_Request(Record):
    """@brief Own all original xarm_msgs/srv/FtAdmittanceParams_Request fields.
    @details 5 ordered fields; 18..466 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original coord: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original c_axis: int16, sequence.
    # @details Count/quota 32; string byte bound 0; caller owns storage.
    # @brief Original m: float32, sequence.
    # @details Count/quota 32; string byte bound 0; caller owns storage.
    # @brief Original k: float32, sequence.
    # @details Count/quota 32; string byte bound 0; caller owns storage.
    # @brief Original b: float32, sequence.
    # @details Count/quota 32; string byte bound 0; caller owns storage.
    __slots__ = ('coord', 'c_axis', 'm', 'k', 'b')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvFtAdmittanceParams_Request',
     'type': 'xarm_msgs/srv/FtAdmittanceParams_Request',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/FtAdmittanceParams_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_1840d594fd4b929bc350ebaef47f43840937c445b24f4f22371c953323de8e92',
     'minimum': 18,
     'maximum': 466,
     'semantics': '',
     'fields': [{'name': 'coord',
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
                {'name': 'c_axis',
                 'type': 'int16',
                 'array': 'sequence',
                 'count': 32,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'm',
                 'type': 'float32',
                 'array': 'sequence',
                 'count': 32,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'k',
                 'type': 'float32',
                 'array': 'sequence',
                 'count': 32,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'b',
                 'type': 'float32',
                 'array': 'sequence',
                 'count': 32,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Xarm_msgsSrvFtAdmittanceParams_Request)

class Ros2Xarm_msgsSrvFtAdmittanceParams_Response(Record):
    """@brief Own all original xarm_msgs/srv/FtAdmittanceParams_Response fields.
    @details 2 ordered fields; 6..262 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original ret: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original message: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    __slots__ = ('ret', 'message')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvFtAdmittanceParams_Response',
     'type': 'xarm_msgs/srv/FtAdmittanceParams_Response',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/FtAdmittanceParams_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_a91b64c60079cb6473e500e18d2da474d1fabc27f8c9cc7690f22b74531cbf07',
     'minimum': 6,
     'maximum': 262,
     'semantics': '',
     'fields': [{'name': 'ret',
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
                {'name': 'message',
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

REGISTRY.add(Ros2Xarm_msgsSrvFtAdmittanceParams_Response)

class Ros2Xarm_msgsSrvFtCaliLoad_Request(Record):
    """@brief Own all original xarm_msgs/srv/FtCaliLoad_Request fields.
    @details 6 ordered fields; 21..149 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original datas: float32, sequence.
    # @details Count/quota 32; string byte bound 0; caller owns storage.
    # @brief Original association_setting_tcp_load: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original m: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original x: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original y: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original z: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('datas', 'association_setting_tcp_load', 'm', 'x', 'y', 'z')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvFtCaliLoad_Request',
     'type': 'xarm_msgs/srv/FtCaliLoad_Request',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/FtCaliLoad_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_1132f426ed1335b5d92054df6693f0f5d5e5b5b9b21aa4ef19a65c293fa8394f',
     'minimum': 21,
     'maximum': 149,
     'semantics': '',
     'fields': [{'name': 'datas',
                 'type': 'float32',
                 'array': 'sequence',
                 'count': 32,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'association_setting_tcp_load',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': 'False',
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': False},
                {'name': 'm',
                 'type': 'float32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': '0.27',
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': 0.27},
                {'name': 'x',
                 'type': 'float32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': '-17.0',
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': -17.0},
                {'name': 'y',
                 'type': 'float32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': '9.0',
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': 9.0},
                {'name': 'z',
                 'type': 'float32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': '11.8',
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': 11.8}],
     'constants': {}}

REGISTRY.add(Ros2Xarm_msgsSrvFtCaliLoad_Request)

class Ros2Xarm_msgsSrvFtCaliLoad_Response(Record):
    """@brief Own all original xarm_msgs/srv/FtCaliLoad_Response fields.
    @details 2 ordered fields; 6..262 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original ret: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original message: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    __slots__ = ('ret', 'message')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvFtCaliLoad_Response',
     'type': 'xarm_msgs/srv/FtCaliLoad_Response',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/FtCaliLoad_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_990034f596c4a8e859c06c438635306e2938e763b5bea45019cdf5223347e4e7',
     'minimum': 6,
     'maximum': 262,
     'semantics': '',
     'fields': [{'name': 'ret',
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
                {'name': 'message',
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

REGISTRY.add(Ros2Xarm_msgsSrvFtCaliLoad_Response)

class Ros2Xarm_msgsSrvFtForceConfig_Request(Record):
    """@brief Own all original xarm_msgs/srv/FtForceConfig_Request fields.
    @details 4 ordered fields; 14..334 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original coord: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original c_axis: int16, sequence.
    # @details Count/quota 32; string byte bound 0; caller owns storage.
    # @brief Original ref: float32, sequence.
    # @details Count/quota 32; string byte bound 0; caller owns storage.
    # @brief Original limits: float32, sequence.
    # @details Count/quota 32; string byte bound 0; caller owns storage.
    __slots__ = ('coord', 'c_axis', 'ref', 'limits')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvFtForceConfig_Request',
     'type': 'xarm_msgs/srv/FtForceConfig_Request',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/FtForceConfig_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_0b337f5e2eb604e3057ca3378f3e1cb2b2032bac9d8c60e6b64ac85548b94e63',
     'minimum': 14,
     'maximum': 334,
     'semantics': '',
     'fields': [{'name': 'coord',
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
                {'name': 'c_axis',
                 'type': 'int16',
                 'array': 'sequence',
                 'count': 32,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'ref',
                 'type': 'float32',
                 'array': 'sequence',
                 'count': 32,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'limits',
                 'type': 'float32',
                 'array': 'sequence',
                 'count': 32,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Xarm_msgsSrvFtForceConfig_Request)

class Ros2Xarm_msgsSrvFtForceConfig_Response(Record):
    """@brief Own all original xarm_msgs/srv/FtForceConfig_Response fields.
    @details 2 ordered fields; 6..262 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original ret: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original message: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    __slots__ = ('ret', 'message')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvFtForceConfig_Response',
     'type': 'xarm_msgs/srv/FtForceConfig_Response',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/FtForceConfig_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_43ef4f729fcc96502a26261afb70e25a7cdd02d03097d93099b691dec28d59dc',
     'minimum': 6,
     'maximum': 262,
     'semantics': '',
     'fields': [{'name': 'ret',
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
                {'name': 'message',
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

REGISTRY.add(Ros2Xarm_msgsSrvFtForceConfig_Response)

class Ros2Xarm_msgsSrvFtForceParams_Request(Record):
    """@brief Own all original xarm_msgs/srv/FtForceParams_Request fields.
    @details 8 ordered fields; 30..862 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original coord: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original c_axis: int16, sequence.
    # @details Count/quota 32; string byte bound 0; caller owns storage.
    # @brief Original ref: float32, sequence.
    # @details Count/quota 32; string byte bound 0; caller owns storage.
    # @brief Original limits: float32, sequence.
    # @details Count/quota 32; string byte bound 0; caller owns storage.
    # @brief Original kp: float32, sequence.
    # @details Count/quota 32; string byte bound 0; caller owns storage.
    # @brief Original ki: float32, sequence.
    # @details Count/quota 32; string byte bound 0; caller owns storage.
    # @brief Original kd: float32, sequence.
    # @details Count/quota 32; string byte bound 0; caller owns storage.
    # @brief Original xe_limit: float32, sequence.
    # @details Count/quota 32; string byte bound 0; caller owns storage.
    __slots__ = ('coord', 'c_axis', 'ref', 'limits', 'kp', 'ki', 'kd', 'xe_limit')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvFtForceParams_Request',
     'type': 'xarm_msgs/srv/FtForceParams_Request',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/FtForceParams_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_66266e56d45f660d2750e881060e5a6655e5e35d497386ea1c7559517c2d6b08',
     'minimum': 30,
     'maximum': 862,
     'semantics': '',
     'fields': [{'name': 'coord',
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
                {'name': 'c_axis',
                 'type': 'int16',
                 'array': 'sequence',
                 'count': 32,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'ref',
                 'type': 'float32',
                 'array': 'sequence',
                 'count': 32,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'limits',
                 'type': 'float32',
                 'array': 'sequence',
                 'count': 32,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'kp',
                 'type': 'float32',
                 'array': 'sequence',
                 'count': 32,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'ki',
                 'type': 'float32',
                 'array': 'sequence',
                 'count': 32,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'kd',
                 'type': 'float32',
                 'array': 'sequence',
                 'count': 32,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'xe_limit',
                 'type': 'float32',
                 'array': 'sequence',
                 'count': 32,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Xarm_msgsSrvFtForceParams_Request)

class Ros2Xarm_msgsSrvFtForceParams_Response(Record):
    """@brief Own all original xarm_msgs/srv/FtForceParams_Response fields.
    @details 2 ordered fields; 6..262 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original ret: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original message: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    __slots__ = ('ret', 'message')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvFtForceParams_Response',
     'type': 'xarm_msgs/srv/FtForceParams_Response',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/FtForceParams_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_573d49b3f36f2111b39ecfabf29154f53dc66975edf7db80725256ed6be9318d',
     'minimum': 6,
     'maximum': 262,
     'semantics': '',
     'fields': [{'name': 'ret',
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
                {'name': 'message',
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

REGISTRY.add(Ros2Xarm_msgsSrvFtForceParams_Response)

class Ros2Xarm_msgsSrvFtForcePid_Request(Record):
    """@brief Own all original xarm_msgs/srv/FtForcePid_Request fields.
    @details 4 ordered fields; 16..528 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original kp: float32, sequence.
    # @details Count/quota 32; string byte bound 0; caller owns storage.
    # @brief Original ki: float32, sequence.
    # @details Count/quota 32; string byte bound 0; caller owns storage.
    # @brief Original kd: float32, sequence.
    # @details Count/quota 32; string byte bound 0; caller owns storage.
    # @brief Original xe_limit: float32, sequence.
    # @details Count/quota 32; string byte bound 0; caller owns storage.
    __slots__ = ('kp', 'ki', 'kd', 'xe_limit')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvFtForcePid_Request',
     'type': 'xarm_msgs/srv/FtForcePid_Request',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/FtForcePid_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_b69ed1d3e81b0b83a498bff16aab71a8f26e472c5e5bc1fad4559e781366b367',
     'minimum': 16,
     'maximum': 528,
     'semantics': '',
     'fields': [{'name': 'kp',
                 'type': 'float32',
                 'array': 'sequence',
                 'count': 32,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'ki',
                 'type': 'float32',
                 'array': 'sequence',
                 'count': 32,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'kd',
                 'type': 'float32',
                 'array': 'sequence',
                 'count': 32,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'xe_limit',
                 'type': 'float32',
                 'array': 'sequence',
                 'count': 32,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Xarm_msgsSrvFtForcePid_Request)

class Ros2Xarm_msgsSrvFtForcePid_Response(Record):
    """@brief Own all original xarm_msgs/srv/FtForcePid_Response fields.
    @details 2 ordered fields; 6..262 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original ret: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original message: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    __slots__ = ('ret', 'message')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvFtForcePid_Response',
     'type': 'xarm_msgs/srv/FtForcePid_Response',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/FtForcePid_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_308d5da22a4445f2b001974907c5b459e5b01ee06fb5029096ae86220e046c89',
     'minimum': 6,
     'maximum': 262,
     'semantics': '',
     'fields': [{'name': 'ret',
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
                {'name': 'message',
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

REGISTRY.add(Ros2Xarm_msgsSrvFtForcePid_Response)

class Ros2Xarm_msgsSrvFtImpedance_Request(Record):
    """@brief Own all original xarm_msgs/srv/FtImpedance_Request fields.
    @details 5 ordered fields; 18..466 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original coord: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original c_axis: int16, sequence.
    # @details Count/quota 32; string byte bound 0; caller owns storage.
    # @brief Original m: float32, sequence.
    # @details Count/quota 32; string byte bound 0; caller owns storage.
    # @brief Original k: float32, sequence.
    # @details Count/quota 32; string byte bound 0; caller owns storage.
    # @brief Original b: float32, sequence.
    # @details Count/quota 32; string byte bound 0; caller owns storage.
    __slots__ = ('coord', 'c_axis', 'm', 'k', 'b')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvFtImpedance_Request',
     'type': 'xarm_msgs/srv/FtImpedance_Request',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/FtImpedance_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_66d926f6b7e15bcfc2023215e434d931a77895df36376bb1dfd2cae852c9078d',
     'minimum': 18,
     'maximum': 466,
     'semantics': '',
     'fields': [{'name': 'coord',
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
                {'name': 'c_axis',
                 'type': 'int16',
                 'array': 'sequence',
                 'count': 32,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'm',
                 'type': 'float32',
                 'array': 'sequence',
                 'count': 32,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'k',
                 'type': 'float32',
                 'array': 'sequence',
                 'count': 32,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'b',
                 'type': 'float32',
                 'array': 'sequence',
                 'count': 32,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Xarm_msgsSrvFtImpedance_Request)

class Ros2Xarm_msgsSrvFtImpedance_Response(Record):
    """@brief Own all original xarm_msgs/srv/FtImpedance_Response fields.
    @details 2 ordered fields; 6..262 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original ret: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original message: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    __slots__ = ('ret', 'message')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvFtImpedance_Response',
     'type': 'xarm_msgs/srv/FtImpedance_Response',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/FtImpedance_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_47e50f8950f42a2ee65ea8e760b98a78d4cd57729f528785c8307f072ad64cdb',
     'minimum': 6,
     'maximum': 262,
     'semantics': '',
     'fields': [{'name': 'ret',
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
                {'name': 'message',
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

REGISTRY.add(Ros2Xarm_msgsSrvFtImpedance_Response)

class Ros2Xarm_msgsSrvGetAnalogIO_Request(Record):
    """@brief Own all original xarm_msgs/srv/GetAnalogIO_Request fields.
    @details 1 ordered fields; 2..2 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original ionum: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('ionum',)
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvGetAnalogIO_Request',
     'type': 'xarm_msgs/srv/GetAnalogIO_Request',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/GetAnalogIO_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_41f0b8344aedb31609753c92a949f995b9b36e36f4bd45080e7c806e4977d3c2',
     'minimum': 2,
     'maximum': 2,
     'semantics': '',
     'fields': [{'name': 'ionum',
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

REGISTRY.add(Ros2Xarm_msgsSrvGetAnalogIO_Request)

class Ros2Xarm_msgsSrvGetAnalogIO_Response(Record):
    """@brief Own all original xarm_msgs/srv/GetAnalogIO_Response fields.
    @details 3 ordered fields; 10..266 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original ret: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original message: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original data: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('ret', 'message', 'data')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvGetAnalogIO_Response',
     'type': 'xarm_msgs/srv/GetAnalogIO_Response',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/GetAnalogIO_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_c60eab1570b682fa2a1de07edbcf04155d63abf98cfc6d0aa3ebfa39445d5bbc',
     'minimum': 10,
     'maximum': 266,
     'semantics': '',
     'fields': [{'name': 'ret',
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
                {'name': 'message',
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
                {'name': 'data',
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

REGISTRY.add(Ros2Xarm_msgsSrvGetAnalogIO_Response)

class Ros2Xarm_msgsSrvGetDigitalIO_Request(Record):
    """@brief Own all original xarm_msgs/srv/GetDigitalIO_Request fields.
    @details 0 ordered fields; 0..0 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    __slots__ = ()
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvGetDigitalIO_Request',
     'type': 'xarm_msgs/srv/GetDigitalIO_Request',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/GetDigitalIO_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_46633e09d5231d69307a8dbdbd90c2d81ef6ad279b961da81b2af86fed51f188',
     'minimum': 0,
     'maximum': 0,
     'semantics': '',
     'fields': [],
     'constants': {}}

REGISTRY.add(Ros2Xarm_msgsSrvGetDigitalIO_Request)

class Ros2Xarm_msgsSrvGetDigitalIO_Response(Record):
    """@brief Own all original xarm_msgs/srv/GetDigitalIO_Response fields.
    @details 3 ordered fields; 10..330 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original ret: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original message: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original digitals: int16, sequence.
    # @details Count/quota 32; string byte bound 0; caller owns storage.
    __slots__ = ('ret', 'message', 'digitals')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvGetDigitalIO_Response',
     'type': 'xarm_msgs/srv/GetDigitalIO_Response',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/GetDigitalIO_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_325fb8d7a911dfc1746a289380e295d6e153ac2fad2018932ce7cd431511985c',
     'minimum': 10,
     'maximum': 330,
     'semantics': '',
     'fields': [{'name': 'ret',
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
                {'name': 'message',
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
                {'name': 'digitals',
                 'type': 'int16',
                 'array': 'sequence',
                 'count': 32,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Xarm_msgsSrvGetDigitalIO_Response)

class Ros2Xarm_msgsSrvGetFloat32_Request(Record):
    """@brief Own all original xarm_msgs/srv/GetFloat32_Request fields.
    @details 0 ordered fields; 0..0 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    __slots__ = ()
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvGetFloat32_Request',
     'type': 'xarm_msgs/srv/GetFloat32_Request',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/GetFloat32_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_6a3aa3004f481bde62974b72be6157b1e388e6097733474e3fb11855f3aa5c84',
     'minimum': 0,
     'maximum': 0,
     'semantics': '',
     'fields': [],
     'constants': {}}

REGISTRY.add(Ros2Xarm_msgsSrvGetFloat32_Request)

class Ros2Xarm_msgsSrvGetFloat32_Response(Record):
    """@brief Own all original xarm_msgs/srv/GetFloat32_Response fields.
    @details 3 ordered fields; 10..266 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original ret: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original message: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original data: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('ret', 'message', 'data')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvGetFloat32_Response',
     'type': 'xarm_msgs/srv/GetFloat32_Response',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/GetFloat32_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_e43f1551258cbf7bae19089eade8321e8d565c0783551e016dc73ed410c9e3f2',
     'minimum': 10,
     'maximum': 266,
     'semantics': '',
     'fields': [{'name': 'ret',
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
                {'name': 'message',
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
                {'name': 'data',
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

REGISTRY.add(Ros2Xarm_msgsSrvGetFloat32_Response)

class Ros2Xarm_msgsSrvGetFloat32List_Request(Record):
    """@brief Own all original xarm_msgs/srv/GetFloat32List_Request fields.
    @details 0 ordered fields; 0..0 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    __slots__ = ()
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvGetFloat32List_Request',
     'type': 'xarm_msgs/srv/GetFloat32List_Request',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/GetFloat32List_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_36ec63da8ede627478e174c1f1dd75926973d3b1d57a6f03c05ffac8e4b649a3',
     'minimum': 0,
     'maximum': 0,
     'semantics': '',
     'fields': [],
     'constants': {}}

REGISTRY.add(Ros2Xarm_msgsSrvGetFloat32List_Request)

class Ros2Xarm_msgsSrvGetFloat32List_Response(Record):
    """@brief Own all original xarm_msgs/srv/GetFloat32List_Response fields.
    @details 3 ordered fields; 10..394 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original ret: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original message: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original datas: float32, sequence.
    # @details Count/quota 32; string byte bound 0; caller owns storage.
    __slots__ = ('ret', 'message', 'datas')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvGetFloat32List_Response',
     'type': 'xarm_msgs/srv/GetFloat32List_Response',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/GetFloat32List_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_f30d581b8aa511578c21a3db64c818693b06268b7916cc16e927fc329f40e8d4',
     'minimum': 10,
     'maximum': 394,
     'semantics': '',
     'fields': [{'name': 'ret',
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
                {'name': 'message',
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
                {'name': 'datas',
                 'type': 'float32',
                 'array': 'sequence',
                 'count': 32,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Xarm_msgsSrvGetFloat32List_Response)

class Ros2Xarm_msgsSrvGetInt16_Request(Record):
    """@brief Own all original xarm_msgs/srv/GetInt16_Request fields.
    @details 0 ordered fields; 0..0 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    __slots__ = ()
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvGetInt16_Request',
     'type': 'xarm_msgs/srv/GetInt16_Request',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/GetInt16_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_85fe1186c4f0887d4ac9cf3f0d690c32ba3ec895bef3d49b2199527b53627865',
     'minimum': 0,
     'maximum': 0,
     'semantics': '',
     'fields': [],
     'constants': {}}

REGISTRY.add(Ros2Xarm_msgsSrvGetInt16_Request)

class Ros2Xarm_msgsSrvGetInt16_Response(Record):
    """@brief Own all original xarm_msgs/srv/GetInt16_Response fields.
    @details 3 ordered fields; 8..264 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original ret: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original message: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original data: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('ret', 'message', 'data')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvGetInt16_Response',
     'type': 'xarm_msgs/srv/GetInt16_Response',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/GetInt16_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_c29870d9604ae0d220de53bb6768681bfbb120171af61c36e45b9a660fd8f1a9',
     'minimum': 8,
     'maximum': 264,
     'semantics': '',
     'fields': [{'name': 'ret',
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
                {'name': 'message',
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
                {'name': 'data',
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

REGISTRY.add(Ros2Xarm_msgsSrvGetInt16_Response)

class Ros2Xarm_msgsSrvGetInt16List_Request(Record):
    """@brief Own all original xarm_msgs/srv/GetInt16List_Request fields.
    @details 0 ordered fields; 0..0 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    __slots__ = ()
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvGetInt16List_Request',
     'type': 'xarm_msgs/srv/GetInt16List_Request',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/GetInt16List_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_ca95d35c75e9843b2c9d27bd94e34e336641255ad5dd2b0ff22f8a6efb36db2d',
     'minimum': 0,
     'maximum': 0,
     'semantics': '',
     'fields': [],
     'constants': {}}

REGISTRY.add(Ros2Xarm_msgsSrvGetInt16List_Request)

class Ros2Xarm_msgsSrvGetInt16List_Response(Record):
    """@brief Own all original xarm_msgs/srv/GetInt16List_Response fields.
    @details 3 ordered fields; 10..330 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original ret: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original message: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original datas: int16, sequence.
    # @details Count/quota 32; string byte bound 0; caller owns storage.
    __slots__ = ('ret', 'message', 'datas')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvGetInt16List_Response',
     'type': 'xarm_msgs/srv/GetInt16List_Response',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/GetInt16List_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_d35b6ac9d82960e32fd035554dc021e8f3e592259c1db9a714e9b575cc611139',
     'minimum': 10,
     'maximum': 330,
     'semantics': '',
     'fields': [{'name': 'ret',
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
                {'name': 'message',
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
                {'name': 'datas',
                 'type': 'int16',
                 'array': 'sequence',
                 'count': 32,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Xarm_msgsSrvGetInt16List_Response)

class Ros2Xarm_msgsSrvGetInt32_Request(Record):
    """@brief Own all original xarm_msgs/srv/GetInt32_Request fields.
    @details 0 ordered fields; 0..0 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    __slots__ = ()
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvGetInt32_Request',
     'type': 'xarm_msgs/srv/GetInt32_Request',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/GetInt32_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_e7dbcdb905c89364b288e23c985ba73394529613bdb2f4a74b10d811203f0dfe',
     'minimum': 0,
     'maximum': 0,
     'semantics': '',
     'fields': [],
     'constants': {}}

REGISTRY.add(Ros2Xarm_msgsSrvGetInt32_Request)

class Ros2Xarm_msgsSrvGetInt32_Response(Record):
    """@brief Own all original xarm_msgs/srv/GetInt32_Response fields.
    @details 3 ordered fields; 10..266 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original ret: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original message: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original data: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('ret', 'message', 'data')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvGetInt32_Response',
     'type': 'xarm_msgs/srv/GetInt32_Response',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/GetInt32_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_9834d69ebc7644d3d2feee8f4bcb20effbc15931709be7264ea04bd88b2686f2',
     'minimum': 10,
     'maximum': 266,
     'semantics': '',
     'fields': [{'name': 'ret',
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
                {'name': 'message',
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
                {'name': 'data',
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

REGISTRY.add(Ros2Xarm_msgsSrvGetInt32_Response)

class Ros2Xarm_msgsSrvGetInt32ByType_Request(Record):
    """@brief Own all original xarm_msgs/srv/GetInt32ByType_Request fields.
    @details 1 ordered fields; 2..2 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original type: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('type',)
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvGetInt32ByType_Request',
     'type': 'xarm_msgs/srv/GetInt32ByType_Request',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/GetInt32ByType_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_5d4ba9b5c23452f3b203c66e3cbc5880b99cac6b9ec9ce3acac96414013f993a',
     'minimum': 2,
     'maximum': 2,
     'semantics': '',
     'fields': [{'name': 'type',
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

REGISTRY.add(Ros2Xarm_msgsSrvGetInt32ByType_Request)

class Ros2Xarm_msgsSrvGetInt32ByType_Response(Record):
    """@brief Own all original xarm_msgs/srv/GetInt32ByType_Response fields.
    @details 3 ordered fields; 10..266 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original ret: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original message: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original data: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('ret', 'message', 'data')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvGetInt32ByType_Response',
     'type': 'xarm_msgs/srv/GetInt32ByType_Response',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/GetInt32ByType_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_6cabb4a9a840ef62c4f8a2da7da917410a97a8aafcf78e361cc928a7cdbe5c3a',
     'minimum': 10,
     'maximum': 266,
     'semantics': '',
     'fields': [{'name': 'ret',
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
                {'name': 'message',
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
                {'name': 'data',
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

REGISTRY.add(Ros2Xarm_msgsSrvGetInt32ByType_Response)

class Ros2Xarm_msgsSrvGetSetModbusData_Request(Record):
    """@brief Own all original xarm_msgs/srv/GetSetModbusData_Request fields.
    @details 6 ordered fields; 11..4107 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original modbus_data: uint8, sequence.
    # @details Count/quota 4096; string byte bound 0; caller owns storage.
    # @brief Original modbus_length: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original ret_length: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original host_id: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original is_transparent_transmission: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original use_503_port: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('modbus_data',
     'modbus_length',
     'ret_length',
     'host_id',
     'is_transparent_transmission',
     'use_503_port')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvGetSetModbusData_Request',
     'type': 'xarm_msgs/srv/GetSetModbusData_Request',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/GetSetModbusData_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_f9cc9e1e5635a37023cc50f66930072f3d61bcfd58f0d8ebb0218c4eb3a035cd',
     'minimum': 11,
     'maximum': 4107,
     'semantics': '',
     'fields': [{'name': 'modbus_data',
                 'type': 'uint8',
                 'array': 'sequence',
                 'count': 4096,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'modbus_length',
                 'type': 'int16',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': '0',
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': 0},
                {'name': 'ret_length',
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
                {'name': 'host_id',
                 'type': 'uint8',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': '9',
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': 9},
                {'name': 'is_transparent_transmission',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': 'False',
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': False},
                {'name': 'use_503_port',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': 'False',
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': False}],
     'constants': {}}

REGISTRY.add(Ros2Xarm_msgsSrvGetSetModbusData_Request)

class Ros2Xarm_msgsSrvGetSetModbusData_Response(Record):
    """@brief Own all original xarm_msgs/srv/GetSetModbusData_Response fields.
    @details 3 ordered fields; 10..4362 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original ret: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original message: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original ret_data: uint8, sequence.
    # @details Count/quota 4096; string byte bound 0; caller owns storage.
    __slots__ = ('ret', 'message', 'ret_data')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvGetSetModbusData_Response',
     'type': 'xarm_msgs/srv/GetSetModbusData_Response',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/GetSetModbusData_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_7367e58167bc61c209e7a28ee1a4d5809525cb11cbe48ee972724b5f0536b5b7',
     'minimum': 10,
     'maximum': 4362,
     'semantics': '',
     'fields': [{'name': 'ret',
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
                {'name': 'message',
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
                {'name': 'ret_data',
                 'type': 'uint8',
                 'array': 'sequence',
                 'count': 4096,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Xarm_msgsSrvGetSetModbusData_Response)

class Ros2Xarm_msgsSrvGripperMove_Request(Record):
    """@brief Own all original xarm_msgs/srv/GripperMove_Request fields.
    @details 3 ordered fields; 9..9 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original pos: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original wait: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original timeout: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('pos', 'wait', 'timeout')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvGripperMove_Request',
     'type': 'xarm_msgs/srv/GripperMove_Request',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/GripperMove_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_54c0e0eeb956e5ab0b1bd31aabc67493ee2bdb9b7028f41b73eb9d8b1e568322',
     'minimum': 9,
     'maximum': 9,
     'semantics': '',
     'fields': [{'name': 'pos',
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
                {'name': 'wait',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': 'False',
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': False},
                {'name': 'timeout',
                 'type': 'float32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': '10.0',
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': 10.0}],
     'constants': {}}

REGISTRY.add(Ros2Xarm_msgsSrvGripperMove_Request)

class Ros2Xarm_msgsSrvGripperMove_Response(Record):
    """@brief Own all original xarm_msgs/srv/GripperMove_Response fields.
    @details 2 ordered fields; 6..262 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original ret: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original message: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    __slots__ = ('ret', 'message')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvGripperMove_Response',
     'type': 'xarm_msgs/srv/GripperMove_Response',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/GripperMove_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_1c64a50983aaf8dd20d3a400be9d69242f52c6ad7f369ea54dd19be931dc80a1',
     'minimum': 6,
     'maximum': 262,
     'semantics': '',
     'fields': [{'name': 'ret',
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
                {'name': 'message',
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

REGISTRY.add(Ros2Xarm_msgsSrvGripperMove_Response)

class Ros2Xarm_msgsSrvIdenLoad_Request(Record):
    """@brief Own all original xarm_msgs/srv/IdenLoad_Request fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original estimated_mass: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('estimated_mass',)
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvIdenLoad_Request',
     'type': 'xarm_msgs/srv/IdenLoad_Request',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/IdenLoad_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_51918f23cc7db51b63e91cca012e657836528d8557a4479b287cd9631015a79a',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'estimated_mass',
                 'type': 'float32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': '0.0',
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': 0.0}],
     'constants': {}}

REGISTRY.add(Ros2Xarm_msgsSrvIdenLoad_Request)

class Ros2Xarm_msgsSrvIdenLoad_Response(Record):
    """@brief Own all original xarm_msgs/srv/IdenLoad_Response fields.
    @details 3 ordered fields; 10..394 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original ret: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original message: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original datas: float32, sequence.
    # @details Count/quota 32; string byte bound 0; caller owns storage.
    __slots__ = ('ret', 'message', 'datas')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvIdenLoad_Response',
     'type': 'xarm_msgs/srv/IdenLoad_Response',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/IdenLoad_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_3934143122064209bd30159d9972b5cfd529728f3f95785c9641d20790e4f64e',
     'minimum': 10,
     'maximum': 394,
     'semantics': '',
     'fields': [{'name': 'ret',
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
                {'name': 'message',
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
                {'name': 'datas',
                 'type': 'float32',
                 'array': 'sequence',
                 'count': 32,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Xarm_msgsSrvIdenLoad_Response)

class Ros2Xarm_msgsSrvLinearMotorBackOrigin_Request(Record):
    """@brief Own all original xarm_msgs/srv/LinearMotorBackOrigin_Request fields.
    @details 2 ordered fields; 2..2 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original wait: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original auto_enable: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('wait', 'auto_enable')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvLinearMotorBackOrigin_Request',
     'type': 'xarm_msgs/srv/LinearMotorBackOrigin_Request',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/LinearMotorBackOrigin_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_c9d87b79119e9fd9efcf7cd7bdbe40f3e3a2244b1c97149da5c2ff93163a6b45',
     'minimum': 2,
     'maximum': 2,
     'semantics': '',
     'fields': [{'name': 'wait',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': 'True',
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': True},
                {'name': 'auto_enable',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': 'True',
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': True}],
     'constants': {}}

REGISTRY.add(Ros2Xarm_msgsSrvLinearMotorBackOrigin_Request)

class Ros2Xarm_msgsSrvLinearMotorBackOrigin_Response(Record):
    """@brief Own all original xarm_msgs/srv/LinearMotorBackOrigin_Response fields.
    @details 2 ordered fields; 6..262 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original ret: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original message: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    __slots__ = ('ret', 'message')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvLinearMotorBackOrigin_Response',
     'type': 'xarm_msgs/srv/LinearMotorBackOrigin_Response',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/LinearMotorBackOrigin_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_159fa7c79b6d14e044085bc7969a984af68bfab04cfd092a4982b2de24e9e02d',
     'minimum': 6,
     'maximum': 262,
     'semantics': '',
     'fields': [{'name': 'ret',
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
                {'name': 'message',
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

REGISTRY.add(Ros2Xarm_msgsSrvLinearMotorBackOrigin_Response)

class Ros2Xarm_msgsSrvLinearMotorSetPos_Request(Record):
    """@brief Own all original xarm_msgs/srv/LinearMotorSetPos_Request fields.
    @details 5 ordered fields; 10..10 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original pos: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original speed: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original wait: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original timeout: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original auto_enable: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('pos', 'speed', 'wait', 'timeout', 'auto_enable')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvLinearMotorSetPos_Request',
     'type': 'xarm_msgs/srv/LinearMotorSetPos_Request',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/LinearMotorSetPos_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_5babc4a61d86991a7be456e48f86c175f0189b96e5506b779adcbe6e4ece97dd',
     'minimum': 10,
     'maximum': 10,
     'semantics': '',
     'fields': [{'name': 'pos',
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
                {'name': 'speed',
                 'type': 'int16',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': '0',
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': 0},
                {'name': 'wait',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': 'True',
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': True},
                {'name': 'timeout',
                 'type': 'float32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': '100.0',
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': 100.0},
                {'name': 'auto_enable',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': 'True',
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': True}],
     'constants': {}}

REGISTRY.add(Ros2Xarm_msgsSrvLinearMotorSetPos_Request)

class Ros2Xarm_msgsSrvLinearMotorSetPos_Response(Record):
    """@brief Own all original xarm_msgs/srv/LinearMotorSetPos_Response fields.
    @details 2 ordered fields; 6..262 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original ret: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original message: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    __slots__ = ('ret', 'message')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvLinearMotorSetPos_Response',
     'type': 'xarm_msgs/srv/LinearMotorSetPos_Response',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/LinearMotorSetPos_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_f2bc623880b42ee6f94117ecdf846785cac064a2c5e81df5f2ff8c3e9179106d',
     'minimum': 6,
     'maximum': 262,
     'semantics': '',
     'fields': [{'name': 'ret',
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
                {'name': 'message',
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

REGISTRY.add(Ros2Xarm_msgsSrvLinearMotorSetPos_Response)

class Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request(Record):
    """@brief Own all original xarm_msgs/srv/LinearTrackBackOrigin_Request fields.
    @details 2 ordered fields; 2..2 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original wait: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original auto_enable: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('wait', 'auto_enable')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request',
     'type': 'xarm_msgs/srv/LinearTrackBackOrigin_Request',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/LinearTrackBackOrigin_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_797f71ddda85f463999f437e70aaaf40517fe78dfa0356a640afaffa5154e8d9',
     'minimum': 2,
     'maximum': 2,
     'semantics': '',
     'fields': [{'name': 'wait',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': 'True',
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': True},
                {'name': 'auto_enable',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': 'True',
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': True}],
     'constants': {}}

REGISTRY.add(Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request)

class Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response(Record):
    """@brief Own all original xarm_msgs/srv/LinearTrackBackOrigin_Response fields.
    @details 2 ordered fields; 6..262 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original ret: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original message: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    __slots__ = ('ret', 'message')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response',
     'type': 'xarm_msgs/srv/LinearTrackBackOrigin_Response',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/LinearTrackBackOrigin_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_0881a1e5f823c169ed5d1063e8bd681b8b2f994ebd9bee3e335c47d3bd2db4de',
     'minimum': 6,
     'maximum': 262,
     'semantics': '',
     'fields': [{'name': 'ret',
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
                {'name': 'message',
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

REGISTRY.add(Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response)

class Ros2Xarm_msgsSrvLinearTrackSetPos_Request(Record):
    """@brief Own all original xarm_msgs/srv/LinearTrackSetPos_Request fields.
    @details 5 ordered fields; 10..10 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original pos: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original speed: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original wait: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original timeout: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original auto_enable: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('pos', 'speed', 'wait', 'timeout', 'auto_enable')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvLinearTrackSetPos_Request',
     'type': 'xarm_msgs/srv/LinearTrackSetPos_Request',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/LinearTrackSetPos_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_b73e173d593e64d898e69d32e659ddff1741eaada6af1ae00d9a4c406d9dad62',
     'minimum': 10,
     'maximum': 10,
     'semantics': '',
     'fields': [{'name': 'pos',
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
                {'name': 'speed',
                 'type': 'int16',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': '0',
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': 0},
                {'name': 'wait',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': 'True',
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': True},
                {'name': 'timeout',
                 'type': 'float32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': '100.0',
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': 100.0},
                {'name': 'auto_enable',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': 'True',
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': True}],
     'constants': {}}

REGISTRY.add(Ros2Xarm_msgsSrvLinearTrackSetPos_Request)

class Ros2Xarm_msgsSrvLinearTrackSetPos_Response(Record):
    """@brief Own all original xarm_msgs/srv/LinearTrackSetPos_Response fields.
    @details 2 ordered fields; 6..262 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original ret: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original message: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    __slots__ = ('ret', 'message')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvLinearTrackSetPos_Response',
     'type': 'xarm_msgs/srv/LinearTrackSetPos_Response',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/LinearTrackSetPos_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_aba9a933b5cde05c0a1d0a44fe404b3c3dadad72aac91b7a7aff04221c6667f7',
     'minimum': 6,
     'maximum': 262,
     'semantics': '',
     'fields': [{'name': 'ret',
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
                {'name': 'message',
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

REGISTRY.add(Ros2Xarm_msgsSrvLinearTrackSetPos_Response)

class Ros2Xarm_msgsSrvMoveCartesian_Request(Record):
    """@brief Own all original xarm_msgs/srv/MoveCartesian_Request fields.
    @details 10 ordered fields; 28..156 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original pose: float32, sequence.
    # @details Count/quota 32; string byte bound 0; caller owns storage.
    # @brief Original speed: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original acc: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original mvtime: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original wait: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original timeout: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original radius: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original is_tool_coord: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original relative: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original motion_type: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('pose',
     'speed',
     'acc',
     'mvtime',
     'wait',
     'timeout',
     'radius',
     'is_tool_coord',
     'relative',
     'motion_type')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvMoveCartesian_Request',
     'type': 'xarm_msgs/srv/MoveCartesian_Request',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/MoveCartesian_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_42c90af2eabc1a42376918d5cb862b4d8f8b2a3f958b7c444c8d8cccb2435512',
     'minimum': 28,
     'maximum': 156,
     'semantics': '',
     'fields': [{'name': 'pose',
                 'type': 'float32',
                 'array': 'sequence',
                 'count': 32,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'speed',
                 'type': 'float32',
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
                {'name': 'acc',
                 'type': 'float32',
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
                {'name': 'mvtime',
                 'type': 'float32',
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
                {'name': 'wait',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': 'False',
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': False},
                {'name': 'timeout',
                 'type': 'float32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': '-1.0',
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': -1.0},
                {'name': 'radius',
                 'type': 'float32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': '-1.0',
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': -1.0},
                {'name': 'is_tool_coord',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': 'False',
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': False},
                {'name': 'relative',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': 'False',
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': False},
                {'name': 'motion_type',
                 'type': 'uint8',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': '0',
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': 0}],
     'constants': {}}

REGISTRY.add(Ros2Xarm_msgsSrvMoveCartesian_Request)

class Ros2Xarm_msgsSrvMoveCartesian_Response(Record):
    """@brief Own all original xarm_msgs/srv/MoveCartesian_Response fields.
    @details 2 ordered fields; 6..262 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original ret: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original message: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    __slots__ = ('ret', 'message')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvMoveCartesian_Response',
     'type': 'xarm_msgs/srv/MoveCartesian_Response',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/MoveCartesian_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_17659e470cc45dd7fe1bc6240aa09aa6693e90e40d5dcf556cfb2b8d946af7be',
     'minimum': 6,
     'maximum': 262,
     'semantics': '',
     'fields': [{'name': 'ret',
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
                {'name': 'message',
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

REGISTRY.add(Ros2Xarm_msgsSrvMoveCartesian_Response)

class Ros2Xarm_msgsSrvMoveCircle_Request(Record):
    """@brief Own all original xarm_msgs/srv/MoveCircle_Request fields.
    @details 10 ordered fields; 31..287 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original pose1: float32, sequence.
    # @details Count/quota 32; string byte bound 0; caller owns storage.
    # @brief Original pose2: float32, sequence.
    # @details Count/quota 32; string byte bound 0; caller owns storage.
    # @brief Original percent: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original speed: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original acc: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original mvtime: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original wait: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original timeout: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original is_tool_coord: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original is_axis_angle: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('pose1',
     'pose2',
     'percent',
     'speed',
     'acc',
     'mvtime',
     'wait',
     'timeout',
     'is_tool_coord',
     'is_axis_angle')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvMoveCircle_Request',
     'type': 'xarm_msgs/srv/MoveCircle_Request',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/MoveCircle_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_1ad9d0ee80dfb636f7cdbccd1b510bd123f13615a16bed966bd5e8829a3b7f1b',
     'minimum': 31,
     'maximum': 287,
     'semantics': '',
     'fields': [{'name': 'pose1',
                 'type': 'float32',
                 'array': 'sequence',
                 'count': 32,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'pose2',
                 'type': 'float32',
                 'array': 'sequence',
                 'count': 32,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'percent',
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
                {'name': 'speed',
                 'type': 'float32',
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
                {'name': 'acc',
                 'type': 'float32',
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
                {'name': 'mvtime',
                 'type': 'float32',
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
                {'name': 'wait',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': 'False',
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': False},
                {'name': 'timeout',
                 'type': 'float32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': '-1.0',
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': -1.0},
                {'name': 'is_tool_coord',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': 'False',
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': False},
                {'name': 'is_axis_angle',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': 'False',
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': False}],
     'constants': {}}

REGISTRY.add(Ros2Xarm_msgsSrvMoveCircle_Request)

class Ros2Xarm_msgsSrvMoveCircle_Response(Record):
    """@brief Own all original xarm_msgs/srv/MoveCircle_Response fields.
    @details 2 ordered fields; 6..262 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original ret: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original message: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    __slots__ = ('ret', 'message')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvMoveCircle_Response',
     'type': 'xarm_msgs/srv/MoveCircle_Response',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/MoveCircle_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_e884158bfd9d5bed6cb76d276e7d312c5f2d69d0508a1c01566f6773b7e4dbbd',
     'minimum': 6,
     'maximum': 262,
     'semantics': '',
     'fields': [{'name': 'ret',
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
                {'name': 'message',
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

REGISTRY.add(Ros2Xarm_msgsSrvMoveCircle_Response)

class Ros2Xarm_msgsSrvMoveHome_Request(Record):
    """@brief Own all original xarm_msgs/srv/MoveHome_Request fields.
    @details 5 ordered fields; 17..17 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original speed: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original acc: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original mvtime: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original wait: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original timeout: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('speed', 'acc', 'mvtime', 'wait', 'timeout')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvMoveHome_Request',
     'type': 'xarm_msgs/srv/MoveHome_Request',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/MoveHome_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_f9c04cf15dadd5c45cc16017533216bcbf682ac3366764c0546e73deabfab5a3',
     'minimum': 17,
     'maximum': 17,
     'semantics': '',
     'fields': [{'name': 'speed',
                 'type': 'float32',
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
                {'name': 'acc',
                 'type': 'float32',
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
                {'name': 'mvtime',
                 'type': 'float32',
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
                {'name': 'wait',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': 'False',
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': False},
                {'name': 'timeout',
                 'type': 'float32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': '-1.0',
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': -1.0}],
     'constants': {}}

REGISTRY.add(Ros2Xarm_msgsSrvMoveHome_Request)

class Ros2Xarm_msgsSrvMoveHome_Response(Record):
    """@brief Own all original xarm_msgs/srv/MoveHome_Response fields.
    @details 2 ordered fields; 6..262 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original ret: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original message: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    __slots__ = ('ret', 'message')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvMoveHome_Response',
     'type': 'xarm_msgs/srv/MoveHome_Response',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/MoveHome_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_c5a0764d10a7a2c3285ada1c04594d1cad466f7ec71fe53e42b2ea98b70793aa',
     'minimum': 6,
     'maximum': 262,
     'semantics': '',
     'fields': [{'name': 'ret',
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
                {'name': 'message',
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

REGISTRY.add(Ros2Xarm_msgsSrvMoveHome_Response)

class Ros2Xarm_msgsSrvMoveJoint_Request(Record):
    """@brief Own all original xarm_msgs/srv/MoveJoint_Request fields.
    @details 8 ordered fields; 26..154 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original angles: float32, sequence.
    # @details Count/quota 32; string byte bound 0; caller owns storage.
    # @brief Original speed: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original acc: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original mvtime: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original wait: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original timeout: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original radius: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original relative: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('angles', 'speed', 'acc', 'mvtime', 'wait', 'timeout', 'radius', 'relative')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvMoveJoint_Request',
     'type': 'xarm_msgs/srv/MoveJoint_Request',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/MoveJoint_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_a0216b4ff8cf8baff2e2891d6a8d6d1397a42a750f68698d97dfc08d00e7c8d7',
     'minimum': 26,
     'maximum': 154,
     'semantics': '',
     'fields': [{'name': 'angles',
                 'type': 'float32',
                 'array': 'sequence',
                 'count': 32,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'speed',
                 'type': 'float32',
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
                {'name': 'acc',
                 'type': 'float32',
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
                {'name': 'mvtime',
                 'type': 'float32',
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
                {'name': 'wait',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': 'False',
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': False},
                {'name': 'timeout',
                 'type': 'float32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': '-1.0',
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': -1.0},
                {'name': 'radius',
                 'type': 'float32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': '-1.0',
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': -1.0},
                {'name': 'relative',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': 'False',
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': False}],
     'constants': {}}

REGISTRY.add(Ros2Xarm_msgsSrvMoveJoint_Request)

class Ros2Xarm_msgsSrvMoveJoint_Response(Record):
    """@brief Own all original xarm_msgs/srv/MoveJoint_Response fields.
    @details 2 ordered fields; 6..262 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original ret: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original message: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    __slots__ = ('ret', 'message')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvMoveJoint_Response',
     'type': 'xarm_msgs/srv/MoveJoint_Response',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/MoveJoint_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_0af0f83fe9efc15c4a2334c229e0d079fad286630c52d703b7e0cfaa037f04a7',
     'minimum': 6,
     'maximum': 262,
     'semantics': '',
     'fields': [{'name': 'ret',
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
                {'name': 'message',
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

REGISTRY.add(Ros2Xarm_msgsSrvMoveJoint_Response)

class Ros2Xarm_msgsSrvMoveVelocity_Request(Record):
    """@brief Own all original xarm_msgs/srv/MoveVelocity_Request fields.
    @details 4 ordered fields; 10..138 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original speeds: float32, sequence.
    # @details Count/quota 32; string byte bound 0; caller owns storage.
    # @brief Original is_sync: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original is_tool_coord: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original duration: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('speeds', 'is_sync', 'is_tool_coord', 'duration')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvMoveVelocity_Request',
     'type': 'xarm_msgs/srv/MoveVelocity_Request',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/MoveVelocity_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_a5378f3f0f4b89e04279b6d79b8b756d0970f74cd582636d56f1302be2c015c4',
     'minimum': 10,
     'maximum': 138,
     'semantics': '',
     'fields': [{'name': 'speeds',
                 'type': 'float32',
                 'array': 'sequence',
                 'count': 32,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'is_sync',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': 'True',
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': True},
                {'name': 'is_tool_coord',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': 'False',
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': False},
                {'name': 'duration',
                 'type': 'float32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': '-1.0',
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': -1.0}],
     'constants': {}}

REGISTRY.add(Ros2Xarm_msgsSrvMoveVelocity_Request)

class Ros2Xarm_msgsSrvMoveVelocity_Response(Record):
    """@brief Own all original xarm_msgs/srv/MoveVelocity_Response fields.
    @details 2 ordered fields; 6..262 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original ret: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original message: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    __slots__ = ('ret', 'message')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvMoveVelocity_Response',
     'type': 'xarm_msgs/srv/MoveVelocity_Response',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/MoveVelocity_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_3ec82a1e864723e95f8fec98073d5e1ed009d2882fa8c20e55b4f8d86ec1d318',
     'minimum': 6,
     'maximum': 262,
     'semantics': '',
     'fields': [{'name': 'ret',
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
                {'name': 'message',
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

REGISTRY.add(Ros2Xarm_msgsSrvMoveVelocity_Response)

class Ros2Xarm_msgsSrvPlanExec_Request(Record):
    """@brief Own all original xarm_msgs/srv/PlanExec_Request fields.
    @details 1 ordered fields; 1..1 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original wait: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('wait',)
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvPlanExec_Request',
     'type': 'xarm_msgs/srv/PlanExec_Request',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/PlanExec_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_376aa0461a41377c8e5ba44ec96e9dac39fea01da3db1d31a6a90190b5bf66d5',
     'minimum': 1,
     'maximum': 1,
     'semantics': '',
     'fields': [{'name': 'wait',
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

REGISTRY.add(Ros2Xarm_msgsSrvPlanExec_Request)

class Ros2Xarm_msgsSrvPlanExec_Response(Record):
    """@brief Own all original xarm_msgs/srv/PlanExec_Response fields.
    @details 1 ordered fields; 1..1 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original success: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('success',)
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvPlanExec_Response',
     'type': 'xarm_msgs/srv/PlanExec_Response',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/PlanExec_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_5adfabe15405e2e15b08760866169c214029fe826a69dd1277808c3ebb16a88e',
     'minimum': 1,
     'maximum': 1,
     'semantics': '',
     'fields': [{'name': 'success',
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

REGISTRY.add(Ros2Xarm_msgsSrvPlanExec_Response)

class Ros2Xarm_msgsSrvPlanJoint_Request(Record):
    """@brief Own all original xarm_msgs/srv/PlanJoint_Request fields.
    @details 1 ordered fields; 4..260 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original target: float64, sequence.
    # @details Count/quota 32; string byte bound 0; caller owns storage.
    __slots__ = ('target',)
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvPlanJoint_Request',
     'type': 'xarm_msgs/srv/PlanJoint_Request',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/PlanJoint_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_997562beca1e50895151970e89f0f253431451c60e274222ae622c49c0455bd5',
     'minimum': 4,
     'maximum': 260,
     'semantics': '',
     'fields': [{'name': 'target',
                 'type': 'float64',
                 'array': 'sequence',
                 'count': 32,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Xarm_msgsSrvPlanJoint_Request)

class Ros2Xarm_msgsSrvPlanJoint_Response(Record):
    """@brief Own all original xarm_msgs/srv/PlanJoint_Response fields.
    @details 1 ordered fields; 1..1 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original success: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('success',)
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvPlanJoint_Response',
     'type': 'xarm_msgs/srv/PlanJoint_Response',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/PlanJoint_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_dfe1e3eaf8913c9e6b5aed6ee60bd7c24eb4e2944036f0de92fcd6846acac782',
     'minimum': 1,
     'maximum': 1,
     'semantics': '',
     'fields': [{'name': 'success',
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

REGISTRY.add(Ros2Xarm_msgsSrvPlanJoint_Response)

class Ros2Xarm_msgsSrvPlanPose_Request(Record):
    """@brief Own all original xarm_msgs/srv/PlanPose_Request fields.
    @details 1 ordered fields; 56..56 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original target: geometry_msgs/msg/Pose, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('target',)
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvPlanPose_Request',
     'type': 'xarm_msgs/srv/PlanPose_Request',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/PlanPose_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_01b292bd33f28682cde3cb35f9d62e8d99cd8a58d2a5c3d5e6411121d3a09859',
     'minimum': 56,
     'maximum': 56,
     'semantics': '',
     'fields': [{'name': 'target',
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
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Xarm_msgsSrvPlanPose_Request)

class Ros2Xarm_msgsSrvPlanPose_Response(Record):
    """@brief Own all original xarm_msgs/srv/PlanPose_Response fields.
    @details 1 ordered fields; 1..1 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original success: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('success',)
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvPlanPose_Response',
     'type': 'xarm_msgs/srv/PlanPose_Response',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/PlanPose_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_0cdcf4232f673c3034319f90c1d0f56fbfd86a829fa9f6460f87fea391ce766d',
     'minimum': 1,
     'maximum': 1,
     'semantics': '',
     'fields': [{'name': 'success',
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

REGISTRY.add(Ros2Xarm_msgsSrvPlanPose_Response)

class Ros2Xarm_msgsSrvPlanSingleStraight_Request(Record):
    """@brief Own all original xarm_msgs/srv/PlanSingleStraight_Request fields.
    @details 1 ordered fields; 56..56 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original target: geometry_msgs/msg/Pose, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('target',)
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvPlanSingleStraight_Request',
     'type': 'xarm_msgs/srv/PlanSingleStraight_Request',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/PlanSingleStraight_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_4e350b5145aa64c8ff4dc15cd61ba557f0db2b256798e50e4b4e28d47ecdc2b0',
     'minimum': 56,
     'maximum': 56,
     'semantics': '',
     'fields': [{'name': 'target',
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
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Xarm_msgsSrvPlanSingleStraight_Request)

class Ros2Xarm_msgsSrvPlanSingleStraight_Response(Record):
    """@brief Own all original xarm_msgs/srv/PlanSingleStraight_Response fields.
    @details 1 ordered fields; 1..1 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original success: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('success',)
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvPlanSingleStraight_Response',
     'type': 'xarm_msgs/srv/PlanSingleStraight_Response',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/PlanSingleStraight_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_ef2fdd22f223f4c91ccc886bddae43b0d48bc9063b3a199c7d8bb6f1bfb86432',
     'minimum': 1,
     'maximum': 1,
     'semantics': '',
     'fields': [{'name': 'success',
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

REGISTRY.add(Ros2Xarm_msgsSrvPlanSingleStraight_Response)

class Ros2Xarm_msgsSrvRobotiqActivate_Request(Record):
    """@brief Own all original xarm_msgs/srv/RobotiqActivate_Request fields.
    @details 2 ordered fields; 5..5 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original wait: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original timeout: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('wait', 'timeout')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvRobotiqActivate_Request',
     'type': 'xarm_msgs/srv/RobotiqActivate_Request',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/RobotiqActivate_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_7c4501be17de61893d5d91b3808769133ac5a444d2f0a8b1b3b13a01f03b75c3',
     'minimum': 5,
     'maximum': 5,
     'semantics': '',
     'fields': [{'name': 'wait',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': 'True',
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': True},
                {'name': 'timeout',
                 'type': 'float32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': '3.0',
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': 3.0}],
     'constants': {}}

REGISTRY.add(Ros2Xarm_msgsSrvRobotiqActivate_Request)

class Ros2Xarm_msgsSrvRobotiqActivate_Response(Record):
    """@brief Own all original xarm_msgs/srv/RobotiqActivate_Response fields.
    @details 3 ordered fields; 10..4362 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original ret: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original message: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original ret_data: uint8, sequence.
    # @details Count/quota 4096; string byte bound 0; caller owns storage.
    __slots__ = ('ret', 'message', 'ret_data')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvRobotiqActivate_Response',
     'type': 'xarm_msgs/srv/RobotiqActivate_Response',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/RobotiqActivate_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_e6f6d01b439afdbb2461a8ed682ce1332e021a9a8ae3326772f13469a70648d4',
     'minimum': 10,
     'maximum': 4362,
     'semantics': '',
     'fields': [{'name': 'ret',
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
                {'name': 'message',
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
                {'name': 'ret_data',
                 'type': 'uint8',
                 'array': 'sequence',
                 'count': 4096,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Xarm_msgsSrvRobotiqActivate_Response)

class Ros2Xarm_msgsSrvRobotiqGetStatus_Request(Record):
    """@brief Own all original xarm_msgs/srv/RobotiqGetStatus_Request fields.
    @details 1 ordered fields; 1..1 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original number_of_registers: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('number_of_registers',)
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvRobotiqGetStatus_Request',
     'type': 'xarm_msgs/srv/RobotiqGetStatus_Request',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/RobotiqGetStatus_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_99970019152494d54024cb4c44af400853506d81149e1bba55d40caa9bd44e6b',
     'minimum': 1,
     'maximum': 1,
     'semantics': '',
     'fields': [{'name': 'number_of_registers',
                 'type': 'uint8',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': '3',
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': 3}],
     'constants': {}}

REGISTRY.add(Ros2Xarm_msgsSrvRobotiqGetStatus_Request)

class Ros2Xarm_msgsSrvRobotiqGetStatus_Response(Record):
    """@brief Own all original xarm_msgs/srv/RobotiqGetStatus_Response fields.
    @details 3 ordered fields; 10..4362 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original ret: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original message: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original ret_data: uint8, sequence.
    # @details Count/quota 4096; string byte bound 0; caller owns storage.
    __slots__ = ('ret', 'message', 'ret_data')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvRobotiqGetStatus_Response',
     'type': 'xarm_msgs/srv/RobotiqGetStatus_Response',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/RobotiqGetStatus_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_b1b7945622a48beab45b569b9c64139eec028b5a61dc75cfb6dc302d8b787e43',
     'minimum': 10,
     'maximum': 4362,
     'semantics': '',
     'fields': [{'name': 'ret',
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
                {'name': 'message',
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
                {'name': 'ret_data',
                 'type': 'uint8',
                 'array': 'sequence',
                 'count': 4096,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Xarm_msgsSrvRobotiqGetStatus_Response)

class Ros2Xarm_msgsSrvRobotiqMove_Request(Record):
    """@brief Own all original xarm_msgs/srv/RobotiqMove_Request fields.
    @details 5 ordered fields; 8..8 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original pos: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original speed: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original force: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original wait: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original timeout: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('pos', 'speed', 'force', 'wait', 'timeout')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvRobotiqMove_Request',
     'type': 'xarm_msgs/srv/RobotiqMove_Request',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/RobotiqMove_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_f1e5c6c7be4583ecdb91da2401c9adcf727eff9e2b69df21e8a4f1de468775ad',
     'minimum': 8,
     'maximum': 8,
     'semantics': '',
     'fields': [{'name': 'pos',
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
                 'native_default': '255',
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': 255},
                {'name': 'force',
                 'type': 'uint8',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': '255',
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': 255},
                {'name': 'wait',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': 'True',
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': True},
                {'name': 'timeout',
                 'type': 'float32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': '5.0',
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': 5.0}],
     'constants': {}}

REGISTRY.add(Ros2Xarm_msgsSrvRobotiqMove_Request)

class Ros2Xarm_msgsSrvRobotiqMove_Response(Record):
    """@brief Own all original xarm_msgs/srv/RobotiqMove_Response fields.
    @details 3 ordered fields; 10..4362 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original ret: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original message: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original ret_data: uint8, sequence.
    # @details Count/quota 4096; string byte bound 0; caller owns storage.
    __slots__ = ('ret', 'message', 'ret_data')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvRobotiqMove_Response',
     'type': 'xarm_msgs/srv/RobotiqMove_Response',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/RobotiqMove_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_7b581f9f45349f688543ea57a3889b351909b43a9d5bff65d916b804b00bacf6',
     'minimum': 10,
     'maximum': 4362,
     'semantics': '',
     'fields': [{'name': 'ret',
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
                {'name': 'message',
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
                {'name': 'ret_data',
                 'type': 'uint8',
                 'array': 'sequence',
                 'count': 4096,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Xarm_msgsSrvRobotiqMove_Response)

class Ros2Xarm_msgsSrvRobotiqReset_Request(Record):
    """@brief Own all original xarm_msgs/srv/RobotiqReset_Request fields.
    @details 0 ordered fields; 0..0 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    __slots__ = ()
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvRobotiqReset_Request',
     'type': 'xarm_msgs/srv/RobotiqReset_Request',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/RobotiqReset_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_59168733ec2ce73fc135dfa2c0f1edd10a4ad82062acf477c7ca9258ecb8d755',
     'minimum': 0,
     'maximum': 0,
     'semantics': '',
     'fields': [],
     'constants': {}}

REGISTRY.add(Ros2Xarm_msgsSrvRobotiqReset_Request)

class Ros2Xarm_msgsSrvRobotiqReset_Response(Record):
    """@brief Own all original xarm_msgs/srv/RobotiqReset_Response fields.
    @details 3 ordered fields; 10..4362 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original ret: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original message: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original ret_data: uint8, sequence.
    # @details Count/quota 4096; string byte bound 0; caller owns storage.
    __slots__ = ('ret', 'message', 'ret_data')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvRobotiqReset_Response',
     'type': 'xarm_msgs/srv/RobotiqReset_Response',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/RobotiqReset_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_4c0f6950fe50ffae8b6b30be7265606bddaebeb1099038b1e973f144c8164d2e',
     'minimum': 10,
     'maximum': 4362,
     'semantics': '',
     'fields': [{'name': 'ret',
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
                {'name': 'message',
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
                {'name': 'ret_data',
                 'type': 'uint8',
                 'array': 'sequence',
                 'count': 4096,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Xarm_msgsSrvRobotiqReset_Response)

class Ros2Xarm_msgsSrvSetAnalogIO_Request(Record):
    """@brief Own all original xarm_msgs/srv/SetAnalogIO_Request fields.
    @details 4 ordered fields; 14..142 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original ionum: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original value: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original xyz: float32, sequence.
    # @details Count/quota 32; string byte bound 0; caller owns storage.
    # @brief Original tol_r: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('ionum', 'value', 'xyz', 'tol_r')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvSetAnalogIO_Request',
     'type': 'xarm_msgs/srv/SetAnalogIO_Request',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/SetAnalogIO_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_77df87cd98b5dd0b384674739c65f045eb32346596b82ceca2ccb9ff6e9dfe96',
     'minimum': 14,
     'maximum': 142,
     'semantics': '',
     'fields': [{'name': 'ionum',
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
                {'name': 'value',
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
                {'name': 'xyz',
                 'type': 'float32',
                 'array': 'sequence',
                 'count': 32,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'tol_r',
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

REGISTRY.add(Ros2Xarm_msgsSrvSetAnalogIO_Request)

class Ros2Xarm_msgsSrvSetAnalogIO_Response(Record):
    """@brief Own all original xarm_msgs/srv/SetAnalogIO_Response fields.
    @details 2 ordered fields; 6..262 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original ret: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original message: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    __slots__ = ('ret', 'message')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvSetAnalogIO_Response',
     'type': 'xarm_msgs/srv/SetAnalogIO_Response',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/SetAnalogIO_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_480194824f2056f0dd3d3031fda9e27f49b3f7b242f0d0bcb4a783c6649164ec',
     'minimum': 6,
     'maximum': 262,
     'semantics': '',
     'fields': [{'name': 'ret',
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
                {'name': 'message',
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

REGISTRY.add(Ros2Xarm_msgsSrvSetAnalogIO_Response)

class Ros2Xarm_msgsSrvSetDigitalIO_Request(Record):
    """@brief Own all original xarm_msgs/srv/SetDigitalIO_Request fields.
    @details 5 ordered fields; 16..144 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original ionum: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original value: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original delay_sec: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original xyz: float32, sequence.
    # @details Count/quota 32; string byte bound 0; caller owns storage.
    # @brief Original tol_r: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('ionum', 'value', 'delay_sec', 'xyz', 'tol_r')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvSetDigitalIO_Request',
     'type': 'xarm_msgs/srv/SetDigitalIO_Request',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/SetDigitalIO_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_1bb4c857c4625a17ef5800f821d5aed95124ba24dc472ee61c2193798967aaf2',
     'minimum': 16,
     'maximum': 144,
     'semantics': '',
     'fields': [{'name': 'ionum',
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
                {'name': 'value',
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
                {'name': 'delay_sec',
                 'type': 'float32',
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
                {'name': 'xyz',
                 'type': 'float32',
                 'array': 'sequence',
                 'count': 32,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'tol_r',
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

REGISTRY.add(Ros2Xarm_msgsSrvSetDigitalIO_Request)

class Ros2Xarm_msgsSrvSetDigitalIO_Response(Record):
    """@brief Own all original xarm_msgs/srv/SetDigitalIO_Response fields.
    @details 2 ordered fields; 6..262 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original ret: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original message: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    __slots__ = ('ret', 'message')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvSetDigitalIO_Response',
     'type': 'xarm_msgs/srv/SetDigitalIO_Response',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/SetDigitalIO_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_cb18f2968dd4014c8fe100a63d4c80ce10e813fc0998a9f76cd8699bc511a17b',
     'minimum': 6,
     'maximum': 262,
     'semantics': '',
     'fields': [{'name': 'ret',
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
                {'name': 'message',
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

REGISTRY.add(Ros2Xarm_msgsSrvSetDigitalIO_Response)

class Ros2Xarm_msgsSrvSetFloat32_Request(Record):
    """@brief Own all original xarm_msgs/srv/SetFloat32_Request fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original data: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('data',)
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvSetFloat32_Request',
     'type': 'xarm_msgs/srv/SetFloat32_Request',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/SetFloat32_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_6fec5cd9973c8f68bdffad4b582b26547d325167942379830a84c7d8469987c1',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'data',
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

REGISTRY.add(Ros2Xarm_msgsSrvSetFloat32_Request)

class Ros2Xarm_msgsSrvSetFloat32_Response(Record):
    """@brief Own all original xarm_msgs/srv/SetFloat32_Response fields.
    @details 2 ordered fields; 6..262 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original ret: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original message: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    __slots__ = ('ret', 'message')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvSetFloat32_Response',
     'type': 'xarm_msgs/srv/SetFloat32_Response',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/SetFloat32_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_d7bb8df8e3e4ab02a30ebfdc4af57cdbcee5ce3b48591524e70e2a07f8843ea1',
     'minimum': 6,
     'maximum': 262,
     'semantics': '',
     'fields': [{'name': 'ret',
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
                {'name': 'message',
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

REGISTRY.add(Ros2Xarm_msgsSrvSetFloat32_Response)

class Ros2Xarm_msgsSrvSetFloat32List_Request(Record):
    """@brief Own all original xarm_msgs/srv/SetFloat32List_Request fields.
    @details 1 ordered fields; 4..132 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original datas: float32, sequence.
    # @details Count/quota 32; string byte bound 0; caller owns storage.
    __slots__ = ('datas',)
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvSetFloat32List_Request',
     'type': 'xarm_msgs/srv/SetFloat32List_Request',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/SetFloat32List_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_38bd43fd452ab1f59bd4875deb4dea6d0a17c3409ee9c5446f798e1b8ba93532',
     'minimum': 4,
     'maximum': 132,
     'semantics': '',
     'fields': [{'name': 'datas',
                 'type': 'float32',
                 'array': 'sequence',
                 'count': 32,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Xarm_msgsSrvSetFloat32List_Request)

class Ros2Xarm_msgsSrvSetFloat32List_Response(Record):
    """@brief Own all original xarm_msgs/srv/SetFloat32List_Response fields.
    @details 2 ordered fields; 6..262 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original ret: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original message: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    __slots__ = ('ret', 'message')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvSetFloat32List_Response',
     'type': 'xarm_msgs/srv/SetFloat32List_Response',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/SetFloat32List_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_f2c08d32b1238bb78dc0daccfc97066563a14e8e4b891e37e2effaed91a74396',
     'minimum': 6,
     'maximum': 262,
     'semantics': '',
     'fields': [{'name': 'ret',
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
                {'name': 'message',
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

REGISTRY.add(Ros2Xarm_msgsSrvSetFloat32List_Response)

class Ros2Xarm_msgsSrvSetInt16_Request(Record):
    """@brief Own all original xarm_msgs/srv/SetInt16_Request fields.
    @details 1 ordered fields; 2..2 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original data: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('data',)
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvSetInt16_Request',
     'type': 'xarm_msgs/srv/SetInt16_Request',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/SetInt16_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_09e0c90763447d7b4ed57ce37650d4a4d918bc96ec8b8df61189f8e636a58adb',
     'minimum': 2,
     'maximum': 2,
     'semantics': '',
     'fields': [{'name': 'data',
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

REGISTRY.add(Ros2Xarm_msgsSrvSetInt16_Request)

class Ros2Xarm_msgsSrvSetInt16_Response(Record):
    """@brief Own all original xarm_msgs/srv/SetInt16_Response fields.
    @details 2 ordered fields; 6..262 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original ret: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original message: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    __slots__ = ('ret', 'message')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvSetInt16_Response',
     'type': 'xarm_msgs/srv/SetInt16_Response',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/SetInt16_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_0c02f9a01383e37346637ec7d6a608cca7d025259b67c9ab528f3b13aa842155',
     'minimum': 6,
     'maximum': 262,
     'semantics': '',
     'fields': [{'name': 'ret',
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
                {'name': 'message',
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

REGISTRY.add(Ros2Xarm_msgsSrvSetInt16_Response)

class Ros2Xarm_msgsSrvSetInt16ById_Request(Record):
    """@brief Own all original xarm_msgs/srv/SetInt16ById_Request fields.
    @details 2 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original id: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original data: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('id', 'data')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvSetInt16ById_Request',
     'type': 'xarm_msgs/srv/SetInt16ById_Request',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/SetInt16ById_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_9472db1bda5f8d557e75c9be0c902c67a76952ba0bc258693cf047c6c10954f0',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'id',
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
                {'name': 'data',
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

REGISTRY.add(Ros2Xarm_msgsSrvSetInt16ById_Request)

class Ros2Xarm_msgsSrvSetInt16ById_Response(Record):
    """@brief Own all original xarm_msgs/srv/SetInt16ById_Response fields.
    @details 2 ordered fields; 6..262 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original ret: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original message: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    __slots__ = ('ret', 'message')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvSetInt16ById_Response',
     'type': 'xarm_msgs/srv/SetInt16ById_Response',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/SetInt16ById_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_cd16eec98546214169bf4e32eff4190d9276ee41b6bfc5eef919dd44cdeae92a',
     'minimum': 6,
     'maximum': 262,
     'semantics': '',
     'fields': [{'name': 'ret',
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
                {'name': 'message',
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

REGISTRY.add(Ros2Xarm_msgsSrvSetInt16ById_Response)

class Ros2Xarm_msgsSrvSetInt16List_Request(Record):
    """@brief Own all original xarm_msgs/srv/SetInt16List_Request fields.
    @details 1 ordered fields; 4..68 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original datas: int16, sequence.
    # @details Count/quota 32; string byte bound 0; caller owns storage.
    __slots__ = ('datas',)
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvSetInt16List_Request',
     'type': 'xarm_msgs/srv/SetInt16List_Request',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/SetInt16List_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_d1ef15eb18c2f3c377c25c486d945fbf77887ca7a9ef9c291355e9a23541ec96',
     'minimum': 4,
     'maximum': 68,
     'semantics': '',
     'fields': [{'name': 'datas',
                 'type': 'int16',
                 'array': 'sequence',
                 'count': 32,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Xarm_msgsSrvSetInt16List_Request)

class Ros2Xarm_msgsSrvSetInt16List_Response(Record):
    """@brief Own all original xarm_msgs/srv/SetInt16List_Response fields.
    @details 2 ordered fields; 6..262 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original ret: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original message: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    __slots__ = ('ret', 'message')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvSetInt16List_Response',
     'type': 'xarm_msgs/srv/SetInt16List_Response',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/SetInt16List_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_326ef9ea75d627cdc4187908191f230f87efb6f3fb2b0a7f783260c7ffee583f',
     'minimum': 6,
     'maximum': 262,
     'semantics': '',
     'fields': [{'name': 'ret',
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
                {'name': 'message',
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

REGISTRY.add(Ros2Xarm_msgsSrvSetInt16List_Response)

class Ros2Xarm_msgsSrvSetInt32_Request(Record):
    """@brief Own all original xarm_msgs/srv/SetInt32_Request fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original data: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('data',)
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvSetInt32_Request',
     'type': 'xarm_msgs/srv/SetInt32_Request',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/SetInt32_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_f219450be903e96baf55dfb3fcc03851aabc43899d637f869d9adba55b36c1d3',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'data',
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

REGISTRY.add(Ros2Xarm_msgsSrvSetInt32_Request)

class Ros2Xarm_msgsSrvSetInt32_Response(Record):
    """@brief Own all original xarm_msgs/srv/SetInt32_Response fields.
    @details 2 ordered fields; 6..262 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original ret: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original message: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    __slots__ = ('ret', 'message')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvSetInt32_Response',
     'type': 'xarm_msgs/srv/SetInt32_Response',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/SetInt32_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_1510982ab2c740a570f21179997368cd4be93c4086967e9ff98b24606f0b7f65',
     'minimum': 6,
     'maximum': 262,
     'semantics': '',
     'fields': [{'name': 'ret',
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
                {'name': 'message',
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

REGISTRY.add(Ros2Xarm_msgsSrvSetInt32_Response)

class Ros2Xarm_msgsSrvSetInt32ByType_Request(Record):
    """@brief Own all original xarm_msgs/srv/SetInt32ByType_Request fields.
    @details 2 ordered fields; 6..6 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original type: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original data: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('type', 'data')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvSetInt32ByType_Request',
     'type': 'xarm_msgs/srv/SetInt32ByType_Request',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/SetInt32ByType_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_8a6e3ab3e34eeff45dbddc698cb249c2acb27d74717be8724fa0f9448ff981d7',
     'minimum': 6,
     'maximum': 6,
     'semantics': '',
     'fields': [{'name': 'type',
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
                {'name': 'data',
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

REGISTRY.add(Ros2Xarm_msgsSrvSetInt32ByType_Request)

class Ros2Xarm_msgsSrvSetInt32ByType_Response(Record):
    """@brief Own all original xarm_msgs/srv/SetInt32ByType_Response fields.
    @details 2 ordered fields; 6..262 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original ret: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original message: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    __slots__ = ('ret', 'message')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvSetInt32ByType_Response',
     'type': 'xarm_msgs/srv/SetInt32ByType_Response',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/SetInt32ByType_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_6fcd5dddde2d38a61ffdeab64ae09514137b364347357c62b81c26c86b44882a',
     'minimum': 6,
     'maximum': 262,
     'semantics': '',
     'fields': [{'name': 'ret',
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
                {'name': 'message',
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

REGISTRY.add(Ros2Xarm_msgsSrvSetInt32ByType_Response)

class Ros2Xarm_msgsSrvSetModbusTimeout_Request(Record):
    """@brief Own all original xarm_msgs/srv/SetModbusTimeout_Request fields.
    @details 2 ordered fields; 5..5 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original timeout: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original is_transparent_transmission: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('timeout', 'is_transparent_transmission')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvSetModbusTimeout_Request',
     'type': 'xarm_msgs/srv/SetModbusTimeout_Request',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/SetModbusTimeout_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_186f84404c6a11cfd3c7a64fc9ac55b39343d5f8c4a01bd81efdd038d6c7e685',
     'minimum': 5,
     'maximum': 5,
     'semantics': '',
     'fields': [{'name': 'timeout',
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
                {'name': 'is_transparent_transmission',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': 'False',
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': False}],
     'constants': {}}

REGISTRY.add(Ros2Xarm_msgsSrvSetModbusTimeout_Request)

class Ros2Xarm_msgsSrvSetModbusTimeout_Response(Record):
    """@brief Own all original xarm_msgs/srv/SetModbusTimeout_Response fields.
    @details 2 ordered fields; 6..262 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original ret: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original message: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    __slots__ = ('ret', 'message')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvSetModbusTimeout_Response',
     'type': 'xarm_msgs/srv/SetModbusTimeout_Response',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/SetModbusTimeout_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_32da6d0583896c59968213be225e17146d619cddb4c520060640e13b886f3397',
     'minimum': 6,
     'maximum': 262,
     'semantics': '',
     'fields': [{'name': 'ret',
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
                {'name': 'message',
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

REGISTRY.add(Ros2Xarm_msgsSrvSetModbusTimeout_Response)

class Ros2Xarm_msgsSrvSetTcpLoad_Request(Record):
    """@brief Own all original xarm_msgs/srv/SetTcpLoad_Request fields.
    @details 2 ordered fields; 8..136 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original weight: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original center_of_gravity: float32, sequence.
    # @details Count/quota 32; string byte bound 0; caller owns storage.
    __slots__ = ('weight', 'center_of_gravity')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvSetTcpLoad_Request',
     'type': 'xarm_msgs/srv/SetTcpLoad_Request',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/SetTcpLoad_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_5428d98daa8dd42c8dba0cb78152b1b718afe34eb1da16de65a333a81d293e99',
     'minimum': 8,
     'maximum': 136,
     'semantics': '',
     'fields': [{'name': 'weight',
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
                {'name': 'center_of_gravity',
                 'type': 'float32',
                 'array': 'sequence',
                 'count': 32,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros2Xarm_msgsSrvSetTcpLoad_Request)

class Ros2Xarm_msgsSrvSetTcpLoad_Response(Record):
    """@brief Own all original xarm_msgs/srv/SetTcpLoad_Response fields.
    @details 2 ordered fields; 8..264 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original ret: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original message: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    __slots__ = ('ret', 'message')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvSetTcpLoad_Response',
     'type': 'xarm_msgs/srv/SetTcpLoad_Response',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/SetTcpLoad_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_7438021022e94f66f464a561a54cb8f808da8c2e35830853cbecc98fa76ef46f',
     'minimum': 8,
     'maximum': 264,
     'semantics': '',
     'fields': [{'name': 'ret',
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
                {'name': 'message',
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

REGISTRY.add(Ros2Xarm_msgsSrvSetTcpLoad_Response)

class Ros2Xarm_msgsSrvTrajCtrl_Request(Record):
    """@brief Own all original xarm_msgs/srv/TrajCtrl_Request fields.
    @details 2 ordered fields; 8..264 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original filename: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original timeout: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('filename', 'timeout')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvTrajCtrl_Request',
     'type': 'xarm_msgs/srv/TrajCtrl_Request',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/TrajCtrl_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_f29343b422932e055d5930c46615f38cc1600d4c4b89506a1050f89728e0ca0d',
     'minimum': 8,
     'maximum': 264,
     'semantics': '',
     'fields': [{'name': 'filename',
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
                {'name': 'timeout',
                 'type': 'float32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': '10.0',
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': 10.0}],
     'constants': {}}

REGISTRY.add(Ros2Xarm_msgsSrvTrajCtrl_Request)

class Ros2Xarm_msgsSrvTrajCtrl_Response(Record):
    """@brief Own all original xarm_msgs/srv/TrajCtrl_Response fields.
    @details 2 ordered fields; 6..262 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original ret: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original message: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    __slots__ = ('ret', 'message')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvTrajCtrl_Response',
     'type': 'xarm_msgs/srv/TrajCtrl_Response',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/TrajCtrl_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_00cac1ec8b7d312cae07a3ffe3235bd599086c62b028cb446bf7478306aa1b3c',
     'minimum': 6,
     'maximum': 262,
     'semantics': '',
     'fields': [{'name': 'ret',
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
                {'name': 'message',
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

REGISTRY.add(Ros2Xarm_msgsSrvTrajCtrl_Response)

class Ros2Xarm_msgsSrvTrajPlay_Request(Record):
    """@brief Own all original xarm_msgs/srv/TrajPlay_Request fields.
    @details 4 ordered fields; 9..265 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original filename: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original times: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original double_speed: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original wait: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('filename', 'times', 'double_speed', 'wait')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvTrajPlay_Request',
     'type': 'xarm_msgs/srv/TrajPlay_Request',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/TrajPlay_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_edbd9ed5bcbc1cf8882fab3b69b24373542273b74a51bd3cae94e7970a7d3e72',
     'minimum': 9,
     'maximum': 265,
     'semantics': '',
     'fields': [{'name': 'filename',
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
                {'name': 'times',
                 'type': 'int16',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': '1',
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': 1},
                {'name': 'double_speed',
                 'type': 'int16',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': '1',
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': 1},
                {'name': 'wait',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': 'False',
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': False}],
     'constants': {}}

REGISTRY.add(Ros2Xarm_msgsSrvTrajPlay_Request)

class Ros2Xarm_msgsSrvTrajPlay_Response(Record):
    """@brief Own all original xarm_msgs/srv/TrajPlay_Response fields.
    @details 2 ordered fields; 6..262 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original ret: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original message: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    __slots__ = ('ret', 'message')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvTrajPlay_Response',
     'type': 'xarm_msgs/srv/TrajPlay_Response',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/TrajPlay_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_ce86fc20a5a16288b138fe2e37794c1318dc393b811f45d3fe3eccf954837ea0',
     'minimum': 6,
     'maximum': 262,
     'semantics': '',
     'fields': [{'name': 'ret',
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
                {'name': 'message',
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

REGISTRY.add(Ros2Xarm_msgsSrvTrajPlay_Response)

class Ros2Xarm_msgsSrvVacuumGripperCtrl_Request(Record):
    """@brief Own all original xarm_msgs/srv/VacuumGripperCtrl_Request fields.
    @details 6 ordered fields; 13..13 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original on: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original wait: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original timeout: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original delay_sec: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original sync: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original hardware_version: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('on', 'wait', 'timeout', 'delay_sec', 'sync', 'hardware_version')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvVacuumGripperCtrl_Request',
     'type': 'xarm_msgs/srv/VacuumGripperCtrl_Request',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/VacuumGripperCtrl_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_d6da957d39ce9cb96d064172db86907b162f95385fdf5e5bfd066eba8c1a4888',
     'minimum': 13,
     'maximum': 13,
     'semantics': '',
     'fields': [{'name': 'on',
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
                {'name': 'wait',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': 'False',
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': False},
                {'name': 'timeout',
                 'type': 'float32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': '3.0',
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': 3.0},
                {'name': 'delay_sec',
                 'type': 'float32',
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
                {'name': 'sync',
                 'type': 'bool',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': 'True',
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': True},
                {'name': 'hardware_version',
                 'type': 'int16',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': '0',
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': 0}],
     'constants': {}}

REGISTRY.add(Ros2Xarm_msgsSrvVacuumGripperCtrl_Request)

class Ros2Xarm_msgsSrvVacuumGripperCtrl_Response(Record):
    """@brief Own all original xarm_msgs/srv/VacuumGripperCtrl_Response fields.
    @details 2 ordered fields; 6..262 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original ret: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original message: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    __slots__ = ('ret', 'message')
    SCHEMA = {'symbol': 'Ros2Xarm_msgsSrvVacuumGripperCtrl_Response',
     'type': 'xarm_msgs/srv/VacuumGripperCtrl_Response',
     'ros_version': 2,
     'native_type': 'xarm_msgs/srv/VacuumGripperCtrl_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_fa202ccf3d36ec8ff49c0e32f3af07e18d19a6694566fcbaf8ce9ff4a79f352d',
     'minimum': 6,
     'maximum': 262,
     'semantics': '',
     'fields': [{'name': 'ret',
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
                {'name': 'message',
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

REGISTRY.add(Ros2Xarm_msgsSrvVacuumGripperCtrl_Response)
