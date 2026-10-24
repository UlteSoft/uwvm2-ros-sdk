"""@file records.py
@brief Complete original deep_robotics ROS 2 values, codecs and interface catalog.
@details Preserve all 27 records and 26 interfaces.
Absent native identities remain None. Constructing values grants no authority.
"""
from ros.py.wire import Record, Registry

REGISTRY = Registry()

class Ros2Builtin_interfacesMsgTime(Record):
    """@brief Complete builtin_interfaces/msg/Time value.
    @details All 2 fields and 0 constants are preserved.
    Canonical extent 8..8 bytes; ordinary values own no ROS handle.
    """
    # @brief Original builtin_interfaces/msg/Time.sec field.
    # @details Type int32; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original builtin_interfaces/msg/Time.nanosec field.
    # @details Type uint32; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
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


class Ros2DrddsMsgMetaType(Record):
    """@brief Complete drdds/msg/MetaType value.
    @details All 2 fields and 0 constants are preserved.
    Canonical extent 16..16 bytes; ordinary values own no ROS handle.
    """
    # @brief Original drdds/msg/MetaType.frame_id field.
    # @details Type uint64; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/MetaType.stamp field.
    # @details Type builtin_interfaces/msg/Time; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    __slots__ = ('frame_id', 'stamp')
    SCHEMA = {'type': 'drdds/msg/MetaType',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_589934883c499944b42386d9aa89152e69c3bb41dcf26d0246cacdbb1b50162f',
     'minimum': 16,
     'maximum': 16,
     'semantics': '',
     'fields': [{'name': 'frame_id',
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
                {'name': 'stamp',
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

REGISTRY.add(Ros2DrddsMsgMetaType)


class Ros2DrddsMsgBatteryDataValue(Record):
    """@brief Complete drdds/msg/BatteryDataValue value.
    @details All 16 fields and 0 constants are preserved.
    Canonical extent 59..123 bytes; ordinary values own no ROS handle.
    """
    # @brief Original drdds/msg/BatteryDataValue.voltage field.
    # @details Type uint16; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/BatteryDataValue.current field.
    # @details Type int16; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/BatteryDataValue.remaining_capacity field.
    # @details Type uint16; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/BatteryDataValue.nominal_capacity field.
    # @details Type uint16; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/BatteryDataValue.cycles field.
    # @details Type uint16; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/BatteryDataValue.production_date field.
    # @details Type uint16; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/BatteryDataValue.balanced_low field.
    # @details Type uint16; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/BatteryDataValue.balanced_high field.
    # @details Type uint16; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/BatteryDataValue.protected_state field.
    # @details Type uint16; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/BatteryDataValue.software_version field.
    # @details Type uint8; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/BatteryDataValue.battery_level field.
    # @details Type uint8; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/BatteryDataValue.mos_state field.
    # @details Type uint8; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/BatteryDataValue.battery_quantity field.
    # @details Type uint8; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/BatteryDataValue.battery_ntc field.
    # @details Type uint8; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/BatteryDataValue.battery_temperature field.
    # @details Type float32; shape sequence; count/bound 16; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/BatteryDataValue.battery_serialnum field.
    # @details Type uint8; shape array; count/bound 32; UTF-8/raw byte bound 0.
    __slots__ = ('voltage',
         'current',
         'remaining_capacity',
         'nominal_capacity',
         'cycles',
         'production_date',
         'balanced_low',
         'balanced_high',
         'protected_state',
         'software_version',
         'battery_level',
         'mos_state',
         'battery_quantity',
         'battery_ntc',
         'battery_temperature',
         'battery_serialnum')
    SCHEMA = {'type': 'drdds/msg/BatteryDataValue',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_076c053d37d08f14e5a1a886e696e6a0f7fe3a7bea54b38206cdcba3a23313bc',
     'minimum': 59,
     'maximum': 123,
     'semantics': '',
     'fields': [{'name': 'voltage',
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
                {'name': 'remaining_capacity',
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
                {'name': 'nominal_capacity',
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
                {'name': 'cycles',
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
                {'name': 'production_date',
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
                {'name': 'balanced_low',
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
                {'name': 'balanced_high',
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
                {'name': 'protected_state',
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
                {'name': 'software_version',
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
                {'name': 'battery_level',
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
                {'name': 'mos_state',
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
                {'name': 'battery_quantity',
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
                {'name': 'battery_ntc',
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
                {'name': 'battery_temperature',
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
                {'name': 'battery_serialnum',
                 'type': 'uint8',
                 'array': 'array',
                 'count': 32,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': 'char',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}]}

REGISTRY.add(Ros2DrddsMsgBatteryDataValue)


class Ros2DrddsMsgBatteryData(Record):
    """@brief Complete drdds/msg/BatteryData value.
    @details All 2 fields and 0 constants are preserved.
    Canonical extent 20..512 bytes; ordinary values own no ROS handle.
    """
    # @brief Original drdds/msg/BatteryData.header field.
    # @details Type drdds/msg/MetaType; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/BatteryData.data field.
    # @details Type drdds/msg/BatteryDataValue; shape sequence; count/bound 4; UTF-8/raw byte bound 0.
    __slots__ = ('header', 'data')
    SCHEMA = {'type': 'drdds/msg/BatteryData',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_8ab951a101e2e9522c39bcbb7fabea8966e78ea8141cb568e0aa1ac0c89d692e',
     'minimum': 20,
     'maximum': 512,
     'semantics': '',
     'fields': [{'name': 'header',
                 'type': 'drdds/msg/MetaType',
                 'array': '',
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
                 'type': 'drdds/msg/BatteryDataValue',
                 'array': 'sequence',
                 'count': 4,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}]}

REGISTRY.add(Ros2DrddsMsgBatteryData)


class Ros2DrddsMsgGamepadData(Record):
    """@brief Complete drdds/msg/GamepadData value.
    @details All 6 fields and 0 constants are preserved.
    Canonical extent 34..34 bytes; ordinary values own no ROS handle.
    """
    # @brief Original drdds/msg/GamepadData.header field.
    # @details Type drdds/msg/MetaType; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/GamepadData.left_axis_x field.
    # @details Type float32; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/GamepadData.left_axis_y field.
    # @details Type float32; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/GamepadData.right_axis_x field.
    # @details Type float32; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/GamepadData.right_axis_y field.
    # @details Type float32; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/GamepadData.buttons field.
    # @details Type uint16; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    __slots__ = ('header', 'left_axis_x', 'left_axis_y', 'right_axis_x', 'right_axis_y', 'buttons')
    SCHEMA = {'type': 'drdds/msg/GamepadData',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_14c915cd4dc71671a25bdc811b65f0fc26aeb415e234205d5d53e53dfd3c6978',
     'minimum': 34,
     'maximum': 34,
     'semantics': '',
     'fields': [{'name': 'header',
                 'type': 'drdds/msg/MetaType',
                 'array': '',
                 'count': 0,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'left_axis_x',
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
                {'name': 'left_axis_y',
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
                {'name': 'right_axis_x',
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
                {'name': 'right_axis_y',
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
                {'name': 'buttons',
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
                 'default': None}]}

REGISTRY.add(Ros2DrddsMsgGamepadData)


class Ros2DrddsMsgImuDataValue(Record):
    """@brief Complete drdds/msg/ImuDataValue value.
    @details All 9 fields and 0 constants are preserved.
    Canonical extent 36..36 bytes; ordinary values own no ROS handle.
    """
    # @brief Original drdds/msg/ImuDataValue.roll field.
    # @details Type float32; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/ImuDataValue.pitch field.
    # @details Type float32; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/ImuDataValue.yaw field.
    # @details Type float32; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/ImuDataValue.omega_x field.
    # @details Type float32; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/ImuDataValue.omega_y field.
    # @details Type float32; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/ImuDataValue.omega_z field.
    # @details Type float32; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/ImuDataValue.acc_x field.
    # @details Type float32; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/ImuDataValue.acc_y field.
    # @details Type float32; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/ImuDataValue.acc_z field.
    # @details Type float32; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    __slots__ = ('roll', 'pitch', 'yaw', 'omega_x', 'omega_y', 'omega_z', 'acc_x', 'acc_y', 'acc_z')
    SCHEMA = {'type': 'drdds/msg/ImuDataValue',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_c857b56c129bf59c4c6d6e1ea61b4f46e01f6a938b7eb55826c52f0b1f18e859',
     'minimum': 36,
     'maximum': 36,
     'semantics': '',
     'fields': [{'name': 'roll',
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
                {'name': 'pitch',
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
                {'name': 'yaw',
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
                {'name': 'omega_x',
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
                {'name': 'omega_y',
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
                {'name': 'omega_z',
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
                {'name': 'acc_x',
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
                {'name': 'acc_y',
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
                {'name': 'acc_z',
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

REGISTRY.add(Ros2DrddsMsgImuDataValue)


class Ros2DrddsMsgImuData(Record):
    """@brief Complete drdds/msg/ImuData value.
    @details All 2 fields and 0 constants are preserved.
    Canonical extent 52..52 bytes; ordinary values own no ROS handle.
    """
    # @brief Original drdds/msg/ImuData.header field.
    # @details Type drdds/msg/MetaType; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/ImuData.data field.
    # @details Type drdds/msg/ImuDataValue; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    __slots__ = ('header', 'data')
    SCHEMA = {'type': 'drdds/msg/ImuData',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_c98e1cc04d46c99666aea581a36b338bdd91561f843dc4cdfcd86a48e6cb989c',
     'minimum': 52,
     'maximum': 52,
     'semantics': '',
     'fields': [{'name': 'header',
                 'type': 'drdds/msg/MetaType',
                 'array': '',
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
                 'type': 'drdds/msg/ImuDataValue',
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

REGISTRY.add(Ros2DrddsMsgImuData)


class Ros2DrddsMsgJointCmdValue(Record):
    """@brief Complete drdds/msg/JointCmdValue value.
    @details All 8 fields and 0 constants are preserved.
    Canonical extent 28..284 bytes; ordinary values own no ROS handle.
    """
    # @brief Original drdds/msg/JointCmdValue.name field.
    # @details Type uint8; shape sequence; count/bound 256; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/JointCmdValue.data_id field.
    # @details Type uint16; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/JointCmdValue.control_word field.
    # @details Type uint16; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/JointCmdValue.position field.
    # @details Type float32; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/JointCmdValue.torque field.
    # @details Type float32; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/JointCmdValue.velocity field.
    # @details Type float32; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/JointCmdValue.kp field.
    # @details Type float32; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/JointCmdValue.kd field.
    # @details Type float32; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    __slots__ = ('name', 'data_id', 'control_word', 'position', 'torque', 'velocity', 'kp', 'kd')
    SCHEMA = {'type': 'drdds/msg/JointCmdValue',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_f685f314bb39c4543735ba73d92655c4cace1d1162a9c699275b3937460738de',
     'minimum': 28,
     'maximum': 284,
     'semantics': '',
     'fields': [{'name': 'name',
                 'type': 'uint8',
                 'array': 'sequence',
                 'count': 256,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': 'char',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'data_id',
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
                {'name': 'control_word',
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
                {'name': 'position',
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
                {'name': 'torque',
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
                {'name': 'velocity',
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
                {'name': 'kp',
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
                {'name': 'kd',
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

REGISTRY.add(Ros2DrddsMsgJointCmdValue)


class Ros2DrddsMsgJointData(Record):
    """@brief Complete drdds/msg/JointData value.
    @details All 8 fields and 0 constants are preserved.
    Canonical extent 28..28 bytes; ordinary values own no ROS handle.
    """
    # @brief Original drdds/msg/JointData.name field.
    # @details Type uint8; shape array; count/bound 4; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/JointData.data_id field.
    # @details Type uint16; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/JointData.status_word field.
    # @details Type uint16; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/JointData.position field.
    # @details Type float32; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/JointData.torque field.
    # @details Type float32; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/JointData.velocity field.
    # @details Type float32; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/JointData.motion_temp field.
    # @details Type float32; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/JointData.driver_temp field.
    # @details Type float32; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    __slots__ = ('name', 'data_id', 'status_word', 'position', 'torque', 'velocity', 'motion_temp', 'driver_temp')
    SCHEMA = {'type': 'drdds/msg/JointData',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_269b21fc3b8c1461496b2aab41fc3354e9dc17cc9050ca7ce1962e62afce7e05',
     'minimum': 28,
     'maximum': 28,
     'semantics': '',
     'fields': [{'name': 'name',
                 'type': 'uint8',
                 'array': 'array',
                 'count': 4,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': 'char',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'data_id',
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
                {'name': 'status_word',
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
                {'name': 'position',
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
                {'name': 'torque',
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
                {'name': 'velocity',
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
                {'name': 'motion_temp',
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
                {'name': 'driver_temp',
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

REGISTRY.add(Ros2DrddsMsgJointData)


class Ros2DrddsMsgJointDataCmd(Record):
    """@brief Complete drdds/msg/JointDataCmd value.
    @details All 8 fields and 0 constants are preserved.
    Canonical extent 28..28 bytes; ordinary values own no ROS handle.
    """
    # @brief Original drdds/msg/JointDataCmd.name field.
    # @details Type uint8; shape array; count/bound 4; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/JointDataCmd.data_id field.
    # @details Type uint16; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/JointDataCmd.control_word field.
    # @details Type uint16; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/JointDataCmd.position field.
    # @details Type float32; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/JointDataCmd.torque field.
    # @details Type float32; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/JointDataCmd.velocity field.
    # @details Type float32; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/JointDataCmd.kp field.
    # @details Type float32; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/JointDataCmd.kd field.
    # @details Type float32; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    __slots__ = ('name', 'data_id', 'control_word', 'position', 'torque', 'velocity', 'kp', 'kd')
    SCHEMA = {'type': 'drdds/msg/JointDataCmd',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_c68c64167c2bd6ce84e78a37fe245c0c2bc40d4b2945a486f257222b2e1e7e0e',
     'minimum': 28,
     'maximum': 28,
     'semantics': '',
     'fields': [{'name': 'name',
                 'type': 'uint8',
                 'array': 'array',
                 'count': 4,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': 'char',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'data_id',
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
                {'name': 'control_word',
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
                {'name': 'position',
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
                {'name': 'torque',
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
                {'name': 'velocity',
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
                {'name': 'kp',
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
                {'name': 'kd',
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

REGISTRY.add(Ros2DrddsMsgJointDataCmd)


class Ros2DrddsMsgJointValue(Record):
    """@brief Complete drdds/msg/JointValue value.
    @details All 8 fields and 0 constants are preserved.
    Canonical extent 28..284 bytes; ordinary values own no ROS handle.
    """
    # @brief Original drdds/msg/JointValue.name field.
    # @details Type uint8; shape sequence; count/bound 256; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/JointValue.data_id field.
    # @details Type uint16; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/JointValue.status_word field.
    # @details Type uint16; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/JointValue.position field.
    # @details Type float32; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/JointValue.torque field.
    # @details Type float32; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/JointValue.velocity field.
    # @details Type float32; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/JointValue.motion_temp field.
    # @details Type float32; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/JointValue.driver_temp field.
    # @details Type float32; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    __slots__ = ('name', 'data_id', 'status_word', 'position', 'torque', 'velocity', 'motion_temp', 'driver_temp')
    SCHEMA = {'type': 'drdds/msg/JointValue',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_5c0cb9ecbc1169e7b4cf4656cd0105466cb4e9269c946339debabfd64e5824da',
     'minimum': 28,
     'maximum': 284,
     'semantics': '',
     'fields': [{'name': 'name',
                 'type': 'uint8',
                 'array': 'sequence',
                 'count': 256,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': 'char',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None},
                {'name': 'data_id',
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
                {'name': 'status_word',
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
                {'name': 'position',
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
                {'name': 'torque',
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
                {'name': 'velocity',
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
                {'name': 'motion_temp',
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
                {'name': 'driver_temp',
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

REGISTRY.add(Ros2DrddsMsgJointValue)


class Ros2DrddsMsgJointsDataValue(Record):
    """@brief Complete drdds/msg/JointsDataValue value.
    @details All 1 fields and 0 constants are preserved.
    Canonical extent 448..448 bytes; ordinary values own no ROS handle.
    """
    # @brief Original drdds/msg/JointsDataValue.joints_data field.
    # @details Type drdds/msg/JointData; shape array; count/bound 16; UTF-8/raw byte bound 0.
    __slots__ = ('joints_data',)
    SCHEMA = {'type': 'drdds/msg/JointsDataValue',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_e1c01b2edfac0d76f024533b582b3be527bbe70f8be7be45ea74dab31e764bd8',
     'minimum': 448,
     'maximum': 448,
     'semantics': '',
     'fields': [{'name': 'joints_data',
                 'type': 'drdds/msg/JointData',
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

REGISTRY.add(Ros2DrddsMsgJointsDataValue)


class Ros2DrddsMsgJointsData(Record):
    """@brief Complete drdds/msg/JointsData value.
    @details All 2 fields and 0 constants are preserved.
    Canonical extent 464..464 bytes; ordinary values own no ROS handle.
    """
    # @brief Original drdds/msg/JointsData.header field.
    # @details Type drdds/msg/MetaType; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/JointsData.data field.
    # @details Type drdds/msg/JointsDataValue; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    __slots__ = ('header', 'data')
    SCHEMA = {'type': 'drdds/msg/JointsData',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_58eaf7ff13be07922dbb6edfb9109be96a3adad0fbd512a5f66af24dc7b4d43d',
     'minimum': 464,
     'maximum': 464,
     'semantics': '',
     'fields': [{'name': 'header',
                 'type': 'drdds/msg/MetaType',
                 'array': '',
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
                 'type': 'drdds/msg/JointsDataValue',
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

REGISTRY.add(Ros2DrddsMsgJointsData)


class Ros2DrddsMsgJointsDataCmdValue(Record):
    """@brief Complete drdds/msg/JointsDataCmdValue value.
    @details All 1 fields and 0 constants are preserved.
    Canonical extent 448..448 bytes; ordinary values own no ROS handle.
    """
    # @brief Original drdds/msg/JointsDataCmdValue.joints_data field.
    # @details Type drdds/msg/JointDataCmd; shape array; count/bound 16; UTF-8/raw byte bound 0.
    __slots__ = ('joints_data',)
    SCHEMA = {'type': 'drdds/msg/JointsDataCmdValue',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_797ad7349b381083eafb361a8a7d4f28d64c8f3a1ee5719a3008d687893ab016',
     'minimum': 448,
     'maximum': 448,
     'semantics': '',
     'fields': [{'name': 'joints_data',
                 'type': 'drdds/msg/JointDataCmd',
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

REGISTRY.add(Ros2DrddsMsgJointsDataCmdValue)


class Ros2DrddsMsgJointsDataCmd(Record):
    """@brief Complete drdds/msg/JointsDataCmd value.
    @details All 2 fields and 0 constants are preserved.
    Canonical extent 464..464 bytes; ordinary values own no ROS handle.
    """
    # @brief Original drdds/msg/JointsDataCmd.header field.
    # @details Type drdds/msg/MetaType; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/JointsDataCmd.data field.
    # @details Type drdds/msg/JointsDataCmdValue; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    __slots__ = ('header', 'data')
    SCHEMA = {'type': 'drdds/msg/JointsDataCmd',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_5b1676cb4fbfd6970756ce6221ca6abf1911bd7e8108146fd9afccf62180bb45',
     'minimum': 464,
     'maximum': 464,
     'semantics': '',
     'fields': [{'name': 'header',
                 'type': 'drdds/msg/MetaType',
                 'array': '',
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
                 'type': 'drdds/msg/JointsDataCmdValue',
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

REGISTRY.add(Ros2DrddsMsgJointsDataCmd)


class Ros2Std_msgsMsgHeader(Record):
    """@brief Complete std_msgs/msg/Header value.
    @details All 2 fields and 0 constants are preserved.
    Canonical extent 12..140 bytes; ordinary values own no ROS handle.
    """
    # @brief Original std_msgs/msg/Header.stamp field.
    # @details Type builtin_interfaces/msg/Time; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original std_msgs/msg/Header.frame_id field.
    # @details Type string; shape scalar; count/bound 0; UTF-8/raw byte bound 128.
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


class Ros2Geometry_msgsMsgVector3(Record):
    """@brief Complete geometry_msgs/msg/Vector3 value.
    @details All 3 fields and 0 constants are preserved.
    Canonical extent 24..24 bytes; ordinary values own no ROS handle.
    """
    # @brief Original geometry_msgs/msg/Vector3.x field.
    # @details Type float64; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original geometry_msgs/msg/Vector3.y field.
    # @details Type float64; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original geometry_msgs/msg/Vector3.z field.
    # @details Type float64; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
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
    """@brief Complete geometry_msgs/msg/Twist value.
    @details All 2 fields and 0 constants are preserved.
    Canonical extent 48..48 bytes; ordinary values own no ROS handle.
    """
    # @brief Original geometry_msgs/msg/Twist.linear field.
    # @details Type geometry_msgs/msg/Vector3; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original geometry_msgs/msg/Twist.angular field.
    # @details Type geometry_msgs/msg/Vector3; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
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


class Ros2Sensor_msgsMsgJointState(Record):
    """@brief Complete sensor_msgs/msg/JointState value.
    @details All 5 fields and 0 constants are preserved.
    Canonical extent 28..6044 bytes; ordinary values own no ROS handle.
    """
    # @brief Original sensor_msgs/msg/JointState.header field.
    # @details Type std_msgs/msg/Header; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original sensor_msgs/msg/JointState.name field.
    # @details Type string; shape sequence; count/bound 64; UTF-8/raw byte bound 64.
    # @brief Original sensor_msgs/msg/JointState.position field.
    # @details Type float64; shape sequence; count/bound 64; UTF-8/raw byte bound 0.
    # @brief Original sensor_msgs/msg/JointState.velocity field.
    # @details Type float64; shape sequence; count/bound 64; UTF-8/raw byte bound 0.
    # @brief Original sensor_msgs/msg/JointState.effort field.
    # @details Type float64; shape sequence; count/bound 64; UTF-8/raw byte bound 0.
    __slots__ = ('header', 'name', 'position', 'velocity', 'effort')
    SCHEMA = {'type': 'sensor_msgs/msg/JointState',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_81135016cfa64b7f2845d6090ce9f70691df1472ab66993c7d98b2a79399907f',
     'minimum': 28,
     'maximum': 6044,
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
                 'count': 64,
                 'string_bound': 64,
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
                 'count': 64,
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
                 'count': 64,
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
                 'count': 64,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None}]}

REGISTRY.add(Ros2Sensor_msgsMsgJointState)


class Ros2DrddsMsgRobotStatus(Record):
    """@brief Complete drdds/msg/RobotStatus value.
    @details All 18 fields and 0 constants are preserved.
    Canonical extent 189..6845 bytes; ordinary values own no ROS handle.
    """
    # @brief Original drdds/msg/RobotStatus.header field.
    # @details Type std_msgs/msg/Header; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/RobotStatus.robot field.
    # @details Type string; shape scalar; count/bound 0; UTF-8/raw byte bound 128.
    # @brief Original drdds/msg/RobotStatus.command_source field.
    # @details Type string; shape scalar; count/bound 0; UTF-8/raw byte bound 128.
    # @brief Original drdds/msg/RobotStatus.current_state field.
    # @details Type string; shape scalar; count/bound 0; UTF-8/raw byte bound 128.
    # @brief Original drdds/msg/RobotStatus.current_state_id field.
    # @details Type uint8; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/RobotStatus.requested_state field.
    # @details Type string; shape scalar; count/bound 0; UTF-8/raw byte bound 128.
    # @brief Original drdds/msg/RobotStatus.requested_state_id field.
    # @details Type uint8; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/RobotStatus.safety_mode field.
    # @details Type uint8; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/RobotStatus.command field.
    # @details Type geometry_msgs/msg/Twist; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/RobotStatus.command_timed_out field.
    # @details Type bool; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/RobotStatus.rejected_commands field.
    # @details Type uint64; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/RobotStatus.command_updates field.
    # @details Type uint64; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/RobotStatus.joint_stamp field.
    # @details Type float64; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/RobotStatus.imu_stamp field.
    # @details Type float64; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/RobotStatus.telemetry_fresh field.
    # @details Type bool; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/RobotStatus.joints field.
    # @details Type sensor_msgs/msg/JointState; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/RobotStatus.base_rpy field.
    # @details Type geometry_msgs/msg/Vector3; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/RobotStatus.base_angular_velocity field.
    # @details Type geometry_msgs/msg/Vector3; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    __slots__ = ('header',
         'robot',
         'command_source',
         'current_state',
         'current_state_id',
         'requested_state',
         'requested_state_id',
         'safety_mode',
         'command',
         'command_timed_out',
         'rejected_commands',
         'command_updates',
         'joint_stamp',
         'imu_stamp',
         'telemetry_fresh',
         'joints',
         'base_rpy',
         'base_angular_velocity')
    SCHEMA = {'type': 'drdds/msg/RobotStatus',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_aa90e870c49613a133808e9eade2720e131e77b95138c0a5efe47e1e3cb052ae',
     'minimum': 189,
     'maximum': 6845,
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
                {'name': 'robot',
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
                 'default': None},
                {'name': 'command_source',
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
                 'default': None},
                {'name': 'current_state',
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
                 'default': None},
                {'name': 'current_state_id',
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
                {'name': 'requested_state',
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
                 'default': None},
                {'name': 'requested_state_id',
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
                {'name': 'safety_mode',
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
                {'name': 'command',
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
                 'default': None},
                {'name': 'command_timed_out',
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
                {'name': 'rejected_commands',
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
                {'name': 'command_updates',
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
                {'name': 'joint_stamp',
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
                {'name': 'imu_stamp',
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
                {'name': 'telemetry_fresh',
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
                {'name': 'joints',
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
                {'name': 'base_rpy',
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
                {'name': 'base_angular_velocity',
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

REGISTRY.add(Ros2DrddsMsgRobotStatus)


class Ros2DrddsMsgStdMsgFloat32(Record):
    """@brief Complete drdds/msg/StdMsgFloat32 value.
    @details All 1 fields and 0 constants are preserved.
    Canonical extent 4..4 bytes; ordinary values own no ROS handle.
    """
    # @brief Original drdds/msg/StdMsgFloat32.value field.
    # @details Type float32; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    __slots__ = ('value',)
    SCHEMA = {'type': 'drdds/msg/StdMsgFloat32',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_60c4d2a6c37bc75722023dbd51c1796b1330023c2c773bd4da25aebb4d665c33',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'value',
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

REGISTRY.add(Ros2DrddsMsgStdMsgFloat32)


class Ros2DrddsMsgStdMsgInt32(Record):
    """@brief Complete drdds/msg/StdMsgInt32 value.
    @details All 1 fields and 0 constants are preserved.
    Canonical extent 4..4 bytes; ordinary values own no ROS handle.
    """
    # @brief Original drdds/msg/StdMsgInt32.value field.
    # @details Type int32; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    __slots__ = ('value',)
    SCHEMA = {'type': 'drdds/msg/StdMsgInt32',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_460694ceb9e0e29101e97b5758a3171e02b7830565fec83358ee7fa6157d42b1',
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
                 'default': None}]}

REGISTRY.add(Ros2DrddsMsgStdMsgInt32)


class Ros2DrddsMsgStdStatus(Record):
    """@brief Complete drdds/msg/StdStatus value.
    @details All 2 fields and 0 constants are preserved.
    Canonical extent 8..8 bytes; ordinary values own no ROS handle.
    """
    # @brief Original drdds/msg/StdStatus.state field.
    # @details Type int32; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/StdStatus.error_code field.
    # @details Type uint32; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    __slots__ = ('state', 'error_code')
    SCHEMA = {'type': 'drdds/msg/StdStatus',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_4d9ff460d62c4251ecda42a2637156e54b5e9adcce2ff442299c04968d6a2b28',
     'minimum': 8,
     'maximum': 8,
     'semantics': '',
     'fields': [{'name': 'state',
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
                {'name': 'error_code',
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

REGISTRY.add(Ros2DrddsMsgStdStatus)


class Ros2DrddsMsgSteerValue(Record):
    """@brief Complete drdds/msg/SteerValue value.
    @details All 6 fields and 0 constants are preserved.
    Canonical extent 24..24 bytes; ordinary values own no ROS handle.
    """
    # @brief Original drdds/msg/SteerValue.x field.
    # @details Type float32; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/SteerValue.y field.
    # @details Type float32; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/SteerValue.z field.
    # @details Type float32; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/SteerValue.roll field.
    # @details Type float32; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/SteerValue.pitch field.
    # @details Type float32; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/SteerValue.yaw field.
    # @details Type float32; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    __slots__ = ('x', 'y', 'z', 'roll', 'pitch', 'yaw')
    SCHEMA = {'type': 'drdds/msg/SteerValue',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_10007d7ed0f14ea52138dba2c3dfee590070ed8f2c0e5f48adab2486c371a236',
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
                {'name': 'roll',
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
                {'name': 'pitch',
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
                {'name': 'yaw',
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

REGISTRY.add(Ros2DrddsMsgSteerValue)


class Ros2DrddsMsgSteer(Record):
    """@brief Complete drdds/msg/Steer value.
    @details All 2 fields and 0 constants are preserved.
    Canonical extent 40..40 bytes; ordinary values own no ROS handle.
    """
    # @brief Original drdds/msg/Steer.header field.
    # @details Type drdds/msg/MetaType; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    # @brief Original drdds/msg/Steer.data field.
    # @details Type drdds/msg/SteerValue; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    __slots__ = ('header', 'data')
    SCHEMA = {'type': 'drdds/msg/Steer',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_0749b852b4689e1d6df3fe333e91280ae87065f16267a255e548d73ed9e14793',
     'minimum': 40,
     'maximum': 40,
     'semantics': '',
     'fields': [{'name': 'header',
                 'type': 'drdds/msg/MetaType',
                 'array': '',
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
                 'type': 'drdds/msg/SteerValue',
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

REGISTRY.add(Ros2DrddsMsgSteer)


class Ros2DrddsSrvStdSrvInt32_Request(Record):
    """@brief Complete drdds/srv/StdSrvInt32_Request value.
    @details All 1 fields and 0 constants are preserved.
    Canonical extent 4..4 bytes; ordinary values own no ROS handle.
    """
    # @brief Original drdds/srv/StdSrvInt32_Request.command field.
    # @details Type int32; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    __slots__ = ('command',)
    SCHEMA = {'type': 'drdds/srv/StdSrvInt32_Request',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_00be6642e848f5cb36a34038277cf0002cdd2a76de8384ac17e11cd101fcd25e',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'command',
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
                 'default': None}]}

REGISTRY.add(Ros2DrddsSrvStdSrvInt32_Request)


class Ros2DrddsSrvStdSrvInt32_Response(Record):
    """@brief Complete drdds/srv/StdSrvInt32_Response value.
    @details All 1 fields and 0 constants are preserved.
    Canonical extent 4..4 bytes; ordinary values own no ROS handle.
    """
    # @brief Original drdds/srv/StdSrvInt32_Response.result field.
    # @details Type int32; shape scalar; count/bound 0; UTF-8/raw byte bound 0.
    __slots__ = ('result',)
    SCHEMA = {'type': 'drdds/srv/StdSrvInt32_Response',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_a264c039c6b47e96c72615b8eba30d74b4bba736dabe5d52457f173930a9dcb4',
     'minimum': 4,
     'maximum': 4,
     'semantics': '',
     'fields': [{'name': 'result',
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
                 'default': None}]}

REGISTRY.add(Ros2DrddsSrvStdSrvInt32_Response)


# @brief Complete interface names, component roles and original identities.
INTERFACES = {'builtin_interfaces/msg/Time': {'kind': 'message',
                                 'native_identity': None,
                                 'codec_identity': 'UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7',
                                 'registered': False,
                                 'components': {'message': 'Ros2Builtin_interfacesMsgTime'}},
 'drdds/msg/BatteryData': {'kind': 'message',
                           'native_identity': None,
                           'codec_identity': 'UWVMROS1_8ab951a101e2e9522c39bcbb7fabea8966e78ea8141cb568e0aa1ac0c89d692e',
                           'registered': True,
                           'components': {'message': 'Ros2DrddsMsgBatteryData'}},
 'drdds/msg/BatteryDataValue': {'kind': 'message',
                                'native_identity': None,
                                'codec_identity': 'UWVMROS1_076c053d37d08f14e5a1a886e696e6a0f7fe3a7bea54b38206cdcba3a23313bc',
                                'registered': True,
                                'components': {'message': 'Ros2DrddsMsgBatteryDataValue'}},
 'drdds/msg/GamepadData': {'kind': 'message',
                           'native_identity': None,
                           'codec_identity': 'UWVMROS1_14c915cd4dc71671a25bdc811b65f0fc26aeb415e234205d5d53e53dfd3c6978',
                           'registered': True,
                           'components': {'message': 'Ros2DrddsMsgGamepadData'}},
 'drdds/msg/ImuData': {'kind': 'message',
                       'native_identity': None,
                       'codec_identity': 'UWVMROS1_c98e1cc04d46c99666aea581a36b338bdd91561f843dc4cdfcd86a48e6cb989c',
                       'registered': True,
                       'components': {'message': 'Ros2DrddsMsgImuData'}},
 'drdds/msg/ImuDataValue': {'kind': 'message',
                            'native_identity': None,
                            'codec_identity': 'UWVMROS1_c857b56c129bf59c4c6d6e1ea61b4f46e01f6a938b7eb55826c52f0b1f18e859',
                            'registered': True,
                            'components': {'message': 'Ros2DrddsMsgImuDataValue'}},
 'drdds/msg/JointCmdValue': {'kind': 'message',
                             'native_identity': None,
                             'codec_identity': 'UWVMROS1_f685f314bb39c4543735ba73d92655c4cace1d1162a9c699275b3937460738de',
                             'registered': True,
                             'components': {'message': 'Ros2DrddsMsgJointCmdValue'}},
 'drdds/msg/JointData': {'kind': 'message',
                         'native_identity': None,
                         'codec_identity': 'UWVMROS1_269b21fc3b8c1461496b2aab41fc3354e9dc17cc9050ca7ce1962e62afce7e05',
                         'registered': True,
                         'components': {'message': 'Ros2DrddsMsgJointData'}},
 'drdds/msg/JointDataCmd': {'kind': 'message',
                            'native_identity': None,
                            'codec_identity': 'UWVMROS1_c68c64167c2bd6ce84e78a37fe245c0c2bc40d4b2945a486f257222b2e1e7e0e',
                            'registered': True,
                            'components': {'message': 'Ros2DrddsMsgJointDataCmd'}},
 'drdds/msg/JointValue': {'kind': 'message',
                          'native_identity': None,
                          'codec_identity': 'UWVMROS1_5c0cb9ecbc1169e7b4cf4656cd0105466cb4e9269c946339debabfd64e5824da',
                          'registered': True,
                          'components': {'message': 'Ros2DrddsMsgJointValue'}},
 'drdds/msg/JointsData': {'kind': 'message',
                          'native_identity': None,
                          'codec_identity': 'UWVMROS1_58eaf7ff13be07922dbb6edfb9109be96a3adad0fbd512a5f66af24dc7b4d43d',
                          'registered': True,
                          'components': {'message': 'Ros2DrddsMsgJointsData'}},
 'drdds/msg/JointsDataCmd': {'kind': 'message',
                             'native_identity': None,
                             'codec_identity': 'UWVMROS1_5b1676cb4fbfd6970756ce6221ca6abf1911bd7e8108146fd9afccf62180bb45',
                             'registered': True,
                             'components': {'message': 'Ros2DrddsMsgJointsDataCmd'}},
 'drdds/msg/JointsDataCmdValue': {'kind': 'message',
                                  'native_identity': None,
                                  'codec_identity': 'UWVMROS1_797ad7349b381083eafb361a8a7d4f28d64c8f3a1ee5719a3008d687893ab016',
                                  'registered': True,
                                  'components': {'message': 'Ros2DrddsMsgJointsDataCmdValue'}},
 'drdds/msg/JointsDataValue': {'kind': 'message',
                               'native_identity': None,
                               'codec_identity': 'UWVMROS1_e1c01b2edfac0d76f024533b582b3be527bbe70f8be7be45ea74dab31e764bd8',
                               'registered': True,
                               'components': {'message': 'Ros2DrddsMsgJointsDataValue'}},
 'drdds/msg/MetaType': {'kind': 'message',
                        'native_identity': None,
                        'codec_identity': 'UWVMROS1_589934883c499944b42386d9aa89152e69c3bb41dcf26d0246cacdbb1b50162f',
                        'registered': True,
                        'components': {'message': 'Ros2DrddsMsgMetaType'}},
 'drdds/msg/RobotStatus': {'kind': 'message',
                           'native_identity': None,
                           'codec_identity': 'UWVMROS1_aa90e870c49613a133808e9eade2720e131e77b95138c0a5efe47e1e3cb052ae',
                           'registered': True,
                           'components': {'message': 'Ros2DrddsMsgRobotStatus'}},
 'drdds/msg/StdMsgFloat32': {'kind': 'message',
                             'native_identity': None,
                             'codec_identity': 'UWVMROS1_60c4d2a6c37bc75722023dbd51c1796b1330023c2c773bd4da25aebb4d665c33',
                             'registered': True,
                             'components': {'message': 'Ros2DrddsMsgStdMsgFloat32'}},
 'drdds/msg/StdMsgInt32': {'kind': 'message',
                           'native_identity': None,
                           'codec_identity': 'UWVMROS1_460694ceb9e0e29101e97b5758a3171e02b7830565fec83358ee7fa6157d42b1',
                           'registered': True,
                           'components': {'message': 'Ros2DrddsMsgStdMsgInt32'}},
 'drdds/msg/StdStatus': {'kind': 'message',
                         'native_identity': None,
                         'codec_identity': 'UWVMROS1_4d9ff460d62c4251ecda42a2637156e54b5e9adcce2ff442299c04968d6a2b28',
                         'registered': True,
                         'components': {'message': 'Ros2DrddsMsgStdStatus'}},
 'drdds/msg/Steer': {'kind': 'message',
                     'native_identity': None,
                     'codec_identity': 'UWVMROS1_0749b852b4689e1d6df3fe333e91280ae87065f16267a255e548d73ed9e14793',
                     'registered': True,
                     'components': {'message': 'Ros2DrddsMsgSteer'}},
 'drdds/msg/SteerValue': {'kind': 'message',
                          'native_identity': None,
                          'codec_identity': 'UWVMROS1_10007d7ed0f14ea52138dba2c3dfee590070ed8f2c0e5f48adab2486c371a236',
                          'registered': True,
                          'components': {'message': 'Ros2DrddsMsgSteerValue'}},
 'drdds/srv/StdSrvInt32': {'kind': 'service',
                           'native_identity': None,
                           'codec_identity': 'UWVMROS1_8abaded41755fb64ea415558612cfa2c5b1bc3bcec95776157bdfa3a6559c242',
                           'registered': True,
                           'components': {'request': 'Ros2DrddsSrvStdSrvInt32_Request',
                                          'response': 'Ros2DrddsSrvStdSrvInt32_Response'}},
 'geometry_msgs/msg/Twist': {'kind': 'message',
                             'native_identity': None,
                             'codec_identity': 'UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e',
                             'registered': False,
                             'components': {'message': 'Ros2Geometry_msgsMsgTwist'}},
 'geometry_msgs/msg/Vector3': {'kind': 'message',
                               'native_identity': None,
                               'codec_identity': 'UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e',
                               'registered': False,
                               'components': {'message': 'Ros2Geometry_msgsMsgVector3'}},
 'sensor_msgs/msg/JointState': {'kind': 'message',
                                'native_identity': None,
                                'codec_identity': 'UWVMROS1_81135016cfa64b7f2845d6090ce9f70691df1472ab66993c7d98b2a79399907f',
                                'registered': False,
                                'components': {'message': 'Ros2Sensor_msgsMsgJointState'}},
 'std_msgs/msg/Header': {'kind': 'message',
                         'native_identity': None,
                         'codec_identity': 'UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96',
                         'registered': False,
                         'components': {'message': 'Ros2Std_msgsMsgHeader'}}}
