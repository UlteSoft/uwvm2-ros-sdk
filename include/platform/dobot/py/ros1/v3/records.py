"""@file records.py
@brief Complete original vendor values and canonical codecs.
@details Owned fields preserve widths, quotas and defaults. Native identity remains unbound.
No constructor or codec opens a ROS resource or grants a capability.
"""
from ros.py.wire import Record, Registry

REGISTRY = Registry()


class Ros1Dobot_bringupRobotStatus(Record):
    """@brief Own all original dobot_bringup/RobotStatus fields.
    @details 2 ordered fields; 2..2 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original is_enable: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original is_connected: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('is_enable', 'is_connected')
    SCHEMA = {'symbol': 'Ros1Dobot_bringupRobotStatus',
     'type': 'dobot_bringup/RobotStatus',
     'ros_version': 1,
     'native_type': 'dobot_bringup/RobotStatus',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_0e0f4d360201791cc42ab0240d4497e5398d4f308db124d56a8fbf718a553d69',
     'minimum': 2,
     'maximum': 2,
     'semantics': '',
     'fields': [{'name': 'is_enable',
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
                {'name': 'is_connected',
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

REGISTRY.add(Ros1Dobot_bringupRobotStatus)

class Ros1Dobot_bringupToolVectorActual(Record):
    """@brief Own all original dobot_bringup/ToolVectorActual fields.
    @details 6 ordered fields; 48..48 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original x: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original y: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original z: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original rx: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original ry: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original rz: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('x', 'y', 'z', 'rx', 'ry', 'rz')
    SCHEMA = {'symbol': 'Ros1Dobot_bringupToolVectorActual',
     'type': 'dobot_bringup/ToolVectorActual',
     'ros_version': 1,
     'native_type': 'dobot_bringup/ToolVectorActual',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_0ed32143752c7d1cda739d6ab711f5b08bae8794a4de17f0dee7868a005513d0',
     'minimum': 48,
     'maximum': 48,
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
                {'name': 'rx',
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
                {'name': 'ry',
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
                {'name': 'rz',
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

REGISTRY.add(Ros1Dobot_bringupToolVectorActual)

class Ros1Dobot_bringupAIRequest(Record):
    """@brief Own all original dobot_bringup/AIRequest fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original index: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('index',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupAIRequest',
     'type': 'dobot_bringup/AIRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/AIRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_1572d590f41a0d6f05aa68153b045f434e6aef1033150732686784dbe21262c9',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'index',
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

REGISTRY.add(Ros1Dobot_bringupAIRequest)

class Ros1Dobot_bringupAIResponse(Record):
    """@brief Own all original dobot_bringup/AIResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupAIResponse',
     'type': 'dobot_bringup/AIResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/AIResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_486fdd9a49d80f9f4ba0b3db7f95c2bb68937f38f9426abe22c4bffe8db0db46',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupAIResponse)

class Ros1Dobot_bringupAORequest(Record):
    """@brief Own all original dobot_bringup/AORequest fields.
    @details 2 ordered fields; 8..8 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original index: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original status: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('index', 'status')
    SCHEMA = {'symbol': 'Ros1Dobot_bringupAORequest',
     'type': 'dobot_bringup/AORequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/AORequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_6797d5a3adbbe8a6ac7e5152fd73d67219e6615f75e18fd5db7fce9e8358aa22',
     'minimum': 8,
     'maximum': 8,
     'semantics': '',
     'fields': [{'name': 'index',
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
                {'name': 'status',
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

REGISTRY.add(Ros1Dobot_bringupAORequest)

class Ros1Dobot_bringupAOResponse(Record):
    """@brief Own all original dobot_bringup/AOResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupAOResponse',
     'type': 'dobot_bringup/AOResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/AOResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_3122150c18388d4b289f59639023bb27212e2948f9535118695a25f0b79000f6',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupAOResponse)

class Ros1Dobot_bringupAOExecuteRequest(Record):
    """@brief Own all original dobot_bringup/AOExecuteRequest fields.
    @details 2 ordered fields; 8..8 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original index: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original value: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('index', 'value')
    SCHEMA = {'symbol': 'Ros1Dobot_bringupAOExecuteRequest',
     'type': 'dobot_bringup/AOExecuteRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/AOExecuteRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_f70fe08e6be672788635df44d01ed0077112940783eca2a4a78969713c285e67',
     'minimum': 8,
     'maximum': 8,
     'semantics': '',
     'fields': [{'name': 'index',
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
                {'name': 'value',
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

REGISTRY.add(Ros1Dobot_bringupAOExecuteRequest)

class Ros1Dobot_bringupAOExecuteResponse(Record):
    """@brief Own all original dobot_bringup/AOExecuteResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupAOExecuteResponse',
     'type': 'dobot_bringup/AOExecuteResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/AOExecuteResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_8bf60f323e29bc412c07a6ba39cde403b25036ee7d64585ea3d2af45adcad2dc',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupAOExecuteResponse)

class Ros1Dobot_bringupAccJRequest(Record):
    """@brief Own all original dobot_bringup/AccJRequest fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original r: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('r',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupAccJRequest',
     'type': 'dobot_bringup/AccJRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/AccJRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_c89fb7653b967e0f03330123af09fd160c66fda96e68a581d1c6a3c53eeac8d7',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'r',
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

REGISTRY.add(Ros1Dobot_bringupAccJRequest)

class Ros1Dobot_bringupAccJResponse(Record):
    """@brief Own all original dobot_bringup/AccJResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupAccJResponse',
     'type': 'dobot_bringup/AccJResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/AccJResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_a90b5404c41ec9fc34a48af18f892bfc0ad74d63cbc74f4c80c25d53be89d045',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupAccJResponse)

class Ros1Dobot_bringupAccLRequest(Record):
    """@brief Own all original dobot_bringup/AccLRequest fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original r: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('r',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupAccLRequest',
     'type': 'dobot_bringup/AccLRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/AccLRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_e668d205c847dc78c096f98e55cf1be3672561cc801810bc3041a5cedaeb1202',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'r',
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

REGISTRY.add(Ros1Dobot_bringupAccLRequest)

class Ros1Dobot_bringupAccLResponse(Record):
    """@brief Own all original dobot_bringup/AccLResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupAccLResponse',
     'type': 'dobot_bringup/AccLResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/AccLResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_26854da8e7179bab20860844f9a6940853a0086d7585787662be01ab180adeec',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupAccLResponse)

class Ros1Dobot_bringupArcRequest(Record):
    """@brief Own all original dobot_bringup/ArcRequest fields.
    @details 13 ordered fields; 100..4260 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original x1: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original y1: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original z1: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original a1: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original b1: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original c1: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original x2: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original y2: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original z2: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original a2: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original b2: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original c2: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original paramValue: string, sequence.
    # @details Count/quota 16; string byte bound 256; caller owns storage.
    __slots__ = ('x1', 'y1', 'z1', 'a1', 'b1', 'c1', 'x2', 'y2', 'z2', 'a2', 'b2', 'c2', 'paramValue')
    SCHEMA = {'symbol': 'Ros1Dobot_bringupArcRequest',
     'type': 'dobot_bringup/ArcRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/ArcRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_de7367afbd65fe217782827576fe0c7b4ac23eb23a366c9a91b0274d62edf738',
     'minimum': 100,
     'maximum': 4260,
     'semantics': '',
     'fields': [{'name': 'x1',
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
                {'name': 'y1',
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
                {'name': 'z1',
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
                {'name': 'a1',
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
                {'name': 'b1',
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
                {'name': 'c1',
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
                {'name': 'x2',
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
                {'name': 'y2',
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
                {'name': 'z2',
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
                {'name': 'a2',
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
                {'name': 'b2',
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
                {'name': 'c2',
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
                {'name': 'paramValue',
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
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros1Dobot_bringupArcRequest)

class Ros1Dobot_bringupArcResponse(Record):
    """@brief Own all original dobot_bringup/ArcResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupArcResponse',
     'type': 'dobot_bringup/ArcResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/ArcResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_e61e8ccdcf767e9ed9da3a659758d19272b01ba08f41e13cdd02b7f238365f79',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupArcResponse)

class Ros1Dobot_bringupArchRequest(Record):
    """@brief Own all original dobot_bringup/ArchRequest fields.
    @details 2 ordered fields; 8..4168 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original index: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original cpValue: string, sequence.
    # @details Count/quota 16; string byte bound 256; caller owns storage.
    __slots__ = ('index', 'cpValue')
    SCHEMA = {'symbol': 'Ros1Dobot_bringupArchRequest',
     'type': 'dobot_bringup/ArchRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/ArchRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_41a296f5b8470085d39eade8d524d7caa94b030090a7ec2121c6ddff2aa1374e',
     'minimum': 8,
     'maximum': 4168,
     'semantics': '',
     'fields': [{'name': 'index',
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
                {'name': 'cpValue',
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
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros1Dobot_bringupArchRequest)

class Ros1Dobot_bringupArchResponse(Record):
    """@brief Own all original dobot_bringup/ArchResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupArchResponse',
     'type': 'dobot_bringup/ArchResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/ArchResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_99b4e526921fef5113b08649372a843d360fee84e87f3d8631af5c0d6e837977',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupArchResponse)

class Ros1Dobot_bringupBrakeControlRequest(Record):
    """@brief Own all original dobot_bringup/BrakeControlRequest fields.
    @details 2 ordered fields; 8..8 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original axisID: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original value: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('axisID', 'value')
    SCHEMA = {'symbol': 'Ros1Dobot_bringupBrakeControlRequest',
     'type': 'dobot_bringup/BrakeControlRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/BrakeControlRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_f0c49bbfa1f5a1c418222444fce2cdcf0855c2b6f3a17fd71641cd9cec03590b',
     'minimum': 8,
     'maximum': 8,
     'semantics': '',
     'fields': [{'name': 'axisID',
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
                {'name': 'value',
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

REGISTRY.add(Ros1Dobot_bringupBrakeControlRequest)

class Ros1Dobot_bringupBrakeControlResponse(Record):
    """@brief Own all original dobot_bringup/BrakeControlResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupBrakeControlResponse',
     'type': 'dobot_bringup/BrakeControlResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/BrakeControlResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_b6783d6553b1ccfc1581dbe55448dba21d8d0df6f0b91786d28e39d5a15635b0',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupBrakeControlResponse)

class Ros1Dobot_bringupCPRequest(Record):
    """@brief Own all original dobot_bringup/CPRequest fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original r: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('r',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupCPRequest',
     'type': 'dobot_bringup/CPRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/CPRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_6e8ebd37a19b8fdd242f684dfa008b80932ec3d760a3df958a108a6467e423e1',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'r',
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

REGISTRY.add(Ros1Dobot_bringupCPRequest)

class Ros1Dobot_bringupCPResponse(Record):
    """@brief Own all original dobot_bringup/CPResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupCPResponse',
     'type': 'dobot_bringup/CPResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/CPResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_05336cddc2a10a292d5950278941ad1642fb43d7689a6eb4ba60e0c2d9a23035',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupCPResponse)

class Ros1Dobot_bringupCircleRequest(Record):
    """@brief Own all original dobot_bringup/CircleRequest fields.
    @details 14 ordered fields; 104..4264 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original count: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original x1: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original y1: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original z1: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original a1: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original b1: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original c1: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original x2: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original y2: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original z2: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original a2: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original b2: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original c2: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original paramValue: string, sequence.
    # @details Count/quota 16; string byte bound 256; caller owns storage.
    __slots__ = ('count',
     'x1',
     'y1',
     'z1',
     'a1',
     'b1',
     'c1',
     'x2',
     'y2',
     'z2',
     'a2',
     'b2',
     'c2',
     'paramValue')
    SCHEMA = {'symbol': 'Ros1Dobot_bringupCircleRequest',
     'type': 'dobot_bringup/CircleRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/CircleRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_63de9534c40efc878aa4701ef01d7090ab3fd193b51b4d97fbd36e3c02d2ffea',
     'minimum': 104,
     'maximum': 4264,
     'semantics': '',
     'fields': [{'name': 'count',
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
                {'name': 'x1',
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
                {'name': 'y1',
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
                {'name': 'z1',
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
                {'name': 'a1',
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
                {'name': 'b1',
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
                {'name': 'c1',
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
                {'name': 'x2',
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
                {'name': 'y2',
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
                {'name': 'z2',
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
                {'name': 'a2',
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
                {'name': 'b2',
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
                {'name': 'c2',
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
                {'name': 'paramValue',
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
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros1Dobot_bringupCircleRequest)

class Ros1Dobot_bringupCircleResponse(Record):
    """@brief Own all original dobot_bringup/CircleResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupCircleResponse',
     'type': 'dobot_bringup/CircleResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/CircleResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_dcc76a49a34c2355dcda26824e9e524ee8a2bc5ff96c5c13749706396327cddb',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupCircleResponse)

class Ros1Dobot_bringupClearErrorRequest(Record):
    """@brief Own all original dobot_bringup/ClearErrorRequest fields.
    @details 0 ordered fields; 0..0 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    __slots__ = ()
    SCHEMA = {'symbol': 'Ros1Dobot_bringupClearErrorRequest',
     'type': 'dobot_bringup/ClearErrorRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/ClearErrorRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_5efd3497aa76e5b6777543f78b89e5b5917fd173819936c6f93fb2ce7de6e5e9',
     'minimum': 0,
     'maximum': 0,
     'semantics': '',
     'fields': [],
     'constants': {}}

REGISTRY.add(Ros1Dobot_bringupClearErrorRequest)

class Ros1Dobot_bringupClearErrorResponse(Record):
    """@brief Own all original dobot_bringup/ClearErrorResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupClearErrorResponse',
     'type': 'dobot_bringup/ClearErrorResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/ClearErrorResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_9d316550be928ba7da159505e55046aba2cb3f7951b88727b0900564f1a3de89',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupClearErrorResponse)

