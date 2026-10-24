# @file bounded_records.py
# @brief Provide the complete pal ros2_humble_devel canonical value surface.
# @details The original 30 record catalog retains field order, constants, defaults and quotas.
# Borrowed values and buffers must remain stable while a conversion is in progress.
# Malformed, truncated and trailing wire values are refused through the shared wire error contract.
# No declaration grants a capability or establishes a native ROS registry identity.
# Original declarations and units are retained in share/platform/pal/catalogs.
# Generated complete canonical records; source-only until actually tested.
from __future__ import annotations
from dataclasses import dataclass as _dataclass, field as _field
from builtins import (classmethod as _classmethod, bool as _py_bool,
    float as _py_float, int as _py_int, str as _py_str, bytes as _py_bytes, list as _py_list)
from typing import ClassVar as _ClassVar
from roswasm.codecs import Writer as _Writer, Reader as _Reader

def _write_raw(writer, value, maximum):
    if type(value) is not bytes or len(value) > maximum:
        raise ValueError('bounded raw bytes required')
    writer.integer(len(value), 4).raw(value)

def _read_raw(reader, maximum):
    count = reader.integer(4)
    if count > maximum:
        raise ValueError('raw byte count bound')
    return reader.take(count)

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
class Ros2Builtin_interfacesMsgDuration:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'builtin_interfaces/msg/Duration'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    sec: _py_int = 0
    nanosec: _py_int = 0

    def encode(self):
        writer = _Writer(8)
        _write_Ros2Builtin_interfacesMsgDuration(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 8)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Builtin_interfacesMsgDuration:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 8))
        value = _read_Ros2Builtin_interfacesMsgDuration(reader)
        reader.end()
        return value

_record_Ros2Builtin_interfacesMsgDuration = Ros2Builtin_interfacesMsgDuration

def _write_Ros2Builtin_interfacesMsgDuration(writer, value):
    if type(value) is not Ros2Builtin_interfacesMsgDuration:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.sec
    writer.integer(_part0, 4, True)
    _part1 = value.nanosec
    writer.integer(_part1, 4, False)
    if not 0 <= _part1 < 1000000000:
        raise ValueError('normalized subsecond field required')
    if not 8 <= len(writer.data) - _start <= 8:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Builtin_interfacesMsgDuration(reader):
    _start = reader.position
    value = Ros2Builtin_interfacesMsgDuration()
    value.sec = reader.integer(4, True)
    value.nanosec = reader.integer(4, False)
    if not 0 <= value.nanosec < 1000000000:
        raise ValueError('normalized subsecond field required')
    if not 8 <= reader.position - _start <= 8:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Builtin_interfacesMsgTime:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'builtin_interfaces/msg/Time'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
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
    _start = len(writer.data)
    _part0 = value.sec
    writer.integer(_part0, 4, True)
    _part1 = value.nanosec
    writer.integer(_part1, 4, False)
    if not 0 <= _part1 < 1000000000:
        raise ValueError('normalized subsecond field required')
    if not 8 <= len(writer.data) - _start <= 8:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Builtin_interfacesMsgTime(reader):
    _start = reader.position
    value = Ros2Builtin_interfacesMsgTime()
    value.sec = reader.integer(4, True)
    value.nanosec = reader.integer(4, False)
    if not 0 <= value.nanosec < 1000000000:
        raise ValueError('normalized subsecond field required')
    if not 8 <= reader.position - _start <= 8:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Std_msgsMsgColorRGBA:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'std_msgs/msg/ColorRGBA'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_087e0282f02c82a1d8f4580a47ff359ea71b7e72d477da47f49fc6bff61238b2'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 16
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 16
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 16
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    r: _py_float = 0.0
    g: _py_float = 0.0
    b: _py_float = 0.0
    a: _py_float = 0.0

    def encode(self):
        writer = _Writer(16)
        _write_Ros2Std_msgsMsgColorRGBA(writer, self)
        wire = writer.finish()
        return _wire(wire, 16, 16)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Std_msgsMsgColorRGBA:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 16, 16))
        value = _read_Ros2Std_msgsMsgColorRGBA(reader)
        reader.end()
        return value

_record_Ros2Std_msgsMsgColorRGBA = Ros2Std_msgsMsgColorRGBA

def _write_Ros2Std_msgsMsgColorRGBA(writer, value):
    if type(value) is not Ros2Std_msgsMsgColorRGBA:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.r
    writer.f32(_part0)
    _part1 = value.g
    writer.f32(_part1)
    _part2 = value.b
    writer.f32(_part2)
    _part3 = value.a
    writer.f32(_part3)
    if not 16 <= len(writer.data) - _start <= 16:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Std_msgsMsgColorRGBA(reader):
    _start = reader.position
    value = Ros2Std_msgsMsgColorRGBA()
    value.r = reader.f32()
    value.g = reader.f32()
    value.b = reader.f32()
    value.a = reader.f32()
    if not 16 <= reader.position - _start <= 16:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Pal_device_msgsMsgLedFixedColorParams:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_device_msgs/msg/LedFixedColorParams'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_486720194d8ed9dff1b17a2c59382a33cf04cab290115ecda1125481a750feac'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 16
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 16
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 16
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    color: _record_Ros2Std_msgsMsgColorRGBA = _field(default_factory=lambda: Ros2Std_msgsMsgColorRGBA())

    def encode(self):
        writer = _Writer(16)
        _write_Ros2Pal_device_msgsMsgLedFixedColorParams(writer, self)
        wire = writer.finish()
        return _wire(wire, 16, 16)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Pal_device_msgsMsgLedFixedColorParams:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 16, 16))
        value = _read_Ros2Pal_device_msgsMsgLedFixedColorParams(reader)
        reader.end()
        return value

_record_Ros2Pal_device_msgsMsgLedFixedColorParams = Ros2Pal_device_msgsMsgLedFixedColorParams

def _write_Ros2Pal_device_msgsMsgLedFixedColorParams(writer, value):
    if type(value) is not Ros2Pal_device_msgsMsgLedFixedColorParams:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.color
    _write_Ros2Std_msgsMsgColorRGBA(writer, _part0)
    if not 16 <= len(writer.data) - _start <= 16:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Pal_device_msgsMsgLedFixedColorParams(reader):
    _start = reader.position
    value = Ros2Pal_device_msgsMsgLedFixedColorParams()
    value.color = _read_Ros2Std_msgsMsgColorRGBA(reader)
    if not 16 <= reader.position - _start <= 16:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Pal_device_msgsMsgLedRainbowParams:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_device_msgs/msg/LedRainbowParams'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_de1034a751e90f65a6f722cf685ee462b658f71c1d71b49ca7ee81177a9fd2e2'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    transition_duration: _record_Ros2Builtin_interfacesMsgDuration = _field(default_factory=lambda: Ros2Builtin_interfacesMsgDuration())

    def encode(self):
        writer = _Writer(8)
        _write_Ros2Pal_device_msgsMsgLedRainbowParams(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 8)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Pal_device_msgsMsgLedRainbowParams:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 8))
        value = _read_Ros2Pal_device_msgsMsgLedRainbowParams(reader)
        reader.end()
        return value

