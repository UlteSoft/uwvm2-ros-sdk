# @file bounded_records.py
# @brief Represent complete typed values and their bounded wire layout for deep_robotics.
# @details Field widths, defaults and sequence limits follow the selected catalog. Keep backing storage alive
# while borrowed values are in use; preserve all decode failures before invoking a ROS operation.

# Generated complete canonical records; source-only until actually tested.
from __future__ import annotations
from dataclasses import dataclass as _dataclass, field as _field
from builtins import (classmethod as _classmethod, bool as _py_bool,
    float as _py_float, int as _py_int, str as _py_str, list as _py_list)
from typing import ClassVar as _ClassVar
from roswasm.codecs import Writer as _Writer, Reader as _Reader

def _write_text(writer, value, maximum):
    if type(value) is not str or len(value) > maximum or '\0' in value:
        raise ValueError('bounded custom UTF-8 string without NUL required')
    raw = value.encode('utf-8', 'strict')
    if len(raw) > maximum:
        raise ValueError('custom UTF-8 byte bound')
    writer.integer(len(raw), 4).raw(raw)

def _read_text(reader, maximum):
    count = reader.integer(4)
    if count > maximum:
        raise ValueError('custom UTF-8 byte bound')
    value = reader.take(count).decode('utf-8', 'strict')
    if '\0' in value:
        raise ValueError('NUL in custom string')
    return value

def _read_count(reader, maximum, element_minimum):
    count = reader.integer(4)
    # Reader.data/position are the current SDK's actual owned-byte view/cursor.
    # The complete top-level wire was already bounded before Reader creation.
    if count > maximum or (element_minimum and count >
            (len(reader.data) - reader.position) // element_minimum):
        raise ValueError('sequence count/remaining extent')
    return count

def _read_bool(reader):
    value = reader.integer(1)
    if value > 1:
        raise ValueError('canonical bool must be0/1')
    return bool(value)

def _wire(value, minimum, maximum):
    if type(value) is not bytes or not minimum <= len(value) <= maximum:
        raise ValueError('complete bounded immutable wire required')
    return value

@_dataclass
class Ros2Builtin_interfacesMsgTime:
    """Complete builtin_interfaces/msg/Time; encode/decode preserve every original field."""
    NATIVE_FIELD_MAP: _ClassVar = {'sec': 'sec', 'nanosec': 'nanosec'}
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = {}
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'builtin_interfaces/msg/Time'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    sec: _py_int = 0
    nanosec: _py_int = 0

    def encode(self):
        writer = _Writer(8)
        _write_Ros2Builtin_interfacesMsgTime(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 8)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Builtin_interfacesMsgTime:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 8))
        value = _read_Ros2Builtin_interfacesMsgTime(reader)
        reader.end()
        return value

_record_Ros2Builtin_interfacesMsgTime = Ros2Builtin_interfacesMsgTime

def _write_Ros2Builtin_interfacesMsgTime(writer, value):
    if type(value) is not Ros2Builtin_interfacesMsgTime:
        raise TypeError('exact generated record required')
    _part0 = value.sec
    writer.integer(_part0, 4, True)
    _part1 = value.nanosec
    writer.integer(_part1, 4, False)
    if not 0 <= _part1 < 1000000000:
        raise ValueError('normalized subsecond field required')

def _read_Ros2Builtin_interfacesMsgTime(reader):
    value = Ros2Builtin_interfacesMsgTime()
    value.sec = reader.integer(4, True)
    value.nanosec = reader.integer(4, False)
    if not 0 <= value.nanosec < 1000000000:
        raise ValueError('normalized subsecond field required')
    return value

@_dataclass
class Ros2DrddsMsgMetaType:
    """Complete drdds/msg/MetaType; encode/decode preserve every original field."""
    NATIVE_FIELD_MAP: _ClassVar = {'frame_id': 'frame_id', 'stamp': 'stamp'}
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 16
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = {}
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'drdds/msg/MetaType'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_589934883c499944b42386d9aa89152e69c3bb41dcf26d0246cacdbb1b50162f'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 16
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 16
    frame_id: _py_int = 0
    stamp: _record_Ros2Builtin_interfacesMsgTime = _field(default_factory=lambda: Ros2Builtin_interfacesMsgTime())

    def encode(self):
        writer = _Writer(16)
        _write_Ros2DrddsMsgMetaType(writer, self)
        wire = writer.finish()
        return _wire(wire, 16, 16)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2DrddsMsgMetaType:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 16, 16))
        value = _read_Ros2DrddsMsgMetaType(reader)
        reader.end()
        return value

_record_Ros2DrddsMsgMetaType = Ros2DrddsMsgMetaType

def _write_Ros2DrddsMsgMetaType(writer, value):
    if type(value) is not Ros2DrddsMsgMetaType:
        raise TypeError('exact generated record required')
    _part0 = value.frame_id
    writer.integer(_part0, 8, False)
    _part1 = value.stamp
    _write_Ros2Builtin_interfacesMsgTime(writer, _part1)

def _read_Ros2DrddsMsgMetaType(reader):
    value = Ros2DrddsMsgMetaType()
    value.frame_id = reader.integer(8, False)
    value.stamp = _read_Ros2Builtin_interfacesMsgTime(reader)
    return value

@_dataclass
class Ros2DrddsMsgBatteryDataValue:
    """Complete drdds/msg/BatteryDataValue; encode/decode preserve every original field."""
    NATIVE_FIELD_MAP: _ClassVar = {'voltage': 'voltage',
         'current': 'current',
         'remaining_capacity': 'remaining_capacity',
         'nominal_capacity': 'nominal_capacity',
         'cycles': 'cycles',
         'production_date': 'production_date',
         'balanced_low': 'balanced_low',
         'balanced_high': 'balanced_high',
         'protected_state': 'protected_state',
         'software_version': 'software_version',
         'battery_level': 'battery_level',
         'mos_state': 'mos_state',
         'battery_quantity': 'battery_quantity',
         'battery_ntc': 'battery_ntc',
         'battery_temperature': 'battery_temperature',
         'battery_serialnum': 'battery_serialnum'}
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 123
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = {}
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'drdds/msg/BatteryDataValue'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_076c053d37d08f14e5a1a886e696e6a0f7fe3a7bea54b38206cdcba3a23313bc'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 59
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 123
    voltage: _py_int = 0
    current: _py_int = 0
    remaining_capacity: _py_int = 0
    nominal_capacity: _py_int = 0
    cycles: _py_int = 0
    production_date: _py_int = 0
    balanced_low: _py_int = 0
    balanced_high: _py_int = 0
    protected_state: _py_int = 0
    software_version: _py_int = 0
    battery_level: _py_int = 0
    mos_state: _py_int = 0
    battery_quantity: _py_int = 0
    battery_ntc: _py_int = 0
    battery_temperature: _py_list[_py_float] = _field(default_factory=lambda: [])
    battery_serialnum: _py_list[_py_int] = _field(default_factory=lambda: [0 for _ in range(32)])

    def encode(self):
        writer = _Writer(123)
        _write_Ros2DrddsMsgBatteryDataValue(writer, self)
        wire = writer.finish()
        return _wire(wire, 59, 123)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2DrddsMsgBatteryDataValue:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 59, 123))
        value = _read_Ros2DrddsMsgBatteryDataValue(reader)
        reader.end()
        return value

_record_Ros2DrddsMsgBatteryDataValue = Ros2DrddsMsgBatteryDataValue