class Ros1Dobot_bringupContinueScriptRequest(Record):
    """@brief Own all original dobot_bringup/ContinueScriptRequest fields.
    @details 0 ordered fields; 0..0 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    __slots__ = ()
    SCHEMA = {'symbol': 'Ros1Dobot_bringupContinueScriptRequest',
     'type': 'dobot_bringup/ContinueScriptRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/ContinueScriptRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_94437c065c6198d333700a16b3bdaa1cfa1ad42043e579540ed8b9fb65be7132',
     'minimum': 0,
     'maximum': 0,
     'semantics': '',
     'fields': [],
     'constants': {}}

REGISTRY.add(Ros1Dobot_bringupContinueScriptRequest)

class Ros1Dobot_bringupContinueScriptResponse(Record):
    """@brief Own all original dobot_bringup/ContinueScriptResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupContinueScriptResponse',
     'type': 'dobot_bringup/ContinueScriptResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/ContinueScriptResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_e24a269f34aca468ea7b91d7320f79052928a9c129a64a2603aba21ed8e802b5',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupContinueScriptResponse)

class Ros1Dobot_bringupContinuesRequest(Record):
    """@brief Own all original dobot_bringup/ContinuesRequest fields.
    @details 0 ordered fields; 0..0 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    __slots__ = ()
    SCHEMA = {'symbol': 'Ros1Dobot_bringupContinuesRequest',
     'type': 'dobot_bringup/ContinuesRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/ContinuesRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_36b892c0c9d45b816ca840ed228040d79ccc391c28fb99f593643d9b50c3b2b0',
     'minimum': 0,
     'maximum': 0,
     'semantics': '',
     'fields': [],
     'constants': {}}

REGISTRY.add(Ros1Dobot_bringupContinuesRequest)

class Ros1Dobot_bringupContinuesResponse(Record):
    """@brief Own all original dobot_bringup/ContinuesResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupContinuesResponse',
     'type': 'dobot_bringup/ContinuesResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/ContinuesResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_04e387a52444077a9b0a96653934c64f0ff576cd374928c8246de4add006615a',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupContinuesResponse)

class Ros1Dobot_bringupDIRequest(Record):
    """@brief Own all original dobot_bringup/DIRequest fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original index: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('index',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupDIRequest',
     'type': 'dobot_bringup/DIRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/DIRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_cf02229580f51ef51f0feb0a773e01691235810dabfc93d07ca52e83a2fbf894',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'index',
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

REGISTRY.add(Ros1Dobot_bringupDIRequest)

class Ros1Dobot_bringupDIResponse(Record):
    """@brief Own all original dobot_bringup/DIResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupDIResponse',
     'type': 'dobot_bringup/DIResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/DIResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_2015cdb56d2e1cd584ceb18b79925109e77e3483cb07403339805605bac24eca',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupDIResponse)

class Ros1Dobot_bringupDIGroupRequest(Record):
    """@brief Own all original dobot_bringup/DIGroupRequest fields.
    @details 1 ordered fields; 4..68 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original args: int32, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    __slots__ = ('args',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupDIGroupRequest',
     'type': 'dobot_bringup/DIGroupRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/DIGroupRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_f1eb7407b550066a63a3bb7f53e2b1dffaa20e587e62b926f06648224aa8836e',
     'minimum': 4,
     'maximum': 68,
     'semantics': '',
     'fields': [{'name': 'args',
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

REGISTRY.add(Ros1Dobot_bringupDIGroupRequest)

class Ros1Dobot_bringupDIGroupResponse(Record):
    """@brief Own all original dobot_bringup/DIGroupResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupDIGroupResponse',
     'type': 'dobot_bringup/DIGroupResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/DIGroupResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_0a12d3d2a105be4a1fafe9698974f03731d3bc14f77b390e124da5c8cc747b1f',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupDIGroupResponse)

class Ros1Dobot_bringupDORequest(Record):
    """@brief Own all original dobot_bringup/DORequest fields.
    @details 2 ordered fields; 8..8 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original index: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original status: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('index', 'status')
    SCHEMA = {'symbol': 'Ros1Dobot_bringupDORequest',
     'type': 'dobot_bringup/DORequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/DORequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_1ef488f375efc4acf7521f80910b3714cfecd30f3c111a12bf2d1e4d2e0aed7c',
     'minimum': 8,
     'maximum': 8,
     'semantics': '',
     'fields': [{'name': 'index',
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
                {'name': 'status',
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

REGISTRY.add(Ros1Dobot_bringupDORequest)

class Ros1Dobot_bringupDOResponse(Record):
    """@brief Own all original dobot_bringup/DOResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupDOResponse',
     'type': 'dobot_bringup/DOResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/DOResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_05a1b8731cea3139845450022d18a75b530a876b60523005433a8136cc2bef34',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupDOResponse)

class Ros1Dobot_bringupDOExecuteRequest(Record):
    """@brief Own all original dobot_bringup/DOExecuteRequest fields.
    @details 2 ordered fields; 8..8 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original index: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original status: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('index', 'status')
    SCHEMA = {'symbol': 'Ros1Dobot_bringupDOExecuteRequest',
     'type': 'dobot_bringup/DOExecuteRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/DOExecuteRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_57da630cf5f390ee9d68d57c7a8767e3762f5814ab659706063872a1e220d606',
     'minimum': 8,
     'maximum': 8,
     'semantics': '',
     'fields': [{'name': 'index',
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
                {'name': 'status',
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

REGISTRY.add(Ros1Dobot_bringupDOExecuteRequest)

class Ros1Dobot_bringupDOExecuteResponse(Record):
    """@brief Own all original dobot_bringup/DOExecuteResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupDOExecuteResponse',
     'type': 'dobot_bringup/DOExecuteResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/DOExecuteResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_90acf95e87ddb0797525c1726315fd10447e42b36710497f9f4642f84c166fe6',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupDOExecuteResponse)

class Ros1Dobot_bringupDOGroupRequest(Record):
    """@brief Own all original dobot_bringup/DOGroupRequest fields.
    @details 1 ordered fields; 4..68 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original args: int32, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    __slots__ = ('args',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupDOGroupRequest',
     'type': 'dobot_bringup/DOGroupRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/DOGroupRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_05604172b0bd8330bee9236bf629815b1a6cc9ac39b1a3374fcd753b6686b8f0',
     'minimum': 4,
     'maximum': 68,
     'semantics': '',
     'fields': [{'name': 'args',
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

REGISTRY.add(Ros1Dobot_bringupDOGroupRequest)

class Ros1Dobot_bringupDOGroupResponse(Record):
    """@brief Own all original dobot_bringup/DOGroupResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupDOGroupResponse',
     'type': 'dobot_bringup/DOGroupResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/DOGroupResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_99217a3263538d28cc5d7335906bdfaec128df8b3cfde6c3dbf1962320bcb00a',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupDOGroupResponse)

class Ros1Dobot_bringupDigitalOutputsRequest(Record):
    """@brief Own all original dobot_bringup/DigitalOutputsRequest fields.
    @details 2 ordered fields; 5..5 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original index: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original status: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('index', 'status')
    SCHEMA = {'symbol': 'Ros1Dobot_bringupDigitalOutputsRequest',
     'type': 'dobot_bringup/DigitalOutputsRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/DigitalOutputsRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_940ad8d824ad890e4f33a9acf1871d26266dc65e5ae0263e761990a55507d97f',
     'minimum': 5,
     'maximum': 5,
     'semantics': '',
     'fields': [{'name': 'index',
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
                {'name': 'status',
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

REGISTRY.add(Ros1Dobot_bringupDigitalOutputsRequest)

class Ros1Dobot_bringupDigitalOutputsResponse(Record):
    """@brief Own all original dobot_bringup/DigitalOutputsResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupDigitalOutputsResponse',
     'type': 'dobot_bringup/DigitalOutputsResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/DigitalOutputsResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_99e07211731bb0811c9a9c53fc18593839a0d413180d37ffbf33fd4c25cb1cf8',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupDigitalOutputsResponse)

class Ros1Dobot_bringupDisableRobotRequest(Record):
    """@brief Own all original dobot_bringup/DisableRobotRequest fields.
    @details 0 ordered fields; 0..0 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    __slots__ = ()
    SCHEMA = {'symbol': 'Ros1Dobot_bringupDisableRobotRequest',
     'type': 'dobot_bringup/DisableRobotRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/DisableRobotRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_f4ac3135f9e5b6c9a38ffc8fab4a747e4cb77fb47d4a8c35c08fb9dd1622add4',
     'minimum': 0,
     'maximum': 0,
     'semantics': '',
     'fields': [],
     'constants': {}}

REGISTRY.add(Ros1Dobot_bringupDisableRobotRequest)

class Ros1Dobot_bringupDisableRobotResponse(Record):
    """@brief Own all original dobot_bringup/DisableRobotResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupDisableRobotResponse',
     'type': 'dobot_bringup/DisableRobotResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/DisableRobotResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_f21d2305cee15f4a09dddbb1224defc53541b14df7a81b8be011b9b8dd581c3d',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupDisableRobotResponse)

class Ros1Dobot_bringupEmergencyStopRequest(Record):
    """@brief Own all original dobot_bringup/EmergencyStopRequest fields.
    @details 0 ordered fields; 0..0 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    __slots__ = ()
    SCHEMA = {'symbol': 'Ros1Dobot_bringupEmergencyStopRequest',
     'type': 'dobot_bringup/EmergencyStopRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/EmergencyStopRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_b0f6de6358491a4d2651d2c3965faea793c2ab4fb09a237b31b22cd0b904ac6b',
     'minimum': 0,
     'maximum': 0,
     'semantics': '',
     'fields': [],
     'constants': {}}

REGISTRY.add(Ros1Dobot_bringupEmergencyStopRequest)

class Ros1Dobot_bringupEmergencyStopResponse(Record):
    """@brief Own all original dobot_bringup/EmergencyStopResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupEmergencyStopResponse',
     'type': 'dobot_bringup/EmergencyStopResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/EmergencyStopResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_734c45ffac6db73610807063dc89a50da8f35b061819e82e77fb51ee079ec929',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupEmergencyStopResponse)

class Ros1Dobot_bringupEnableRobotRequest(Record):
    """@brief Own all original dobot_bringup/EnableRobotRequest fields.
    @details 1 ordered fields; 4..132 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original args: float64, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    __slots__ = ('args',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupEnableRobotRequest',
     'type': 'dobot_bringup/EnableRobotRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/EnableRobotRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_25d27ffd5d67239f85e389e4e0af813b25e69508542d83f6cf218f09010050d4',
     'minimum': 4,
     'maximum': 132,
     'semantics': '',
     'fields': [{'name': 'args',
                 'type': 'float64',
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

REGISTRY.add(Ros1Dobot_bringupEnableRobotRequest)

class Ros1Dobot_bringupEnableRobotResponse(Record):
    """@brief Own all original dobot_bringup/EnableRobotResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupEnableRobotResponse',
     'type': 'dobot_bringup/EnableRobotResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/EnableRobotResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_c8f6c4992040b09f377700199904fabb54072d64f267e0ba3084328aa7e5de27',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupEnableRobotResponse)

class Ros1Dobot_bringupGetAngleRequest(Record):
    """@brief Own all original dobot_bringup/GetAngleRequest fields.
    @details 0 ordered fields; 0..0 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    __slots__ = ()
    SCHEMA = {'symbol': 'Ros1Dobot_bringupGetAngleRequest',
     'type': 'dobot_bringup/GetAngleRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/GetAngleRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_2546617abf6527da804ece97d489c1d2b15f3f804076f0978ca035000cb36f85',
     'minimum': 0,
     'maximum': 0,
     'semantics': '',
     'fields': [],
     'constants': {}}

REGISTRY.add(Ros1Dobot_bringupGetAngleRequest)

class Ros1Dobot_bringupGetAngleResponse(Record):
    """@brief Own all original dobot_bringup/GetAngleResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupGetAngleResponse',
     'type': 'dobot_bringup/GetAngleResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/GetAngleResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_84a2bdf2c23770ca10b62372141a6000b73ae8a2d644b576a06fd7e77293035c',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupGetAngleResponse)

class Ros1Dobot_bringupGetCoilsRequest(Record):
    """@brief Own all original dobot_bringup/GetCoilsRequest fields.
    @details 3 ordered fields; 12..12 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original index: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original addr: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original count: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('index', 'addr', 'count')
    SCHEMA = {'symbol': 'Ros1Dobot_bringupGetCoilsRequest',
     'type': 'dobot_bringup/GetCoilsRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/GetCoilsRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_35b261250758e2990bfff2b3a4a3e96c320f77db155b94ea4ea8042b0682ff2e',
     'minimum': 12,
     'maximum': 12,
     'semantics': '',
     'fields': [{'name': 'index',
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
                {'name': 'addr',
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
                {'name': 'count',
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

REGISTRY.add(Ros1Dobot_bringupGetCoilsRequest)

class Ros1Dobot_bringupGetCoilsResponse(Record):
    """@brief Own all original dobot_bringup/GetCoilsResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupGetCoilsResponse',
     'type': 'dobot_bringup/GetCoilsResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/GetCoilsResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_cc0be6ab7b46ca1fbd08ca5d4fd75ee37a5b388b5aada2c9f6d2f15c8df13b79',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupGetCoilsResponse)