_record_Ros2Pal_device_msgsMsgLedRainbowParams = Ros2Pal_device_msgsMsgLedRainbowParams

def _write_Ros2Pal_device_msgsMsgLedRainbowParams(writer, value):
    if type(value) is not Ros2Pal_device_msgsMsgLedRainbowParams:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.transition_duration
    _write_Ros2Builtin_interfacesMsgDuration(writer, _part0)
    if not 8 <= len(writer.data) - _start <= 8:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Pal_device_msgsMsgLedRainbowParams(reader):
    _start = reader.position
    value = Ros2Pal_device_msgsMsgLedRainbowParams()
    value.transition_duration = _read_Ros2Builtin_interfacesMsgDuration(reader)
    if not 8 <= reader.position - _start <= 8:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Pal_device_msgsMsgLedFadeParams:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_device_msgs/msg/LedFadeParams'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_a1b956d5fbae5ef515a7376ed137b3562722641b7a728ed294f210a1299167e5'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 41
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 41
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 41
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    first_color: _record_Ros2Std_msgsMsgColorRGBA = _field(default_factory=lambda: Ros2Std_msgsMsgColorRGBA())
    second_color: _record_Ros2Std_msgsMsgColorRGBA = _field(default_factory=lambda: Ros2Std_msgsMsgColorRGBA())
    transition_duration: _record_Ros2Builtin_interfacesMsgDuration = _field(default_factory=lambda: Ros2Builtin_interfacesMsgDuration())
    reverse_fade: _py_bool = False

    def encode(self):
        writer = _Writer(41)
        _write_Ros2Pal_device_msgsMsgLedFadeParams(writer, self)
        wire = writer.finish()
        return _wire(wire, 41, 41)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Pal_device_msgsMsgLedFadeParams:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 41, 41))
        value = _read_Ros2Pal_device_msgsMsgLedFadeParams(reader)
        reader.end()
        return value

_record_Ros2Pal_device_msgsMsgLedFadeParams = Ros2Pal_device_msgsMsgLedFadeParams

def _write_Ros2Pal_device_msgsMsgLedFadeParams(writer, value):
    if type(value) is not Ros2Pal_device_msgsMsgLedFadeParams:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.first_color
    _write_Ros2Std_msgsMsgColorRGBA(writer, _part0)
    _part1 = value.second_color
    _write_Ros2Std_msgsMsgColorRGBA(writer, _part1)
    _part2 = value.transition_duration
    _write_Ros2Builtin_interfacesMsgDuration(writer, _part2)
    _part3 = value.reverse_fade
    if type(_part3) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part3), 1)
    if not 41 <= len(writer.data) - _start <= 41:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Pal_device_msgsMsgLedFadeParams(reader):
    _start = reader.position
    value = Ros2Pal_device_msgsMsgLedFadeParams()
    value.first_color = _read_Ros2Std_msgsMsgColorRGBA(reader)
    value.second_color = _read_Ros2Std_msgsMsgColorRGBA(reader)
    value.transition_duration = _read_Ros2Builtin_interfacesMsgDuration(reader)
    value.reverse_fade = _read_bool(reader)
    if not 41 <= reader.position - _start <= 41:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Pal_device_msgsMsgLedBlinkParams:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_device_msgs/msg/LedBlinkParams'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_c1c8148bf78fc5ab210d7aa1498f6f2d84aeab0199ec41362e56054482f349bd'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 48
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 48
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 48
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    first_color: _record_Ros2Std_msgsMsgColorRGBA = _field(default_factory=lambda: Ros2Std_msgsMsgColorRGBA())
    second_color: _record_Ros2Std_msgsMsgColorRGBA = _field(default_factory=lambda: Ros2Std_msgsMsgColorRGBA())
    first_color_duration: _record_Ros2Builtin_interfacesMsgDuration = _field(default_factory=lambda: Ros2Builtin_interfacesMsgDuration())
    second_color_duration: _record_Ros2Builtin_interfacesMsgDuration = _field(default_factory=lambda: Ros2Builtin_interfacesMsgDuration())

    def encode(self):
        writer = _Writer(48)
        _write_Ros2Pal_device_msgsMsgLedBlinkParams(writer, self)
        wire = writer.finish()
        return _wire(wire, 48, 48)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Pal_device_msgsMsgLedBlinkParams:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 48, 48))
        value = _read_Ros2Pal_device_msgsMsgLedBlinkParams(reader)
        reader.end()
        return value

_record_Ros2Pal_device_msgsMsgLedBlinkParams = Ros2Pal_device_msgsMsgLedBlinkParams

def _write_Ros2Pal_device_msgsMsgLedBlinkParams(writer, value):
    if type(value) is not Ros2Pal_device_msgsMsgLedBlinkParams:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.first_color
    _write_Ros2Std_msgsMsgColorRGBA(writer, _part0)
    _part1 = value.second_color
    _write_Ros2Std_msgsMsgColorRGBA(writer, _part1)
    _part2 = value.first_color_duration
    _write_Ros2Builtin_interfacesMsgDuration(writer, _part2)
    _part3 = value.second_color_duration
    _write_Ros2Builtin_interfacesMsgDuration(writer, _part3)
    if not 48 <= len(writer.data) - _start <= 48:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Pal_device_msgsMsgLedBlinkParams(reader):
    _start = reader.position
    value = Ros2Pal_device_msgsMsgLedBlinkParams()
    value.first_color = _read_Ros2Std_msgsMsgColorRGBA(reader)
    value.second_color = _read_Ros2Std_msgsMsgColorRGBA(reader)
    value.first_color_duration = _read_Ros2Builtin_interfacesMsgDuration(reader)
    value.second_color_duration = _read_Ros2Builtin_interfacesMsgDuration(reader)
    if not 48 <= reader.position - _start <= 48:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Pal_device_msgsMsgLedProgressParams:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_device_msgs/msg/LedProgressParams'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_db7c705edf5aa8c5512323dec23f75af30b0971c3c26a52a6d2c02ea918d7ab0'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 40
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 40
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 40
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    first_color: _record_Ros2Std_msgsMsgColorRGBA = _field(default_factory=lambda: Ros2Std_msgsMsgColorRGBA())
    second_color: _record_Ros2Std_msgsMsgColorRGBA = _field(default_factory=lambda: Ros2Std_msgsMsgColorRGBA())
    percentage: _py_float = 0.0
    led_offset: _py_float = 0.0

    def encode(self):
        writer = _Writer(40)
        _write_Ros2Pal_device_msgsMsgLedProgressParams(writer, self)
        wire = writer.finish()
        return _wire(wire, 40, 40)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Pal_device_msgsMsgLedProgressParams:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 40, 40))
        value = _read_Ros2Pal_device_msgsMsgLedProgressParams(reader)
        reader.end()
        return value

