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


class Ros2Builtin_interfacesMsgDuration(Record):
    """@brief Own every original builtin_interfaces/msg/Duration field.
    @details 2 fields; 8..8 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('sec', 'nanosec')
    SCHEMA = {'type': 'builtin_interfaces/msg/Duration',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4',
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

REGISTRY.add(Ros2Builtin_interfacesMsgDuration)


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


class Ros2Sensor_msgsMsgJointState(Record):
    """@brief Own every original sensor_msgs/msg/JointState field.
    @details 5 fields; 28..9372 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('header', 'name', 'position', 'velocity', 'effort')
    SCHEMA = {'type': 'sensor_msgs/msg/JointState',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_3faa9cdc746cb2cf7ac581bb2b0b6e32e2c6601d72043c7893249142730d8556',
     'minimum': 28,
     'maximum': 9372,
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
                 'count': 32,
                 'string_bound': 256,
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
                 'count': 32,
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
                 'count': 32,
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
                 'count': 32,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}]}

REGISTRY.add(Ros2Sensor_msgsMsgJointState)


class Ros2Trajectory_msgsMsgJointTrajectoryPoint(Record):
    """@brief Own every original trajectory_msgs/msg/JointTrajectoryPoint field.
    @details 5 fields; 24..1048 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('positions', 'velocities', 'accelerations', 'effort', 'time_from_start')
    SCHEMA = {'type': 'trajectory_msgs/msg/JointTrajectoryPoint',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_8320f791cea3b2edbbe7b78c9a3750708fb0284ae6a322058921c8c105f7130c',
     'minimum': 24,
     'maximum': 1048,
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
                 'default': None},
                {'name': 'accelerations',
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
                {'name': 'effort',
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
                {'name': 'time_from_start',
                 'type': 'builtin_interfaces/msg/Duration',
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

REGISTRY.add(Ros2Trajectory_msgsMsgJointTrajectoryPoint)


class Ros2Trajectory_msgsMsgJointTrajectory(Record):
    """@brief Own every original trajectory_msgs/msg/JointTrajectory field.
    @details 3 fields; 20..16980 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('header', 'joint_names', 'points')
    SCHEMA = {'type': 'trajectory_msgs/msg/JointTrajectory',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_0b691c3ed52f8cc3bf5e4c5a7cec1d82a15d08b7d2575bd30b34c49e37877af4',
     'minimum': 20,
     'maximum': 16980,
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
                {'name': 'points',
                 'type': 'trajectory_msgs/msg/JointTrajectoryPoint',
                 'array': 'sequence',
                 'count': 8,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}]}

REGISTRY.add(Ros2Trajectory_msgsMsgJointTrajectory)


class Ros2Std_msgsMsgMultiArrayDimension(Record):
    """@brief Own every original std_msgs/msg/MultiArrayDimension field.
    @details 3 fields; 12..268 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('label', 'size', 'stride')
    SCHEMA = {'type': 'std_msgs/msg/MultiArrayDimension',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_95110a90e1600af2696a69f4dec6bfde2afe315bfd453bda2e1c84f5984ae80d',
     'minimum': 12,
     'maximum': 268,
     'semantics': '',
     'fields': [{'name': 'label',
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
                 'default': None},
                {'name': 'stride',
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

REGISTRY.add(Ros2Std_msgsMsgMultiArrayDimension)


class Ros2Std_msgsMsgMultiArrayLayout(Record):
    """@brief Own every original std_msgs/msg/MultiArrayLayout field.
    @details 2 fields; 8..2152 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('dim', 'data_offset')
    SCHEMA = {'type': 'std_msgs/msg/MultiArrayLayout',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_1e1ea54500602a3813c1cc3b5db7dfd9a7dd9260a3d5af43e8495f6b48e32f40',
     'minimum': 8,
     'maximum': 2152,
     'semantics': '',
     'fields': [{'name': 'dim',
                 'type': 'std_msgs/msg/MultiArrayDimension',
                 'array': 'sequence',
                 'count': 8,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'data_offset',
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

REGISTRY.add(Ros2Std_msgsMsgMultiArrayLayout)


class Ros2Std_msgsMsgFloat64MultiArray(Record):
    """@brief Own every original std_msgs/msg/Float64MultiArray field.
    @details 2 fields; 12..2412 canonical bytes.
    @see ros.py.wire.Record
    """
    __slots__ = ('layout', 'data')
    SCHEMA = {'type': 'std_msgs/msg/Float64MultiArray',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_9950573380aa134d889e1662549f28ffd493e8c4da68170fd076c4c9cc3db8c2',
     'minimum': 12,
     'maximum': 2412,
     'semantics': '',
     'fields': [{'name': 'layout',
                 'type': 'std_msgs/msg/MultiArrayLayout',
                 'array': '',
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

REGISTRY.add(Ros2Std_msgsMsgFloat64MultiArray)