class Ros1Dobot_bringupGetErrorIDRequest(Record):
    """@brief Own all original dobot_bringup/GetErrorIDRequest fields.
    @details 0 ordered fields; 0..0 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    __slots__ = ()
    SCHEMA = {'symbol': 'Ros1Dobot_bringupGetErrorIDRequest',
     'type': 'dobot_bringup/GetErrorIDRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/GetErrorIDRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_d447f9b359f6546396b350d993222aeea1f928b390f7fcdf2c9d0f627d520976',
     'minimum': 0,
     'maximum': 0,
     'semantics': '',
     'fields': [],
     'constants': {}}

REGISTRY.add(Ros1Dobot_bringupGetErrorIDRequest)

class Ros1Dobot_bringupGetErrorIDResponse(Record):
    """@brief Own all original dobot_bringup/GetErrorIDResponse fields.
    @details 2 ordered fields; 8..72 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original errorID: int32, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    __slots__ = ('res', 'errorID')
    SCHEMA = {'symbol': 'Ros1Dobot_bringupGetErrorIDResponse',
     'type': 'dobot_bringup/GetErrorIDResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/GetErrorIDResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_7e6069235acae11eadfabed5fd9c9466c5ef27c0f174be883e842493d8c98f15',
     'minimum': 8,
     'maximum': 72,
     'semantics': '',
     'fields': [{'name': 'res',
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
                {'name': 'errorID',
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

REGISTRY.add(Ros1Dobot_bringupGetErrorIDResponse)

class Ros1Dobot_bringupGetHoldRegsRequest(Record):
    """@brief Own all original dobot_bringup/GetHoldRegsRequest fields.
    @details 4 ordered fields; 16..4176 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original index: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original addr: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original count: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original valtype: string, sequence.
    # @details Count/quota 16; string byte bound 256; caller owns storage.
    __slots__ = ('index', 'addr', 'count', 'valtype')
    SCHEMA = {'symbol': 'Ros1Dobot_bringupGetHoldRegsRequest',
     'type': 'dobot_bringup/GetHoldRegsRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/GetHoldRegsRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_800fdfa6b1489a629db168b04df13fd96bd3d8168f53b0810e0ef6f8d4e5e364',
     'minimum': 16,
     'maximum': 4176,
     'semantics': '',
     'fields': [{'name': 'index',
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
                {'name': 'addr',
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
                {'name': 'count',
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
                {'name': 'valtype',
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
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros1Dobot_bringupGetHoldRegsRequest)

class Ros1Dobot_bringupGetHoldRegsResponse(Record):
    """@brief Own all original dobot_bringup/GetHoldRegsResponse fields.
    @details 2 ordered fields; 8..8 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original index: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res', 'index')
    SCHEMA = {'symbol': 'Ros1Dobot_bringupGetHoldRegsResponse',
     'type': 'dobot_bringup/GetHoldRegsResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/GetHoldRegsResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_41d34618b03ef7e49ee5519d20050c667cf64e204ec8e4c4116b065f5b388301',
     'minimum': 8,
     'maximum': 8,
     'semantics': '',
     'fields': [{'name': 'res',
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
                {'name': 'index',
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

REGISTRY.add(Ros1Dobot_bringupGetHoldRegsResponse)

class Ros1Dobot_bringupGetInBitsRequest(Record):
    """@brief Own all original dobot_bringup/GetInBitsRequest fields.
    @details 3 ordered fields; 12..12 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original index: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original addr: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original count: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('index', 'addr', 'count')
    SCHEMA = {'symbol': 'Ros1Dobot_bringupGetInBitsRequest',
     'type': 'dobot_bringup/GetInBitsRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/GetInBitsRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_3bb7becca72d44ad566098fc6a76ff5fdef3f3c52ef278b38faf37c3be4d3ed2',
     'minimum': 12,
     'maximum': 12,
     'semantics': '',
     'fields': [{'name': 'index',
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
                {'name': 'addr',
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
                {'name': 'count',
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

REGISTRY.add(Ros1Dobot_bringupGetInBitsRequest)

class Ros1Dobot_bringupGetInBitsResponse(Record):
    """@brief Own all original dobot_bringup/GetInBitsResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupGetInBitsResponse',
     'type': 'dobot_bringup/GetInBitsResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/GetInBitsResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_acd9a1d0238985a87fac498e3f83535c64d6eff4b6e923896c9105d9d0c37bae',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupGetInBitsResponse)

class Ros1Dobot_bringupGetInRegsRequest(Record):
    """@brief Own all original dobot_bringup/GetInRegsRequest fields.
    @details 4 ordered fields; 16..4176 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original index: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original addr: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original count: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original valType: string, sequence.
    # @details Count/quota 16; string byte bound 256; caller owns storage.
    __slots__ = ('index', 'addr', 'count', 'valType')
    SCHEMA = {'symbol': 'Ros1Dobot_bringupGetInRegsRequest',
     'type': 'dobot_bringup/GetInRegsRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/GetInRegsRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_9bed4567aa6cdf6d02f1b4ed46378bceaa2ccc0c6699dee552de39ab6a6d924b',
     'minimum': 16,
     'maximum': 4176,
     'semantics': '',
     'fields': [{'name': 'index',
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
                {'name': 'addr',
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
                {'name': 'count',
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
                {'name': 'valType',
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
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros1Dobot_bringupGetInRegsRequest)

class Ros1Dobot_bringupGetInRegsResponse(Record):
    """@brief Own all original dobot_bringup/GetInRegsResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupGetInRegsResponse',
     'type': 'dobot_bringup/GetInRegsResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/GetInRegsResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_f7f69e7d7eef206ab1318296f737a3294aefb82a72078d6b45326171260e4bc2',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupGetInRegsResponse)

class Ros1Dobot_bringupGetPathStartPoseRequest(Record):
    """@brief Own all original dobot_bringup/GetPathStartPoseRequest fields.
    @details 1 ordered fields; 4..260 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original traceName: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    __slots__ = ('traceName',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupGetPathStartPoseRequest',
     'type': 'dobot_bringup/GetPathStartPoseRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/GetPathStartPoseRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_eeac1255138e30057687e050b574b0817d70b68d350bfe12b45d77cbff506363',
     'minimum': 4,
     'maximum': 260,
     'semantics': '',
     'fields': [{'name': 'traceName',
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

REGISTRY.add(Ros1Dobot_bringupGetPathStartPoseRequest)

class Ros1Dobot_bringupGetPathStartPoseResponse(Record):
    """@brief Own all original dobot_bringup/GetPathStartPoseResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupGetPathStartPoseResponse',
     'type': 'dobot_bringup/GetPathStartPoseResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/GetPathStartPoseResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_4b7d7f5af83e211f271d5ba502e38a6d8bd46fad22f8e8f130da274981a1a069',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupGetPathStartPoseResponse)

class Ros1Dobot_bringupGetPoseRequest(Record):
    """@brief Own all original dobot_bringup/GetPoseRequest fields.
    @details 2 ordered fields; 8..136 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original user: int32, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    # @brief Original tool: int32, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    __slots__ = ('user', 'tool')
    SCHEMA = {'symbol': 'Ros1Dobot_bringupGetPoseRequest',
     'type': 'dobot_bringup/GetPoseRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/GetPoseRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_025bce42be53ba183254bc0dc65439297c87f2a4fdc2fd861f3e2d642d1ec541',
     'minimum': 8,
     'maximum': 136,
     'semantics': '',
     'fields': [{'name': 'user',
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
                {'name': 'tool',
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

REGISTRY.add(Ros1Dobot_bringupGetPoseRequest)

class Ros1Dobot_bringupGetPoseResponse(Record):
    """@brief Own all original dobot_bringup/GetPoseResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupGetPoseResponse',
     'type': 'dobot_bringup/GetPoseResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/GetPoseResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_ddb44853f1e3b6f37e90c4d06d78c289c47188e9612f60226878ef38b55e2696',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupGetPoseResponse)

class Ros1Dobot_bringupGetSixForceDataRequest(Record):
    """@brief Own all original dobot_bringup/GetSixForceDataRequest fields.
    @details 0 ordered fields; 0..0 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    __slots__ = ()
    SCHEMA = {'symbol': 'Ros1Dobot_bringupGetSixForceDataRequest',
     'type': 'dobot_bringup/GetSixForceDataRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/GetSixForceDataRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_a1cb669ffeccea55f3d0d2598b166e3ac4317c4268b81c27a1e829b96f244298',
     'minimum': 0,
     'maximum': 0,
     'semantics': '',
     'fields': [],
     'constants': {}}

REGISTRY.add(Ros1Dobot_bringupGetSixForceDataRequest)

class Ros1Dobot_bringupGetSixForceDataResponse(Record):
    """@brief Own all original dobot_bringup/GetSixForceDataResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupGetSixForceDataResponse',
     'type': 'dobot_bringup/GetSixForceDataResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/GetSixForceDataResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_184411501d79e153e2634bbf7328f3fff02180078203d8b5bd5bd77d0fcb3b1d',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupGetSixForceDataResponse)

class Ros1Dobot_bringupGetTerminal485Request(Record):
    """@brief Own all original dobot_bringup/GetTerminal485Request fields.
    @details 0 ordered fields; 0..0 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    __slots__ = ()
    SCHEMA = {'symbol': 'Ros1Dobot_bringupGetTerminal485Request',
     'type': 'dobot_bringup/GetTerminal485Request',
     'ros_version': 1,
     'native_type': 'dobot_bringup/GetTerminal485Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_298f03b6d54aa27f605bf41a2dc9a7a8229fd0b692688da54eeec227afb712fd',
     'minimum': 0,
     'maximum': 0,
     'semantics': '',
     'fields': [],
     'constants': {}}

REGISTRY.add(Ros1Dobot_bringupGetTerminal485Request)

class Ros1Dobot_bringupGetTerminal485Response(Record):
    """@brief Own all original dobot_bringup/GetTerminal485Response fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupGetTerminal485Response',
     'type': 'dobot_bringup/GetTerminal485Response',
     'ros_version': 1,
     'native_type': 'dobot_bringup/GetTerminal485Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_4813a10a2f80aa614e4cda21b81002cbb8721804e07109ed209969945b702779',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupGetTerminal485Response)

class Ros1Dobot_bringupGetTraceStartPoseRequest(Record):
    """@brief Own all original dobot_bringup/GetTraceStartPoseRequest fields.
    @details 1 ordered fields; 4..260 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original traceName: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    __slots__ = ('traceName',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupGetTraceStartPoseRequest',
     'type': 'dobot_bringup/GetTraceStartPoseRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/GetTraceStartPoseRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_7a3e89eb5ade3cb2e2ea39e9f91b4e4e0ccf07405fdc3e2d59e7d57c2d9e7cb9',
     'minimum': 4,
     'maximum': 260,
     'semantics': '',
     'fields': [{'name': 'traceName',
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

REGISTRY.add(Ros1Dobot_bringupGetTraceStartPoseRequest)

class Ros1Dobot_bringupGetTraceStartPoseResponse(Record):
    """@brief Own all original dobot_bringup/GetTraceStartPoseResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupGetTraceStartPoseResponse',
     'type': 'dobot_bringup/GetTraceStartPoseResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/GetTraceStartPoseResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_ced9e3f9fccc6fc35ee90f70c4a3a40544136feefe21a513a244d8dc0aa04fcf',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupGetTraceStartPoseResponse)

class Ros1Dobot_bringupHandleTrajPointsRequest(Record):
    """@brief Own all original dobot_bringup/HandleTrajPointsRequest fields.
    @details 1 ordered fields; 4..260 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original traceName: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    __slots__ = ('traceName',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupHandleTrajPointsRequest',
     'type': 'dobot_bringup/HandleTrajPointsRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/HandleTrajPointsRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_2848aee3496e82c75a18c7c9dead4754d9bcfe5beb29311a1a09a3d9d83cf578',
     'minimum': 4,
     'maximum': 260,
     'semantics': '',
     'fields': [{'name': 'traceName',
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

REGISTRY.add(Ros1Dobot_bringupHandleTrajPointsRequest)

class Ros1Dobot_bringupHandleTrajPointsResponse(Record):
    """@brief Own all original dobot_bringup/HandleTrajPointsResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupHandleTrajPointsResponse',
     'type': 'dobot_bringup/HandleTrajPointsResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/HandleTrajPointsResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_45f7bf8391e5b54fce96fc80f93cf3aed773115cc14bb013fa5e3b8d43e7d05c',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupHandleTrajPointsResponse)

class Ros1Dobot_bringupInverseSolutionRequest(Record):
    """@brief Own all original dobot_bringup/InverseSolutionRequest fields.
    @details 10 ordered fields; 64..320 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original offset1: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original offset2: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original offset3: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original offset4: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original offset5: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original offset6: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original user: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original tool: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original isJointNear: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original JointNear: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    __slots__ = ('offset1',
     'offset2',
     'offset3',
     'offset4',
     'offset5',
     'offset6',
     'user',
     'tool',
     'isJointNear',
     'JointNear')
    SCHEMA = {'symbol': 'Ros1Dobot_bringupInverseSolutionRequest',
     'type': 'dobot_bringup/InverseSolutionRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/InverseSolutionRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_e8ec17af46a8beb1b8d825ce350560a00a2455ecbc7605917d62edcb51c5ed18',
     'minimum': 64,
     'maximum': 320,
     'semantics': '',
     'fields': [{'name': 'offset1',
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
                {'name': 'offset2',
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
                {'name': 'offset3',
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
                {'name': 'offset4',
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
                {'name': 'offset5',
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
                {'name': 'offset6',
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
                {'name': 'user',
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
                {'name': 'tool',
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
                {'name': 'isJointNear',
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
                {'name': 'JointNear',
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

REGISTRY.add(Ros1Dobot_bringupInverseSolutionRequest)

class Ros1Dobot_bringupInverseSolutionResponse(Record):
    """@brief Own all original dobot_bringup/InverseSolutionResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupInverseSolutionResponse',
     'type': 'dobot_bringup/InverseSolutionResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/InverseSolutionResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_10c5f17f9346659de18bbabbadbe455cfa729d74264004f0ebe6edc4dc30658f',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupInverseSolutionResponse)

