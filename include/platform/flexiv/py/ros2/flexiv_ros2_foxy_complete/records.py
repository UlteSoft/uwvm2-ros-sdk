"""@file records.py
@brief Complete original flexiv records for one explicitly selected release.
@details Values own all fields. Native identities require independent installed ROS binding.
"""

from ros.py.wire import Record, Registry

REGISTRY = Registry()

class Ros2Flexiv_msgsMsgJointPosVel(Record):
    """@brief Own every original flexiv_msgs/msg/JointPosVel field.
    @details 2 fields; 112..112 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('positions', 'velocities')
    SCHEMA = {'type': 'flexiv_msgs/msg/JointPosVel',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_c56feb3a74545187381d2d82c230038aaa70fca3a9243486374d69f3fc3103a8',
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

REGISTRY.add(Ros2Flexiv_msgsMsgJointPosVel)


class Ros2Flexiv_msgsMsgMode(Record):
    """@brief Own every original flexiv_msgs/msg/Mode field.
    @details 1 fields; 1..1 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('mode',)
    SCHEMA = {'type': 'flexiv_msgs/msg/Mode',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_285581852d18aa98aa5f42e3d920b263b9bc6907766f17daa503c58e81a2064f',
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

REGISTRY.add(Ros2Flexiv_msgsMsgMode)


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


class Ros2Flexiv_msgsMsgRobotStates(Record):
    """@brief Own every original flexiv_msgs/msg/RobotStates field.
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
    SCHEMA = {'type': 'flexiv_msgs/msg/RobotStates',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_ce6c3a354edf285fa22f8cfb509c4a5f33c1ef82b7dc3d749ae1ecd29dde844b',
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
                {'name': 'tcp_pose_des',
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
                {'name': 'tcp_vel',
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
                 'default': None},
                {'name': 'cam_pose',
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
                {'name': 'flange_pose',
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
                {'name': 'ft_sensor_raw',
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
                {'name': 'ext_wrench_tcp_frame',
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
                {'name': 'ext_wrench_base_frame',
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

REGISTRY.add(Ros2Flexiv_msgsMsgRobotStates)

