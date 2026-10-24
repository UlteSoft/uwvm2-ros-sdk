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


class Ros2Flexiv_msgsActionErrorRecovery_Goal(Record):
    """@brief Own every original flexiv_msgs/action/ErrorRecovery_Goal field.
    @details 1 fields; 1..1 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('run_auto_recovery',)
    SCHEMA = {'type': 'flexiv_msgs/action/ErrorRecovery_Goal',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_255a9d152d16f6abe76bca261fbd19c385548a2f64dd421c58c74dc19f1bfd41',
     'minimum': 1,
     'maximum': 1,
     'semantics': '',
     'fields': [{'name': 'run_auto_recovery',
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
                 'default': False}]}

REGISTRY.add(Ros2Flexiv_msgsActionErrorRecovery_Goal)


class Ros2Flexiv_msgsActionErrorRecovery_Result(Record):
    """@brief Own every original flexiv_msgs/action/ErrorRecovery_Result field.
    @details 4 fields; 7..263 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('success', 'message', 'requires_controller_restart', 'recovery_policy')
    SCHEMA = {'type': 'flexiv_msgs/action/ErrorRecovery_Result',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_e1f54f9716ae64b5da8c1463f36379fbfffe35ea983a25dcb9db6e09771fcedc',
     'minimum': 7,
     'maximum': 263,
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
                {'name': 'requires_controller_restart',
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
                {'name': 'recovery_policy',
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
                 'default': None}]}

REGISTRY.add(Ros2Flexiv_msgsActionErrorRecovery_Result)