class Ros1Dobot_bringupJointMovJRequest(Record):
    """@brief Own all original dobot_bringup/JointMovJRequest fields.
    @details 7 ordered fields; 52..4212 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original j1: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original j2: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original j3: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original j4: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original j5: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original j6: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original paramValue: string, sequence.
    # @details Count/quota 16; string byte bound 256; caller owns storage.
    __slots__ = ('j1', 'j2', 'j3', 'j4', 'j5', 'j6', 'paramValue')
    SCHEMA = {'symbol': 'Ros1Dobot_bringupJointMovJRequest',
     'type': 'dobot_bringup/JointMovJRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/JointMovJRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_2aada30efe661e8b57ecc0dedea12e5b30703530ad505b223bf9ab9c0763412c',
     'minimum': 52,
     'maximum': 4212,
     'semantics': '',
     'fields': [{'name': 'j1',
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
                {'name': 'j2',
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
                {'name': 'j3',
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
                {'name': 'j4',
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
                {'name': 'j5',
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
                {'name': 'j6',
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
                {'name': 'paramValue',
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
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros1Dobot_bringupJointMovJRequest)

class Ros1Dobot_bringupJointMovJResponse(Record):
    """@brief Own all original dobot_bringup/JointMovJResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupJointMovJResponse',
     'type': 'dobot_bringup/JointMovJResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/JointMovJResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_51b50f481a2eb220df2c3e04755fdc6bf5443d31b1225557747ca4f82d70166c',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupJointMovJResponse)

class Ros1Dobot_bringupJumpRequest(Record):
    """@brief Own all original dobot_bringup/JumpRequest fields.
    @details 6 ordered fields; 48..48 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original offset1: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original offset2: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original offset3: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original offset4: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original offset5: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original offset6: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('offset1', 'offset2', 'offset3', 'offset4', 'offset5', 'offset6')
    SCHEMA = {'symbol': 'Ros1Dobot_bringupJumpRequest',
     'type': 'dobot_bringup/JumpRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/JumpRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_a7c4f0702492f900e97e5aee203e294b9de7750846ecaf7973e1e86d494cec2b',
     'minimum': 48,
     'maximum': 48,
     'semantics': '',
     'fields': [{'name': 'offset1',
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
                {'name': 'offset2',
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
                {'name': 'offset3',
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
                {'name': 'offset4',
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
                {'name': 'offset5',
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
                {'name': 'offset6',
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

REGISTRY.add(Ros1Dobot_bringupJumpRequest)

class Ros1Dobot_bringupJumpResponse(Record):
    """@brief Own all original dobot_bringup/JumpResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupJumpResponse',
     'type': 'dobot_bringup/JumpResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/JumpResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_0e8b42ba83c27ba738767c6a3aff68636a8508efa21db63f32922bb50023f549',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupJumpResponse)

class Ros1Dobot_bringupLimZRequest(Record):
    """@brief Own all original dobot_bringup/LimZRequest fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original value: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('value',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupLimZRequest',
     'type': 'dobot_bringup/LimZRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/LimZRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_760f331cb5a4d17e32310035606466e7b04b628152017d57fc9f6dc77b38447f',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'value',
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

REGISTRY.add(Ros1Dobot_bringupLimZRequest)

class Ros1Dobot_bringupLimZResponse(Record):
    """@brief Own all original dobot_bringup/LimZResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupLimZResponse',
     'type': 'dobot_bringup/LimZResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/LimZResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_14a2dff05f9dca0f0933e9358cf155e71a5c2454d1e60f9ade481f784f9f126b',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupLimZResponse)

class Ros1Dobot_bringupLoadSwitchRequest(Record):
    """@brief Own all original dobot_bringup/LoadSwitchRequest fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original status: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('status',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupLoadSwitchRequest',
     'type': 'dobot_bringup/LoadSwitchRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/LoadSwitchRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_e28aad033d188565799b9b8cc00b2047d3e040e85d86b9d5bb8cfa44fb7d95ac',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'status',
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

REGISTRY.add(Ros1Dobot_bringupLoadSwitchRequest)

class Ros1Dobot_bringupLoadSwitchResponse(Record):
    """@brief Own all original dobot_bringup/LoadSwitchResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupLoadSwitchResponse',
     'type': 'dobot_bringup/LoadSwitchResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/LoadSwitchResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_6ee2761100a9f6763a906aaae51a6343c7f098d1f05c5b2afa32c6237c7e8cbe',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupLoadSwitchResponse)

class Ros1Dobot_bringupModbusCloseRequest(Record):
    """@brief Own all original dobot_bringup/ModbusCloseRequest fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original index: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('index',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupModbusCloseRequest',
     'type': 'dobot_bringup/ModbusCloseRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/ModbusCloseRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_e54128af606780d1408abafad70bb37fec4bf75313413b9d35098ecf32ead7fa',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'index',
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

REGISTRY.add(Ros1Dobot_bringupModbusCloseRequest)

class Ros1Dobot_bringupModbusCloseResponse(Record):
    """@brief Own all original dobot_bringup/ModbusCloseResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupModbusCloseResponse',
     'type': 'dobot_bringup/ModbusCloseResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/ModbusCloseResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_37372c64022657c99622a2e15fb8d05dbcf4b5d4d3def0b170842343c728b5c3',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupModbusCloseResponse)

class Ros1Dobot_bringupModbusCreateRequest(Record):
    """@brief Own all original dobot_bringup/ModbusCreateRequest fields.
    @details 4 ordered fields; 16..336 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original ip: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original port: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original slave_id: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original is_rtu: int32, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    __slots__ = ('ip', 'port', 'slave_id', 'is_rtu')
    SCHEMA = {'symbol': 'Ros1Dobot_bringupModbusCreateRequest',
     'type': 'dobot_bringup/ModbusCreateRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/ModbusCreateRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_fdbd5da898506935d31be593a4e3549a3c528c3d68ff29875d6f06b589790b2d',
     'minimum': 16,
     'maximum': 336,
     'semantics': '',
     'fields': [{'name': 'ip',
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
                {'name': 'slave_id',
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
                {'name': 'is_rtu',
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

REGISTRY.add(Ros1Dobot_bringupModbusCreateRequest)

class Ros1Dobot_bringupModbusCreateResponse(Record):
    """@brief Own all original dobot_bringup/ModbusCreateResponse fields.
    @details 2 ordered fields; 8..8 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original index: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res', 'index')
    SCHEMA = {'symbol': 'Ros1Dobot_bringupModbusCreateResponse',
     'type': 'dobot_bringup/ModbusCreateResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/ModbusCreateResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_91ce4a52e69ed27977f8edc3d2bab68ded6fae45074906e9232e042481ba417f',
     'minimum': 8,
     'maximum': 8,
     'semantics': '',
     'fields': [{'name': 'res',
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
                {'name': 'index',
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

REGISTRY.add(Ros1Dobot_bringupModbusCreateResponse)

class Ros1Dobot_bringupMovJRequest(Record):
    """@brief Own all original dobot_bringup/MovJRequest fields.
    @details 7 ordered fields; 52..4212 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original x: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original y: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original z: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original a: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original b: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original c: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original paramValue: string, sequence.
    # @details Count/quota 16; string byte bound 256; caller owns storage.
    __slots__ = ('x', 'y', 'z', 'a', 'b', 'c', 'paramValue')
    SCHEMA = {'symbol': 'Ros1Dobot_bringupMovJRequest',
     'type': 'dobot_bringup/MovJRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/MovJRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_d5eb13b367f355ac8368e61572da8b80eba62e5361f739a99ed62a4cd4a79f4e',
     'minimum': 52,
     'maximum': 4212,
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
                {'name': 'a',
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
                {'name': 'b',
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
                {'name': 'c',
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
                {'name': 'paramValue',
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
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros1Dobot_bringupMovJRequest)

class Ros1Dobot_bringupMovJResponse(Record):
    """@brief Own all original dobot_bringup/MovJResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupMovJResponse',
     'type': 'dobot_bringup/MovJResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/MovJResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_48c51c39fce08dcb92b28b150f546a488bbb228dcc3bced709dffe67155a5bdf',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupMovJResponse)

class Ros1Dobot_bringupMovJExtRequest(Record):
    """@brief Own all original dobot_bringup/MovJExtRequest fields.
    @details 2 ordered fields; 12..4172 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original offset: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original paramValue: string, sequence.
    # @details Count/quota 16; string byte bound 256; caller owns storage.
    __slots__ = ('offset', 'paramValue')
    SCHEMA = {'symbol': 'Ros1Dobot_bringupMovJExtRequest',
     'type': 'dobot_bringup/MovJExtRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/MovJExtRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_91fca59f884c1c4db96c4b39260de4b6655c1a506422dd42c6955c2bdf8dcca1',
     'minimum': 12,
     'maximum': 4172,
     'semantics': '',
     'fields': [{'name': 'offset',
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
                {'name': 'paramValue',
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
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros1Dobot_bringupMovJExtRequest)

class Ros1Dobot_bringupMovJExtResponse(Record):
    """@brief Own all original dobot_bringup/MovJExtResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupMovJExtResponse',
     'type': 'dobot_bringup/MovJExtResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/MovJExtResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_5e7863d2a76b91a515043a4c44d34753a25ed9f14e8d9e49ba223908dccf9f77',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupMovJExtResponse)

class Ros1Dobot_bringupMovJIORequest(Record):
    """@brief Own all original dobot_bringup/MovJIORequest fields.
    @details 7 ordered fields; 52..4212 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original x: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original y: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original z: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original rx: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original ry: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original rz: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original paramValue: string, sequence.
    # @details Count/quota 16; string byte bound 256; caller owns storage.
    __slots__ = ('x', 'y', 'z', 'rx', 'ry', 'rz', 'paramValue')
    SCHEMA = {'symbol': 'Ros1Dobot_bringupMovJIORequest',
     'type': 'dobot_bringup/MovJIORequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/MovJIORequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_1095eb0d3a8e2e3d8e75c13d00f96114e372ed87449772b1560b50015b6984dc',
     'minimum': 52,
     'maximum': 4212,
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
                {'name': 'rx',
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
                {'name': 'ry',
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
                {'name': 'rz',
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
                {'name': 'paramValue',
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
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros1Dobot_bringupMovJIORequest)

class Ros1Dobot_bringupMovJIOResponse(Record):
    """@brief Own all original dobot_bringup/MovJIOResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupMovJIOResponse',
     'type': 'dobot_bringup/MovJIOResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/MovJIOResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_a004faa73bc67c133087e14e11003d8fdb56f48c025c196986be3939719a5fca',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupMovJIOResponse)

class Ros1Dobot_bringupMovLRequest(Record):
    """@brief Own all original dobot_bringup/MovLRequest fields.
    @details 7 ordered fields; 52..4212 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original x: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original y: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original z: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original a: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original b: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original c: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original paramValue: string, sequence.
    # @details Count/quota 16; string byte bound 256; caller owns storage.
    __slots__ = ('x', 'y', 'z', 'a', 'b', 'c', 'paramValue')
    SCHEMA = {'symbol': 'Ros1Dobot_bringupMovLRequest',
     'type': 'dobot_bringup/MovLRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/MovLRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_fd3a6a1c387cdde2f2da8eb8cce8bf5ef7ac60b8a45cc4fa3a1e64f01ed52c2d',
     'minimum': 52,
     'maximum': 4212,
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
                {'name': 'a',
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
                {'name': 'b',
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
                {'name': 'c',
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
                {'name': 'paramValue',
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
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros1Dobot_bringupMovLRequest)

class Ros1Dobot_bringupMovLResponse(Record):
    """@brief Own all original dobot_bringup/MovLResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupMovLResponse',
     'type': 'dobot_bringup/MovLResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/MovLResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_362cd26155c97a3dad48da79b105272e3a54f22b1f50978ee4883f427986aad3',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupMovLResponse)

class Ros1Dobot_bringupMovLIORequest(Record):
    """@brief Own all original dobot_bringup/MovLIORequest fields.
    @details 7 ordered fields; 52..4212 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original x: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original y: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original z: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original rx: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original ry: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original rz: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original paramValue: string, sequence.
    # @details Count/quota 16; string byte bound 256; caller owns storage.
    __slots__ = ('x', 'y', 'z', 'rx', 'ry', 'rz', 'paramValue')
    SCHEMA = {'symbol': 'Ros1Dobot_bringupMovLIORequest',
     'type': 'dobot_bringup/MovLIORequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/MovLIORequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_f9dc72d4456c6c4febd922b41d8ed68b7d402741911abef356ee2de12e43e0bb',
     'minimum': 52,
     'maximum': 4212,
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
                {'name': 'rx',
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
                {'name': 'ry',
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
                {'name': 'rz',
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
                {'name': 'paramValue',
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
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros1Dobot_bringupMovLIORequest)

class Ros1Dobot_bringupMovLIOResponse(Record):
    """@brief Own all original dobot_bringup/MovLIOResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupMovLIOResponse',
     'type': 'dobot_bringup/MovLIOResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/MovLIOResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_433c70d71f2a6df46140ba0937a8de9d9e382cc86ca2db6a85ebed4d4476fc54',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupMovLIOResponse)

class Ros1Dobot_bringupMoveJogRequest(Record):
    """@brief Own all original dobot_bringup/MoveJogRequest fields.
    @details 2 ordered fields; 8..4424 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original axisID: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original paramValue: string, sequence.
    # @details Count/quota 16; string byte bound 256; caller owns storage.
    __slots__ = ('axisID', 'paramValue')
    SCHEMA = {'symbol': 'Ros1Dobot_bringupMoveJogRequest',
     'type': 'dobot_bringup/MoveJogRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/MoveJogRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_f6b61799b2b1a2925f9b3581c69acea68ab5bf8e7cb34040bbe899249571ecf6',
     'minimum': 8,
     'maximum': 4424,
     'semantics': '',
     'fields': [{'name': 'axisID',
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
                {'name': 'paramValue',
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
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros1Dobot_bringupMoveJogRequest)

class Ros1Dobot_bringupMoveJogResponse(Record):
    """@brief Own all original dobot_bringup/MoveJogResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupMoveJogResponse',
     'type': 'dobot_bringup/MoveJogResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/MoveJogResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_4b920c29d6e337fdf0c464c76e1d6a65d367f2ed89d20159c54a06b28721652c',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupMoveJogResponse)

