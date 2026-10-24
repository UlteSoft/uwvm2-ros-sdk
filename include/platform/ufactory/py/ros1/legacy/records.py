"""@file records.py
@brief Complete original vendor values and canonical codecs.
@details Owned fields preserve widths, quotas and defaults. Native identity remains unbound.
No constructor or codec opens a ROS resource or grants a capability.
"""
from ros.py.wire import Record, Registry

REGISTRY = Registry()


class Ros1Geometry_msgsPoint(Record):
    """@brief Own all original geometry_msgs/Point fields.
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
    SCHEMA = {'symbol': 'Ros1Geometry_msgsPoint',
     'type': 'geometry_msgs/Point',
     'ros_version': 1,
     'native_type': 'geometry_msgs/Point',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b',
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

REGISTRY.add(Ros1Geometry_msgsPoint)

class Ros1Geometry_msgsQuaternion(Record):
    """@brief Own all original geometry_msgs/Quaternion fields.
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
    SCHEMA = {'symbol': 'Ros1Geometry_msgsQuaternion',
     'type': 'geometry_msgs/Quaternion',
     'ros_version': 1,
     'native_type': 'geometry_msgs/Quaternion',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934',
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
                 'default': None},
                {'name': 'w',
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

REGISTRY.add(Ros1Geometry_msgsQuaternion)

class Ros1Geometry_msgsPose(Record):
    """@brief Own all original geometry_msgs/Pose fields.
    @details 2 ordered fields; 56..56 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original position: geometry_msgs/Point, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original orientation: geometry_msgs/Quaternion, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('position', 'orientation')
    SCHEMA = {'symbol': 'Ros1Geometry_msgsPose',
     'type': 'geometry_msgs/Pose',
     'ros_version': 1,
     'native_type': 'geometry_msgs/Pose',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471',
     'minimum': 56,
     'maximum': 56,
     'semantics': '',
     'fields': [{'name': 'position',
                 'type': 'geometry_msgs/Point',
                 'array': '',
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
                 'type': 'geometry_msgs/Quaternion',
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

REGISTRY.add(Ros1Geometry_msgsPose)

class Ros1Xarm_msgsIOState(Record):
    """@brief Own all original xarm_msgs/IOState fields.
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
    SCHEMA = {'symbol': 'Ros1Xarm_msgsIOState',
     'type': 'xarm_msgs/IOState',
     'ros_version': 1,
     'native_type': 'xarm_msgs/IOState',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_93ef0c71a5fed6eaa7c8e87447b280778ffd05c376cf41a577c71acfeb02d996',
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

REGISTRY.add(Ros1Xarm_msgsIOState)

class Ros1Xarm_msgsRobotMsg(Record):
    """@brief Own all original xarm_msgs/RobotMsg fields.
    @details 10 ordered fields; 66..94 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
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
    __slots__ = ('state',
     'mode',
     'cmdnum',
     'mt_brake',
     'mt_able',
     'err',
     'warn',
     'angle',
     'pose',
     'offset')
    SCHEMA = {'symbol': 'Ros1Xarm_msgsRobotMsg',
     'type': 'xarm_msgs/RobotMsg',
     'ros_version': 1,
     'native_type': 'xarm_msgs/RobotMsg',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_e5509a530075a638bfa1f09cf5fd78c4d609dccbd79ddd75ef50f5061f68b0f7',
     'minimum': 66,
     'maximum': 94,
     'semantics': '',
     'fields': [{'name': 'state',
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

REGISTRY.add(Ros1Xarm_msgsRobotMsg)

class Ros1Xarm_msgsClearErrRequest(Record):
    """@brief Own all original xarm_msgs/ClearErrRequest fields.
    @details 0 ordered fields; 0..0 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    __slots__ = ()
    SCHEMA = {'symbol': 'Ros1Xarm_msgsClearErrRequest',
     'type': 'xarm_msgs/ClearErrRequest',
     'ros_version': 1,
     'native_type': 'xarm_msgs/ClearErrRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_ce83a45aee719e0916f27f8caab41c12bb15d04942bfdd0489047e7b79f3b9e8',
     'minimum': 0,
     'maximum': 0,
     'semantics': '',
     'fields': [],
     'constants': {}}

REGISTRY.add(Ros1Xarm_msgsClearErrRequest)

class Ros1Xarm_msgsClearErrResponse(Record):
    """@brief Own all original xarm_msgs/ClearErrResponse fields.
    @details 2 ordered fields; 6..262 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original ret: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original message: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    __slots__ = ('ret', 'message')
    SCHEMA = {'symbol': 'Ros1Xarm_msgsClearErrResponse',
     'type': 'xarm_msgs/ClearErrResponse',
     'ros_version': 1,
     'native_type': 'xarm_msgs/ClearErrResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_33a2634f63b2881e08efe4031630e29743093d33cf0da846bad1551329243054',
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

REGISTRY.add(Ros1Xarm_msgsClearErrResponse)

class Ros1Xarm_msgsGetAnalogIORequest(Record):
    """@brief Own all original xarm_msgs/GetAnalogIORequest fields.
    @details 1 ordered fields; 2..2 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original port_num: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('port_num',)
    SCHEMA = {'symbol': 'Ros1Xarm_msgsGetAnalogIORequest',
     'type': 'xarm_msgs/GetAnalogIORequest',
     'ros_version': 1,
     'native_type': 'xarm_msgs/GetAnalogIORequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_08bf2816e784cc03d6d2ea33d71e457038f9071f8d80726d05f566d60ab961e8',
     'minimum': 2,
     'maximum': 2,
     'semantics': '',
     'fields': [{'name': 'port_num',
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

REGISTRY.add(Ros1Xarm_msgsGetAnalogIORequest)

class Ros1Xarm_msgsGetAnalogIOResponse(Record):
    """@brief Own all original xarm_msgs/GetAnalogIOResponse fields.
    @details 3 ordered fields; 10..266 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original analog_value: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original ret: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original message: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    __slots__ = ('analog_value', 'ret', 'message')
    SCHEMA = {'symbol': 'Ros1Xarm_msgsGetAnalogIOResponse',
     'type': 'xarm_msgs/GetAnalogIOResponse',
     'ros_version': 1,
     'native_type': 'xarm_msgs/GetAnalogIOResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_137ef1f1e94ed2e165023544043960031650f0848512d81afc97a2725144b835',
     'minimum': 10,
     'maximum': 266,
     'semantics': '',
     'fields': [{'name': 'analog_value',
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
                {'name': 'ret',
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

REGISTRY.add(Ros1Xarm_msgsGetAnalogIOResponse)

class Ros1Xarm_msgsGetDigitalIORequest(Record):
    """@brief Own all original xarm_msgs/GetDigitalIORequest fields.
    @details 0 ordered fields; 0..0 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    __slots__ = ()
    SCHEMA = {'symbol': 'Ros1Xarm_msgsGetDigitalIORequest',
     'type': 'xarm_msgs/GetDigitalIORequest',
     'ros_version': 1,
     'native_type': 'xarm_msgs/GetDigitalIORequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_edd78f1a2ed7ab9fc8541c8b5f0f9ff32713c949c03b66728ef7c41ed50a23da',
     'minimum': 0,
     'maximum': 0,
     'semantics': '',
     'fields': [],
     'constants': {}}

REGISTRY.add(Ros1Xarm_msgsGetDigitalIORequest)

class Ros1Xarm_msgsGetDigitalIOResponse(Record):
    """@brief Own all original xarm_msgs/GetDigitalIOResponse fields.
    @details 4 ordered fields; 14..270 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original digital_1: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original digital_2: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original ret: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original message: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    __slots__ = ('digital_1', 'digital_2', 'ret', 'message')
    SCHEMA = {'symbol': 'Ros1Xarm_msgsGetDigitalIOResponse',
     'type': 'xarm_msgs/GetDigitalIOResponse',
     'ros_version': 1,
     'native_type': 'xarm_msgs/GetDigitalIOResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_7af72b4f19e23493c4b4c2cf7c88076549e34ed741a04ee758db31de11457498',
     'minimum': 14,
     'maximum': 270,
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
                {'name': 'ret',
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

REGISTRY.add(Ros1Xarm_msgsGetDigitalIOResponse)

class Ros1Xarm_msgsMoveRequest(Record):
    """@brief Own all original xarm_msgs/MoveRequest fields.
    @details 5 ordered fields; 20..148 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original pose: float32, sequence.
    # @details Count/quota 32; string byte bound 0; caller owns storage.
    # @brief Original mvvelo: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original mvacc: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original mvtime: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original mvradii: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('pose', 'mvvelo', 'mvacc', 'mvtime', 'mvradii')
    SCHEMA = {'symbol': 'Ros1Xarm_msgsMoveRequest',
     'type': 'xarm_msgs/MoveRequest',
     'ros_version': 1,
     'native_type': 'xarm_msgs/MoveRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_9bfae5d05a608fb8f020e0cdb251b7e3b00e50ff610a26b70093837f365d4ced',
     'minimum': 20,
     'maximum': 148,
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
                {'name': 'mvvelo',
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
                {'name': 'mvacc',
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
                {'name': 'mvtime',
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
                {'name': 'mvradii',
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

REGISTRY.add(Ros1Xarm_msgsMoveRequest)

class Ros1Xarm_msgsMoveResponse(Record):
    """@brief Own all original xarm_msgs/MoveResponse fields.
    @details 2 ordered fields; 6..262 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original ret: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original message: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    __slots__ = ('ret', 'message')
    SCHEMA = {'symbol': 'Ros1Xarm_msgsMoveResponse',
     'type': 'xarm_msgs/MoveResponse',
     'ros_version': 1,
     'native_type': 'xarm_msgs/MoveResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_6081579d8a79f052cbb7616c0d366bad3948ac3b1380b118ad5b03e4123ce53d',
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

REGISTRY.add(Ros1Xarm_msgsMoveResponse)

class Ros1Xarm_msgsSetAxisRequest(Record):
    """@brief Own all original xarm_msgs/SetAxisRequest fields.
    @details 2 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original id: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original data: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('id', 'data')
    SCHEMA = {'symbol': 'Ros1Xarm_msgsSetAxisRequest',
     'type': 'xarm_msgs/SetAxisRequest',
     'ros_version': 1,
     'native_type': 'xarm_msgs/SetAxisRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_e9c45f00c83898744975890928756584b0646cf287024b3cb841380c368639f6',
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

REGISTRY.add(Ros1Xarm_msgsSetAxisRequest)

class Ros1Xarm_msgsSetAxisResponse(Record):
    """@brief Own all original xarm_msgs/SetAxisResponse fields.
    @details 2 ordered fields; 6..262 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original ret: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original message: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    __slots__ = ('ret', 'message')
    SCHEMA = {'symbol': 'Ros1Xarm_msgsSetAxisResponse',
     'type': 'xarm_msgs/SetAxisResponse',
     'ros_version': 1,
     'native_type': 'xarm_msgs/SetAxisResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_f4de9fe78f1ee22ef7c06a47de4dfd6dbd0d4f9d25021ee58779a1f241304a27',
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

REGISTRY.add(Ros1Xarm_msgsSetAxisResponse)

class Ros1Xarm_msgsSetDigitalIORequest(Record):
    """@brief Own all original xarm_msgs/SetDigitalIORequest fields.
    @details 2 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original io_num: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original value: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('io_num', 'value')
    SCHEMA = {'symbol': 'Ros1Xarm_msgsSetDigitalIORequest',
     'type': 'xarm_msgs/SetDigitalIORequest',
     'ros_version': 1,
     'native_type': 'xarm_msgs/SetDigitalIORequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_ac50ddbde487936e79606cb389b9bc074249136b4187a1334da6f09866cc3959',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'io_num',
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
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros1Xarm_msgsSetDigitalIORequest)

class Ros1Xarm_msgsSetDigitalIOResponse(Record):
    """@brief Own all original xarm_msgs/SetDigitalIOResponse fields.
    @details 2 ordered fields; 6..262 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original ret: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original message: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    __slots__ = ('ret', 'message')
    SCHEMA = {'symbol': 'Ros1Xarm_msgsSetDigitalIOResponse',
     'type': 'xarm_msgs/SetDigitalIOResponse',
     'ros_version': 1,
     'native_type': 'xarm_msgs/SetDigitalIOResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_7f3aa4fdf4749d20e4ef13a51ecaa589df1a9a470ff3658ebb7c343e5940046a',
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

REGISTRY.add(Ros1Xarm_msgsSetDigitalIOResponse)

class Ros1Xarm_msgsSetInt16Request(Record):
    """@brief Own all original xarm_msgs/SetInt16Request fields.
    @details 1 ordered fields; 2..2 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original data: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('data',)
    SCHEMA = {'symbol': 'Ros1Xarm_msgsSetInt16Request',
     'type': 'xarm_msgs/SetInt16Request',
     'ros_version': 1,
     'native_type': 'xarm_msgs/SetInt16Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_a218118282ed14fca33c7529762ce9849398540f031ad6e18e3a99a90226c5c7',
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

REGISTRY.add(Ros1Xarm_msgsSetInt16Request)

class Ros1Xarm_msgsSetInt16Response(Record):
    """@brief Own all original xarm_msgs/SetInt16Response fields.
    @details 2 ordered fields; 6..262 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original ret: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original message: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    __slots__ = ('ret', 'message')
    SCHEMA = {'symbol': 'Ros1Xarm_msgsSetInt16Response',
     'type': 'xarm_msgs/SetInt16Response',
     'ros_version': 1,
     'native_type': 'xarm_msgs/SetInt16Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_8df1192ff5ed3fc5eaaadf33980726b8764a541d30d062293d378d261367d656',
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

REGISTRY.add(Ros1Xarm_msgsSetInt16Response)

class Ros1Xarm_msgsTCPOffsetRequest(Record):
    """@brief Own all original xarm_msgs/TCPOffsetRequest fields.
    @details 6 ordered fields; 24..24 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original x: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original y: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original z: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original roll: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original pitch: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original yaw: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('x', 'y', 'z', 'roll', 'pitch', 'yaw')
    SCHEMA = {'symbol': 'Ros1Xarm_msgsTCPOffsetRequest',
     'type': 'xarm_msgs/TCPOffsetRequest',
     'ros_version': 1,
     'native_type': 'xarm_msgs/TCPOffsetRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_588f23b909cce18cc490801b9d2f0960335362b0c823651cda6d5c8a27ee0afd',
     'minimum': 24,
     'maximum': 24,
     'semantics': '',
     'fields': [{'name': 'x',
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
                {'name': 'y',
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
                {'name': 'z',
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
                {'name': 'roll',
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
                {'name': 'pitch',
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
                {'name': 'yaw',
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

REGISTRY.add(Ros1Xarm_msgsTCPOffsetRequest)

class Ros1Xarm_msgsTCPOffsetResponse(Record):
    """@brief Own all original xarm_msgs/TCPOffsetResponse fields.
    @details 2 ordered fields; 6..262 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original ret: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original message: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    __slots__ = ('ret', 'message')
    SCHEMA = {'symbol': 'Ros1Xarm_msgsTCPOffsetResponse',
     'type': 'xarm_msgs/TCPOffsetResponse',
     'ros_version': 1,
     'native_type': 'xarm_msgs/TCPOffsetResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_2f06deb14c2f0acce41ada4fecefd70e32bda4bc84b82354dffe333d2337464d',
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

REGISTRY.add(Ros1Xarm_msgsTCPOffsetResponse)

class Ros1Xarm_plannerExec_planRequest(Record):
    """@brief Own all original xarm_planner/exec_planRequest fields.
    @details 1 ordered fields; 1..1 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original exec: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('exec',)
    SCHEMA = {'symbol': 'Ros1Xarm_plannerExec_planRequest',
     'type': 'xarm_planner/exec_planRequest',
     'ros_version': 1,
     'native_type': 'xarm_planner/exec_planRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_f7c4c0d95453c6a7cfdc7726b003a63745ad0e533ced368d6422c5cb2c3d21f3',
     'minimum': 1,
     'maximum': 1,
     'semantics': '',
     'fields': [{'name': 'exec',
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

REGISTRY.add(Ros1Xarm_plannerExec_planRequest)

class Ros1Xarm_plannerExec_planResponse(Record):
    """@brief Own all original xarm_planner/exec_planResponse fields.
    @details 1 ordered fields; 1..1 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original success: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('success',)
    SCHEMA = {'symbol': 'Ros1Xarm_plannerExec_planResponse',
     'type': 'xarm_planner/exec_planResponse',
     'ros_version': 1,
     'native_type': 'xarm_planner/exec_planResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_7e265ca343aa21c5f0dc043d8662e82ed8e57f56c4eaf7f15733162c1029a625',
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

REGISTRY.add(Ros1Xarm_plannerExec_planResponse)

class Ros1Xarm_plannerJoint_planRequest(Record):
    """@brief Own all original xarm_planner/joint_planRequest fields.
    @details 1 ordered fields; 4..260 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original target: float64, sequence.
    # @details Count/quota 32; string byte bound 0; caller owns storage.
    __slots__ = ('target',)
    SCHEMA = {'symbol': 'Ros1Xarm_plannerJoint_planRequest',
     'type': 'xarm_planner/joint_planRequest',
     'ros_version': 1,
     'native_type': 'xarm_planner/joint_planRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_8a531cf6d8b62366b63ef2f7c6fd2314211a3043b2da3f050c20080cf4ec8fd9',
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

REGISTRY.add(Ros1Xarm_plannerJoint_planRequest)

class Ros1Xarm_plannerJoint_planResponse(Record):
    """@brief Own all original xarm_planner/joint_planResponse fields.
    @details 1 ordered fields; 1..1 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original success: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('success',)
    SCHEMA = {'symbol': 'Ros1Xarm_plannerJoint_planResponse',
     'type': 'xarm_planner/joint_planResponse',
     'ros_version': 1,
     'native_type': 'xarm_planner/joint_planResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_46925f1a9e54d9d74604a2f12457a97394e4ec30aa2832b7a66ae3da2782d668',
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

REGISTRY.add(Ros1Xarm_plannerJoint_planResponse)

class Ros1Xarm_plannerPose_planRequest(Record):
    """@brief Own all original xarm_planner/pose_planRequest fields.
    @details 1 ordered fields; 56..56 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original target: geometry_msgs/Pose, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('target',)
    SCHEMA = {'symbol': 'Ros1Xarm_plannerPose_planRequest',
     'type': 'xarm_planner/pose_planRequest',
     'ros_version': 1,
     'native_type': 'xarm_planner/pose_planRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_4ef40b7333ab897b974b0d800d68ed65ab28d52fc3b5dbe0561f799c7818cf22',
     'minimum': 56,
     'maximum': 56,
     'semantics': '',
     'fields': [{'name': 'target',
                 'type': 'geometry_msgs/Pose',
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

REGISTRY.add(Ros1Xarm_plannerPose_planRequest)

class Ros1Xarm_plannerPose_planResponse(Record):
    """@brief Own all original xarm_planner/pose_planResponse fields.
    @details 1 ordered fields; 1..1 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original success: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('success',)
    SCHEMA = {'symbol': 'Ros1Xarm_plannerPose_planResponse',
     'type': 'xarm_planner/pose_planResponse',
     'ros_version': 1,
     'native_type': 'xarm_planner/pose_planResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_d8eb8efb60382e22f7c357dbfd8391a3c6608358522718dadaeb36a46b985113',
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

REGISTRY.add(Ros1Xarm_plannerPose_planResponse)

class Ros1Xarm_plannerSingle_straight_planRequest(Record):
    """@brief Own all original xarm_planner/single_straight_planRequest fields.
    @details 1 ordered fields; 56..56 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original target: geometry_msgs/Pose, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('target',)
    SCHEMA = {'symbol': 'Ros1Xarm_plannerSingle_straight_planRequest',
     'type': 'xarm_planner/single_straight_planRequest',
     'ros_version': 1,
     'native_type': 'xarm_planner/single_straight_planRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_1a6d7a443bf5aa7120d9595f93f922319b473efe007c59700a3b70ed7907809f',
     'minimum': 56,
     'maximum': 56,
     'semantics': '',
     'fields': [{'name': 'target',
                 'type': 'geometry_msgs/Pose',
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

REGISTRY.add(Ros1Xarm_plannerSingle_straight_planRequest)

class Ros1Xarm_plannerSingle_straight_planResponse(Record):
    """@brief Own all original xarm_planner/single_straight_planResponse fields.
    @details 1 ordered fields; 1..1 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original success: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('success',)
    SCHEMA = {'symbol': 'Ros1Xarm_plannerSingle_straight_planResponse',
     'type': 'xarm_planner/single_straight_planResponse',
     'ros_version': 1,
     'native_type': 'xarm_planner/single_straight_planResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_91dfc3564ce446deb95d1e7a9d080b597b426a13c16f0af6d0452af21c3697dd',
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

REGISTRY.add(Ros1Xarm_plannerSingle_straight_planResponse)
