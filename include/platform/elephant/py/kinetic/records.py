"""@file records.py
@brief Complete original vendor values and canonical codecs.
@details Owned fields preserve widths, quotas and defaults. Native identity remains unbound.
No constructor or codec opens a ROS resource or grants a capability.
"""
from ros.py.wire import Record, Registry

REGISTRY = Registry()


class Ros1Mycobot_communicationMycobotAngles(Record):
    """@brief Own all original mycobot_communication/MycobotAngles fields.
    @details 6 ordered fields; 24..24 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original joint_1: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original joint_2: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original joint_3: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original joint_4: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original joint_5: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original joint_6: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('joint_1', 'joint_2', 'joint_3', 'joint_4', 'joint_5', 'joint_6')
    SCHEMA = {'symbol': 'Ros1Mycobot_communicationMycobotAngles',
     'type': 'mycobot_communication/MycobotAngles',
     'ros_version': 1,
     'native_type': 'mycobot_communication/MycobotAngles',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_4cbda93a13d78e9c592327caa737dfecf33adf6db898015afd56ecf7732f9aa6',
     'minimum': 24,
     'maximum': 24,
     'semantics': '',
     'fields': [{'name': 'joint_1',
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
                {'name': 'joint_2',
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
                {'name': 'joint_3',
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
                {'name': 'joint_4',
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
                {'name': 'joint_5',
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
                {'name': 'joint_6',
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

REGISTRY.add(Ros1Mycobot_communicationMycobotAngles)

class Ros1Mycobot_communicationMycobotCoords(Record):
    """@brief Own all original mycobot_communication/MycobotCoords fields.
    @details 6 ordered fields; 24..24 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original x: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original y: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original z: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original rx: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original ry: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original rz: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('x', 'y', 'z', 'rx', 'ry', 'rz')
    SCHEMA = {'symbol': 'Ros1Mycobot_communicationMycobotCoords',
     'type': 'mycobot_communication/MycobotCoords',
     'ros_version': 1,
     'native_type': 'mycobot_communication/MycobotCoords',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_1da0d6342a1f4079244a65ad413d4559047d33b049ce9da04f8ab0bd226410a2',
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
                {'name': 'rx',
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
                {'name': 'ry',
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
                {'name': 'rz',
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

REGISTRY.add(Ros1Mycobot_communicationMycobotCoords)

class Ros1Mycobot_communicationMycobotGripperStatus(Record):
    """@brief Own all original mycobot_communication/MycobotGripperStatus fields.
    @details 1 ordered fields; 1..1 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original Status: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('Status',)
    SCHEMA = {'symbol': 'Ros1Mycobot_communicationMycobotGripperStatus',
     'type': 'mycobot_communication/MycobotGripperStatus',
     'ros_version': 1,
     'native_type': 'mycobot_communication/MycobotGripperStatus',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_65edcc278c4e21355c62408ff310598b3dbdf03ed426e3da0f2ee0bc6910e649',
     'minimum': 1,
     'maximum': 1,
     'semantics': '',
     'fields': [{'name': 'Status',
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

REGISTRY.add(Ros1Mycobot_communicationMycobotGripperStatus)

class Ros1Mycobot_communicationMycobotPumpStatus(Record):
    """@brief Own all original mycobot_communication/MycobotPumpStatus fields.
    @details 3 ordered fields; 3..3 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original Status: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original Pin1: int8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original Pin2: int8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('Status', 'Pin1', 'Pin2')
    SCHEMA = {'symbol': 'Ros1Mycobot_communicationMycobotPumpStatus',
     'type': 'mycobot_communication/MycobotPumpStatus',
     'ros_version': 1,
     'native_type': 'mycobot_communication/MycobotPumpStatus',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_0c0cb3c0fe97b9f9c65769a09f505ff6c27a60723598d656cd5f16255f36bfbd',
     'minimum': 3,
     'maximum': 3,
     'semantics': '',
     'fields': [{'name': 'Status',
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
                {'name': 'Pin1',
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
                {'name': 'Pin2',
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
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros1Mycobot_communicationMycobotPumpStatus)

class Ros1Mycobot_communicationMycobotSetAngles(Record):
    """@brief Own all original mycobot_communication/MycobotSetAngles fields.
    @details 7 ordered fields; 25..25 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original joint_1: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original joint_2: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original joint_3: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original joint_4: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original joint_5: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original joint_6: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original speed: int8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('joint_1', 'joint_2', 'joint_3', 'joint_4', 'joint_5', 'joint_6', 'speed')
    SCHEMA = {'symbol': 'Ros1Mycobot_communicationMycobotSetAngles',
     'type': 'mycobot_communication/MycobotSetAngles',
     'ros_version': 1,
     'native_type': 'mycobot_communication/MycobotSetAngles',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_0844a6cf5033b27ad5062741c939a7cfff63edeba34f7e56c8178e1fab85b334',
     'minimum': 25,
     'maximum': 25,
     'semantics': '',
     'fields': [{'name': 'joint_1',
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
                {'name': 'joint_2',
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
                {'name': 'joint_3',
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
                {'name': 'joint_4',
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
                {'name': 'joint_5',
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
                {'name': 'joint_6',
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
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros1Mycobot_communicationMycobotSetAngles)

class Ros1Mycobot_communicationMycobotSetCoords(Record):
    """@brief Own all original mycobot_communication/MycobotSetCoords fields.
    @details 8 ordered fields; 26..26 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original x: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original y: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original z: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original rx: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original ry: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original rz: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original speed: int8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original model: int8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('x', 'y', 'z', 'rx', 'ry', 'rz', 'speed', 'model')
    SCHEMA = {'symbol': 'Ros1Mycobot_communicationMycobotSetCoords',
     'type': 'mycobot_communication/MycobotSetCoords',
     'ros_version': 1,
     'native_type': 'mycobot_communication/MycobotSetCoords',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_39376ad94c0c9b213703a373b6a3b12fd0dad0ec20ff312143d30099842747a9',
     'minimum': 26,
     'maximum': 26,
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
                {'name': 'rx',
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
                {'name': 'ry',
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
                {'name': 'rz',
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
                {'name': 'model',
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
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros1Mycobot_communicationMycobotSetCoords)

class Ros1Mycobot_communicationGetAnglesRequest(Record):
    """@brief Own all original mycobot_communication/GetAnglesRequest fields.
    @details 0 ordered fields; 0..0 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    __slots__ = ()
    SCHEMA = {'symbol': 'Ros1Mycobot_communicationGetAnglesRequest',
     'type': 'mycobot_communication/GetAnglesRequest',
     'ros_version': 1,
     'native_type': 'mycobot_communication/GetAnglesRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_8915949f81b788e5797f3bc4935e33e9e9eae82c5db3a1211129e7ef03cd2c54',
     'minimum': 0,
     'maximum': 0,
     'semantics': '',
     'fields': [],
     'constants': {}}

REGISTRY.add(Ros1Mycobot_communicationGetAnglesRequest)

class Ros1Mycobot_communicationGetAnglesResponse(Record):
    """@brief Own all original mycobot_communication/GetAnglesResponse fields.
    @details 6 ordered fields; 24..24 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original joint_1: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original joint_2: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original joint_3: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original joint_4: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original joint_5: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original joint_6: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('joint_1', 'joint_2', 'joint_3', 'joint_4', 'joint_5', 'joint_6')
    SCHEMA = {'symbol': 'Ros1Mycobot_communicationGetAnglesResponse',
     'type': 'mycobot_communication/GetAnglesResponse',
     'ros_version': 1,
     'native_type': 'mycobot_communication/GetAnglesResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_482e6b845d6913ab7ea12580a395caf0a9815b56f985eb3a0553263fb7fd4ff3',
     'minimum': 24,
     'maximum': 24,
     'semantics': '',
     'fields': [{'name': 'joint_1',
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
                {'name': 'joint_2',
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
                {'name': 'joint_3',
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
                {'name': 'joint_4',
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
                {'name': 'joint_5',
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
                {'name': 'joint_6',
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

REGISTRY.add(Ros1Mycobot_communicationGetAnglesResponse)

class Ros1Mycobot_communicationGetCoordsRequest(Record):
    """@brief Own all original mycobot_communication/GetCoordsRequest fields.
    @details 0 ordered fields; 0..0 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    __slots__ = ()
    SCHEMA = {'symbol': 'Ros1Mycobot_communicationGetCoordsRequest',
     'type': 'mycobot_communication/GetCoordsRequest',
     'ros_version': 1,
     'native_type': 'mycobot_communication/GetCoordsRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_54acc83a24f2f62d8ba9c14b1cea1703cb6097360720550cc438671282d45876',
     'minimum': 0,
     'maximum': 0,
     'semantics': '',
     'fields': [],
     'constants': {}}

REGISTRY.add(Ros1Mycobot_communicationGetCoordsRequest)

class Ros1Mycobot_communicationGetCoordsResponse(Record):
    """@brief Own all original mycobot_communication/GetCoordsResponse fields.
    @details 6 ordered fields; 24..24 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original x: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original y: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original z: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original rx: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original ry: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original rz: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('x', 'y', 'z', 'rx', 'ry', 'rz')
    SCHEMA = {'symbol': 'Ros1Mycobot_communicationGetCoordsResponse',
     'type': 'mycobot_communication/GetCoordsResponse',
     'ros_version': 1,
     'native_type': 'mycobot_communication/GetCoordsResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_275b9bec563bb8578112b3680400523000a08a8e194044164e5334336b73d107',
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
                {'name': 'rx',
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
                {'name': 'ry',
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
                {'name': 'rz',
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

REGISTRY.add(Ros1Mycobot_communicationGetCoordsResponse)

class Ros1Mycobot_communicationGripperStatusRequest(Record):
    """@brief Own all original mycobot_communication/GripperStatusRequest fields.
    @details 1 ordered fields; 1..1 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original Status: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('Status',)
    SCHEMA = {'symbol': 'Ros1Mycobot_communicationGripperStatusRequest',
     'type': 'mycobot_communication/GripperStatusRequest',
     'ros_version': 1,
     'native_type': 'mycobot_communication/GripperStatusRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_d2c94d1906d311981c72642d82bbea634cfed4eac8c0aef41219bf4f382d4585',
     'minimum': 1,
     'maximum': 1,
     'semantics': '',
     'fields': [{'name': 'Status',
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

REGISTRY.add(Ros1Mycobot_communicationGripperStatusRequest)

class Ros1Mycobot_communicationGripperStatusResponse(Record):
    """@brief Own all original mycobot_communication/GripperStatusResponse fields.
    @details 1 ordered fields; 1..1 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original Flag: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('Flag',)
    SCHEMA = {'symbol': 'Ros1Mycobot_communicationGripperStatusResponse',
     'type': 'mycobot_communication/GripperStatusResponse',
     'ros_version': 1,
     'native_type': 'mycobot_communication/GripperStatusResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_3a75c0d75882836971ed4c51e50c7b88778fcfeadf9b30df211d5055eb767664',
     'minimum': 1,
     'maximum': 1,
     'semantics': '',
     'fields': [{'name': 'Flag',
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

REGISTRY.add(Ros1Mycobot_communicationGripperStatusResponse)

class Ros1Mycobot_communicationPumpStatusRequest(Record):
    """@brief Own all original mycobot_communication/PumpStatusRequest fields.
    @details 3 ordered fields; 3..3 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original Status: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original Pin1: int8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original Pin2: int8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('Status', 'Pin1', 'Pin2')
    SCHEMA = {'symbol': 'Ros1Mycobot_communicationPumpStatusRequest',
     'type': 'mycobot_communication/PumpStatusRequest',
     'ros_version': 1,
     'native_type': 'mycobot_communication/PumpStatusRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_561f4bb1f74832111672bbfed1ef1266a91914fb1034437199f730f55324c65c',
     'minimum': 3,
     'maximum': 3,
     'semantics': '',
     'fields': [{'name': 'Status',
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
                {'name': 'Pin1',
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
                {'name': 'Pin2',
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
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros1Mycobot_communicationPumpStatusRequest)

class Ros1Mycobot_communicationPumpStatusResponse(Record):
    """@brief Own all original mycobot_communication/PumpStatusResponse fields.
    @details 1 ordered fields; 1..1 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original Flag: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('Flag',)
    SCHEMA = {'symbol': 'Ros1Mycobot_communicationPumpStatusResponse',
     'type': 'mycobot_communication/PumpStatusResponse',
     'ros_version': 1,
     'native_type': 'mycobot_communication/PumpStatusResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_b5a1672fe12d2e2131034bb6da8751130b64ef6d48ea48ac0a046c506da452dd',
     'minimum': 1,
     'maximum': 1,
     'semantics': '',
     'fields': [{'name': 'Flag',
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

REGISTRY.add(Ros1Mycobot_communicationPumpStatusResponse)

class Ros1Mycobot_communicationSetAnglesRequest(Record):
    """@brief Own all original mycobot_communication/SetAnglesRequest fields.
    @details 7 ordered fields; 25..25 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original joint_1: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original joint_2: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original joint_3: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original joint_4: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original joint_5: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original joint_6: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original speed: int8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('joint_1', 'joint_2', 'joint_3', 'joint_4', 'joint_5', 'joint_6', 'speed')
    SCHEMA = {'symbol': 'Ros1Mycobot_communicationSetAnglesRequest',
     'type': 'mycobot_communication/SetAnglesRequest',
     'ros_version': 1,
     'native_type': 'mycobot_communication/SetAnglesRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_10bcf04e47b743a985ffefc61dff4522f3718d2ac7170960c8ae6857aaa11cbd',
     'minimum': 25,
     'maximum': 25,
     'semantics': '',
     'fields': [{'name': 'joint_1',
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
                {'name': 'joint_2',
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
                {'name': 'joint_3',
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
                {'name': 'joint_4',
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
                {'name': 'joint_5',
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
                {'name': 'joint_6',
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
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros1Mycobot_communicationSetAnglesRequest)

class Ros1Mycobot_communicationSetAnglesResponse(Record):
    """@brief Own all original mycobot_communication/SetAnglesResponse fields.
    @details 1 ordered fields; 1..1 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original Flag: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('Flag',)
    SCHEMA = {'symbol': 'Ros1Mycobot_communicationSetAnglesResponse',
     'type': 'mycobot_communication/SetAnglesResponse',
     'ros_version': 1,
     'native_type': 'mycobot_communication/SetAnglesResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_d407051eb285975d89ad71f39aede021fb564aecca0e0744126c9a599fe396b2',
     'minimum': 1,
     'maximum': 1,
     'semantics': '',
     'fields': [{'name': 'Flag',
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

REGISTRY.add(Ros1Mycobot_communicationSetAnglesResponse)

class Ros1Mycobot_communicationSetCoordsRequest(Record):
    """@brief Own all original mycobot_communication/SetCoordsRequest fields.
    @details 8 ordered fields; 26..26 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original x: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original y: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original z: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original rx: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original ry: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original rz: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original speed: int8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original model: int8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('x', 'y', 'z', 'rx', 'ry', 'rz', 'speed', 'model')
    SCHEMA = {'symbol': 'Ros1Mycobot_communicationSetCoordsRequest',
     'type': 'mycobot_communication/SetCoordsRequest',
     'ros_version': 1,
     'native_type': 'mycobot_communication/SetCoordsRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_7a59a4e31eca60caea9f82142225c890a136c60a9e4c821e9463e89139945f7a',
     'minimum': 26,
     'maximum': 26,
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
                {'name': 'rx',
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
                {'name': 'ry',
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
                {'name': 'rz',
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
                {'name': 'model',
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
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros1Mycobot_communicationSetCoordsRequest)

class Ros1Mycobot_communicationSetCoordsResponse(Record):
    """@brief Own all original mycobot_communication/SetCoordsResponse fields.
    @details 1 ordered fields; 1..1 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original Flag: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('Flag',)
    SCHEMA = {'symbol': 'Ros1Mycobot_communicationSetCoordsResponse',
     'type': 'mycobot_communication/SetCoordsResponse',
     'ros_version': 1,
     'native_type': 'mycobot_communication/SetCoordsResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_1a936a95cb1bfd0a9158342618c40c587af58388abf3b679eb4bad2518aec6af',
     'minimum': 1,
     'maximum': 1,
     'semantics': '',
     'fields': [{'name': 'Flag',
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

REGISTRY.add(Ros1Mycobot_communicationSetCoordsResponse)

class Ros1Mypalletizer_communicationMypalAngles(Record):
    """@brief Own all original mypalletizer_communication/MypalAngles fields.
    @details 4 ordered fields; 16..16 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original joint_1: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original joint_2: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original joint_3: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original joint_4: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('joint_1', 'joint_2', 'joint_3', 'joint_4')
    SCHEMA = {'symbol': 'Ros1Mypalletizer_communicationMypalAngles',
     'type': 'mypalletizer_communication/MypalAngles',
     'ros_version': 1,
     'native_type': 'mypalletizer_communication/MypalAngles',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_1d45a33e05e948c1b58988c84afe359138c896119f82da0d737377f0272892d9',
     'minimum': 16,
     'maximum': 16,
     'semantics': '',
     'fields': [{'name': 'joint_1',
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
                {'name': 'joint_2',
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
                {'name': 'joint_3',
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
                {'name': 'joint_4',
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

REGISTRY.add(Ros1Mypalletizer_communicationMypalAngles)

class Ros1Mypalletizer_communicationMypalCoords(Record):
    """@brief Own all original mypalletizer_communication/MypalCoords fields.
    @details 4 ordered fields; 16..16 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original x: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original y: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original z: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original rx: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('x', 'y', 'z', 'rx')
    SCHEMA = {'symbol': 'Ros1Mypalletizer_communicationMypalCoords',
     'type': 'mypalletizer_communication/MypalCoords',
     'ros_version': 1,
     'native_type': 'mypalletizer_communication/MypalCoords',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_c542d1a1a71224901044bc38ca2934021d811417c7c6937ca194995f67e59b80',
     'minimum': 16,
     'maximum': 16,
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
                {'name': 'rx',
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

REGISTRY.add(Ros1Mypalletizer_communicationMypalCoords)

class Ros1Mypalletizer_communicationMypalGripperStatus(Record):
    """@brief Own all original mypalletizer_communication/MypalGripperStatus fields.
    @details 1 ordered fields; 1..1 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original Status: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('Status',)
    SCHEMA = {'symbol': 'Ros1Mypalletizer_communicationMypalGripperStatus',
     'type': 'mypalletizer_communication/MypalGripperStatus',
     'ros_version': 1,
     'native_type': 'mypalletizer_communication/MypalGripperStatus',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_e37f608d4499ab2ed49618fc244831d274fadb23bd408d42619e3f8409ad2ee6',
     'minimum': 1,
     'maximum': 1,
     'semantics': '',
     'fields': [{'name': 'Status',
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

REGISTRY.add(Ros1Mypalletizer_communicationMypalGripperStatus)

class Ros1Mypalletizer_communicationMypalPumpStatus(Record):
    """@brief Own all original mypalletizer_communication/MypalPumpStatus fields.
    @details 3 ordered fields; 3..3 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original Status: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original Pin1: int8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original Pin2: int8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('Status', 'Pin1', 'Pin2')
    SCHEMA = {'symbol': 'Ros1Mypalletizer_communicationMypalPumpStatus',
     'type': 'mypalletizer_communication/MypalPumpStatus',
     'ros_version': 1,
     'native_type': 'mypalletizer_communication/MypalPumpStatus',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_cdf79e610b5d49b7f73857e02c64688a71517f2fe8e3a96739b16a53ad4d0ebc',
     'minimum': 3,
     'maximum': 3,
     'semantics': '',
     'fields': [{'name': 'Status',
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
                {'name': 'Pin1',
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
                {'name': 'Pin2',
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
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros1Mypalletizer_communicationMypalPumpStatus)

class Ros1Mypalletizer_communicationMypalSetAngles(Record):
    """@brief Own all original mypalletizer_communication/MypalSetAngles fields.
    @details 5 ordered fields; 17..17 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original joint_1: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original joint_2: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original joint_3: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original joint_4: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original speed: int8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('joint_1', 'joint_2', 'joint_3', 'joint_4', 'speed')
    SCHEMA = {'symbol': 'Ros1Mypalletizer_communicationMypalSetAngles',
     'type': 'mypalletizer_communication/MypalSetAngles',
     'ros_version': 1,
     'native_type': 'mypalletizer_communication/MypalSetAngles',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_8d11ba2c705bd577a329a01d039b831162742efe790c93b6c2c2631699d04f98',
     'minimum': 17,
     'maximum': 17,
     'semantics': '',
     'fields': [{'name': 'joint_1',
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
                {'name': 'joint_2',
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
                {'name': 'joint_3',
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
                {'name': 'joint_4',
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
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros1Mypalletizer_communicationMypalSetAngles)

class Ros1Mypalletizer_communicationMypalSetCoords(Record):
    """@brief Own all original mypalletizer_communication/MypalSetCoords fields.
    @details 6 ordered fields; 18..18 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original x: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original y: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original z: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original rx: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original speed: int8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original model: int8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('x', 'y', 'z', 'rx', 'speed', 'model')
    SCHEMA = {'symbol': 'Ros1Mypalletizer_communicationMypalSetCoords',
     'type': 'mypalletizer_communication/MypalSetCoords',
     'ros_version': 1,
     'native_type': 'mypalletizer_communication/MypalSetCoords',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_51a2d485c8d2252f184eb27724e88c1ae06002d54454bd8ebf31962a79f7c448',
     'minimum': 18,
     'maximum': 18,
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
                {'name': 'rx',
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
                {'name': 'model',
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
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros1Mypalletizer_communicationMypalSetCoords)

class Ros1Mypalletizer_communicationGetAnglesRequest(Record):
    """@brief Own all original mypalletizer_communication/GetAnglesRequest fields.
    @details 0 ordered fields; 0..0 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    __slots__ = ()
    SCHEMA = {'symbol': 'Ros1Mypalletizer_communicationGetAnglesRequest',
     'type': 'mypalletizer_communication/GetAnglesRequest',
     'ros_version': 1,
     'native_type': 'mypalletizer_communication/GetAnglesRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_d0412d8ccc8f724f2a0660d20e24a39f6445f0cb433e775058b6b092fde65de8',
     'minimum': 0,
     'maximum': 0,
     'semantics': '',
     'fields': [],
     'constants': {}}

REGISTRY.add(Ros1Mypalletizer_communicationGetAnglesRequest)

class Ros1Mypalletizer_communicationGetAnglesResponse(Record):
    """@brief Own all original mypalletizer_communication/GetAnglesResponse fields.
    @details 4 ordered fields; 16..16 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original joint_1: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original joint_2: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original joint_3: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original joint_4: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('joint_1', 'joint_2', 'joint_3', 'joint_4')
    SCHEMA = {'symbol': 'Ros1Mypalletizer_communicationGetAnglesResponse',
     'type': 'mypalletizer_communication/GetAnglesResponse',
     'ros_version': 1,
     'native_type': 'mypalletizer_communication/GetAnglesResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_cb5a18aec2420c030d8193eb40d25691a2491b98606a7722156984e82f77f745',
     'minimum': 16,
     'maximum': 16,
     'semantics': '',
     'fields': [{'name': 'joint_1',
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
                {'name': 'joint_2',
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
                {'name': 'joint_3',
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
                {'name': 'joint_4',
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

REGISTRY.add(Ros1Mypalletizer_communicationGetAnglesResponse)

class Ros1Mypalletizer_communicationGetCoordsRequest(Record):
    """@brief Own all original mypalletizer_communication/GetCoordsRequest fields.
    @details 0 ordered fields; 0..0 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    __slots__ = ()
    SCHEMA = {'symbol': 'Ros1Mypalletizer_communicationGetCoordsRequest',
     'type': 'mypalletizer_communication/GetCoordsRequest',
     'ros_version': 1,
     'native_type': 'mypalletizer_communication/GetCoordsRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_47d45419f14ce576d9e8c2bb288c7b67bb161115e7b99a2c4752d09cbb8087b8',
     'minimum': 0,
     'maximum': 0,
     'semantics': '',
     'fields': [],
     'constants': {}}

REGISTRY.add(Ros1Mypalletizer_communicationGetCoordsRequest)

class Ros1Mypalletizer_communicationGetCoordsResponse(Record):
    """@brief Own all original mypalletizer_communication/GetCoordsResponse fields.
    @details 4 ordered fields; 16..16 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original x: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original y: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original z: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original rx: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('x', 'y', 'z', 'rx')
    SCHEMA = {'symbol': 'Ros1Mypalletizer_communicationGetCoordsResponse',
     'type': 'mypalletizer_communication/GetCoordsResponse',
     'ros_version': 1,
     'native_type': 'mypalletizer_communication/GetCoordsResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_7fdad367484b5f89c812c2513e99373844dcd160a115e326fb1c597f221b53fb',
     'minimum': 16,
     'maximum': 16,
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
                {'name': 'rx',
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

REGISTRY.add(Ros1Mypalletizer_communicationGetCoordsResponse)

class Ros1Mypalletizer_communicationGripperStatusRequest(Record):
    """@brief Own all original mypalletizer_communication/GripperStatusRequest fields.
    @details 1 ordered fields; 1..1 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original Status: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('Status',)
    SCHEMA = {'symbol': 'Ros1Mypalletizer_communicationGripperStatusRequest',
     'type': 'mypalletizer_communication/GripperStatusRequest',
     'ros_version': 1,
     'native_type': 'mypalletizer_communication/GripperStatusRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_48d661f8fd6adfcf1703123464fcfb9351f8f831c0779ffad103a63bcf7ea709',
     'minimum': 1,
     'maximum': 1,
     'semantics': '',
     'fields': [{'name': 'Status',
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

REGISTRY.add(Ros1Mypalletizer_communicationGripperStatusRequest)

class Ros1Mypalletizer_communicationGripperStatusResponse(Record):
    """@brief Own all original mypalletizer_communication/GripperStatusResponse fields.
    @details 1 ordered fields; 1..1 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original Flag: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('Flag',)
    SCHEMA = {'symbol': 'Ros1Mypalletizer_communicationGripperStatusResponse',
     'type': 'mypalletizer_communication/GripperStatusResponse',
     'ros_version': 1,
     'native_type': 'mypalletizer_communication/GripperStatusResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_00ab8ceb190b588a9420c2e044da64857cfdb76e709e40e57835ab5732074e2b',
     'minimum': 1,
     'maximum': 1,
     'semantics': '',
     'fields': [{'name': 'Flag',
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

REGISTRY.add(Ros1Mypalletizer_communicationGripperStatusResponse)

class Ros1Mypalletizer_communicationPumpStatusRequest(Record):
    """@brief Own all original mypalletizer_communication/PumpStatusRequest fields.
    @details 3 ordered fields; 3..3 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original Status: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original Pin1: int8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original Pin2: int8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('Status', 'Pin1', 'Pin2')
    SCHEMA = {'symbol': 'Ros1Mypalletizer_communicationPumpStatusRequest',
     'type': 'mypalletizer_communication/PumpStatusRequest',
     'ros_version': 1,
     'native_type': 'mypalletizer_communication/PumpStatusRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_6dd70636864c4450a066c1d75e67643331fac4c3e1625bce1b94c85ce7a35636',
     'minimum': 3,
     'maximum': 3,
     'semantics': '',
     'fields': [{'name': 'Status',
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
                {'name': 'Pin1',
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
                {'name': 'Pin2',
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
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros1Mypalletizer_communicationPumpStatusRequest)

class Ros1Mypalletizer_communicationPumpStatusResponse(Record):
    """@brief Own all original mypalletizer_communication/PumpStatusResponse fields.
    @details 1 ordered fields; 1..1 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original Flag: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('Flag',)
    SCHEMA = {'symbol': 'Ros1Mypalletizer_communicationPumpStatusResponse',
     'type': 'mypalletizer_communication/PumpStatusResponse',
     'ros_version': 1,
     'native_type': 'mypalletizer_communication/PumpStatusResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_c2503f89c84c49db8dab2ac9f847ba9d09434d366fd8916a7d5f30ea161bb4c5',
     'minimum': 1,
     'maximum': 1,
     'semantics': '',
     'fields': [{'name': 'Flag',
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

REGISTRY.add(Ros1Mypalletizer_communicationPumpStatusResponse)

class Ros1Mypalletizer_communicationSetAnglesRequest(Record):
    """@brief Own all original mypalletizer_communication/SetAnglesRequest fields.
    @details 5 ordered fields; 17..17 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original joint_1: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original joint_2: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original joint_3: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original joint_4: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original speed: int8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('joint_1', 'joint_2', 'joint_3', 'joint_4', 'speed')
    SCHEMA = {'symbol': 'Ros1Mypalletizer_communicationSetAnglesRequest',
     'type': 'mypalletizer_communication/SetAnglesRequest',
     'ros_version': 1,
     'native_type': 'mypalletizer_communication/SetAnglesRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_32072510c6deddb3f372b5f300068ea457916a4e0397b30951e421a1da641d5d',
     'minimum': 17,
     'maximum': 17,
     'semantics': '',
     'fields': [{'name': 'joint_1',
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
                {'name': 'joint_2',
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
                {'name': 'joint_3',
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
                {'name': 'joint_4',
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
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros1Mypalletizer_communicationSetAnglesRequest)

class Ros1Mypalletizer_communicationSetAnglesResponse(Record):
    """@brief Own all original mypalletizer_communication/SetAnglesResponse fields.
    @details 1 ordered fields; 1..1 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original Flag: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('Flag',)
    SCHEMA = {'symbol': 'Ros1Mypalletizer_communicationSetAnglesResponse',
     'type': 'mypalletizer_communication/SetAnglesResponse',
     'ros_version': 1,
     'native_type': 'mypalletizer_communication/SetAnglesResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_1472b47adc3171a9f1938e52bc937af6dd6bb720d33e163b70ae066a89a3211c',
     'minimum': 1,
     'maximum': 1,
     'semantics': '',
     'fields': [{'name': 'Flag',
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

REGISTRY.add(Ros1Mypalletizer_communicationSetAnglesResponse)

class Ros1Mypalletizer_communicationSetCoordsRequest(Record):
    """@brief Own all original mypalletizer_communication/SetCoordsRequest fields.
    @details 6 ordered fields; 18..18 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original x: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original y: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original z: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original rx: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original speed: int8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original model: int8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('x', 'y', 'z', 'rx', 'speed', 'model')
    SCHEMA = {'symbol': 'Ros1Mypalletizer_communicationSetCoordsRequest',
     'type': 'mypalletizer_communication/SetCoordsRequest',
     'ros_version': 1,
     'native_type': 'mypalletizer_communication/SetCoordsRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_2d608cac1a7129ca5cd68ff52170ed40258cb6d199f4842a268a1d7570f9bda1',
     'minimum': 18,
     'maximum': 18,
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
                {'name': 'rx',
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
                {'name': 'model',
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
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros1Mypalletizer_communicationSetCoordsRequest)

class Ros1Mypalletizer_communicationSetCoordsResponse(Record):
    """@brief Own all original mypalletizer_communication/SetCoordsResponse fields.
    @details 1 ordered fields; 1..1 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original Flag: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('Flag',)
    SCHEMA = {'symbol': 'Ros1Mypalletizer_communicationSetCoordsResponse',
     'type': 'mypalletizer_communication/SetCoordsResponse',
     'ros_version': 1,
     'native_type': 'mypalletizer_communication/SetCoordsResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_86900f8772e9609e1d2b882b6ab613ce9609be6c589e5b9574a57b8749231308',
     'minimum': 1,
     'maximum': 1,
     'semantics': '',
     'fields': [{'name': 'Flag',
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

REGISTRY.add(Ros1Mypalletizer_communicationSetCoordsResponse)