class Ros1Dobot_bringupPauseScriptRequest(Record):
    """@brief Own all original dobot_bringup/PauseScriptRequest fields.
    @details 0 ordered fields; 0..0 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    __slots__ = ()
    SCHEMA = {'symbol': 'Ros1Dobot_bringupPauseScriptRequest',
     'type': 'dobot_bringup/PauseScriptRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/PauseScriptRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_0515897101fed91dc0d0be12c7e792478604c83e54e377568542944fa66d23b7',
     'minimum': 0,
     'maximum': 0,
     'semantics': '',
     'fields': [],
     'constants': {}}

REGISTRY.add(Ros1Dobot_bringupPauseScriptRequest)

class Ros1Dobot_bringupPauseScriptResponse(Record):
    """@brief Own all original dobot_bringup/PauseScriptResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupPauseScriptResponse',
     'type': 'dobot_bringup/PauseScriptResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/PauseScriptResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_2bee6a114025d88d91f794c68478a44bc2a20a3e65e9456eae75d39640cf32c0',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupPauseScriptResponse)

class Ros1Dobot_bringupPayLoadRequest(Record):
    """@brief Own all original dobot_bringup/PayLoadRequest fields.
    @details 2 ordered fields; 16..16 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original weight: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original inertia: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('weight', 'inertia')
    SCHEMA = {'symbol': 'Ros1Dobot_bringupPayLoadRequest',
     'type': 'dobot_bringup/PayLoadRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/PayLoadRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_535f1e2c2c83a98b3572649905c96964c7ebc4ac7458292c4209f974188f29fd',
     'minimum': 16,
     'maximum': 16,
     'semantics': '',
     'fields': [{'name': 'weight',
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
                {'name': 'inertia',
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

REGISTRY.add(Ros1Dobot_bringupPayLoadRequest)

class Ros1Dobot_bringupPayLoadResponse(Record):
    """@brief Own all original dobot_bringup/PayLoadResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupPayLoadResponse',
     'type': 'dobot_bringup/PayLoadResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/PayLoadResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_e1d1b56d5b9d2191cf344b2b7cf721fff6a4303ad3aa4901f5c091111ad63b71',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupPayLoadResponse)

class Ros1Dobot_bringupPositiveSolutionRequest(Record):
    """@brief Own all original dobot_bringup/PositiveSolutionRequest fields.
    @details 8 ordered fields; 56..56 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original offset1: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original offset2: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original offset3: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original offset4: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original offset5: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original offset6: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original user: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original tool: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('offset1', 'offset2', 'offset3', 'offset4', 'offset5', 'offset6', 'user', 'tool')
    SCHEMA = {'symbol': 'Ros1Dobot_bringupPositiveSolutionRequest',
     'type': 'dobot_bringup/PositiveSolutionRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/PositiveSolutionRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_c7f95fe8314cf60c3b9d9b3066c80a8da6070a7df2f31184d524344e8a9ac466',
     'minimum': 56,
     'maximum': 56,
     'semantics': '',
     'fields': [{'name': 'offset1',
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
                {'name': 'offset2',
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
                {'name': 'offset3',
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
                {'name': 'offset4',
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
                {'name': 'offset5',
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
                {'name': 'offset6',
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
                {'name': 'user',
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
                {'name': 'tool',
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

REGISTRY.add(Ros1Dobot_bringupPositiveSolutionRequest)

class Ros1Dobot_bringupPositiveSolutionResponse(Record):
    """@brief Own all original dobot_bringup/PositiveSolutionResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupPositiveSolutionResponse',
     'type': 'dobot_bringup/PositiveSolutionResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/PositiveSolutionResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_eec24219ce537eb24bd619942dd63c5f53a1afcf3aabeb10e508852aaf0ee535',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupPositiveSolutionResponse)

class Ros1Dobot_bringupPowerOnRequest(Record):
    """@brief Own all original dobot_bringup/PowerOnRequest fields.
    @details 0 ordered fields; 0..0 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    __slots__ = ()
    SCHEMA = {'symbol': 'Ros1Dobot_bringupPowerOnRequest',
     'type': 'dobot_bringup/PowerOnRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/PowerOnRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_b1b1a3b4bd2a39d5e4ae58a1b4327af7ea8033facbd728fdf967406396b1f0b7',
     'minimum': 0,
     'maximum': 0,
     'semantics': '',
     'fields': [],
     'constants': {}}

REGISTRY.add(Ros1Dobot_bringupPowerOnRequest)

class Ros1Dobot_bringupPowerOnResponse(Record):
    """@brief Own all original dobot_bringup/PowerOnResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupPowerOnResponse',
     'type': 'dobot_bringup/PowerOnResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/PowerOnResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_fbb473d54d04cc853b531daa9657018737874bff18de8b13637794fe178a9c88',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupPowerOnResponse)

class Ros1Dobot_bringupRelJointMovJRequest(Record):
    """@brief Own all original dobot_bringup/RelJointMovJRequest fields.
    @details 7 ordered fields; 52..4212 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original offset1: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original offset2: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original offset3: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original offset4: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original offset5: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original offset6: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original paramValue: string, sequence.
    # @details Count/quota 16; string byte bound 256; caller owns storage.
    __slots__ = ('offset1', 'offset2', 'offset3', 'offset4', 'offset5', 'offset6', 'paramValue')
    SCHEMA = {'symbol': 'Ros1Dobot_bringupRelJointMovJRequest',
     'type': 'dobot_bringup/RelJointMovJRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/RelJointMovJRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_99e2b4e1af44dfc16cd689b144ed6a49de27164cc9b00c0da3d73e9908d0e9e6',
     'minimum': 52,
     'maximum': 4212,
     'semantics': '',
     'fields': [{'name': 'offset1',
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
                {'name': 'offset2',
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
                {'name': 'offset3',
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
                {'name': 'offset4',
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
                {'name': 'offset5',
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
                {'name': 'offset6',
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
                {'name': 'paramValue',
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
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros1Dobot_bringupRelJointMovJRequest)

class Ros1Dobot_bringupRelJointMovJResponse(Record):
    """@brief Own all original dobot_bringup/RelJointMovJResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupRelJointMovJResponse',
     'type': 'dobot_bringup/RelJointMovJResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/RelJointMovJResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_744c38052c9d8d6027746967dcf8f1924344eeddd3287320237476ad27fd930d',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupRelJointMovJResponse)

class Ros1Dobot_bringupRelMovJRequest(Record):
    """@brief Own all original dobot_bringup/RelMovJRequest fields.
    @details 6 ordered fields; 48..48 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original offset1: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original offset2: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original offset3: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original offset4: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original offset5: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original offset6: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('offset1', 'offset2', 'offset3', 'offset4', 'offset5', 'offset6')
    SCHEMA = {'symbol': 'Ros1Dobot_bringupRelMovJRequest',
     'type': 'dobot_bringup/RelMovJRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/RelMovJRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_1947325988ffb928f24fa3a714e1becd9f1fbc5f66e7110179bda067b3ca4776',
     'minimum': 48,
     'maximum': 48,
     'semantics': '',
     'fields': [{'name': 'offset1',
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
                {'name': 'offset2',
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
                {'name': 'offset3',
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
                {'name': 'offset4',
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
                {'name': 'offset5',
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
                {'name': 'offset6',
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

REGISTRY.add(Ros1Dobot_bringupRelMovJRequest)

class Ros1Dobot_bringupRelMovJResponse(Record):
    """@brief Own all original dobot_bringup/RelMovJResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupRelMovJResponse',
     'type': 'dobot_bringup/RelMovJResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/RelMovJResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_eaa103b9f4c61702145d348c8763329deb4be9d0f010bf5cca0431d1d97ffea2',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupRelMovJResponse)

class Ros1Dobot_bringupRelMovJToolRequest(Record):
    """@brief Own all original dobot_bringup/RelMovJToolRequest fields.
    @details 8 ordered fields; 56..4216 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original x: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original y: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original z: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original rx: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original ry: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original rz: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original tool: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original paramValue: string, sequence.
    # @details Count/quota 16; string byte bound 256; caller owns storage.
    __slots__ = ('x', 'y', 'z', 'rx', 'ry', 'rz', 'tool', 'paramValue')
    SCHEMA = {'symbol': 'Ros1Dobot_bringupRelMovJToolRequest',
     'type': 'dobot_bringup/RelMovJToolRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/RelMovJToolRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_8ea1454d38ebe4cb9d30d018079ce142bbaa1010d2ea321763b37dc47db5d783',
     'minimum': 56,
     'maximum': 4216,
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
                {'name': 'rx',
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
                {'name': 'ry',
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
                {'name': 'rz',
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
                {'name': 'tool',
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
                {'name': 'paramValue',
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
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros1Dobot_bringupRelMovJToolRequest)

class Ros1Dobot_bringupRelMovJToolResponse(Record):
    """@brief Own all original dobot_bringup/RelMovJToolResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupRelMovJToolResponse',
     'type': 'dobot_bringup/RelMovJToolResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/RelMovJToolResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_9b9aa05571fab18d37f0fca3adef2497ee315e3a9c146878aaa7746eacf770d0',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupRelMovJToolResponse)

class Ros1Dobot_bringupRelMovJUserRequest(Record):
    """@brief Own all original dobot_bringup/RelMovJUserRequest fields.
    @details 8 ordered fields; 56..4216 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original x: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original y: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original z: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original rx: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original ry: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original rz: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original user: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original paramValue: string, sequence.
    # @details Count/quota 16; string byte bound 256; caller owns storage.
    __slots__ = ('x', 'y', 'z', 'rx', 'ry', 'rz', 'user', 'paramValue')
    SCHEMA = {'symbol': 'Ros1Dobot_bringupRelMovJUserRequest',
     'type': 'dobot_bringup/RelMovJUserRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/RelMovJUserRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_e6780787473801ef6ae69c160e9df61c9bf10941a47dd9c102e2c7003ca14f63',
     'minimum': 56,
     'maximum': 4216,
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
                {'name': 'rx',
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
                {'name': 'ry',
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
                {'name': 'rz',
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
                {'name': 'user',
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
                {'name': 'paramValue',
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
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros1Dobot_bringupRelMovJUserRequest)

class Ros1Dobot_bringupRelMovJUserResponse(Record):
    """@brief Own all original dobot_bringup/RelMovJUserResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupRelMovJUserResponse',
     'type': 'dobot_bringup/RelMovJUserResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/RelMovJUserResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_20448df974bf51cd04f80e2ed5c819f4f2f9740b6d919e656fe3a18c2a87efc1',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupRelMovJUserResponse)

class Ros1Dobot_bringupRelMovLRequest(Record):
    """@brief Own all original dobot_bringup/RelMovLRequest fields.
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
    SCHEMA = {'symbol': 'Ros1Dobot_bringupRelMovLRequest',
     'type': 'dobot_bringup/RelMovLRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/RelMovLRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_ebf192c073879d1900d884545f9c91fc54ece1c42220f77493217f02b00cadf6',
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

REGISTRY.add(Ros1Dobot_bringupRelMovLRequest)

class Ros1Dobot_bringupRelMovLResponse(Record):
    """@brief Own all original dobot_bringup/RelMovLResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupRelMovLResponse',
     'type': 'dobot_bringup/RelMovLResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/RelMovLResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_67d62b01e54f7df98e5209f948d3d45610e3bf3853a4fc04ca458cb30ea42e88',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupRelMovLResponse)

class Ros1Dobot_bringupRelMovLToolRequest(Record):
    """@brief Own all original dobot_bringup/RelMovLToolRequest fields.
    @details 8 ordered fields; 56..4216 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original x: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original y: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original z: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original rx: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original ry: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original rz: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original tool: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original paramValue: string, sequence.
    # @details Count/quota 16; string byte bound 256; caller owns storage.
    __slots__ = ('x', 'y', 'z', 'rx', 'ry', 'rz', 'tool', 'paramValue')
    SCHEMA = {'symbol': 'Ros1Dobot_bringupRelMovLToolRequest',
     'type': 'dobot_bringup/RelMovLToolRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/RelMovLToolRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_9318cd6154f2cc90d20d188cb1aa38ac2f160b75bb3b0d13f1a78326ac40ad9d',
     'minimum': 56,
     'maximum': 4216,
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
                {'name': 'rx',
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
                {'name': 'ry',
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
                {'name': 'rz',
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
                {'name': 'tool',
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
                {'name': 'paramValue',
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
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros1Dobot_bringupRelMovLToolRequest)

class Ros1Dobot_bringupRelMovLToolResponse(Record):
    """@brief Own all original dobot_bringup/RelMovLToolResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupRelMovLToolResponse',
     'type': 'dobot_bringup/RelMovLToolResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/RelMovLToolResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_4e5837f832c42d29b74a9a2536ab80b94f1087972685da74e021edd315bf5bec',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupRelMovLToolResponse)

class Ros1Dobot_bringupRelMovLUserRequest(Record):
    """@brief Own all original dobot_bringup/RelMovLUserRequest fields.
    @details 8 ordered fields; 56..4216 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original x: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original y: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original z: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original rx: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original ry: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original rz: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original user: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original paramValue: string, sequence.
    # @details Count/quota 16; string byte bound 256; caller owns storage.
    __slots__ = ('x', 'y', 'z', 'rx', 'ry', 'rz', 'user', 'paramValue')
    SCHEMA = {'symbol': 'Ros1Dobot_bringupRelMovLUserRequest',
     'type': 'dobot_bringup/RelMovLUserRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/RelMovLUserRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_03e9b9ec0fb14fcdb1b52404a78d29c4f952d296aa1ccf209ee257abed479b61',
     'minimum': 56,
     'maximum': 4216,
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
                {'name': 'rx',
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
                {'name': 'ry',
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
                {'name': 'rz',
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
                {'name': 'user',
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
                {'name': 'paramValue',
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
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros1Dobot_bringupRelMovLUserRequest)

class Ros1Dobot_bringupRelMovLUserResponse(Record):
    """@brief Own all original dobot_bringup/RelMovLUserResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupRelMovLUserResponse',
     'type': 'dobot_bringup/RelMovLUserResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/RelMovLUserResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_b0e9fcdd28f7e8fb3f4cd2c6398d9b2cde483028f5c24c43336ae032f9fad24d',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupRelMovLUserResponse)

