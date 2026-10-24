"""@file records.py
@brief Complete original flexiv records for one explicitly selected release.
@details Values own all fields. Native identities require independent installed ROS binding.
"""

from ros.py.wire import Record, Registry

REGISTRY = Registry()

class Ros1Flexiv_msgsJointPosVel(Record):
    """@brief Own every original flexiv_msgs/JointPosVel field.
    @details 2 fields; 112..112 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('positions', 'velocities')
    SCHEMA = {'type': 'flexiv_msgs/JointPosVel',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_60868295fe1798f349d7f675035bd476f0f6caa8b7568e7a66487c32459fdfaa',
     'minimum': 112,
     'maximum': 112,
     'semantics': '',
     'fields': [{'name': 'positions',
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
                {'name': 'velocities',
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

REGISTRY.add(Ros1Flexiv_msgsJointPosVel)


class Ros1Flexiv_msgsMode(Record):
    """@brief Own every original flexiv_msgs/Mode field.
    @details 1 fields; 1..1 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('mode',)
    SCHEMA = {'type': 'flexiv_msgs/Mode',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_85789f97962c70edfe4703d5a78ed198655e3ebe300f5a9c588d739bae87f422',
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
    MODE_RT_JOINT_POSITION = 2
    # @brief Original exact-width int8 constant.
    MODE_NRT_JOINT_POSITION = 3
    # @brief Original exact-width int8 constant.
    MODE_NRT_PLAN_EXECUTION = 4
    # @brief Original exact-width int8 constant.
    MODE_NRT_PRIMITIVE_EXECUTION = 5
    # @brief Original exact-width int8 constant.
    MODE_RT_CARTESIAN_MOTION_FORCE_BASE = 6
    # @brief Original exact-width int8 constant.
    MODE_RT_CARTESIAN_MOTION_FORCE_TCP = 7
    # @brief Original exact-width int8 constant.
    MODE_NRT_CARTESIAN_MOTION_FORCE_BASE = 8
    # @brief Original exact-width int8 constant.
    MODE_NRT_CARTESIAN_MOTION_FORCE_TCP = 9

REGISTRY.add(Ros1Flexiv_msgsMode)


class Ros1Geometry_msgsPoint(Record):
    """@brief Own every original geometry_msgs/Point field.
    @details 3 fields; 24..24 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('x', 'y', 'z')
    SCHEMA = {'type': 'geometry_msgs/Point',
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
                 'default': None}]}

REGISTRY.add(Ros1Geometry_msgsPoint)


class Ros1Geometry_msgsQuaternion(Record):
    """@brief Own every original geometry_msgs/Quaternion field.
    @details 4 fields; 32..32 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('x', 'y', 'z', 'w')
    SCHEMA = {'type': 'geometry_msgs/Quaternion',
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
                 'default': None}]}

REGISTRY.add(Ros1Geometry_msgsQuaternion)


class Ros1Geometry_msgsPose(Record):
    """@brief Own every original geometry_msgs/Pose field.
    @details 2 fields; 56..56 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('position', 'orientation')
    SCHEMA = {'type': 'geometry_msgs/Pose',
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
                 'default': None}]}

REGISTRY.add(Ros1Geometry_msgsPose)


class Ros1Geometry_msgsVector3(Record):
    """@brief Own every original geometry_msgs/Vector3 field.
    @details 3 fields; 24..24 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('x', 'y', 'z')
    SCHEMA = {'type': 'geometry_msgs/Vector3',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_e90efcf4803d82763e0b83f8ef5502b5d042158873fcc91be32543d25d7632bc',
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

REGISTRY.add(Ros1Geometry_msgsVector3)


class Ros1Geometry_msgsAccel(Record):
    """@brief Own every original geometry_msgs/Accel field.
    @details 2 fields; 48..48 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('linear', 'angular')
    SCHEMA = {'type': 'geometry_msgs/Accel',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_3345762fc354a5698d41098276702c7d3cee87fe9a531b0229111b9b3bf700ed',
     'minimum': 48,
     'maximum': 48,
     'semantics': '',
     'fields': [{'name': 'linear',
                 'type': 'geometry_msgs/Vector3',
                 'array': '',
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
                 'type': 'geometry_msgs/Vector3',
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

REGISTRY.add(Ros1Geometry_msgsAccel)


class Ros1Geometry_msgsWrench(Record):
    """@brief Own every original geometry_msgs/Wrench field.
    @details 2 fields; 48..48 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('force', 'torque')
    SCHEMA = {'type': 'geometry_msgs/Wrench',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_b0938c4e084df68cf7c46445070ac3e9305d06f678275845aec6055db77617c3',
     'minimum': 48,
     'maximum': 48,
     'semantics': '',
     'fields': [{'name': 'force',
                 'type': 'geometry_msgs/Vector3',
                 'array': '',
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
                 'type': 'geometry_msgs/Vector3',
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

REGISTRY.add(Ros1Geometry_msgsWrench)


class Ros1Flexiv_msgsRobotStates(Record):
    """@brief Own every original flexiv_msgs/RobotStates field.
    @details 16 fields; 864..864 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('q',
 'theta',
 'dq',
 'dtheta',
 'tau',
 'tau_des',
 'tau_dot',
 'tau_ext',
 'tcp_pose',
 'tcp_pose_des',
 'tcp_vel',
 'cam_pose',
 'flange_pose',
 'ft_sensor_raw',
 'ext_wrench_tcp_frame',
 'ext_wrench_base_frame')
    SCHEMA = {'type': 'flexiv_msgs/RobotStates',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_a64419da913e6fafce645177a491cc77a1dcee9ef785bc04380e7aebaeeb12a8',
     'minimum': 864,
     'maximum': 864,
     'semantics': '',
     'fields': [{'name': 'q',
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
                {'name': 'theta',
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
                {'name': 'dq',
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
                {'name': 'dtheta',
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
                {'name': 'tau',
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
                {'name': 'tau_des',
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
                {'name': 'tau_dot',
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
                {'name': 'tau_ext',
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
                {'name': 'tcp_pose',
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
                {'name': 'tcp_pose_des',
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
                {'name': 'tcp_vel',
                 'type': 'geometry_msgs/Accel',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'cam_pose',
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
                {'name': 'flange_pose',
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
                {'name': 'ft_sensor_raw',
                 'type': 'geometry_msgs/Wrench',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'ext_wrench_tcp_frame',
                 'type': 'geometry_msgs/Wrench',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'ext_wrench_base_frame',
                 'type': 'geometry_msgs/Wrench',
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

REGISTRY.add(Ros1Flexiv_msgsRobotStates)

