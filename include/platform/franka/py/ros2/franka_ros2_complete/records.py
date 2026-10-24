"""@file records.py
@brief Complete original franka records for one explicitly selected release.
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


class Ros2Franka_msgsActionErrorRecovery_Goal(Record):
    """@brief Own every original franka_msgs/action/ErrorRecovery_Goal field.
    @details 0 fields; 0..0 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ()
    SCHEMA = {'type': 'franka_msgs/action/ErrorRecovery_Goal',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_2caee3e8d5c04f12239a71f6e9a9259b818b9f1ad75103442bfc9d2343a3a070',
     'minimum': 0,
     'maximum': 0,
     'semantics': '',
     'fields': []}

REGISTRY.add(Ros2Franka_msgsActionErrorRecovery_Goal)


class Ros2Franka_msgsActionErrorRecovery_Result(Record):
    """@brief Own every original franka_msgs/action/ErrorRecovery_Result field.
    @details 0 fields; 0..0 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ()
    SCHEMA = {'type': 'franka_msgs/action/ErrorRecovery_Result',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_9112b16c42034737b96214f23249d499ab6a9f0aee529cfec34c67cdc76809e9',
     'minimum': 0,
     'maximum': 0,
     'semantics': '',
     'fields': []}

REGISTRY.add(Ros2Franka_msgsActionErrorRecovery_Result)


class Ros2Franka_msgsActionErrorRecovery_Feedback(Record):
    """@brief Own every original franka_msgs/action/ErrorRecovery_Feedback field.
    @details 0 fields; 0..0 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ()
    SCHEMA = {'type': 'franka_msgs/action/ErrorRecovery_Feedback',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_cc817bcbe5790860e83c71e50a8c3610cf3965e34036b3099712cdcdb426127f',
     'minimum': 0,
     'maximum': 0,
     'semantics': '',
     'fields': []}

REGISTRY.add(Ros2Franka_msgsActionErrorRecovery_Feedback)