def _write_Ros2DrddsMsgBatteryDataValue(writer, value):
    if type(value) is not Ros2DrddsMsgBatteryDataValue:
        raise TypeError('exact generated record required')
    _part0 = value.voltage
    writer.integer(_part0, 2, False)
    _part1 = value.current
    writer.integer(_part1, 2, True)
    _part2 = value.remaining_capacity
    writer.integer(_part2, 2, False)
    _part3 = value.nominal_capacity
    writer.integer(_part3, 2, False)
    _part4 = value.cycles
    writer.integer(_part4, 2, False)
    _part5 = value.production_date
    writer.integer(_part5, 2, False)
    _part6 = value.balanced_low
    writer.integer(_part6, 2, False)
    _part7 = value.balanced_high
    writer.integer(_part7, 2, False)
    _part8 = value.protected_state
    writer.integer(_part8, 2, False)
    _part9 = value.software_version
    writer.integer(_part9, 1, False)
    _part10 = value.battery_level
    writer.integer(_part10, 1, False)
    _part11 = value.mos_state
    writer.integer(_part11, 1, False)
    _part12 = value.battery_quantity
    writer.integer(_part12, 1, False)
    _part13 = value.battery_ntc
    writer.integer(_part13, 1, False)
    _part14 = value.battery_temperature
    if type(_part14) not in (list, tuple):
        raise TypeError('array value required')
    _count14 = len(_part14)
    if _count14 > 16:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count14, 4)
    for _index in range(_count14):
        _element = _part14[_index]
        writer.f32(_element)
    _part15 = value.battery_serialnum
    if type(_part15) not in (list, tuple):
        raise TypeError('array value required')
    _count15 = len(_part15)
    if _count15 != 32:
        raise ValueError('fixed/sequence count bound')
    for _index in range(_count15):
        _element = _part15[_index]
        writer.integer(_element, 1, False)

def _read_Ros2DrddsMsgBatteryDataValue(reader):
    value = Ros2DrddsMsgBatteryDataValue()
    value.voltage = reader.integer(2, False)
    value.current = reader.integer(2, True)
    value.remaining_capacity = reader.integer(2, False)
    value.nominal_capacity = reader.integer(2, False)
    value.cycles = reader.integer(2, False)
    value.production_date = reader.integer(2, False)
    value.balanced_low = reader.integer(2, False)
    value.balanced_high = reader.integer(2, False)
    value.protected_state = reader.integer(2, False)
    value.software_version = reader.integer(1, False)
    value.battery_level = reader.integer(1, False)
    value.mos_state = reader.integer(1, False)
    value.battery_quantity = reader.integer(1, False)
    value.battery_ntc = reader.integer(1, False)
    value.battery_temperature = [reader.f32() for _ in range(_read_count(reader, 16, 4))]
    value.battery_serialnum = [reader.integer(1, False) for _ in range(32)]
    return value

@_dataclass
class Ros2DrddsMsgBatteryData:
    """Complete drdds/msg/BatteryData; encode/decode preserve every original field."""
    NATIVE_FIELD_MAP: _ClassVar = {'header': 'header', 'data': 'data'}
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 512
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = {}
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'drdds/msg/BatteryData'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_8ab951a101e2e9522c39bcbb7fabea8966e78ea8141cb568e0aa1ac0c89d692e'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 20
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 512
    header: _record_Ros2DrddsMsgMetaType = _field(default_factory=lambda: Ros2DrddsMsgMetaType())
    data: _py_list[_record_Ros2DrddsMsgBatteryDataValue] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(512)
        _write_Ros2DrddsMsgBatteryData(writer, self)
        wire = writer.finish()
        return _wire(wire, 20, 512)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2DrddsMsgBatteryData:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 20, 512))
        value = _read_Ros2DrddsMsgBatteryData(reader)
        reader.end()
        return value

_record_Ros2DrddsMsgBatteryData = Ros2DrddsMsgBatteryData

def _write_Ros2DrddsMsgBatteryData(writer, value):
    if type(value) is not Ros2DrddsMsgBatteryData:
        raise TypeError('exact generated record required')
    _part0 = value.header
    _write_Ros2DrddsMsgMetaType(writer, _part0)
    _part1 = value.data
    if type(_part1) not in (list, tuple):
        raise TypeError('array value required')
    _count1 = len(_part1)
    if _count1 > 4:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        _write_Ros2DrddsMsgBatteryDataValue(writer, _element)

def _read_Ros2DrddsMsgBatteryData(reader):
    value = Ros2DrddsMsgBatteryData()
    value.header = _read_Ros2DrddsMsgMetaType(reader)
    value.data = [_read_Ros2DrddsMsgBatteryDataValue(reader) for _ in range(_read_count(reader, 4, 59))]
    return value

@_dataclass
class Ros2DrddsMsgGamepadData:
    """Complete drdds/msg/GamepadData; encode/decode preserve every original field."""
    NATIVE_FIELD_MAP: _ClassVar = {'header': 'header',
         'left_axis_x': 'left_axis_x',
         'left_axis_y': 'left_axis_y',
         'right_axis_x': 'right_axis_x',
         'right_axis_y': 'right_axis_y',
         'buttons': 'buttons'}
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 34
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = {}
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'drdds/msg/GamepadData'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_14c915cd4dc71671a25bdc811b65f0fc26aeb415e234205d5d53e53dfd3c6978'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 34
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 34
    header: _record_Ros2DrddsMsgMetaType = _field(default_factory=lambda: Ros2DrddsMsgMetaType())
    left_axis_x: _py_float = 0.0
    left_axis_y: _py_float = 0.0
    right_axis_x: _py_float = 0.0
    right_axis_y: _py_float = 0.0
    buttons: _py_int = 0

    def encode(self):
        writer = _Writer(34)
        _write_Ros2DrddsMsgGamepadData(writer, self)
        wire = writer.finish()
        return _wire(wire, 34, 34)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2DrddsMsgGamepadData:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 34, 34))
        value = _read_Ros2DrddsMsgGamepadData(reader)
        reader.end()
        return value

_record_Ros2DrddsMsgGamepadData = Ros2DrddsMsgGamepadData

def _write_Ros2DrddsMsgGamepadData(writer, value):
    if type(value) is not Ros2DrddsMsgGamepadData:
        raise TypeError('exact generated record required')
    _part0 = value.header
    _write_Ros2DrddsMsgMetaType(writer, _part0)
    _part1 = value.left_axis_x
    writer.f32(_part1)
    _part2 = value.left_axis_y
    writer.f32(_part2)
    _part3 = value.right_axis_x
    writer.f32(_part3)
    _part4 = value.right_axis_y
    writer.f32(_part4)
    _part5 = value.buttons
    writer.integer(_part5, 2, False)

def _read_Ros2DrddsMsgGamepadData(reader):
    value = Ros2DrddsMsgGamepadData()
    value.header = _read_Ros2DrddsMsgMetaType(reader)
    value.left_axis_x = reader.f32()
    value.left_axis_y = reader.f32()
    value.right_axis_x = reader.f32()
    value.right_axis_y = reader.f32()
    value.buttons = reader.integer(2, False)
    return value

@_dataclass
class Ros2DrddsMsgImuDataValue:
    """Complete drdds/msg/ImuDataValue; encode/decode preserve every original field."""
    NATIVE_FIELD_MAP: _ClassVar = {'roll': 'roll',
         'pitch': 'pitch',
         'yaw': 'yaw',
         'omega_x': 'omega_x',
         'omega_y': 'omega_y',
         'omega_z': 'omega_z',
         'acc_x': 'acc_x',
         'acc_y': 'acc_y',
         'acc_z': 'acc_z'}
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 36
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = {}
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'drdds/msg/ImuDataValue'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_c857b56c129bf59c4c6d6e1ea61b4f46e01f6a938b7eb55826c52f0b1f18e859'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 36
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 36
    roll: _py_float = 0.0
    pitch: _py_float = 0.0
    yaw: _py_float = 0.0
    omega_x: _py_float = 0.0
    omega_y: _py_float = 0.0
    omega_z: _py_float = 0.0
    acc_x: _py_float = 0.0
    acc_y: _py_float = 0.0
    acc_z: _py_float = 0.0

    def encode(self):
        writer = _Writer(36)
        _write_Ros2DrddsMsgImuDataValue(writer, self)
        wire = writer.finish()
        return _wire(wire, 36, 36)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2DrddsMsgImuDataValue:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 36, 36))
        value = _read_Ros2DrddsMsgImuDataValue(reader)
        reader.end()
        return value

