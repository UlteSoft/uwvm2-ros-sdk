"""@file records.py
@brief Complete original flexiv records for one explicitly selected release.
@details Values own all fields. Native identities require independent installed ROS binding.
"""

from ros.py.wire import Record, Registry

REGISTRY = Registry()

class Ros2Builtin_interfacesMsgTime(Record):
    """@brief Own every original builtin_interfaces/msg/Time field.
    @details 2 fields; 8..8 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('sec', 'nanosec')
    SCHEMA = {'type': 'builtin_interfaces/msg/Time',
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
                 'default': None}]}

REGISTRY.add(Ros2Builtin_interfacesMsgTime)


class Ros2Flexiv_msgsActionGrasp_Goal(Record):
    """@brief Own every original flexiv_msgs/action/Grasp_Goal field.
    @details 1 fields; 8..8 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('force',)
    SCHEMA = {'type': 'flexiv_msgs/action/Grasp_Goal',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_43565e364b5b889f4afe37a991d7b42a2b045737ead93475f771995882eb67ce',
     'minimum': 8,
     'maximum': 8,
     'semantics': '',
     'fields': [{'name': 'force',
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
                 'default': None}]}

REGISTRY.add(Ros2Flexiv_msgsActionGrasp_Goal)


class Ros2Flexiv_msgsActionGrasp_Result(Record):
    """@brief Own every original flexiv_msgs/action/Grasp_Result field.
    @details 2 fields; 5..261 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('success', 'error')
    SCHEMA = {'type': 'flexiv_msgs/action/Grasp_Result',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_76337e629cae7403379d16725f13850a1d38a2bc53d1bd478e79f8139484341a',
     'minimum': 5,
     'maximum': 261,
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
                 'default': None},
                {'name': 'error',
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
                 'default': None}]}

REGISTRY.add(Ros2Flexiv_msgsActionGrasp_Result)


class Ros2Flexiv_msgsActionGrasp_Feedback(Record):
    """@brief Own every original flexiv_msgs/action/Grasp_Feedback field.
    @details 3 fields; 17..17 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('current_width', 'current_force', 'moving')
    SCHEMA = {'type': 'flexiv_msgs/action/Grasp_Feedback',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_f546cfb58043f2dd44da229d9b5687e88d2712378aa6e1db8cf0082c07e96c05',
     'minimum': 17,
     'maximum': 17,
     'semantics': '',
     'fields': [{'name': 'current_width',
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
                {'name': 'current_force',
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
                {'name': 'moving',
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
                 'default': None}]}

REGISTRY.add(Ros2Flexiv_msgsActionGrasp_Feedback)


class Ros2Flexiv_msgsActionMove_Goal(Record):
    """@brief Own every original flexiv_msgs/action/Move_Goal field.
    @details 3 fields; 24..24 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('width', 'velocity', 'max_force')
    SCHEMA = {'type': 'flexiv_msgs/action/Move_Goal',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_aea1dfd4e0fe2ea72865a4f9e4408564fe63c7eff23cc9eaefdedbb4a3b87ce2',
     'minimum': 24,
     'maximum': 24,
     'semantics': '',
     'fields': [{'name': 'width',
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
                {'name': 'velocity',
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
                {'name': 'max_force',
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
                 'default': None}]}

REGISTRY.add(Ros2Flexiv_msgsActionMove_Goal)


class Ros2Flexiv_msgsActionMove_Result(Record):
    """@brief Own every original flexiv_msgs/action/Move_Result field.
    @details 2 fields; 5..261 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('success', 'error')
    SCHEMA = {'type': 'flexiv_msgs/action/Move_Result',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_c95a78a3b488d7f47101110729258fcc28450dee51ab7666114da77ad139709d',
     'minimum': 5,
     'maximum': 261,
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
                 'default': None},
                {'name': 'error',
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
                 'default': None}]}

REGISTRY.add(Ros2Flexiv_msgsActionMove_Result)