_record_Ros2Pal_device_msgsMsgLedProgressParams = Ros2Pal_device_msgsMsgLedProgressParams

def _write_Ros2Pal_device_msgsMsgLedProgressParams(writer, value):
    if type(value) is not Ros2Pal_device_msgsMsgLedProgressParams:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.first_color
    _write_Ros2Std_msgsMsgColorRGBA(writer, _part0)
    _part1 = value.second_color
    _write_Ros2Std_msgsMsgColorRGBA(writer, _part1)
    _part2 = value.percentage
    writer.f32(_part2)
    _part3 = value.led_offset
    writer.f32(_part3)
    if not 40 <= len(writer.data) - _start <= 40:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Pal_device_msgsMsgLedProgressParams(reader):
    _start = reader.position
    value = Ros2Pal_device_msgsMsgLedProgressParams()
    value.first_color = _read_Ros2Std_msgsMsgColorRGBA(reader)
    value.second_color = _read_Ros2Std_msgsMsgColorRGBA(reader)
    value.percentage = reader.f32()
    value.led_offset = reader.f32()
    if not 40 <= reader.position - _start <= 40:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Pal_device_msgsMsgLedFlowParams:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_device_msgs/msg/LedFlowParams'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_6dbf5187ca7c1e7a8c5235832799bf22e3fed9ac7b76f7ce5ee340a5d2b79561'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 40
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 40
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 40
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    first_color: _record_Ros2Std_msgsMsgColorRGBA = _field(default_factory=lambda: Ros2Std_msgsMsgColorRGBA())
    second_color: _record_Ros2Std_msgsMsgColorRGBA = _field(default_factory=lambda: Ros2Std_msgsMsgColorRGBA())
    percentage: _py_float = 0.0
    velocity: _py_float = 0.0

    def encode(self):
        writer = _Writer(40)
        _write_Ros2Pal_device_msgsMsgLedFlowParams(writer, self)
        wire = writer.finish()
        return _wire(wire, 40, 40)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Pal_device_msgsMsgLedFlowParams:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 40, 40))
        value = _read_Ros2Pal_device_msgsMsgLedFlowParams(reader)
        reader.end()
        return value

_record_Ros2Pal_device_msgsMsgLedFlowParams = Ros2Pal_device_msgsMsgLedFlowParams

def _write_Ros2Pal_device_msgsMsgLedFlowParams(writer, value):
    if type(value) is not Ros2Pal_device_msgsMsgLedFlowParams:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.first_color
    _write_Ros2Std_msgsMsgColorRGBA(writer, _part0)
    _part1 = value.second_color
    _write_Ros2Std_msgsMsgColorRGBA(writer, _part1)
    _part2 = value.percentage
    writer.f32(_part2)
    _part3 = value.velocity
    writer.f32(_part3)
    if not 40 <= len(writer.data) - _start <= 40:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Pal_device_msgsMsgLedFlowParams(reader):
    _start = reader.position
    value = Ros2Pal_device_msgsMsgLedFlowParams()
    value.first_color = _read_Ros2Std_msgsMsgColorRGBA(reader)
    value.second_color = _read_Ros2Std_msgsMsgColorRGBA(reader)
    value.percentage = reader.f32()
    value.velocity = reader.f32()
    if not 40 <= reader.position - _start <= 40:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Pal_device_msgsMsgLedPreProgrammedParams:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_device_msgs/msg/LedPreProgrammedParams'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_219ebe0cb090162e2975ca24ae26cfdfc0226d535b730114058f11749a4905be'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    preprogrammed_id: _py_int = 0

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Pal_device_msgsMsgLedPreProgrammedParams(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Pal_device_msgsMsgLedPreProgrammedParams:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Pal_device_msgsMsgLedPreProgrammedParams(reader)
        reader.end()
        return value

_record_Ros2Pal_device_msgsMsgLedPreProgrammedParams = Ros2Pal_device_msgsMsgLedPreProgrammedParams

def _write_Ros2Pal_device_msgsMsgLedPreProgrammedParams(writer, value):
    if type(value) is not Ros2Pal_device_msgsMsgLedPreProgrammedParams:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.preprogrammed_id
    writer.integer(_part0, 1, False)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Pal_device_msgsMsgLedPreProgrammedParams(reader):
    _start = reader.position
    value = Ros2Pal_device_msgsMsgLedPreProgrammedParams()
    value.preprogrammed_id = reader.integer(1, False)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Pal_device_msgsMsgLedEffectViaTopicParams:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_device_msgs/msg/LedEffectViaTopicParams'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_91ab4bac3cb9685f695a523fc63eb3d7c5c7db9c057f75d2b4685b192b39e485'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 132
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 132
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    topic_name: _py_str = ''

    def encode(self):
        writer = _Writer(132)
        _write_Ros2Pal_device_msgsMsgLedEffectViaTopicParams(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 132)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Pal_device_msgsMsgLedEffectViaTopicParams:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 4, 132))
        value = _read_Ros2Pal_device_msgsMsgLedEffectViaTopicParams(reader)
        reader.end()
        return value

_record_Ros2Pal_device_msgsMsgLedEffectViaTopicParams = Ros2Pal_device_msgsMsgLedEffectViaTopicParams

def _write_Ros2Pal_device_msgsMsgLedEffectViaTopicParams(writer, value):
    if type(value) is not Ros2Pal_device_msgsMsgLedEffectViaTopicParams:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.topic_name
    _write_text(writer, _part0, 128)
    if not 4 <= len(writer.data) - _start <= 132:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Pal_device_msgsMsgLedEffectViaTopicParams(reader):
    _start = reader.position
    value = Ros2Pal_device_msgsMsgLedEffectViaTopicParams()
    value.topic_name = _read_text(reader, 128)
    if not 4 <= reader.position - _start <= 132:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Pal_device_msgsMsgLedDataArrayParams:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_device_msgs/msg/LedDataArrayParams'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_f52b27f234be53ae9cfc421d8434f6a9d0e02ca8fc88de7534dac2472a0a4349'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 68
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 68
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    data: _py_list[_record_Ros2Std_msgsMsgColorRGBA] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(68)
        _write_Ros2Pal_device_msgsMsgLedDataArrayParams(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 68)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Pal_device_msgsMsgLedDataArrayParams:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 4, 68))
        value = _read_Ros2Pal_device_msgsMsgLedDataArrayParams(reader)
        reader.end()
        return value

_record_Ros2Pal_device_msgsMsgLedDataArrayParams = Ros2Pal_device_msgsMsgLedDataArrayParams