_record_Ros2DrddsMsgImuDataValue = Ros2DrddsMsgImuDataValue

def _write_Ros2DrddsMsgImuDataValue(writer, value):
    if type(value) is not Ros2DrddsMsgImuDataValue:
        raise TypeError('exact generated record required')
    _part0 = value.roll
    writer.f32(_part0)
    _part1 = value.pitch
    writer.f32(_part1)
    _part2 = value.yaw
    writer.f32(_part2)
    _part3 = value.omega_x
    writer.f32(_part3)
    _part4 = value.omega_y
    writer.f32(_part4)
    _part5 = value.omega_z
    writer.f32(_part5)
    _part6 = value.acc_x
    writer.f32(_part6)
    _part7 = value.acc_y
    writer.f32(_part7)
    _part8 = value.acc_z
    writer.f32(_part8)

def _read_Ros2DrddsMsgImuDataValue(reader):
    value = Ros2DrddsMsgImuDataValue()
    value.roll = reader.f32()
    value.pitch = reader.f32()
    value.yaw = reader.f32()
    value.omega_x = reader.f32()
    value.omega_y = reader.f32()
    value.omega_z = reader.f32()
    value.acc_x = reader.f32()
    value.acc_y = reader.f32()
    value.acc_z = reader.f32()
    return value

@_dataclass
class Ros2DrddsMsgImuData:
    """Complete drdds/msg/ImuData; encode/decode preserve every original field."""
    NATIVE_FIELD_MAP: _ClassVar = {'header': 'header', 'data': 'data'}
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 52
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = {}
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'drdds/msg/ImuData'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_c98e1cc04d46c99666aea581a36b338bdd91561f843dc4cdfcd86a48e6cb989c'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 52
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 52
    header: _record_Ros2DrddsMsgMetaType = _field(default_factory=lambda: Ros2DrddsMsgMetaType())
    data: _record_Ros2DrddsMsgImuDataValue = _field(default_factory=lambda: Ros2DrddsMsgImuDataValue())

    def encode(self):
        writer = _Writer(52)
        _write_Ros2DrddsMsgImuData(writer, self)
        wire = writer.finish()
        return _wire(wire, 52, 52)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2DrddsMsgImuData:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 52, 52))
        value = _read_Ros2DrddsMsgImuData(reader)
        reader.end()
        return value

_record_Ros2DrddsMsgImuData = Ros2DrddsMsgImuData

def _write_Ros2DrddsMsgImuData(writer, value):
    if type(value) is not Ros2DrddsMsgImuData:
        raise TypeError('exact generated record required')
    _part0 = value.header
    _write_Ros2DrddsMsgMetaType(writer, _part0)
    _part1 = value.data
    _write_Ros2DrddsMsgImuDataValue(writer, _part1)

def _read_Ros2DrddsMsgImuData(reader):
    value = Ros2DrddsMsgImuData()
    value.header = _read_Ros2DrddsMsgMetaType(reader)
    value.data = _read_Ros2DrddsMsgImuDataValue(reader)
    return value

@_dataclass
class Ros2DrddsMsgJointCmdValue:
    """Complete drdds/msg/JointCmdValue; encode/decode preserve every original field."""
    NATIVE_FIELD_MAP: _ClassVar = {'name': 'name',
         'data_id': 'data_id',
         'control_word': 'control_word',
         'position': 'position',
         'torque': 'torque',
         'velocity': 'velocity',
         'kp': 'kp',
         'kd': 'kd'}
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 284
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = {}
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'drdds/msg/JointCmdValue'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_f685f314bb39c4543735ba73d92655c4cace1d1162a9c699275b3937460738de'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 28
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 284
    name: _py_list[_py_int] = _field(default_factory=lambda: [])
    data_id: _py_int = 0
    control_word: _py_int = 0
    position: _py_float = 0.0
    torque: _py_float = 0.0
    velocity: _py_float = 0.0
    kp: _py_float = 0.0
    kd: _py_float = 0.0

    def encode(self):
        writer = _Writer(284)
        _write_Ros2DrddsMsgJointCmdValue(writer, self)
        wire = writer.finish()
        return _wire(wire, 28, 284)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2DrddsMsgJointCmdValue:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 28, 284))
        value = _read_Ros2DrddsMsgJointCmdValue(reader)
        reader.end()
        return value

_record_Ros2DrddsMsgJointCmdValue = Ros2DrddsMsgJointCmdValue

def _write_Ros2DrddsMsgJointCmdValue(writer, value):
    if type(value) is not Ros2DrddsMsgJointCmdValue:
        raise TypeError('exact generated record required')
    _part0 = value.name
    if type(_part0) not in (list, tuple):
        raise TypeError('array value required')
    _count0 = len(_part0)
    if _count0 > 256:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count0, 4)
    for _index in range(_count0):
        _element = _part0[_index]
        writer.integer(_element, 1, False)
    _part1 = value.data_id
    writer.integer(_part1, 2, False)
    _part2 = value.control_word
    writer.integer(_part2, 2, False)
    _part3 = value.position
    writer.f32(_part3)
    _part4 = value.torque
    writer.f32(_part4)
    _part5 = value.velocity
    writer.f32(_part5)
    _part6 = value.kp
    writer.f32(_part6)
    _part7 = value.kd
    writer.f32(_part7)

def _read_Ros2DrddsMsgJointCmdValue(reader):
    value = Ros2DrddsMsgJointCmdValue()
    value.name = [reader.integer(1, False) for _ in range(_read_count(reader, 256, 1))]
    value.data_id = reader.integer(2, False)
    value.control_word = reader.integer(2, False)
    value.position = reader.f32()
    value.torque = reader.f32()
    value.velocity = reader.f32()
    value.kp = reader.f32()
    value.kd = reader.f32()
    return value

@_dataclass
class Ros2DrddsMsgJointData:
    """Complete drdds/msg/JointData; encode/decode preserve every original field."""
    NATIVE_FIELD_MAP: _ClassVar = {'name': 'name',
         'data_id': 'data_id',
         'status_word': 'status_word',
         'position': 'position',
         'torque': 'torque',
         'velocity': 'velocity',
         'motion_temp': 'motion_temp',
         'driver_temp': 'driver_temp'}
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 28
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = {}
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'drdds/msg/JointData'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_269b21fc3b8c1461496b2aab41fc3354e9dc17cc9050ca7ce1962e62afce7e05'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 28
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 28
    name: _py_list[_py_int] = _field(default_factory=lambda: [0 for _ in range(4)])
    data_id: _py_int = 0
    status_word: _py_int = 0
    position: _py_float = 0.0
    torque: _py_float = 0.0
    velocity: _py_float = 0.0
    motion_temp: _py_float = 0.0
    driver_temp: _py_float = 0.0

    def encode(self):
        writer = _Writer(28)
        _write_Ros2DrddsMsgJointData(writer, self)
        wire = writer.finish()
        return _wire(wire, 28, 28)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2DrddsMsgJointData:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 28, 28))
        value = _read_Ros2DrddsMsgJointData(reader)
        reader.end()
        return value

_record_Ros2DrddsMsgJointData = Ros2DrddsMsgJointData