class Ros2Flexiv_msgsActionMove_Feedback(Record):
    """@brief Own every original flexiv_msgs/action/Move_Feedback field.
    @details 3 fields; 17..17 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('current_width', 'current_force', 'moving')
    SCHEMA = {'type': 'flexiv_msgs/action/Move_Feedback',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_b28cc267ea6cd964fb24bff71d4e6e8da37fae383f437aeec8afb01431a5cd38',
     'minimum': 17,
     'maximum': 17,
     'semantics': '',
     'fields': [{'name': 'current_width',
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
                {'name': 'current_force',
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
                {'name': 'moving',
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
                 'default': None}]}

REGISTRY.add(Ros2Flexiv_msgsActionMove_Feedback)


class Ros2Flexiv_msgsMsgDigital(Record):
    """@brief Own every original flexiv_msgs/msg/Digital field.
    @details 2 fields; 2..2 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('pin', 'state')
    SCHEMA = {'type': 'flexiv_msgs/msg/Digital',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_88d2ffaf88359d000dbb247773404361a70fbc86b08a6fad118a73723f2c6fbf',
     'minimum': 2,
     'maximum': 2,
     'semantics': '',
     'fields': [{'name': 'pin',
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
                 'default': None}]}

REGISTRY.add(Ros2Flexiv_msgsMsgDigital)


class Ros2Flexiv_msgsMsgGPIOStates(Record):
    """@brief Own every original flexiv_msgs/msg/GPIOStates field.
    @details 1 fields; 4..68 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('states',)
    SCHEMA = {'type': 'flexiv_msgs/msg/GPIOStates',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_befebf3e30b73f80820c51af2339e0c5a86bef6b155f42fd538540c3fbbd7b14',
     'minimum': 4,
     'maximum': 68,
     'semantics': '',
     'fields': [{'name': 'states',
                 'type': 'flexiv_msgs/msg/Digital',
                 'array': 'sequence',
                 'count': 32,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}]}

REGISTRY.add(Ros2Flexiv_msgsMsgGPIOStates)


class Ros2Flexiv_msgsMsgJointPosVel(Record):
    """@brief Own every original flexiv_msgs/msg/JointPosVel field.
    @details 2 fields; 8..520 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('positions', 'velocities')
    SCHEMA = {'type': 'flexiv_msgs/msg/JointPosVel',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_ab1060b13eacca41febd2b58a61f0b93df867a9d6579b4f2b43bf5280f2df4ca',
     'minimum': 8,
     'maximum': 520,
     'semantics': '',
     'fields': [{'name': 'positions',
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
                 'default': None},
                {'name': 'velocities',
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
                 'default': None}]}

REGISTRY.add(Ros2Flexiv_msgsMsgJointPosVel)


class Ros2Flexiv_msgsMsgMode(Record):
    """@brief Own every original flexiv_msgs/msg/Mode field.
    @details 1 fields; 1..1 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('mode',)
    SCHEMA = {'type': 'flexiv_msgs/msg/Mode',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_cccac829b8021d3eed69844ee81fbef0b785486d73a16ac212fd38b8100eb6d6',
     'minimum': 1,
     'maximum': 1,
     'semantics': '',
     'fields': [{'name': 'mode',
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
                 'default': None}]}
    # @brief Original exact-width int8 constant.
    MODE_UNKNOWN = -1
    # @brief Original exact-width int8 constant.
    MODE_IDLE = 0
    # @brief Original exact-width int8 constant.
    MODE_RT_JOINT_TORQUE = 1
    # @brief Original exact-width int8 constant.
    MODE_RT_JOINT_IMPEDANCE = 2
    # @brief Original exact-width int8 constant.
    MODE_NRT_JOINT_IMPEDANCE = 3
    # @brief Original exact-width int8 constant.
    MODE_RT_JOINT_POSITION = 4
    # @brief Original exact-width int8 constant.
    MODE_NRT_JOINT_POSITION = 5
    # @brief Original exact-width int8 constant.
    MODE_NRT_PLAN_EXECUTION = 6
    # @brief Original exact-width int8 constant.
    MODE_NRT_PRIMITIVE_EXECUTION = 7
    # @brief Original exact-width int8 constant.
    MODE_RT_CARTESIAN_MOTION_FORCE = 8
    # @brief Original exact-width int8 constant.
    MODE_NRT_CARTESIAN_MOTION_FORCE = 9
    # @brief Original exact-width int8 constant.
    MODE_NRT_SUPER_PRIMITIVE = 10

REGISTRY.add(Ros2Flexiv_msgsMsgMode)


class Ros2Std_msgsMsgHeader(Record):
    """@brief Own every original std_msgs/msg/Header field.
    @details 2 fields; 12..268 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('stamp', 'frame_id')
    SCHEMA = {'type': 'std_msgs/msg/Header',
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
                 'default': None}]}