def _write_Ros2Pal_device_msgsMsgLedDataArrayParams(writer, value):
    if type(value) is not Ros2Pal_device_msgsMsgLedDataArrayParams:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.data
    if type(_part0) not in (list, tuple):
        raise TypeError('array value required')
    _count0 = len(_part0)
    if _count0 > 4:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count0, 4)
    for _index in range(_count0):
        _element = _part0[_index]
        _write_Ros2Std_msgsMsgColorRGBA(writer, _element)
    if not 4 <= len(writer.data) - _start <= 68:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Pal_device_msgsMsgLedDataArrayParams(reader):
    _start = reader.position
    value = Ros2Pal_device_msgsMsgLedDataArrayParams()
    value.data = [_read_Ros2Std_msgsMsgColorRGBA(reader) for _ in range(_read_count(reader, 4, 16))]
    if not 4 <= reader.position - _start <= 68:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Pal_device_msgsMsgLedEffectParams:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_device_msgs/msg/LedEffectParams'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_dbaf26734baee7c339c249fb6bd35f42672b48bac23966670f525f5d921f8848'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 203
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 395
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 395
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = [{'name': 'FIXED_COLOR', 'type': 'uint8', 'native_type': 'uint8', 'literal': '0', 'value': '0'},
     {'name': 'RAINBOW', 'type': 'uint8', 'native_type': 'uint8', 'literal': '1', 'value': '1'},
     {'name': 'FADE', 'type': 'uint8', 'native_type': 'uint8', 'literal': '2', 'value': '2'},
     {'name': 'BLINK', 'type': 'uint8', 'native_type': 'uint8', 'literal': '3', 'value': '3'},
     {'name': 'PROGRESS', 'type': 'uint8', 'native_type': 'uint8', 'literal': '4', 'value': '4'},
     {'name': 'FLOW', 'type': 'uint8', 'native_type': 'uint8', 'literal': '5', 'value': '5'},
     {'name': 'PREPROGRAMMED_EFFECT',
      'type': 'uint8',
      'native_type': 'uint8',
      'literal': '6',
      'value': '6'},
     {'name': 'EFFECT_VIA_TOPIC',
      'type': 'uint8',
      'native_type': 'uint8',
      'literal': '7',
      'value': '7'},
     {'name': 'DATA_ARRAY', 'type': 'uint8', 'native_type': 'uint8', 'literal': '8', 'value': '8'}]
    FIXED_COLOR: _ClassVar = 0
    RAINBOW: _ClassVar = 1
    FADE: _ClassVar = 2
    BLINK: _ClassVar = 3
    PROGRESS: _ClassVar = 4
    FLOW: _ClassVar = 5
    PREPROGRAMMED_EFFECT: _ClassVar = 6
    EFFECT_VIA_TOPIC: _ClassVar = 7
    DATA_ARRAY: _ClassVar = 8
    effect_type: _py_int = 0
    fixed_color: _record_Ros2Pal_device_msgsMsgLedFixedColorParams = _field(default_factory=lambda: Ros2Pal_device_msgsMsgLedFixedColorParams())
    rainbow: _record_Ros2Pal_device_msgsMsgLedRainbowParams = _field(default_factory=lambda: Ros2Pal_device_msgsMsgLedRainbowParams())
    fade: _record_Ros2Pal_device_msgsMsgLedFadeParams = _field(default_factory=lambda: Ros2Pal_device_msgsMsgLedFadeParams())
    blink: _record_Ros2Pal_device_msgsMsgLedBlinkParams = _field(default_factory=lambda: Ros2Pal_device_msgsMsgLedBlinkParams())
    progress: _record_Ros2Pal_device_msgsMsgLedProgressParams = _field(default_factory=lambda: Ros2Pal_device_msgsMsgLedProgressParams())
    flow: _record_Ros2Pal_device_msgsMsgLedFlowParams = _field(default_factory=lambda: Ros2Pal_device_msgsMsgLedFlowParams())
    preprogrammed: _record_Ros2Pal_device_msgsMsgLedPreProgrammedParams = _field(default_factory=lambda: Ros2Pal_device_msgsMsgLedPreProgrammedParams())
    effect_via_topic: _record_Ros2Pal_device_msgsMsgLedEffectViaTopicParams = (
        _field(default_factory=lambda: Ros2Pal_device_msgsMsgLedEffectViaTopicParams())
    )
    data_array: _record_Ros2Pal_device_msgsMsgLedDataArrayParams = _field(default_factory=lambda: Ros2Pal_device_msgsMsgLedDataArrayParams())

    def encode(self):
        writer = _Writer(395)
        _write_Ros2Pal_device_msgsMsgLedEffectParams(writer, self)
        wire = writer.finish()
        return _wire(wire, 203, 395)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Pal_device_msgsMsgLedEffectParams:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 203, 395))
        value = _read_Ros2Pal_device_msgsMsgLedEffectParams(reader)
        reader.end()
        return value

_record_Ros2Pal_device_msgsMsgLedEffectParams = Ros2Pal_device_msgsMsgLedEffectParams

def _write_Ros2Pal_device_msgsMsgLedEffectParams(writer, value):
    if type(value) is not Ros2Pal_device_msgsMsgLedEffectParams:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.effect_type
    writer.integer(_part0, 1, False)
    _part1 = value.fixed_color
    _write_Ros2Pal_device_msgsMsgLedFixedColorParams(writer, _part1)
    _part2 = value.rainbow
    _write_Ros2Pal_device_msgsMsgLedRainbowParams(writer, _part2)
    _part3 = value.fade
    _write_Ros2Pal_device_msgsMsgLedFadeParams(writer, _part3)
    _part4 = value.blink
    _write_Ros2Pal_device_msgsMsgLedBlinkParams(writer, _part4)
    _part5 = value.progress
    _write_Ros2Pal_device_msgsMsgLedProgressParams(writer, _part5)
    _part6 = value.flow
    _write_Ros2Pal_device_msgsMsgLedFlowParams(writer, _part6)
    _part7 = value.preprogrammed
    _write_Ros2Pal_device_msgsMsgLedPreProgrammedParams(writer, _part7)
    _part8 = value.effect_via_topic
    _write_Ros2Pal_device_msgsMsgLedEffectViaTopicParams(writer, _part8)
    _part9 = value.data_array
    _write_Ros2Pal_device_msgsMsgLedDataArrayParams(writer, _part9)
    if not 203 <= len(writer.data) - _start <= 395:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Pal_device_msgsMsgLedEffectParams(reader):
    _start = reader.position
    value = Ros2Pal_device_msgsMsgLedEffectParams()
    value.effect_type = reader.integer(1, False)
    value.fixed_color = _read_Ros2Pal_device_msgsMsgLedFixedColorParams(reader)
    value.rainbow = _read_Ros2Pal_device_msgsMsgLedRainbowParams(reader)
    value.fade = _read_Ros2Pal_device_msgsMsgLedFadeParams(reader)
    value.blink = _read_Ros2Pal_device_msgsMsgLedBlinkParams(reader)
    value.progress = _read_Ros2Pal_device_msgsMsgLedProgressParams(reader)
    value.flow = _read_Ros2Pal_device_msgsMsgLedFlowParams(reader)
    value.preprogrammed = _read_Ros2Pal_device_msgsMsgLedPreProgrammedParams(reader)
    value.effect_via_topic = _read_Ros2Pal_device_msgsMsgLedEffectViaTopicParams(reader)
    value.data_array = _read_Ros2Pal_device_msgsMsgLedDataArrayParams(reader)
    if not 203 <= reader.position - _start <= 395:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Pal_device_msgsActionDoTimedLedEffect_Goal:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_device_msgs/action/DoTimedLedEffect_Goal'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_a7d6aafeeae03e2122a76727ab8503990df3791f351161c72d75a6ecf868a4f2'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 216
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 472
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 472
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    devices: _py_list[_py_int] = _field(default_factory=lambda: [])
    params: _record_Ros2Pal_device_msgsMsgLedEffectParams = _field(default_factory=lambda: Ros2Pal_device_msgsMsgLedEffectParams())
    effect_duration: _record_Ros2Builtin_interfacesMsgDuration = _field(default_factory=lambda: Ros2Builtin_interfacesMsgDuration())
    priority: _py_int = 0

    def encode(self):
        writer = _Writer(472)
        _write_Ros2Pal_device_msgsActionDoTimedLedEffect_Goal(writer, self)
        wire = writer.finish()
        return _wire(wire, 216, 472)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Pal_device_msgsActionDoTimedLedEffect_Goal:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 216, 472))
        value = _read_Ros2Pal_device_msgsActionDoTimedLedEffect_Goal(reader)
        reader.end()
        return value

