"""@file records.py
@brief Complete original limx ROS 2 values, codecs and interface catalog.
@details Preserve all 5 records and 5 interfaces.
Absent native identities remain None. Constructing values grants no authority.
"""
from ros.py.wire import Record, Registry

REGISTRY = Registry()

class Ros2Uwvm_limx_bridgeMsgNativeHeader(Record):
    """@brief Complete uwvm_limx_bridge/msg/NativeHeader value.
    @details All 4 fields and 0 constants are preserved.
    Canonical extent 16..144 bytes; ordinary values own no ROS handle.
    """
    # @brief Original uwvm_limx_bridge/msg/NativeHeader.seq field.
    # @details Type uint32; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original uwvm_limx_bridge/msg/NativeHeader.stamp_sec field.
    # @details Type uint32; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original uwvm_limx_bridge/msg/NativeHeader.stamp_nsec field.
    # @details Type uint32; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original uwvm_limx_bridge/msg/NativeHeader.frame_id field.
    # @details Type string; shape scalar; count/bound 0; UTF-8/raw byte bound 128.
    __slots__ = ('seq', 'stamp_sec', 'stamp_nsec', 'frame_id')
    SCHEMA = {'type': 'uwvm_limx_bridge/msg/NativeHeader',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_d86b96b26db6c2a28dfa86e2255cb3cccd6cd24648e877746d8d75394d1635b2',
     'minimum': 16,
     'maximum': 144,
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
                {'name': 'stamp_sec',
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
                {'name': 'stamp_nsec',
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
                {'name': 'frame_id',
                 'type': 'string',
                 'array': '',
                 'count': 0,
                 'string_bound': 128,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}]}

REGISTRY.add(Ros2Uwvm_limx_bridgeMsgNativeHeader)


class Ros2Uwvm_limx_bridgeMsgImuData(Record):
    """@brief Complete uwvm_limx_bridge/msg/ImuData value.
    @details All 7 fields and 0 constants are preserved.
    Canonical extent 132..260 bytes; ordinary values own no ROS handle.
    """
    # @brief Original uwvm_limx_bridge/msg/ImuData.header field.
    # @details Type uwvm_limx_bridge/msg/NativeHeader; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original uwvm_limx_bridge/msg/ImuData.imustamp field.
    # @details Type uint64; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original uwvm_limx_bridge/msg/ImuData.status field.
    # @details Type uint32; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original uwvm_limx_bridge/msg/ImuData.euler field.
    # @details Type float64; shape array; count/bound 3; UTF-8/raw byte bound 0.
    # @brief Original uwvm_limx_bridge/msg/ImuData.quat field.
    # @details Type float64; shape array; count/bound 4; UTF-8/raw byte bound 0.
    # @brief Original uwvm_limx_bridge/msg/ImuData.acc field.
    # @details Type float64; shape array; count/bound 3; UTF-8/raw byte bound 0.
    # @brief Original uwvm_limx_bridge/msg/ImuData.gyro field.
    # @details Type float64; shape array; count/bound 3; UTF-8/raw byte bound 0.
    __slots__ = ('header', 'imustamp', 'status', 'euler', 'quat', 'acc', 'gyro')
    SCHEMA = {'type': 'uwvm_limx_bridge/msg/ImuData',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_53ba9eb23b36de77e1793bdd19a31f708aca557b81f4ae72927b2a44f5ce097b',
     'minimum': 132,
     'maximum': 260,
     'semantics': '',
     'fields': [{'name': 'header',
                 'type': 'uwvm_limx_bridge/msg/NativeHeader',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'imustamp',
                 'type': 'uint64',
                 'array': '',
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
                {'name': 'euler',
                 'type': 'float64',
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
                {'name': 'quat',
                 'type': 'float64',
                 'array': 'array',
                 'count': 4,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'acc',
                 'type': 'float64',
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
                {'name': 'gyro',
                 'type': 'float64',
                 'array': 'array',
                 'count': 3,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}]}

REGISTRY.add(Ros2Uwvm_limx_bridgeMsgImuData)


class Ros2Uwvm_limx_bridgeMsgJointState(Record):
    """@brief Complete uwvm_limx_bridge/msg/JointState value.
    @details All 7 fields and 0 constants are preserved.
    Canonical extent 40..5544 bytes; ordinary values own no ROS handle.
    """
    # @brief Original uwvm_limx_bridge/msg/JointState.header field.
    # @details Type uwvm_limx_bridge/msg/NativeHeader; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original uwvm_limx_bridge/msg/JointState.names field.
    # @details Type string; shape sequence; count/bound 64; UTF-8/raw byte bound 64.
    # @brief Original uwvm_limx_bridge/msg/JointState.q field.
    # @details Type float32; shape sequence; count/bound 64; UTF-8/raw byte bound 0.
    # @brief Original uwvm_limx_bridge/msg/JointState.v field.
    # @details Type float32; shape sequence; count/bound 64; UTF-8/raw byte bound 0.
    # @brief Original uwvm_limx_bridge/msg/JointState.vd field.
    # @details Type float32; shape sequence; count/bound 64; UTF-8/raw byte bound 0.
    # @brief Original uwvm_limx_bridge/msg/JointState.tau field.
    # @details Type float32; shape sequence; count/bound 64; UTF-8/raw byte bound 0.
    # @brief Original uwvm_limx_bridge/msg/JointState.na field.
    # @details Type uint32; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    __slots__ = ('header', 'names', 'q', 'v', 'vd', 'tau', 'na')
    SCHEMA = {'type': 'uwvm_limx_bridge/msg/JointState',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_d99e5855c0dd55d4d1b5a724ad5719734a668a512ea09e553c8f4a560b97a3a4',
     'minimum': 40,
     'maximum': 5544,
     'semantics': '',
     'fields': [{'name': 'header',
                 'type': 'uwvm_limx_bridge/msg/NativeHeader',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'names',
                 'type': 'string',
                 'array': 'sequence',
                 'count': 64,
                 'string_bound': 64,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'q',
                 'type': 'float32',
                 'array': 'sequence',
                 'count': 64,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'v',
                 'type': 'float32',
                 'array': 'sequence',
                 'count': 64,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'vd',
                 'type': 'float32',
                 'array': 'sequence',
                 'count': 64,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'tau',
                 'type': 'float32',
                 'array': 'sequence',
                 'count': 64,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'na',
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
                 'default': None}]}

REGISTRY.add(Ros2Uwvm_limx_bridgeMsgJointState)


class Ros2Uwvm_limx_bridgeMsgJointCmd(Record):
    """@brief Complete uwvm_limx_bridge/msg/JointCmd value.
    @details All 9 fields and 0 constants are preserved.
    Canonical extent 48..5872 bytes; ordinary values own no ROS handle.
    """
    # @brief Original uwvm_limx_bridge/msg/JointCmd.header field.
    # @details Type uwvm_limx_bridge/msg/NativeHeader; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original uwvm_limx_bridge/msg/JointCmd.names field.
    # @details Type string; shape sequence; count/bound 64; UTF-8/raw byte bound 64.
    # @brief Original uwvm_limx_bridge/msg/JointCmd.q field.
    # @details Type float32; shape sequence; count/bound 64; UTF-8/raw byte bound 0.
    # @brief Original uwvm_limx_bridge/msg/JointCmd.v field.
    # @details Type float32; shape sequence; count/bound 64; UTF-8/raw byte bound 0.
    # @brief Original uwvm_limx_bridge/msg/JointCmd.tau field.
    # @details Type float32; shape sequence; count/bound 64; UTF-8/raw byte bound 0.
    # @brief Original uwvm_limx_bridge/msg/JointCmd.kp field.
    # @details Type float32; shape sequence; count/bound 64; UTF-8/raw byte bound 0.
    # @brief Original uwvm_limx_bridge/msg/JointCmd.kd field.
    # @details Type float32; shape sequence; count/bound 64; UTF-8/raw byte bound 0.
    # @brief Original uwvm_limx_bridge/msg/JointCmd.mode field.
    # @details Type uint8; shape sequence; count/bound 64; UTF-8/raw byte bound 0.
    # @brief Original uwvm_limx_bridge/msg/JointCmd.na field.
    # @details Type uint32; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    __slots__ = ('header', 'names', 'q', 'v', 'tau', 'kp', 'kd', 'mode', 'na')
    SCHEMA = {'type': 'uwvm_limx_bridge/msg/JointCmd',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_8c477a93cc192cd3039b285f111a56eb1305707d798587ef7ab9504f714ce6f0',
     'minimum': 48,
     'maximum': 5872,
     'semantics': '',
     'fields': [{'name': 'header',
                 'type': 'uwvm_limx_bridge/msg/NativeHeader',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'names',
                 'type': 'string',
                 'array': 'sequence',
                 'count': 64,
                 'string_bound': 64,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'q',
                 'type': 'float32',
                 'array': 'sequence',
                 'count': 64,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'v',
                 'type': 'float32',
                 'array': 'sequence',
                 'count': 64,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'tau',
                 'type': 'float32',
                 'array': 'sequence',
                 'count': 64,
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
                 'count': 64,
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
                 'count': 64,
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
                 'array': 'sequence',
                 'count': 64,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'na',
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
                 'default': None}]}

REGISTRY.add(Ros2Uwvm_limx_bridgeMsgJointCmd)


class Ros2Uwvm_limx_bridgeMsgJointCmdLimx(Record):
    """@brief Complete uwvm_limx_bridge/msg/JointCmdLimx value.
    @details All 10 fields and 0 constants are preserved.
    Canonical extent 52..5940 bytes; ordinary values own no ROS handle.
    """
    # @brief Original uwvm_limx_bridge/msg/JointCmdLimx.header field.
    # @details Type uwvm_limx_bridge/msg/NativeHeader; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original uwvm_limx_bridge/msg/JointCmdLimx.names field.
    # @details Type string; shape sequence; count/bound 64; UTF-8/raw byte bound 64.
    # @brief Original uwvm_limx_bridge/msg/JointCmdLimx.q field.
    # @details Type float32; shape sequence; count/bound 64; UTF-8/raw byte bound 0.
    # @brief Original uwvm_limx_bridge/msg/JointCmdLimx.v field.
    # @details Type float32; shape sequence; count/bound 64; UTF-8/raw byte bound 0.
    # @brief Original uwvm_limx_bridge/msg/JointCmdLimx.tau field.
    # @details Type float32; shape sequence; count/bound 64; UTF-8/raw byte bound 0.
    # @brief Original uwvm_limx_bridge/msg/JointCmdLimx.kp field.
    # @details Type float32; shape sequence; count/bound 64; UTF-8/raw byte bound 0.
    # @brief Original uwvm_limx_bridge/msg/JointCmdLimx.kd field.
    # @details Type float32; shape sequence; count/bound 64; UTF-8/raw byte bound 0.
    # @brief Original uwvm_limx_bridge/msg/JointCmdLimx.mode field.
    # @details Type uint8; shape sequence; count/bound 64; UTF-8/raw byte bound 0.
    # @brief Original uwvm_limx_bridge/msg/JointCmdLimx.na field.
    # @details Type uint32; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original uwvm_limx_bridge/msg/JointCmdLimx.parallel_solver_mode field.
    # @details Type uint8; shape sequence; count/bound 64; UTF-8/raw byte bound 0.
    __slots__ = ('header', 'names', 'q', 'v', 'tau', 'kp', 'kd', 'mode', 'na', 'parallel_solver_mode')
    SCHEMA = {'type': 'uwvm_limx_bridge/msg/JointCmdLimx',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_d469dd32f446fb4013144b7e176cdb831c146b6a9279ea776ec4a0c053060be9',
     'minimum': 52,
     'maximum': 5940,
     'semantics': '',
     'fields': [{'name': 'header',
                 'type': 'uwvm_limx_bridge/msg/NativeHeader',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'names',
                 'type': 'string',
                 'array': 'sequence',
                 'count': 64,
                 'string_bound': 64,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'q',
                 'type': 'float32',
                 'array': 'sequence',
                 'count': 64,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'v',
                 'type': 'float32',
                 'array': 'sequence',
                 'count': 64,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'tau',
                 'type': 'float32',
                 'array': 'sequence',
                 'count': 64,
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
                 'count': 64,
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
                 'count': 64,
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
                 'array': 'sequence',
                 'count': 64,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'na',
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
                {'name': 'parallel_solver_mode',
                 'type': 'uint8',
                 'array': 'sequence',
                 'count': 64,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}]}

REGISTRY.add(Ros2Uwvm_limx_bridgeMsgJointCmdLimx)


# @brief Complete interface names, component roles and original identities.
INTERFACES = {'uwvm_limx_bridge/msg/NativeHeader': {'kind': 'message',
                                       'native_identity': None,
                                       'codec_identity': 'UWVMROS1_d86b96b26db6c2a28dfa86e2255cb3cccd6cd24648e877746d8d75394d1635b2',
                                       'registered': True,
                                       'components': {'message': 'Ros2Uwvm_limx_bridgeMsgNativeHeader'}},
 'uwvm_limx_bridge/msg/ImuData': {'kind': 'message',
                                  'native_identity': None,
                                  'codec_identity': 'UWVMROS1_53ba9eb23b36de77e1793bdd19a31f708aca557b81f4ae72927b2a44f5ce097b',
                                  'registered': True,
                                  'components': {'message': 'Ros2Uwvm_limx_bridgeMsgImuData'}},
 'uwvm_limx_bridge/msg/JointState': {'kind': 'message',
                                     'native_identity': None,
                                     'codec_identity': 'UWVMROS1_d99e5855c0dd55d4d1b5a724ad5719734a668a512ea09e553c8f4a560b97a3a4',
                                     'registered': True,
                                     'components': {'message': 'Ros2Uwvm_limx_bridgeMsgJointState'}},
 'uwvm_limx_bridge/msg/JointCmd': {'kind': 'message',
                                   'native_identity': None,
                                   'codec_identity': 'UWVMROS1_8c477a93cc192cd3039b285f111a56eb1305707d798587ef7ab9504f714ce6f0',
                                   'registered': True,
                                   'components': {'message': 'Ros2Uwvm_limx_bridgeMsgJointCmd'}},
 'uwvm_limx_bridge/msg/JointCmdLimx': {'kind': 'message',
                                       'native_identity': None,
                                       'codec_identity': 'UWVMROS1_d469dd32f446fb4013144b7e176cdb831c146b6a9279ea776ec4a0c053060be9',
                                       'registered': True,
                                       'components': {'message': 'Ros2Uwvm_limx_bridgeMsgJointCmdLimx'}}}