REGISTRY.add(Ros2Std_msgsMsgHeader)


class Ros2Geometry_msgsMsgPoint(Record):
    """@brief Own every original geometry_msgs/msg/Point field.
    @details 3 fields; 24..24 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('x', 'y', 'z')
    SCHEMA = {'type': 'geometry_msgs/msg/Point',
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
                 'default': None}]}

REGISTRY.add(Ros2Geometry_msgsMsgPoint)


class Ros2Geometry_msgsMsgQuaternion(Record):
    """@brief Own every original geometry_msgs/msg/Quaternion field.
    @details 4 fields; 32..32 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('x', 'y', 'z', 'w')
    SCHEMA = {'type': 'geometry_msgs/msg/Quaternion',
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
                 'default': 1.0}]}

REGISTRY.add(Ros2Geometry_msgsMsgQuaternion)


class Ros2Geometry_msgsMsgPose(Record):
    """@brief Own every original geometry_msgs/msg/Pose field.
    @details 2 fields; 56..56 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('position', 'orientation')
    SCHEMA = {'type': 'geometry_msgs/msg/Pose',
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
                 'default': None}]}

REGISTRY.add(Ros2Geometry_msgsMsgPose)


class Ros2Geometry_msgsMsgPoseStamped(Record):
    """@brief Own every original geometry_msgs/msg/PoseStamped field.
    @details 2 fields; 68..324 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('header', 'pose')
    SCHEMA = {'type': 'geometry_msgs/msg/PoseStamped',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_a8495b0ebccf56849f2c0f798064894dde7c4eb15988d22b3a684a9fd18d05ad',
     'minimum': 68,
     'maximum': 324,
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
                 'default': None}]}

REGISTRY.add(Ros2Geometry_msgsMsgPoseStamped)