_record_Ros2Pal_device_msgsActionDoTimedLedEffect_Goal = Ros2Pal_device_msgsActionDoTimedLedEffect_Goal

def _write_Ros2Pal_device_msgsActionDoTimedLedEffect_Goal(writer, value):
    if type(value) is not Ros2Pal_device_msgsActionDoTimedLedEffect_Goal:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.devices
    if type(_part0) not in (list, tuple):
        raise TypeError('array value required')
    _count0 = len(_part0)
    if _count0 > 16:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count0, 4)
    for _index in range(_count0):
        _element = _part0[_index]
        writer.integer(_element, 4, False)
    _part1 = value.params
    _write_Ros2Pal_device_msgsMsgLedEffectParams(writer, _part1)
    _part2 = value.effect_duration
    _write_Ros2Builtin_interfacesMsgDuration(writer, _part2)
    _part3 = value.priority
    writer.integer(_part3, 1, False)
    if not 216 <= len(writer.data) - _start <= 472:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Pal_device_msgsActionDoTimedLedEffect_Goal(reader):
    _start = reader.position
    value = Ros2Pal_device_msgsActionDoTimedLedEffect_Goal()
    value.devices = [reader.integer(4, False) for _ in range(_read_count(reader, 16, 4))]
    value.params = _read_Ros2Pal_device_msgsMsgLedEffectParams(reader)
    value.effect_duration = _read_Ros2Builtin_interfacesMsgDuration(reader)
    value.priority = reader.integer(1, False)
    if not 216 <= reader.position - _start <= 472:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Pal_device_msgsActionDoTimedLedEffect_Result:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_device_msgs/action/DoTimedLedEffect_Result'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_2191f5a4810fe2c464b9a346a9615ebc44783f7a03037798b1c38c727db852f9'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros2Pal_device_msgsActionDoTimedLedEffect_Result(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Pal_device_msgsActionDoTimedLedEffect_Result:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros2Pal_device_msgsActionDoTimedLedEffect_Result(reader)
        reader.end()
        return value

_record_Ros2Pal_device_msgsActionDoTimedLedEffect_Result = Ros2Pal_device_msgsActionDoTimedLedEffect_Result

def _write_Ros2Pal_device_msgsActionDoTimedLedEffect_Result(writer, value):
    if type(value) is not Ros2Pal_device_msgsActionDoTimedLedEffect_Result:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros2Pal_device_msgsActionDoTimedLedEffect_Result(reader):
    _start = reader.position
    value = Ros2Pal_device_msgsActionDoTimedLedEffect_Result()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_device_msgs/action/DoTimedLedEffect_Feedback'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_b82ad14c20ec79d1face7e2ca9c6013f6a48010c88f849fc81eee4a2e120fc6d'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback(reader)
        reader.end()
        return value

_record_Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback = Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback

def _write_Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback(writer, value):
    if type(value) is not Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback(reader):
    _start = reader.position
    value = Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Pal_device_msgsMsgBatteryState:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_device_msgs/msg/BatteryState'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_a9ea99580734e3ff1f8254e19a2543e049b52bb480642e6b31beda7fff3dc904'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 5
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 5
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 5
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = [{'name': 'FULL', 'type': 'uint8', 'native_type': 'byte', 'literal': '5', 'value': '5'},
     {'name': 'HIGH', 'type': 'uint8', 'native_type': 'byte', 'literal': '4', 'value': '4'},
     {'name': 'MEDIUM', 'type': 'uint8', 'native_type': 'byte', 'literal': '3', 'value': '3'},
     {'name': 'LOW', 'type': 'uint8', 'native_type': 'byte', 'literal': '2', 'value': '2'},
     {'name': 'CRITICAL_LOW', 'type': 'uint8', 'native_type': 'byte', 'literal': '1', 'value': '1'}]
    FULL: _ClassVar = 5
    HIGH: _ClassVar = 4
    MEDIUM: _ClassVar = 3
    LOW: _ClassVar = 2
    CRITICAL_LOW: _ClassVar = 1
    charge_state: _py_int = 0
    battery_percentage: _py_float = 0.0

    def encode(self):
        writer = _Writer(5)
        _write_Ros2Pal_device_msgsMsgBatteryState(writer, self)
        wire = writer.finish()
        return _wire(wire, 5, 5)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Pal_device_msgsMsgBatteryState:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 5, 5))
        value = _read_Ros2Pal_device_msgsMsgBatteryState(reader)
        reader.end()
        return value

_record_Ros2Pal_device_msgsMsgBatteryState = Ros2Pal_device_msgsMsgBatteryState