def _write_Ros2DrddsMsgJointData(writer, value):
    if type(value) is not Ros2DrddsMsgJointData:
        raise TypeError('exact generated record required')
    _part0 = value.name
    if type(_part0) not in (list, tuple):
        raise TypeError('array value required')
    _count0 = len(_part0)
    if _count0 != 4:
        raise ValueError('fixed/sequence count bound')
    for _index in range(_count0):
        _element = _part0[_index]
        writer.integer(_element, 1, False)
    _part1 = value.data_id
    writer.integer(_part1, 2, False)
    _part2 = value.status_word
    writer.integer(_part2, 2, False)
    _part3 = value.position
    writer.f32(_part3)
    _part4 = value.torque
    writer.f32(_part4)
    _part5 = value.velocity
    writer.f32(_part5)
    _part6 = value.motion_temp
    writer.f32(_part6)
    _part7 = value.driver_temp
    writer.f32(_part7)

def _read_Ros2DrddsMsgJointData(reader):
    value = Ros2DrddsMsgJointData()
    value.name = [reader.integer(1, False) for _ in range(4)]
    value.data_id = reader.integer(2, False)
    value.status_word = reader.integer(2, False)
    value.position = reader.f32()
    value.torque = reader.f32()
    value.velocity = reader.f32()
    value.motion_temp = reader.f32()
    value.driver_temp = reader.f32()
    return value

@_dataclass
class Ros2DrddsMsgJointDataCmd:
    """Complete drdds/msg/JointDataCmd; encode/decode preserve every original field."""
    NATIVE_FIELD_MAP: _ClassVar = {'name': 'name',
         'data_id': 'data_id',
         'control_word': 'control_word',
         'position': 'position',
         'torque': 'torque',
         'velocity': 'velocity',
         'kp': 'kp',
         'kd': 'kd'}
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 28
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = {}
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'drdds/msg/JointDataCmd'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_c68c64167c2bd6ce84e78a37fe245c0c2bc40d4b2945a486f257222b2e1e7e0e'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 28
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 28
    name: _py_list[_py_int] = _field(default_factory=lambda: [0 for _ in range(4)])
    data_id: _py_int = 0
    control_word: _py_int = 0
    position: _py_float = 0.0
    torque: _py_float = 0.0
    velocity: _py_float = 0.0
    kp: _py_float = 0.0
    kd: _py_float = 0.0

    def encode(self):
        writer = _Writer(28)
        _write_Ros2DrddsMsgJointDataCmd(writer, self)
        wire = writer.finish()
        return _wire(wire, 28, 28)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2DrddsMsgJointDataCmd:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 28, 28))
        value = _read_Ros2DrddsMsgJointDataCmd(reader)
        reader.end()
        return value

_record_Ros2DrddsMsgJointDataCmd = Ros2DrddsMsgJointDataCmd

def _write_Ros2DrddsMsgJointDataCmd(writer, value):
    if type(value) is not Ros2DrddsMsgJointDataCmd:
        raise TypeError('exact generated record required')
    _part0 = value.name
    if type(_part0) not in (list, tuple):
        raise TypeError('array value required')
    _count0 = len(_part0)
    if _count0 != 4:
        raise ValueError('fixed/sequence count bound')
    for _index in range(_count0):
        _element = _part0[_index]
        writer.integer(_element, 1, False)
    _part1 = value.data_id
    writer.integer(_part1, 2, False)
    _part2 = value.control_word
    writer.integer(_part2, 2, False)
    _part3 = value.position
    writer.f32(_part3)
    _part4 = value.torque
    writer.f32(_part4)
    _part5 = value.velocity
    writer.f32(_part5)
    _part6 = value.kp
    writer.f32(_part6)
    _part7 = value.kd
    writer.f32(_part7)

def _read_Ros2DrddsMsgJointDataCmd(reader):
    value = Ros2DrddsMsgJointDataCmd()
    value.name = [reader.integer(1, False) for _ in range(4)]
    value.data_id = reader.integer(2, False)
    value.control_word = reader.integer(2, False)
    value.position = reader.f32()
    value.torque = reader.f32()
    value.velocity = reader.f32()
    value.kp = reader.f32()
    value.kd = reader.f32()
    return value

@_dataclass
class Ros2DrddsMsgJointValue:
    """Complete drdds/msg/JointValue; encode/decode preserve every original field."""
    NATIVE_FIELD_MAP: _ClassVar = {'name': 'name',
         'data_id': 'data_id',
         'status_word': 'status_word',
         'position': 'position',
         'torque': 'torque',
         'velocity': 'velocity',
         'motion_temp': 'motion_temp',
         'driver_temp': 'driver_temp'}
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 284
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = {}
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'drdds/msg/JointValue'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_5c0cb9ecbc1169e7b4cf4656cd0105466cb4e9269c946339debabfd64e5824da'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 28
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 284
    name: _py_list[_py_int] = _field(default_factory=lambda: [])
    data_id: _py_int = 0
    status_word: _py_int = 0
    position: _py_float = 0.0
    torque: _py_float = 0.0
    velocity: _py_float = 0.0
    motion_temp: _py_float = 0.0
    driver_temp: _py_float = 0.0

    def encode(self):
        writer = _Writer(284)
        _write_Ros2DrddsMsgJointValue(writer, self)
        wire = writer.finish()
        return _wire(wire, 28, 284)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2DrddsMsgJointValue:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 28, 284))
        value = _read_Ros2DrddsMsgJointValue(reader)
        reader.end()
        return value

_record_Ros2DrddsMsgJointValue = Ros2DrddsMsgJointValue

def _write_Ros2DrddsMsgJointValue(writer, value):
    if type(value) is not Ros2DrddsMsgJointValue:
        raise TypeError('exact generated record required')
    _part0 = value.name
    if type(_part0) not in (list, tuple):
        raise TypeError('array value required')
    _count0 = len(_part0)
    if _count0 > 256:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count0, 4)
    for _index in range(_count0):
        _element = _part0[_index]
        writer.integer(_element, 1, False)
    _part1 = value.data_id
    writer.integer(_part1, 2, False)
    _part2 = value.status_word
    writer.integer(_part2, 2, False)
    _part3 = value.position
    writer.f32(_part3)
    _part4 = value.torque
    writer.f32(_part4)
    _part5 = value.velocity
    writer.f32(_part5)
    _part6 = value.motion_temp
    writer.f32(_part6)
    _part7 = value.driver_temp
    writer.f32(_part7)

def _read_Ros2DrddsMsgJointValue(reader):
    value = Ros2DrddsMsgJointValue()
    value.name = [reader.integer(1, False) for _ in range(_read_count(reader, 256, 1))]
    value.data_id = reader.integer(2, False)
    value.status_word = reader.integer(2, False)
    value.position = reader.f32()
    value.torque = reader.f32()
    value.velocity = reader.f32()
    value.motion_temp = reader.f32()
    value.driver_temp = reader.f32()
    return value

@_dataclass
class Ros2DrddsMsgJointsDataValue:
    """Complete drdds/msg/JointsDataValue; encode/decode preserve every original field."""
    NATIVE_FIELD_MAP: _ClassVar = {'joints_data': 'joints_data'}
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 448
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = {}
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'drdds/msg/JointsDataValue'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_e1c01b2edfac0d76f024533b582b3be527bbe70f8be7be45ea74dab31e764bd8'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 448
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 448
    joints_data: _py_list[_record_Ros2DrddsMsgJointData] = _field(default_factory=lambda: [Ros2DrddsMsgJointData() for _ in range(16)])

    def encode(self):
        writer = _Writer(448)
        _write_Ros2DrddsMsgJointsDataValue(writer, self)
        wire = writer.finish()
        return _wire(wire, 448, 448)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2DrddsMsgJointsDataValue:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 448, 448))
        value = _read_Ros2DrddsMsgJointsDataValue(reader)
        reader.end()
        return value