class Ros2Flexiv_msgsActionErrorRecovery_Feedback(Record):
    """@brief Own every original flexiv_msgs/action/ErrorRecovery_Feedback field.
    @details 3 fields; 9..265 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('recovery_state', 'recovery_state_name', 'elapsed_seconds')
    SCHEMA = {'type': 'flexiv_msgs/action/ErrorRecovery_Feedback',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_bf87aae8f76ba18d46ab7985e48a667f6b1ed99a403aa90921c80ae4d4ac197a',
     'minimum': 9,
     'maximum': 265,
     'semantics': '',
     'fields': [{'name': 'recovery_state',
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
                {'name': 'recovery_state_name',
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
                {'name': 'elapsed_seconds',
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
                 'default': None}]}
    # @brief Original exact-width uint8 constant.
    STATE_IDLE = 0
    # @brief Original exact-width uint8 constant.
    STATE_CLASSIFY = 1
    # @brief Original exact-width uint8 constant.
    STATE_STOP = 2
    # @brief Original exact-width uint8 constant.
    STATE_CLEAR_FAULT = 3
    # @brief Original exact-width uint8 constant.
    STATE_WAIT_FAULT_CLEARED = 4
    # @brief Original exact-width uint8 constant.
    STATE_ENABLE = 5
    # @brief Original exact-width uint8 constant.
    STATE_WAIT_OPERATIONAL = 6
    # @brief Original exact-width uint8 constant.
    STATE_UNLOCK_EXTERNAL_AXES = 7
    # @brief Original exact-width uint8 constant.
    STATE_RUN_AUTO_RECOVERY = 8
    # @brief Original exact-width uint8 constant.
    STATE_COMPLETE = 9
    # @brief Original exact-width uint8 constant.
    STATE_FAILED = 10

REGISTRY.add(Ros2Flexiv_msgsActionErrorRecovery_Feedback)


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


class Ros2Flexiv_msgsMsgCartesianMotionForce(Record):
    """@brief Own every original flexiv_msgs/msg/CartesianMotionForce field.
    @details 4 fields; 164..420 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('header', 'pose', 'wrench', 'velocity')
    SCHEMA = {'type': 'flexiv_msgs/msg/CartesianMotionForce',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_2f8de91fe69cf2aa5a50dabb1178e9dcef6b1196602e667a8901caeeb7cba8c3',
     'minimum': 164,
     'maximum': 420,
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
                 'default': None},
                {'name': 'velocity',
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

REGISTRY.add(Ros2Flexiv_msgsMsgCartesianMotionForce)


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


class Ros2Flexiv_msgsMsgJointImpedance(Record):
    """@brief Own every original flexiv_msgs/msg/JointImpedance field.
    @details 6 fields; 29..9373 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('header', 'joint_names', 'k_q', 'z_q', 'k_q_nom', 'in_effect')
    SCHEMA = {'type': 'flexiv_msgs/msg/JointImpedance',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_f93719074c048d0ab915eeefd2e62bcdfe16ac74f06a3aa505f06ca6d8c3515a',
     'minimum': 29,
     'maximum': 9373,
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
                {'name': 'joint_names',
                 'type': 'string',
                 'array': 'sequence',
                 'count': 32,
                 'string_bound': 256,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'k_q',
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
                {'name': 'z_q',
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
                {'name': 'k_q_nom',
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
                {'name': 'in_effect',
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

REGISTRY.add(Ros2Flexiv_msgsMsgJointImpedance)


class Ros2Flexiv_msgsMsgJointInertiaScale(Record):
    """@brief Own every original flexiv_msgs/msg/JointInertiaScale field.
    @details 4 fields; 21..8853 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('header', 'joint_names', 'inertia_scales', 'in_effect')
    SCHEMA = {'type': 'flexiv_msgs/msg/JointInertiaScale',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_3dc5f0addd6835f698feda5133efb05cde46e480dee0e219436fcc4443018e1f',
     'minimum': 21,
     'maximum': 8853,
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
                {'name': 'joint_names',
                 'type': 'string',
                 'array': 'sequence',
                 'count': 32,
                 'string_bound': 256,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'inertia_scales',
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
                {'name': 'in_effect',
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

REGISTRY.add(Ros2Flexiv_msgsMsgJointInertiaScale)


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


class Ros2Flexiv_msgsMsgMaxContactTorque(Record):
    """@brief Own every original flexiv_msgs/msg/MaxContactTorque field.
    @details 5 fields; 25..9113 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('header', 'joint_names', 'max_contact_torques', 'tau_max', 'in_effect')
    SCHEMA = {'type': 'flexiv_msgs/msg/MaxContactTorque',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_d98ebc099077f69f5311d46c2179d08367c301b6c9d1b272b3bc55ba3df185da',
     'minimum': 25,
     'maximum': 9113,
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
                {'name': 'joint_names',
                 'type': 'string',
                 'array': 'sequence',
                 'count': 32,
                 'string_bound': 256,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'max_contact_torques',
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
                {'name': 'tau_max',
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
                {'name': 'in_effect',
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

REGISTRY.add(Ros2Flexiv_msgsMsgMaxContactTorque)


class Ros2Flexiv_msgsMsgMode(Record):
    """@brief Own every original flexiv_msgs/msg/Mode field.
    @details 1 fields; 1..1 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('mode',)
    SCHEMA = {'type': 'flexiv_msgs/msg/Mode',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_79f6d3de38a4d7d514780f9d71fcc8b5cd413a3b511f1b31243c210265be0c87',
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
    MODE_UNKNOWN = 0
    # @brief Original exact-width int8 constant.
    MODE_IDLE = 1
    # @brief Original exact-width int8 constant.
    MODE_RT_JOINT_TORQUE = 2
    # @brief Original exact-width int8 constant.
    MODE_RT_JOINT_IMPEDANCE = 3
    # @brief Original exact-width int8 constant.
    MODE_NRT_JOINT_IMPEDANCE = 4
    # @brief Original exact-width int8 constant.
    MODE_RT_JOINT_POSITION = 5
    # @brief Original exact-width int8 constant.
    MODE_NRT_JOINT_POSITION = 6
    # @brief Original exact-width int8 constant.
    MODE_NRT_PLAN_EXECUTION = 7
    # @brief Original exact-width int8 constant.
    MODE_NRT_PRIMITIVE_EXECUTION = 8
    # @brief Original exact-width int8 constant.
    MODE_RT_CARTESIAN_MOTION_FORCE = 9
    # @brief Original exact-width int8 constant.
    MODE_NRT_CARTESIAN_MOTION_FORCE = 10
    # @brief Original exact-width int8 constant.
    MODE_NRT_SUPER_PRIMITIVE = 11

REGISTRY.add(Ros2Flexiv_msgsMsgMode)


class Ros2Flexiv_msgsMsgRobotEvent(Record):
    """@brief Own every original flexiv_msgs/msg/RobotEvent field.
    @details 7 fields; 29..1053 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('level',
 'id',
 'description',
 'consequences',
 'probable_causes',
 'recommended_actions',
 'timestamp')
    SCHEMA = {'type': 'flexiv_msgs/msg/RobotEvent',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_cbc02424eaea2ae9754309d070d424f0d0fcd078e67a64b22cbb1a36848e0a17',
     'minimum': 29,
     'maximum': 1053,
     'semantics': '',
     'fields': [{'name': 'level',
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
                 'type': 'int32',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'description',
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
                {'name': 'consequences',
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
                {'name': 'probable_causes',
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
                {'name': 'recommended_actions',
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
                {'name': 'timestamp',
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
                 'default': None}]}
    # @brief Original exact-width uint8 constant.
    LEVEL_UNKNOWN = 0
    # @brief Original exact-width uint8 constant.
    LEVEL_INFO = 1
    # @brief Original exact-width uint8 constant.
    LEVEL_WARNING = 2
    # @brief Original exact-width uint8 constant.
    LEVEL_ERROR = 3
    # @brief Original exact-width uint8 constant.
    LEVEL_CRITICAL = 4

REGISTRY.add(Ros2Flexiv_msgsMsgRobotEvent)


class Ros2Flexiv_msgsMsgOperationalStatus(Record):
    """@brief Own every original flexiv_msgs/msg/OperationalStatus field.
    @details 14 fields; 34..17650 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('header',
 'operational_status',
 'operational_status_name',
 'driver_state',
 'connected',
 'fault',
 'operational',
 'estop_released',
 'reduced',
 'recovery_state',
 'control_mode',
 'recovery_policy',
 'message',
 'recent_events')
    SCHEMA = {'type': 'flexiv_msgs/msg/OperationalStatus',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_fb8887a722a4b6d895ed17ba5db0f4145b4ddd01eecf876419b287dd07bc728b',
     'minimum': 34,
     'maximum': 17650,
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
                {'name': 'operational_status',
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
                {'name': 'operational_status_name',
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
                {'name': 'driver_state',
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
                {'name': 'connected',
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
                {'name': 'fault',
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
                {'name': 'operational',
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
                {'name': 'estop_released',
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
                {'name': 'reduced',
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
                {'name': 'recovery_state',
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
                {'name': 'control_mode',
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
                {'name': 'recovery_policy',
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
                {'name': 'recent_events',
                 'type': 'flexiv_msgs/msg/RobotEvent',
                 'array': 'sequence',
                 'count': 16,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}]}
    # @brief Original exact-width uint8 constant.
    STATUS_UNKNOWN = 0
    # @brief Original exact-width uint8 constant.
    STATUS_READY = 1
    # @brief Original exact-width uint8 constant.
    STATUS_BOOTING = 2
    # @brief Original exact-width uint8 constant.
    STATUS_ESTOP_NOT_RELEASED = 3
    # @brief Original exact-width uint8 constant.
    STATUS_NOT_ENABLED = 4
    # @brief Original exact-width uint8 constant.
    STATUS_RELEASING_BRAKE = 5
    # @brief Original exact-width uint8 constant.
    STATUS_MINOR_FAULT = 6
    # @brief Original exact-width uint8 constant.
    STATUS_CRITICAL_FAULT = 7
    # @brief Original exact-width uint8 constant.
    STATUS_IN_REDUCED_STATE = 8
    # @brief Original exact-width uint8 constant.
    STATUS_IN_RECOVERY_STATE = 9
    # @brief Original exact-width uint8 constant.
    STATUS_IN_MANUAL_MODE = 10
    # @brief Original exact-width uint8 constant.
    STATUS_IN_AUTO_MODE = 11
    # @brief Original exact-width uint8 constant.
    DRIVER_UNINITIALIZED = 0
    # @brief Original exact-width uint8 constant.
    DRIVER_READY = 1
    # @brief Original exact-width uint8 constant.
    DRIVER_FAULT = 2
    # @brief Original exact-width uint8 constant.
    DRIVER_RECOVERING = 3
    # @brief Original exact-width uint8 constant.
    DRIVER_LOCKOUT = 4
    # @brief Original exact-width uint8 constant.
    DRIVER_DISCONNECTED = 5

REGISTRY.add(Ros2Flexiv_msgsMsgOperationalStatus)


class Ros2Flexiv_msgsMsgRecoveryPolicy(Record):
    """@brief Own every original flexiv_msgs/msg/RecoveryPolicy field.
    @details 1 fields; 1..1 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('recovery_policy',)
    SCHEMA = {'type': 'flexiv_msgs/msg/RecoveryPolicy',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_0eb43d2482caac32e0977e6cd8ae7baeeba7fca2629c5cd1e1927e8a28af42bf',
     'minimum': 1,
     'maximum': 1,
     'semantics': '',
     'fields': [{'name': 'recovery_policy',
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
                 'default': None}]}
    # @brief Original exact-width uint8 constant.
    NONE = 0
    # @brief Original exact-width uint8 constant.
    TRANSIENT = 1
    # @brief Original exact-width uint8 constant.
    AUTO_RECOVERABLE = 2
    # @brief Original exact-width uint8 constant.
    WAIT_OPERATOR = 3
    # @brief Original exact-width uint8 constant.
    SAFETY_LOCKOUT = 4
    # @brief Original exact-width uint8 constant.
    CONNECTION_LOST = 5

REGISTRY.add(Ros2Flexiv_msgsMsgRecoveryPolicy)


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


class Ros2Geometry_msgsMsgAccel(Record):
    """@brief Own every original geometry_msgs/msg/Accel field.
    @details 2 fields; 48..48 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('linear', 'angular')
    SCHEMA = {'type': 'geometry_msgs/msg/Accel',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_87264cb87970315248345c43cc629bbc0c9f9b2a8c6c4bc089da81c7af552fde',
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

REGISTRY.add(Ros2Geometry_msgsMsgAccel)


class Ros2Geometry_msgsMsgAccelStamped(Record):
    """@brief Own every original geometry_msgs/msg/AccelStamped field.
    @details 2 fields; 60..316 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('header', 'accel')
    SCHEMA = {'type': 'geometry_msgs/msg/AccelStamped',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_99c561d1968cbb554a188d387fb085b6721227a88b7243a7f90682ae20782329',
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
                {'name': 'accel',
                 'type': 'geometry_msgs/msg/Accel',
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

REGISTRY.add(Ros2Geometry_msgsMsgAccelStamped)


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
 'tcp_vel',
 'flange_pose',
 'ft_sensor_raw',
 'ext_wrench_in_tcp',
 'ext_wrench_in_world',
 'ext_wrench_in_tcp_raw',
 'ext_wrench_in_world_raw')
    SCHEMA = {'type': 'flexiv_msgs/msg/RobotStates',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_7e84612c73d2d16252a0b93f995b5afa7e032f3de3826f0577c89670dde1f2d2',
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
                {'name': 'tcp_vel',
                 'type': 'geometry_msgs/msg/AccelStamped',
                 'array': '',
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
                {'name': 'ft_sensor_raw',
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
                {'name': 'ext_wrench_in_tcp',
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
                {'name': 'ext_wrench_in_world',
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
                {'name': 'ext_wrench_in_tcp_raw',
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
                {'name': 'ext_wrench_in_world_raw',
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


class Ros2Flexiv_msgsSrvGetOperationalStatus_Request(Record):
    """@brief Own every original flexiv_msgs/srv/GetOperationalStatus_Request field.
    @details 0 fields; 0..0 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ()
    SCHEMA = {'type': 'flexiv_msgs/srv/GetOperationalStatus_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_7fd7ea129ca031bf1bf8d008b1273bc0deb676f3ae786731b420cd009bb3ae12',
     'minimum': 0,
     'maximum': 0,
     'semantics': '',
     'fields': []}

REGISTRY.add(Ros2Flexiv_msgsSrvGetOperationalStatus_Request)


class Ros2Flexiv_msgsSrvGetOperationalStatus_Response(Record):
    """@brief Own every original flexiv_msgs/srv/GetOperationalStatus_Response field.
    @details 1 fields; 34..17650 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('status',)
    SCHEMA = {'type': 'flexiv_msgs/srv/GetOperationalStatus_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_b804d4a8c3dfdd26b0cad4314552092a90f439f0f364831b855bca4c30d49f42',
     'minimum': 34,
     'maximum': 17650,
     'semantics': '',
     'fields': [{'name': 'status',
                 'type': 'flexiv_msgs/msg/OperationalStatus',
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

REGISTRY.add(Ros2Flexiv_msgsSrvGetOperationalStatus_Response)


class Ros2Flexiv_msgsSrvSetCartesianImpedance_Request(Record):
    """@brief Own every original flexiv_msgs/srv/SetCartesianImpedance_Request field.
    @details 2 fields; 8..520 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('k_x', 'z_x')
    SCHEMA = {'type': 'flexiv_msgs/srv/SetCartesianImpedance_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_a121634cb756eace8772aa4fb681a103b4716f6289a1ba66608d66ce2d83ff9f',
     'minimum': 8,
     'maximum': 520,
     'semantics': '',
     'fields': [{'name': 'k_x',
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
                {'name': 'z_x',
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

REGISTRY.add(Ros2Flexiv_msgsSrvSetCartesianImpedance_Request)


class Ros2Flexiv_msgsSrvSetCartesianImpedance_Response(Record):
    """@brief Own every original flexiv_msgs/srv/SetCartesianImpedance_Response field.
    @details 3 fields; 9..521 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('success', 'message', 'k_x_nom')
    SCHEMA = {'type': 'flexiv_msgs/srv/SetCartesianImpedance_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_84cb649adf8fdcbc9e499dd9c8274542c7de6c466fbab5c2721349ee76974f29',
     'minimum': 9,
     'maximum': 521,
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
                {'name': 'k_x_nom',
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

REGISTRY.add(Ros2Flexiv_msgsSrvSetCartesianImpedance_Response)


class Ros2Flexiv_msgsSrvSetCartesianMotionLimits_Request(Record):
    """@brief Own every original flexiv_msgs/srv/SetCartesianMotionLimits_Request field.
    @details 4 fields; 16..1040 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('max_linear_vel', 'max_angular_vel', 'max_linear_acc', 'max_angular_acc')
    SCHEMA = {'type': 'flexiv_msgs/srv/SetCartesianMotionLimits_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_381d447a83ce08a843476dfe3b7e1650477b2575f873706d80d458e8153a6111',
     'minimum': 16,
     'maximum': 1040,
     'semantics': '',
     'fields': [{'name': 'max_linear_vel',
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
                {'name': 'max_angular_vel',
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
                {'name': 'max_linear_acc',
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
                {'name': 'max_angular_acc',
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

REGISTRY.add(Ros2Flexiv_msgsSrvSetCartesianMotionLimits_Request)


class Ros2Flexiv_msgsSrvSetCartesianMotionLimits_Response(Record):
    """@brief Own every original flexiv_msgs/srv/SetCartesianMotionLimits_Response field.
    @details 2 fields; 5..261 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('success', 'message')
    SCHEMA = {'type': 'flexiv_msgs/srv/SetCartesianMotionLimits_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_0adcf054313396afa13673e6a125f8a6dcc85b1009d36860b6447512f52bdc36',
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
                 'default': None}]}

REGISTRY.add(Ros2Flexiv_msgsSrvSetCartesianMotionLimits_Response)


class Ros2Flexiv_msgsSrvSetForceControlAxis_Request(Record):
    """@brief Own every original flexiv_msgs/srv/SetForceControlAxis_Request field.
    @details 2 fields; 8..296 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('enabled_axes', 'max_linear_vel')
    SCHEMA = {'type': 'flexiv_msgs/srv/SetForceControlAxis_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_f068f06ad10e40bd50d06800f4178636c89547f5302af856a00d49757b54fef0',
     'minimum': 8,
     'maximum': 296,
     'semantics': '',
     'fields': [{'name': 'enabled_axes',
                 'type': 'bool',
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
                {'name': 'max_linear_vel',
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

REGISTRY.add(Ros2Flexiv_msgsSrvSetForceControlAxis_Request)


class Ros2Flexiv_msgsSrvSetForceControlAxis_Response(Record):
    """@brief Own every original flexiv_msgs/srv/SetForceControlAxis_Response field.
    @details 2 fields; 5..261 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('success', 'message')
    SCHEMA = {'type': 'flexiv_msgs/srv/SetForceControlAxis_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_26f01b6e3ddb369b49f0a6521104992e654ea628d864c0883b9ccc584234963b',
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
                 'default': None}]}

REGISTRY.add(Ros2Flexiv_msgsSrvSetForceControlAxis_Response)


class Ros2Flexiv_msgsSrvSetForceControlFrame_Request(Record):
    """@brief Own every original flexiv_msgs/srv/SetForceControlFrame_Request field.
    @details 2 fields; 8..296 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('root_coord', 't_in_root')
    SCHEMA = {'type': 'flexiv_msgs/srv/SetForceControlFrame_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_3f061d3f029eddf256a9aa50f07767e77d5c3b2efd6ae69a2ad4a789f4692b30',
     'minimum': 8,
     'maximum': 296,
     'semantics': '',
     'fields': [{'name': 'root_coord',
                 'type': 'uint8',
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
                {'name': 't_in_root',
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
    # @brief Original exact-width uint8 constant.
    WORLD = 0
    # @brief Original exact-width uint8 constant.
    TCP = 1

REGISTRY.add(Ros2Flexiv_msgsSrvSetForceControlFrame_Request)


class Ros2Flexiv_msgsSrvSetForceControlFrame_Response(Record):
    """@brief Own every original flexiv_msgs/srv/SetForceControlFrame_Response field.
    @details 2 fields; 5..261 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('success', 'message')
    SCHEMA = {'type': 'flexiv_msgs/srv/SetForceControlFrame_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_cfec8391d4df88d36f4e3afbb956b12b3274b3bd0a6a6284cb44d49f12a44bde',
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
                 'default': None}]}

REGISTRY.add(Ros2Flexiv_msgsSrvSetForceControlFrame_Response)


class Ros2Flexiv_msgsSrvSetJointImpedance_Request(Record):
    """@brief Own every original flexiv_msgs/srv/SetJointImpedance_Request field.
    @details 2 fields; 8..520 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('k_q', 'z_q')
    SCHEMA = {'type': 'flexiv_msgs/srv/SetJointImpedance_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_5b1014a3a79fcd116f94142640c2c3e9c1867a2c54b9382f7165f7fda04a8584',
     'minimum': 8,
     'maximum': 520,
     'semantics': '',
     'fields': [{'name': 'k_q',
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
                {'name': 'z_q',
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

REGISTRY.add(Ros2Flexiv_msgsSrvSetJointImpedance_Request)


class Ros2Flexiv_msgsSrvSetJointImpedance_Response(Record):
    """@brief Own every original flexiv_msgs/srv/SetJointImpedance_Response field.
    @details 3 fields; 34..9634 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('success', 'message', 'setting')
    SCHEMA = {'type': 'flexiv_msgs/srv/SetJointImpedance_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_95a169dd0eb880ef3e71653a5e4cdf08e743db80df706e75664db582eb927f96',
     'minimum': 34,
     'maximum': 9634,
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
                {'name': 'setting',
                 'type': 'flexiv_msgs/msg/JointImpedance',
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

REGISTRY.add(Ros2Flexiv_msgsSrvSetJointImpedance_Response)


class Ros2Flexiv_msgsSrvSetJointInertiaScale_Request(Record):
    """@brief Own every original flexiv_msgs/srv/SetJointInertiaScale_Request field.
    @details 1 fields; 4..260 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('inertia_scales',)
    SCHEMA = {'type': 'flexiv_msgs/srv/SetJointInertiaScale_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_752da94424644200ef0e6463486a6dbc74b85c46acfaeac3b569b6248c1e2686',
     'minimum': 4,
     'maximum': 260,
     'semantics': '',
     'fields': [{'name': 'inertia_scales',
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

REGISTRY.add(Ros2Flexiv_msgsSrvSetJointInertiaScale_Request)


class Ros2Flexiv_msgsSrvSetJointInertiaScale_Response(Record):
    """@brief Own every original flexiv_msgs/srv/SetJointInertiaScale_Response field.
    @details 3 fields; 26..9114 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('success', 'message', 'setting')
    SCHEMA = {'type': 'flexiv_msgs/srv/SetJointInertiaScale_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_2b7d36ecdc70ec1a450a03d412cfd431e735fc3aa601f321007afabe00f51931',
     'minimum': 26,
     'maximum': 9114,
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
                {'name': 'setting',
                 'type': 'flexiv_msgs/msg/JointInertiaScale',
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

REGISTRY.add(Ros2Flexiv_msgsSrvSetJointInertiaScale_Response)


class Ros2Flexiv_msgsSrvSetMaxContactTorque_Request(Record):
    """@brief Own every original flexiv_msgs/srv/SetMaxContactTorque_Request field.
    @details 1 fields; 4..260 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('max_contact_torques',)
    SCHEMA = {'type': 'flexiv_msgs/srv/SetMaxContactTorque_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_8850403204dc91a11797a767dde6999163008f41ad5c89360d852d037806fb43',
     'minimum': 4,
     'maximum': 260,
     'semantics': '',
     'fields': [{'name': 'max_contact_torques',
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

REGISTRY.add(Ros2Flexiv_msgsSrvSetMaxContactTorque_Request)


class Ros2Flexiv_msgsSrvSetMaxContactTorque_Response(Record):
    """@brief Own every original flexiv_msgs/srv/SetMaxContactTorque_Response field.
    @details 3 fields; 30..9374 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('success', 'message', 'setting')
    SCHEMA = {'type': 'flexiv_msgs/srv/SetMaxContactTorque_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_602bd439ab984dd9d7f64786005dd4f5763d245121a09833f75cee914e9dd43c',
     'minimum': 30,
     'maximum': 9374,
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
                {'name': 'setting',
                 'type': 'flexiv_msgs/msg/MaxContactTorque',
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

REGISTRY.add(Ros2Flexiv_msgsSrvSetMaxContactTorque_Response)


class Ros2Flexiv_msgsSrvSetMaxContactWrench_Request(Record):
    """@brief Own every original flexiv_msgs/srv/SetMaxContactWrench_Request field.
    @details 1 fields; 4..260 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('max_wrench',)
    SCHEMA = {'type': 'flexiv_msgs/srv/SetMaxContactWrench_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_5a943fdeba115cb68b38d0a1d98e9247331419b4ec89ad0870387251fd5d9467',
     'minimum': 4,
     'maximum': 260,
     'semantics': '',
     'fields': [{'name': 'max_wrench',
                 'type': 'float64',
                 'array': 'sequence',
                 'count': 32,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite-or-positive-infinity',
                 'default': None}]}

REGISTRY.add(Ros2Flexiv_msgsSrvSetMaxContactWrench_Request)


class Ros2Flexiv_msgsSrvSetMaxContactWrench_Response(Record):
    """@brief Own every original flexiv_msgs/srv/SetMaxContactWrench_Response field.
    @details 2 fields; 5..261 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('success', 'message')
    SCHEMA = {'type': 'flexiv_msgs/srv/SetMaxContactWrench_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_6a39df3ba6eacc0a230a8f039f16f03574d76818fb53e9445c29f175c2e1420e',
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
                 'default': None}]}

REGISTRY.add(Ros2Flexiv_msgsSrvSetMaxContactWrench_Response)


class Ros2Flexiv_msgsSrvSetNullSpaceObjectives_Request(Record):
    """@brief Own every original flexiv_msgs/srv/SetNullSpaceObjectives_Request field.
    @details 3 fields; 12..780 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('linear_manipulability', 'angular_manipulability', 'ref_positions_tracking')
    SCHEMA = {'type': 'flexiv_msgs/srv/SetNullSpaceObjectives_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_01cb5842d8e2eca55e63f74f7f2c973038bc354a5c0ef2552d4f6e82e382bc27',
     'minimum': 12,
     'maximum': 780,
     'semantics': '',
     'fields': [{'name': 'linear_manipulability',
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
                {'name': 'angular_manipulability',
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
                {'name': 'ref_positions_tracking',
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

REGISTRY.add(Ros2Flexiv_msgsSrvSetNullSpaceObjectives_Request)


class Ros2Flexiv_msgsSrvSetNullSpaceObjectives_Response(Record):
    """@brief Own every original flexiv_msgs/srv/SetNullSpaceObjectives_Response field.
    @details 2 fields; 5..261 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('success', 'message')
    SCHEMA = {'type': 'flexiv_msgs/srv/SetNullSpaceObjectives_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_70fb3c7a3a0a6b46347624a273b6e7180ad1610ca09a5c672b5ad7a976b79298',
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
                 'default': None}]}

REGISTRY.add(Ros2Flexiv_msgsSrvSetNullSpaceObjectives_Response)


class Ros2Flexiv_msgsSrvSetNullSpacePosture_Request(Record):
    """@brief Own every original flexiv_msgs/srv/SetNullSpacePosture_Request field.
    @details 1 fields; 4..260 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('ref_positions',)
    SCHEMA = {'type': 'flexiv_msgs/srv/SetNullSpacePosture_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_0fb02e69195688307d15cc7f8b6f7a95f400d4083cc8c363e29071fee844b92d',
     'minimum': 4,
     'maximum': 260,
     'semantics': '',
     'fields': [{'name': 'ref_positions',
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

REGISTRY.add(Ros2Flexiv_msgsSrvSetNullSpacePosture_Request)


class Ros2Flexiv_msgsSrvSetNullSpacePosture_Response(Record):
    """@brief Own every original flexiv_msgs/srv/SetNullSpacePosture_Response field.
    @details 2 fields; 5..261 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('success', 'message')
    SCHEMA = {'type': 'flexiv_msgs/srv/SetNullSpacePosture_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_913c995a461fa70cd62293c1932d738a4a8b799c4ebd13a1a8afdaa8acef4293',
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
                 'default': None}]}

REGISTRY.add(Ros2Flexiv_msgsSrvSetNullSpacePosture_Response)


class Ros2Flexiv_msgsSrvSetPassiveForceControl_Request(Record):
    """@brief Own every original flexiv_msgs/srv/SetPassiveForceControl_Request field.
    @details 1 fields; 4..36 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('enabled',)
    SCHEMA = {'type': 'flexiv_msgs/srv/SetPassiveForceControl_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_603cd39ccf8c37d944afe9108085fe3ba72881d772e42f24f87ec380f3770d16',
     'minimum': 4,
     'maximum': 36,
     'semantics': '',
     'fields': [{'name': 'enabled',
                 'type': 'bool',
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

REGISTRY.add(Ros2Flexiv_msgsSrvSetPassiveForceControl_Request)


class Ros2Flexiv_msgsSrvSetPassiveForceControl_Response(Record):
    """@brief Own every original flexiv_msgs/srv/SetPassiveForceControl_Response field.
    @details 2 fields; 5..261 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('success', 'message')
    SCHEMA = {'type': 'flexiv_msgs/srv/SetPassiveForceControl_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_73fe92bbcf47063293bde2f3542c719111f0bd82aaa6b500f15122c6aa1e7d35',
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
                 'default': None}]}

REGISTRY.add(Ros2Flexiv_msgsSrvSetPassiveForceControl_Response)