def _write_Ros2Pal_device_msgsMsgBatteryState(writer, value):
    if type(value) is not Ros2Pal_device_msgsMsgBatteryState:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.charge_state
    writer.integer(_part0, 1, True)
    _part1 = value.battery_percentage
    writer.f32(_part1)
    if not 5 <= len(writer.data) - _start <= 5:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Pal_device_msgsMsgBatteryState(reader):
    _start = reader.position
    value = Ros2Pal_device_msgsMsgBatteryState()
    value.charge_state = reader.integer(1, True)
    value.battery_percentage = reader.f32()
    if not 5 <= reader.position - _start <= 5:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Std_msgsMsgHeader:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'std_msgs/msg/Header'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 140
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 140
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
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
    _start = len(writer.data)
    _part0 = value.stamp
    _write_Ros2Builtin_interfacesMsgTime(writer, _part0)
    _part1 = value.frame_id
    _write_text(writer, _part1, 128)
    if not 12 <= len(writer.data) - _start <= 140:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Std_msgsMsgHeader(reader):
    _start = reader.position
    value = Ros2Std_msgsMsgHeader()
    value.stamp = _read_Ros2Builtin_interfacesMsgTime(reader)
    value.frame_id = _read_text(reader, 128)
    if not 12 <= reader.position - _start <= 140:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Pal_device_msgsMsgBumper:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_device_msgs/msg/Bumper'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_3488ad42d9a7cb8a17881026b932b5d9559ecbc1525dc827ce898cd37c69c022'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 13
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 141
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 141
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros2Std_msgsMsgHeader = _field(default_factory=lambda: Ros2Std_msgsMsgHeader())
    is_pressed: _py_bool = False

    def encode(self):
        writer = _Writer(141)
        _write_Ros2Pal_device_msgsMsgBumper(writer, self)
        wire = writer.finish()
        return _wire(wire, 13, 141)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Pal_device_msgsMsgBumper:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 13, 141))
        value = _read_Ros2Pal_device_msgsMsgBumper(reader)
        reader.end()
        return value

_record_Ros2Pal_device_msgsMsgBumper = Ros2Pal_device_msgsMsgBumper

def _write_Ros2Pal_device_msgsMsgBumper(writer, value):
    if type(value) is not Ros2Pal_device_msgsMsgBumper:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros2Std_msgsMsgHeader(writer, _part0)
    _part1 = value.is_pressed
    if type(_part1) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part1), 1)
    if not 13 <= len(writer.data) - _start <= 141:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Pal_device_msgsMsgBumper(reader):
    _start = reader.position
    value = Ros2Pal_device_msgsMsgBumper()
    value.header = _read_Ros2Std_msgsMsgHeader(reader)
    value.is_pressed = _read_bool(reader)
    if not 13 <= reader.position - _start <= 141:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Pal_device_msgsMsgLedGroup:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_device_msgs/msg/LedGroup'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_9a08d65251c3a90b87f2013644a3d13080e40edb3b70f9d87a21d0c5421973f0'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 4
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 4
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = [{'name': 'LEFT_EAR', 'type': 'uint8', 'native_type': 'byte', 'literal': '1', 'value': '1'},
     {'name': 'RIGHT_EAR', 'type': 'uint8', 'native_type': 'byte', 'literal': '2', 'value': '2'}]
    LEFT_EAR: _ClassVar = 1
    RIGHT_EAR: _ClassVar = 2
    led_mask: _py_int = 0

    def encode(self):
        writer = _Writer(4)
        _write_Ros2Pal_device_msgsMsgLedGroup(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 4)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Pal_device_msgsMsgLedGroup:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 4, 4))
        value = _read_Ros2Pal_device_msgsMsgLedGroup(reader)
        reader.end()
        return value

_record_Ros2Pal_device_msgsMsgLedGroup = Ros2Pal_device_msgsMsgLedGroup

def _write_Ros2Pal_device_msgsMsgLedGroup(writer, value):
    if type(value) is not Ros2Pal_device_msgsMsgLedGroup:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.led_mask
    writer.integer(_part0, 4, False)
    if not 4 <= len(writer.data) - _start <= 4:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Pal_device_msgsMsgLedGroup(reader):
    _start = reader.position
    value = Ros2Pal_device_msgsMsgLedGroup()
    value.led_mask = reader.integer(4, False)
    if not 4 <= reader.position - _start <= 4:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Pal_device_msgsSrvCancelEffect_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_device_msgs/srv/CancelEffect_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_120bf0cc7ea1a4b52b66f30b53feabfc144f7d0fa4436f964b4d78c0249af062'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 4
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 4
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    effect_id: _py_int = 0

    def encode(self):
        writer = _Writer(4)
        _write_Ros2Pal_device_msgsSrvCancelEffect_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 4)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Pal_device_msgsSrvCancelEffect_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 4, 4))
        value = _read_Ros2Pal_device_msgsSrvCancelEffect_Request(reader)
        reader.end()
        return value

_record_Ros2Pal_device_msgsSrvCancelEffect_Request = Ros2Pal_device_msgsSrvCancelEffect_Request

def _write_Ros2Pal_device_msgsSrvCancelEffect_Request(writer, value):
    if type(value) is not Ros2Pal_device_msgsSrvCancelEffect_Request:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.effect_id
    writer.integer(_part0, 4, False)
    if not 4 <= len(writer.data) - _start <= 4:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Pal_device_msgsSrvCancelEffect_Request(reader):
    _start = reader.position
    value = Ros2Pal_device_msgsSrvCancelEffect_Request()
    value.effect_id = reader.integer(4, False)
    if not 4 <= reader.position - _start <= 4:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Pal_device_msgsSrvCancelEffect_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_device_msgs/srv/CancelEffect_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_c54c991922500d0588c4dba48df2580f4a752fda5bdd175d318ebc1c31aad657'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros2Pal_device_msgsSrvCancelEffect_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Pal_device_msgsSrvCancelEffect_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros2Pal_device_msgsSrvCancelEffect_Response(reader)
        reader.end()
        return value

_record_Ros2Pal_device_msgsSrvCancelEffect_Response = Ros2Pal_device_msgsSrvCancelEffect_Response

def _write_Ros2Pal_device_msgsSrvCancelEffect_Response(writer, value):
    if type(value) is not Ros2Pal_device_msgsSrvCancelEffect_Response:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros2Pal_device_msgsSrvCancelEffect_Response(reader):
    _start = reader.position
    value = Ros2Pal_device_msgsSrvCancelEffect_Response()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_device_msgs/srv/ShutdownAndWakeUpRobot_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_3aa4e835b4cf21c77bd25b980b022133b5425f4eb8798832d4f8403bfc691166'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    shutdown_duration: _record_Ros2Builtin_interfacesMsgDuration = _field(default_factory=lambda: Ros2Builtin_interfacesMsgDuration())

    def encode(self):
        writer = _Writer(8)
        _write_Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 8)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 8))
        value = _read_Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request(reader)
        reader.end()
        return value

_record_Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request = Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request

def _write_Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request(writer, value):
    if type(value) is not Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.shutdown_duration
    _write_Ros2Builtin_interfacesMsgDuration(writer, _part0)
    if not 8 <= len(writer.data) - _start <= 8:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request(reader):
    _start = reader.position
    value = Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request()
    value.shutdown_duration = _read_Ros2Builtin_interfacesMsgDuration(reader)
    if not 8 <= reader.position - _start <= 8:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_device_msgs/srv/ShutdownAndWakeUpRobot_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_a3db908cd8f5f47c150070a0e2df18fada891ac05b1492ecbd025ba67d7e46af'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response(reader)
        reader.end()
        return value