_record_Ros2DrddsMsgJointsDataValue = Ros2DrddsMsgJointsDataValue

def _write_Ros2DrddsMsgJointsDataValue(writer, value):
    if type(value) is not Ros2DrddsMsgJointsDataValue:
        raise TypeError('exact generated record required')
    _part0 = value.joints_data
    if type(_part0) not in (list, tuple):
        raise TypeError('array value required')
    _count0 = len(_part0)
    if _count0 != 16:
        raise ValueError('fixed/sequence count bound')
    for _index in range(_count0):
        _element = _part0[_index]
        _write_Ros2DrddsMsgJointData(writer, _element)

def _read_Ros2DrddsMsgJointsDataValue(reader):
    value = Ros2DrddsMsgJointsDataValue()
    value.joints_data = [_read_Ros2DrddsMsgJointData(reader) for _ in range(16)]
    return value

@_dataclass
class Ros2DrddsMsgJointsData:
    """Complete drdds/msg/JointsData; encode/decode preserve every original field."""
    NATIVE_FIELD_MAP: _ClassVar = {'header': 'header', 'data': 'data'}
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 464
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = {}
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'drdds/msg/JointsData'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_58eaf7ff13be07922dbb6edfb9109be96a3adad0fbd512a5f66af24dc7b4d43d'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 464
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 464
    header: _record_Ros2DrddsMsgMetaType = _field(default_factory=lambda: Ros2DrddsMsgMetaType())
    data: _record_Ros2DrddsMsgJointsDataValue = _field(default_factory=lambda: Ros2DrddsMsgJointsDataValue())

    def encode(self):
        writer = _Writer(464)
        _write_Ros2DrddsMsgJointsData(writer, self)
        wire = writer.finish()
        return _wire(wire, 464, 464)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2DrddsMsgJointsData:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 464, 464))
        value = _read_Ros2DrddsMsgJointsData(reader)
        reader.end()
        return value

_record_Ros2DrddsMsgJointsData = Ros2DrddsMsgJointsData

def _write_Ros2DrddsMsgJointsData(writer, value):
    if type(value) is not Ros2DrddsMsgJointsData:
        raise TypeError('exact generated record required')
    _part0 = value.header
    _write_Ros2DrddsMsgMetaType(writer, _part0)
    _part1 = value.data
    _write_Ros2DrddsMsgJointsDataValue(writer, _part1)

def _read_Ros2DrddsMsgJointsData(reader):
    value = Ros2DrddsMsgJointsData()
    value.header = _read_Ros2DrddsMsgMetaType(reader)
    value.data = _read_Ros2DrddsMsgJointsDataValue(reader)
    return value

@_dataclass
class Ros2DrddsMsgJointsDataCmdValue:
    """Complete drdds/msg/JointsDataCmdValue; encode/decode preserve every original field."""
    NATIVE_FIELD_MAP: _ClassVar = {'joints_data': 'joints_data'}
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 448
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = {}
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'drdds/msg/JointsDataCmdValue'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_797ad7349b381083eafb361a8a7d4f28d64c8f3a1ee5719a3008d687893ab016'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 448
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 448
    joints_data: _py_list[_record_Ros2DrddsMsgJointDataCmd] = _field(default_factory=lambda: [Ros2DrddsMsgJointDataCmd() for _ in range(16)])

    def encode(self):
        writer = _Writer(448)
        _write_Ros2DrddsMsgJointsDataCmdValue(writer, self)
        wire = writer.finish()
        return _wire(wire, 448, 448)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2DrddsMsgJointsDataCmdValue:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 448, 448))
        value = _read_Ros2DrddsMsgJointsDataCmdValue(reader)
        reader.end()
        return value

_record_Ros2DrddsMsgJointsDataCmdValue = Ros2DrddsMsgJointsDataCmdValue

def _write_Ros2DrddsMsgJointsDataCmdValue(writer, value):
    if type(value) is not Ros2DrddsMsgJointsDataCmdValue:
        raise TypeError('exact generated record required')
    _part0 = value.joints_data
    if type(_part0) not in (list, tuple):
        raise TypeError('array value required')
    _count0 = len(_part0)
    if _count0 != 16:
        raise ValueError('fixed/sequence count bound')
    for _index in range(_count0):
        _element = _part0[_index]
        _write_Ros2DrddsMsgJointDataCmd(writer, _element)

def _read_Ros2DrddsMsgJointsDataCmdValue(reader):
    value = Ros2DrddsMsgJointsDataCmdValue()
    value.joints_data = [_read_Ros2DrddsMsgJointDataCmd(reader) for _ in range(16)]
    return value

@_dataclass
class Ros2DrddsMsgJointsDataCmd:
    """Complete drdds/msg/JointsDataCmd; encode/decode preserve every original field."""
    NATIVE_FIELD_MAP: _ClassVar = {'header': 'header', 'data': 'data'}
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 464
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = {}
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'drdds/msg/JointsDataCmd'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_5b1676cb4fbfd6970756ce6221ca6abf1911bd7e8108146fd9afccf62180bb45'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 464
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 464
    header: _record_Ros2DrddsMsgMetaType = _field(default_factory=lambda: Ros2DrddsMsgMetaType())
    data: _record_Ros2DrddsMsgJointsDataCmdValue = _field(default_factory=lambda: Ros2DrddsMsgJointsDataCmdValue())

    def encode(self):
        writer = _Writer(464)
        _write_Ros2DrddsMsgJointsDataCmd(writer, self)
        wire = writer.finish()
        return _wire(wire, 464, 464)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2DrddsMsgJointsDataCmd:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 464, 464))
        value = _read_Ros2DrddsMsgJointsDataCmd(reader)
        reader.end()
        return value

_record_Ros2DrddsMsgJointsDataCmd = Ros2DrddsMsgJointsDataCmd

def _write_Ros2DrddsMsgJointsDataCmd(writer, value):
    if type(value) is not Ros2DrddsMsgJointsDataCmd:
        raise TypeError('exact generated record required')
    _part0 = value.header
    _write_Ros2DrddsMsgMetaType(writer, _part0)
    _part1 = value.data
    _write_Ros2DrddsMsgJointsDataCmdValue(writer, _part1)

def _read_Ros2DrddsMsgJointsDataCmd(reader):
    value = Ros2DrddsMsgJointsDataCmd()
    value.header = _read_Ros2DrddsMsgMetaType(reader)
    value.data = _read_Ros2DrddsMsgJointsDataCmdValue(reader)
    return value

@_dataclass
class Ros2Std_msgsMsgHeader:
    """Complete std_msgs/msg/Header; encode/decode preserve every original field."""
    NATIVE_FIELD_MAP: _ClassVar = {'stamp': 'stamp', 'frame_id': 'frame_id'}
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 140
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = {}
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'std_msgs/msg/Header'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 140
    stamp: _record_Ros2Builtin_interfacesMsgTime = _field(default_factory=lambda: Ros2Builtin_interfacesMsgTime())
    frame_id: _py_str = ''

    def encode(self):
        writer = _Writer(140)
        _write_Ros2Std_msgsMsgHeader(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 140)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Std_msgsMsgHeader:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 12, 140))
        value = _read_Ros2Std_msgsMsgHeader(reader)
        reader.end()
        return value

_record_Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader

def _write_Ros2Std_msgsMsgHeader(writer, value):
    if type(value) is not Ros2Std_msgsMsgHeader:
        raise TypeError('exact generated record required')
    _part0 = value.stamp
    _write_Ros2Builtin_interfacesMsgTime(writer, _part0)
    _part1 = value.frame_id
    _write_text(writer, _part1, 128)