class Ros1Dobot_bringupResetRobotRequest(Record):
    """@brief Own all original dobot_bringup/ResetRobotRequest fields.
    @details 0 ordered fields; 0..0 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    __slots__ = ()
    SCHEMA = {'symbol': 'Ros1Dobot_bringupResetRobotRequest',
     'type': 'dobot_bringup/ResetRobotRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/ResetRobotRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_64b2cfe8bd1c6b646e7bb126f681f6ba917466a1403ed0d04f0c900c1066e46c',
     'minimum': 0,
     'maximum': 0,
     'semantics': '',
     'fields': [],
     'constants': {}}

REGISTRY.add(Ros1Dobot_bringupResetRobotRequest)

class Ros1Dobot_bringupResetRobotResponse(Record):
    """@brief Own all original dobot_bringup/ResetRobotResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupResetRobotResponse',
     'type': 'dobot_bringup/ResetRobotResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/ResetRobotResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_0982186f56a3d0956566915e33ce268845367d7dadeaea8a07acbd737e63181a',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupResetRobotResponse)

class Ros1Dobot_bringupRobotModeRequest(Record):
    """@brief Own all original dobot_bringup/RobotModeRequest fields.
    @details 0 ordered fields; 0..0 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    __slots__ = ()
    SCHEMA = {'symbol': 'Ros1Dobot_bringupRobotModeRequest',
     'type': 'dobot_bringup/RobotModeRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/RobotModeRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_4a53406f3fb93ae98bd17673cd8215d0112537faff604d49c74bc4f517e16c5d',
     'minimum': 0,
     'maximum': 0,
     'semantics': '',
     'fields': [],
     'constants': {}}

REGISTRY.add(Ros1Dobot_bringupRobotModeRequest)

class Ros1Dobot_bringupRobotModeResponse(Record):
    """@brief Own all original dobot_bringup/RobotModeResponse fields.
    @details 2 ordered fields; 8..8 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original mode: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('mode', 'res')
    SCHEMA = {'symbol': 'Ros1Dobot_bringupRobotModeResponse',
     'type': 'dobot_bringup/RobotModeResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/RobotModeResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_68b34eb2c4fe7e7cacb6055a4259fcf5776ad4a28013281a3e9cf19521908d5c',
     'minimum': 8,
     'maximum': 8,
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
                {'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupRobotModeResponse)

class Ros1Dobot_bringupRunScriptRequest(Record):
    """@brief Own all original dobot_bringup/RunScriptRequest fields.
    @details 1 ordered fields; 4..260 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original projectName: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    __slots__ = ('projectName',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupRunScriptRequest',
     'type': 'dobot_bringup/RunScriptRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/RunScriptRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_616fc1d43590d9935733cd8de381585d170a01cf3a9e7972136a31783d49a29f',
     'minimum': 4,
     'maximum': 260,
     'semantics': '',
     'fields': [{'name': 'projectName',
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

REGISTRY.add(Ros1Dobot_bringupRunScriptRequest)

class Ros1Dobot_bringupRunScriptResponse(Record):
    """@brief Own all original dobot_bringup/RunScriptResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupRunScriptResponse',
     'type': 'dobot_bringup/RunScriptResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/RunScriptResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_3940b9344c72e35651072e75ca4c3839c0bd420fb741938402e95ad627cbf45c',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupRunScriptResponse)

class Ros1Dobot_bringupServoJRequest(Record):
    """@brief Own all original dobot_bringup/ServoJRequest fields.
    @details 9 ordered fields; 60..444 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original offset1: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original offset2: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original offset3: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original offset4: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original offset5: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original offset6: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original t: float64, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    # @brief Original lookahead_time: float64, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    # @brief Original gain: float64, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    __slots__ = ('offset1',
     'offset2',
     'offset3',
     'offset4',
     'offset5',
     'offset6',
     't',
     'lookahead_time',
     'gain')
    SCHEMA = {'symbol': 'Ros1Dobot_bringupServoJRequest',
     'type': 'dobot_bringup/ServoJRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/ServoJRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_89edbee19c86acd41f4cac814ac40e09262a17bd96ad1b697c0ffdecc69f20e2',
     'minimum': 60,
     'maximum': 444,
     'semantics': '',
     'fields': [{'name': 'offset1',
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
                {'name': 'offset2',
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
                {'name': 'offset3',
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
                {'name': 'offset4',
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
                {'name': 'offset5',
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
                {'name': 'offset6',
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
                {'name': 't',
                 'type': 'float64',
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
                {'name': 'lookahead_time',
                 'type': 'float64',
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
                {'name': 'gain',
                 'type': 'float64',
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

REGISTRY.add(Ros1Dobot_bringupServoJRequest)

class Ros1Dobot_bringupServoJResponse(Record):
    """@brief Own all original dobot_bringup/ServoJResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupServoJResponse',
     'type': 'dobot_bringup/ServoJResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/ServoJResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_8ec56aaaeec2ef71903513b001fd2a11d183cfa6eca330256d3adc5df58da301',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupServoJResponse)

class Ros1Dobot_bringupServoJParamRequest(Record):
    """@brief Own all original dobot_bringup/ServoJParamRequest fields.
    @details 4 ordered fields; 32..32 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original trajectory_duration: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original t: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original lookahead_time: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original gain: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('trajectory_duration', 't', 'lookahead_time', 'gain')
    SCHEMA = {'symbol': 'Ros1Dobot_bringupServoJParamRequest',
     'type': 'dobot_bringup/ServoJParamRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/ServoJParamRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_3b2ef76c800c3d483dca43cbe981ed2dd10a7c8a6806051e08b72c83209bc98f',
     'minimum': 32,
     'maximum': 32,
     'semantics': '',
     'fields': [{'name': 'trajectory_duration',
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
                {'name': 't',
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
                {'name': 'lookahead_time',
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
                {'name': 'gain',
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

REGISTRY.add(Ros1Dobot_bringupServoJParamRequest)

class Ros1Dobot_bringupServoJParamResponse(Record):
    """@brief Own all original dobot_bringup/ServoJParamResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupServoJParamResponse',
     'type': 'dobot_bringup/ServoJParamResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/ServoJParamResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_06226db8595d10cc98203d618d19f9f21a647c198f30c80247f996a17da5c466',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupServoJParamResponse)

class Ros1Dobot_bringupServoPRequest(Record):
    """@brief Own all original dobot_bringup/ServoPRequest fields.
    @details 6 ordered fields; 48..48 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original x: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original y: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original z: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original a: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original b: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original c: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('x', 'y', 'z', 'a', 'b', 'c')
    SCHEMA = {'symbol': 'Ros1Dobot_bringupServoPRequest',
     'type': 'dobot_bringup/ServoPRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/ServoPRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_03eca79138b155d8fbef7d31479f1db91d3044efd354cbb2220f8158453df94e',
     'minimum': 48,
     'maximum': 48,
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
                {'name': 'a',
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
                {'name': 'b',
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
                {'name': 'c',
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

REGISTRY.add(Ros1Dobot_bringupServoPRequest)

class Ros1Dobot_bringupServoPResponse(Record):
    """@brief Own all original dobot_bringup/ServoPResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupServoPResponse',
     'type': 'dobot_bringup/ServoPResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/ServoPResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_3878a67e350ae73e7c02104a8fc010d8837c1f0b99cb5ca121d5fea37dea0d6b',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupServoPResponse)

class Ros1Dobot_bringupSetArmOrientationRequest(Record):
    """@brief Own all original dobot_bringup/SetArmOrientationRequest fields.
    @details 4 ordered fields; 16..16 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original LorR: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original UorD: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original ForN: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original Config6: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('LorR', 'UorD', 'ForN', 'Config6')
    SCHEMA = {'symbol': 'Ros1Dobot_bringupSetArmOrientationRequest',
     'type': 'dobot_bringup/SetArmOrientationRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/SetArmOrientationRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_411ea8eea1cb7f7bb5693a95b8657a3e60eafb3dcf82838c36232f72ae886e7b',
     'minimum': 16,
     'maximum': 16,
     'semantics': '',
     'fields': [{'name': 'LorR',
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
                {'name': 'UorD',
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
                {'name': 'ForN',
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
                {'name': 'Config6',
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

REGISTRY.add(Ros1Dobot_bringupSetArmOrientationRequest)

class Ros1Dobot_bringupSetArmOrientationResponse(Record):
    """@brief Own all original dobot_bringup/SetArmOrientationResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupSetArmOrientationResponse',
     'type': 'dobot_bringup/SetArmOrientationResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/SetArmOrientationResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_8c9af233c61c52e029c51a6d59d53d2d37d8fa6fdfd009b08bee5e51f605a159',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupSetArmOrientationResponse)

class Ros1Dobot_bringupSetCoilsRequest(Record):
    """@brief Own all original dobot_bringup/SetCoilsRequest fields.
    @details 4 ordered fields; 16..272 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original index: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original addr: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original count: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original valTab: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    __slots__ = ('index', 'addr', 'count', 'valTab')
    SCHEMA = {'symbol': 'Ros1Dobot_bringupSetCoilsRequest',
     'type': 'dobot_bringup/SetCoilsRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/SetCoilsRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_45771482b61ce634858abc167e63a421d7533ff9650b09d2ba6d58cb01ce8c82',
     'minimum': 16,
     'maximum': 272,
     'semantics': '',
     'fields': [{'name': 'index',
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
                {'name': 'addr',
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
                {'name': 'count',
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
                {'name': 'valTab',
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

REGISTRY.add(Ros1Dobot_bringupSetCoilsRequest)

class Ros1Dobot_bringupSetCoilsResponse(Record):
    """@brief Own all original dobot_bringup/SetCoilsResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupSetCoilsResponse',
     'type': 'dobot_bringup/SetCoilsResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/SetCoilsResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_65a61c2bcb39a67ae79dc7552f2c383db8561d8e6fbd585c50b048beabd4537d',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupSetCoilsResponse)

class Ros1Dobot_bringupSetCollideDragRequest(Record):
    """@brief Own all original dobot_bringup/SetCollideDragRequest fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original status: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('status',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupSetCollideDragRequest',
     'type': 'dobot_bringup/SetCollideDragRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/SetCollideDragRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_6bbf174fa78c4e6706fe6ebdcfc77d6d80dfb153c91d3b8a815446bcae0fce31',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'status',
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

REGISTRY.add(Ros1Dobot_bringupSetCollideDragRequest)

class Ros1Dobot_bringupSetCollideDragResponse(Record):
    """@brief Own all original dobot_bringup/SetCollideDragResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupSetCollideDragResponse',
     'type': 'dobot_bringup/SetCollideDragResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/SetCollideDragResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_d78a1536cb221635491e59985011f879de22151bca4a40dcfdfad42e80465904',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupSetCollideDragResponse)

class Ros1Dobot_bringupSetCollisionLevelRequest(Record):
    """@brief Own all original dobot_bringup/SetCollisionLevelRequest fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original level: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('level',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupSetCollisionLevelRequest',
     'type': 'dobot_bringup/SetCollisionLevelRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/SetCollisionLevelRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_d356e0e035b01033a24c4ce155acb2e1edf1197f3efcf868defa4ee8eb6a1d85',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'level',
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

REGISTRY.add(Ros1Dobot_bringupSetCollisionLevelRequest)

class Ros1Dobot_bringupSetCollisionLevelResponse(Record):
    """@brief Own all original dobot_bringup/SetCollisionLevelResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupSetCollisionLevelResponse',
     'type': 'dobot_bringup/SetCollisionLevelResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/SetCollisionLevelResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_c1014bc49ba25fa4a922a84009a746d6e5f1462bd91ad457e27c5779f7c711d7',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupSetCollisionLevelResponse)

class Ros1Dobot_bringupSetHoldRegsRequest(Record):
    """@brief Own all original dobot_bringup/SetHoldRegsRequest fields.
    @details 5 ordered fields; 20..4436 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original index: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original addr: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original count: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original valTab: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original valtype: string, sequence.
    # @details Count/quota 16; string byte bound 256; caller owns storage.
    __slots__ = ('index', 'addr', 'count', 'valTab', 'valtype')
    SCHEMA = {'symbol': 'Ros1Dobot_bringupSetHoldRegsRequest',
     'type': 'dobot_bringup/SetHoldRegsRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/SetHoldRegsRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_a62adf80d85c268ded993bcf79fb5e36a4010373b82122b20bfa7dedd7ba9d4a',
     'minimum': 20,
     'maximum': 4436,
     'semantics': '',
     'fields': [{'name': 'index',
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
                {'name': 'addr',
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
                {'name': 'count',
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
                {'name': 'valTab',
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
                {'name': 'valtype',
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
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros1Dobot_bringupSetHoldRegsRequest)

class Ros1Dobot_bringupSetHoldRegsResponse(Record):
    """@brief Own all original dobot_bringup/SetHoldRegsResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupSetHoldRegsResponse',
     'type': 'dobot_bringup/SetHoldRegsResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/SetHoldRegsResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_8c7bc9280585f3f48d94492a977a043154d9f7014d40c75c3423e6920c185006',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupSetHoldRegsResponse)

class Ros1Dobot_bringupSetObstacleAvoidRequest(Record):
    """@brief Own all original dobot_bringup/SetObstacleAvoidRequest fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original status: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('status',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupSetObstacleAvoidRequest',
     'type': 'dobot_bringup/SetObstacleAvoidRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/SetObstacleAvoidRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_fdabddcd2e3aedae53795c3f88db4af1e8b088276bacde73d2f743bc85abb2b7',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'status',
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

REGISTRY.add(Ros1Dobot_bringupSetObstacleAvoidRequest)

class Ros1Dobot_bringupSetObstacleAvoidResponse(Record):
    """@brief Own all original dobot_bringup/SetObstacleAvoidResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupSetObstacleAvoidResponse',
     'type': 'dobot_bringup/SetObstacleAvoidResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/SetObstacleAvoidResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_6326eb040ce327709390b27c7cdcdcdc5e4b482078083d8e9211b85a0b516765',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupSetObstacleAvoidResponse)

class Ros1Dobot_bringupSetPayloadRequest(Record):
    """@brief Own all original dobot_bringup/SetPayloadRequest fields.
    @details 1 ordered fields; 8..8 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original load: float64, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('load',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupSetPayloadRequest',
     'type': 'dobot_bringup/SetPayloadRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/SetPayloadRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_b78f4ea1c2dba35204ce4a4c707f47e1203525613c0f8e2b6bde4d4ebe31fd0a',
     'minimum': 8,
     'maximum': 8,
     'semantics': '',
     'fields': [{'name': 'load',
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

REGISTRY.add(Ros1Dobot_bringupSetPayloadRequest)

class Ros1Dobot_bringupSetPayloadResponse(Record):
    """@brief Own all original dobot_bringup/SetPayloadResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupSetPayloadResponse',
     'type': 'dobot_bringup/SetPayloadResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/SetPayloadResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_ef8118977e3535e707b28e87413af7b5d87aefe192cb904e76388f26a0e48451',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupSetPayloadResponse)

class Ros1Dobot_bringupSetSafeSkinRequest(Record):
    """@brief Own all original dobot_bringup/SetSafeSkinRequest fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original status: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('status',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupSetSafeSkinRequest',
     'type': 'dobot_bringup/SetSafeSkinRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/SetSafeSkinRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_757fbe6b10abe9fab751c9a26e653dfb88aa9863f8aa02574a4853596dea0b1f',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'status',
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

REGISTRY.add(Ros1Dobot_bringupSetSafeSkinRequest)

class Ros1Dobot_bringupSetSafeSkinResponse(Record):
    """@brief Own all original dobot_bringup/SetSafeSkinResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupSetSafeSkinResponse',
     'type': 'dobot_bringup/SetSafeSkinResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/SetSafeSkinResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_6faa7971380cc42c37cb8e465e04bc61565a0d13afc4e13a3dae14538bdcc7ef',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupSetSafeSkinResponse)

class Ros1Dobot_bringupSetTerminal485Request(Record):
    """@brief Own all original dobot_bringup/SetTerminal485Request fields.
    @details 4 ordered fields; 16..272 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original baudRate: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original dataLen: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original parityBit: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original stopBit: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('baudRate', 'dataLen', 'parityBit', 'stopBit')
    SCHEMA = {'symbol': 'Ros1Dobot_bringupSetTerminal485Request',
     'type': 'dobot_bringup/SetTerminal485Request',
     'ros_version': 1,
     'native_type': 'dobot_bringup/SetTerminal485Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_68f16c3a44c421922cc0200bb6d08ad44b475feae3d9b35b075749b31c84b7b0',
     'minimum': 16,
     'maximum': 272,
     'semantics': '',
     'fields': [{'name': 'baudRate',
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
                {'name': 'dataLen',
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
                {'name': 'parityBit',
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
                {'name': 'stopBit',
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

REGISTRY.add(Ros1Dobot_bringupSetTerminal485Request)

class Ros1Dobot_bringupSetTerminal485Response(Record):
    """@brief Own all original dobot_bringup/SetTerminal485Response fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupSetTerminal485Response',
     'type': 'dobot_bringup/SetTerminal485Response',
     'ros_version': 1,
     'native_type': 'dobot_bringup/SetTerminal485Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_8d9147b63b5a0a8fe5a55cf1539cdccac2db65f169edd15f7de6961b7c69f987',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupSetTerminal485Response)

class Ros1Dobot_bringupSetTerminalKeysRequest(Record):
    """@brief Own all original dobot_bringup/SetTerminalKeysRequest fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original status: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('status',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupSetTerminalKeysRequest',
     'type': 'dobot_bringup/SetTerminalKeysRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/SetTerminalKeysRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_5ccdea027664fa4de7f7eede24f55c1be9e48bcc69c304f6ed20364bdf2316c8',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'status',
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

REGISTRY.add(Ros1Dobot_bringupSetTerminalKeysRequest)

class Ros1Dobot_bringupSetTerminalKeysResponse(Record):
    """@brief Own all original dobot_bringup/SetTerminalKeysResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupSetTerminalKeysResponse',
     'type': 'dobot_bringup/SetTerminalKeysResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/SetTerminalKeysResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_59413ce06c871427dc5bfe441c8486cee8a580c75a4b1b979e90f5002f405ca8',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupSetTerminalKeysResponse)

class Ros1Dobot_bringupSpeedFactorRequest(Record):
    """@brief Own all original dobot_bringup/SpeedFactorRequest fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original ratio: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('ratio',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupSpeedFactorRequest',
     'type': 'dobot_bringup/SpeedFactorRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/SpeedFactorRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_bc9b2b41a6825b0b62591195bdfe8c496a9330b769077ba68fa6955fee05bac3',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'ratio',
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

REGISTRY.add(Ros1Dobot_bringupSpeedFactorRequest)

class Ros1Dobot_bringupSpeedFactorResponse(Record):
    """@brief Own all original dobot_bringup/SpeedFactorResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupSpeedFactorResponse',
     'type': 'dobot_bringup/SpeedFactorResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/SpeedFactorResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_f3dccd2d89672165a8a3f322921c526503ceea62853596deff249b8db9561f4d',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupSpeedFactorResponse)

class Ros1Dobot_bringupSpeedJRequest(Record):
    """@brief Own all original dobot_bringup/SpeedJRequest fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original r: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('r',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupSpeedJRequest',
     'type': 'dobot_bringup/SpeedJRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/SpeedJRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_530734a5d3c9d4ad506868f4037248b87a3ecb910a9a326bd3bd887b8a55710d',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'r',
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

REGISTRY.add(Ros1Dobot_bringupSpeedJRequest)

class Ros1Dobot_bringupSpeedJResponse(Record):
    """@brief Own all original dobot_bringup/SpeedJResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupSpeedJResponse',
     'type': 'dobot_bringup/SpeedJResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/SpeedJResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_17695b04e91ceb9ea10c863908d474e587160eac3132a560bc06a15c18a2e447',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupSpeedJResponse)

class Ros1Dobot_bringupSpeedLRequest(Record):
    """@brief Own all original dobot_bringup/SpeedLRequest fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original r: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('r',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupSpeedLRequest',
     'type': 'dobot_bringup/SpeedLRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/SpeedLRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_92cfdf1adae35ed62eb8a92f9bcf4ffd01e8db8c57989e008e2073e3e07b9c51',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'r',
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

REGISTRY.add(Ros1Dobot_bringupSpeedLRequest)

class Ros1Dobot_bringupSpeedLResponse(Record):
    """@brief Own all original dobot_bringup/SpeedLResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupSpeedLResponse',
     'type': 'dobot_bringup/SpeedLResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/SpeedLResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_413b189f4830e3bff05be7c2f80251242e6c07ca696fd78dd91ae326f703e5b2',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupSpeedLResponse)

class Ros1Dobot_bringupStartDragRequest(Record):
    """@brief Own all original dobot_bringup/StartDragRequest fields.
    @details 0 ordered fields; 0..0 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    __slots__ = ()
    SCHEMA = {'symbol': 'Ros1Dobot_bringupStartDragRequest',
     'type': 'dobot_bringup/StartDragRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/StartDragRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_5edde2ed92d68be374f7a234ae31d5e939747fda13dd2abd093c98b9bbefd0b2',
     'minimum': 0,
     'maximum': 0,
     'semantics': '',
     'fields': [],
     'constants': {}}

REGISTRY.add(Ros1Dobot_bringupStartDragRequest)

class Ros1Dobot_bringupStartDragResponse(Record):
    """@brief Own all original dobot_bringup/StartDragResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupStartDragResponse',
     'type': 'dobot_bringup/StartDragResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/StartDragResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_3f845cd661102409cc5077d245b89fca9250f265f783478473a86e92528b7cb9',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupStartDragResponse)

class Ros1Dobot_bringupStartFCTraceRequest(Record):
    """@brief Own all original dobot_bringup/StartFCTraceRequest fields.
    @details 1 ordered fields; 4..260 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original trace_name: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    __slots__ = ('trace_name',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupStartFCTraceRequest',
     'type': 'dobot_bringup/StartFCTraceRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/StartFCTraceRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_1f215de662fd0408919e61128d88b5e36ef8caf22a3d60a00722c9dc7828d01e',
     'minimum': 4,
     'maximum': 260,
     'semantics': '',
     'fields': [{'name': 'trace_name',
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

REGISTRY.add(Ros1Dobot_bringupStartFCTraceRequest)

class Ros1Dobot_bringupStartFCTraceResponse(Record):
    """@brief Own all original dobot_bringup/StartFCTraceResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupStartFCTraceResponse',
     'type': 'dobot_bringup/StartFCTraceResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/StartFCTraceResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_943645444330cdd8076254071d311237eee917c45c30d6038458a3b3122ab67c',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupStartFCTraceResponse)

class Ros1Dobot_bringupStartPathRequest(Record):
    """@brief Own all original dobot_bringup/StartPathRequest fields.
    @details 3 ordered fields; 12..268 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original trace_name: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original const_val: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original cart: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('trace_name', 'const_val', 'cart')
    SCHEMA = {'symbol': 'Ros1Dobot_bringupStartPathRequest',
     'type': 'dobot_bringup/StartPathRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/StartPathRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_c2bda8488e715407a73897eaf8a63da4d77e1371d257ebeebf7d4d855aa6eb89',
     'minimum': 12,
     'maximum': 268,
     'semantics': '',
     'fields': [{'name': 'trace_name',
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
                {'name': 'const_val',
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
                {'name': 'cart',
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

REGISTRY.add(Ros1Dobot_bringupStartPathRequest)

class Ros1Dobot_bringupStartPathResponse(Record):
    """@brief Own all original dobot_bringup/StartPathResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupStartPathResponse',
     'type': 'dobot_bringup/StartPathResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/StartPathResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_7e0c7e7594e78bca3183f6e68170dcf40e3341f9f7a63c3b00f8e0ec51ae46a0',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupStartPathResponse)

class Ros1Dobot_bringupStartTraceRequest(Record):
    """@brief Own all original dobot_bringup/StartTraceRequest fields.
    @details 1 ordered fields; 4..260 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original trace_name: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    __slots__ = ('trace_name',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupStartTraceRequest',
     'type': 'dobot_bringup/StartTraceRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/StartTraceRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_2cb708228939aa747aded7cd96aa8a01855a09a27ae9bd855d6d3f0c42a6ff45',
     'minimum': 4,
     'maximum': 260,
     'semantics': '',
     'fields': [{'name': 'trace_name',
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

REGISTRY.add(Ros1Dobot_bringupStartTraceRequest)

class Ros1Dobot_bringupStartTraceResponse(Record):
    """@brief Own all original dobot_bringup/StartTraceResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupStartTraceResponse',
     'type': 'dobot_bringup/StartTraceResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/StartTraceResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_5c7ae42d0c2057dbdf32d5bf0bc6199d3a5b45f452f58cd58aec217ac5161bdd',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupStartTraceResponse)

class Ros1Dobot_bringupStopDragRequest(Record):
    """@brief Own all original dobot_bringup/StopDragRequest fields.
    @details 0 ordered fields; 0..0 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    __slots__ = ()
    SCHEMA = {'symbol': 'Ros1Dobot_bringupStopDragRequest',
     'type': 'dobot_bringup/StopDragRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/StopDragRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_b0cc9836f6159cd14e2fbe1d17946df1195933b6185c58e92a9ccfe2110ab3c9',
     'minimum': 0,
     'maximum': 0,
     'semantics': '',
     'fields': [],
     'constants': {}}

REGISTRY.add(Ros1Dobot_bringupStopDragRequest)

class Ros1Dobot_bringupStopDragResponse(Record):
    """@brief Own all original dobot_bringup/StopDragResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupStopDragResponse',
     'type': 'dobot_bringup/StopDragResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/StopDragResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_c799d7ef2592c59d6765107cb18ae3a8e811da39fd3c4f53000ed1f0ce73ce64',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupStopDragResponse)

class Ros1Dobot_bringupStopScriptRequest(Record):
    """@brief Own all original dobot_bringup/StopScriptRequest fields.
    @details 0 ordered fields; 0..0 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    __slots__ = ()
    SCHEMA = {'symbol': 'Ros1Dobot_bringupStopScriptRequest',
     'type': 'dobot_bringup/StopScriptRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/StopScriptRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_7e9a2e0200b130410e48357bf3bebe80084239ba05f75effbf2b96e6d5fa6230',
     'minimum': 0,
     'maximum': 0,
     'semantics': '',
     'fields': [],
     'constants': {}}

REGISTRY.add(Ros1Dobot_bringupStopScriptRequest)

class Ros1Dobot_bringupStopScriptResponse(Record):
    """@brief Own all original dobot_bringup/StopScriptResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupStopScriptResponse',
     'type': 'dobot_bringup/StopScriptResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/StopScriptResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_2fdc976b5bb7a6270a362a8ec31184d2034068a1806f501517c472efceda804b',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupStopScriptResponse)

class Ros1Dobot_bringupStopmoveJogRequest(Record):
    """@brief Own all original dobot_bringup/StopmoveJogRequest fields.
    @details 0 ordered fields; 0..0 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    __slots__ = ()
    SCHEMA = {'symbol': 'Ros1Dobot_bringupStopmoveJogRequest',
     'type': 'dobot_bringup/StopmoveJogRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/StopmoveJogRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_0f938c260d9371e39e84a1a01447c7992ad15b5c6c322def739d0919e5af3176',
     'minimum': 0,
     'maximum': 0,
     'semantics': '',
     'fields': [],
     'constants': {}}

REGISTRY.add(Ros1Dobot_bringupStopmoveJogRequest)

class Ros1Dobot_bringupStopmoveJogResponse(Record):
    """@brief Own all original dobot_bringup/StopmoveJogResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupStopmoveJogResponse',
     'type': 'dobot_bringup/StopmoveJogResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/StopmoveJogResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_8af5a7425dcbbed499016ce18bf9f721da5ee806e9e4360368267f925e169940',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupStopmoveJogResponse)