_record_Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response = Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response

def _write_Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response(writer, value):
    if type(value) is not Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response(reader):
    _start = reader.position
    value = Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Pal_device_msgsSrvTimedBlinkEffect_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_device_msgs/srv/TimedBlinkEffect_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_17a50bf4f71fe6d4d3e9d146df74fac1c2d6ed69c5899c51517785cdfcb9b15c'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 61
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 61
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 61
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    leds: _record_Ros2Pal_device_msgsMsgLedGroup = _field(default_factory=lambda: Ros2Pal_device_msgsMsgLedGroup())
    first_color: _record_Ros2Std_msgsMsgColorRGBA = _field(default_factory=lambda: Ros2Std_msgsMsgColorRGBA())
    second_color: _record_Ros2Std_msgsMsgColorRGBA = _field(default_factory=lambda: Ros2Std_msgsMsgColorRGBA())
    first_color_duration: _record_Ros2Builtin_interfacesMsgDuration = _field(default_factory=lambda: Ros2Builtin_interfacesMsgDuration())
    second_color_duration: _record_Ros2Builtin_interfacesMsgDuration = _field(default_factory=lambda: Ros2Builtin_interfacesMsgDuration())
    effect_duration: _record_Ros2Builtin_interfacesMsgDuration = _field(default_factory=lambda: Ros2Builtin_interfacesMsgDuration())
    priority: _py_int = 0

    def encode(self):
        writer = _Writer(61)
        _write_Ros2Pal_device_msgsSrvTimedBlinkEffect_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 61, 61)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Pal_device_msgsSrvTimedBlinkEffect_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 61, 61))
        value = _read_Ros2Pal_device_msgsSrvTimedBlinkEffect_Request(reader)
        reader.end()
        return value

_record_Ros2Pal_device_msgsSrvTimedBlinkEffect_Request = Ros2Pal_device_msgsSrvTimedBlinkEffect_Request

def _write_Ros2Pal_device_msgsSrvTimedBlinkEffect_Request(writer, value):
    if type(value) is not Ros2Pal_device_msgsSrvTimedBlinkEffect_Request:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.leds
    _write_Ros2Pal_device_msgsMsgLedGroup(writer, _part0)
    _part1 = value.first_color
    _write_Ros2Std_msgsMsgColorRGBA(writer, _part1)
    _part2 = value.second_color
    _write_Ros2Std_msgsMsgColorRGBA(writer, _part2)
    _part3 = value.first_color_duration
    _write_Ros2Builtin_interfacesMsgDuration(writer, _part3)
    _part4 = value.second_color_duration
    _write_Ros2Builtin_interfacesMsgDuration(writer, _part4)
    _part5 = value.effect_duration
    _write_Ros2Builtin_interfacesMsgDuration(writer, _part5)
    _part6 = value.priority
    writer.integer(_part6, 1, False)
    if not 61 <= len(writer.data) - _start <= 61:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Pal_device_msgsSrvTimedBlinkEffect_Request(reader):
    _start = reader.position
    value = Ros2Pal_device_msgsSrvTimedBlinkEffect_Request()
    value.leds = _read_Ros2Pal_device_msgsMsgLedGroup(reader)
    value.first_color = _read_Ros2Std_msgsMsgColorRGBA(reader)
    value.second_color = _read_Ros2Std_msgsMsgColorRGBA(reader)
    value.first_color_duration = _read_Ros2Builtin_interfacesMsgDuration(reader)
    value.second_color_duration = _read_Ros2Builtin_interfacesMsgDuration(reader)
    value.effect_duration = _read_Ros2Builtin_interfacesMsgDuration(reader)
    value.priority = reader.integer(1, False)
    if not 61 <= reader.position - _start <= 61:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Pal_device_msgsSrvTimedBlinkEffect_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_device_msgs/srv/TimedBlinkEffect_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_ea08afa309ccd316b279952de55d50e4d49fe027387ba12e54eba4b488e4d66a'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 4
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 4
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    effect_id: _py_int = 0

    def encode(self):
        writer = _Writer(4)
        _write_Ros2Pal_device_msgsSrvTimedBlinkEffect_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 4)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Pal_device_msgsSrvTimedBlinkEffect_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 4, 4))
        value = _read_Ros2Pal_device_msgsSrvTimedBlinkEffect_Response(reader)
        reader.end()
        return value

_record_Ros2Pal_device_msgsSrvTimedBlinkEffect_Response = Ros2Pal_device_msgsSrvTimedBlinkEffect_Response

def _write_Ros2Pal_device_msgsSrvTimedBlinkEffect_Response(writer, value):
    if type(value) is not Ros2Pal_device_msgsSrvTimedBlinkEffect_Response:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.effect_id
    writer.integer(_part0, 4, False)
    if not 4 <= len(writer.data) - _start <= 4:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Pal_device_msgsSrvTimedBlinkEffect_Response(reader):
    _start = reader.position
    value = Ros2Pal_device_msgsSrvTimedBlinkEffect_Response()
    value.effect_id = reader.integer(4, False)
    if not 4 <= reader.position - _start <= 4:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Pal_device_msgsSrvTimedColourEffect_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_device_msgs/srv/TimedColourEffect_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_bb25c25962a52120bd8575be65dabd983ac46c7a19794f3793b37c2bf8ccbfa8'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 29
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 29
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 29
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    leds: _record_Ros2Pal_device_msgsMsgLedGroup = _field(default_factory=lambda: Ros2Pal_device_msgsMsgLedGroup())
    color: _record_Ros2Std_msgsMsgColorRGBA = _field(default_factory=lambda: Ros2Std_msgsMsgColorRGBA())
    effect_duration: _record_Ros2Builtin_interfacesMsgDuration = _field(default_factory=lambda: Ros2Builtin_interfacesMsgDuration())
    priority: _py_int = 0

    def encode(self):
        writer = _Writer(29)
        _write_Ros2Pal_device_msgsSrvTimedColourEffect_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 29, 29)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Pal_device_msgsSrvTimedColourEffect_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 29, 29))
        value = _read_Ros2Pal_device_msgsSrvTimedColourEffect_Request(reader)
        reader.end()
        return value

_record_Ros2Pal_device_msgsSrvTimedColourEffect_Request = Ros2Pal_device_msgsSrvTimedColourEffect_Request