def _read_Ros2Std_msgsMsgHeader(reader):
    value = Ros2Std_msgsMsgHeader()
    value.stamp = _read_Ros2Builtin_interfacesMsgTime(reader)
    value.frame_id = _read_text(reader, 128)
    return value

@_dataclass
class Ros2Geometry_msgsMsgVector3:
    """Complete geometry_msgs/msg/Vector3; encode/decode preserve every original field."""
    NATIVE_FIELD_MAP: _ClassVar = {'x': 'x', 'y': 'y', 'z': 'z'}
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 24
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = {}
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'geometry_msgs/msg/Vector3'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 24
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 24
    x: _py_float = 0.0
    y: _py_float = 0.0
    z: _py_float = 0.0

    def encode(self):
        writer = _Writer(24)
        _write_Ros2Geometry_msgsMsgVector3(writer, self)
        wire = writer.finish()
        return _wire(wire, 24, 24)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Geometry_msgsMsgVector3:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 24, 24))
        value = _read_Ros2Geometry_msgsMsgVector3(reader)
        reader.end()
        return value

_record_Ros2Geometry_msgsMsgVector3 = Ros2Geometry_msgsMsgVector3

def _write_Ros2Geometry_msgsMsgVector3(writer, value):
    if type(value) is not Ros2Geometry_msgsMsgVector3:
        raise TypeError('exact generated record required')
    _part0 = value.x
    writer.f64(_part0)
    _part1 = value.y
    writer.f64(_part1)
    _part2 = value.z
    writer.f64(_part2)

def _read_Ros2Geometry_msgsMsgVector3(reader):
    value = Ros2Geometry_msgsMsgVector3()
    value.x = reader.f64()
    value.y = reader.f64()
    value.z = reader.f64()
    return value

@_dataclass
class Ros2Geometry_msgsMsgTwist:
    """Complete geometry_msgs/msg/Twist; encode/decode preserve every original field."""
    NATIVE_FIELD_MAP: _ClassVar = {'linear': 'linear', 'angular': 'angular'}
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 48
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = {}
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'geometry_msgs/msg/Twist'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 48
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 48
    linear: _record_Ros2Geometry_msgsMsgVector3 = _field(default_factory=lambda: Ros2Geometry_msgsMsgVector3())
    angular: _record_Ros2Geometry_msgsMsgVector3 = _field(default_factory=lambda: Ros2Geometry_msgsMsgVector3())

    def encode(self):
        writer = _Writer(48)
        _write_Ros2Geometry_msgsMsgTwist(writer, self)
        wire = writer.finish()
        return _wire(wire, 48, 48)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Geometry_msgsMsgTwist:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 48, 48))
        value = _read_Ros2Geometry_msgsMsgTwist(reader)
        reader.end()
        return value

_record_Ros2Geometry_msgsMsgTwist = Ros2Geometry_msgsMsgTwist

def _write_Ros2Geometry_msgsMsgTwist(writer, value):
    if type(value) is not Ros2Geometry_msgsMsgTwist:
        raise TypeError('exact generated record required')
    _part0 = value.linear
    _write_Ros2Geometry_msgsMsgVector3(writer, _part0)
    _part1 = value.angular
    _write_Ros2Geometry_msgsMsgVector3(writer, _part1)

def _read_Ros2Geometry_msgsMsgTwist(reader):
    value = Ros2Geometry_msgsMsgTwist()
    value.linear = _read_Ros2Geometry_msgsMsgVector3(reader)
    value.angular = _read_Ros2Geometry_msgsMsgVector3(reader)
    return value

@_dataclass
class Ros2Sensor_msgsMsgJointState:
    """Complete sensor_msgs/msg/JointState; encode/decode preserve every original field."""
    NATIVE_FIELD_MAP: _ClassVar = {'header': 'header', 'name': 'name', 'position': 'position', 'velocity': 'velocity', 'effort': 'effort'}
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 6044
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = {}
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'sensor_msgs/msg/JointState'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_81135016cfa64b7f2845d6090ce9f70691df1472ab66993c7d98b2a79399907f'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 28
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 6044
    header: _record_Ros2Std_msgsMsgHeader = _field(default_factory=lambda: Ros2Std_msgsMsgHeader())
    name: _py_list[_py_str] = _field(default_factory=lambda: [])
    position: _py_list[_py_float] = _field(default_factory=lambda: [])
    velocity: _py_list[_py_float] = _field(default_factory=lambda: [])
    effort: _py_list[_py_float] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(6044)
        _write_Ros2Sensor_msgsMsgJointState(writer, self)
        wire = writer.finish()
        return _wire(wire, 28, 6044)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Sensor_msgsMsgJointState:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 28, 6044))
        value = _read_Ros2Sensor_msgsMsgJointState(reader)
        reader.end()
        return value

_record_Ros2Sensor_msgsMsgJointState = Ros2Sensor_msgsMsgJointState

def _write_Ros2Sensor_msgsMsgJointState(writer, value):
    if type(value) is not Ros2Sensor_msgsMsgJointState:
        raise TypeError('exact generated record required')
    _part0 = value.header
    _write_Ros2Std_msgsMsgHeader(writer, _part0)
    _part1 = value.name
    if type(_part1) not in (list, tuple):
        raise TypeError('array value required')
    _count1 = len(_part1)
    if _count1 > 64:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        _write_text(writer, _element, 64)
    _part2 = value.position
    if type(_part2) not in (list, tuple):
        raise TypeError('array value required')
    _count2 = len(_part2)
    if _count2 > 64:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        writer.f64(_element)
    _part3 = value.velocity
    if type(_part3) not in (list, tuple):
        raise TypeError('array value required')
    _count3 = len(_part3)
    if _count3 > 64:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count3, 4)
    for _index in range(_count3):
        _element = _part3[_index]
        writer.f64(_element)
    _part4 = value.effort
    if type(_part4) not in (list, tuple):
        raise TypeError('array value required')
    _count4 = len(_part4)
    if _count4 > 64:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count4, 4)
    for _index in range(_count4):
        _element = _part4[_index]
        writer.f64(_element)
    _sizes = [_count1, _count2, _count3, _count4]
    if len({n for n in _sizes if n}) > 1:
        raise ValueError('nonempty JointState arrays must have equal length')

def _read_Ros2Sensor_msgsMsgJointState(reader):
    value = Ros2Sensor_msgsMsgJointState()
    value.header = _read_Ros2Std_msgsMsgHeader(reader)
    value.name = [_read_text(reader, 64) for _ in range(_read_count(reader, 64, 4))]
    value.position = [reader.f64() for _ in range(_read_count(reader, 64, 8))]
    value.velocity = [reader.f64() for _ in range(_read_count(reader, 64, 8))]
    value.effort = [reader.f64() for _ in range(_read_count(reader, 64, 8))]
    _sizes = [len(value.name), len(value.position), len(value.velocity), len(value.effort)]
    if len({n for n in _sizes if n}) > 1:
        raise ValueError('nonempty JointState arrays must have equal length')
    return value