class Ros1Dobot_bringupSyncRequest(Record):
    """@brief Own all original dobot_bringup/SyncRequest fields.
    @details 0 ordered fields; 0..0 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    __slots__ = ()
    SCHEMA = {'symbol': 'Ros1Dobot_bringupSyncRequest',
     'type': 'dobot_bringup/SyncRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/SyncRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_6335c57c7c8e3d52e8c5bb288f87946d11228777e2277aec29560d5f7bebb327',
     'minimum': 0,
     'maximum': 0,
     'semantics': '',
     'fields': [],
     'constants': {}}

REGISTRY.add(Ros1Dobot_bringupSyncRequest)

class Ros1Dobot_bringupSyncResponse(Record):
    """@brief Own all original dobot_bringup/SyncResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupSyncResponse',
     'type': 'dobot_bringup/SyncResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/SyncResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_bccb43d699c8000b02cd2f97349bf7d16df2409ba0ab02fcc1889acb8827fb24',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupSyncResponse)

class Ros1Dobot_bringupSyncAllRequest(Record):
    """@brief Own all original dobot_bringup/SyncAllRequest fields.
    @details 0 ordered fields; 0..0 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    __slots__ = ()
    SCHEMA = {'symbol': 'Ros1Dobot_bringupSyncAllRequest',
     'type': 'dobot_bringup/SyncAllRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/SyncAllRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_d4e09d99b799b37456dd01b35b7c5c6f83b34899bd8942c6c324018087bd5a76',
     'minimum': 0,
     'maximum': 0,
     'semantics': '',
     'fields': [],
     'constants': {}}

REGISTRY.add(Ros1Dobot_bringupSyncAllRequest)

class Ros1Dobot_bringupSyncAllResponse(Record):
    """@brief Own all original dobot_bringup/SyncAllResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupSyncAllResponse',
     'type': 'dobot_bringup/SyncAllResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/SyncAllResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_1431a93a4eb81a5180888dcbef05bb55aca2ba282e51b07df6a1578ebb38b69b',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupSyncAllResponse)

class Ros1Dobot_bringupTCPSpeedRequest(Record):
    """@brief Own all original dobot_bringup/TCPSpeedRequest fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original vt: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('vt',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupTCPSpeedRequest',
     'type': 'dobot_bringup/TCPSpeedRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/TCPSpeedRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_a49b5d50c6b624f0fa07e22f80248b5199a2158c6211b1e6c0eca4a975ab7463',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'vt',
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

REGISTRY.add(Ros1Dobot_bringupTCPSpeedRequest)

class Ros1Dobot_bringupTCPSpeedResponse(Record):
    """@brief Own all original dobot_bringup/TCPSpeedResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupTCPSpeedResponse',
     'type': 'dobot_bringup/TCPSpeedResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/TCPSpeedResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_8fda9d4671efacc4b7831694bd9e2cf16c90efbb3b790f17879896a48fb78d40',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupTCPSpeedResponse)

class Ros1Dobot_bringupTCPSpeedEndRequest(Record):
    """@brief Own all original dobot_bringup/TCPSpeedEndRequest fields.
    @details 0 ordered fields; 0..0 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    __slots__ = ()
    SCHEMA = {'symbol': 'Ros1Dobot_bringupTCPSpeedEndRequest',
     'type': 'dobot_bringup/TCPSpeedEndRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/TCPSpeedEndRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_11b32554e05b4dd64f7965fb8909226ee845f6fe236bf44c3cee6e1b58dc56ab',
     'minimum': 0,
     'maximum': 0,
     'semantics': '',
     'fields': [],
     'constants': {}}

REGISTRY.add(Ros1Dobot_bringupTCPSpeedEndRequest)

class Ros1Dobot_bringupTCPSpeedEndResponse(Record):
    """@brief Own all original dobot_bringup/TCPSpeedEndResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupTCPSpeedEndResponse',
     'type': 'dobot_bringup/TCPSpeedEndResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/TCPSpeedEndResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_209df9451cdd6aa01da6297a3dd200a7d48e7775c37e0f29210b6662f6025106',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupTCPSpeedEndResponse)

class Ros1Dobot_bringupTcpDashboardRequest(Record):
    """@brief Own all original dobot_bringup/TcpDashboardRequest fields.
    @details 1 ordered fields; 4..260 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original command: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    __slots__ = ('command',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupTcpDashboardRequest',
     'type': 'dobot_bringup/TcpDashboardRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/TcpDashboardRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_d3db7b6a90c40d75214e005ed14a4556f064853544f887b22b37d475eaaaac4b',
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

REGISTRY.add(Ros1Dobot_bringupTcpDashboardRequest)

class Ros1Dobot_bringupTcpDashboardResponse(Record):
    """@brief Own all original dobot_bringup/TcpDashboardResponse fields.
    @details 1 ordered fields; 4..260 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original result: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    __slots__ = ('result',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupTcpDashboardResponse',
     'type': 'dobot_bringup/TcpDashboardResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/TcpDashboardResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_eef5e6ea6b43d898ab0af1d6162c3d1738e437313aae7998802ec80e26345ae1',
     'minimum': 4,
     'maximum': 260,
     'semantics': '',
     'fields': [{'name': 'result',
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

REGISTRY.add(Ros1Dobot_bringupTcpDashboardResponse)

class Ros1Dobot_bringupTcpRealDataRequest(Record):
    """@brief Own all original dobot_bringup/TcpRealDataRequest fields.
    @details 2 ordered fields; 8..8 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original index: uint32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original size: uint32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('index', 'size')
    SCHEMA = {'symbol': 'Ros1Dobot_bringupTcpRealDataRequest',
     'type': 'dobot_bringup/TcpRealDataRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/TcpRealDataRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_0da7b4edbd97640aa057410bfb4d67e0ab554f0a8776421def225798d99b5aba',
     'minimum': 8,
     'maximum': 8,
     'semantics': '',
     'fields': [{'name': 'index',
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
                 'default': None},
                {'name': 'size',
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

REGISTRY.add(Ros1Dobot_bringupTcpRealDataRequest)

class Ros1Dobot_bringupTcpRealDataResponse(Record):
    """@brief Own all original dobot_bringup/TcpRealDataResponse fields.
    @details 1 ordered fields; 4..20 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original real_data: uint8, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    __slots__ = ('real_data',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupTcpRealDataResponse',
     'type': 'dobot_bringup/TcpRealDataResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/TcpRealDataResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_ed7ac4b91bfae3d1c2fdcf3ffe1efcbec473a5138c204115f6ec17adf3bf1d91',
     'minimum': 4,
     'maximum': 20,
     'semantics': '',
     'fields': [{'name': 'real_data',
                 'type': 'uint8',
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

REGISTRY.add(Ros1Dobot_bringupTcpRealDataResponse)

class Ros1Dobot_bringupToolRequest(Record):
    """@brief Own all original dobot_bringup/ToolRequest fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original index: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('index',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupToolRequest',
     'type': 'dobot_bringup/ToolRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/ToolRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_0bd7f266c2fad2e0b91d423ed4c7ea0fd1e5af5b600f13406d1d777466a0fd16',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'index',
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

REGISTRY.add(Ros1Dobot_bringupToolRequest)

class Ros1Dobot_bringupToolResponse(Record):
    """@brief Own all original dobot_bringup/ToolResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupToolResponse',
     'type': 'dobot_bringup/ToolResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/ToolResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_56b265050ea32f5b7ae269f92cfc71218d5c5ba05646909ea59069e33510466e',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupToolResponse)

class Ros1Dobot_bringupToolAIRequest(Record):
    """@brief Own all original dobot_bringup/ToolAIRequest fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original index: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('index',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupToolAIRequest',
     'type': 'dobot_bringup/ToolAIRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/ToolAIRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_a5268a08cb93da6f4c38764aa0236abde3f8c57e232a1dbc6f53134111ce2fd8',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'index',
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

REGISTRY.add(Ros1Dobot_bringupToolAIRequest)

class Ros1Dobot_bringupToolAIResponse(Record):
    """@brief Own all original dobot_bringup/ToolAIResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupToolAIResponse',
     'type': 'dobot_bringup/ToolAIResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/ToolAIResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_92c55f5b614847d1f3be252d07dcd9a30598232d3b4e8f522f8ec83994b56397',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupToolAIResponse)

class Ros1Dobot_bringupToolDIRequest(Record):
    """@brief Own all original dobot_bringup/ToolDIRequest fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original index: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('index',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupToolDIRequest',
     'type': 'dobot_bringup/ToolDIRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/ToolDIRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_1ca6c66e74e3487aa95f47be019816e7186fc78866d0de3d8bf0387cd3df0076',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'index',
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

REGISTRY.add(Ros1Dobot_bringupToolDIRequest)

class Ros1Dobot_bringupToolDIResponse(Record):
    """@brief Own all original dobot_bringup/ToolDIResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupToolDIResponse',
     'type': 'dobot_bringup/ToolDIResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/ToolDIResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_b82c8b78569e743f5ed6820f51a94e4df7a7123263480abe95d98c9d4eaaea6e',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupToolDIResponse)

class Ros1Dobot_bringupToolDORequest(Record):
    """@brief Own all original dobot_bringup/ToolDORequest fields.
    @details 2 ordered fields; 8..8 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original index: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original status: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('index', 'status')
    SCHEMA = {'symbol': 'Ros1Dobot_bringupToolDORequest',
     'type': 'dobot_bringup/ToolDORequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/ToolDORequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_dc39c212586e15229136735c829a895bad7fc6a98ffc0bdce7ff979f922d23ab',
     'minimum': 8,
     'maximum': 8,
     'semantics': '',
     'fields': [{'name': 'index',
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
                {'name': 'status',
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

REGISTRY.add(Ros1Dobot_bringupToolDORequest)

class Ros1Dobot_bringupToolDOResponse(Record):
    """@brief Own all original dobot_bringup/ToolDOResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupToolDOResponse',
     'type': 'dobot_bringup/ToolDOResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/ToolDOResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_9e7bf45f71e429e87a8b13e65ddef93703613393c6919c1533515c654e6c8bee',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupToolDOResponse)

class Ros1Dobot_bringupToolDOExecuteRequest(Record):
    """@brief Own all original dobot_bringup/ToolDOExecuteRequest fields.
    @details 2 ordered fields; 8..8 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original index: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original status: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('index', 'status')
    SCHEMA = {'symbol': 'Ros1Dobot_bringupToolDOExecuteRequest',
     'type': 'dobot_bringup/ToolDOExecuteRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/ToolDOExecuteRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_22cb71605a1372615814017f66f61ce144cbf3c8b7d8494afbed7738eb29903b',
     'minimum': 8,
     'maximum': 8,
     'semantics': '',
     'fields': [{'name': 'index',
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
                {'name': 'status',
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

REGISTRY.add(Ros1Dobot_bringupToolDOExecuteRequest)

class Ros1Dobot_bringupToolDOExecuteResponse(Record):
    """@brief Own all original dobot_bringup/ToolDOExecuteResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupToolDOExecuteResponse',
     'type': 'dobot_bringup/ToolDOExecuteResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/ToolDOExecuteResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_4cb0bead175157db1ca3856044e06fde9cd2cd8775a973a50bba2829d3170cdd',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupToolDOExecuteResponse)

class Ros1Dobot_bringupUserRequest(Record):
    """@brief Own all original dobot_bringup/UserRequest fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original index: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('index',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupUserRequest',
     'type': 'dobot_bringup/UserRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/UserRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_76f5181e8f7f06636dbaf1f1cdac40cf5551f4b3c09894eb7fc0089f71e81e73',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'index',
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

REGISTRY.add(Ros1Dobot_bringupUserRequest)

class Ros1Dobot_bringupUserResponse(Record):
    """@brief Own all original dobot_bringup/UserResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupUserResponse',
     'type': 'dobot_bringup/UserResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/UserResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_7f5730d781123bc19cadcdf6e3777368db7b6ea770a2fa42116af9b247bbec07',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupUserResponse)

class Ros1Dobot_bringupWaitRequest(Record):
    """@brief Own all original dobot_bringup/WaitRequest fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original time: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('time',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupWaitRequest',
     'type': 'dobot_bringup/WaitRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/WaitRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_2e5591a43882cc95d007f376128e7db03376cae95e637f77fff14ed3c115ff85',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'time',
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

REGISTRY.add(Ros1Dobot_bringupWaitRequest)

class Ros1Dobot_bringupWaitResponse(Record):
    """@brief Own all original dobot_bringup/WaitResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupWaitResponse',
     'type': 'dobot_bringup/WaitResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/WaitResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_f745fbd59f29bdca82788cb44ef5848836cd510328fd4dcec6ae2cbe1b57a07f',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupWaitResponse)

class Ros1Dobot_bringupPauseRequest(Record):
    """@brief Own all original dobot_bringup/pauseRequest fields.
    @details 0 ordered fields; 0..0 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    __slots__ = ()
    SCHEMA = {'symbol': 'Ros1Dobot_bringupPauseRequest',
     'type': 'dobot_bringup/pauseRequest',
     'ros_version': 1,
     'native_type': 'dobot_bringup/pauseRequest',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_524834ff32e2a939481b311a79efe4e67183379ae04516e87d75e4449d219b89',
     'minimum': 0,
     'maximum': 0,
     'semantics': '',
     'fields': [],
     'constants': {}}

REGISTRY.add(Ros1Dobot_bringupPauseRequest)

class Ros1Dobot_bringupPauseResponse(Record):
    """@brief Own all original dobot_bringup/pauseResponse fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original res: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('res',)
    SCHEMA = {'symbol': 'Ros1Dobot_bringupPauseResponse',
     'type': 'dobot_bringup/pauseResponse',
     'ros_version': 1,
     'native_type': 'dobot_bringup/pauseResponse',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_791459101db2af7fdc04aa2e3778aeb684bc7f4b4fae16420c9b551383c2f545',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'res',
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

REGISTRY.add(Ros1Dobot_bringupPauseResponse)