def _write_Ros2Pal_device_msgsSrvTimedColourEffect_Request(writer, value):
    if type(value) is not Ros2Pal_device_msgsSrvTimedColourEffect_Request:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.leds
    _write_Ros2Pal_device_msgsMsgLedGroup(writer, _part0)
    _part1 = value.color
    _write_Ros2Std_msgsMsgColorRGBA(writer, _part1)
    _part2 = value.effect_duration
    _write_Ros2Builtin_interfacesMsgDuration(writer, _part2)
    _part3 = value.priority
    writer.integer(_part3, 1, False)
    if not 29 <= len(writer.data) - _start <= 29:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Pal_device_msgsSrvTimedColourEffect_Request(reader):
    _start = reader.position
    value = Ros2Pal_device_msgsSrvTimedColourEffect_Request()
    value.leds = _read_Ros2Pal_device_msgsMsgLedGroup(reader)
    value.color = _read_Ros2Std_msgsMsgColorRGBA(reader)
    value.effect_duration = _read_Ros2Builtin_interfacesMsgDuration(reader)
    value.priority = reader.integer(1, False)
    if not 29 <= reader.position - _start <= 29:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Pal_device_msgsSrvTimedColourEffect_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_device_msgs/srv/TimedColourEffect_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_5cd500032cfe7a263100061b2ebda37e8639cbf8a9c6fc978e9525f59d9df1f9'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 4
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 4
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    effect_id: _py_int = 0

    def encode(self):
        writer = _Writer(4)
        _write_Ros2Pal_device_msgsSrvTimedColourEffect_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 4)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Pal_device_msgsSrvTimedColourEffect_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 4, 4))
        value = _read_Ros2Pal_device_msgsSrvTimedColourEffect_Response(reader)
        reader.end()
        return value

_record_Ros2Pal_device_msgsSrvTimedColourEffect_Response = Ros2Pal_device_msgsSrvTimedColourEffect_Response

def _write_Ros2Pal_device_msgsSrvTimedColourEffect_Response(writer, value):
    if type(value) is not Ros2Pal_device_msgsSrvTimedColourEffect_Response:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.effect_id
    writer.integer(_part0, 4, False)
    if not 4 <= len(writer.data) - _start <= 4:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Pal_device_msgsSrvTimedColourEffect_Response(reader):
    _start = reader.position
    value = Ros2Pal_device_msgsSrvTimedColourEffect_Response()
    value.effect_id = reader.integer(4, False)
    if not 4 <= reader.position - _start <= 4:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Pal_device_msgsSrvTimedFadeEffect_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_device_msgs/srv/TimedFadeEffect_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_07c57a457aa0767c766865c5c3b0fdbf5c46e39eac881b452fbc08933c1d3b13'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 54
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 54
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 54
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    leds: _record_Ros2Pal_device_msgsMsgLedGroup = _field(default_factory=lambda: Ros2Pal_device_msgsMsgLedGroup())
    first_color: _record_Ros2Std_msgsMsgColorRGBA = _field(default_factory=lambda: Ros2Std_msgsMsgColorRGBA())
    second_color: _record_Ros2Std_msgsMsgColorRGBA = _field(default_factory=lambda: Ros2Std_msgsMsgColorRGBA())
    color_change_duration: _record_Ros2Builtin_interfacesMsgDuration = _field(default_factory=lambda: Ros2Builtin_interfacesMsgDuration())
    reverse_fade: _py_bool = False
    effect_duration: _record_Ros2Builtin_interfacesMsgDuration = _field(default_factory=lambda: Ros2Builtin_interfacesMsgDuration())
    priority: _py_int = 0

    def encode(self):
        writer = _Writer(54)
        _write_Ros2Pal_device_msgsSrvTimedFadeEffect_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 54, 54)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Pal_device_msgsSrvTimedFadeEffect_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 54, 54))
        value = _read_Ros2Pal_device_msgsSrvTimedFadeEffect_Request(reader)
        reader.end()
        return value

_record_Ros2Pal_device_msgsSrvTimedFadeEffect_Request = Ros2Pal_device_msgsSrvTimedFadeEffect_Request

def _write_Ros2Pal_device_msgsSrvTimedFadeEffect_Request(writer, value):
    if type(value) is not Ros2Pal_device_msgsSrvTimedFadeEffect_Request:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.leds
    _write_Ros2Pal_device_msgsMsgLedGroup(writer, _part0)
    _part1 = value.first_color
    _write_Ros2Std_msgsMsgColorRGBA(writer, _part1)
    _part2 = value.second_color
    _write_Ros2Std_msgsMsgColorRGBA(writer, _part2)
    _part3 = value.color_change_duration
    _write_Ros2Builtin_interfacesMsgDuration(writer, _part3)
    _part4 = value.reverse_fade
    if type(_part4) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part4), 1)
    _part5 = value.effect_duration
    _write_Ros2Builtin_interfacesMsgDuration(writer, _part5)
    _part6 = value.priority
    writer.integer(_part6, 1, False)
    if not 54 <= len(writer.data) - _start <= 54:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Pal_device_msgsSrvTimedFadeEffect_Request(reader):
    _start = reader.position
    value = Ros2Pal_device_msgsSrvTimedFadeEffect_Request()
    value.leds = _read_Ros2Pal_device_msgsMsgLedGroup(reader)
    value.first_color = _read_Ros2Std_msgsMsgColorRGBA(reader)
    value.second_color = _read_Ros2Std_msgsMsgColorRGBA(reader)
    value.color_change_duration = _read_Ros2Builtin_interfacesMsgDuration(reader)
    value.reverse_fade = _read_bool(reader)
    value.effect_duration = _read_Ros2Builtin_interfacesMsgDuration(reader)
    value.priority = reader.integer(1, False)
    if not 54 <= reader.position - _start <= 54:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Pal_device_msgsSrvTimedFadeEffect_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_device_msgs/srv/TimedFadeEffect_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_2d94870076ef7b1fe03d8ef45d96588fa3850faa0eaf39efd218b21fe947e8f5'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 4
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 4
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    effect_id: _py_int = 0

    def encode(self):
        writer = _Writer(4)
        _write_Ros2Pal_device_msgsSrvTimedFadeEffect_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 4)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Pal_device_msgsSrvTimedFadeEffect_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 4, 4))
        value = _read_Ros2Pal_device_msgsSrvTimedFadeEffect_Response(reader)
        reader.end()
        return value

_record_Ros2Pal_device_msgsSrvTimedFadeEffect_Response = Ros2Pal_device_msgsSrvTimedFadeEffect_Response

def _write_Ros2Pal_device_msgsSrvTimedFadeEffect_Response(writer, value):
    if type(value) is not Ros2Pal_device_msgsSrvTimedFadeEffect_Response:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.effect_id
    writer.integer(_part0, 4, False)
    if not 4 <= len(writer.data) - _start <= 4:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Pal_device_msgsSrvTimedFadeEffect_Response(reader):
    _start = reader.position
    value = Ros2Pal_device_msgsSrvTimedFadeEffect_Response()
    value.effect_id = reader.integer(4, False)
    if not 4 <= reader.position - _start <= 4:
        raise ValueError('nested complete record aggregate extent')
    return value