class Ros2Franka_msgsMsgGraspEpsilon(Record):
    """@brief Own every original franka_msgs/msg/GraspEpsilon field.
    @details 2 fields; 16..16 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('inner', 'outer')
    SCHEMA = {'type': 'franka_msgs/msg/GraspEpsilon',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_21787ae5929dc83b9f644f4914e22da9ddd3e4f7ad3d8c6cda6bbcdfeba20c38',
     'minimum': 16,
     'maximum': 16,
     'semantics': '',
     'fields': [{'name': 'inner',
                 'type': 'float64',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': '0.005',
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': 0.005},
                {'name': 'outer',
                 'type': 'float64',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': '0.005',
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': 0.005}]}

REGISTRY.add(Ros2Franka_msgsMsgGraspEpsilon)


class Ros2Franka_msgsActionGrasp_Goal(Record):
    """@brief Own every original franka_msgs/action/Grasp_Goal field.
    @details 4 fields; 40..40 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('width', 'epsilon', 'speed', 'force')
    SCHEMA = {'type': 'franka_msgs/action/Grasp_Goal',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_b7ef701e9fd93b5da9894499234d3647ecc4cea1936f637105c172f4579b6e1f',
     'minimum': 40,
     'maximum': 40,
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
                {'name': 'epsilon',
                 'type': 'franka_msgs/msg/GraspEpsilon',
                 'array': '',
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
                {'name': 'force',
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

REGISTRY.add(Ros2Franka_msgsActionGrasp_Goal)


class Ros2Franka_msgsActionGrasp_Result(Record):
    """@brief Own every original franka_msgs/action/Grasp_Result field.
    @details 2 fields; 5..261 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('success', 'error')
    SCHEMA = {'type': 'franka_msgs/action/Grasp_Result',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_9a4c3150c0c2d5eb8ff3dad403473a9546ee37cc3086a55a628a1a85b905b733',
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

REGISTRY.add(Ros2Franka_msgsActionGrasp_Result)


class Ros2Franka_msgsActionGrasp_Feedback(Record):
    """@brief Own every original franka_msgs/action/Grasp_Feedback field.
    @details 1 fields; 8..8 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('current_width',)
    SCHEMA = {'type': 'franka_msgs/action/Grasp_Feedback',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_2e7697286c002e2d891e9c3167aa0dd1664acfc66c649fff6e8f9101c42703fe',
     'minimum': 8,
     'maximum': 8,
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
                 'default': None}]}

REGISTRY.add(Ros2Franka_msgsActionGrasp_Feedback)


class Ros2Franka_msgsActionHoming_Goal(Record):
    """@brief Own every original franka_msgs/action/Homing_Goal field.
    @details 0 fields; 0..0 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ()
    SCHEMA = {'type': 'franka_msgs/action/Homing_Goal',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_8008426ce3fa8c8d62133704f8738201b8154b324ba07e7b6f605cd3132a885d',
     'minimum': 0,
     'maximum': 0,
     'semantics': '',
     'fields': []}

REGISTRY.add(Ros2Franka_msgsActionHoming_Goal)


class Ros2Franka_msgsActionHoming_Result(Record):
    """@brief Own every original franka_msgs/action/Homing_Result field.
    @details 2 fields; 5..261 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('success', 'error')
    SCHEMA = {'type': 'franka_msgs/action/Homing_Result',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_74a9677213ffa9ba3a26b3053956350b8f75d5d1769152e5e3d4d26370bcd77c',
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

REGISTRY.add(Ros2Franka_msgsActionHoming_Result)


class Ros2Franka_msgsActionHoming_Feedback(Record):
    """@brief Own every original franka_msgs/action/Homing_Feedback field.
    @details 1 fields; 8..8 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('current_width',)
    SCHEMA = {'type': 'franka_msgs/action/Homing_Feedback',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_2260e092d369a0d2e4bf97ca2dfa78c02b6836b8167e71d63e76b5c0c40a6b46',
     'minimum': 8,
     'maximum': 8,
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
                 'default': None}]}

REGISTRY.add(Ros2Franka_msgsActionHoming_Feedback)


class Ros2Franka_msgsActionMove_Goal(Record):
    """@brief Own every original franka_msgs/action/Move_Goal field.
    @details 2 fields; 16..16 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('width', 'speed')
    SCHEMA = {'type': 'franka_msgs/action/Move_Goal',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_9f9e308ebd034344ee73b22a07d005944975c037943279504b2414bdd9ad206f',
     'minimum': 16,
     'maximum': 16,
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
                {'name': 'speed',
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

REGISTRY.add(Ros2Franka_msgsActionMove_Goal)


class Ros2Franka_msgsActionMove_Result(Record):
    """@brief Own every original franka_msgs/action/Move_Result field.
    @details 2 fields; 5..261 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('success', 'error')
    SCHEMA = {'type': 'franka_msgs/action/Move_Result',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_66aa505c035357274c68be773e1b502c7d77f195f3dca848e818811ce95dd266',
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

REGISTRY.add(Ros2Franka_msgsActionMove_Result)


class Ros2Franka_msgsActionMove_Feedback(Record):
    """@brief Own every original franka_msgs/action/Move_Feedback field.
    @details 1 fields; 8..8 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('current_width',)
    SCHEMA = {'type': 'franka_msgs/action/Move_Feedback',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_18d0e658f109492380c135e787adbdcc026b051e9a547fcea70453bbd9750596',
     'minimum': 8,
     'maximum': 8,
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
                 'default': None}]}

REGISTRY.add(Ros2Franka_msgsActionMove_Feedback)


class Ros2Franka_msgsActionPTPMotion_Goal(Record):
    """@brief Own every original franka_msgs/action/PTPMotion_Goal field.
    @details 3 fields; 16..128 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('goal_joint_configuration', 'maximum_joint_velocities', 'goal_tolerance')
    SCHEMA = {'type': 'franka_msgs/action/PTPMotion_Goal',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_7e1b02257a7be37e7bccd0870ebced1e1560e7250eaeaa4547836e721f2ea2cc',
     'minimum': 16,
     'maximum': 128,
     'semantics': '',
     'fields': [{'name': 'goal_joint_configuration',
                 'type': 'float64',
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
                {'name': 'maximum_joint_velocities',
                 'type': 'float64',
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
                {'name': 'goal_tolerance',
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

REGISTRY.add(Ros2Franka_msgsActionPTPMotion_Goal)


class Ros2Franka_msgsMsgTargetStatus(Record):
    """@brief Own every original franka_msgs/msg/TargetStatus field.
    @details 1 fields; 1..1 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('status',)
    SCHEMA = {'type': 'franka_msgs/msg/TargetStatus',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_df49eedc13cd8be2055361d8640c519bfa018ed2a421aa2b59b35c8828eac585',
     'minimum': 1,
     'maximum': 1,
     'semantics': '',
     'fields': [{'name': 'status',
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
    IDLE = 0
    # @brief Original exact-width uint8 constant.
    EXECUTING = 1
    # @brief Original exact-width uint8 constant.
    TARGET_REACHED = 2
    # @brief Original exact-width uint8 constant.
    ABORTED = 3

REGISTRY.add(Ros2Franka_msgsMsgTargetStatus)


class Ros2Franka_msgsActionPTPMotion_Result(Record):
    """@brief Own every original franka_msgs/action/PTPMotion_Result field.
    @details 2 fields; 5..261 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('target_status', 'error_message')
    SCHEMA = {'type': 'franka_msgs/action/PTPMotion_Result',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_b61fabf13a3d8d910a35a5145e87b4dd80180b0678ef5580784f461e850fa4c1',
     'minimum': 5,
     'maximum': 261,
     'semantics': '',
     'fields': [{'name': 'target_status',
                 'type': 'franka_msgs/msg/TargetStatus',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'error_message',
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

REGISTRY.add(Ros2Franka_msgsActionPTPMotion_Result)


class Ros2Franka_msgsActionPTPMotion_Feedback(Record):
    """@brief Own every original franka_msgs/action/PTPMotion_Feedback field.
    @details 1 fields; 1..1 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('target_status',)
    SCHEMA = {'type': 'franka_msgs/action/PTPMotion_Feedback',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_c4dcfeb668595ebc341d76b5cbc606c1ae4c38b28a1b329f8436e61f506a0300',
     'minimum': 1,
     'maximum': 1,
     'semantics': '',
     'fields': [{'name': 'target_status',
                 'type': 'franka_msgs/msg/TargetStatus',
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

REGISTRY.add(Ros2Franka_msgsActionPTPMotion_Feedback)


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


class Ros2Franka_msgsMsgCollisionIndicators(Record):
    """@brief Own every original franka_msgs/msg/CollisionIndicators field.
    @details 6 fields; 208..208 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('is_cartesian_linear_collision',
 'is_cartesian_angular_collision',
 'is_cartesian_linear_contact',
 'is_cartesian_angular_contact',
 'is_joint_collision',
 'is_joint_contact')
    SCHEMA = {'type': 'franka_msgs/msg/CollisionIndicators',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_2bdfb3ece01b47b07fae84a998b23c56fc9482a0518969e43304b318d4ee0ce1',
     'minimum': 208,
     'maximum': 208,
     'semantics': '',
     'fields': [{'name': 'is_cartesian_linear_collision',
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
                {'name': 'is_cartesian_angular_collision',
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
                {'name': 'is_cartesian_linear_contact',
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
                {'name': 'is_cartesian_angular_contact',
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
                {'name': 'is_joint_collision',
                 'type': 'float64',
                 'array': 'array',
                 'count': 7,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'is_joint_contact',
                 'type': 'float64',
                 'array': 'array',
                 'count': 7,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}]}

REGISTRY.add(Ros2Franka_msgsMsgCollisionIndicators)


class Ros2Franka_msgsMsgElbow(Record):
    """@brief Own every original franka_msgs/msg/Elbow field.
    @details 5 fields; 80..80 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('position',
 'desired_position',
 'commanded_position',
 'commanded_velocity',
 'commanded_acceleration')
    SCHEMA = {'type': 'franka_msgs/msg/Elbow',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_686cf2da29007046f9855ffeecac304c159245ec3da153990ab83be4ffce53b6',
     'minimum': 80,
     'maximum': 80,
     'semantics': '',
     'fields': [{'name': 'position',
                 'type': 'float64',
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
                {'name': 'desired_position',
                 'type': 'float64',
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
                {'name': 'commanded_position',
                 'type': 'float64',
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
                {'name': 'commanded_velocity',
                 'type': 'float64',
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
                {'name': 'commanded_acceleration',
                 'type': 'float64',
                 'array': 'array',
                 'count': 2,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}]}

REGISTRY.add(Ros2Franka_msgsMsgElbow)


class Ros2Franka_msgsMsgErrors(Record):
    """@brief Own every original franka_msgs/msg/Errors field.
    @details 36 fields; 36..36 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('joint_position_limits_violation',
 'cartesian_position_limits_violation',
 'self_collision_avoidance_violation',
 'joint_velocity_violation',
 'cartesian_velocity_violation',
 'force_control_safety_violation',
 'joint_reflex',
 'cartesian_reflex',
 'max_goal_pose_deviation_violation',
 'max_path_pose_deviation_violation',
 'cartesian_velocity_profile_safety_violation',
 'joint_position_motion_generator_start_pose_invalid',
 'joint_motion_generator_position_limits_violation',
 'joint_motion_generator_velocity_limits_violation',
 'joint_motion_generator_velocity_discontinuity',
 'joint_motion_generator_acceleration_discontinuity',
 'cartesian_position_motion_generator_start_pose_invalid',
 'cartesian_motion_generator_elbow_limit_violation',
 'cartesian_motion_generator_velocity_limits_violation',
 'cartesian_motion_generator_velocity_discontinuity',
 'cartesian_motion_generator_acceleration_discontinuity',
 'cartesian_motion_generator_elbow_sign_inconsistent',
 'cartesian_motion_generator_start_elbow_invalid',
 'cartesian_motion_generator_joint_position_limits_violation',
 'cartesian_motion_generator_joint_velocity_limits_violation',
 'cartesian_motion_generator_joint_velocity_discontinuity',
 'cartesian_motion_generator_joint_acceleration_discontinuity',
 'cartesian_position_motion_generator_invalid_frame',
 'force_controller_desired_force_tolerance_violation',
 'controller_torque_discontinuity',
 'start_elbow_sign_inconsistent',
 'communication_constraints_violation',
 'power_limit_violation',
 'joint_p2p_insufficient_torque_for_planning',
 'tau_j_range_violation',
 'instability_detected')
    SCHEMA = {'type': 'franka_msgs/msg/Errors',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_c7927af1abe7710bb686574ad6f2459f8425af1d6cdb3189160bb732b5a6bc8c',
     'minimum': 36,
     'maximum': 36,
     'semantics': '',
     'fields': [{'name': 'joint_position_limits_violation',
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
                {'name': 'cartesian_position_limits_violation',
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
                {'name': 'self_collision_avoidance_violation',
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
                {'name': 'joint_velocity_violation',
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
                {'name': 'cartesian_velocity_violation',
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
                {'name': 'force_control_safety_violation',
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
                {'name': 'joint_reflex',
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
                {'name': 'cartesian_reflex',
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
                {'name': 'max_goal_pose_deviation_violation',
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
                {'name': 'max_path_pose_deviation_violation',
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
                {'name': 'cartesian_velocity_profile_safety_violation',
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
                {'name': 'joint_position_motion_generator_start_pose_invalid',
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
                {'name': 'joint_motion_generator_position_limits_violation',
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
                {'name': 'joint_motion_generator_velocity_limits_violation',
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
                {'name': 'joint_motion_generator_velocity_discontinuity',
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
                {'name': 'joint_motion_generator_acceleration_discontinuity',
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
                {'name': 'cartesian_position_motion_generator_start_pose_invalid',
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
                {'name': 'cartesian_motion_generator_elbow_limit_violation',
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
                {'name': 'cartesian_motion_generator_velocity_limits_violation',
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
                {'name': 'cartesian_motion_generator_velocity_discontinuity',
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
                {'name': 'cartesian_motion_generator_acceleration_discontinuity',
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
                {'name': 'cartesian_motion_generator_elbow_sign_inconsistent',
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
                {'name': 'cartesian_motion_generator_start_elbow_invalid',
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
                {'name': 'cartesian_motion_generator_joint_position_limits_violation',
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
                {'name': 'cartesian_motion_generator_joint_velocity_limits_violation',
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
                {'name': 'cartesian_motion_generator_joint_velocity_discontinuity',
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
                {'name': 'cartesian_motion_generator_joint_acceleration_discontinuity',
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
                {'name': 'cartesian_position_motion_generator_invalid_frame',
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
                {'name': 'force_controller_desired_force_tolerance_violation',
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
                {'name': 'controller_torque_discontinuity',
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
                {'name': 'start_elbow_sign_inconsistent',
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
                {'name': 'communication_constraints_violation',
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
                {'name': 'power_limit_violation',
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
                {'name': 'joint_p2p_insufficient_torque_for_planning',
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
                {'name': 'tau_j_range_violation',
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
                {'name': 'instability_detected',
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

REGISTRY.add(Ros2Franka_msgsMsgErrors)


class Ros2Std_msgsMsgHeader(Record):
    """@brief Own every original std_msgs/msg/Header field.
    @details 2 fields; 12..140 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('stamp', 'frame_id')
    SCHEMA = {'type': 'std_msgs/msg/Header',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96',
     'minimum': 12,
     'maximum': 140,
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
                 'string_bound': 128,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}]}

REGISTRY.add(Ros2Std_msgsMsgHeader)


class Ros2Sensor_msgsMsgJointState(Record):
    """@brief Own every original sensor_msgs/msg/JointState field.
    @details 5 fields; 28..1248 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('header', 'name', 'position', 'velocity', 'effort')
    SCHEMA = {'type': 'sensor_msgs/msg/JointState',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_912ba4261e2dfbec0e4a543ea8e5d308ef1d26877b4a7d71162a981ac64c40a3',
     'minimum': 28,
     'maximum': 1248,
     'semantics': 'joint-state-optional-equal-length-arrays',
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
                {'name': 'name',
                 'type': 'string',
                 'array': 'sequence',
                 'count': 7,
                 'string_bound': 128,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'position',
                 'type': 'float64',
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
                {'name': 'velocity',
                 'type': 'float64',
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
                {'name': 'effort',
                 'type': 'float64',
                 'array': 'sequence',
                 'count': 7,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}]}

REGISTRY.add(Ros2Sensor_msgsMsgJointState)


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
    @details 2 fields; 60..188 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('header', 'wrench')
    SCHEMA = {'type': 'geometry_msgs/msg/WrenchStamped',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_e23600874a626ba9d52f043e14ed04beb3e316d47c3bca8bd87cfeed3f5d9d66',
     'minimum': 60,
     'maximum': 188,
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


class Ros2Geometry_msgsMsgInertia(Record):
    """@brief Own every original geometry_msgs/msg/Inertia field.
    @details 8 fields; 80..80 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('m', 'com', 'ixx', 'ixy', 'ixz', 'iyy', 'iyz', 'izz')
    SCHEMA = {'type': 'geometry_msgs/msg/Inertia',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_4a1b7a6a2516724a9a12e5eb166a85cd73d33fc6075c8d517ff2a279fd29e12a',
     'minimum': 80,
     'maximum': 80,
     'semantics': '',
     'fields': [{'name': 'm',
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
                {'name': 'com',
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
                {'name': 'ixx',
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
                {'name': 'ixy',
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
                {'name': 'ixz',
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
                {'name': 'iyy',
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
                {'name': 'iyz',
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
                {'name': 'izz',
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

REGISTRY.add(Ros2Geometry_msgsMsgInertia)


class Ros2Geometry_msgsMsgInertiaStamped(Record):
    """@brief Own every original geometry_msgs/msg/InertiaStamped field.
    @details 2 fields; 92..220 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('header', 'inertia')
    SCHEMA = {'type': 'geometry_msgs/msg/InertiaStamped',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_19b0b442c5858ff1eee20e4658ecc3a2b76fdd64c4a21a1642fae5ab38198576',
     'minimum': 92,
     'maximum': 220,
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
                {'name': 'inertia',
                 'type': 'geometry_msgs/msg/Inertia',
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

REGISTRY.add(Ros2Geometry_msgsMsgInertiaStamped)


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
    @details 2 fields; 68..196 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('header', 'pose')
    SCHEMA = {'type': 'geometry_msgs/msg/PoseStamped',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_71abdc844f18f02f45a354967a5f1c644fb20dc14cbc61c64aa41b927e0712a2',
     'minimum': 68,
     'maximum': 196,
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
    @details 2 fields; 60..188 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('header', 'twist')
    SCHEMA = {'type': 'geometry_msgs/msg/TwistStamped',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_7448b885388ff3454de1a35b8c5c895ee58b791267b435df1e4cf7c1eee0f573',
     'minimum': 60,
     'maximum': 188,
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
    @details 2 fields; 60..188 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('header', 'accel')
    SCHEMA = {'type': 'geometry_msgs/msg/AccelStamped',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_c04d3ae310bd82f7c4c9f30c2ff185ab54989aa3adcc759c7d3eb19853819899',
     'minimum': 60,
     'maximum': 188,
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


class Ros2Geometry_msgsMsgVector3Stamped(Record):
    """@brief Own every original geometry_msgs/msg/Vector3Stamped field.
    @details 2 fields; 36..164 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('header', 'vector')
    SCHEMA = {'type': 'geometry_msgs/msg/Vector3Stamped',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_c6b67646d3fc6d29c195637ea353dafa7085b2bdb55a15a8b65009200b5ed31b',
     'minimum': 36,
     'maximum': 164,
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
                {'name': 'vector',
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

REGISTRY.add(Ros2Geometry_msgsMsgVector3Stamped)


class Ros2Franka_msgsMsgFrankaRobotState(Record):
    """@brief Own every original franka_msgs/msg/FrankaRobotState field.
    @details 29 fields; 1961..10169 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('header',
 'collision_indicators',
 'measured_joint_state',
 'desired_joint_state',
 'measured_joint_motor_state',
 'ddq_d',
 'dtau_j',
 'tau_ext_hat_filtered',
 'elbow',
 'k_f_ext_hat_k',
 'o_f_ext_hat_k',
 'inertia_ee',
 'inertia_load',
 'inertia_total',
 'o_t_ee',
 'o_t_ee_d',
 'o_t_ee_c',
 'f_t_ee',
 'ee_t_k',
 'o_dp_ee_d',
 'o_dp_ee_c',
 'o_ddp_ee_c',
 'time',
 'control_command_success_rate',
 'robot_mode',
 'current_errors',
 'last_motion_errors',
 'accelerometer_top',
 'accelerometer_bottom')
    SCHEMA = {'type': 'franka_msgs/msg/FrankaRobotState',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_0fdc5c99a098f4c891956bb6cd81505995d5dda41a740f88ee456f48f6e07282',
     'minimum': 1961,
     'maximum': 10169,
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
                {'name': 'collision_indicators',
                 'type': 'franka_msgs/msg/CollisionIndicators',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'measured_joint_state',
                 'type': 'sensor_msgs/msg/JointState',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'desired_joint_state',
                 'type': 'sensor_msgs/msg/JointState',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'measured_joint_motor_state',
                 'type': 'sensor_msgs/msg/JointState',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'ddq_d',
                 'type': 'float64',
                 'array': 'array',
                 'count': 7,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'dtau_j',
                 'type': 'float64',
                 'array': 'array',
                 'count': 7,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'tau_ext_hat_filtered',
                 'type': 'sensor_msgs/msg/JointState',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'elbow',
                 'type': 'franka_msgs/msg/Elbow',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'k_f_ext_hat_k',
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
                {'name': 'o_f_ext_hat_k',
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
                {'name': 'inertia_ee',
                 'type': 'geometry_msgs/msg/InertiaStamped',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'inertia_load',
                 'type': 'geometry_msgs/msg/InertiaStamped',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'inertia_total',
                 'type': 'geometry_msgs/msg/InertiaStamped',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'o_t_ee',
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
                {'name': 'o_t_ee_d',
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
                {'name': 'o_t_ee_c',
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
                {'name': 'f_t_ee',
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
                {'name': 'ee_t_k',
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
                {'name': 'o_dp_ee_d',
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
                {'name': 'o_dp_ee_c',
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
                {'name': 'o_ddp_ee_c',
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
                {'name': 'time',
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
                {'name': 'control_command_success_rate',
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
                {'name': 'robot_mode',
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
                {'name': 'current_errors',
                 'type': 'franka_msgs/msg/Errors',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'last_motion_errors',
                 'type': 'franka_msgs/msg/Errors',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'accelerometer_top',
                 'type': 'geometry_msgs/msg/Vector3Stamped',
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
                {'name': 'accelerometer_bottom',
                 'type': 'geometry_msgs/msg/Vector3Stamped',
                 'array': 'array',
                 'count': 6,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}]}
    # @brief Original exact-width uint8 constant.
    ROBOT_MODE_OTHER = 0
    # @brief Original exact-width uint8 constant.
    ROBOT_MODE_IDLE = 1
    # @brief Original exact-width uint8 constant.
    ROBOT_MODE_MOVE = 2
    # @brief Original exact-width uint8 constant.
    ROBOT_MODE_GUIDING = 3
    # @brief Original exact-width uint8 constant.
    ROBOT_MODE_REFLEX = 4
    # @brief Original exact-width uint8 constant.
    ROBOT_MODE_USER_STOPPED = 5
    # @brief Original exact-width uint8 constant.
    ROBOT_MODE_AUTOMATIC_ERROR_RECOVERY = 6

REGISTRY.add(Ros2Franka_msgsMsgFrankaRobotState)


class Ros2Franka_msgsSrvSetCartesianStiffness_Request(Record):
    """@brief Own every original franka_msgs/srv/SetCartesianStiffness_Request field.
    @details 1 fields; 48..48 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('cartesian_stiffness',)
    SCHEMA = {'type': 'franka_msgs/srv/SetCartesianStiffness_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_ae78b9887a5419225cfe0727bac83d8c53f789acd53bd47f024485b02aa98260',
     'minimum': 48,
     'maximum': 48,
     'semantics': '',
     'fields': [{'name': 'cartesian_stiffness',
                 'type': 'float64',
                 'array': 'array',
                 'count': 6,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}]}

REGISTRY.add(Ros2Franka_msgsSrvSetCartesianStiffness_Request)


class Ros2Franka_msgsSrvSetCartesianStiffness_Response(Record):
    """@brief Own every original franka_msgs/srv/SetCartesianStiffness_Response field.
    @details 2 fields; 5..261 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('success', 'error')
    SCHEMA = {'type': 'franka_msgs/srv/SetCartesianStiffness_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_3194f7469bbf228e653f5a93336fd5de4a1b2d7c1fe9542f3fadc8ad4fd51afa',
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

REGISTRY.add(Ros2Franka_msgsSrvSetCartesianStiffness_Response)


class Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request(Record):
    """@brief Own every original franka_msgs/srv/SetForceTorqueCollisionBehavior_Request field.
    @details 4 fields; 208..208 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('lower_torque_thresholds_nominal',
 'upper_torque_thresholds_nominal',
 'lower_force_thresholds_nominal',
 'upper_force_thresholds_nominal')
    SCHEMA = {'type': 'franka_msgs/srv/SetForceTorqueCollisionBehavior_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_829642a9ea418a53f7252f7489bd7f5ed976bf3689443012daf216db895cf99c',
     'minimum': 208,
     'maximum': 208,
     'semantics': '',
     'fields': [{'name': 'lower_torque_thresholds_nominal',
                 'type': 'float64',
                 'array': 'array',
                 'count': 7,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'upper_torque_thresholds_nominal',
                 'type': 'float64',
                 'array': 'array',
                 'count': 7,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'lower_force_thresholds_nominal',
                 'type': 'float64',
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
                {'name': 'upper_force_thresholds_nominal',
                 'type': 'float64',
                 'array': 'array',
                 'count': 6,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}]}

REGISTRY.add(Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request)


class Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response(Record):
    """@brief Own every original franka_msgs/srv/SetForceTorqueCollisionBehavior_Response field.
    @details 2 fields; 5..261 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('success', 'error')
    SCHEMA = {'type': 'franka_msgs/srv/SetForceTorqueCollisionBehavior_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_7d5640c34446e4262a8c00f0b242b68c0095688f0208fd692f21d855003eb47a',
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

REGISTRY.add(Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response)


class Ros2Franka_msgsSrvSetFullCollisionBehavior_Request(Record):
    """@brief Own every original franka_msgs/srv/SetFullCollisionBehavior_Request field.
    @details 8 fields; 416..416 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('lower_torque_thresholds_acceleration',
 'upper_torque_thresholds_acceleration',
 'lower_torque_thresholds_nominal',
 'upper_torque_thresholds_nominal',
 'lower_force_thresholds_acceleration',
 'upper_force_thresholds_acceleration',
 'lower_force_thresholds_nominal',
 'upper_force_thresholds_nominal')
    SCHEMA = {'type': 'franka_msgs/srv/SetFullCollisionBehavior_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_d6898555d931aee3a5b4f5f97830cb9982f2e378c59c40bcaa0201840d2f2824',
     'minimum': 416,
     'maximum': 416,
     'semantics': '',
     'fields': [{'name': 'lower_torque_thresholds_acceleration',
                 'type': 'float64',
                 'array': 'array',
                 'count': 7,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'upper_torque_thresholds_acceleration',
                 'type': 'float64',
                 'array': 'array',
                 'count': 7,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'lower_torque_thresholds_nominal',
                 'type': 'float64',
                 'array': 'array',
                 'count': 7,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'upper_torque_thresholds_nominal',
                 'type': 'float64',
                 'array': 'array',
                 'count': 7,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'lower_force_thresholds_acceleration',
                 'type': 'float64',
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
                {'name': 'upper_force_thresholds_acceleration',
                 'type': 'float64',
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
                {'name': 'lower_force_thresholds_nominal',
                 'type': 'float64',
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
                {'name': 'upper_force_thresholds_nominal',
                 'type': 'float64',
                 'array': 'array',
                 'count': 6,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}]}

REGISTRY.add(Ros2Franka_msgsSrvSetFullCollisionBehavior_Request)


class Ros2Franka_msgsSrvSetFullCollisionBehavior_Response(Record):
    """@brief Own every original franka_msgs/srv/SetFullCollisionBehavior_Response field.
    @details 2 fields; 5..261 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('success', 'error')
    SCHEMA = {'type': 'franka_msgs/srv/SetFullCollisionBehavior_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_76430e384e9ad8b3f3c937e3004e8dc15a51d28abecd108c698e60d39c54f300',
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

REGISTRY.add(Ros2Franka_msgsSrvSetFullCollisionBehavior_Response)


class Ros2Franka_msgsSrvSetJointStiffness_Request(Record):
    """@brief Own every original franka_msgs/srv/SetJointStiffness_Request field.
    @details 1 fields; 56..56 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('joint_stiffness',)
    SCHEMA = {'type': 'franka_msgs/srv/SetJointStiffness_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_65b5d6599d1b97a0356f599102c22e0ae8c33b85f14c5a49b6c097eb227d334c',
     'minimum': 56,
     'maximum': 56,
     'semantics': '',
     'fields': [{'name': 'joint_stiffness',
                 'type': 'float64',
                 'array': 'array',
                 'count': 7,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}]}

REGISTRY.add(Ros2Franka_msgsSrvSetJointStiffness_Request)


class Ros2Franka_msgsSrvSetJointStiffness_Response(Record):
    """@brief Own every original franka_msgs/srv/SetJointStiffness_Response field.
    @details 2 fields; 5..261 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('success', 'error')
    SCHEMA = {'type': 'franka_msgs/srv/SetJointStiffness_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_1a857ab809079e0eec664250a9521ddc1cdf66e61aa2e0f22eae8442f5231c4d',
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

REGISTRY.add(Ros2Franka_msgsSrvSetJointStiffness_Response)


class Ros2Franka_msgsSrvSetLoad_Request(Record):
    """@brief Own every original franka_msgs/srv/SetLoad_Request field.
    @details 3 fields; 104..104 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('mass', 'center_of_mass', 'load_inertia')
    SCHEMA = {'type': 'franka_msgs/srv/SetLoad_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_a616a844864b7bbf4ee18ac481ddd8406bec47354b4519a0e17f8a305635b7f8',
     'minimum': 104,
     'maximum': 104,
     'semantics': '',
     'fields': [{'name': 'mass',
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
                {'name': 'center_of_mass',
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
                {'name': 'load_inertia',
                 'type': 'float64',
                 'array': 'array',
                 'count': 9,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}]}

REGISTRY.add(Ros2Franka_msgsSrvSetLoad_Request)


class Ros2Franka_msgsSrvSetLoad_Response(Record):
    """@brief Own every original franka_msgs/srv/SetLoad_Response field.
    @details 2 fields; 5..261 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('success', 'error')
    SCHEMA = {'type': 'franka_msgs/srv/SetLoad_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_991ff575719ef9442063a13c45a9660c672f5607e6e40cf6ab5c7a3173fa00bf',
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

REGISTRY.add(Ros2Franka_msgsSrvSetLoad_Response)


class Ros2Franka_msgsSrvSetStiffnessFrame_Request(Record):
    """@brief Own every original franka_msgs/srv/SetStiffnessFrame_Request field.
    @details 1 fields; 128..128 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('transformation',)
    SCHEMA = {'type': 'franka_msgs/srv/SetStiffnessFrame_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_f8ee91daba1642286b63178c18bf2a005597e94951f11a185241193132c9f402',
     'minimum': 128,
     'maximum': 128,
     'semantics': '',
     'fields': [{'name': 'transformation',
                 'type': 'float64',
                 'array': 'array',
                 'count': 16,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}]}

REGISTRY.add(Ros2Franka_msgsSrvSetStiffnessFrame_Request)


class Ros2Franka_msgsSrvSetStiffnessFrame_Response(Record):
    """@brief Own every original franka_msgs/srv/SetStiffnessFrame_Response field.
    @details 2 fields; 5..261 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('success', 'error')
    SCHEMA = {'type': 'franka_msgs/srv/SetStiffnessFrame_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_e32cb83b1f0f3cda363566525c0b1fe367190f2e66f68282b330f4517f6ea744',
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

REGISTRY.add(Ros2Franka_msgsSrvSetStiffnessFrame_Response)


class Ros2Franka_msgsSrvSetTCPFrame_Request(Record):
    """@brief Own every original franka_msgs/srv/SetTCPFrame_Request field.
    @details 1 fields; 128..128 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('transformation',)
    SCHEMA = {'type': 'franka_msgs/srv/SetTCPFrame_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_2ef445bfa494a6bc50ee3337695562255c06890216c30ba17df95e691871441f',
     'minimum': 128,
     'maximum': 128,
     'semantics': '',
     'fields': [{'name': 'transformation',
                 'type': 'float64',
                 'array': 'array',
                 'count': 16,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}]}

REGISTRY.add(Ros2Franka_msgsSrvSetTCPFrame_Request)


class Ros2Franka_msgsSrvSetTCPFrame_Response(Record):
    """@brief Own every original franka_msgs/srv/SetTCPFrame_Response field.
    @details 2 fields; 5..261 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('success', 'error')
    SCHEMA = {'type': 'franka_msgs/srv/SetTCPFrame_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_87e4f5556c292289fe17898a40f1f5dd6161e7cc87ca570c86e9f69080d1df38',
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

REGISTRY.add(Ros2Franka_msgsSrvSetTCPFrame_Response)


class Ros2Franka_spine_msgsActionMoveAbsolute_Goal(Record):
    """@brief Own every original franka_spine_msgs/action/MoveAbsolute_Goal field.
    @details 4 fields; 32..32 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('position', 'velocity', 'acceleration', 'deceleration')
    SCHEMA = {'type': 'franka_spine_msgs/action/MoveAbsolute_Goal',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_a0c2f9037fd6730641b19b6da6ce1c6ca03bbd517fdd791c159effc93290cf13',
     'minimum': 32,
     'maximum': 32,
     'semantics': '',
     'fields': [{'name': 'position',
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
                {'name': 'acceleration',
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
                {'name': 'deceleration',
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

REGISTRY.add(Ros2Franka_spine_msgsActionMoveAbsolute_Goal)


class Ros2Franka_spine_msgsActionMoveAbsolute_Result(Record):
    """@brief Own every original franka_spine_msgs/action/MoveAbsolute_Result field.
    @details 3 fields; 9..521 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('success', 'stop_by', 'error')
    SCHEMA = {'type': 'franka_spine_msgs/action/MoveAbsolute_Result',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_86b5c823e6e6604595462a76cd259daef420b2dff169f6dbe00f742f079155d5',
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
                {'name': 'stop_by',
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

REGISTRY.add(Ros2Franka_spine_msgsActionMoveAbsolute_Result)


class Ros2Franka_spine_msgsActionMoveAbsolute_Feedback(Record):
    """@brief Own every original franka_spine_msgs/action/MoveAbsolute_Feedback field.
    @details 1 fields; 8..8 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('current_position',)
    SCHEMA = {'type': 'franka_spine_msgs/action/MoveAbsolute_Feedback',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_cf2f760313ab8c6cc01dd79271619926320021746451f376e56d18f63ffad929',
     'minimum': 8,
     'maximum': 8,
     'semantics': '',
     'fields': [{'name': 'current_position',
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

REGISTRY.add(Ros2Franka_spine_msgsActionMoveAbsolute_Feedback)


class Ros2Franka_spine_msgsMsgUserLimits(Record):
    """@brief Own every original franka_spine_msgs/msg/UserLimits field.
    @details 2 fields; 16..16 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('lower_limit', 'upper_limit')
    SCHEMA = {'type': 'franka_spine_msgs/msg/UserLimits',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_20256e37f0ae710b5cb9ab9438b5ff8144ce2ab6fc606c5335d0f5de5384e368',
     'minimum': 16,
     'maximum': 16,
     'semantics': '',
     'fields': [{'name': 'lower_limit',
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
                {'name': 'upper_limit',
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

REGISTRY.add(Ros2Franka_spine_msgsMsgUserLimits)


class Ros2Franka_spine_msgsMsgSpineParameters(Record):
    """@brief Own every original franka_spine_msgs/msg/SpineParameters field.
    @details 1 fields; 16..16 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('user_limits',)
    SCHEMA = {'type': 'franka_spine_msgs/msg/SpineParameters',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_4d4c45cfccf278c99a189e92d438d0b11b2b693012cb0f76b65b6822eb816223',
     'minimum': 16,
     'maximum': 16,
     'semantics': '',
     'fields': [{'name': 'user_limits',
                 'type': 'franka_spine_msgs/msg/UserLimits',
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

REGISTRY.add(Ros2Franka_spine_msgsMsgSpineParameters)


class Ros2Franka_spine_msgsMsgSpinePosition(Record):
    """@brief Own every original franka_spine_msgs/msg/SpinePosition field.
    @details 3 fields; 21..149 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('header', 'position', 'valid')
    SCHEMA = {'type': 'franka_spine_msgs/msg/SpinePosition',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_71be15c40f39074dfdbe79a3587847ae512c5a3c8df23cc9415d5bfe59d05775',
     'minimum': 21,
     'maximum': 149,
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
                {'name': 'position',
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
                {'name': 'valid',
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

REGISTRY.add(Ros2Franka_spine_msgsMsgSpinePosition)


class Ros2Franka_spine_msgsMsgSpineState(Record):
    """@brief Own every original franka_spine_msgs/msg/SpineState field.
    @details 5 fields; 25..921 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('header', 'state', 'error_code', 'error_description', 'valid')
    SCHEMA = {'type': 'franka_spine_msgs/msg/SpineState',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_ad0b5dc5d79956da854582765c147d3d33edab569c4829e69cc7990edfb89441',
     'minimum': 25,
     'maximum': 921,
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
                {'name': 'error_code',
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
                {'name': 'error_description',
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
                {'name': 'valid',
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

REGISTRY.add(Ros2Franka_spine_msgsMsgSpineState)


class Ros2Franka_spine_msgsSrvFaultReset_Request(Record):
    """@brief Own every original franka_spine_msgs/srv/FaultReset_Request field.
    @details 0 fields; 0..0 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ()
    SCHEMA = {'type': 'franka_spine_msgs/srv/FaultReset_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_0f836229e8e8a1713b9e9a8d7f0f43677ad93380e1f7350ff1597d25067b7f33',
     'minimum': 0,
     'maximum': 0,
     'semantics': '',
     'fields': []}

REGISTRY.add(Ros2Franka_spine_msgsSrvFaultReset_Request)


class Ros2Franka_spine_msgsSrvFaultReset_Response(Record):
    """@brief Own every original franka_spine_msgs/srv/FaultReset_Response field.
    @details 3 fields; 9..521 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('state', 'success', 'message')
    SCHEMA = {'type': 'franka_spine_msgs/srv/FaultReset_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_1ebeded0dbe4a4197a52de3fa43dc57fa372bd4e6ef5e2ded2558ccbf691410c',
     'minimum': 9,
     'maximum': 521,
     'semantics': '',
     'fields': [{'name': 'state',
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
                {'name': 'success',
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

REGISTRY.add(Ros2Franka_spine_msgsSrvFaultReset_Response)


class Ros2Franka_spine_msgsSrvGetParameters_Request(Record):
    """@brief Own every original franka_spine_msgs/srv/GetParameters_Request field.
    @details 0 fields; 0..0 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ()
    SCHEMA = {'type': 'franka_spine_msgs/srv/GetParameters_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_80ef5d2ef6ff2df9d14f29417d1928429315c0b7be9ec59513b9b3943a970b14',
     'minimum': 0,
     'maximum': 0,
     'semantics': '',
     'fields': []}

REGISTRY.add(Ros2Franka_spine_msgsSrvGetParameters_Request)


class Ros2Franka_spine_msgsSrvGetParameters_Response(Record):
    """@brief Own every original franka_spine_msgs/srv/GetParameters_Response field.
    @details 3 fields; 21..277 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('parameters', 'success', 'message')
    SCHEMA = {'type': 'franka_spine_msgs/srv/GetParameters_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_8e648792534d7f4996179f31d353d2594cf63031edef4451fd20a3838dc896ed',
     'minimum': 21,
     'maximum': 277,
     'semantics': '',
     'fields': [{'name': 'parameters',
                 'type': 'franka_spine_msgs/msg/SpineParameters',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'success',
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

REGISTRY.add(Ros2Franka_spine_msgsSrvGetParameters_Response)


class Ros2Franka_spine_msgsSrvGetPosition_Request(Record):
    """@brief Own every original franka_spine_msgs/srv/GetPosition_Request field.
    @details 0 fields; 0..0 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ()
    SCHEMA = {'type': 'franka_spine_msgs/srv/GetPosition_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_66b05d1f08331161cafed301b3ab95a60dbb16aeb1a930ee780db163cb37c6c2',
     'minimum': 0,
     'maximum': 0,
     'semantics': '',
     'fields': []}

REGISTRY.add(Ros2Franka_spine_msgsSrvGetPosition_Request)


class Ros2Franka_spine_msgsSrvGetPosition_Response(Record):
    """@brief Own every original franka_spine_msgs/srv/GetPosition_Response field.
    @details 2 fields; 9..9 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('position', 'success')
    SCHEMA = {'type': 'franka_spine_msgs/srv/GetPosition_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_18d9af57cc9f82c3c03d01e850da254e9431820b8291f03dafd2e8f74e849ab8',
     'minimum': 9,
     'maximum': 9,
     'semantics': '',
     'fields': [{'name': 'position',
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
                {'name': 'success',
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

REGISTRY.add(Ros2Franka_spine_msgsSrvGetPosition_Response)


class Ros2Franka_spine_msgsSrvGetSpineState_Request(Record):
    """@brief Own every original franka_spine_msgs/srv/GetSpineState_Request field.
    @details 0 fields; 0..0 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ()
    SCHEMA = {'type': 'franka_spine_msgs/srv/GetSpineState_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_c4c456174d7b6647d09d986d37c041b942418941a5e01c447486727e919b8a67',
     'minimum': 0,
     'maximum': 0,
     'semantics': '',
     'fields': []}

REGISTRY.add(Ros2Franka_spine_msgsSrvGetSpineState_Request)


class Ros2Franka_spine_msgsSrvGetSpineState_Response(Record):
    """@brief Own every original franka_spine_msgs/srv/GetSpineState_Response field.
    @details 4 fields; 13..781 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('state', 'error_code', 'error_description', 'success')
    SCHEMA = {'type': 'franka_spine_msgs/srv/GetSpineState_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_297d70e2c5c24dcea4bdf8c5f9e5c8c32256e8f35f1900d8afd914ab2acfdcd1',
     'minimum': 13,
     'maximum': 781,
     'semantics': '',
     'fields': [{'name': 'state',
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
                {'name': 'error_code',
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
                {'name': 'error_description',
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
                {'name': 'success',
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

REGISTRY.add(Ros2Franka_spine_msgsSrvGetSpineState_Response)


class Ros2Franka_spine_msgsSrvHalt_Request(Record):
    """@brief Own every original franka_spine_msgs/srv/Halt_Request field.
    @details 0 fields; 0..0 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ()
    SCHEMA = {'type': 'franka_spine_msgs/srv/Halt_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_50af7625abf7ec20a30ec49b01e8d32de2ee0d4710820c8de659df211be8c111',
     'minimum': 0,
     'maximum': 0,
     'semantics': '',
     'fields': []}

REGISTRY.add(Ros2Franka_spine_msgsSrvHalt_Request)


class Ros2Franka_spine_msgsSrvHalt_Response(Record):
    """@brief Own every original franka_spine_msgs/srv/Halt_Response field.
    @details 3 fields; 9..521 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('state', 'success', 'message')
    SCHEMA = {'type': 'franka_spine_msgs/srv/Halt_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_150e1d90b485a6ddf79f771379a0e1d3f99a77f88ab1cf1f569d614a63ac3d77',
     'minimum': 9,
     'maximum': 521,
     'semantics': '',
     'fields': [{'name': 'state',
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
                {'name': 'success',
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

REGISTRY.add(Ros2Franka_spine_msgsSrvHalt_Response)


class Ros2Franka_spine_msgsSrvSwitchOff_Request(Record):
    """@brief Own every original franka_spine_msgs/srv/SwitchOff_Request field.
    @details 0 fields; 0..0 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ()
    SCHEMA = {'type': 'franka_spine_msgs/srv/SwitchOff_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_097f00adfdc8d1a49615792158a36052917c41385683b39de6686f591964fc16',
     'minimum': 0,
     'maximum': 0,
     'semantics': '',
     'fields': []}

REGISTRY.add(Ros2Franka_spine_msgsSrvSwitchOff_Request)


class Ros2Franka_spine_msgsSrvSwitchOff_Response(Record):
    """@brief Own every original franka_spine_msgs/srv/SwitchOff_Response field.
    @details 3 fields; 9..521 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('state', 'success', 'message')
    SCHEMA = {'type': 'franka_spine_msgs/srv/SwitchOff_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_d3ab8516e62428b2caf71673f398ccc7199b7b25aac4c37b42c15a79878e54ad',
     'minimum': 9,
     'maximum': 521,
     'semantics': '',
     'fields': [{'name': 'state',
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
                {'name': 'success',
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

REGISTRY.add(Ros2Franka_spine_msgsSrvSwitchOff_Response)


class Ros2Franka_spine_msgsSrvSwitchOn_Request(Record):
    """@brief Own every original franka_spine_msgs/srv/SwitchOn_Request field.
    @details 0 fields; 0..0 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ()
    SCHEMA = {'type': 'franka_spine_msgs/srv/SwitchOn_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_840d12dbe4d4a8558e72c2facbccfc547de35536f749573b6de60ce9a9238a56',
     'minimum': 0,
     'maximum': 0,
     'semantics': '',
     'fields': []}

REGISTRY.add(Ros2Franka_spine_msgsSrvSwitchOn_Request)


class Ros2Franka_spine_msgsSrvSwitchOn_Response(Record):
    """@brief Own every original franka_spine_msgs/srv/SwitchOn_Response field.
    @details 3 fields; 9..521 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('state', 'success', 'message')
    SCHEMA = {'type': 'franka_spine_msgs/srv/SwitchOn_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_8c58d63385a5fc6f160585504b3c9c5ca5375c6187f7a494c3db696c5cc7a37d',
     'minimum': 9,
     'maximum': 521,
     'semantics': '',
     'fields': [{'name': 'state',
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
                {'name': 'success',
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

REGISTRY.add(Ros2Franka_spine_msgsSrvSwitchOn_Response)