@_dataclass
class Ros2DrddsMsgRobotStatus:
    """Complete drdds/msg/RobotStatus; encode/decode preserve every original field."""
    NATIVE_FIELD_MAP: _ClassVar = {'header': 'header',
         'robot': 'robot',
         'command_source': 'command_source',
         'current_state': 'current_state',
         'current_state_id': 'current_state_id',
         'requested_state': 'requested_state',
         'requested_state_id': 'requested_state_id',
         'safety_mode': 'safety_mode',
         'command': 'command',
         'command_timed_out': 'command_timed_out',
         'rejected_commands': 'rejected_commands',
         'command_updates': 'command_updates',
         'joint_stamp': 'joint_stamp',
         'imu_stamp': 'imu_stamp',
         'telemetry_fresh': 'telemetry_fresh',
         'joints': 'joints',
         'base_rpy': 'base_rpy',
         'base_angular_velocity': 'base_angular_velocity'}
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 6845
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = {}
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'drdds/msg/RobotStatus'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_aa90e870c49613a133808e9eade2720e131e77b95138c0a5efe47e1e3cb052ae'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 189
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 6845
    header: _record_Ros2Std_msgsMsgHeader = _field(default_factory=lambda: Ros2Std_msgsMsgHeader())
    robot: _py_str = ''
    command_source: _py_str = ''
    current_state: _py_str = ''
    current_state_id: _py_int = 0
    requested_state: _py_str = ''
    requested_state_id: _py_int = 0
    safety_mode: _py_int = 0
    command: _record_Ros2Geometry_msgsMsgTwist = _field(default_factory=lambda: Ros2Geometry_msgsMsgTwist())
    command_timed_out: _py_bool = False
    rejected_commands: _py_int = 0
    command_updates: _py_int = 0
    joint_stamp: _py_float = 0.0
    imu_stamp: _py_float = 0.0
    telemetry_fresh: _py_bool = False
    joints: _record_Ros2Sensor_msgsMsgJointState = _field(default_factory=lambda: Ros2Sensor_msgsMsgJointState())
    base_rpy: _record_Ros2Geometry_msgsMsgVector3 = _field(default_factory=lambda: Ros2Geometry_msgsMsgVector3())
    base_angular_velocity: _record_Ros2Geometry_msgsMsgVector3 = _field(default_factory=lambda: Ros2Geometry_msgsMsgVector3())

    def encode(self):
        writer = _Writer(6845)
        _write_Ros2DrddsMsgRobotStatus(writer, self)
        wire = writer.finish()
        return _wire(wire, 189, 6845)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2DrddsMsgRobotStatus:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 189, 6845))
        value = _read_Ros2DrddsMsgRobotStatus(reader)
        reader.end()
        return value

_record_Ros2DrddsMsgRobotStatus = Ros2DrddsMsgRobotStatus

def _write_Ros2DrddsMsgRobotStatus(writer, value):
    if type(value) is not Ros2DrddsMsgRobotStatus:
        raise TypeError('exact generated record required')
    _part0 = value.header
    _write_Ros2Std_msgsMsgHeader(writer, _part0)
    _part1 = value.robot
    _write_text(writer, _part1, 128)
    _part2 = value.command_source
    _write_text(writer, _part2, 128)
    _part3 = value.current_state
    _write_text(writer, _part3, 128)
    _part4 = value.current_state_id
    writer.integer(_part4, 1, False)
    _part5 = value.requested_state
    _write_text(writer, _part5, 128)
    _part6 = value.requested_state_id
    writer.integer(_part6, 1, False)
    _part7 = value.safety_mode
    writer.integer(_part7, 1, False)
    _part8 = value.command
    _write_Ros2Geometry_msgsMsgTwist(writer, _part8)
    _part9 = value.command_timed_out
    if type(_part9) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part9), 1)
    _part10 = value.rejected_commands
    writer.integer(_part10, 8, False)
    _part11 = value.command_updates
    writer.integer(_part11, 8, False)
    _part12 = value.joint_stamp
    writer.f64(_part12)
    _part13 = value.imu_stamp
    writer.f64(_part13)
    _part14 = value.telemetry_fresh
    if type(_part14) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part14), 1)
    _part15 = value.joints
    _write_Ros2Sensor_msgsMsgJointState(writer, _part15)
    _part16 = value.base_rpy
    _write_Ros2Geometry_msgsMsgVector3(writer, _part16)
    _part17 = value.base_angular_velocity
    _write_Ros2Geometry_msgsMsgVector3(writer, _part17)

def _read_Ros2DrddsMsgRobotStatus(reader):
    value = Ros2DrddsMsgRobotStatus()
    value.header = _read_Ros2Std_msgsMsgHeader(reader)
    value.robot = _read_text(reader, 128)
    value.command_source = _read_text(reader, 128)
    value.current_state = _read_text(reader, 128)
    value.current_state_id = reader.integer(1, False)
    value.requested_state = _read_text(reader, 128)
    value.requested_state_id = reader.integer(1, False)
    value.safety_mode = reader.integer(1, False)
    value.command = _read_Ros2Geometry_msgsMsgTwist(reader)
    value.command_timed_out = _read_bool(reader)
    value.rejected_commands = reader.integer(8, False)
    value.command_updates = reader.integer(8, False)
    value.joint_stamp = reader.f64()
    value.imu_stamp = reader.f64()
    value.telemetry_fresh = _read_bool(reader)
    value.joints = _read_Ros2Sensor_msgsMsgJointState(reader)
    value.base_rpy = _read_Ros2Geometry_msgsMsgVector3(reader)
    value.base_angular_velocity = _read_Ros2Geometry_msgsMsgVector3(reader)
    return value

@_dataclass
class Ros2DrddsMsgStdMsgFloat32:
    """Complete drdds/msg/StdMsgFloat32; encode/decode preserve every original field."""
    NATIVE_FIELD_MAP: _ClassVar = {'value': 'value'}
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 4
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = {}
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'drdds/msg/StdMsgFloat32'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_60c4d2a6c37bc75722023dbd51c1796b1330023c2c773bd4da25aebb4d665c33'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 4
    value: _py_float = 0.0

    def encode(self):
        writer = _Writer(4)
        _write_Ros2DrddsMsgStdMsgFloat32(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 4)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2DrddsMsgStdMsgFloat32:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 4, 4))
        value = _read_Ros2DrddsMsgStdMsgFloat32(reader)
        reader.end()
        return value

_record_Ros2DrddsMsgStdMsgFloat32 = Ros2DrddsMsgStdMsgFloat32

def _write_Ros2DrddsMsgStdMsgFloat32(writer, value):
    if type(value) is not Ros2DrddsMsgStdMsgFloat32:
        raise TypeError('exact generated record required')
    _part0 = value.value
    writer.f32(_part0)

def _read_Ros2DrddsMsgStdMsgFloat32(reader):
    value = Ros2DrddsMsgStdMsgFloat32()
    value.value = reader.f32()
    return value

@_dataclass
class Ros2DrddsMsgStdMsgInt32:
    """Complete drdds/msg/StdMsgInt32; encode/decode preserve every original field."""
    NATIVE_FIELD_MAP: _ClassVar = {'value': 'value'}
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 4
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = {}
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'drdds/msg/StdMsgInt32'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_460694ceb9e0e29101e97b5758a3171e02b7830565fec83358ee7fa6157d42b1'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 4
    value: _py_int = 0

    def encode(self):
        writer = _Writer(4)
        _write_Ros2DrddsMsgStdMsgInt32(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 4)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2DrddsMsgStdMsgInt32:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 4, 4))
        value = _read_Ros2DrddsMsgStdMsgInt32(reader)
        reader.end()
        return value

_record_Ros2DrddsMsgStdMsgInt32 = Ros2DrddsMsgStdMsgInt32

def _write_Ros2DrddsMsgStdMsgInt32(writer, value):
    if type(value) is not Ros2DrddsMsgStdMsgInt32:
        raise TypeError('exact generated record required')
    _part0 = value.value
    writer.integer(_part0, 4, True)

def _read_Ros2DrddsMsgStdMsgInt32(reader):
    value = Ros2DrddsMsgStdMsgInt32()
    value.value = reader.integer(4, True)
    return value