class Ros2Geometry_msgsMsgVector3(Record):
    """@brief Own every original geometry_msgs/msg/Vector3 field.
    @details 3 fields; 24..24 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('x', 'y', 'z')
    SCHEMA = {'type': 'geometry_msgs/msg/Vector3',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e',
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
                 'default': None}]}

REGISTRY.add(Ros2Geometry_msgsMsgVector3)


class Ros2Geometry_msgsMsgTwist(Record):
    """@brief Own every original geometry_msgs/msg/Twist field.
    @details 2 fields; 48..48 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('linear', 'angular')
    SCHEMA = {'type': 'geometry_msgs/msg/Twist',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e',
     'minimum': 48,
     'maximum': 48,
     'semantics': '',
     'fields': [{'name': 'linear',
                 'type': 'geometry_msgs/msg/Vector3',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'angular',
                 'type': 'geometry_msgs/msg/Vector3',
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

REGISTRY.add(Ros2Geometry_msgsMsgTwist)


class Ros2Geometry_msgsMsgTwistStamped(Record):
    """@brief Own every original geometry_msgs/msg/TwistStamped field.
    @details 2 fields; 60..316 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('header', 'twist')
    SCHEMA = {'type': 'geometry_msgs/msg/TwistStamped',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_e26c5749f60e59245f541ae7c9d66b0d5fc47eef38fa163338aa39316751e308',
     'minimum': 60,
     'maximum': 316,
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
                {'name': 'twist',
                 'type': 'geometry_msgs/msg/Twist',
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

REGISTRY.add(Ros2Geometry_msgsMsgTwistStamped)


class Ros2Geometry_msgsMsgWrench(Record):
    """@brief Own every original geometry_msgs/msg/Wrench field.
    @details 2 fields; 48..48 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('force', 'torque')
    SCHEMA = {'type': 'geometry_msgs/msg/Wrench',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_fdfdf2474c0129b0ce1f85972cc87fd80478ac7d2429d9de1ec58951a82a11b6',
     'minimum': 48,
     'maximum': 48,
     'semantics': '',
     'fields': [{'name': 'force',
                 'type': 'geometry_msgs/msg/Vector3',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'torque',
                 'type': 'geometry_msgs/msg/Vector3',
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

REGISTRY.add(Ros2Geometry_msgsMsgWrench)


class Ros2Geometry_msgsMsgWrenchStamped(Record):
    """@brief Own every original geometry_msgs/msg/WrenchStamped field.
    @details 2 fields; 60..316 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('header', 'wrench')
    SCHEMA = {'type': 'geometry_msgs/msg/WrenchStamped',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_b9573c0cc3e84b6782f303e91813d65244f61e9f58639477158795d710127177',
     'minimum': 60,
     'maximum': 316,
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
                {'name': 'wrench',
                 'type': 'geometry_msgs/msg/Wrench',
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

REGISTRY.add(Ros2Geometry_msgsMsgWrenchStamped)


class Ros2Flexiv_msgsMsgRobotStates(Record):
    """@brief Own every original flexiv_msgs/msg/RobotStates field.
    @details 19 fields; 552..5160 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('header',
 'robot_timestamp',
 'q',
 'theta',
 'dq',
 'dtheta',
 'tau',
 'tau_dot',
 'tau_ext',
 'tau_interact',
 'temperature',
 'tcp_pose',
 'tcp_twist',
 'flange_pose',
 'raw_ft_sensor',
 'tcp_wrench_local',
 'tcp_wrench',
 'raw_tcp_wrench_local',
 'raw_tcp_wrench')
    SCHEMA = {'type': 'flexiv_msgs/msg/RobotStates',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_3faeb145bd2ce50b6478e44c55400cc484e619eb66783f56a4a0801d51af708a',
     'minimum': 552,
     'maximum': 5160,
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
                {'name': 'robot_timestamp',
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
                {'name': 'q',
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
                 'default': None},
                {'name': 'theta',
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
                 'default': None},
                {'name': 'dq',
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
                 'default': None},
                {'name': 'dtheta',
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
                 'default': None},
                {'name': 'tau',
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
                 'default': None},
                {'name': 'tau_dot',
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
                 'default': None},
                {'name': 'tau_ext',
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
                 'default': None},
                {'name': 'tau_interact',
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
                 'default': None},
                {'name': 'temperature',
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
                 'default': None},
                {'name': 'tcp_pose',
                 'type': 'geometry_msgs/msg/PoseStamped',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'tcp_twist',
                 'type': 'geometry_msgs/msg/TwistStamped',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'flange_pose',
                 'type': 'geometry_msgs/msg/PoseStamped',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'raw_ft_sensor',
                 'type': 'geometry_msgs/msg/WrenchStamped',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'tcp_wrench_local',
                 'type': 'geometry_msgs/msg/WrenchStamped',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'tcp_wrench',
                 'type': 'geometry_msgs/msg/WrenchStamped',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'raw_tcp_wrench_local',
                 'type': 'geometry_msgs/msg/WrenchStamped',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'raw_tcp_wrench',
                 'type': 'geometry_msgs/msg/WrenchStamped',
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

REGISTRY.add(Ros2Flexiv_msgsMsgRobotStates)

