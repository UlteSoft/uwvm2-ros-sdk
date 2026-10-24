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

class Ros1Rm_msgsArmState(Record):
    """@brief Own all original rm_msgs/ArmState fields.
    @details 4 ordered fields; 65..161 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original joint: float32, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    # @brief Original Pose: geometry_msgs/Pose, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original err: uint16, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    # @brief Original dof: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('joint', 'Pose', 'err', 'dof')
    SCHEMA = {'symbol': 'Ros1Rm_msgsArmState',
     'type': 'rm_msgs/ArmState',
     'ros_version': 1,
     'native_type': 'rm_msgs/ArmState',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_f66af5e8f31c3b897559c988ef8a9fe8257199453c3973bcb9afe56a420d2f93',
     'minimum': 65,
     'maximum': 161,
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
                {'name': 'Pose',
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
                 'default': None},
                {'name': 'err',
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

REGISTRY.add(Ros1Rm_msgsArmState)

class Ros1Rm_msgsArm_Analog_Output(Record):
    """@brief Own all original rm_msgs/Arm_Analog_Output fields.
    @details 2 ordered fields; 5..5 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original num: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original voltage: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('num', 'voltage')
    SCHEMA = {'symbol': 'Ros1Rm_msgsArm_Analog_Output',
     'type': 'rm_msgs/Arm_Analog_Output',
     'ros_version': 1,
     'native_type': 'rm_msgs/Arm_Analog_Output',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_c344d257e1e5f45d1f82e60e66a38a1714dbc06b8e9379357c308b34f2ed3c94',
     'minimum': 5,
     'maximum': 5,
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
                {'name': 'voltage',
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

REGISTRY.add(Ros1Rm_msgsArm_Analog_Output)

class Ros1Rm_msgsArm_Current_State(Record):
    """@brief Own all original rm_msgs/Arm_Current_State fields.
    @details 4 ordered fields; 33..129 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original joint: float32, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    # @brief Original Pose: float32, array.
    # @details Count/quota 6; string byte bound 0; caller owns storage.
    # @brief Original err: uint16, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    # @brief Original dof: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('joint', 'Pose', 'err', 'dof')
    SCHEMA = {'symbol': 'Ros1Rm_msgsArm_Current_State',
     'type': 'rm_msgs/Arm_Current_State',
     'ros_version': 1,
     'native_type': 'rm_msgs/Arm_Current_State',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_b5c0206ba9eb0674b9a1ca4204aa63e41ce356ad38953a544760897d0d467844',
     'minimum': 33,
     'maximum': 129,
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
                {'name': 'Pose',
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

REGISTRY.add(Ros1Rm_msgsArm_Current_State)

class Ros1Rm_msgsArm_Current_Status(Record):
    """@brief Own all original rm_msgs/Arm_Current_Status fields.
    @details 1 ordered fields; 4..260 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original arm_current_status: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    __slots__ = ('arm_current_status',)
    SCHEMA = {'symbol': 'Ros1Rm_msgsArm_Current_Status',
     'type': 'rm_msgs/Arm_Current_Status',
     'ros_version': 1,
     'native_type': 'rm_msgs/Arm_Current_Status',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_871842ca4ff929b1851a43d9cf855a85ab37ccf147e1b24dfbdb8421f4133fd3',
     'minimum': 4,
     'maximum': 260,
     'semantics': '',
     'fields': [{'name': 'arm_current_status',
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

REGISTRY.add(Ros1Rm_msgsArm_Current_Status)

class Ros1Rm_msgsArm_Digital_Output(Record):
    """@brief Own all original rm_msgs/Arm_Digital_Output fields.
    @details 2 ordered fields; 2..2 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original num: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original state: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('num', 'state')
    SCHEMA = {'symbol': 'Ros1Rm_msgsArm_Digital_Output',
     'type': 'rm_msgs/Arm_Digital_Output',
     'ros_version': 1,
     'native_type': 'rm_msgs/Arm_Digital_Output',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_afc6da6c0b8f5e9dc9846b9c536ced62723c7e1479737bc5f4f31d14c2f5f029',
     'minimum': 2,
     'maximum': 2,
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

REGISTRY.add(Ros1Rm_msgsArm_Digital_Output)

class Ros1Rm_msgsArm_IO_State(Record):
    """@brief Own all original rm_msgs/Arm_IO_State fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original Arm_Digital_Input: int8, array.
    # @details Count/quota 4; string byte bound 0; caller owns storage.
    __slots__ = ('Arm_Digital_Input',)
    SCHEMA = {'symbol': 'Ros1Rm_msgsArm_IO_State',
     'type': 'rm_msgs/Arm_IO_State',
     'ros_version': 1,
     'native_type': 'rm_msgs/Arm_IO_State',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_bdcfa192917433b9ac60a589c42c06cc1092080e0d0410dbcd967b88298b315c',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'Arm_Digital_Input',
                 'type': 'int8',
                 'array': 'array',
                 'count': 4,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros1Rm_msgsArm_IO_State)

class Ros1Time(Record):
    """@brief Own all original time fields.
    @details 2 ordered fields; 8..8 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original sec: uint32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original nsec: uint32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('sec', 'nsec')
    SCHEMA = {'symbol': 'Ros1Time',
     'type': 'time',
     'ros_version': 1,
     'native_type': 'time',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0',
     'minimum': 8,
     'maximum': 8,
     'semantics': 'normalized-time',
     'fields': [{'name': 'sec',
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
                {'name': 'nsec',
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

REGISTRY.add(Ros1Time)

class Ros1Std_msgsHeader(Record):
    """@brief Own all original std_msgs/Header fields.
    @details 3 ordered fields; 16..272 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original seq: uint32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original stamp: time, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original frame_id: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    __slots__ = ('seq', 'stamp', 'frame_id')
    SCHEMA = {'symbol': 'Ros1Std_msgsHeader',
     'type': 'std_msgs/Header',
     'ros_version': 1,
     'native_type': 'std_msgs/Header',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_5501bfd608c585c739688d051f0090563b3966c945bd84b7b2b3681fc61d47d7',
     'minimum': 16,
     'maximum': 272,
     'semantics': '',
     'fields': [{'name': 'seq',
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
                {'name': 'stamp',
                 'type': 'time',
                 'array': '',
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

REGISTRY.add(Ros1Std_msgsHeader)

class Ros1Rm_msgsArm_Joint_Speed_Max(Record):
    """@brief Own all original rm_msgs/Arm_Joint_Speed_Max fields.
    @details 3 ordered fields; 24..4568 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original header: std_msgs/Header, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original name: string, sequence.
    # @details Count/quota 16; string byte bound 256; caller owns storage.
    # @brief Original max_velocity: float64, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    __slots__ = ('header', 'name', 'max_velocity')
    SCHEMA = {'symbol': 'Ros1Rm_msgsArm_Joint_Speed_Max',
     'type': 'rm_msgs/Arm_Joint_Speed_Max',
     'ros_version': 1,
     'native_type': 'rm_msgs/Arm_Joint_Speed_Max',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_3e8703dc738f06e4e9e3ce64446ef46706350439309eb78b54801c95846f547d',
     'minimum': 24,
     'maximum': 4568,
     'semantics': '',
     'fields': [{'name': 'header',
                 'type': 'std_msgs/Header',
                 'array': '',
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
                {'name': 'max_velocity',
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

REGISTRY.add(Ros1Rm_msgsArm_Joint_Speed_Max)

class Ros1Rm_msgsSoftwarebuildinfo(Record):
    """@brief Own all original rm_msgs/Softwarebuildinfo fields.
    @details 2 ordered fields; 8..520 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original build_time: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original version: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    __slots__ = ('build_time', 'version')
    SCHEMA = {'symbol': 'Ros1Rm_msgsSoftwarebuildinfo',
     'type': 'rm_msgs/Softwarebuildinfo',
     'ros_version': 1,
     'native_type': 'rm_msgs/Softwarebuildinfo',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_c6ee342c433ac29a8e2b2484b8e3d5071c8a37baf95b1fb59883f43b8d2e1ec5',
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

REGISTRY.add(Ros1Rm_msgsSoftwarebuildinfo)

class Ros1Rm_msgsArm_Softversion_v3(Record):
    """@brief Own all original rm_msgs/Arm_Softversion_v3 fields.
    @details 5 ordered fields; 28..1820 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original product_version: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original algorithm_info: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original ctrl_info: rm_msgs/Softwarebuildinfo, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original dynamic_info: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original plan_info: rm_msgs/Softwarebuildinfo, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('product_version', 'algorithm_info', 'ctrl_info', 'dynamic_info', 'plan_info')
    SCHEMA = {'symbol': 'Ros1Rm_msgsArm_Softversion_v3',
     'type': 'rm_msgs/Arm_Softversion_v3',
     'ros_version': 1,
     'native_type': 'rm_msgs/Arm_Softversion_v3',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_7965401d47a025c253634e60695689f086763ff15ed2a624c9219f67dc3bf394',
     'minimum': 28,
     'maximum': 1820,
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
                 'type': 'rm_msgs/Softwarebuildinfo',
                 'array': '',
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
                 'type': 'rm_msgs/Softwarebuildinfo',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros1Rm_msgsArm_Softversion_v3)

class Ros1Rm_msgsArm_Softversion_v4(Record):
    """@brief Own all original rm_msgs/Arm_Softversion_v4 fields.
    @details 6 ordered fields; 36..2340 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original product_version: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original controller_version: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original algorithm_info: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original ctrl_info: rm_msgs/Softwarebuildinfo, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original com_info: rm_msgs/Softwarebuildinfo, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original program_info: rm_msgs/Softwarebuildinfo, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('product_version',
     'controller_version',
     'algorithm_info',
     'ctrl_info',
     'com_info',
     'program_info')
    SCHEMA = {'symbol': 'Ros1Rm_msgsArm_Softversion_v4',
     'type': 'rm_msgs/Arm_Softversion_v4',
     'ros_version': 1,
     'native_type': 'rm_msgs/Arm_Softversion_v4',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_40f59f8af4a50464ab428e1246a58ca767b21950c19e7d565c9a2aea5bc95a0f',
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
                 'type': 'rm_msgs/Softwarebuildinfo',
                 'array': '',
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
                 'type': 'rm_msgs/Softwarebuildinfo',
                 'array': '',
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
                 'type': 'rm_msgs/Softwarebuildinfo',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros1Rm_msgsArm_Softversion_v4)

class Ros1Rm_msgsArm_Software_Version(Record):
    """@brief Own all original rm_msgs/Arm_Software_Version fields.
    @details 8 ordered fields; 48..3120 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original product_version: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original algorithm_info: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original ctrl_info: rm_msgs/Softwarebuildinfo, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original dynamic_info: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original plan_info: rm_msgs/Softwarebuildinfo, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original controller_version: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original com_info: rm_msgs/Softwarebuildinfo, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original program_info: rm_msgs/Softwarebuildinfo, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('product_version',
     'algorithm_info',
     'ctrl_info',
     'dynamic_info',
     'plan_info',
     'controller_version',
     'com_info',
     'program_info')
    SCHEMA = {'symbol': 'Ros1Rm_msgsArm_Software_Version',
     'type': 'rm_msgs/Arm_Software_Version',
     'ros_version': 1,
     'native_type': 'rm_msgs/Arm_Software_Version',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_73a8bbc2aae36edf9b7e16773c7c683e148f81269ed380e012d8a5e4cc79d5d5',
     'minimum': 48,
     'maximum': 3120,
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
                 'type': 'rm_msgs/Softwarebuildinfo',
                 'array': '',
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
                 'type': 'rm_msgs/Softwarebuildinfo',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
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
                {'name': 'com_info',
                 'type': 'rm_msgs/Softwarebuildinfo',
                 'array': '',
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
                 'type': 'rm_msgs/Softwarebuildinfo',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros1Rm_msgsArm_Software_Version)

class Ros1Rm_msgsCabinet(Record):
    """@brief Own all original rm_msgs/Cabinet fields.
    @details 4 ordered fields; 78..334 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original header: std_msgs/Header, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original pose: geometry_msgs/Pose, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original label: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original angle: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('header', 'pose', 'label', 'angle')
    SCHEMA = {'symbol': 'Ros1Rm_msgsCabinet',
     'type': 'rm_msgs/Cabinet',
     'ros_version': 1,
     'native_type': 'rm_msgs/Cabinet',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_c87786d2d26af9f8d138443f251c69d46f60b011db9abd3b3d4f80dca8e1babf',
     'minimum': 78,
     'maximum': 334,
     'semantics': '',
     'fields': [{'name': 'header',
                 'type': 'std_msgs/Header',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'pose',
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
                 'default': None},
                {'name': 'label',
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
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros1Rm_msgsCabinet)

class Ros1Rm_msgsCartePos(Record):
    """@brief Own all original rm_msgs/CartePos fields.
    @details 1 ordered fields; 56..56 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original Pose: geometry_msgs/Pose, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('Pose',)
    SCHEMA = {'symbol': 'Ros1Rm_msgsCartePos',
     'type': 'rm_msgs/CartePos',
     'ros_version': 1,
     'native_type': 'rm_msgs/CartePos',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_c57fa78db159ce841b371c7cad7490b2059aabfe9394776129ab3eab33b59ce9',
     'minimum': 56,
     'maximum': 56,
     'semantics': '',
     'fields': [{'name': 'Pose',
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

REGISTRY.add(Ros1Rm_msgsCartePos)

class Ros1Rm_msgsCartePosCustom(Record):
    """@brief Own all original rm_msgs/CartePosCustom fields.
    @details 4 ordered fields; 59..59 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original Pose: geometry_msgs/Pose, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original follow: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original trajectory_mode: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original radio: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('Pose', 'follow', 'trajectory_mode', 'radio')
    SCHEMA = {'symbol': 'Ros1Rm_msgsCartePosCustom',
     'type': 'rm_msgs/CartePosCustom',
     'ros_version': 1,
     'native_type': 'rm_msgs/CartePosCustom',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_747920217625df52e54b9f69ea1e7375e2945ef08c1a9243d7cf88429f6f871c',
     'minimum': 59,
     'maximum': 59,
     'semantics': '',
     'fields': [{'name': 'Pose',
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

REGISTRY.add(Ros1Rm_msgsCartePosCustom)

class Ros1Rm_msgsChangeTool_Name(Record):
    """@brief Own all original rm_msgs/ChangeTool_Name fields.
    @details 1 ordered fields; 4..260 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original toolname: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    __slots__ = ('toolname',)
    SCHEMA = {'symbol': 'Ros1Rm_msgsChangeTool_Name',
     'type': 'rm_msgs/ChangeTool_Name',
     'ros_version': 1,
     'native_type': 'rm_msgs/ChangeTool_Name',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_e911c349e53bcce70562585461a9da98a2db38e964dc743d6eb49b334f7f2314',
     'minimum': 4,
     'maximum': 260,
     'semantics': '',
     'fields': [{'name': 'toolname',
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

REGISTRY.add(Ros1Rm_msgsChangeTool_Name)

class Ros1Rm_msgsChangeTool_State(Record):
    """@brief Own all original rm_msgs/ChangeTool_State fields.
    @details 1 ordered fields; 1..1 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original state: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('state',)
    SCHEMA = {'symbol': 'Ros1Rm_msgsChangeTool_State',
     'type': 'rm_msgs/ChangeTool_State',
     'ros_version': 1,
     'native_type': 'rm_msgs/ChangeTool_State',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_dd7214855c8334d6c5098ec2da0fd3ee89d02d7b17ad83c58f0b28740b044b86',
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

REGISTRY.add(Ros1Rm_msgsChangeTool_State)

class Ros1Rm_msgsChangeWorkFrame_Name(Record):
    """@brief Own all original rm_msgs/ChangeWorkFrame_Name fields.
    @details 1 ordered fields; 4..260 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original WorkFrame_name: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    __slots__ = ('WorkFrame_name',)
    SCHEMA = {'symbol': 'Ros1Rm_msgsChangeWorkFrame_Name',
     'type': 'rm_msgs/ChangeWorkFrame_Name',
     'ros_version': 1,
     'native_type': 'rm_msgs/ChangeWorkFrame_Name',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_47a75a37f6777b0aee5ad12e298e07359d1ffcbd26e4fafe5efe5a98f757cbce',
     'minimum': 4,
     'maximum': 260,
     'semantics': '',
     'fields': [{'name': 'WorkFrame_name',
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

REGISTRY.add(Ros1Rm_msgsChangeWorkFrame_Name)

class Ros1Rm_msgsChangeWorkFrame_State(Record):
    """@brief Own all original rm_msgs/ChangeWorkFrame_State fields.
    @details 1 ordered fields; 1..1 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original state: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('state',)
    SCHEMA = {'symbol': 'Ros1Rm_msgsChangeWorkFrame_State',
     'type': 'rm_msgs/ChangeWorkFrame_State',
     'ros_version': 1,
     'native_type': 'rm_msgs/ChangeWorkFrame_State',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_d5b387f63fb4c309d83fbdb046a8c8a0e6678d60fb521139250f15e8e5a56856',
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

REGISTRY.add(Ros1Rm_msgsChangeWorkFrame_State)

class Ros1Rm_msgsErr(Record):
    """@brief Own all original rm_msgs/Err fields.
    @details 1 ordered fields; 4..36 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original err: uint16, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    __slots__ = ('err',)
    SCHEMA = {'symbol': 'Ros1Rm_msgsErr',
     'type': 'rm_msgs/Err',
     'ros_version': 1,
     'native_type': 'rm_msgs/Err',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_dec53c41ca46496e0ac25a56a15fc255aa369f59d7add914de365b18acff2117',
     'minimum': 4,
     'maximum': 36,
     'semantics': '',
     'fields': [{'name': 'err',
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
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros1Rm_msgsErr)

class Ros1Rm_msgsFlowchartrunstate(Record):
    """@brief Own all original rm_msgs/Flowchartrunstate fields.
    @details 6 ordered fields; 12..524 bytes.
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
    __slots__ = ('run_state', 'id', 'name', 'plan_speed', 'step_mode', 'modal_id')
    SCHEMA = {'symbol': 'Ros1Rm_msgsFlowchartrunstate',
     'type': 'rm_msgs/Flowchartrunstate',
     'ros_version': 1,
     'native_type': 'rm_msgs/Flowchartrunstate',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_deafa818f1cf99a33c9443d1880f5744f721ac3c07d583a00ed269569f07e030',
     'minimum': 12,
     'maximum': 524,
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
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros1Rm_msgsFlowchartrunstate)

class Ros1Rm_msgsForce_Position_Move_Joint(Record):
    """@brief Own all original rm_msgs/Force_Position_Move_Joint fields.
    @details 6 ordered fields; 10..74 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original joint: float32, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    # @brief Original sensor: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original mode: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original dir: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original force: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original dof: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('joint', 'sensor', 'mode', 'dir', 'force', 'dof')
    SCHEMA = {'symbol': 'Ros1Rm_msgsForce_Position_Move_Joint',
     'type': 'rm_msgs/Force_Position_Move_Joint',
     'ros_version': 1,
     'native_type': 'rm_msgs/Force_Position_Move_Joint',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_40252f1cf60424f32d01c870d44e286a0138883d8db1302ffdbbe0300e38cd39',
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

REGISTRY.add(Ros1Rm_msgsForce_Position_Move_Joint)

class Ros1Rm_msgsForce_Position_Move_Pose(Record):
    """@brief Own all original rm_msgs/Force_Position_Move_Pose fields.
    @details 5 ordered fields; 61..61 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original Pose: geometry_msgs/Pose, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original sensor: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original mode: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original dir: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original force: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('Pose', 'sensor', 'mode', 'dir', 'force')
    SCHEMA = {'symbol': 'Ros1Rm_msgsForce_Position_Move_Pose',
     'type': 'rm_msgs/Force_Position_Move_Pose',
     'ros_version': 1,
     'native_type': 'rm_msgs/Force_Position_Move_Pose',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_6397e7691e6a886b0ec77927e87229edf7c7c4b3164e64e4898813d240206f02',
     'minimum': 61,
     'maximum': 61,
     'semantics': '',
     'fields': [{'name': 'Pose',
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
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros1Rm_msgsForce_Position_Move_Pose)

class Ros1Rm_msgsForce_Position_Move_Pose_Custom(Record):
    """@brief Own all original rm_msgs/Force_Position_Move_Pose_Custom fields.
    @details 8 ordered fields; 64..64 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original Pose: geometry_msgs/Pose, scalar.
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
    # @brief Original trajectory_mode: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original radio: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('Pose', 'sensor', 'mode', 'dir', 'force', 'follow', 'trajectory_mode', 'radio')
    SCHEMA = {'symbol': 'Ros1Rm_msgsForce_Position_Move_Pose_Custom',
     'type': 'rm_msgs/Force_Position_Move_Pose_Custom',
     'ros_version': 1,
     'native_type': 'rm_msgs/Force_Position_Move_Pose_Custom',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_85e4ff181a274b8e87937ae0eaa56b94de2b7d524caf3f6fc89c0d33a487c1bd',
     'minimum': 64,
     'maximum': 64,
     'semantics': '',
     'fields': [{'name': 'Pose',
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

REGISTRY.add(Ros1Rm_msgsForce_Position_Move_Pose_Custom)

class Ros1Rm_msgsForce_Position_State(Record):
    """@brief Own all original rm_msgs/Force_Position_State fields.
    @details 4 ordered fields; 11..75 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original joint: float32, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    # @brief Original force: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original arm_err: uint16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original dof: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('joint', 'force', 'arm_err', 'dof')
    SCHEMA = {'symbol': 'Ros1Rm_msgsForce_Position_State',
     'type': 'rm_msgs/Force_Position_State',
     'ros_version': 1,
     'native_type': 'rm_msgs/Force_Position_State',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_8b817fc0422a9dcfc91e51ade9e0fc9d1d44ed315d9b813eaf88cf88d889b367',
     'minimum': 11,
     'maximum': 75,
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

REGISTRY.add(Ros1Rm_msgsForce_Position_State)

class Ros1Rm_msgsGetArmState_Command(Record):
    """@brief Own all original rm_msgs/GetArmState_Command fields.
    @details 1 ordered fields; 4..260 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original command: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    __slots__ = ('command',)
    SCHEMA = {'symbol': 'Ros1Rm_msgsGetArmState_Command',
     'type': 'rm_msgs/GetArmState_Command',
     'ros_version': 1,
     'native_type': 'rm_msgs/GetArmState_Command',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_ae8d3621dd3742fc96f2dd06907f546f1def2e1d91cb2b652d4f7fc499755d4b',
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

REGISTRY.add(Ros1Rm_msgsGetArmState_Command)

class Ros1Rm_msgsGet_TCP_Master_List_Param(Record):
    """@brief Own all original rm_msgs/Get_TCP_Master_List_Param fields.
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
    SCHEMA = {'symbol': 'Ros1Rm_msgsGet_TCP_Master_List_Param',
     'type': 'rm_msgs/Get_TCP_Master_List_Param',
     'ros_version': 1,
     'native_type': 'rm_msgs/Get_TCP_Master_List_Param',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_8a8b20ec793a537927ce7190694ca820648b6492822a8284e2e072ea68a2ad00',
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

REGISTRY.add(Ros1Rm_msgsGet_TCP_Master_List_Param)

class Ros1Rm_msgsGettrajectorylist(Record):
    """@brief Own all original rm_msgs/Gettrajectorylist fields.
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
    SCHEMA = {'symbol': 'Ros1Rm_msgsGettrajectorylist',
     'type': 'rm_msgs/Gettrajectorylist',
     'ros_version': 1,
     'native_type': 'rm_msgs/Gettrajectorylist',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_da19e810ea29adcd43132897a49c6445e61cd18d1f06783162857b25b8c2cbe0',
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

REGISTRY.add(Ros1Rm_msgsGettrajectorylist)

class Ros1Rm_msgsGripper_Pick(Record):
    """@brief Own all original rm_msgs/Gripper_Pick fields.
    @details 2 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original speed: uint16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original force: uint16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('speed', 'force')
    SCHEMA = {'symbol': 'Ros1Rm_msgsGripper_Pick',
     'type': 'rm_msgs/Gripper_Pick',
     'ros_version': 1,
     'native_type': 'rm_msgs/Gripper_Pick',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_cd54942d53ad8167aaa7f2cfe1d0d4e6ad1092d015d59deff29080fa70a9a7a9',
     'minimum': 4,
     'maximum': 4,
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
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros1Rm_msgsGripper_Pick)

class Ros1Rm_msgsGripper_Set(Record):
    """@brief Own all original rm_msgs/Gripper_Set fields.
    @details 1 ordered fields; 2..2 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original position: uint16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('position',)
    SCHEMA = {'symbol': 'Ros1Rm_msgsGripper_Set',
     'type': 'rm_msgs/Gripper_Set',
     'ros_version': 1,
     'native_type': 'rm_msgs/Gripper_Set',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_6095cdd3c0ac57ed78df3676ecc946e6cdc6ff48404dc7f205e1da3efeecabe3',
     'minimum': 2,
     'maximum': 2,
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
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros1Rm_msgsGripper_Set)

class Ros1Rm_msgsHand_Angle(Record):
    """@brief Own all original rm_msgs/Hand_Angle fields.
    @details 2 ordered fields; 13..13 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original hand_angle: int16, array.
    # @details Count/quota 6; string byte bound 0; caller owns storage.
    # @brief Original block: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('hand_angle', 'block')
    SCHEMA = {'symbol': 'Ros1Rm_msgsHand_Angle',
     'type': 'rm_msgs/Hand_Angle',
     'ros_version': 1,
     'native_type': 'rm_msgs/Hand_Angle',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_9d1bf1c63d0cd9feae75492e0610bd9f261bef5d9b774f042534ac5ff6b2ba48',
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

REGISTRY.add(Ros1Rm_msgsHand_Angle)

class Ros1Rm_msgsHand_Force(Record):
    """@brief Own all original rm_msgs/Hand_Force fields.
    @details 1 ordered fields; 2..2 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original hand_force: uint16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('hand_force',)
    SCHEMA = {'symbol': 'Ros1Rm_msgsHand_Force',
     'type': 'rm_msgs/Hand_Force',
     'ros_version': 1,
     'native_type': 'rm_msgs/Hand_Force',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_530176ac18800838e1648e67dbc6f4ca83101e333adcae1b44dbf749ffafd71c',
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

REGISTRY.add(Ros1Rm_msgsHand_Force)

class Ros1Rm_msgsHand_Posture(Record):
    """@brief Own all original rm_msgs/Hand_Posture fields.
    @details 2 ordered fields; 3..3 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original posture_num: uint16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original block: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('posture_num', 'block')
    SCHEMA = {'symbol': 'Ros1Rm_msgsHand_Posture',
     'type': 'rm_msgs/Hand_Posture',
     'ros_version': 1,
     'native_type': 'rm_msgs/Hand_Posture',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_0272a7a2465f613518f7bbcce5f31395faebe4b7f54c77bed3a076f0b9eb5785',
     'minimum': 3,
     'maximum': 3,
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
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros1Rm_msgsHand_Posture)

class Ros1Rm_msgsHand_Seq(Record):
    """@brief Own all original rm_msgs/Hand_Seq fields.
    @details 2 ordered fields; 3..3 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original seq_num: uint16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original block: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('seq_num', 'block')
    SCHEMA = {'symbol': 'Ros1Rm_msgsHand_Seq',
     'type': 'rm_msgs/Hand_Seq',
     'ros_version': 1,
     'native_type': 'rm_msgs/Hand_Seq',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_f6fa34fdf69af4115af9d275026c35614ececda0084ac45bee579bae43f2d3f0',
     'minimum': 3,
     'maximum': 3,
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
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros1Rm_msgsHand_Seq)

class Ros1Rm_msgsHand_Speed(Record):
    """@brief Own all original rm_msgs/Hand_Speed fields.
    @details 1 ordered fields; 2..2 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original hand_speed: uint16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('hand_speed',)
    SCHEMA = {'symbol': 'Ros1Rm_msgsHand_Speed',
     'type': 'rm_msgs/Hand_Speed',
     'ros_version': 1,
     'native_type': 'rm_msgs/Hand_Speed',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_f21faf03c07ab57120835321e699b27ec6f86e462930e83499bef2a155f827ca',
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

REGISTRY.add(Ros1Rm_msgsHand_Speed)

class Ros1Rm_msgsHand_Status(Record):
    """@brief Own all original rm_msgs/Hand_Status fields.
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
    SCHEMA = {'symbol': 'Ros1Rm_msgsHand_Status',
     'type': 'rm_msgs/Hand_Status',
     'ros_version': 1,
     'native_type': 'rm_msgs/Hand_Status',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_2ff89c76aa0fc5924535b7de55609d74847aac91fc2ab8145ec7b8d958260ad8',
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

REGISTRY.add(Ros1Rm_msgsHand_Status)

class Ros1Rm_msgsIO_Update(Record):
    """@brief Own all original rm_msgs/IO_Update fields.
    @details 1 ordered fields; 1..1 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original type: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('type',)
    SCHEMA = {'symbol': 'Ros1Rm_msgsIO_Update',
     'type': 'rm_msgs/IO_Update',
     'ros_version': 1,
     'native_type': 'rm_msgs/IO_Update',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_6941f85ba773344ca73a917cfef68d8a6a99f67ff76bdf6eea4b9b1a7d1ddba7',
     'minimum': 1,
     'maximum': 1,
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
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros1Rm_msgsIO_Update)

class Ros1Rm_msgsJointPos(Record):
    """@brief Own all original rm_msgs/JointPos fields.
    @details 2 ordered fields; 8..72 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original joint: float32, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    # @brief Original expand: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('joint', 'expand')
    SCHEMA = {'symbol': 'Ros1Rm_msgsJointPos',
     'type': 'rm_msgs/JointPos',
     'ros_version': 1,
     'native_type': 'rm_msgs/JointPos',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_55bb4d07f6901dfd381902cb71f0bfa8bb2e34b70e7c8cae455b68a8b57e5623',
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
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros1Rm_msgsJointPos)

class Ros1Rm_msgsJointPosCustom(Record):
    """@brief Own all original rm_msgs/JointPosCustom fields.
    @details 5 ordered fields; 11..75 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original joint: float32, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    # @brief Original expand: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original follow: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original trajectory_mode: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original radio: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('joint', 'expand', 'follow', 'trajectory_mode', 'radio')
    SCHEMA = {'symbol': 'Ros1Rm_msgsJointPosCustom',
     'type': 'rm_msgs/JointPosCustom',
     'ros_version': 1,
     'native_type': 'rm_msgs/JointPosCustom',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_d4935ad5910358dea6a8902e472c01f413574a5db91a57e4e54dee65a0bac676',
     'minimum': 11,
     'maximum': 75,
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

REGISTRY.add(Ros1Rm_msgsJointPosCustom)

class Ros1Rm_msgsJoint_Current(Record):
    """@brief Own all original rm_msgs/Joint_Current fields.
    @details 1 ordered fields; 4..68 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original joint_current: float32, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    __slots__ = ('joint_current',)
    SCHEMA = {'symbol': 'Ros1Rm_msgsJoint_Current',
     'type': 'rm_msgs/Joint_Current',
     'ros_version': 1,
     'native_type': 'rm_msgs/Joint_Current',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_bc39b37164a42e1937db5e4404b2a9c869083a3b81e84f5d7beb34de93e04b7c',
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

REGISTRY.add(Ros1Rm_msgsJoint_Current)

class Ros1Rm_msgsJoint_En_Flag(Record):
    """@brief Own all original rm_msgs/Joint_En_Flag fields.
    @details 1 ordered fields; 4..20 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original joint_en_flag: bool, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    __slots__ = ('joint_en_flag',)
    SCHEMA = {'symbol': 'Ros1Rm_msgsJoint_En_Flag',
     'type': 'rm_msgs/Joint_En_Flag',
     'ros_version': 1,
     'native_type': 'rm_msgs/Joint_En_Flag',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_a5fc892ad2eb36348a3b49588393c82773299a8f7a8d73079c338864430e58b8',
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

REGISTRY.add(Ros1Rm_msgsJoint_En_Flag)

class Ros1Rm_msgsJoint_Enable(Record):
    """@brief Own all original rm_msgs/Joint_Enable fields.
    @details 2 ordered fields; 2..2 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original joint_num: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original state: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('joint_num', 'state')
    SCHEMA = {'symbol': 'Ros1Rm_msgsJoint_Enable',
     'type': 'rm_msgs/Joint_Enable',
     'ros_version': 1,
     'native_type': 'rm_msgs/Joint_Enable',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_0b54d5338f0c38491ecf9f0e9e6d7963384f45666ee235b18ae24649fa99bfb6',
     'minimum': 2,
     'maximum': 2,
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

REGISTRY.add(Ros1Rm_msgsJoint_Enable)

class Ros1Rm_msgsJoint_Error_Code(Record):
    """@brief Own all original rm_msgs/Joint_Error_Code fields.
    @details 1 ordered fields; 4..36 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original joint_error: uint16, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    __slots__ = ('joint_error',)
    SCHEMA = {'symbol': 'Ros1Rm_msgsJoint_Error_Code',
     'type': 'rm_msgs/Joint_Error_Code',
     'ros_version': 1,
     'native_type': 'rm_msgs/Joint_Error_Code',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_76bc10f3795648437b5021e1a3b7087d11dc1d85ddb429f6f3c87c7f00bed361',
     'minimum': 4,
     'maximum': 36,
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
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros1Rm_msgsJoint_Error_Code)

class Ros1Rm_msgsJoint_Max_Speed(Record):
    """@brief Own all original rm_msgs/Joint_Max_Speed fields.
    @details 2 ordered fields; 5..5 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original joint_num: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original joint_max_speed: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('joint_num', 'joint_max_speed')
    SCHEMA = {'symbol': 'Ros1Rm_msgsJoint_Max_Speed',
     'type': 'rm_msgs/Joint_Max_Speed',
     'ros_version': 1,
     'native_type': 'rm_msgs/Joint_Max_Speed',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_808b0661dec52a0bb942426d3cff85fa3cd025ea5e18efde14b7c3cbf12212fb',
     'minimum': 5,
     'maximum': 5,
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
                 'default': None},
                {'name': 'joint_max_speed',
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

REGISTRY.add(Ros1Rm_msgsJoint_Max_Speed)

class Ros1Rm_msgsJoint_PoseEuler(Record):
    """@brief Own all original rm_msgs/Joint_PoseEuler fields.
    @details 2 ordered fields; 24..24 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original euler: float32, array.
    # @details Count/quota 3; string byte bound 0; caller owns storage.
    # @brief Original position: float32, array.
    # @details Count/quota 3; string byte bound 0; caller owns storage.
    __slots__ = ('euler', 'position')
    SCHEMA = {'symbol': 'Ros1Rm_msgsJoint_PoseEuler',
     'type': 'rm_msgs/Joint_PoseEuler',
     'ros_version': 1,
     'native_type': 'rm_msgs/Joint_PoseEuler',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_5145fe7bbcebd72b80dbb5b09cb8e736049951d5c8011af97a05bfaccd1638e1',
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

REGISTRY.add(Ros1Rm_msgsJoint_PoseEuler)

class Ros1Rm_msgsJoint_Speed(Record):
    """@brief Own all original rm_msgs/Joint_Speed fields.
    @details 1 ordered fields; 4..68 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original joint_speed: float32, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    __slots__ = ('joint_speed',)
    SCHEMA = {'symbol': 'Ros1Rm_msgsJoint_Speed',
     'type': 'rm_msgs/Joint_Speed',
     'ros_version': 1,
     'native_type': 'rm_msgs/Joint_Speed',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_fbc6add09d420c1cf11af125de1f13a40586dca5e374bd8cd970289468e6140f',
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

REGISTRY.add(Ros1Rm_msgsJoint_Speed)

class Ros1Rm_msgsJoint_Step(Record):
    """@brief Own all original rm_msgs/Joint_Step fields.
    @details 3 ordered fields; 9..9 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original joint_num: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original step_angle: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original speed: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('joint_num', 'step_angle', 'speed')
    SCHEMA = {'symbol': 'Ros1Rm_msgsJoint_Step',
     'type': 'rm_msgs/Joint_Step',
     'ros_version': 1,
     'native_type': 'rm_msgs/Joint_Step',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_2f8f1683b5b2734e9fc105f61ed848e905a33abeb9e5f09028ea834991d4000b',
     'minimum': 9,
     'maximum': 9,
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
                 'default': None},
                {'name': 'step_angle',
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
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros1Rm_msgsJoint_Step)

class Ros1Rm_msgsJoint_Teach(Record):
    """@brief Own all original rm_msgs/Joint_Teach fields.
    @details 3 ordered fields; 8..264 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original teach_joint: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original direction: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original v: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('teach_joint', 'direction', 'v')
    SCHEMA = {'symbol': 'Ros1Rm_msgsJoint_Teach',
     'type': 'rm_msgs/Joint_Teach',
     'ros_version': 1,
     'native_type': 'rm_msgs/Joint_Teach',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_6191ef24dc181055dd0fb597fec470a8b583791e0a67edd14f3eb7a6fdac1717',
     'minimum': 8,
     'maximum': 264,
     'semantics': '',
     'fields': [{'name': 'teach_joint',
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
                {'name': 'direction',
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
                {'name': 'v',
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

REGISTRY.add(Ros1Rm_msgsJoint_Teach)

class Ros1Rm_msgsJoint_Temperature(Record):
    """@brief Own all original rm_msgs/Joint_Temperature fields.
    @details 1 ordered fields; 4..68 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original joint_temperature: float32, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    __slots__ = ('joint_temperature',)
    SCHEMA = {'symbol': 'Ros1Rm_msgsJoint_Temperature',
     'type': 'rm_msgs/Joint_Temperature',
     'ros_version': 1,
     'native_type': 'rm_msgs/Joint_Temperature',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_6c3dd6374ed98e575b6e4db3a15691bdde6e174c9aa6e15ce5d2ada37e79507e',
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

REGISTRY.add(Ros1Rm_msgsJoint_Temperature)

class Ros1Rm_msgsJoint_Voltage(Record):
    """@brief Own all original rm_msgs/Joint_Voltage fields.
    @details 1 ordered fields; 4..68 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original joint_voltage: float32, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    __slots__ = ('joint_voltage',)
    SCHEMA = {'symbol': 'Ros1Rm_msgsJoint_Voltage',
     'type': 'rm_msgs/Joint_Voltage',
     'ros_version': 1,
     'native_type': 'rm_msgs/Joint_Voltage',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_45e56529f780d399f86c70e4303dc63e49760f1247124a866d7830a656bf830d',
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

REGISTRY.add(Ros1Rm_msgsJoint_Voltage)

class Ros1Rm_msgsJointversion(Record):
    """@brief Own all original rm_msgs/Jointversion fields.
    @details 1 ordered fields; 28..1820 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original joint_version: string, array.
    # @details Count/quota 7; string byte bound 256; caller owns storage.
    __slots__ = ('joint_version',)
    SCHEMA = {'symbol': 'Ros1Rm_msgsJointversion',
     'type': 'rm_msgs/Jointversion',
     'ros_version': 1,
     'native_type': 'rm_msgs/Jointversion',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_e49b2595327fcedf6a8a15f690deac2f4809eefb25957cf2c0ac9d7117579e1e',
     'minimum': 28,
     'maximum': 1820,
     'semantics': '',
     'fields': [{'name': 'joint_version',
                 'type': 'string',
                 'array': 'array',
                 'count': 7,
                 'string_bound': 256,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros1Rm_msgsJointversion)

class Ros1Rm_msgsLiftState(Record):
    """@brief Own all original rm_msgs/LiftState fields.
    @details 4 ordered fields; 7..7 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original height: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original current: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original err_flag: uint16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original mode: int8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('height', 'current', 'err_flag', 'mode')
    SCHEMA = {'symbol': 'Ros1Rm_msgsLiftState',
     'type': 'rm_msgs/LiftState',
     'ros_version': 1,
     'native_type': 'rm_msgs/LiftState',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_c09f03491729bb1f271578da29f8b68fba3da3e57a3b15dc1c835373d2406aea',
     'minimum': 7,
     'maximum': 7,
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
                 'type': 'int8',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': 'byte',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros1Rm_msgsLiftState)

class Ros1Rm_msgsLift_Height(Record):
    """@brief Own all original rm_msgs/Lift_Height fields.
    @details 2 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original height: uint16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original speed: uint16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('height', 'speed')
    SCHEMA = {'symbol': 'Ros1Rm_msgsLift_Height',
     'type': 'rm_msgs/Lift_Height',
     'ros_version': 1,
     'native_type': 'rm_msgs/Lift_Height',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_91f1e27a75ec4d5b8e9a677e5a3eb0493cc19067019121a2d6397a87ebff5c61',
     'minimum': 4,
     'maximum': 4,
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
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros1Rm_msgsLift_Height)

class Ros1Rm_msgsLift_In_Position(Record):
    """@brief Own all original rm_msgs/Lift_In_Position fields.
    @details 4 ordered fields; 7..263 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original device: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original state: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original trajectory_connect: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original trajectory_state: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('device', 'state', 'trajectory_connect', 'trajectory_state')
    SCHEMA = {'symbol': 'Ros1Rm_msgsLift_In_Position',
     'type': 'rm_msgs/Lift_In_Position',
     'ros_version': 1,
     'native_type': 'rm_msgs/Lift_In_Position',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_eeb51df403cc708bf439f6a54b6d010981ad3d7919fd1d6cea84a77935ced787',
     'minimum': 7,
     'maximum': 263,
     'semantics': '',
     'fields': [{'name': 'device',
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
                {'name': 'trajectory_state',
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

REGISTRY.add(Ros1Rm_msgsLift_In_Position)

class Ros1Rm_msgsLift_Speed(Record):
    """@brief Own all original rm_msgs/Lift_Speed fields.
    @details 1 ordered fields; 2..2 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original speed: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('speed',)
    SCHEMA = {'symbol': 'Ros1Rm_msgsLift_Speed',
     'type': 'rm_msgs/Lift_Speed',
     'ros_version': 1,
     'native_type': 'rm_msgs/Lift_Speed',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_19aa9a2cffa38998503715ba68a5281d58933a12b16e1a2bfca7c8f96dcca0a8',
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

REGISTRY.add(Ros1Rm_msgsLift_Speed)

class Ros1Rm_msgsManual_Set_Force_Pose(Record):
    """@brief Own all original rm_msgs/Manual_Set_Force_Pose fields.
    @details 2 ordered fields; 8..392 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original pose: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original joint: int64, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    __slots__ = ('pose', 'joint')
    SCHEMA = {'symbol': 'Ros1Rm_msgsManual_Set_Force_Pose',
     'type': 'rm_msgs/Manual_Set_Force_Pose',
     'ros_version': 1,
     'native_type': 'rm_msgs/Manual_Set_Force_Pose',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_215450b7ec8f49bc87aea83627cc98d887c29b3a3c6377eee217d64eac2f3ea0',
     'minimum': 8,
     'maximum': 392,
     'semantics': '',
     'fields': [{'name': 'pose',
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
                {'name': 'joint',
                 'type': 'int64',
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

REGISTRY.add(Ros1Rm_msgsManual_Set_Force_Pose)

class Ros1Rm_msgsMastername(Record):
    """@brief Own all original rm_msgs/Mastername fields.
    @details 1 ordered fields; 4..260 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original master_name: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    __slots__ = ('master_name',)
    SCHEMA = {'symbol': 'Ros1Rm_msgsMastername',
     'type': 'rm_msgs/Mastername',
     'ros_version': 1,
     'native_type': 'rm_msgs/Mastername',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_a10623bdcabd2f64e702b69c6549bdb219796e9516dc9cf505070036353cc59f',
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

REGISTRY.add(Ros1Rm_msgsMastername)

class Ros1Rm_msgsModbusreaddata(Record):
    """@brief Own all original rm_msgs/Modbusreaddata fields.
    @details 1 ordered fields; 4..68 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original read_data: int32, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    __slots__ = ('read_data',)
    SCHEMA = {'symbol': 'Ros1Rm_msgsModbusreaddata',
     'type': 'rm_msgs/Modbusreaddata',
     'ros_version': 1,
     'native_type': 'rm_msgs/Modbusreaddata',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_107972f1e16052d7b327932447d7d704c7888041f715105f30a416fbf429dd20',
     'minimum': 4,
     'maximum': 68,
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
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros1Rm_msgsModbusreaddata)

class Ros1Rm_msgsModbustcpmasterinfo(Record):
    """@brief Own all original rm_msgs/Modbustcpmasterinfo fields.
    @details 3 ordered fields; 12..524 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original master_name: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original ip: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original port: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('master_name', 'ip', 'port')
    SCHEMA = {'symbol': 'Ros1Rm_msgsModbustcpmasterinfo',
     'type': 'rm_msgs/Modbustcpmasterinfo',
     'ros_version': 1,
     'native_type': 'rm_msgs/Modbustcpmasterinfo',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_7f45c814efbc1268c68b7955f3c077f319f46ba4dc532f36914ccd3c55420680',
     'minimum': 12,
     'maximum': 524,
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
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros1Rm_msgsModbustcpmasterinfo)

class Ros1Rm_msgsModbustcpmasterlist(Record):
    """@brief Own all original rm_msgs/Modbustcpmasterlist fields.
    @details 1 ordered fields; 4..8388 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original master_list: rm_msgs/Modbustcpmasterinfo, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    __slots__ = ('master_list',)
    SCHEMA = {'symbol': 'Ros1Rm_msgsModbustcpmasterlist',
     'type': 'rm_msgs/Modbustcpmasterlist',
     'ros_version': 1,
     'native_type': 'rm_msgs/Modbustcpmasterlist',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_a656fe16126d96dc7de6bdb80d60087d9ceb3f2680e403437283a1eaee3b5eb1',
     'minimum': 4,
     'maximum': 8388,
     'semantics': '',
     'fields': [{'name': 'master_list',
                 'type': 'rm_msgs/Modbustcpmasterinfo',
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

REGISTRY.add(Ros1Rm_msgsModbustcpmasterlist)

class Ros1Rm_msgsMoveC(Record):
    """@brief Own all original rm_msgs/MoveC fields.
    @details 5 ordered fields; 119..119 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original Mid_Pose: geometry_msgs/Pose, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original End_Pose: geometry_msgs/Pose, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original speed: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original loop: uint16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original trajectory_connect: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('Mid_Pose', 'End_Pose', 'speed', 'loop', 'trajectory_connect')
    SCHEMA = {'symbol': 'Ros1Rm_msgsMoveC',
     'type': 'rm_msgs/MoveC',
     'ros_version': 1,
     'native_type': 'rm_msgs/MoveC',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_a7c9838edb369a30428d4225ce45305e72ddd5a9a315147dfa47288e3a367a69',
     'minimum': 119,
     'maximum': 119,
     'semantics': '',
     'fields': [{'name': 'Mid_Pose',
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
                 'default': None},
                {'name': 'End_Pose',
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
                 'default': None},
                {'name': 'speed',
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
                {'name': 'loop',
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
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros1Rm_msgsMoveC)

class Ros1Rm_msgsMoveJ(Record):
    """@brief Own all original rm_msgs/MoveJ fields.
    @details 3 ordered fields; 9..73 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original joint: float32, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    # @brief Original speed: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original trajectory_connect: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('joint', 'speed', 'trajectory_connect')
    SCHEMA = {'symbol': 'Ros1Rm_msgsMoveJ',
     'type': 'rm_msgs/MoveJ',
     'ros_version': 1,
     'native_type': 'rm_msgs/MoveJ',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_b06164ba46d0b515ea1b853f6e91af08ac358839fef3174797ba097b2f4a0d93',
     'minimum': 9,
     'maximum': 73,
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
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros1Rm_msgsMoveJ)

class Ros1Rm_msgsMoveJ_P(Record):
    """@brief Own all original rm_msgs/MoveJ_P fields.
    @details 3 ordered fields; 61..61 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original Pose: geometry_msgs/Pose, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original speed: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original trajectory_connect: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('Pose', 'speed', 'trajectory_connect')
    SCHEMA = {'symbol': 'Ros1Rm_msgsMoveJ_P',
     'type': 'rm_msgs/MoveJ_P',
     'ros_version': 1,
     'native_type': 'rm_msgs/MoveJ_P',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_e2f03dd50bed12ea4e61705e6cb09bfb224e8dd92b02a0bacf3dfeb253f72b65',
     'minimum': 61,
     'maximum': 61,
     'semantics': '',
     'fields': [{'name': 'Pose',
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
                 'default': None},
                {'name': 'speed',
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
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros1Rm_msgsMoveJ_P)

class Ros1Rm_msgsMoveL(Record):
    """@brief Own all original rm_msgs/MoveL fields.
    @details 3 ordered fields; 61..61 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original Pose: geometry_msgs/Pose, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original speed: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original trajectory_connect: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('Pose', 'speed', 'trajectory_connect')
    SCHEMA = {'symbol': 'Ros1Rm_msgsMoveL',
     'type': 'rm_msgs/MoveL',
     'ros_version': 1,
     'native_type': 'rm_msgs/MoveL',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_2816f8d5ff4be8578d2dfa17425b165a4263456573dfd23ade5bd679a685cd49',
     'minimum': 61,
     'maximum': 61,
     'semantics': '',
     'fields': [{'name': 'Pose',
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
                 'default': None},
                {'name': 'speed',
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
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros1Rm_msgsMoveL)

class Ros1Rm_msgsMoveloffset(Record):
    """@brief Own all original rm_msgs/Moveloffset fields.
    @details 6 ordered fields; 67..67 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original offset: geometry_msgs/Pose, scalar.
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
    __slots__ = ('offset', 'speed', 'r', 'trajectory_connect', 'frame_type', 'block')
    SCHEMA = {'symbol': 'Ros1Rm_msgsMoveloffset',
     'type': 'rm_msgs/Moveloffset',
     'ros_version': 1,
     'native_type': 'rm_msgs/Moveloffset',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_886f3c1a20875ee75df0a4e50fd4dd0c3ec47ffd7bc3f868ac90ad9e7f0dec28',
     'minimum': 67,
     'maximum': 67,
     'semantics': '',
     'fields': [{'name': 'offset',
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

REGISTRY.add(Ros1Rm_msgsMoveloffset)

class Ros1Rm_msgsOrt_Teach(Record):
    """@brief Own all original rm_msgs/Ort_Teach fields.
    @details 3 ordered fields; 10..522 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original teach_type: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original direction: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original v: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('teach_type', 'direction', 'v')
    SCHEMA = {'symbol': 'Ros1Rm_msgsOrt_Teach',
     'type': 'rm_msgs/Ort_Teach',
     'ros_version': 1,
     'native_type': 'rm_msgs/Ort_Teach',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_42dfe53597ed6f1ba5ffaa6042babc85f1a5ff43e2880f2c6fb383211ebed497',
     'minimum': 10,
     'maximum': 522,
     'semantics': '',
     'fields': [{'name': 'teach_type',
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
                {'name': 'direction',
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
                {'name': 'v',
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

REGISTRY.add(Ros1Rm_msgsOrt_Teach)

class Ros1Rm_msgsPlan_State(Record):
    """@brief Own all original rm_msgs/Plan_State fields.
    @details 1 ordered fields; 1..1 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original state: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('state',)
    SCHEMA = {'symbol': 'Ros1Rm_msgsPlan_State',
     'type': 'rm_msgs/Plan_State',
     'ros_version': 1,
     'native_type': 'rm_msgs/Plan_State',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_a9ac3bd0f8c096d42c8a5852fb71d9aac18315645cf0fb4669c38d6371fb2ba9',
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

REGISTRY.add(Ros1Rm_msgsPlan_State)

class Ros1Rm_msgsPos_Teach(Record):
    """@brief Own all original rm_msgs/Pos_Teach fields.
    @details 3 ordered fields; 10..522 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original teach_type: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original direction: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original v: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('teach_type', 'direction', 'v')
    SCHEMA = {'symbol': 'Ros1Rm_msgsPos_Teach',
     'type': 'rm_msgs/Pos_Teach',
     'ros_version': 1,
     'native_type': 'rm_msgs/Pos_Teach',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_6cf8ac67bafa4470a0a338053f3bef98e6c4c97cc508fbade9ebe590e4bf691a',
     'minimum': 10,
     'maximum': 522,
     'semantics': '',
     'fields': [{'name': 'teach_type',
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
                {'name': 'direction',
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
                {'name': 'v',
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

REGISTRY.add(Ros1Rm_msgsPos_Teach)

class Ros1Rm_msgsProgramrunstate(Record):
    """@brief Own all original rm_msgs/Programrunstate fields.
    @details 9 ordered fields; 36..164 bytes.
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
    __slots__ = ('run_state',
     'id',
     'edit_id',
     'plan_num',
     'total_loop',
     'step_mode',
     'plan_speed',
     'loop_num',
     'loop_cont')
    SCHEMA = {'symbol': 'Ros1Rm_msgsProgramrunstate',
     'type': 'rm_msgs/Programrunstate',
     'ros_version': 1,
     'native_type': 'rm_msgs/Programrunstate',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_33f9f3bf9c238c3b304fdb6f8394ff1efd76d312dafb908a2e39260dadd1434a',
     'minimum': 36,
     'maximum': 164,
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
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros1Rm_msgsProgramrunstate)

class Ros1Rm_msgsRS485_Mode(Record):
    """@brief Own all original rm_msgs/RS485_Mode fields.
    @details 4 ordered fields; 10..10 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original controller_RS485_mode: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original tool_RS485_mode: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original baudrate: uint32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original modbus_timeout: uint32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('controller_RS485_mode', 'tool_RS485_mode', 'baudrate', 'modbus_timeout')
    SCHEMA = {'symbol': 'Ros1Rm_msgsRS485_Mode',
     'type': 'rm_msgs/RS485_Mode',
     'ros_version': 1,
     'native_type': 'rm_msgs/RS485_Mode',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_47bf8f6bb74160b4acfea2fe14a2d75f35a0232f11419cda7c0d2333aab31424',
     'minimum': 10,
     'maximum': 10,
     'semantics': '',
     'fields': [{'name': 'controller_RS485_mode',
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
                {'name': 'tool_RS485_mode',
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
                {'name': 'baudrate',
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
                {'name': 'modbus_timeout',
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

REGISTRY.add(Ros1Rm_msgsRS485_Mode)

class Ros1Rm_msgsRS485params(Record):
    """@brief Own all original rm_msgs/RS485params fields.
    @details 2 ordered fields; 8..8 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original mode: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original baudrate: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('mode', 'baudrate')
    SCHEMA = {'symbol': 'Ros1Rm_msgsRS485params',
     'type': 'rm_msgs/RS485params',
     'ros_version': 1,
     'native_type': 'rm_msgs/RS485params',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_7c8cce477352cfa8e2647042f8734dad2ed44aa35f51701d528cd0d9931f4eec',
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
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros1Rm_msgsRS485params)

class Ros1Rm_msgsRead_ModbusRTU(Record):
    """@brief Own all original rm_msgs/Read_ModbusRTU fields.
    @details 4 ordered fields; 16..16 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original address: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original device: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original num: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original type: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('address', 'device', 'num', 'type')
    SCHEMA = {'symbol': 'Ros1Rm_msgsRead_ModbusRTU',
     'type': 'rm_msgs/Read_ModbusRTU',
     'ros_version': 1,
     'native_type': 'rm_msgs/Read_ModbusRTU',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_a81a5257d7f140e3d988d283c4fa2fdabfda43ca1d0c80f5dfad3f498a776969',
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
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros1Rm_msgsRead_ModbusRTU)

class Ros1Rm_msgsRead_Register(Record):
    """@brief Own all original rm_msgs/Read_Register fields.
    @details 4 ordered fields; 13..13 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original port: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original address: uint32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original num: uint32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original device: uint32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('port', 'address', 'num', 'device')
    SCHEMA = {'symbol': 'Ros1Rm_msgsRead_Register',
     'type': 'rm_msgs/Read_Register',
     'ros_version': 1,
     'native_type': 'rm_msgs/Read_Register',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_917ea5dfecf096965284116556b7d6e34011714da4cb369fbf3d9a497c630d4f',
     'minimum': 13,
     'maximum': 13,
     'semantics': '',
     'fields': [{'name': 'port',
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
                {'name': 'address',
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
                {'name': 'num',
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
                {'name': 'device',
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

REGISTRY.add(Ros1Rm_msgsRead_Register)

class Ros1Rm_msgsRead_TCPandRTU(Record):
    """@brief Own all original rm_msgs/Read_TCPandRTU fields.
    @details 7 ordered fields; 28..540 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original address: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original num: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original ip: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original port: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original master_name: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original device: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original type: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('address', 'num', 'ip', 'port', 'master_name', 'device', 'type')
    SCHEMA = {'symbol': 'Ros1Rm_msgsRead_TCPandRTU',
     'type': 'rm_msgs/Read_TCPandRTU',
     'ros_version': 1,
     'native_type': 'rm_msgs/Read_TCPandRTU',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_6380b88d7659fa5c4acc02f200882400b978c960d948edc551359a74bd3376b9',
     'minimum': 28,
     'maximum': 540,
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
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros1Rm_msgsRead_TCPandRTU)

class Ros1Rm_msgsRegister_Data(Record):
    """@brief Own all original rm_msgs/Register_Data fields.
    @details 2 ordered fields; 5..37 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original state: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original data: uint16, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    __slots__ = ('state', 'data')
    SCHEMA = {'symbol': 'Ros1Rm_msgsRegister_Data',
     'type': 'rm_msgs/Register_Data',
     'ros_version': 1,
     'native_type': 'rm_msgs/Register_Data',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_ba1d780495f79683c483081c8326ce806edc62e8402dcc0566dc34d86b3a8867',
     'minimum': 5,
     'maximum': 37,
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
                 'default': None},
                {'name': 'data',
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
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros1Rm_msgsRegister_Data)

class Ros1Rm_msgsRm_Plus_Base(Record):
    """@brief Own all original rm_msgs/Rm_Plus_Base fields.
    @details 22 ordered fields; 61..1597 bytes.
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
    # @brief Original pos_up: int32, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    # @brief Original pos_low: int32, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    # @brief Original angle_up: int32, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    # @brief Original angle_low: int32, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    # @brief Original speed_up: int32, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    # @brief Original speed_low: int32, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    # @brief Original force_up: int32, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    # @brief Original force_low: int32, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
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
    SCHEMA = {'symbol': 'Ros1Rm_msgsRm_Plus_Base',
     'type': 'rm_msgs/Rm_Plus_Base',
     'ros_version': 1,
     'native_type': 'rm_msgs/Rm_Plus_Base',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_9ca40bb3db27ce29bdb768b19fbb9d83f54894b107844c5d127c99d45702c1d6',
     'minimum': 61,
     'maximum': 1597,
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
                {'name': 'pos_low',
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
                {'name': 'angle_up',
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
                {'name': 'angle_low',
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
                {'name': 'speed_up',
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
                {'name': 'speed_low',
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
                {'name': 'force_up',
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
                {'name': 'force_low',
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

REGISTRY.add(Ros1Rm_msgsRm_Plus_Base)

class Ros1Rm_msgsRm_Plus_State(Record):
    """@brief Own all original rm_msgs/Rm_Plus_State fields.
    @details 15 ordered fields; 60..892 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original sys_state: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original sys_err: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original dof_state: int32, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    # @brief Original dof_err: int32, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    # @brief Original pos: int32, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    # @brief Original speed: int32, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    # @brief Original angle: int32, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    # @brief Original current: int32, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    # @brief Original normal_force: int32, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    # @brief Original tangential_force: int32, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    # @brief Original tangential_force_dir: int32, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    # @brief Original tsa: uint32, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    # @brief Original tma: uint32, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    # @brief Original touch_data: int32, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    # @brief Original force: int32, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    __slots__ = ('sys_state',
     'sys_err',
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
    SCHEMA = {'symbol': 'Ros1Rm_msgsRm_Plus_State',
     'type': 'rm_msgs/Rm_Plus_State',
     'ros_version': 1,
     'native_type': 'rm_msgs/Rm_Plus_State',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_430d17485316136f019ee6cda961a0152b7f024cb24aa235d2e048b0216f6db1',
     'minimum': 60,
     'maximum': 892,
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
                {'name': 'sys_err',
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
                {'name': 'dof_err',
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
                {'name': 'pos',
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
                {'name': 'speed',
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
                {'name': 'angle',
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
                {'name': 'current',
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
                {'name': 'normal_force',
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
                {'name': 'tangential_force',
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
                {'name': 'tangential_force_dir',
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
                {'name': 'tsa',
                 'type': 'uint32',
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
                {'name': 'tma',
                 'type': 'uint32',
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
                {'name': 'touch_data',
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
                {'name': 'force',
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

REGISTRY.add(Ros1Rm_msgsRm_Plus_State)

class Ros1Rm_msgsServo_GetAngle(Record):
    """@brief Own all original rm_msgs/Servo_GetAngle fields.
    @details 1 ordered fields; 2..2 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original servo_id: uint16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('servo_id',)
    SCHEMA = {'symbol': 'Ros1Rm_msgsServo_GetAngle',
     'type': 'rm_msgs/Servo_GetAngle',
     'ros_version': 1,
     'native_type': 'rm_msgs/Servo_GetAngle',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_f3f0398034088c5c94c1551f041a808898ea8f6bdc82226ef69099be11286784',
     'minimum': 2,
     'maximum': 2,
     'semantics': '',
     'fields': [{'name': 'servo_id',
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

REGISTRY.add(Ros1Rm_msgsServo_GetAngle)

class Ros1Rm_msgsServo_Move(Record):
    """@brief Own all original rm_msgs/Servo_Move fields.
    @details 2 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original servo_id: uint16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original angle: uint16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('servo_id', 'angle')
    SCHEMA = {'symbol': 'Ros1Rm_msgsServo_Move',
     'type': 'rm_msgs/Servo_Move',
     'ros_version': 1,
     'native_type': 'rm_msgs/Servo_Move',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_776097952cd219d20f95b4e953dc4b0a9fbbe2652475309fd976537988f241fb',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'servo_id',
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
                {'name': 'angle',
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

REGISTRY.add(Ros1Rm_msgsServo_Move)

class Ros1Rm_msgsSet_Force_Position(Record):
    """@brief Own all original rm_msgs/Set_Force_Position fields.
    @details 4 ordered fields; 5..5 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original sensor: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original mode: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original direction: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original N: int16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('sensor', 'mode', 'direction', 'N')
    SCHEMA = {'symbol': 'Ros1Rm_msgsSet_Force_Position',
     'type': 'rm_msgs/Set_Force_Position',
     'ros_version': 1,
     'native_type': 'rm_msgs/Set_Force_Position',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_f2837e2588cbaabc85d66b6693a18ca1581be1ec09fbb4207d6e377d00fdbf87',
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
                {'name': 'N',
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

REGISTRY.add(Ros1Rm_msgsSet_Force_Position)

class Ros1Rm_msgsSet_Modbus_Mode(Record):
    """@brief Own all original rm_msgs/Set_Modbus_Mode fields.
    @details 4 ordered fields; 16..272 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original port: uint32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original baudrate: uint32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original timeout: uint32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original ip: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    __slots__ = ('port', 'baudrate', 'timeout', 'ip')
    SCHEMA = {'symbol': 'Ros1Rm_msgsSet_Modbus_Mode',
     'type': 'rm_msgs/Set_Modbus_Mode',
     'ros_version': 1,
     'native_type': 'rm_msgs/Set_Modbus_Mode',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_007fd5321b9c408191b697ed67ff0a439220fdabdec81e94ef1cc53b35de028e',
     'minimum': 16,
     'maximum': 272,
     'semantics': '',
     'fields': [{'name': 'port',
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
                {'name': 'baudrate',
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
                {'name': 'timeout',
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
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros1Rm_msgsSet_Modbus_Mode)

class Ros1Rm_msgsSet_Realtime_Push(Record):
    """@brief Own all original rm_msgs/Set_Realtime_Push fields.
    @details 14 ordered fields; 20..276 bytes.
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
    # @brief Original joint_acc_enable: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original joint_speed_enable: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original lift_state_enable: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original tail_end_enable: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original rm_plus_base_enable: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original rm_plus_state_enable: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('cycle',
     'port',
     'force_coordinate',
     'ip',
     'aloha_state_enable',
     'arm_current_status_enable',
     'expand_state_enable',
     'hand_enable',
     'joint_acc_enable',
     'joint_speed_enable',
     'lift_state_enable',
     'tail_end_enable',
     'rm_plus_base_enable',
     'rm_plus_state_enable')
    SCHEMA = {'symbol': 'Ros1Rm_msgsSet_Realtime_Push',
     'type': 'rm_msgs/Set_Realtime_Push',
     'ros_version': 1,
     'native_type': 'rm_msgs/Set_Realtime_Push',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_aa3d4add03b4a1d307e389813bf8337b34c8260c9eb186ac5a3aabee7e344375',
     'minimum': 20,
     'maximum': 276,
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
                {'name': 'joint_acc_enable',
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
                {'name': 'tail_end_enable',
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
                {'name': 'rm_plus_base_enable',
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
                {'name': 'rm_plus_state_enable',
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

REGISTRY.add(Ros1Rm_msgsSet_Realtime_Push)

class Ros1Rm_msgsSix_Force(Record):
    """@brief Own all original rm_msgs/Six_Force fields.
    @details 6 ordered fields; 24..24 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original force_Fx: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original force_Fy: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original force_Fz: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original force_Mx: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original force_My: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original force_Mz: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('force_Fx', 'force_Fy', 'force_Fz', 'force_Mx', 'force_My', 'force_Mz')
    SCHEMA = {'symbol': 'Ros1Rm_msgsSix_Force',
     'type': 'rm_msgs/Six_Force',
     'ros_version': 1,
     'native_type': 'rm_msgs/Six_Force',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_16909106e846dce81f6ff66583cdb569fecd956c7e08367b9d532ce096d5d720',
     'minimum': 24,
     'maximum': 24,
     'semantics': '',
     'fields': [{'name': 'force_Fx',
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
                {'name': 'force_Fy',
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
                {'name': 'force_Fz',
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
                {'name': 'force_Mx',
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
                {'name': 'force_My',
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
                {'name': 'force_Mz',
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

REGISTRY.add(Ros1Rm_msgsSix_Force)

class Ros1Rm_msgsSocket_Command(Record):
    """@brief Own all original rm_msgs/Socket_Command fields.
    @details 1 ordered fields; 2..2 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original command: uint16, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('command',)
    SCHEMA = {'symbol': 'Ros1Rm_msgsSocket_Command',
     'type': 'rm_msgs/Socket_Command',
     'ros_version': 1,
     'native_type': 'rm_msgs/Socket_Command',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_f55143fcc5bf1da4e0fbf538f9faf480932d5b8405d6c1f880c6091a38f68d17',
     'minimum': 2,
     'maximum': 2,
     'semantics': '',
     'fields': [{'name': 'command',
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

REGISTRY.add(Ros1Rm_msgsSocket_Command)

class Ros1Rm_msgsStart_Multi_Drag_Teach(Record):
    """@brief Own all original rm_msgs/Start_Multi_Drag_Teach fields.
    @details 3 ordered fields; 32..32 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original free_axes: int32, array.
    # @details Count/quota 6; string byte bound 0; caller owns storage.
    # @brief Original frame: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original singular_wall: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('free_axes', 'frame', 'singular_wall')
    SCHEMA = {'symbol': 'Ros1Rm_msgsStart_Multi_Drag_Teach',
     'type': 'rm_msgs/Start_Multi_Drag_Teach',
     'ros_version': 1,
     'native_type': 'rm_msgs/Start_Multi_Drag_Teach',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_5bc8bea8dc6051a6ec45da2fabd12107e8b7a9731cc6031af49371cb2b6c64a8',
     'minimum': 32,
     'maximum': 32,
     'semantics': '',
     'fields': [{'name': 'free_axes',
                 'type': 'int32',
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
                {'name': 'frame',
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
                {'name': 'singular_wall',
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

REGISTRY.add(Ros1Rm_msgsStart_Multi_Drag_Teach)

class Ros1Rm_msgsStop(Record):
    """@brief Own all original rm_msgs/Stop fields.
    @details 1 ordered fields; 1..1 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original state: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('state',)
    SCHEMA = {'symbol': 'Ros1Rm_msgsStop',
     'type': 'rm_msgs/Stop',
     'ros_version': 1,
     'native_type': 'rm_msgs/Stop',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_87bbb0270d31ccd7e207da872d191cf01d4f10f9eed6bcffaef9f440a2c5378a',
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

REGISTRY.add(Ros1Rm_msgsStop)

class Ros1Rm_msgsStop_Teach(Record):
    """@brief Own all original rm_msgs/Stop_Teach fields.
    @details 1 ordered fields; 4..260 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original command: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    __slots__ = ('command',)
    SCHEMA = {'symbol': 'Ros1Rm_msgsStop_Teach',
     'type': 'rm_msgs/Stop_Teach',
     'ros_version': 1,
     'native_type': 'rm_msgs/Stop_Teach',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_d7e8a4419f9a4132ecad0fcb738953bc3dc029aba09bc8f4fa97e12ab088f97e',
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

REGISTRY.add(Ros1Rm_msgsStop_Teach)

class Ros1Rm_msgsTool_Analog_Output(Record):
    """@brief Own all original rm_msgs/Tool_Analog_Output fields.
    @details 1 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original voltage: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('voltage',)
    SCHEMA = {'symbol': 'Ros1Rm_msgsTool_Analog_Output',
     'type': 'rm_msgs/Tool_Analog_Output',
     'ros_version': 1,
     'native_type': 'rm_msgs/Tool_Analog_Output',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_8ce6b700a85d05fa99167fad521b7162b9a0e4670c9022782ed522d1c320979f',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'voltage',
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

REGISTRY.add(Ros1Rm_msgsTool_Analog_Output)

class Ros1Rm_msgsTool_Digital_Output(Record):
    """@brief Own all original rm_msgs/Tool_Digital_Output fields.
    @details 2 ordered fields; 2..2 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original num: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original state: bool, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('num', 'state')
    SCHEMA = {'symbol': 'Ros1Rm_msgsTool_Digital_Output',
     'type': 'rm_msgs/Tool_Digital_Output',
     'ros_version': 1,
     'native_type': 'rm_msgs/Tool_Digital_Output',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_10c924520a9c47a999bfebbf55c9474aa8e7770a8e8a58d446af0c1eacc1889e',
     'minimum': 2,
     'maximum': 2,
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

REGISTRY.add(Ros1Rm_msgsTool_Digital_Output)

class Ros1Rm_msgsTool_IO_State(Record):
    """@brief Own all original rm_msgs/Tool_IO_State fields.
    @details 2 ordered fields; 4..4 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original Tool_IO_Mode: int8, array.
    # @details Count/quota 2; string byte bound 0; caller owns storage.
    # @brief Original Tool_IO_State: int8, array.
    # @details Count/quota 2; string byte bound 0; caller owns storage.
    __slots__ = ('Tool_IO_Mode', 'Tool_IO_State')
    SCHEMA = {'symbol': 'Ros1Rm_msgsTool_IO_State',
     'type': 'rm_msgs/Tool_IO_State',
     'ros_version': 1,
     'native_type': 'rm_msgs/Tool_IO_State',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_3259adff977d4832fc6ba1e9e2a13aca1e99f86c4f4177b54ccd7c459f86fb84',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'Tool_IO_Mode',
                 'type': 'int8',
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
                {'name': 'Tool_IO_State',
                 'type': 'int8',
                 'array': 'array',
                 'count': 2,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros1Rm_msgsTool_IO_State)

class Ros1Rm_msgsTrajectoryinfo(Record):
    """@brief Own all original rm_msgs/Trajectoryinfo fields.
    @details 3 ordered fields; 12..524 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original name: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original create_time: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original point_num: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('name', 'create_time', 'point_num')
    SCHEMA = {'symbol': 'Ros1Rm_msgsTrajectoryinfo',
     'type': 'rm_msgs/Trajectoryinfo',
     'ros_version': 1,
     'native_type': 'rm_msgs/Trajectoryinfo',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_16571d503b8ffbc3d3bbd71f2f4eea11e8d0c30ff1dc8a40349d00c6294bbebd',
     'minimum': 12,
     'maximum': 524,
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
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros1Rm_msgsTrajectoryinfo)

class Ros1Rm_msgsTrajectorylist(Record):
    """@brief Own all original rm_msgs/Trajectorylist fields.
    @details 5 ordered fields; 20..8660 bytes.
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
    # @brief Original tra_list: rm_msgs/Trajectoryinfo, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    __slots__ = ('page_num', 'page_size', 'total_size', 'vague_search', 'tra_list')
    SCHEMA = {'symbol': 'Ros1Rm_msgsTrajectorylist',
     'type': 'rm_msgs/Trajectorylist',
     'ros_version': 1,
     'native_type': 'rm_msgs/Trajectorylist',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_2a6f11ce34da610b3a2c7738fbdc705ce549702edf8869972ab1126d86717fd9',
     'minimum': 20,
     'maximum': 8660,
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
                 'type': 'rm_msgs/Trajectoryinfo',
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

REGISTRY.add(Ros1Rm_msgsTrajectorylist)

class Ros1Rm_msgsTurtle_Driver(Record):
    """@brief Own all original rm_msgs/Turtle_Driver fields.
    @details 5 ordered fields; 20..532 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original message_type: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original robot_mac_address: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original vx: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original vy: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original vtheta: float32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('message_type', 'robot_mac_address', 'vx', 'vy', 'vtheta')
    SCHEMA = {'symbol': 'Ros1Rm_msgsTurtle_Driver',
     'type': 'rm_msgs/Turtle_Driver',
     'ros_version': 1,
     'native_type': 'rm_msgs/Turtle_Driver',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_d78bbc2b8ade4cc0f3a2807b674b87cf49f46faa33185187b579b7836c5bb7fe',
     'minimum': 20,
     'maximum': 532,
     'semantics': '',
     'fields': [{'name': 'message_type',
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
                {'name': 'robot_mac_address',
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
                {'name': 'vx',
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
                {'name': 'vy',
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
                {'name': 'vtheta',
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

REGISTRY.add(Ros1Rm_msgsTurtle_Driver)

class Ros1Rm_msgsUpdateTCPmasterparam(Record):
    """@brief Own all original rm_msgs/UpdateTCPmasterparam fields.
    @details 4 ordered fields; 16..784 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original master_name: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original new_name: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original ip: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original port: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('master_name', 'new_name', 'ip', 'port')
    SCHEMA = {'symbol': 'Ros1Rm_msgsUpdateTCPmasterparam',
     'type': 'rm_msgs/UpdateTCPmasterparam',
     'ros_version': 1,
     'native_type': 'rm_msgs/UpdateTCPmasterparam',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_588eaac57487dc2d7ab412bf221ca0157959d2826d310ff218c63ddbfa287872',
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
                {'name': 'new_name',
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

REGISTRY.add(Ros1Rm_msgsUpdateTCPmasterparam)

class Ros1Rm_msgsWrite_ModbusRTU(Record):
    """@brief Own all original rm_msgs/Write_ModbusRTU fields.
    @details 4 ordered fields; 16..80 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original address: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original data: int32, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    # @brief Original type: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original device: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('address', 'data', 'type', 'device')
    SCHEMA = {'symbol': 'Ros1Rm_msgsWrite_ModbusRTU',
     'type': 'rm_msgs/Write_ModbusRTU',
     'ros_version': 1,
     'native_type': 'rm_msgs/Write_ModbusRTU',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_09caba0e331ca32e826368f575bcfd26ec1e0e2ae63da26bdbfdda5f7cc486c8',
     'minimum': 16,
     'maximum': 80,
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
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros1Rm_msgsWrite_ModbusRTU)

class Ros1Rm_msgsWrite_Register(Record):
    """@brief Own all original rm_msgs/Write_Register fields.
    @details 5 ordered fields; 17..49 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original port: uint8, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original address: uint32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original num: uint32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original data: uint16, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    # @brief Original device: uint32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('port', 'address', 'num', 'data', 'device')
    SCHEMA = {'symbol': 'Ros1Rm_msgsWrite_Register',
     'type': 'rm_msgs/Write_Register',
     'ros_version': 1,
     'native_type': 'rm_msgs/Write_Register',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_ef2fb0ea4f38aecce5111c39f35aa4195d9658fe6bbe4f9c059b85ee3ce32251',
     'minimum': 17,
     'maximum': 49,
     'semantics': '',
     'fields': [{'name': 'port',
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
                {'name': 'address',
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
                {'name': 'num',
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
                {'name': 'data',
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
                {'name': 'device',
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

REGISTRY.add(Ros1Rm_msgsWrite_Register)

class Ros1Rm_msgsWrite_TCPandRTU(Record):
    """@brief Own all original rm_msgs/Write_TCPandRTU fields.
    @details 7 ordered fields; 28..604 bytes.
    @return Inherited encode/decode produce whole values or raise CodecError(22/90).
    """
    # @brief Original address: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original data: int32, sequence.
    # @details Count/quota 16; string byte bound 0; caller owns storage.
    # @brief Original ip: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original port: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original master_name: string, scalar.
    # @details Count/quota 0; string byte bound 256; caller owns storage.
    # @brief Original type: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    # @brief Original device: int32, scalar.
    # @details Count/quota 0; string byte bound 0; caller owns storage.
    __slots__ = ('address', 'data', 'ip', 'port', 'master_name', 'type', 'device')
    SCHEMA = {'symbol': 'Ros1Rm_msgsWrite_TCPandRTU',
     'type': 'rm_msgs/Write_TCPandRTU',
     'ros_version': 1,
     'native_type': 'rm_msgs/Write_TCPandRTU',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_8e0690efe69c300dc98a90b00a785109bb3cf0b603a36e173a346383e6b7e16a',
     'minimum': 28,
     'maximum': 604,
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
                 'default': None}],
     'constants': {}}

REGISTRY.add(Ros1Rm_msgsWrite_TCPandRTU)