@_dataclass
class Ros2DrddsMsgStdStatus:
    """Complete drdds/msg/StdStatus; encode/decode preserve every original field."""
    NATIVE_FIELD_MAP: _ClassVar = {'state': 'state', 'error_code': 'error_code'}
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = {}
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'drdds/msg/StdStatus'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_4d9ff460d62c4251ecda42a2637156e54b5e9adcce2ff442299c04968d6a2b28'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    state: _py_int = 0
    error_code: _py_int = 0

    def encode(self):
        writer = _Writer(8)
        _write_Ros2DrddsMsgStdStatus(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 8)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2DrddsMsgStdStatus:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 8))
        value = _read_Ros2DrddsMsgStdStatus(reader)
        reader.end()
        return value

_record_Ros2DrddsMsgStdStatus = Ros2DrddsMsgStdStatus

def _write_Ros2DrddsMsgStdStatus(writer, value):
    if type(value) is not Ros2DrddsMsgStdStatus:
        raise TypeError('exact generated record required')
    _part0 = value.state
    writer.integer(_part0, 4, True)
    _part1 = value.error_code
    writer.integer(_part1, 4, False)

def _read_Ros2DrddsMsgStdStatus(reader):
    value = Ros2DrddsMsgStdStatus()
    value.state = reader.integer(4, True)
    value.error_code = reader.integer(4, False)
    return value

@_dataclass
class Ros2DrddsMsgSteerValue:
    """Complete drdds/msg/SteerValue; encode/decode preserve every original field."""
    NATIVE_FIELD_MAP: _ClassVar = {'x': 'x', 'y': 'y', 'z': 'z', 'roll': 'roll', 'pitch': 'pitch', 'yaw': 'yaw'}
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 24
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = {}
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'drdds/msg/SteerValue'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_10007d7ed0f14ea52138dba2c3dfee590070ed8f2c0e5f48adab2486c371a236'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 24
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 24
    x: _py_float = 0.0
    y: _py_float = 0.0
    z: _py_float = 0.0
    roll: _py_float = 0.0
    pitch: _py_float = 0.0
    yaw: _py_float = 0.0

    def encode(self):
        writer = _Writer(24)
        _write_Ros2DrddsMsgSteerValue(writer, self)
        wire = writer.finish()
        return _wire(wire, 24, 24)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2DrddsMsgSteerValue:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 24, 24))
        value = _read_Ros2DrddsMsgSteerValue(reader)
        reader.end()
        return value

_record_Ros2DrddsMsgSteerValue = Ros2DrddsMsgSteerValue

def _write_Ros2DrddsMsgSteerValue(writer, value):
    if type(value) is not Ros2DrddsMsgSteerValue:
        raise TypeError('exact generated record required')
    _part0 = value.x
    writer.f32(_part0)
    _part1 = value.y
    writer.f32(_part1)
    _part2 = value.z
    writer.f32(_part2)
    _part3 = value.roll
    writer.f32(_part3)
    _part4 = value.pitch
    writer.f32(_part4)
    _part5 = value.yaw
    writer.f32(_part5)

def _read_Ros2DrddsMsgSteerValue(reader):
    value = Ros2DrddsMsgSteerValue()
    value.x = reader.f32()
    value.y = reader.f32()
    value.z = reader.f32()
    value.roll = reader.f32()
    value.pitch = reader.f32()
    value.yaw = reader.f32()
    return value

@_dataclass
class Ros2DrddsMsgSteer:
    """Complete drdds/msg/Steer; encode/decode preserve every original field."""
    NATIVE_FIELD_MAP: _ClassVar = {'header': 'header', 'data': 'data'}
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 40
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = {}
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'drdds/msg/Steer'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_0749b852b4689e1d6df3fe333e91280ae87065f16267a255e548d73ed9e14793'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 40
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 40
    header: _record_Ros2DrddsMsgMetaType = _field(default_factory=lambda: Ros2DrddsMsgMetaType())
    data: _record_Ros2DrddsMsgSteerValue = _field(default_factory=lambda: Ros2DrddsMsgSteerValue())

    def encode(self):
        writer = _Writer(40)
        _write_Ros2DrddsMsgSteer(writer, self)
        wire = writer.finish()
        return _wire(wire, 40, 40)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2DrddsMsgSteer:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 40, 40))
        value = _read_Ros2DrddsMsgSteer(reader)
        reader.end()
        return value

_record_Ros2DrddsMsgSteer = Ros2DrddsMsgSteer

def _write_Ros2DrddsMsgSteer(writer, value):
    if type(value) is not Ros2DrddsMsgSteer:
        raise TypeError('exact generated record required')
    _part0 = value.header
    _write_Ros2DrddsMsgMetaType(writer, _part0)
    _part1 = value.data
    _write_Ros2DrddsMsgSteerValue(writer, _part1)

def _read_Ros2DrddsMsgSteer(reader):
    value = Ros2DrddsMsgSteer()
    value.header = _read_Ros2DrddsMsgMetaType(reader)
    value.data = _read_Ros2DrddsMsgSteerValue(reader)
    return value

@_dataclass
class Ros2DrddsSrvStdSrvInt32_Request:
    """Complete drdds/srv/StdSrvInt32_Request; encode/decode preserve every original field."""
    NATIVE_FIELD_MAP: _ClassVar = {'command': 'command'}
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 4
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = {}
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'drdds/srv/StdSrvInt32_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_00be6642e848f5cb36a34038277cf0002cdd2a76de8384ac17e11cd101fcd25e'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 4
    command: _py_int = 0

    def encode(self):
        writer = _Writer(4)
        _write_Ros2DrddsSrvStdSrvInt32_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 4)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2DrddsSrvStdSrvInt32_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 4, 4))
        value = _read_Ros2DrddsSrvStdSrvInt32_Request(reader)
        reader.end()
        return value

_record_Ros2DrddsSrvStdSrvInt32_Request = Ros2DrddsSrvStdSrvInt32_Request

def _write_Ros2DrddsSrvStdSrvInt32_Request(writer, value):
    if type(value) is not Ros2DrddsSrvStdSrvInt32_Request:
        raise TypeError('exact generated record required')
    _part0 = value.command
    writer.integer(_part0, 4, True)

def _read_Ros2DrddsSrvStdSrvInt32_Request(reader):
    value = Ros2DrddsSrvStdSrvInt32_Request()
    value.command = reader.integer(4, True)
    return value

@_dataclass
class Ros2DrddsSrvStdSrvInt32_Response:
    """Complete drdds/srv/StdSrvInt32_Response; encode/decode preserve every original field."""
    NATIVE_FIELD_MAP: _ClassVar = {'result': 'result'}
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 4
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = {}
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'drdds/srv/StdSrvInt32_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_a264c039c6b47e96c72615b8eba30d74b4bba736dabe5d52457f173930a9dcb4'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 4
    result: _py_int = 0

    def encode(self):
        writer = _Writer(4)
        _write_Ros2DrddsSrvStdSrvInt32_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 4)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2DrddsSrvStdSrvInt32_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 4, 4))
        value = _read_Ros2DrddsSrvStdSrvInt32_Response(reader)
        reader.end()
        return value

_record_Ros2DrddsSrvStdSrvInt32_Response = Ros2DrddsSrvStdSrvInt32_Response

def _write_Ros2DrddsSrvStdSrvInt32_Response(writer, value):
    if type(value) is not Ros2DrddsSrvStdSrvInt32_Response:
        raise TypeError('exact generated record required')
    _part0 = value.result
    writer.integer(_part0, 4, True)

def _read_Ros2DrddsSrvStdSrvInt32_Response(reader):
    value = Ros2DrddsSrvStdSrvInt32_Response()
    value.result = reader.integer(4, True)
    return value

