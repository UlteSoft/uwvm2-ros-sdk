# @file bounded_records.py
# @brief Provide the complete pal ros1_humble_devel canonical value surface.
# @details The original 275 record catalog retains field order, constants, defaults and quotas.
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
class Ros1Geometry_msgsVector3:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'geometry_msgs/Vector3'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_e90efcf4803d82763e0b83f8ef5502b5d042158873fcc91be32543d25d7632bc'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 24
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 24
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 24
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    x: _py_float = 0.0
    y: _py_float = 0.0
    z: _py_float = 0.0

    def encode(self):
        writer = _Writer(24)
        _write_Ros1Geometry_msgsVector3(writer, self)
        wire = writer.finish()
        return _wire(wire, 24, 24)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Geometry_msgsVector3:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 24, 24))
        value = _read_Ros1Geometry_msgsVector3(reader)
        reader.end()
        return value

_record_Ros1Geometry_msgsVector3 = Ros1Geometry_msgsVector3

def _write_Ros1Geometry_msgsVector3(writer, value):
    if type(value) is not Ros1Geometry_msgsVector3:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.x
    writer.f64(_part0)
    _part1 = value.y
    writer.f64(_part1)
    _part2 = value.z
    writer.f64(_part2)
    if not 24 <= len(writer.data) - _start <= 24:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Geometry_msgsVector3(reader):
    _start = reader.position
    value = Ros1Geometry_msgsVector3()
    value.x = reader.f64()
    value.y = reader.f64()
    value.z = reader.f64()
    if not 24 <= reader.position - _start <= 24:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Geometry_msgsAccel:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'geometry_msgs/Accel'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_3345762fc354a5698d41098276702c7d3cee87fe9a531b0229111b9b3bf700ed'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 48
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 48
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 48
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    linear: _record_Ros1Geometry_msgsVector3 = _field(default_factory=lambda: Ros1Geometry_msgsVector3())
    angular: _record_Ros1Geometry_msgsVector3 = _field(default_factory=lambda: Ros1Geometry_msgsVector3())

    def encode(self):
        writer = _Writer(48)
        _write_Ros1Geometry_msgsAccel(writer, self)
        wire = writer.finish()
        return _wire(wire, 48, 48)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Geometry_msgsAccel:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 48, 48))
        value = _read_Ros1Geometry_msgsAccel(reader)
        reader.end()
        return value

_record_Ros1Geometry_msgsAccel = Ros1Geometry_msgsAccel

def _write_Ros1Geometry_msgsAccel(writer, value):
    if type(value) is not Ros1Geometry_msgsAccel:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.linear
    _write_Ros1Geometry_msgsVector3(writer, _part0)
    _part1 = value.angular
    _write_Ros1Geometry_msgsVector3(writer, _part1)
    if not 48 <= len(writer.data) - _start <= 48:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Geometry_msgsAccel(reader):
    _start = reader.position
    value = Ros1Geometry_msgsAccel()
    value.linear = _read_Ros1Geometry_msgsVector3(reader)
    value.angular = _read_Ros1Geometry_msgsVector3(reader)
    if not 48 <= reader.position - _start <= 48:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Geometry_msgsPoint:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'geometry_msgs/Point'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 24
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 24
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 24
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    x: _py_float = 0.0
    y: _py_float = 0.0
    z: _py_float = 0.0

    def encode(self):
        writer = _Writer(24)
        _write_Ros1Geometry_msgsPoint(writer, self)
        wire = writer.finish()
        return _wire(wire, 24, 24)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Geometry_msgsPoint:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 24, 24))
        value = _read_Ros1Geometry_msgsPoint(reader)
        reader.end()
        return value

_record_Ros1Geometry_msgsPoint = Ros1Geometry_msgsPoint

def _write_Ros1Geometry_msgsPoint(writer, value):
    if type(value) is not Ros1Geometry_msgsPoint:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.x
    writer.f64(_part0)
    _part1 = value.y
    writer.f64(_part1)
    _part2 = value.z
    writer.f64(_part2)
    if not 24 <= len(writer.data) - _start <= 24:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Geometry_msgsPoint(reader):
    _start = reader.position
    value = Ros1Geometry_msgsPoint()
    value.x = reader.f64()
    value.y = reader.f64()
    value.z = reader.f64()
    if not 24 <= reader.position - _start <= 24:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Geometry_msgsPoint32:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'geometry_msgs/Point32'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_ac11d311f1db295f3e53b300246dbb111148097fe50787e812cd1bf627ecc59d'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 12
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 12
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    x: _py_float = 0.0
    y: _py_float = 0.0
    z: _py_float = 0.0

    def encode(self):
        writer = _Writer(12)
        _write_Ros1Geometry_msgsPoint32(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 12)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Geometry_msgsPoint32:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 12, 12))
        value = _read_Ros1Geometry_msgsPoint32(reader)
        reader.end()
        return value

_record_Ros1Geometry_msgsPoint32 = Ros1Geometry_msgsPoint32

def _write_Ros1Geometry_msgsPoint32(writer, value):
    if type(value) is not Ros1Geometry_msgsPoint32:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.x
    writer.f32(_part0)
    _part1 = value.y
    writer.f32(_part1)
    _part2 = value.z
    writer.f32(_part2)
    if not 12 <= len(writer.data) - _start <= 12:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Geometry_msgsPoint32(reader):
    _start = reader.position
    value = Ros1Geometry_msgsPoint32()
    value.x = reader.f32()
    value.y = reader.f32()
    value.z = reader.f32()
    if not 12 <= reader.position - _start <= 12:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Time:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'time'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    sec: _py_int = 0
    nsec: _py_int = 0

    def encode(self):
        writer = _Writer(8)
        _write_Ros1Time(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 8)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Time:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 8))
        value = _read_Ros1Time(reader)
        reader.end()
        return value

_record_Ros1Time = Ros1Time

def _write_Ros1Time(writer, value):
    if type(value) is not Ros1Time:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.sec
    writer.integer(_part0, 4, False)
    _part1 = value.nsec
    writer.integer(_part1, 4, False)
    if not 0 <= _part1 < 1000000000:
        raise ValueError('normalized subsecond field required')
    if not 8 <= len(writer.data) - _start <= 8:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Time(reader):
    _start = reader.position
    value = Ros1Time()
    value.sec = reader.integer(4, False)
    value.nsec = reader.integer(4, False)
    if not 0 <= value.nsec < 1000000000:
        raise ValueError('normalized subsecond field required')
    if not 8 <= reader.position - _start <= 8:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Std_msgsHeader:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'std_msgs/Header'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 16
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 144
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 144
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    seq: _py_int = 0
    stamp: _record_Ros1Time = _field(default_factory=lambda: Ros1Time())
    frame_id: _py_str = ''

    def encode(self):
        writer = _Writer(144)
        _write_Ros1Std_msgsHeader(writer, self)
        wire = writer.finish()
        return _wire(wire, 16, 144)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Std_msgsHeader:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 16, 144))
        value = _read_Ros1Std_msgsHeader(reader)
        reader.end()
        return value

_record_Ros1Std_msgsHeader = Ros1Std_msgsHeader

def _write_Ros1Std_msgsHeader(writer, value):
    if type(value) is not Ros1Std_msgsHeader:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.seq
    writer.integer(_part0, 4, False)
    _part1 = value.stamp
    _write_Ros1Time(writer, _part1)
    _part2 = value.frame_id
    _write_text(writer, _part2, 128)
    if not 16 <= len(writer.data) - _start <= 144:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Std_msgsHeader(reader):
    _start = reader.position
    value = Ros1Std_msgsHeader()
    value.seq = reader.integer(4, False)
    value.stamp = _read_Ros1Time(reader)
    value.frame_id = _read_text(reader, 128)
    if not 16 <= reader.position - _start <= 144:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Geometry_msgsPointStamped:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'geometry_msgs/PointStamped'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_4292765fd525ff25fcdf66cba24b1680e01d7a3f036f66a1d5bc21f5db935e90'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 40
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 168
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 168
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros1Std_msgsHeader = _field(default_factory=lambda: Ros1Std_msgsHeader())
    point: _record_Ros1Geometry_msgsPoint = _field(default_factory=lambda: Ros1Geometry_msgsPoint())

    def encode(self):
        writer = _Writer(168)
        _write_Ros1Geometry_msgsPointStamped(writer, self)
        wire = writer.finish()
        return _wire(wire, 40, 168)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Geometry_msgsPointStamped:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 40, 168))
        value = _read_Ros1Geometry_msgsPointStamped(reader)
        reader.end()
        return value

_record_Ros1Geometry_msgsPointStamped = Ros1Geometry_msgsPointStamped

def _write_Ros1Geometry_msgsPointStamped(writer, value):
    if type(value) is not Ros1Geometry_msgsPointStamped:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros1Std_msgsHeader(writer, _part0)
    _part1 = value.point
    _write_Ros1Geometry_msgsPoint(writer, _part1)
    if not 40 <= len(writer.data) - _start <= 168:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Geometry_msgsPointStamped(reader):
    _start = reader.position
    value = Ros1Geometry_msgsPointStamped()
    value.header = _read_Ros1Std_msgsHeader(reader)
    value.point = _read_Ros1Geometry_msgsPoint(reader)
    if not 40 <= reader.position - _start <= 168:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Geometry_msgsQuaternion:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'geometry_msgs/Quaternion'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 32
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 32
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 32
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    x: _py_float = 0.0
    y: _py_float = 0.0
    z: _py_float = 0.0
    w: _py_float = 0.0

    def encode(self):
        writer = _Writer(32)
        _write_Ros1Geometry_msgsQuaternion(writer, self)
        wire = writer.finish()
        return _wire(wire, 32, 32)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Geometry_msgsQuaternion:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 32, 32))
        value = _read_Ros1Geometry_msgsQuaternion(reader)
        reader.end()
        return value

_record_Ros1Geometry_msgsQuaternion = Ros1Geometry_msgsQuaternion

def _write_Ros1Geometry_msgsQuaternion(writer, value):
    if type(value) is not Ros1Geometry_msgsQuaternion:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.x
    writer.f64(_part0)
    _part1 = value.y
    writer.f64(_part1)
    _part2 = value.z
    writer.f64(_part2)
    _part3 = value.w
    writer.f64(_part3)
    if not 32 <= len(writer.data) - _start <= 32:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Geometry_msgsQuaternion(reader):
    _start = reader.position
    value = Ros1Geometry_msgsQuaternion()
    value.x = reader.f64()
    value.y = reader.f64()
    value.z = reader.f64()
    value.w = reader.f64()
    if not 32 <= reader.position - _start <= 32:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Geometry_msgsPose:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'geometry_msgs/Pose'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 56
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 56
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 56
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    position: _record_Ros1Geometry_msgsPoint = _field(default_factory=lambda: Ros1Geometry_msgsPoint())
    orientation: _record_Ros1Geometry_msgsQuaternion = _field(default_factory=lambda: Ros1Geometry_msgsQuaternion())

    def encode(self):
        writer = _Writer(56)
        _write_Ros1Geometry_msgsPose(writer, self)
        wire = writer.finish()
        return _wire(wire, 56, 56)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Geometry_msgsPose:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 56, 56))
        value = _read_Ros1Geometry_msgsPose(reader)
        reader.end()
        return value

_record_Ros1Geometry_msgsPose = Ros1Geometry_msgsPose

def _write_Ros1Geometry_msgsPose(writer, value):
    if type(value) is not Ros1Geometry_msgsPose:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.position
    _write_Ros1Geometry_msgsPoint(writer, _part0)
    _part1 = value.orientation
    _write_Ros1Geometry_msgsQuaternion(writer, _part1)
    if not 56 <= len(writer.data) - _start <= 56:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Geometry_msgsPose(reader):
    _start = reader.position
    value = Ros1Geometry_msgsPose()
    value.position = _read_Ros1Geometry_msgsPoint(reader)
    value.orientation = _read_Ros1Geometry_msgsQuaternion(reader)
    if not 56 <= reader.position - _start <= 56:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Geometry_msgsPose2D:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'geometry_msgs/Pose2D'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_272e907f7422675f272752642d2421c870d46b48b101f1fc6dec5e9ea70b8b0f'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 24
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 24
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 24
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    x: _py_float = 0.0
    y: _py_float = 0.0
    theta: _py_float = 0.0

    def encode(self):
        writer = _Writer(24)
        _write_Ros1Geometry_msgsPose2D(writer, self)
        wire = writer.finish()
        return _wire(wire, 24, 24)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Geometry_msgsPose2D:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 24, 24))
        value = _read_Ros1Geometry_msgsPose2D(reader)
        reader.end()
        return value

_record_Ros1Geometry_msgsPose2D = Ros1Geometry_msgsPose2D

def _write_Ros1Geometry_msgsPose2D(writer, value):
    if type(value) is not Ros1Geometry_msgsPose2D:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.x
    writer.f64(_part0)
    _part1 = value.y
    writer.f64(_part1)
    _part2 = value.theta
    writer.f64(_part2)
    if not 24 <= len(writer.data) - _start <= 24:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Geometry_msgsPose2D(reader):
    _start = reader.position
    value = Ros1Geometry_msgsPose2D()
    value.x = reader.f64()
    value.y = reader.f64()
    value.theta = reader.f64()
    if not 24 <= reader.position - _start <= 24:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Geometry_msgsPoseArray:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'geometry_msgs/PoseArray'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_cc369b2d02464c719f6c9c6eb8f4e328e7623ddd455372cea2085f44bb782900'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 20
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 372
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 372
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros1Std_msgsHeader = _field(default_factory=lambda: Ros1Std_msgsHeader())
    poses: _py_list[_record_Ros1Geometry_msgsPose] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(372)
        _write_Ros1Geometry_msgsPoseArray(writer, self)
        wire = writer.finish()
        return _wire(wire, 20, 372)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Geometry_msgsPoseArray:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 20, 372))
        value = _read_Ros1Geometry_msgsPoseArray(reader)
        reader.end()
        return value

_record_Ros1Geometry_msgsPoseArray = Ros1Geometry_msgsPoseArray

def _write_Ros1Geometry_msgsPoseArray(writer, value):
    if type(value) is not Ros1Geometry_msgsPoseArray:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros1Std_msgsHeader(writer, _part0)
    _part1 = value.poses
    if type(_part1) not in (list, tuple):
        raise TypeError('array value required')
    _count1 = len(_part1)
    if _count1 > 4:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        _write_Ros1Geometry_msgsPose(writer, _element)
    if not 20 <= len(writer.data) - _start <= 372:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Geometry_msgsPoseArray(reader):
    _start = reader.position
    value = Ros1Geometry_msgsPoseArray()
    value.header = _read_Ros1Std_msgsHeader(reader)
    value.poses = [_read_Ros1Geometry_msgsPose(reader) for _ in range(_read_count(reader, 4, 56))]
    if not 20 <= reader.position - _start <= 372:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Geometry_msgsPoseStamped:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'geometry_msgs/PoseStamped'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_bb59c4e82f561266c0f10500bfbbd1a809e9c1122ecbf559a812326af3eb2e95'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 72
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 200
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 200
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros1Std_msgsHeader = _field(default_factory=lambda: Ros1Std_msgsHeader())
    pose: _record_Ros1Geometry_msgsPose = _field(default_factory=lambda: Ros1Geometry_msgsPose())

    def encode(self):
        writer = _Writer(200)
        _write_Ros1Geometry_msgsPoseStamped(writer, self)
        wire = writer.finish()
        return _wire(wire, 72, 200)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Geometry_msgsPoseStamped:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 72, 200))
        value = _read_Ros1Geometry_msgsPoseStamped(reader)
        reader.end()
        return value

_record_Ros1Geometry_msgsPoseStamped = Ros1Geometry_msgsPoseStamped

def _write_Ros1Geometry_msgsPoseStamped(writer, value):
    if type(value) is not Ros1Geometry_msgsPoseStamped:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros1Std_msgsHeader(writer, _part0)
    _part1 = value.pose
    _write_Ros1Geometry_msgsPose(writer, _part1)
    if not 72 <= len(writer.data) - _start <= 200:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Geometry_msgsPoseStamped(reader):
    _start = reader.position
    value = Ros1Geometry_msgsPoseStamped()
    value.header = _read_Ros1Std_msgsHeader(reader)
    value.pose = _read_Ros1Geometry_msgsPose(reader)
    if not 72 <= reader.position - _start <= 200:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Geometry_msgsPoseWithCovariance:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'geometry_msgs/PoseWithCovariance'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_17b25963aafb3adfd0432febe040c9b38a531a7a667949b89e0f3937585ef8cf'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 344
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 344
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 344
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    pose: _record_Ros1Geometry_msgsPose = _field(default_factory=lambda: Ros1Geometry_msgsPose())
    covariance: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(36)])

    def encode(self):
        writer = _Writer(344)
        _write_Ros1Geometry_msgsPoseWithCovariance(writer, self)
        wire = writer.finish()
        return _wire(wire, 344, 344)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Geometry_msgsPoseWithCovariance:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 344, 344))
        value = _read_Ros1Geometry_msgsPoseWithCovariance(reader)
        reader.end()
        return value

_record_Ros1Geometry_msgsPoseWithCovariance = Ros1Geometry_msgsPoseWithCovariance

def _write_Ros1Geometry_msgsPoseWithCovariance(writer, value):
    if type(value) is not Ros1Geometry_msgsPoseWithCovariance:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.pose
    _write_Ros1Geometry_msgsPose(writer, _part0)
    _part1 = value.covariance
    if type(_part1) not in (list, tuple):
        raise TypeError('array value required')
    _count1 = len(_part1)
    if _count1 != 36:
        raise ValueError('fixed/sequence count bound')
    for _index in range(_count1):
        _element = _part1[_index]
        writer.f64(_element)
    if not 344 <= len(writer.data) - _start <= 344:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Geometry_msgsPoseWithCovariance(reader):
    _start = reader.position
    value = Ros1Geometry_msgsPoseWithCovariance()
    value.pose = _read_Ros1Geometry_msgsPose(reader)
    value.covariance = [reader.f64() for _ in range(36)]
    if not 344 <= reader.position - _start <= 344:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Geometry_msgsPoseWithCovarianceStamped:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'geometry_msgs/PoseWithCovarianceStamped'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_6708292fe381a7f14aaf84f47a969f55af7446087bfcb309d3b86ab95f34a2d9'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 360
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 488
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 488
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros1Std_msgsHeader = _field(default_factory=lambda: Ros1Std_msgsHeader())
    pose: _record_Ros1Geometry_msgsPoseWithCovariance = _field(default_factory=lambda: Ros1Geometry_msgsPoseWithCovariance())

    def encode(self):
        writer = _Writer(488)
        _write_Ros1Geometry_msgsPoseWithCovarianceStamped(writer, self)
        wire = writer.finish()
        return _wire(wire, 360, 488)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Geometry_msgsPoseWithCovarianceStamped:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 360, 488))
        value = _read_Ros1Geometry_msgsPoseWithCovarianceStamped(reader)
        reader.end()
        return value

_record_Ros1Geometry_msgsPoseWithCovarianceStamped = Ros1Geometry_msgsPoseWithCovarianceStamped

def _write_Ros1Geometry_msgsPoseWithCovarianceStamped(writer, value):
    if type(value) is not Ros1Geometry_msgsPoseWithCovarianceStamped:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros1Std_msgsHeader(writer, _part0)
    _part1 = value.pose
    _write_Ros1Geometry_msgsPoseWithCovariance(writer, _part1)
    if not 360 <= len(writer.data) - _start <= 488:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Geometry_msgsPoseWithCovarianceStamped(reader):
    _start = reader.position
    value = Ros1Geometry_msgsPoseWithCovarianceStamped()
    value.header = _read_Ros1Std_msgsHeader(reader)
    value.pose = _read_Ros1Geometry_msgsPoseWithCovariance(reader)
    if not 360 <= reader.position - _start <= 488:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Geometry_msgsTransform:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'geometry_msgs/Transform'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_61aabab03e8f766ea05949c9e5f4989186d72a26f793b8d11752e53f1f300085'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 56
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 56
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 56
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    translation: _record_Ros1Geometry_msgsVector3 = _field(default_factory=lambda: Ros1Geometry_msgsVector3())
    rotation: _record_Ros1Geometry_msgsQuaternion = _field(default_factory=lambda: Ros1Geometry_msgsQuaternion())

    def encode(self):
        writer = _Writer(56)
        _write_Ros1Geometry_msgsTransform(writer, self)
        wire = writer.finish()
        return _wire(wire, 56, 56)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Geometry_msgsTransform:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 56, 56))
        value = _read_Ros1Geometry_msgsTransform(reader)
        reader.end()
        return value

_record_Ros1Geometry_msgsTransform = Ros1Geometry_msgsTransform

def _write_Ros1Geometry_msgsTransform(writer, value):
    if type(value) is not Ros1Geometry_msgsTransform:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.translation
    _write_Ros1Geometry_msgsVector3(writer, _part0)
    _part1 = value.rotation
    _write_Ros1Geometry_msgsQuaternion(writer, _part1)
    if not 56 <= len(writer.data) - _start <= 56:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Geometry_msgsTransform(reader):
    _start = reader.position
    value = Ros1Geometry_msgsTransform()
    value.translation = _read_Ros1Geometry_msgsVector3(reader)
    value.rotation = _read_Ros1Geometry_msgsQuaternion(reader)
    if not 56 <= reader.position - _start <= 56:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Geometry_msgsTransformStamped:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'geometry_msgs/TransformStamped'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_f4e1d7f868984da7e3717192245f9adf2cc18c76bebaac6357ae2ed30b5b132c'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 76
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 332
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 332
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros1Std_msgsHeader = _field(default_factory=lambda: Ros1Std_msgsHeader())
    child_frame_id: _py_str = ''
    transform: _record_Ros1Geometry_msgsTransform = _field(default_factory=lambda: Ros1Geometry_msgsTransform())

    def encode(self):
        writer = _Writer(332)
        _write_Ros1Geometry_msgsTransformStamped(writer, self)
        wire = writer.finish()
        return _wire(wire, 76, 332)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Geometry_msgsTransformStamped:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 76, 332))
        value = _read_Ros1Geometry_msgsTransformStamped(reader)
        reader.end()
        return value

_record_Ros1Geometry_msgsTransformStamped = Ros1Geometry_msgsTransformStamped

def _write_Ros1Geometry_msgsTransformStamped(writer, value):
    if type(value) is not Ros1Geometry_msgsTransformStamped:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros1Std_msgsHeader(writer, _part0)
    _part1 = value.child_frame_id
    _write_text(writer, _part1, 128)
    _part2 = value.transform
    _write_Ros1Geometry_msgsTransform(writer, _part2)
    if not 76 <= len(writer.data) - _start <= 332:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Geometry_msgsTransformStamped(reader):
    _start = reader.position
    value = Ros1Geometry_msgsTransformStamped()
    value.header = _read_Ros1Std_msgsHeader(reader)
    value.child_frame_id = _read_text(reader, 128)
    value.transform = _read_Ros1Geometry_msgsTransform(reader)
    if not 76 <= reader.position - _start <= 332:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Geometry_msgsTwist:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'geometry_msgs/Twist'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_d5a69cfff4380fcf3e9c131ddb3dfb6def041cd7308a7ebdbc150b6483dfd921'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 48
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 48
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 48
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    linear: _record_Ros1Geometry_msgsVector3 = _field(default_factory=lambda: Ros1Geometry_msgsVector3())
    angular: _record_Ros1Geometry_msgsVector3 = _field(default_factory=lambda: Ros1Geometry_msgsVector3())

    def encode(self):
        writer = _Writer(48)
        _write_Ros1Geometry_msgsTwist(writer, self)
        wire = writer.finish()
        return _wire(wire, 48, 48)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Geometry_msgsTwist:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 48, 48))
        value = _read_Ros1Geometry_msgsTwist(reader)
        reader.end()
        return value

_record_Ros1Geometry_msgsTwist = Ros1Geometry_msgsTwist

def _write_Ros1Geometry_msgsTwist(writer, value):
    if type(value) is not Ros1Geometry_msgsTwist:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.linear
    _write_Ros1Geometry_msgsVector3(writer, _part0)
    _part1 = value.angular
    _write_Ros1Geometry_msgsVector3(writer, _part1)
    if not 48 <= len(writer.data) - _start <= 48:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Geometry_msgsTwist(reader):
    _start = reader.position
    value = Ros1Geometry_msgsTwist()
    value.linear = _read_Ros1Geometry_msgsVector3(reader)
    value.angular = _read_Ros1Geometry_msgsVector3(reader)
    if not 48 <= reader.position - _start <= 48:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Geometry_msgsWrench:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'geometry_msgs/Wrench'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_b0938c4e084df68cf7c46445070ac3e9305d06f678275845aec6055db77617c3'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 48
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 48
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 48
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    force: _record_Ros1Geometry_msgsVector3 = _field(default_factory=lambda: Ros1Geometry_msgsVector3())
    torque: _record_Ros1Geometry_msgsVector3 = _field(default_factory=lambda: Ros1Geometry_msgsVector3())

    def encode(self):
        writer = _Writer(48)
        _write_Ros1Geometry_msgsWrench(writer, self)
        wire = writer.finish()
        return _wire(wire, 48, 48)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Geometry_msgsWrench:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 48, 48))
        value = _read_Ros1Geometry_msgsWrench(reader)
        reader.end()
        return value

_record_Ros1Geometry_msgsWrench = Ros1Geometry_msgsWrench

def _write_Ros1Geometry_msgsWrench(writer, value):
    if type(value) is not Ros1Geometry_msgsWrench:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.force
    _write_Ros1Geometry_msgsVector3(writer, _part0)
    _part1 = value.torque
    _write_Ros1Geometry_msgsVector3(writer, _part1)
    if not 48 <= len(writer.data) - _start <= 48:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Geometry_msgsWrench(reader):
    _start = reader.position
    value = Ros1Geometry_msgsWrench()
    value.force = _read_Ros1Geometry_msgsVector3(reader)
    value.torque = _read_Ros1Geometry_msgsVector3(reader)
    if not 48 <= reader.position - _start <= 48:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Humanoid_nav_msgsStepTarget:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'humanoid_nav_msgs/StepTarget'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_569ffb799d7e55047bf9191eee9af61296726974e01efa8e3b59be779f25c0e6'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 25
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 25
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 25
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = [{'name': 'right', 'type': 'uint8', 'native_type': 'uint8', 'literal': '0', 'value': '0'},
     {'name': 'left', 'type': 'uint8', 'native_type': 'uint8', 'literal': '1', 'value': '1'}]
    right: _ClassVar = 0
    left: _ClassVar = 1
    pose: _record_Ros1Geometry_msgsPose2D = _field(default_factory=lambda: Ros1Geometry_msgsPose2D())
    leg: _py_int = 0

    def encode(self):
        writer = _Writer(25)
        _write_Ros1Humanoid_nav_msgsStepTarget(writer, self)
        wire = writer.finish()
        return _wire(wire, 25, 25)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Humanoid_nav_msgsStepTarget:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 25, 25))
        value = _read_Ros1Humanoid_nav_msgsStepTarget(reader)
        reader.end()
        return value

_record_Ros1Humanoid_nav_msgsStepTarget = Ros1Humanoid_nav_msgsStepTarget

def _write_Ros1Humanoid_nav_msgsStepTarget(writer, value):
    if type(value) is not Ros1Humanoid_nav_msgsStepTarget:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.pose
    _write_Ros1Geometry_msgsPose2D(writer, _part0)
    _part1 = value.leg
    writer.integer(_part1, 1, False)
    if not 25 <= len(writer.data) - _start <= 25:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Humanoid_nav_msgsStepTarget(reader):
    _start = reader.position
    value = Ros1Humanoid_nav_msgsStepTarget()
    value.pose = _read_Ros1Geometry_msgsPose2D(reader)
    value.leg = reader.integer(1, False)
    if not 25 <= reader.position - _start <= 25:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Nav_msgsMapMetaData:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'nav_msgs/MapMetaData'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_2bd90889cc46f8b6669b9bdbdd911747e873c2e3fb948cd3c94a1add8c4555ec'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 76
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 76
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 76
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    map_load_time: _record_Ros1Time = _field(default_factory=lambda: Ros1Time())
    resolution: _py_float = 0.0
    width: _py_int = 0
    height: _py_int = 0
    origin: _record_Ros1Geometry_msgsPose = _field(default_factory=lambda: Ros1Geometry_msgsPose())

    def encode(self):
        writer = _Writer(76)
        _write_Ros1Nav_msgsMapMetaData(writer, self)
        wire = writer.finish()
        return _wire(wire, 76, 76)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Nav_msgsMapMetaData:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 76, 76))
        value = _read_Ros1Nav_msgsMapMetaData(reader)
        reader.end()
        return value

_record_Ros1Nav_msgsMapMetaData = Ros1Nav_msgsMapMetaData

def _write_Ros1Nav_msgsMapMetaData(writer, value):
    if type(value) is not Ros1Nav_msgsMapMetaData:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.map_load_time
    _write_Ros1Time(writer, _part0)
    _part1 = value.resolution
    writer.f32(_part1)
    _part2 = value.width
    writer.integer(_part2, 4, False)
    _part3 = value.height
    writer.integer(_part3, 4, False)
    _part4 = value.origin
    _write_Ros1Geometry_msgsPose(writer, _part4)
    if not 76 <= len(writer.data) - _start <= 76:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Nav_msgsMapMetaData(reader):
    _start = reader.position
    value = Ros1Nav_msgsMapMetaData()
    value.map_load_time = _read_Ros1Time(reader)
    value.resolution = reader.f32()
    value.width = reader.integer(4, False)
    value.height = reader.integer(4, False)
    value.origin = _read_Ros1Geometry_msgsPose(reader)
    if not 76 <= reader.position - _start <= 76:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Nav_msgsOccupancyGrid:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'nav_msgs/OccupancyGrid'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_01c46df6fd069eca1664115a5bfaefa2497f0b44b1c0b11b6f293cb56b0c837d'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 96
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 480
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 480
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros1Std_msgsHeader = _field(default_factory=lambda: Ros1Std_msgsHeader())
    info: _record_Ros1Nav_msgsMapMetaData = _field(default_factory=lambda: Ros1Nav_msgsMapMetaData())
    data: _py_list[_py_int] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(480)
        _write_Ros1Nav_msgsOccupancyGrid(writer, self)
        wire = writer.finish()
        return _wire(wire, 96, 480)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Nav_msgsOccupancyGrid:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 96, 480))
        value = _read_Ros1Nav_msgsOccupancyGrid(reader)
        reader.end()
        return value

_record_Ros1Nav_msgsOccupancyGrid = Ros1Nav_msgsOccupancyGrid

def _write_Ros1Nav_msgsOccupancyGrid(writer, value):
    if type(value) is not Ros1Nav_msgsOccupancyGrid:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros1Std_msgsHeader(writer, _part0)
    _part1 = value.info
    _write_Ros1Nav_msgsMapMetaData(writer, _part1)
    _part2 = value.data
    if type(_part2) not in (list, tuple):
        raise TypeError('array value required')
    _count2 = len(_part2)
    if _count2 > 256:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        writer.integer(_element, 1, True)
    if not 96 <= len(writer.data) - _start <= 480:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Nav_msgsOccupancyGrid(reader):
    _start = reader.position
    value = Ros1Nav_msgsOccupancyGrid()
    value.header = _read_Ros1Std_msgsHeader(reader)
    value.info = _read_Ros1Nav_msgsMapMetaData(reader)
    value.data = [reader.integer(1, True) for _ in range(_read_count(reader, 256, 1))]
    if not 96 <= reader.position - _start <= 480:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_behaviour_msgsBehaviourArgument:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_behaviour_msgs/BehaviourArgument'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_024bb88cf3b278e19491258b73c01eca83b0ccfd9381e96b9bb5733227bc4bc0'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 264
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 264
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    key: _py_str = ''
    value: _py_str = ''

    def encode(self):
        writer = _Writer(264)
        _write_Ros1Pal_behaviour_msgsBehaviourArgument(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 264)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_behaviour_msgsBehaviourArgument:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 264))
        value = _read_Ros1Pal_behaviour_msgsBehaviourArgument(reader)
        reader.end()
        return value

_record_Ros1Pal_behaviour_msgsBehaviourArgument = Ros1Pal_behaviour_msgsBehaviourArgument

def _write_Ros1Pal_behaviour_msgsBehaviourArgument(writer, value):
    if type(value) is not Ros1Pal_behaviour_msgsBehaviourArgument:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.key
    _write_text(writer, _part0, 128)
    _part1 = value.value
    _write_text(writer, _part1, 128)
    if not 8 <= len(writer.data) - _start <= 264:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_behaviour_msgsBehaviourArgument(reader):
    _start = reader.position
    value = Ros1Pal_behaviour_msgsBehaviourArgument()
    value.key = _read_text(reader, 128)
    value.value = _read_text(reader, 128)
    if not 8 <= reader.position - _start <= 264:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_behaviour_msgsBehaviourEventRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_behaviour_msgs/BehaviourEventRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_048535054a3fb576c8101615baffb84809d2e09e6570527a185e54b54460374c'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1192
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1192
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    name: _py_str = ''
    arguments: _py_list[_record_Ros1Pal_behaviour_msgsBehaviourArgument] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(1192)
        _write_Ros1Pal_behaviour_msgsBehaviourEventRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 1192)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_behaviour_msgsBehaviourEventRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 1192))
        value = _read_Ros1Pal_behaviour_msgsBehaviourEventRequest(reader)
        reader.end()
        return value

_record_Ros1Pal_behaviour_msgsBehaviourEventRequest = Ros1Pal_behaviour_msgsBehaviourEventRequest

def _write_Ros1Pal_behaviour_msgsBehaviourEventRequest(writer, value):
    if type(value) is not Ros1Pal_behaviour_msgsBehaviourEventRequest:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.name
    _write_text(writer, _part0, 128)
    _part1 = value.arguments
    if type(_part1) not in (list, tuple):
        raise TypeError('array value required')
    _count1 = len(_part1)
    if _count1 > 4:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        _write_Ros1Pal_behaviour_msgsBehaviourArgument(writer, _element)
    if not 8 <= len(writer.data) - _start <= 1192:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_behaviour_msgsBehaviourEventRequest(reader):
    _start = reader.position
    value = Ros1Pal_behaviour_msgsBehaviourEventRequest()
    value.name = _read_text(reader, 128)
    value.arguments = [_read_Ros1Pal_behaviour_msgsBehaviourArgument(reader) for _ in range(_read_count(reader, 4, 8))]
    if not 8 <= reader.position - _start <= 1192:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_behaviour_msgsBehaviourEventResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_behaviour_msgs/BehaviourEventResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_5d4451abae7cf7d65e7385b4e447df7f991644aa8763758b129e5df6920ba1fd'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 132
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 132
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    response: _py_str = ''

    def encode(self):
        writer = _Writer(132)
        _write_Ros1Pal_behaviour_msgsBehaviourEventResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 132)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_behaviour_msgsBehaviourEventResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 4, 132))
        value = _read_Ros1Pal_behaviour_msgsBehaviourEventResponse(reader)
        reader.end()
        return value

_record_Ros1Pal_behaviour_msgsBehaviourEventResponse = Ros1Pal_behaviour_msgsBehaviourEventResponse

def _write_Ros1Pal_behaviour_msgsBehaviourEventResponse(writer, value):
    if type(value) is not Ros1Pal_behaviour_msgsBehaviourEventResponse:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.response
    _write_text(writer, _part0, 128)
    if not 4 <= len(writer.data) - _start <= 132:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_behaviour_msgsBehaviourEventResponse(reader):
    _start = reader.position
    value = Ros1Pal_behaviour_msgsBehaviourEventResponse()
    value.response = _read_text(reader, 128)
    if not 4 <= reader.position - _start <= 132:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_behaviour_msgsBehaviourTaskGoal:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_behaviour_msgs/BehaviourTaskGoal'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_298df310a5cc1085df5355d10a2ecd627415e85f1399f52eaba19a3e16f2389f'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1192
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1192
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    taskName: _py_str = ''
    arguments: _py_list[_record_Ros1Pal_behaviour_msgsBehaviourArgument] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(1192)
        _write_Ros1Pal_behaviour_msgsBehaviourTaskGoal(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 1192)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_behaviour_msgsBehaviourTaskGoal:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 1192))
        value = _read_Ros1Pal_behaviour_msgsBehaviourTaskGoal(reader)
        reader.end()
        return value

_record_Ros1Pal_behaviour_msgsBehaviourTaskGoal = Ros1Pal_behaviour_msgsBehaviourTaskGoal

def _write_Ros1Pal_behaviour_msgsBehaviourTaskGoal(writer, value):
    if type(value) is not Ros1Pal_behaviour_msgsBehaviourTaskGoal:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.taskName
    _write_text(writer, _part0, 128)
    _part1 = value.arguments
    if type(_part1) not in (list, tuple):
        raise TypeError('array value required')
    _count1 = len(_part1)
    if _count1 > 4:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        _write_Ros1Pal_behaviour_msgsBehaviourArgument(writer, _element)
    if not 8 <= len(writer.data) - _start <= 1192:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_behaviour_msgsBehaviourTaskGoal(reader):
    _start = reader.position
    value = Ros1Pal_behaviour_msgsBehaviourTaskGoal()
    value.taskName = _read_text(reader, 128)
    value.arguments = [_read_Ros1Pal_behaviour_msgsBehaviourArgument(reader) for _ in range(_read_count(reader, 4, 8))]
    if not 8 <= reader.position - _start <= 1192:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_behaviour_msgsBehaviourTaskResult:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_behaviour_msgs/BehaviourTaskResult'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_e18dbdb679b8d00ba9ba5f72201ccf93eec866891009b3639f0892c64da18491'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Pal_behaviour_msgsBehaviourTaskResult(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_behaviour_msgsBehaviourTaskResult:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Pal_behaviour_msgsBehaviourTaskResult(reader)
        reader.end()
        return value

_record_Ros1Pal_behaviour_msgsBehaviourTaskResult = Ros1Pal_behaviour_msgsBehaviourTaskResult

def _write_Ros1Pal_behaviour_msgsBehaviourTaskResult(writer, value):
    if type(value) is not Ros1Pal_behaviour_msgsBehaviourTaskResult:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros1Pal_behaviour_msgsBehaviourTaskResult(reader):
    _start = reader.position
    value = Ros1Pal_behaviour_msgsBehaviourTaskResult()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_behaviour_msgsBehaviourTaskFeedback:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_behaviour_msgs/BehaviourTaskFeedback'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_4270594f10120216110afd3b219cec42018a71cc751bf09a379e608ce99b1752'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Pal_behaviour_msgsBehaviourTaskFeedback(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_behaviour_msgsBehaviourTaskFeedback:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Pal_behaviour_msgsBehaviourTaskFeedback(reader)
        reader.end()
        return value

_record_Ros1Pal_behaviour_msgsBehaviourTaskFeedback = Ros1Pal_behaviour_msgsBehaviourTaskFeedback

def _write_Ros1Pal_behaviour_msgsBehaviourTaskFeedback(writer, value):
    if type(value) is not Ros1Pal_behaviour_msgsBehaviourTaskFeedback:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros1Pal_behaviour_msgsBehaviourTaskFeedback(reader):
    _start = reader.position
    value = Ros1Pal_behaviour_msgsBehaviourTaskFeedback()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_behaviour_msgsPresentationGoal:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_behaviour_msgs/PresentationGoal'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_f63991747249e4417a36723dcfe3620fb3efc20784b6a60334f46b3476c76b96'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 132
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 132
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    presentationFile: _py_str = ''

    def encode(self):
        writer = _Writer(132)
        _write_Ros1Pal_behaviour_msgsPresentationGoal(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 132)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_behaviour_msgsPresentationGoal:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 4, 132))
        value = _read_Ros1Pal_behaviour_msgsPresentationGoal(reader)
        reader.end()
        return value

_record_Ros1Pal_behaviour_msgsPresentationGoal = Ros1Pal_behaviour_msgsPresentationGoal

def _write_Ros1Pal_behaviour_msgsPresentationGoal(writer, value):
    if type(value) is not Ros1Pal_behaviour_msgsPresentationGoal:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.presentationFile
    _write_text(writer, _part0, 128)
    if not 4 <= len(writer.data) - _start <= 132:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_behaviour_msgsPresentationGoal(reader):
    _start = reader.position
    value = Ros1Pal_behaviour_msgsPresentationGoal()
    value.presentationFile = _read_text(reader, 128)
    if not 4 <= reader.position - _start <= 132:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_behaviour_msgsPresentationResult:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_behaviour_msgs/PresentationResult'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_416d43dac88c97f0b25fb206e5529d660fbadb5c8bf98c78190616eaae7c8c41'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Pal_behaviour_msgsPresentationResult(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_behaviour_msgsPresentationResult:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Pal_behaviour_msgsPresentationResult(reader)
        reader.end()
        return value

_record_Ros1Pal_behaviour_msgsPresentationResult = Ros1Pal_behaviour_msgsPresentationResult

def _write_Ros1Pal_behaviour_msgsPresentationResult(writer, value):
    if type(value) is not Ros1Pal_behaviour_msgsPresentationResult:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros1Pal_behaviour_msgsPresentationResult(reader):
    _start = reader.position
    value = Ros1Pal_behaviour_msgsPresentationResult()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_behaviour_msgsPresentationFeedback:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_behaviour_msgs/PresentationFeedback'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_a80db9d9290af9c76e0d611c42e60939bcfc26897ba56efb2cefd5df072f5970'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Pal_behaviour_msgsPresentationFeedback(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_behaviour_msgsPresentationFeedback:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Pal_behaviour_msgsPresentationFeedback(reader)
        reader.end()
        return value

_record_Ros1Pal_behaviour_msgsPresentationFeedback = Ros1Pal_behaviour_msgsPresentationFeedback

def _write_Ros1Pal_behaviour_msgsPresentationFeedback(writer, value):
    if type(value) is not Ros1Pal_behaviour_msgsPresentationFeedback:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros1Pal_behaviour_msgsPresentationFeedback(reader):
    _start = reader.position
    value = Ros1Pal_behaviour_msgsPresentationFeedback()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_common_msgsDisableGoal:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_common_msgs/DisableGoal'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_7b506fba552b6058cfbd7275e45a82399b686d73dc891bfee6dc506a02f1db3a'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 4
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 4
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    duration: _py_float = 0.0

    def encode(self):
        writer = _Writer(4)
        _write_Ros1Pal_common_msgsDisableGoal(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 4)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_common_msgsDisableGoal:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 4, 4))
        value = _read_Ros1Pal_common_msgsDisableGoal(reader)
        reader.end()
        return value

_record_Ros1Pal_common_msgsDisableGoal = Ros1Pal_common_msgsDisableGoal

def _write_Ros1Pal_common_msgsDisableGoal(writer, value):
    if type(value) is not Ros1Pal_common_msgsDisableGoal:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.duration
    writer.f32(_part0)
    if not 4 <= len(writer.data) - _start <= 4:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_common_msgsDisableGoal(reader):
    _start = reader.position
    value = Ros1Pal_common_msgsDisableGoal()
    value.duration = reader.f32()
    if not 4 <= reader.position - _start <= 4:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_common_msgsDisableResult:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_common_msgs/DisableResult'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_e16cdbd4052e095ead5edfda8c339d94483de63d5442139e0c8b0c5300a2056f'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Pal_common_msgsDisableResult(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_common_msgsDisableResult:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Pal_common_msgsDisableResult(reader)
        reader.end()
        return value

_record_Ros1Pal_common_msgsDisableResult = Ros1Pal_common_msgsDisableResult

def _write_Ros1Pal_common_msgsDisableResult(writer, value):
    if type(value) is not Ros1Pal_common_msgsDisableResult:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros1Pal_common_msgsDisableResult(reader):
    _start = reader.position
    value = Ros1Pal_common_msgsDisableResult()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_common_msgsDisableFeedback:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_common_msgs/DisableFeedback'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_892e1dc5726b25276dfd880aff5c9741922b938048d8fc044662fd6f11939555'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Pal_common_msgsDisableFeedback(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_common_msgsDisableFeedback:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Pal_common_msgsDisableFeedback(reader)
        reader.end()
        return value

_record_Ros1Pal_common_msgsDisableFeedback = Ros1Pal_common_msgsDisableFeedback

def _write_Ros1Pal_common_msgsDisableFeedback(writer, value):
    if type(value) is not Ros1Pal_common_msgsDisableFeedback:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros1Pal_common_msgsDisableFeedback(reader):
    _start = reader.position
    value = Ros1Pal_common_msgsDisableFeedback()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_common_msgsEmptyGoal:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_common_msgs/EmptyGoal'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_b2e8505fe9480002666ccc1bc6ed3e250f521f1e0fb2165336de288f0798c7ce'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Pal_common_msgsEmptyGoal(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_common_msgsEmptyGoal:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Pal_common_msgsEmptyGoal(reader)
        reader.end()
        return value

_record_Ros1Pal_common_msgsEmptyGoal = Ros1Pal_common_msgsEmptyGoal

def _write_Ros1Pal_common_msgsEmptyGoal(writer, value):
    if type(value) is not Ros1Pal_common_msgsEmptyGoal:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros1Pal_common_msgsEmptyGoal(reader):
    _start = reader.position
    value = Ros1Pal_common_msgsEmptyGoal()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_common_msgsEmptyResult:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_common_msgs/EmptyResult'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_7e831f6ff8bda7d3ff2a477bb867ce2b965d82e60c8c089a68a030be1c56202a'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Pal_common_msgsEmptyResult(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_common_msgsEmptyResult:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Pal_common_msgsEmptyResult(reader)
        reader.end()
        return value

_record_Ros1Pal_common_msgsEmptyResult = Ros1Pal_common_msgsEmptyResult

def _write_Ros1Pal_common_msgsEmptyResult(writer, value):
    if type(value) is not Ros1Pal_common_msgsEmptyResult:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros1Pal_common_msgsEmptyResult(reader):
    _start = reader.position
    value = Ros1Pal_common_msgsEmptyResult()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_common_msgsEmptyFeedback:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_common_msgs/EmptyFeedback'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_4e37b746163e601913c21f82128415e9493467848b1203b0744a4f7697125160'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Pal_common_msgsEmptyFeedback(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_common_msgsEmptyFeedback:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Pal_common_msgsEmptyFeedback(reader)
        reader.end()
        return value

_record_Ros1Pal_common_msgsEmptyFeedback = Ros1Pal_common_msgsEmptyFeedback

def _write_Ros1Pal_common_msgsEmptyFeedback(writer, value):
    if type(value) is not Ros1Pal_common_msgsEmptyFeedback:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros1Pal_common_msgsEmptyFeedback(reader):
    _start = reader.position
    value = Ros1Pal_common_msgsEmptyFeedback()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_common_msgsGetStringRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_common_msgs/GetStringRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_5da980a34f4dc0c571eccf18e9b5ba9e3f600ec33066d5632e5eed6a57432975'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Pal_common_msgsGetStringRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_common_msgsGetStringRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Pal_common_msgsGetStringRequest(reader)
        reader.end()
        return value

_record_Ros1Pal_common_msgsGetStringRequest = Ros1Pal_common_msgsGetStringRequest

def _write_Ros1Pal_common_msgsGetStringRequest(writer, value):
    if type(value) is not Ros1Pal_common_msgsGetStringRequest:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros1Pal_common_msgsGetStringRequest(reader):
    _start = reader.position
    value = Ros1Pal_common_msgsGetStringRequest()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_common_msgsGetStringResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_common_msgs/GetStringResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_92faf0451e15a3363daed687078ea103a59e98135e888ad54f8dd9d282443a59'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 5
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 133
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 133
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    data: _py_str = ''
    success: _py_bool = False

    def encode(self):
        writer = _Writer(133)
        _write_Ros1Pal_common_msgsGetStringResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 5, 133)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_common_msgsGetStringResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 5, 133))
        value = _read_Ros1Pal_common_msgsGetStringResponse(reader)
        reader.end()
        return value

_record_Ros1Pal_common_msgsGetStringResponse = Ros1Pal_common_msgsGetStringResponse

def _write_Ros1Pal_common_msgsGetStringResponse(writer, value):
    if type(value) is not Ros1Pal_common_msgsGetStringResponse:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.data
    _write_text(writer, _part0, 128)
    _part1 = value.success
    if type(_part1) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part1), 1)
    if not 5 <= len(writer.data) - _start <= 133:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_common_msgsGetStringResponse(reader):
    _start = reader.position
    value = Ros1Pal_common_msgsGetStringResponse()
    value.data = _read_text(reader, 128)
    value.success = _read_bool(reader)
    if not 5 <= reader.position - _start <= 133:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_common_msgsJointCurrent:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_common_msgs/JointCurrent'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_5c8818c8e15e17e0696cd7301896246ea43e5309f24e8d00e3254283199a5b39'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 136
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 136
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    joints: _py_str = ''
    current_limit: _py_float = 0.0

    def encode(self):
        writer = _Writer(136)
        _write_Ros1Pal_common_msgsJointCurrent(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 136)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_common_msgsJointCurrent:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 136))
        value = _read_Ros1Pal_common_msgsJointCurrent(reader)
        reader.end()
        return value

_record_Ros1Pal_common_msgsJointCurrent = Ros1Pal_common_msgsJointCurrent

def _write_Ros1Pal_common_msgsJointCurrent(writer, value):
    if type(value) is not Ros1Pal_common_msgsJointCurrent:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.joints
    _write_text(writer, _part0, 128)
    _part1 = value.current_limit
    writer.f32(_part1)
    if not 8 <= len(writer.data) - _start <= 136:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_common_msgsJointCurrent(reader):
    _start = reader.position
    value = Ros1Pal_common_msgsJointCurrent()
    value.joints = _read_text(reader, 128)
    value.current_limit = reader.f32()
    if not 8 <= reader.position - _start <= 136:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_common_msgsSetStringRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_common_msgs/SetStringRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_1266d5e50f2f3ada01139b7cf49daf4dd6a9a358edf26519c6b85bd2b9c675b3'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 132
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 132
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    data: _py_str = ''

    def encode(self):
        writer = _Writer(132)
        _write_Ros1Pal_common_msgsSetStringRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 132)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_common_msgsSetStringRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 4, 132))
        value = _read_Ros1Pal_common_msgsSetStringRequest(reader)
        reader.end()
        return value

_record_Ros1Pal_common_msgsSetStringRequest = Ros1Pal_common_msgsSetStringRequest

def _write_Ros1Pal_common_msgsSetStringRequest(writer, value):
    if type(value) is not Ros1Pal_common_msgsSetStringRequest:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.data
    _write_text(writer, _part0, 128)
    if not 4 <= len(writer.data) - _start <= 132:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_common_msgsSetStringRequest(reader):
    _start = reader.position
    value = Ros1Pal_common_msgsSetStringRequest()
    value.data = _read_text(reader, 128)
    if not 4 <= reader.position - _start <= 132:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_common_msgsSetStringResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_common_msgs/SetStringResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_77c77473e16b6242e69e1674bf3c1faf66169bb858144992be3f6cfd712bd370'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Pal_common_msgsSetStringResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_common_msgsSetStringResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Pal_common_msgsSetStringResponse(reader)
        reader.end()
        return value

_record_Ros1Pal_common_msgsSetStringResponse = Ros1Pal_common_msgsSetStringResponse

def _write_Ros1Pal_common_msgsSetStringResponse(writer, value):
    if type(value) is not Ros1Pal_common_msgsSetStringResponse:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_common_msgsSetStringResponse(reader):
    _start = reader.position
    value = Ros1Pal_common_msgsSetStringResponse()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_control_msgsActuatorCurrentLimit:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_control_msgs/ActuatorCurrentLimit'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_cf7369861a4d556cc9edc22cc60c79f484ca84e295c508a2ff7d7332247addbe'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 2248
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 2248
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    actuator_names: _py_list[_py_str] = _field(default_factory=lambda: [])
    current_limits: _py_list[_py_float] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(2248)
        _write_Ros1Pal_control_msgsActuatorCurrentLimit(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 2248)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_control_msgsActuatorCurrentLimit:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 2248))
        value = _read_Ros1Pal_control_msgsActuatorCurrentLimit(reader)
        reader.end()
        return value

_record_Ros1Pal_control_msgsActuatorCurrentLimit = Ros1Pal_control_msgsActuatorCurrentLimit

def _write_Ros1Pal_control_msgsActuatorCurrentLimit(writer, value):
    if type(value) is not Ros1Pal_control_msgsActuatorCurrentLimit:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.actuator_names
    if type(_part0) not in (list, tuple):
        raise TypeError('array value required')
    _count0 = len(_part0)
    if _count0 > 16:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count0, 4)
    for _index in range(_count0):
        _element = _part0[_index]
        _write_text(writer, _element, 128)
    _part1 = value.current_limits
    if type(_part1) not in (list, tuple):
        raise TypeError('array value required')
    _count1 = len(_part1)
    if _count1 > 16:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        writer.f64(_element)
    if not 8 <= len(writer.data) - _start <= 2248:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_control_msgsActuatorCurrentLimit(reader):
    _start = reader.position
    value = Ros1Pal_control_msgsActuatorCurrentLimit()
    value.actuator_names = [_read_text(reader, 128) for _ in range(_read_count(reader, 16, 4))]
    value.current_limits = [reader.f64() for _ in range(_read_count(reader, 16, 8))]
    if not 8 <= reader.position - _start <= 2248:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_control_msgsCurrentLimitRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_control_msgs/CurrentLimitRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_b029cf04f0b1c9db6817fbd10f193d7402afbc84853aed53dc62646e56d030b5'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 140
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 140
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    actuator_name: _py_str = ''
    current_limit: _py_float = 0.0

    def encode(self):
        writer = _Writer(140)
        _write_Ros1Pal_control_msgsCurrentLimitRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 140)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_control_msgsCurrentLimitRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 12, 140))
        value = _read_Ros1Pal_control_msgsCurrentLimitRequest(reader)
        reader.end()
        return value

_record_Ros1Pal_control_msgsCurrentLimitRequest = Ros1Pal_control_msgsCurrentLimitRequest

def _write_Ros1Pal_control_msgsCurrentLimitRequest(writer, value):
    if type(value) is not Ros1Pal_control_msgsCurrentLimitRequest:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.actuator_name
    _write_text(writer, _part0, 128)
    _part1 = value.current_limit
    writer.f64(_part1)
    if not 12 <= len(writer.data) - _start <= 140:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_control_msgsCurrentLimitRequest(reader):
    _start = reader.position
    value = Ros1Pal_control_msgsCurrentLimitRequest()
    value.actuator_name = _read_text(reader, 128)
    value.current_limit = reader.f64()
    if not 12 <= reader.position - _start <= 140:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_control_msgsCurrentLimitResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_control_msgs/CurrentLimitResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_e3b16641e9b7be7b3cb0cf7198a63b41ebd0b38eb7dc6b7bd9263650279b0c37'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 132
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 132
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    status: _py_str = ''

    def encode(self):
        writer = _Writer(132)
        _write_Ros1Pal_control_msgsCurrentLimitResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 132)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_control_msgsCurrentLimitResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 4, 132))
        value = _read_Ros1Pal_control_msgsCurrentLimitResponse(reader)
        reader.end()
        return value

_record_Ros1Pal_control_msgsCurrentLimitResponse = Ros1Pal_control_msgsCurrentLimitResponse

def _write_Ros1Pal_control_msgsCurrentLimitResponse(writer, value):
    if type(value) is not Ros1Pal_control_msgsCurrentLimitResponse:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.status
    _write_text(writer, _part0, 128)
    if not 4 <= len(writer.data) - _start <= 132:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_control_msgsCurrentLimitResponse(reader):
    _start = reader.position
    value = Ros1Pal_control_msgsCurrentLimitResponse()
    value.status = _read_text(reader, 128)
    if not 4 <= reader.position - _start <= 132:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_control_msgsMotionManagerGoal:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_control_msgs/MotionManagerGoal'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_d2191004950c3f14c8fd71cc2c59cbe39eb76a3c521327293e7355f88e8d2383'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 140
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 140
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    filename: _py_str = ''
    plan: _py_bool = False
    checkSafety: _py_bool = False
    repeat: _py_bool = False
    priority: _py_int = 0
    queueTimeout: _py_int = 0

    def encode(self):
        writer = _Writer(140)
        _write_Ros1Pal_control_msgsMotionManagerGoal(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 140)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_control_msgsMotionManagerGoal:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 12, 140))
        value = _read_Ros1Pal_control_msgsMotionManagerGoal(reader)
        reader.end()
        return value

_record_Ros1Pal_control_msgsMotionManagerGoal = Ros1Pal_control_msgsMotionManagerGoal

def _write_Ros1Pal_control_msgsMotionManagerGoal(writer, value):
    if type(value) is not Ros1Pal_control_msgsMotionManagerGoal:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.filename
    _write_text(writer, _part0, 128)
    _part1 = value.plan
    if type(_part1) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part1), 1)
    _part2 = value.checkSafety
    if type(_part2) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part2), 1)
    _part3 = value.repeat
    if type(_part3) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part3), 1)
    _part4 = value.priority
    writer.integer(_part4, 1, False)
    _part5 = value.queueTimeout
    writer.integer(_part5, 4, True)
    if not 12 <= len(writer.data) - _start <= 140:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_control_msgsMotionManagerGoal(reader):
    _start = reader.position
    value = Ros1Pal_control_msgsMotionManagerGoal()
    value.filename = _read_text(reader, 128)
    value.plan = _read_bool(reader)
    value.checkSafety = _read_bool(reader)
    value.repeat = _read_bool(reader)
    value.priority = reader.integer(1, False)
    value.queueTimeout = reader.integer(4, True)
    if not 12 <= reader.position - _start <= 140:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_control_msgsMotionManagerResult:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_control_msgs/MotionManagerResult'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_8c9a1d39fe8d1a23621b871bb0752196123c9eab96c31055c384d0056da3165c'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 132
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 132
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    message: _py_str = ''

    def encode(self):
        writer = _Writer(132)
        _write_Ros1Pal_control_msgsMotionManagerResult(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 132)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_control_msgsMotionManagerResult:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 4, 132))
        value = _read_Ros1Pal_control_msgsMotionManagerResult(reader)
        reader.end()
        return value

_record_Ros1Pal_control_msgsMotionManagerResult = Ros1Pal_control_msgsMotionManagerResult

def _write_Ros1Pal_control_msgsMotionManagerResult(writer, value):
    if type(value) is not Ros1Pal_control_msgsMotionManagerResult:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.message
    _write_text(writer, _part0, 128)
    if not 4 <= len(writer.data) - _start <= 132:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_control_msgsMotionManagerResult(reader):
    _start = reader.position
    value = Ros1Pal_control_msgsMotionManagerResult()
    value.message = _read_text(reader, 128)
    if not 4 <= reader.position - _start <= 132:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_control_msgsMotionManagerFeedback:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_control_msgs/MotionManagerFeedback'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_90343a2a84a0db6a4730b7c9cb437ba55e9dd30c10b662db6dabe561ecf48009'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Pal_control_msgsMotionManagerFeedback(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_control_msgsMotionManagerFeedback:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Pal_control_msgsMotionManagerFeedback(reader)
        reader.end()
        return value

_record_Ros1Pal_control_msgsMotionManagerFeedback = Ros1Pal_control_msgsMotionManagerFeedback

def _write_Ros1Pal_control_msgsMotionManagerFeedback(writer, value):
    if type(value) is not Ros1Pal_control_msgsMotionManagerFeedback:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros1Pal_control_msgsMotionManagerFeedback(reader):
    _start = reader.position
    value = Ros1Pal_control_msgsMotionManagerFeedback()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Duration:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'duration'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_8dbec6cdfef79495208abb358c5e8283ec8d9d471f984424afcda997d142cca8'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    sec: _py_int = 0
    nsec: _py_int = 0

    def encode(self):
        writer = _Writer(8)
        _write_Ros1Duration(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 8)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Duration:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 8))
        value = _read_Ros1Duration(reader)
        reader.end()
        return value

_record_Ros1Duration = Ros1Duration

def _write_Ros1Duration(writer, value):
    if type(value) is not Ros1Duration:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.sec
    writer.integer(_part0, 4, True)
    _part1 = value.nsec
    writer.integer(_part1, 4, True)
    if not 0 <= _part1 < 1000000000:
        raise ValueError('normalized subsecond field required')
    if not 8 <= len(writer.data) - _start <= 8:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Duration(reader):
    _start = reader.position
    value = Ros1Duration()
    value.sec = reader.integer(4, True)
    value.nsec = reader.integer(4, True)
    if not 0 <= value.nsec < 1000000000:
        raise ValueError('normalized subsecond field required')
    if not 8 <= reader.position - _start <= 8:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_control_msgsOperationalSpaceGoal:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_control_msgs/OperationalSpaceGoal'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_c2a633eaaae880b4becdac4e48068d798b121a63ed50339ae5f8eb455416c752'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 178
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 306
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 306
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros1Std_msgsHeader = _field(default_factory=lambda: Ros1Std_msgsHeader())
    has_vel: _py_bool = False
    has_accel: _py_bool = False
    duration: _record_Ros1Duration = _field(default_factory=lambda: Ros1Duration())
    pose: _record_Ros1Geometry_msgsPose = _field(default_factory=lambda: Ros1Geometry_msgsPose())
    velocity: _record_Ros1Geometry_msgsTwist = _field(default_factory=lambda: Ros1Geometry_msgsTwist())
    acceleration: _record_Ros1Geometry_msgsAccel = _field(default_factory=lambda: Ros1Geometry_msgsAccel())

    def encode(self):
        writer = _Writer(306)
        _write_Ros1Pal_control_msgsOperationalSpaceGoal(writer, self)
        wire = writer.finish()
        return _wire(wire, 178, 306)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_control_msgsOperationalSpaceGoal:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 178, 306))
        value = _read_Ros1Pal_control_msgsOperationalSpaceGoal(reader)
        reader.end()
        return value

_record_Ros1Pal_control_msgsOperationalSpaceGoal = Ros1Pal_control_msgsOperationalSpaceGoal

def _write_Ros1Pal_control_msgsOperationalSpaceGoal(writer, value):
    if type(value) is not Ros1Pal_control_msgsOperationalSpaceGoal:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros1Std_msgsHeader(writer, _part0)
    _part1 = value.has_vel
    if type(_part1) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part1), 1)
    _part2 = value.has_accel
    if type(_part2) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part2), 1)
    _part3 = value.duration
    _write_Ros1Duration(writer, _part3)
    _part4 = value.pose
    _write_Ros1Geometry_msgsPose(writer, _part4)
    _part5 = value.velocity
    _write_Ros1Geometry_msgsTwist(writer, _part5)
    _part6 = value.acceleration
    _write_Ros1Geometry_msgsAccel(writer, _part6)
    if not 178 <= len(writer.data) - _start <= 306:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_control_msgsOperationalSpaceGoal(reader):
    _start = reader.position
    value = Ros1Pal_control_msgsOperationalSpaceGoal()
    value.header = _read_Ros1Std_msgsHeader(reader)
    value.has_vel = _read_bool(reader)
    value.has_accel = _read_bool(reader)
    value.duration = _read_Ros1Duration(reader)
    value.pose = _read_Ros1Geometry_msgsPose(reader)
    value.velocity = _read_Ros1Geometry_msgsTwist(reader)
    value.acceleration = _read_Ros1Geometry_msgsAccel(reader)
    if not 178 <= reader.position - _start <= 306:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_control_msgsRigidBodyTrajectoryPoint:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_control_msgs/RigidBodyTrajectoryPoint'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_25a24ab0d2eea5acbd4f1e0e0ba45262aa18750fcfb7cd6e57361ac782006d8f'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 160
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 160
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 160
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    duration: _record_Ros1Duration = _field(default_factory=lambda: Ros1Duration())
    pose: _record_Ros1Geometry_msgsPose = _field(default_factory=lambda: Ros1Geometry_msgsPose())
    velocity: _record_Ros1Geometry_msgsTwist = _field(default_factory=lambda: Ros1Geometry_msgsTwist())
    acceleration: _record_Ros1Geometry_msgsAccel = _field(default_factory=lambda: Ros1Geometry_msgsAccel())

    def encode(self):
        writer = _Writer(160)
        _write_Ros1Pal_control_msgsRigidBodyTrajectoryPoint(writer, self)
        wire = writer.finish()
        return _wire(wire, 160, 160)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_control_msgsRigidBodyTrajectoryPoint:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 160, 160))
        value = _read_Ros1Pal_control_msgsRigidBodyTrajectoryPoint(reader)
        reader.end()
        return value

_record_Ros1Pal_control_msgsRigidBodyTrajectoryPoint = Ros1Pal_control_msgsRigidBodyTrajectoryPoint

def _write_Ros1Pal_control_msgsRigidBodyTrajectoryPoint(writer, value):
    if type(value) is not Ros1Pal_control_msgsRigidBodyTrajectoryPoint:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.duration
    _write_Ros1Duration(writer, _part0)
    _part1 = value.pose
    _write_Ros1Geometry_msgsPose(writer, _part1)
    _part2 = value.velocity
    _write_Ros1Geometry_msgsTwist(writer, _part2)
    _part3 = value.acceleration
    _write_Ros1Geometry_msgsAccel(writer, _part3)
    if not 160 <= len(writer.data) - _start <= 160:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_control_msgsRigidBodyTrajectoryPoint(reader):
    _start = reader.position
    value = Ros1Pal_control_msgsRigidBodyTrajectoryPoint()
    value.duration = _read_Ros1Duration(reader)
    value.pose = _read_Ros1Geometry_msgsPose(reader)
    value.velocity = _read_Ros1Geometry_msgsTwist(reader)
    value.acceleration = _read_Ros1Geometry_msgsAccel(reader)
    if not 160 <= reader.position - _start <= 160:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_control_msgsRigidBodyTrajectoryGoal:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_control_msgs/RigidBodyTrajectoryGoal'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_03623f36fd48567680ea44e05f1e8fceb65f85bbbbfc9c76e19005deb2b2f599'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 21
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 789
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 789
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros1Std_msgsHeader = _field(default_factory=lambda: Ros1Std_msgsHeader())
    interpolation_type: _py_int = 0
    trajectory: _py_list[_record_Ros1Pal_control_msgsRigidBodyTrajectoryPoint] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(789)
        _write_Ros1Pal_control_msgsRigidBodyTrajectoryGoal(writer, self)
        wire = writer.finish()
        return _wire(wire, 21, 789)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_control_msgsRigidBodyTrajectoryGoal:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 21, 789))
        value = _read_Ros1Pal_control_msgsRigidBodyTrajectoryGoal(reader)
        reader.end()
        return value

_record_Ros1Pal_control_msgsRigidBodyTrajectoryGoal = Ros1Pal_control_msgsRigidBodyTrajectoryGoal

def _write_Ros1Pal_control_msgsRigidBodyTrajectoryGoal(writer, value):
    if type(value) is not Ros1Pal_control_msgsRigidBodyTrajectoryGoal:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros1Std_msgsHeader(writer, _part0)
    _part1 = value.interpolation_type
    writer.integer(_part1, 1, True)
    _part2 = value.trajectory
    if type(_part2) not in (list, tuple):
        raise TypeError('array value required')
    _count2 = len(_part2)
    if _count2 > 4:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        _write_Ros1Pal_control_msgsRigidBodyTrajectoryPoint(writer, _element)
    if not 21 <= len(writer.data) - _start <= 789:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_control_msgsRigidBodyTrajectoryGoal(reader):
    _start = reader.position
    value = Ros1Pal_control_msgsRigidBodyTrajectoryGoal()
    value.header = _read_Ros1Std_msgsHeader(reader)
    value.interpolation_type = reader.integer(1, True)
    value.trajectory = [_read_Ros1Pal_control_msgsRigidBodyTrajectoryPoint(reader) for _ in range(_read_count(reader, 4, 160))]
    if not 21 <= reader.position - _start <= 789:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_control_msgsRigidBodyTrajectoryResult:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_control_msgs/RigidBodyTrajectoryResult'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_7f2a255f550c28c0d817ada4d3a0419b4d44347d0d9050821395a65ae6431f9f'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 132
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 132
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    message: _py_str = ''

    def encode(self):
        writer = _Writer(132)
        _write_Ros1Pal_control_msgsRigidBodyTrajectoryResult(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 132)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_control_msgsRigidBodyTrajectoryResult:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 4, 132))
        value = _read_Ros1Pal_control_msgsRigidBodyTrajectoryResult(reader)
        reader.end()
        return value

_record_Ros1Pal_control_msgsRigidBodyTrajectoryResult = Ros1Pal_control_msgsRigidBodyTrajectoryResult

def _write_Ros1Pal_control_msgsRigidBodyTrajectoryResult(writer, value):
    if type(value) is not Ros1Pal_control_msgsRigidBodyTrajectoryResult:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.message
    _write_text(writer, _part0, 128)
    if not 4 <= len(writer.data) - _start <= 132:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_control_msgsRigidBodyTrajectoryResult(reader):
    _start = reader.position
    value = Ros1Pal_control_msgsRigidBodyTrajectoryResult()
    value.message = _read_text(reader, 128)
    if not 4 <= reader.position - _start <= 132:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_control_msgsRigidBodyTrajectoryFeedback:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_control_msgs/RigidBodyTrajectoryFeedback'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_2ea6f2ce67dcc51782fa6db213b7a9e0c758b608961efc1e0783c8f14dbabd96'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Pal_control_msgsRigidBodyTrajectoryFeedback(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_control_msgsRigidBodyTrajectoryFeedback:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Pal_control_msgsRigidBodyTrajectoryFeedback(reader)
        reader.end()
        return value

_record_Ros1Pal_control_msgsRigidBodyTrajectoryFeedback = Ros1Pal_control_msgsRigidBodyTrajectoryFeedback

def _write_Ros1Pal_control_msgsRigidBodyTrajectoryFeedback(writer, value):
    if type(value) is not Ros1Pal_control_msgsRigidBodyTrajectoryFeedback:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros1Pal_control_msgsRigidBodyTrajectoryFeedback(reader):
    _start = reader.position
    value = Ros1Pal_control_msgsRigidBodyTrajectoryFeedback()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Sensor_msgsImage:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'sensor_msgs/Image'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_da3bee65c72205c46f51ab123a4399369df1a0a1419c32fdcd350f16bd5f76ce'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 37
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 4389
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 4389
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros1Std_msgsHeader = _field(default_factory=lambda: Ros1Std_msgsHeader())
    height: _py_int = 0
    width: _py_int = 0
    encoding: _py_str = ''
    is_bigendian: _py_int = 0
    step: _py_int = 0
    data: _py_list[_py_int] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(4389)
        _write_Ros1Sensor_msgsImage(writer, self)
        wire = writer.finish()
        return _wire(wire, 37, 4389)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Sensor_msgsImage:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 37, 4389))
        value = _read_Ros1Sensor_msgsImage(reader)
        reader.end()
        return value

_record_Ros1Sensor_msgsImage = Ros1Sensor_msgsImage

def _write_Ros1Sensor_msgsImage(writer, value):
    if type(value) is not Ros1Sensor_msgsImage:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros1Std_msgsHeader(writer, _part0)
    _part1 = value.height
    writer.integer(_part1, 4, False)
    _part2 = value.width
    writer.integer(_part2, 4, False)
    _part3 = value.encoding
    _write_text(writer, _part3, 128)
    _part4 = value.is_bigendian
    writer.integer(_part4, 1, False)
    _part5 = value.step
    writer.integer(_part5, 4, False)
    _part6 = value.data
    if type(_part6) not in (list, tuple):
        raise TypeError('array value required')
    _count6 = len(_part6)
    if _count6 > 4096:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count6, 4)
    for _index in range(_count6):
        _element = _part6[_index]
        writer.integer(_element, 1, False)
    if not 37 <= len(writer.data) - _start <= 4389:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Sensor_msgsImage(reader):
    _start = reader.position
    value = Ros1Sensor_msgsImage()
    value.header = _read_Ros1Std_msgsHeader(reader)
    value.height = reader.integer(4, False)
    value.width = reader.integer(4, False)
    value.encoding = _read_text(reader, 128)
    value.is_bigendian = reader.integer(1, False)
    value.step = reader.integer(4, False)
    value.data = [reader.integer(1, False) for _ in range(_read_count(reader, 4096, 1))]
    if not 37 <= reader.position - _start <= 4389:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_detection_msgsAddTexturedObjectRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_detection_msgs/AddTexturedObjectRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_0462d396de70e5db24dbbe0dab8c326f81120356b4d632fd3b56b433d89f616d'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 41
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 4521
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 4521
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    img: _record_Ros1Sensor_msgsImage = _field(default_factory=lambda: Ros1Sensor_msgsImage())
    fullPathFileName: _py_str = ''

    def encode(self):
        writer = _Writer(4521)
        _write_Ros1Pal_detection_msgsAddTexturedObjectRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 41, 4521)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_detection_msgsAddTexturedObjectRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 41, 4521))
        value = _read_Ros1Pal_detection_msgsAddTexturedObjectRequest(reader)
        reader.end()
        return value

_record_Ros1Pal_detection_msgsAddTexturedObjectRequest = Ros1Pal_detection_msgsAddTexturedObjectRequest

def _write_Ros1Pal_detection_msgsAddTexturedObjectRequest(writer, value):
    if type(value) is not Ros1Pal_detection_msgsAddTexturedObjectRequest:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.img
    _write_Ros1Sensor_msgsImage(writer, _part0)
    _part1 = value.fullPathFileName
    _write_text(writer, _part1, 128)
    if not 41 <= len(writer.data) - _start <= 4521:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_detection_msgsAddTexturedObjectRequest(reader):
    _start = reader.position
    value = Ros1Pal_detection_msgsAddTexturedObjectRequest()
    value.img = _read_Ros1Sensor_msgsImage(reader)
    value.fullPathFileName = _read_text(reader, 128)
    if not 41 <= reader.position - _start <= 4521:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_detection_msgsAddTexturedObjectResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_detection_msgs/AddTexturedObjectResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_6eb1d5f37f64d4f141251e607533ebf037973dc704dbcf3e06d4fb8d2c86ee1d'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    result: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Pal_detection_msgsAddTexturedObjectResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_detection_msgsAddTexturedObjectResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Pal_detection_msgsAddTexturedObjectResponse(reader)
        reader.end()
        return value

_record_Ros1Pal_detection_msgsAddTexturedObjectResponse = Ros1Pal_detection_msgsAddTexturedObjectResponse

def _write_Ros1Pal_detection_msgsAddTexturedObjectResponse(writer, value):
    if type(value) is not Ros1Pal_detection_msgsAddTexturedObjectResponse:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.result
    if type(_part0) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_detection_msgsAddTexturedObjectResponse(reader):
    _start = reader.position
    value = Ros1Pal_detection_msgsAddTexturedObjectResponse()
    value.result = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_detection_msgsChangeObjectRecognizerModelRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_detection_msgs/ChangeObjectRecognizerModelRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_d8071195e710803f51bfd07d74bd9450c5ce1ca21b464414ad806695692e0342'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 5
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 133
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 133
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    model_name: _py_str = ''
    reset_desired_classes_param: _py_bool = False

    def encode(self):
        writer = _Writer(133)
        _write_Ros1Pal_detection_msgsChangeObjectRecognizerModelRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 5, 133)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_detection_msgsChangeObjectRecognizerModelRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 5, 133))
        value = _read_Ros1Pal_detection_msgsChangeObjectRecognizerModelRequest(reader)
        reader.end()
        return value

_record_Ros1Pal_detection_msgsChangeObjectRecognizerModelRequest = Ros1Pal_detection_msgsChangeObjectRecognizerModelRequest

def _write_Ros1Pal_detection_msgsChangeObjectRecognizerModelRequest(writer, value):
    if type(value) is not Ros1Pal_detection_msgsChangeObjectRecognizerModelRequest:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.model_name
    _write_text(writer, _part0, 128)
    _part1 = value.reset_desired_classes_param
    if type(_part1) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part1), 1)
    if not 5 <= len(writer.data) - _start <= 133:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_detection_msgsChangeObjectRecognizerModelRequest(reader):
    _start = reader.position
    value = Ros1Pal_detection_msgsChangeObjectRecognizerModelRequest()
    value.model_name = _read_text(reader, 128)
    value.reset_desired_classes_param = _read_bool(reader)
    if not 5 <= reader.position - _start <= 133:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_detection_msgsChangeObjectRecognizerModelResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_detection_msgs/ChangeObjectRecognizerModelResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_cd5c9ca75201a47ae2eb04ec69ecea7762257b946bb2777a2c7224b51515775d'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    status: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Pal_detection_msgsChangeObjectRecognizerModelResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_detection_msgsChangeObjectRecognizerModelResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Pal_detection_msgsChangeObjectRecognizerModelResponse(reader)
        reader.end()
        return value

_record_Ros1Pal_detection_msgsChangeObjectRecognizerModelResponse = Ros1Pal_detection_msgsChangeObjectRecognizerModelResponse

def _write_Ros1Pal_detection_msgsChangeObjectRecognizerModelResponse(writer, value):
    if type(value) is not Ros1Pal_detection_msgsChangeObjectRecognizerModelResponse:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.status
    if type(_part0) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_detection_msgsChangeObjectRecognizerModelResponse(reader):
    _start = reader.position
    value = Ros1Pal_detection_msgsChangeObjectRecognizerModelResponse()
    value.status = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_detection_msgsDetection2d:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_detection_msgs/Detection2d'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_4f0e64fd7996b772586fce060823565b53147a7b29456c8a3b5f8fa48e81663e'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 32
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 32
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 32
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    x: _py_int = 0
    y: _py_int = 0
    width: _py_int = 0
    height: _py_int = 0

    def encode(self):
        writer = _Writer(32)
        _write_Ros1Pal_detection_msgsDetection2d(writer, self)
        wire = writer.finish()
        return _wire(wire, 32, 32)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_detection_msgsDetection2d:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 32, 32))
        value = _read_Ros1Pal_detection_msgsDetection2d(reader)
        reader.end()
        return value

_record_Ros1Pal_detection_msgsDetection2d = Ros1Pal_detection_msgsDetection2d

def _write_Ros1Pal_detection_msgsDetection2d(writer, value):
    if type(value) is not Ros1Pal_detection_msgsDetection2d:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.x
    writer.integer(_part0, 8, True)
    _part1 = value.y
    writer.integer(_part1, 8, True)
    _part2 = value.width
    writer.integer(_part2, 8, True)
    _part3 = value.height
    writer.integer(_part3, 8, True)
    if not 32 <= len(writer.data) - _start <= 32:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_detection_msgsDetection2d(reader):
    _start = reader.position
    value = Ros1Pal_detection_msgsDetection2d()
    value.x = reader.integer(8, True)
    value.y = reader.integer(8, True)
    value.width = reader.integer(8, True)
    value.height = reader.integer(8, True)
    if not 32 <= reader.position - _start <= 32:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_detection_msgsDetections2d:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_detection_msgs/Detections2d'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_0b21e2e5d47b2e4e46f46506940a84b3df0acef77d7e3c66716bc9cc7b0b8e04'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 96
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 608
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 608
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros1Std_msgsHeader = _field(default_factory=lambda: Ros1Std_msgsHeader())
    detections: _py_list[_record_Ros1Pal_detection_msgsDetection2d] = _field(default_factory=lambda: [])
    camera_pose: _record_Ros1Geometry_msgsTransformStamped = _field(default_factory=lambda: Ros1Geometry_msgsTransformStamped())

    def encode(self):
        writer = _Writer(608)
        _write_Ros1Pal_detection_msgsDetections2d(writer, self)
        wire = writer.finish()
        return _wire(wire, 96, 608)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_detection_msgsDetections2d:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 96, 608))
        value = _read_Ros1Pal_detection_msgsDetections2d(reader)
        reader.end()
        return value

_record_Ros1Pal_detection_msgsDetections2d = Ros1Pal_detection_msgsDetections2d

def _write_Ros1Pal_detection_msgsDetections2d(writer, value):
    if type(value) is not Ros1Pal_detection_msgsDetections2d:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros1Std_msgsHeader(writer, _part0)
    _part1 = value.detections
    if type(_part1) not in (list, tuple):
        raise TypeError('array value required')
    _count1 = len(_part1)
    if _count1 > 4:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        _write_Ros1Pal_detection_msgsDetection2d(writer, _element)
    _part2 = value.camera_pose
    _write_Ros1Geometry_msgsTransformStamped(writer, _part2)
    if not 96 <= len(writer.data) - _start <= 608:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_detection_msgsDetections2d(reader):
    _start = reader.position
    value = Ros1Pal_detection_msgsDetections2d()
    value.header = _read_Ros1Std_msgsHeader(reader)
    value.detections = [_read_Ros1Pal_detection_msgsDetection2d(reader) for _ in range(_read_count(reader, 4, 32))]
    value.camera_pose = _read_Ros1Geometry_msgsTransformStamped(reader)
    if not 96 <= reader.position - _start <= 608:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_detection_msgsFaceDetection:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_detection_msgs/FaceDetection'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_792fe21dbe06a6a47493a66571ff9b324dba17447855965b2e4f3e79cd302395'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 97
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 481
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 481
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = [{'name': 'EXPRESSION_NEUTRAL',
      'type': 'string',
      'native_type': 'string',
      'literal': '"neutral"',
      'value': 'neutral'},
     {'name': 'EXPRESSION_SMILE',
      'type': 'string',
      'native_type': 'string',
      'literal': '"smile"',
      'value': 'smile'},
     {'name': 'EXPRESSION_RAISED_BROWS',
      'type': 'string',
      'native_type': 'string',
      'literal': '"raised brows"',
      'value': 'raised brows'},
     {'name': 'EXPRESSION_EYES_AWAY',
      'type': 'string',
      'native_type': 'string',
      'literal': '"eyes away"',
      'value': 'eyes away'},
     {'name': 'EXPRESSION_SQUINTING',
      'type': 'string',
      'native_type': 'string',
      'literal': '"squinting"',
      'value': 'squinting'},
     {'name': 'EXPRESSION_FROWNING',
      'type': 'string',
      'native_type': 'string',
      'literal': '"frowning"',
      'value': 'frowning'}]
    EXPRESSION_NEUTRAL: _ClassVar = 'neutral'
    EXPRESSION_SMILE: _ClassVar = 'smile'
    EXPRESSION_RAISED_BROWS: _ClassVar = 'raised brows'
    EXPRESSION_EYES_AWAY: _ClassVar = 'eyes away'
    EXPRESSION_SQUINTING: _ClassVar = 'squinting'
    EXPRESSION_FROWNING: _ClassVar = 'frowning'
    x: _py_int = 0
    y: _py_int = 0
    width: _py_int = 0
    height: _py_int = 0
    eyesLocated: _py_bool = False
    leftEyeX: _py_int = 0
    leftEyeY: _py_int = 0
    rightEyeX: _py_int = 0
    rightEyeY: _py_int = 0
    position: _record_Ros1Geometry_msgsPoint32 = _field(default_factory=lambda: Ros1Geometry_msgsPoint32())
    name: _py_str = ''
    confidence: _py_float = 0.0
    gender: _py_str = ''
    genderConfidence: _py_float = 0.0
    expression: _py_str = ''
    expression_confidence: _py_float = 0.0
    emotion_anger_confidence: _py_float = 0.0
    emotion_disgust_confidence: _py_float = 0.0
    emotion_fear_confidence: _py_float = 0.0
    emotion_happiness_confidence: _py_float = 0.0
    emotion_neutral_confidence: _py_float = 0.0
    emotion_sadness_confidence: _py_float = 0.0
    emotion_surprise_confidence: _py_float = 0.0

    def encode(self):
        writer = _Writer(481)
        _write_Ros1Pal_detection_msgsFaceDetection(writer, self)
        wire = writer.finish()
        return _wire(wire, 97, 481)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_detection_msgsFaceDetection:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 97, 481))
        value = _read_Ros1Pal_detection_msgsFaceDetection(reader)
        reader.end()
        return value

_record_Ros1Pal_detection_msgsFaceDetection = Ros1Pal_detection_msgsFaceDetection

def _write_Ros1Pal_detection_msgsFaceDetection(writer, value):
    if type(value) is not Ros1Pal_detection_msgsFaceDetection:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.x
    writer.integer(_part0, 4, True)
    _part1 = value.y
    writer.integer(_part1, 4, True)
    _part2 = value.width
    writer.integer(_part2, 4, True)
    _part3 = value.height
    writer.integer(_part3, 4, True)
    _part4 = value.eyesLocated
    if type(_part4) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part4), 1)
    _part5 = value.leftEyeX
    writer.integer(_part5, 4, True)
    _part6 = value.leftEyeY
    writer.integer(_part6, 4, True)
    _part7 = value.rightEyeX
    writer.integer(_part7, 4, True)
    _part8 = value.rightEyeY
    writer.integer(_part8, 4, True)
    _part9 = value.position
    _write_Ros1Geometry_msgsPoint32(writer, _part9)
    _part10 = value.name
    _write_text(writer, _part10, 128)
    _part11 = value.confidence
    writer.f32(_part11)
    _part12 = value.gender
    _write_text(writer, _part12, 128)
    _part13 = value.genderConfidence
    writer.f32(_part13)
    _part14 = value.expression
    _write_text(writer, _part14, 128)
    _part15 = value.expression_confidence
    writer.f32(_part15)
    _part16 = value.emotion_anger_confidence
    writer.f32(_part16)
    _part17 = value.emotion_disgust_confidence
    writer.f32(_part17)
    _part18 = value.emotion_fear_confidence
    writer.f32(_part18)
    _part19 = value.emotion_happiness_confidence
    writer.f32(_part19)
    _part20 = value.emotion_neutral_confidence
    writer.f32(_part20)
    _part21 = value.emotion_sadness_confidence
    writer.f32(_part21)
    _part22 = value.emotion_surprise_confidence
    writer.f32(_part22)
    if not 97 <= len(writer.data) - _start <= 481:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_detection_msgsFaceDetection(reader):
    _start = reader.position
    value = Ros1Pal_detection_msgsFaceDetection()
    value.x = reader.integer(4, True)
    value.y = reader.integer(4, True)
    value.width = reader.integer(4, True)
    value.height = reader.integer(4, True)
    value.eyesLocated = _read_bool(reader)
    value.leftEyeX = reader.integer(4, True)
    value.leftEyeY = reader.integer(4, True)
    value.rightEyeX = reader.integer(4, True)
    value.rightEyeY = reader.integer(4, True)
    value.position = _read_Ros1Geometry_msgsPoint32(reader)
    value.name = _read_text(reader, 128)
    value.confidence = reader.f32()
    value.gender = _read_text(reader, 128)
    value.genderConfidence = reader.f32()
    value.expression = _read_text(reader, 128)
    value.expression_confidence = reader.f32()
    value.emotion_anger_confidence = reader.f32()
    value.emotion_disgust_confidence = reader.f32()
    value.emotion_fear_confidence = reader.f32()
    value.emotion_happiness_confidence = reader.f32()
    value.emotion_neutral_confidence = reader.f32()
    value.emotion_sadness_confidence = reader.f32()
    value.emotion_surprise_confidence = reader.f32()
    if not 97 <= reader.position - _start <= 481:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_detection_msgsFaceDetections:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_detection_msgs/FaceDetections'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_ee4b1061b4a4d0bd25f5f2ae4725248e53c82181ab685036cc246100f6019a4b'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 96
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 2404
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 2404
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros1Std_msgsHeader = _field(default_factory=lambda: Ros1Std_msgsHeader())
    faces: _py_list[_record_Ros1Pal_detection_msgsFaceDetection] = _field(default_factory=lambda: [])
    camera_pose: _record_Ros1Geometry_msgsTransformStamped = _field(default_factory=lambda: Ros1Geometry_msgsTransformStamped())

    def encode(self):
        writer = _Writer(2404)
        _write_Ros1Pal_detection_msgsFaceDetections(writer, self)
        wire = writer.finish()
        return _wire(wire, 96, 2404)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_detection_msgsFaceDetections:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 96, 2404))
        value = _read_Ros1Pal_detection_msgsFaceDetections(reader)
        reader.end()
        return value

_record_Ros1Pal_detection_msgsFaceDetections = Ros1Pal_detection_msgsFaceDetections

def _write_Ros1Pal_detection_msgsFaceDetections(writer, value):
    if type(value) is not Ros1Pal_detection_msgsFaceDetections:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros1Std_msgsHeader(writer, _part0)
    _part1 = value.faces
    if type(_part1) not in (list, tuple):
        raise TypeError('array value required')
    _count1 = len(_part1)
    if _count1 > 4:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        _write_Ros1Pal_detection_msgsFaceDetection(writer, _element)
    _part2 = value.camera_pose
    _write_Ros1Geometry_msgsTransformStamped(writer, _part2)
    if not 96 <= len(writer.data) - _start <= 2404:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_detection_msgsFaceDetections(reader):
    _start = reader.position
    value = Ros1Pal_detection_msgsFaceDetections()
    value.header = _read_Ros1Std_msgsHeader(reader)
    value.faces = [_read_Ros1Pal_detection_msgsFaceDetection(reader) for _ in range(_read_count(reader, 4, 97))]
    value.camera_pose = _read_Ros1Geometry_msgsTransformStamped(reader)
    if not 96 <= reader.position - _start <= 2404:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Sensor_msgsRegionOfInterest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'sensor_msgs/RegionOfInterest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_28eb54e504fa3d32a4848f5b534e998656e34ce4fee49fd120b0fd729e569c86'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 17
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 17
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 17
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    x_offset: _py_int = 0
    y_offset: _py_int = 0
    height: _py_int = 0
    width: _py_int = 0
    do_rectify: _py_bool = False

    def encode(self):
        writer = _Writer(17)
        _write_Ros1Sensor_msgsRegionOfInterest(writer, self)
        wire = writer.finish()
        return _wire(wire, 17, 17)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Sensor_msgsRegionOfInterest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 17, 17))
        value = _read_Ros1Sensor_msgsRegionOfInterest(reader)
        reader.end()
        return value

_record_Ros1Sensor_msgsRegionOfInterest = Ros1Sensor_msgsRegionOfInterest

def _write_Ros1Sensor_msgsRegionOfInterest(writer, value):
    if type(value) is not Ros1Sensor_msgsRegionOfInterest:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.x_offset
    writer.integer(_part0, 4, False)
    _part1 = value.y_offset
    writer.integer(_part1, 4, False)
    _part2 = value.height
    writer.integer(_part2, 4, False)
    _part3 = value.width
    writer.integer(_part3, 4, False)
    _part4 = value.do_rectify
    if type(_part4) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part4), 1)
    if not 17 <= len(writer.data) - _start <= 17:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Sensor_msgsRegionOfInterest(reader):
    _start = reader.position
    value = Ros1Sensor_msgsRegionOfInterest()
    value.x_offset = reader.integer(4, False)
    value.y_offset = reader.integer(4, False)
    value.height = reader.integer(4, False)
    value.width = reader.integer(4, False)
    value.do_rectify = _read_bool(reader)
    if not 17 <= reader.position - _start <= 17:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_detection_msgsFaceThermalDetections:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_detection_msgs/FaceThermalDetections'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_056b2da5537a5a7a7cb428e134dc11c22e271780146febf7af837a516fb9b07d'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 20
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 216
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 216
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros1Std_msgsHeader = _field(default_factory=lambda: Ros1Std_msgsHeader())
    faces: _py_list[_record_Ros1Sensor_msgsRegionOfInterest] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(216)
        _write_Ros1Pal_detection_msgsFaceThermalDetections(writer, self)
        wire = writer.finish()
        return _wire(wire, 20, 216)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_detection_msgsFaceThermalDetections:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 20, 216))
        value = _read_Ros1Pal_detection_msgsFaceThermalDetections(reader)
        reader.end()
        return value

_record_Ros1Pal_detection_msgsFaceThermalDetections = Ros1Pal_detection_msgsFaceThermalDetections

def _write_Ros1Pal_detection_msgsFaceThermalDetections(writer, value):
    if type(value) is not Ros1Pal_detection_msgsFaceThermalDetections:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros1Std_msgsHeader(writer, _part0)
    _part1 = value.faces
    if type(_part1) not in (list, tuple):
        raise TypeError('array value required')
    _count1 = len(_part1)
    if _count1 > 4:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        _write_Ros1Sensor_msgsRegionOfInterest(writer, _element)
    if not 20 <= len(writer.data) - _start <= 216:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_detection_msgsFaceThermalDetections(reader):
    _start = reader.position
    value = Ros1Pal_detection_msgsFaceThermalDetections()
    value.header = _read_Ros1Std_msgsHeader(reader)
    value.faces = [_read_Ros1Sensor_msgsRegionOfInterest(reader) for _ in range(_read_count(reader, 4, 17))]
    if not 20 <= reader.position - _start <= 216:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_detection_msgsGesture:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_detection_msgs/Gesture'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_d9a3e3adffc40a24a70a967fa616ee81a8d21eb08d7656830e0915cd0945ac38'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 44
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 300
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 300
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros1Std_msgsHeader = _field(default_factory=lambda: Ros1Std_msgsHeader())
    gestureId: _py_str = ''
    position3D: _record_Ros1Geometry_msgsPoint = _field(default_factory=lambda: Ros1Geometry_msgsPoint())

    def encode(self):
        writer = _Writer(300)
        _write_Ros1Pal_detection_msgsGesture(writer, self)
        wire = writer.finish()
        return _wire(wire, 44, 300)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_detection_msgsGesture:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 44, 300))
        value = _read_Ros1Pal_detection_msgsGesture(reader)
        reader.end()
        return value

_record_Ros1Pal_detection_msgsGesture = Ros1Pal_detection_msgsGesture

def _write_Ros1Pal_detection_msgsGesture(writer, value):
    if type(value) is not Ros1Pal_detection_msgsGesture:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros1Std_msgsHeader(writer, _part0)
    _part1 = value.gestureId
    _write_text(writer, _part1, 128)
    _part2 = value.position3D
    _write_Ros1Geometry_msgsPoint(writer, _part2)
    if not 44 <= len(writer.data) - _start <= 300:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_detection_msgsGesture(reader):
    _start = reader.position
    value = Ros1Pal_detection_msgsGesture()
    value.header = _read_Ros1Std_msgsHeader(reader)
    value.gestureId = _read_text(reader, 128)
    value.position3D = _read_Ros1Geometry_msgsPoint(reader)
    if not 44 <= reader.position - _start <= 300:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_detection_msgsLegDetections:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_detection_msgs/LegDetections'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_eaaabdd63d786de0b4bf51199a211f86024e9f835ede77f9bcf92dc77f67ac1d'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 96
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 576
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 576
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros1Std_msgsHeader = _field(default_factory=lambda: Ros1Std_msgsHeader())
    position3D: _py_list[_record_Ros1Geometry_msgsPoint] = _field(default_factory=lambda: [])
    laser_pose: _record_Ros1Geometry_msgsTransformStamped = _field(default_factory=lambda: Ros1Geometry_msgsTransformStamped())

    def encode(self):
        writer = _Writer(576)
        _write_Ros1Pal_detection_msgsLegDetections(writer, self)
        wire = writer.finish()
        return _wire(wire, 96, 576)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_detection_msgsLegDetections:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 96, 576))
        value = _read_Ros1Pal_detection_msgsLegDetections(reader)
        reader.end()
        return value

_record_Ros1Pal_detection_msgsLegDetections = Ros1Pal_detection_msgsLegDetections

def _write_Ros1Pal_detection_msgsLegDetections(writer, value):
    if type(value) is not Ros1Pal_detection_msgsLegDetections:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros1Std_msgsHeader(writer, _part0)
    _part1 = value.position3D
    if type(_part1) not in (list, tuple):
        raise TypeError('array value required')
    _count1 = len(_part1)
    if _count1 > 4:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        _write_Ros1Geometry_msgsPoint(writer, _element)
    _part2 = value.laser_pose
    _write_Ros1Geometry_msgsTransformStamped(writer, _part2)
    if not 96 <= len(writer.data) - _start <= 576:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_detection_msgsLegDetections(reader):
    _start = reader.position
    value = Ros1Pal_detection_msgsLegDetections()
    value.header = _read_Ros1Std_msgsHeader(reader)
    value.position3D = [_read_Ros1Geometry_msgsPoint(reader) for _ in range(_read_count(reader, 4, 24))]
    value.laser_pose = _read_Ros1Geometry_msgsTransformStamped(reader)
    if not 96 <= reader.position - _start <= 576:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_detection_msgsObstacle:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_detection_msgs/Obstacle'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_ebc85fb238f48ed8d9d595afd92f5f28c4ead850154e350733e09ec1d407c661'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 72
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 72
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 72
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    id: _py_int = 0
    position: _record_Ros1Geometry_msgsPoint = _field(default_factory=lambda: Ros1Geometry_msgsPoint())
    position_covariance: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(4)])
    width: _py_float = 0.0
    height: _py_float = 0.0

    def encode(self):
        writer = _Writer(72)
        _write_Ros1Pal_detection_msgsObstacle(writer, self)
        wire = writer.finish()
        return _wire(wire, 72, 72)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_detection_msgsObstacle:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 72, 72))
        value = _read_Ros1Pal_detection_msgsObstacle(reader)
        reader.end()
        return value

_record_Ros1Pal_detection_msgsObstacle = Ros1Pal_detection_msgsObstacle

def _write_Ros1Pal_detection_msgsObstacle(writer, value):
    if type(value) is not Ros1Pal_detection_msgsObstacle:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.id
    writer.integer(_part0, 8, True)
    _part1 = value.position
    _write_Ros1Geometry_msgsPoint(writer, _part1)
    _part2 = value.position_covariance
    if type(_part2) not in (list, tuple):
        raise TypeError('array value required')
    _count2 = len(_part2)
    if _count2 != 4:
        raise ValueError('fixed/sequence count bound')
    for _index in range(_count2):
        _element = _part2[_index]
        writer.f64(_element)
    _part3 = value.width
    writer.f32(_part3)
    _part4 = value.height
    writer.f32(_part4)
    if not 72 <= len(writer.data) - _start <= 72:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_detection_msgsObstacle(reader):
    _start = reader.position
    value = Ros1Pal_detection_msgsObstacle()
    value.id = reader.integer(8, True)
    value.position = _read_Ros1Geometry_msgsPoint(reader)
    value.position_covariance = [reader.f64() for _ in range(4)]
    value.width = reader.f32()
    value.height = reader.f32()
    if not 72 <= reader.position - _start <= 72:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_detection_msgsObstacles:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_detection_msgs/Obstacles'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_4dba9077149d1e00d54b01031f5de9ef885904c00e2ec10b262302fccb86fe7e'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 20
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 436
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 436
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros1Std_msgsHeader = _field(default_factory=lambda: Ros1Std_msgsHeader())
    obstacles: _py_list[_record_Ros1Pal_detection_msgsObstacle] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(436)
        _write_Ros1Pal_detection_msgsObstacles(writer, self)
        wire = writer.finish()
        return _wire(wire, 20, 436)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_detection_msgsObstacles:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 20, 436))
        value = _read_Ros1Pal_detection_msgsObstacles(reader)
        reader.end()
        return value

_record_Ros1Pal_detection_msgsObstacles = Ros1Pal_detection_msgsObstacles

def _write_Ros1Pal_detection_msgsObstacles(writer, value):
    if type(value) is not Ros1Pal_detection_msgsObstacles:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros1Std_msgsHeader(writer, _part0)
    _part1 = value.obstacles
    if type(_part1) not in (list, tuple):
        raise TypeError('array value required')
    _count1 = len(_part1)
    if _count1 > 4:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        _write_Ros1Pal_detection_msgsObstacle(writer, _element)
    if not 20 <= len(writer.data) - _start <= 436:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_detection_msgsObstacles(reader):
    _start = reader.position
    value = Ros1Pal_detection_msgsObstacles()
    value.header = _read_Ros1Std_msgsHeader(reader)
    value.obstacles = [_read_Ros1Pal_detection_msgsObstacle(reader) for _ in range(_read_count(reader, 4, 72))]
    if not 20 <= reader.position - _start <= 436:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_detection_msgsPersonDetection:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_detection_msgs/PersonDetection'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_4da91c014135c4fc077060bdfdde36f82e41d45729fe56642b33b83157d07853'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 265
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1257
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1257
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    full_body: _record_Ros1Pal_detection_msgsDetection2d = _field(default_factory=lambda: Ros1Pal_detection_msgsDetection2d())
    face: _record_Ros1Pal_detection_msgsFaceDetection = _field(default_factory=lambda: Ros1Pal_detection_msgsFaceDetection())
    legs: _record_Ros1Pal_detection_msgsLegDetections = _field(default_factory=lambda: Ros1Pal_detection_msgsLegDetections())
    position3D: _record_Ros1Geometry_msgsPointStamped = _field(default_factory=lambda: Ros1Geometry_msgsPointStamped())

    def encode(self):
        writer = _Writer(1257)
        _write_Ros1Pal_detection_msgsPersonDetection(writer, self)
        wire = writer.finish()
        return _wire(wire, 265, 1257)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_detection_msgsPersonDetection:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 265, 1257))
        value = _read_Ros1Pal_detection_msgsPersonDetection(reader)
        reader.end()
        return value

_record_Ros1Pal_detection_msgsPersonDetection = Ros1Pal_detection_msgsPersonDetection

def _write_Ros1Pal_detection_msgsPersonDetection(writer, value):
    if type(value) is not Ros1Pal_detection_msgsPersonDetection:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.full_body
    _write_Ros1Pal_detection_msgsDetection2d(writer, _part0)
    _part1 = value.face
    _write_Ros1Pal_detection_msgsFaceDetection(writer, _part1)
    _part2 = value.legs
    _write_Ros1Pal_detection_msgsLegDetections(writer, _part2)
    _part3 = value.position3D
    _write_Ros1Geometry_msgsPointStamped(writer, _part3)
    if not 265 <= len(writer.data) - _start <= 1257:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_detection_msgsPersonDetection(reader):
    _start = reader.position
    value = Ros1Pal_detection_msgsPersonDetection()
    value.full_body = _read_Ros1Pal_detection_msgsDetection2d(reader)
    value.face = _read_Ros1Pal_detection_msgsFaceDetection(reader)
    value.legs = _read_Ros1Pal_detection_msgsLegDetections(reader)
    value.position3D = _read_Ros1Geometry_msgsPointStamped(reader)
    if not 265 <= reader.position - _start <= 1257:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_detection_msgsPersonDetections:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_detection_msgs/PersonDetections'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_cafbf2a5df82057119e9638012e379e0126c0cb951ca159747ebe69c1ed0fd91'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 96
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 5508
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 5508
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros1Std_msgsHeader = _field(default_factory=lambda: Ros1Std_msgsHeader())
    persons: _py_list[_record_Ros1Pal_detection_msgsPersonDetection] = _field(default_factory=lambda: [])
    camera_pose: _record_Ros1Geometry_msgsTransformStamped = _field(default_factory=lambda: Ros1Geometry_msgsTransformStamped())

    def encode(self):
        writer = _Writer(5508)
        _write_Ros1Pal_detection_msgsPersonDetections(writer, self)
        wire = writer.finish()
        return _wire(wire, 96, 5508)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_detection_msgsPersonDetections:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 96, 5508))
        value = _read_Ros1Pal_detection_msgsPersonDetections(reader)
        reader.end()
        return value

_record_Ros1Pal_detection_msgsPersonDetections = Ros1Pal_detection_msgsPersonDetections

def _write_Ros1Pal_detection_msgsPersonDetections(writer, value):
    if type(value) is not Ros1Pal_detection_msgsPersonDetections:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros1Std_msgsHeader(writer, _part0)
    _part1 = value.persons
    if type(_part1) not in (list, tuple):
        raise TypeError('array value required')
    _count1 = len(_part1)
    if _count1 > 4:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        _write_Ros1Pal_detection_msgsPersonDetection(writer, _element)
    _part2 = value.camera_pose
    _write_Ros1Geometry_msgsTransformStamped(writer, _part2)
    if not 96 <= len(writer.data) - _start <= 5508:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_detection_msgsPersonDetections(reader):
    _start = reader.position
    value = Ros1Pal_detection_msgsPersonDetections()
    value.header = _read_Ros1Std_msgsHeader(reader)
    value.persons = [_read_Ros1Pal_detection_msgsPersonDetection(reader) for _ in range(_read_count(reader, 4, 265))]
    value.camera_pose = _read_Ros1Geometry_msgsTransformStamped(reader)
    if not 96 <= reader.position - _start <= 5508:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Sensor_msgsCompressedImage:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'sensor_msgs/CompressedImage'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_c72a32a46b8b10037ccaa32f7c5d403f908eed838df86faf2c7d36344cea958d'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 24
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 4376
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 4376
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros1Std_msgsHeader = _field(default_factory=lambda: Ros1Std_msgsHeader())
    format: _py_str = ''
    data: _py_list[_py_int] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(4376)
        _write_Ros1Sensor_msgsCompressedImage(writer, self)
        wire = writer.finish()
        return _wire(wire, 24, 4376)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Sensor_msgsCompressedImage:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 24, 4376))
        value = _read_Ros1Sensor_msgsCompressedImage(reader)
        reader.end()
        return value

_record_Ros1Sensor_msgsCompressedImage = Ros1Sensor_msgsCompressedImage

def _write_Ros1Sensor_msgsCompressedImage(writer, value):
    if type(value) is not Ros1Sensor_msgsCompressedImage:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros1Std_msgsHeader(writer, _part0)
    _part1 = value.format
    _write_text(writer, _part1, 128)
    _part2 = value.data
    if type(_part2) not in (list, tuple):
        raise TypeError('array value required')
    _count2 = len(_part2)
    if _count2 > 4096:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        writer.integer(_element, 1, False)
    if not 24 <= len(writer.data) - _start <= 4376:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Sensor_msgsCompressedImage(reader):
    _start = reader.position
    value = Ros1Sensor_msgsCompressedImage()
    value.header = _read_Ros1Std_msgsHeader(reader)
    value.format = _read_text(reader, 128)
    value.data = [reader.integer(1, False) for _ in range(_read_count(reader, 4096, 1))]
    if not 24 <= reader.position - _start <= 4376:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_detection_msgsRecognizeObjectsGoal:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_detection_msgs/RecognizeObjectsGoal'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_9d87bc6c703c50a0b900a7d4bdcefeda5363c5b2f9affe4e9466a3b4f6dfc585'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 24
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 4376
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 4376
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    input_image: _record_Ros1Sensor_msgsCompressedImage = _field(default_factory=lambda: Ros1Sensor_msgsCompressedImage())

    def encode(self):
        writer = _Writer(4376)
        _write_Ros1Pal_detection_msgsRecognizeObjectsGoal(writer, self)
        wire = writer.finish()
        return _wire(wire, 24, 4376)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_detection_msgsRecognizeObjectsGoal:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 24, 4376))
        value = _read_Ros1Pal_detection_msgsRecognizeObjectsGoal(reader)
        reader.end()
        return value

_record_Ros1Pal_detection_msgsRecognizeObjectsGoal = Ros1Pal_detection_msgsRecognizeObjectsGoal

def _write_Ros1Pal_detection_msgsRecognizeObjectsGoal(writer, value):
    if type(value) is not Ros1Pal_detection_msgsRecognizeObjectsGoal:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.input_image
    _write_Ros1Sensor_msgsCompressedImage(writer, _part0)
    if not 24 <= len(writer.data) - _start <= 4376:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_detection_msgsRecognizeObjectsGoal(reader):
    _start = reader.position
    value = Ros1Pal_detection_msgsRecognizeObjectsGoal()
    value.input_image = _read_Ros1Sensor_msgsCompressedImage(reader)
    if not 24 <= reader.position - _start <= 4376:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_detection_msgsRecognizedObject:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_detection_msgs/RecognizedObject'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_36cc36b8ff12ed25b3feadadc7e58a76c1e9c57aaa68b2a295c341c5075203fd'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 25
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 153
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 153
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    object_class: _py_str = ''
    confidence: _py_float = 0.0
    bounding_box: _record_Ros1Sensor_msgsRegionOfInterest = _field(default_factory=lambda: Ros1Sensor_msgsRegionOfInterest())

    def encode(self):
        writer = _Writer(153)
        _write_Ros1Pal_detection_msgsRecognizedObject(writer, self)
        wire = writer.finish()
        return _wire(wire, 25, 153)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_detection_msgsRecognizedObject:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 25, 153))
        value = _read_Ros1Pal_detection_msgsRecognizedObject(reader)
        reader.end()
        return value

_record_Ros1Pal_detection_msgsRecognizedObject = Ros1Pal_detection_msgsRecognizedObject

def _write_Ros1Pal_detection_msgsRecognizedObject(writer, value):
    if type(value) is not Ros1Pal_detection_msgsRecognizedObject:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.object_class
    _write_text(writer, _part0, 128)
    _part1 = value.confidence
    writer.f32(_part1)
    _part2 = value.bounding_box
    _write_Ros1Sensor_msgsRegionOfInterest(writer, _part2)
    if not 25 <= len(writer.data) - _start <= 153:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_detection_msgsRecognizedObject(reader):
    _start = reader.position
    value = Ros1Pal_detection_msgsRecognizedObject()
    value.object_class = _read_text(reader, 128)
    value.confidence = reader.f32()
    value.bounding_box = _read_Ros1Sensor_msgsRegionOfInterest(reader)
    if not 25 <= reader.position - _start <= 153:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_detection_msgsRecognizedObjectArray:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_detection_msgs/RecognizedObjectArray'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_8d781116572e1ba9b5cc79b9d4ae844c64e3ef56a274da3de56cc2400baa51e0'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 20
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 760
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 760
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros1Std_msgsHeader = _field(default_factory=lambda: Ros1Std_msgsHeader())
    objects: _py_list[_record_Ros1Pal_detection_msgsRecognizedObject] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(760)
        _write_Ros1Pal_detection_msgsRecognizedObjectArray(writer, self)
        wire = writer.finish()
        return _wire(wire, 20, 760)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_detection_msgsRecognizedObjectArray:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 20, 760))
        value = _read_Ros1Pal_detection_msgsRecognizedObjectArray(reader)
        reader.end()
        return value

_record_Ros1Pal_detection_msgsRecognizedObjectArray = Ros1Pal_detection_msgsRecognizedObjectArray

def _write_Ros1Pal_detection_msgsRecognizedObjectArray(writer, value):
    if type(value) is not Ros1Pal_detection_msgsRecognizedObjectArray:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros1Std_msgsHeader(writer, _part0)
    _part1 = value.objects
    if type(_part1) not in (list, tuple):
        raise TypeError('array value required')
    _count1 = len(_part1)
    if _count1 > 4:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        _write_Ros1Pal_detection_msgsRecognizedObject(writer, _element)
    if not 20 <= len(writer.data) - _start <= 760:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_detection_msgsRecognizedObjectArray(reader):
    _start = reader.position
    value = Ros1Pal_detection_msgsRecognizedObjectArray()
    value.header = _read_Ros1Std_msgsHeader(reader)
    value.objects = [_read_Ros1Pal_detection_msgsRecognizedObject(reader) for _ in range(_read_count(reader, 4, 25))]
    if not 20 <= reader.position - _start <= 760:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_detection_msgsRecognizeObjectsResult:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_detection_msgs/RecognizeObjectsResult'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_1d30540a71461481094e70b11d19c4a327881fd6ed81689bc948b3de5853b8da'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 46
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 5138
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 5138
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    image: _record_Ros1Sensor_msgsCompressedImage = _field(default_factory=lambda: Ros1Sensor_msgsCompressedImage())
    num_detections: _py_int = 0
    recognized_objects: _record_Ros1Pal_detection_msgsRecognizedObjectArray = (
        _field(default_factory=lambda: Ros1Pal_detection_msgsRecognizedObjectArray())
    )

    def encode(self):
        writer = _Writer(5138)
        _write_Ros1Pal_detection_msgsRecognizeObjectsResult(writer, self)
        wire = writer.finish()
        return _wire(wire, 46, 5138)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_detection_msgsRecognizeObjectsResult:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 46, 5138))
        value = _read_Ros1Pal_detection_msgsRecognizeObjectsResult(reader)
        reader.end()
        return value

_record_Ros1Pal_detection_msgsRecognizeObjectsResult = Ros1Pal_detection_msgsRecognizeObjectsResult

def _write_Ros1Pal_detection_msgsRecognizeObjectsResult(writer, value):
    if type(value) is not Ros1Pal_detection_msgsRecognizeObjectsResult:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.image
    _write_Ros1Sensor_msgsCompressedImage(writer, _part0)
    _part1 = value.num_detections
    writer.integer(_part1, 2, True)
    _part2 = value.recognized_objects
    _write_Ros1Pal_detection_msgsRecognizedObjectArray(writer, _part2)
    if not 46 <= len(writer.data) - _start <= 5138:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_detection_msgsRecognizeObjectsResult(reader):
    _start = reader.position
    value = Ros1Pal_detection_msgsRecognizeObjectsResult()
    value.image = _read_Ros1Sensor_msgsCompressedImage(reader)
    value.num_detections = reader.integer(2, True)
    value.recognized_objects = _read_Ros1Pal_detection_msgsRecognizedObjectArray(reader)
    if not 46 <= reader.position - _start <= 5138:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_detection_msgsRecognizeObjectsFeedback:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_detection_msgs/RecognizeObjectsFeedback'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_c18fdb9db683f1ae2a17cc0a7cdc2bcc3ca060ef0c05cacb4defc35af0829f94'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Pal_detection_msgsRecognizeObjectsFeedback(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_detection_msgsRecognizeObjectsFeedback:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Pal_detection_msgsRecognizeObjectsFeedback(reader)
        reader.end()
        return value

_record_Ros1Pal_detection_msgsRecognizeObjectsFeedback = Ros1Pal_detection_msgsRecognizeObjectsFeedback

def _write_Ros1Pal_detection_msgsRecognizeObjectsFeedback(writer, value):
    if type(value) is not Ros1Pal_detection_msgsRecognizeObjectsFeedback:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros1Pal_detection_msgsRecognizeObjectsFeedback(reader):
    _start = reader.position
    value = Ros1Pal_detection_msgsRecognizeObjectsFeedback()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_detection_msgsRecognizedActions:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_detection_msgs/RecognizedActions'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_b061282e0a4039af635d355d554c8f93af760ff116dfae31f36535b8b9378c33'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 28
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 2524
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 2524
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros1Std_msgsHeader = _field(default_factory=lambda: Ros1Std_msgsHeader())
    action_name: _py_list[_py_str] = _field(default_factory=lambda: [])
    u: _py_list[_py_int] = _field(default_factory=lambda: [])
    v: _py_list[_py_int] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(2524)
        _write_Ros1Pal_detection_msgsRecognizedActions(writer, self)
        wire = writer.finish()
        return _wire(wire, 28, 2524)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_detection_msgsRecognizedActions:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 28, 2524))
        value = _read_Ros1Pal_detection_msgsRecognizedActions(reader)
        reader.end()
        return value

_record_Ros1Pal_detection_msgsRecognizedActions = Ros1Pal_detection_msgsRecognizedActions

def _write_Ros1Pal_detection_msgsRecognizedActions(writer, value):
    if type(value) is not Ros1Pal_detection_msgsRecognizedActions:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros1Std_msgsHeader(writer, _part0)
    _part1 = value.action_name
    if type(_part1) not in (list, tuple):
        raise TypeError('array value required')
    _count1 = len(_part1)
    if _count1 > 16:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        _write_text(writer, _element, 128)
    _part2 = value.u
    if type(_part2) not in (list, tuple):
        raise TypeError('array value required')
    _count2 = len(_part2)
    if _count2 > 16:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        writer.integer(_element, 8, True)
    _part3 = value.v
    if type(_part3) not in (list, tuple):
        raise TypeError('array value required')
    _count3 = len(_part3)
    if _count3 > 16:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count3, 4)
    for _index in range(_count3):
        _element = _part3[_index]
        writer.integer(_element, 8, True)
    if not 28 <= len(writer.data) - _start <= 2524:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_detection_msgsRecognizedActions(reader):
    _start = reader.position
    value = Ros1Pal_detection_msgsRecognizedActions()
    value.header = _read_Ros1Std_msgsHeader(reader)
    value.action_name = [_read_text(reader, 128) for _ in range(_read_count(reader, 16, 4))]
    value.u = [reader.integer(8, True) for _ in range(_read_count(reader, 16, 8))]
    value.v = [reader.integer(8, True) for _ in range(_read_count(reader, 16, 8))]
    if not 28 <= reader.position - _start <= 2524:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_detection_msgsRecognizerRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_detection_msgs/RecognizerRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_0d3ff43e5e851b33f710c9477383884c1db45971e4959df5892abff59fe29f55'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 5
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 5
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 5
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    enabled: _py_bool = False
    minConfidence: _py_float = 0.0

    def encode(self):
        writer = _Writer(5)
        _write_Ros1Pal_detection_msgsRecognizerRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 5, 5)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_detection_msgsRecognizerRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 5, 5))
        value = _read_Ros1Pal_detection_msgsRecognizerRequest(reader)
        reader.end()
        return value

_record_Ros1Pal_detection_msgsRecognizerRequest = Ros1Pal_detection_msgsRecognizerRequest

def _write_Ros1Pal_detection_msgsRecognizerRequest(writer, value):
    if type(value) is not Ros1Pal_detection_msgsRecognizerRequest:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.enabled
    if type(_part0) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part0), 1)
    _part1 = value.minConfidence
    writer.f32(_part1)
    if not 5 <= len(writer.data) - _start <= 5:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_detection_msgsRecognizerRequest(reader):
    _start = reader.position
    value = Ros1Pal_detection_msgsRecognizerRequest()
    value.enabled = _read_bool(reader)
    value.minConfidence = reader.f32()
    if not 5 <= reader.position - _start <= 5:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_detection_msgsRecognizerResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_detection_msgs/RecognizerResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_604e61f18d602f79b4e5a4145530ded34ac47d7a0ed97185c31457cef365935a'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Pal_detection_msgsRecognizerResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_detection_msgsRecognizerResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Pal_detection_msgsRecognizerResponse(reader)
        reader.end()
        return value

_record_Ros1Pal_detection_msgsRecognizerResponse = Ros1Pal_detection_msgsRecognizerResponse

def _write_Ros1Pal_detection_msgsRecognizerResponse(writer, value):
    if type(value) is not Ros1Pal_detection_msgsRecognizerResponse:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros1Pal_detection_msgsRecognizerResponse(reader):
    _start = reader.position
    value = Ros1Pal_detection_msgsRecognizerResponse()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_detection_msgsRotatedDetection2d:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_detection_msgs/RotatedDetection2d'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_2f22137d0171356fffb61ee8f668d07f90deadad0f900a2aa83ee0edfde0e52d'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 24
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 408
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 408
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros1Std_msgsHeader = _field(default_factory=lambda: Ros1Std_msgsHeader())
    x: _py_list[_py_int] = _field(default_factory=lambda: [])
    y: _py_list[_py_int] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(408)
        _write_Ros1Pal_detection_msgsRotatedDetection2d(writer, self)
        wire = writer.finish()
        return _wire(wire, 24, 408)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_detection_msgsRotatedDetection2d:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 24, 408))
        value = _read_Ros1Pal_detection_msgsRotatedDetection2d(reader)
        reader.end()
        return value

_record_Ros1Pal_detection_msgsRotatedDetection2d = Ros1Pal_detection_msgsRotatedDetection2d

def _write_Ros1Pal_detection_msgsRotatedDetection2d(writer, value):
    if type(value) is not Ros1Pal_detection_msgsRotatedDetection2d:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros1Std_msgsHeader(writer, _part0)
    _part1 = value.x
    if type(_part1) not in (list, tuple):
        raise TypeError('array value required')
    _count1 = len(_part1)
    if _count1 > 16:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        writer.integer(_element, 8, True)
    _part2 = value.y
    if type(_part2) not in (list, tuple):
        raise TypeError('array value required')
    _count2 = len(_part2)
    if _count2 > 16:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        writer.integer(_element, 8, True)
    if not 24 <= len(writer.data) - _start <= 408:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_detection_msgsRotatedDetection2d(reader):
    _start = reader.position
    value = Ros1Pal_detection_msgsRotatedDetection2d()
    value.header = _read_Ros1Std_msgsHeader(reader)
    value.x = [reader.integer(8, True) for _ in range(_read_count(reader, 16, 8))]
    value.y = [reader.integer(8, True) for _ in range(_read_count(reader, 16, 8))]
    if not 24 <= reader.position - _start <= 408:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_detection_msgsSelectTexturedObjectRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_detection_msgs/SelectTexturedObjectRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_866b10e9fcb4e51c9aa5f5a9b7c9c36cbef544fd685f3cfd77de8a3b759e1004'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 20
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 148
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 148
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    imageFullPathFileName: _py_str = ''
    width: _py_float = 0.0
    height: _py_float = 0.0

    def encode(self):
        writer = _Writer(148)
        _write_Ros1Pal_detection_msgsSelectTexturedObjectRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 20, 148)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_detection_msgsSelectTexturedObjectRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 20, 148))
        value = _read_Ros1Pal_detection_msgsSelectTexturedObjectRequest(reader)
        reader.end()
        return value

_record_Ros1Pal_detection_msgsSelectTexturedObjectRequest = Ros1Pal_detection_msgsSelectTexturedObjectRequest

def _write_Ros1Pal_detection_msgsSelectTexturedObjectRequest(writer, value):
    if type(value) is not Ros1Pal_detection_msgsSelectTexturedObjectRequest:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.imageFullPathFileName
    _write_text(writer, _part0, 128)
    _part1 = value.width
    writer.f64(_part1)
    _part2 = value.height
    writer.f64(_part2)
    if not 20 <= len(writer.data) - _start <= 148:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_detection_msgsSelectTexturedObjectRequest(reader):
    _start = reader.position
    value = Ros1Pal_detection_msgsSelectTexturedObjectRequest()
    value.imageFullPathFileName = _read_text(reader, 128)
    value.width = reader.f64()
    value.height = reader.f64()
    if not 20 <= reader.position - _start <= 148:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_detection_msgsSelectTexturedObjectResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_detection_msgs/SelectTexturedObjectResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_98857d1de78a0b8014ea0dfd0597f41b908869229b1ef9d815a983571180db22'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    result: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Pal_detection_msgsSelectTexturedObjectResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_detection_msgsSelectTexturedObjectResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Pal_detection_msgsSelectTexturedObjectResponse(reader)
        reader.end()
        return value

_record_Ros1Pal_detection_msgsSelectTexturedObjectResponse = Ros1Pal_detection_msgsSelectTexturedObjectResponse

def _write_Ros1Pal_detection_msgsSelectTexturedObjectResponse(writer, value):
    if type(value) is not Ros1Pal_detection_msgsSelectTexturedObjectResponse:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.result
    if type(_part0) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_detection_msgsSelectTexturedObjectResponse(reader):
    _start = reader.position
    value = Ros1Pal_detection_msgsSelectTexturedObjectResponse()
    value.result = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_detection_msgsSetDatabaseRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_detection_msgs/SetDatabaseRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_fa4b3a519fcae8b8ac43d6e764203d720939a001c7f572e43e03c2f64904308b'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 5
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 133
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 133
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    databaseName: _py_str = ''
    purgeAll: _py_bool = False

    def encode(self):
        writer = _Writer(133)
        _write_Ros1Pal_detection_msgsSetDatabaseRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 5, 133)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_detection_msgsSetDatabaseRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 5, 133))
        value = _read_Ros1Pal_detection_msgsSetDatabaseRequest(reader)
        reader.end()
        return value

_record_Ros1Pal_detection_msgsSetDatabaseRequest = Ros1Pal_detection_msgsSetDatabaseRequest

def _write_Ros1Pal_detection_msgsSetDatabaseRequest(writer, value):
    if type(value) is not Ros1Pal_detection_msgsSetDatabaseRequest:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.databaseName
    _write_text(writer, _part0, 128)
    _part1 = value.purgeAll
    if type(_part1) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part1), 1)
    if not 5 <= len(writer.data) - _start <= 133:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_detection_msgsSetDatabaseRequest(reader):
    _start = reader.position
    value = Ros1Pal_detection_msgsSetDatabaseRequest()
    value.databaseName = _read_text(reader, 128)
    value.purgeAll = _read_bool(reader)
    if not 5 <= reader.position - _start <= 133:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_detection_msgsSetDatabaseResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_detection_msgs/SetDatabaseResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_31307d8d81296f69a5bb7dbd54bc10aea47a41b1d1458b6d5451d53bdc2f9b46'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Pal_detection_msgsSetDatabaseResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_detection_msgsSetDatabaseResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Pal_detection_msgsSetDatabaseResponse(reader)
        reader.end()
        return value

_record_Ros1Pal_detection_msgsSetDatabaseResponse = Ros1Pal_detection_msgsSetDatabaseResponse

def _write_Ros1Pal_detection_msgsSetDatabaseResponse(writer, value):
    if type(value) is not Ros1Pal_detection_msgsSetDatabaseResponse:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros1Pal_detection_msgsSetDatabaseResponse(reader):
    _start = reader.position
    value = Ros1Pal_detection_msgsSetDatabaseResponse()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_detection_msgsStartEnrollmentRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_detection_msgs/StartEnrollmentRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_d1175a40ec4050b7d53f0929d9fb9ca6d33155c6df2295082e159db96e2fa7d8'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 132
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 132
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    name: _py_str = ''

    def encode(self):
        writer = _Writer(132)
        _write_Ros1Pal_detection_msgsStartEnrollmentRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 132)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_detection_msgsStartEnrollmentRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 4, 132))
        value = _read_Ros1Pal_detection_msgsStartEnrollmentRequest(reader)
        reader.end()
        return value

_record_Ros1Pal_detection_msgsStartEnrollmentRequest = Ros1Pal_detection_msgsStartEnrollmentRequest

def _write_Ros1Pal_detection_msgsStartEnrollmentRequest(writer, value):
    if type(value) is not Ros1Pal_detection_msgsStartEnrollmentRequest:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.name
    _write_text(writer, _part0, 128)
    if not 4 <= len(writer.data) - _start <= 132:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_detection_msgsStartEnrollmentRequest(reader):
    _start = reader.position
    value = Ros1Pal_detection_msgsStartEnrollmentRequest()
    value.name = _read_text(reader, 128)
    if not 4 <= reader.position - _start <= 132:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_detection_msgsStartEnrollmentResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_detection_msgs/StartEnrollmentResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_7d24b04c596d75db09309a7244e275e5980344aaf020f91a44bef100927d5b62'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    result: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Pal_detection_msgsStartEnrollmentResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_detection_msgsStartEnrollmentResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Pal_detection_msgsStartEnrollmentResponse(reader)
        reader.end()
        return value

_record_Ros1Pal_detection_msgsStartEnrollmentResponse = Ros1Pal_detection_msgsStartEnrollmentResponse

def _write_Ros1Pal_detection_msgsStartEnrollmentResponse(writer, value):
    if type(value) is not Ros1Pal_detection_msgsStartEnrollmentResponse:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.result
    if type(_part0) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_detection_msgsStartEnrollmentResponse(reader):
    _start = reader.position
    value = Ros1Pal_detection_msgsStartEnrollmentResponse()
    value.result = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_detection_msgsStopEnrollmentRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_detection_msgs/StopEnrollmentRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_627511d9388c67421ccbd8f1928ec5a7e87ad1cc19f0e6b69b4be089ea69d3df'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Pal_detection_msgsStopEnrollmentRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_detection_msgsStopEnrollmentRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Pal_detection_msgsStopEnrollmentRequest(reader)
        reader.end()
        return value

_record_Ros1Pal_detection_msgsStopEnrollmentRequest = Ros1Pal_detection_msgsStopEnrollmentRequest

def _write_Ros1Pal_detection_msgsStopEnrollmentRequest(writer, value):
    if type(value) is not Ros1Pal_detection_msgsStopEnrollmentRequest:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros1Pal_detection_msgsStopEnrollmentRequest(reader):
    _start = reader.position
    value = Ros1Pal_detection_msgsStopEnrollmentRequest()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_detection_msgsStopEnrollmentResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_detection_msgs/StopEnrollmentResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_30384a8e564b227756bc3e778edf7d0a0b60440baf8e966352600b15b1a9a1aa'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 9
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 137
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 137
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    enrollment_ok: _py_bool = False
    numFacesEnrolled: _py_int = 0
    error_msg: _py_str = ''

    def encode(self):
        writer = _Writer(137)
        _write_Ros1Pal_detection_msgsStopEnrollmentResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 9, 137)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_detection_msgsStopEnrollmentResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 9, 137))
        value = _read_Ros1Pal_detection_msgsStopEnrollmentResponse(reader)
        reader.end()
        return value

_record_Ros1Pal_detection_msgsStopEnrollmentResponse = Ros1Pal_detection_msgsStopEnrollmentResponse

def _write_Ros1Pal_detection_msgsStopEnrollmentResponse(writer, value):
    if type(value) is not Ros1Pal_detection_msgsStopEnrollmentResponse:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.enrollment_ok
    if type(_part0) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part0), 1)
    _part1 = value.numFacesEnrolled
    writer.integer(_part1, 4, True)
    _part2 = value.error_msg
    _write_text(writer, _part2, 128)
    if not 9 <= len(writer.data) - _start <= 137:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_detection_msgsStopEnrollmentResponse(reader):
    _start = reader.position
    value = Ros1Pal_detection_msgsStopEnrollmentResponse()
    value.enrollment_ok = _read_bool(reader)
    value.numFacesEnrolled = reader.integer(4, True)
    value.error_msg = _read_text(reader, 128)
    if not 9 <= reader.position - _start <= 137:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_detection_msgsTexturedObjectDetection:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_detection_msgs/TexturedObjectDetection'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_4a13d12a14db4a3f8883d2bd66317d4b50bd2246fde7de5cdc966d4d35cff204'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 64
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 4928
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 4928
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros1Std_msgsHeader = _field(default_factory=lambda: Ros1Std_msgsHeader())
    img: _record_Ros1Sensor_msgsCompressedImage = _field(default_factory=lambda: Ros1Sensor_msgsCompressedImage())
    roi: _record_Ros1Pal_detection_msgsRotatedDetection2d = _field(default_factory=lambda: Ros1Pal_detection_msgsRotatedDetection2d())

    def encode(self):
        writer = _Writer(4928)
        _write_Ros1Pal_detection_msgsTexturedObjectDetection(writer, self)
        wire = writer.finish()
        return _wire(wire, 64, 4928)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_detection_msgsTexturedObjectDetection:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 64, 4928))
        value = _read_Ros1Pal_detection_msgsTexturedObjectDetection(reader)
        reader.end()
        return value

_record_Ros1Pal_detection_msgsTexturedObjectDetection = Ros1Pal_detection_msgsTexturedObjectDetection

def _write_Ros1Pal_detection_msgsTexturedObjectDetection(writer, value):
    if type(value) is not Ros1Pal_detection_msgsTexturedObjectDetection:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros1Std_msgsHeader(writer, _part0)
    _part1 = value.img
    _write_Ros1Sensor_msgsCompressedImage(writer, _part1)
    _part2 = value.roi
    _write_Ros1Pal_detection_msgsRotatedDetection2d(writer, _part2)
    if not 64 <= len(writer.data) - _start <= 4928:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_detection_msgsTexturedObjectDetection(reader):
    _start = reader.position
    value = Ros1Pal_detection_msgsTexturedObjectDetection()
    value.header = _read_Ros1Std_msgsHeader(reader)
    value.img = _read_Ros1Sensor_msgsCompressedImage(reader)
    value.roi = _read_Ros1Pal_detection_msgsRotatedDetection2d(reader)
    if not 64 <= reader.position - _start <= 4928:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_detection_msgsWaveDetection:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_detection_msgs/WaveDetection'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_9c121f0ad95f8e28a13b1b7b80c32f0cea55b737edccf63fe92908ed806db52e'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 19
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 147
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 147
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros1Std_msgsHeader = _field(default_factory=lambda: Ros1Std_msgsHeader())
    wave: _py_bool = False
    u: _py_int = 0
    v: _py_int = 0

    def encode(self):
        writer = _Writer(147)
        _write_Ros1Pal_detection_msgsWaveDetection(writer, self)
        wire = writer.finish()
        return _wire(wire, 19, 147)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_detection_msgsWaveDetection:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 19, 147))
        value = _read_Ros1Pal_detection_msgsWaveDetection(reader)
        reader.end()
        return value

_record_Ros1Pal_detection_msgsWaveDetection = Ros1Pal_detection_msgsWaveDetection

def _write_Ros1Pal_detection_msgsWaveDetection(writer, value):
    if type(value) is not Ros1Pal_detection_msgsWaveDetection:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros1Std_msgsHeader(writer, _part0)
    _part1 = value.wave
    if type(_part1) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part1), 1)
    _part2 = value.u
    writer.integer(_part2, 1, True)
    _part3 = value.v
    writer.integer(_part3, 1, True)
    if not 19 <= len(writer.data) - _start <= 147:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_detection_msgsWaveDetection(reader):
    _start = reader.position
    value = Ros1Pal_detection_msgsWaveDetection()
    value.header = _read_Ros1Std_msgsHeader(reader)
    value.wave = _read_bool(reader)
    value.u = reader.integer(1, True)
    value.v = reader.integer(1, True)
    if not 19 <= reader.position - _start <= 147:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_interaction_msgsASRActivation:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_interaction_msgs/ASRActivation'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_30f9e3f26cd145518ec1957bab9ca45f4cbe4ac25f82c8853ad1997bad1fdda7'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = [{'name': 'ACTIVATE', 'type': 'int8', 'native_type': 'int8', 'literal': '1', 'value': '1'},
     {'name': 'DEACTIVATE', 'type': 'int8', 'native_type': 'int8', 'literal': '2', 'value': '2'},
     {'name': 'PAUSE', 'type': 'int8', 'native_type': 'int8', 'literal': '3', 'value': '3'},
     {'name': 'RESUME', 'type': 'int8', 'native_type': 'int8', 'literal': '4', 'value': '4'},
     {'name': 'CALIBRATE', 'type': 'int8', 'native_type': 'int8', 'literal': '5', 'value': '5'}]
    ACTIVATE: _ClassVar = 1
    DEACTIVATE: _ClassVar = 2
    PAUSE: _ClassVar = 3
    RESUME: _ClassVar = 4
    CALIBRATE: _ClassVar = 5
    action: _py_int = 0

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Pal_interaction_msgsASRActivation(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_interaction_msgsASRActivation:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Pal_interaction_msgsASRActivation(reader)
        reader.end()
        return value

_record_Ros1Pal_interaction_msgsASRActivation = Ros1Pal_interaction_msgsASRActivation

def _write_Ros1Pal_interaction_msgsASRActivation(writer, value):
    if type(value) is not Ros1Pal_interaction_msgsASRActivation:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.action
    writer.integer(_part0, 1, True)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_interaction_msgsASRActivation(reader):
    _start = reader.position
    value = Ros1Pal_interaction_msgsASRActivation()
    value.action = reader.integer(1, True)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_interaction_msgsActiontag:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_interaction_msgs/actiontag'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_bd76d0c6a24ccccf66c8723e96bdb0bacf4b9f89fd569482dbb05b8c3a0e7a08'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 264
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 264
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    key: _py_str = ''
    value: _py_str = ''

    def encode(self):
        writer = _Writer(264)
        _write_Ros1Pal_interaction_msgsActiontag(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 264)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_interaction_msgsActiontag:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 264))
        value = _read_Ros1Pal_interaction_msgsActiontag(reader)
        reader.end()
        return value

_record_Ros1Pal_interaction_msgsActiontag = Ros1Pal_interaction_msgsActiontag

def _write_Ros1Pal_interaction_msgsActiontag(writer, value):
    if type(value) is not Ros1Pal_interaction_msgsActiontag:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.key
    _write_text(writer, _part0, 128)
    _part1 = value.value
    _write_text(writer, _part1, 128)
    if not 8 <= len(writer.data) - _start <= 264:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_interaction_msgsActiontag(reader):
    _start = reader.position
    value = Ros1Pal_interaction_msgsActiontag()
    value.key = _read_text(reader, 128)
    value.value = _read_text(reader, 128)
    if not 8 <= reader.position - _start <= 264:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_interaction_msgsAsrresult:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_interaction_msgs/asrresult'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_b259acfd1ed092ec360582155843297af7f18152debe9cfae0573c695f271058'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 25
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1209
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1209
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = [{'name': 'CONFIDENCE_UNDEFINED',
      'type': 'int8',
      'native_type': 'int8',
      'literal': '-1',
      'value': '-1'},
     {'name': 'CONFIDENCE_POOR', 'type': 'int8', 'native_type': 'int8', 'literal': '1', 'value': '1'},
     {'name': 'CONFIDENCE_LOW', 'type': 'int8', 'native_type': 'int8', 'literal': '2', 'value': '2'},
     {'name': 'CONFIDENCE_GOOD', 'type': 'int8', 'native_type': 'int8', 'literal': '3', 'value': '3'},
     {'name': 'CONFIDENCE_MAX', 'type': 'int8', 'native_type': 'int8', 'literal': '4', 'value': '4'}]
    CONFIDENCE_UNDEFINED: _ClassVar = -1
    CONFIDENCE_POOR: _ClassVar = 1
    CONFIDENCE_LOW: _ClassVar = 2
    CONFIDENCE_GOOD: _ClassVar = 3
    CONFIDENCE_MAX: _ClassVar = 4
    text: _py_str = ''
    confidence: _py_int = 0
    start: _record_Ros1Time = _field(default_factory=lambda: Ros1Time())
    end: _record_Ros1Time = _field(default_factory=lambda: Ros1Time())
    tags: _py_list[_record_Ros1Pal_interaction_msgsActiontag] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(1209)
        _write_Ros1Pal_interaction_msgsAsrresult(writer, self)
        wire = writer.finish()
        return _wire(wire, 25, 1209)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_interaction_msgsAsrresult:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 25, 1209))
        value = _read_Ros1Pal_interaction_msgsAsrresult(reader)
        reader.end()
        return value

_record_Ros1Pal_interaction_msgsAsrresult = Ros1Pal_interaction_msgsAsrresult

def _write_Ros1Pal_interaction_msgsAsrresult(writer, value):
    if type(value) is not Ros1Pal_interaction_msgsAsrresult:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.text
    _write_text(writer, _part0, 128)
    _part1 = value.confidence
    writer.integer(_part1, 1, True)
    _part2 = value.start
    _write_Ros1Time(writer, _part2)
    _part3 = value.end
    _write_Ros1Time(writer, _part3)
    _part4 = value.tags
    if type(_part4) not in (list, tuple):
        raise TypeError('array value required')
    _count4 = len(_part4)
    if _count4 > 4:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count4, 4)
    for _index in range(_count4):
        _element = _part4[_index]
        _write_Ros1Pal_interaction_msgsActiontag(writer, _element)
    if not 25 <= len(writer.data) - _start <= 1209:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_interaction_msgsAsrresult(reader):
    _start = reader.position
    value = Ros1Pal_interaction_msgsAsrresult()
    value.text = _read_text(reader, 128)
    value.confidence = reader.integer(1, True)
    value.start = _read_Ros1Time(reader)
    value.end = _read_Ros1Time(reader)
    value.tags = [_read_Ros1Pal_interaction_msgsActiontag(reader) for _ in range(_read_count(reader, 4, 8))]
    if not 25 <= reader.position - _start <= 1209:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_interaction_msgsASREvent:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_interaction_msgs/ASREvent'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_459ea9c0c0a993881cc4189329bc42ae244d6133b8d3ae789206dbc4655a0926'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 28
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1212
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1212
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = [{'name': 'EVENT_UNDEFINED', 'type': 'int8', 'native_type': 'int8', 'literal': '-1', 'value': '-1'},
     {'name': 'EVENT_LISTEN_STATE',
      'type': 'int8',
      'native_type': 'int8',
      'literal': '1',
      'value': '1'},
     {'name': 'EVENT_RECOGNIZED_UTT',
      'type': 'int8',
      'native_type': 'int8',
      'literal': '2',
      'value': '2'},
     {'name': 'EVENT_ASR_ACTIVATION',
      'type': 'int8',
      'native_type': 'int8',
      'literal': '3',
      'value': '3'},
     {'name': 'EVENT_FAILED_DECODING',
      'type': 'int8',
      'native_type': 'int8',
      'literal': '4',
      'value': '4'},
     {'name': 'LISTEN_UNDEFINED',
      'type': 'int8',
      'native_type': 'int8',
      'literal': '20',
      'value': '20'},
     {'name': 'LISTEN_CALIBRATION',
      'type': 'int8',
      'native_type': 'int8',
      'literal': '21',
      'value': '21'},
     {'name': 'LISTEN_WAITING_FOR_SPEECH',
      'type': 'int8',
      'native_type': 'int8',
      'literal': '22',
      'value': '22'},
     {'name': 'LISTEN_SPEECH_DETECTED',
      'type': 'int8',
      'native_type': 'int8',
      'literal': '23',
      'value': '23'},
     {'name': 'LISTEN_END_OF_SPEECH',
      'type': 'int8',
      'native_type': 'int8',
      'literal': '24',
      'value': '24'}]
    EVENT_UNDEFINED: _ClassVar = -1
    EVENT_LISTEN_STATE: _ClassVar = 1
    EVENT_RECOGNIZED_UTT: _ClassVar = 2
    EVENT_ASR_ACTIVATION: _ClassVar = 3
    EVENT_FAILED_DECODING: _ClassVar = 4
    LISTEN_UNDEFINED: _ClassVar = 20
    LISTEN_CALIBRATION: _ClassVar = 21
    LISTEN_WAITING_FOR_SPEECH: _ClassVar = 22
    LISTEN_SPEECH_DETECTED: _ClassVar = 23
    LISTEN_END_OF_SPEECH: _ClassVar = 24
    event_id: _py_int = 0
    listen_state: _py_int = 0
    recognized_utterance: _record_Ros1Pal_interaction_msgsAsrresult = _field(default_factory=lambda: Ros1Pal_interaction_msgsAsrresult())
    active: _py_bool = False

    def encode(self):
        writer = _Writer(1212)
        _write_Ros1Pal_interaction_msgsASREvent(writer, self)
        wire = writer.finish()
        return _wire(wire, 28, 1212)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_interaction_msgsASREvent:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 28, 1212))
        value = _read_Ros1Pal_interaction_msgsASREvent(reader)
        reader.end()
        return value

_record_Ros1Pal_interaction_msgsASREvent = Ros1Pal_interaction_msgsASREvent

def _write_Ros1Pal_interaction_msgsASREvent(writer, value):
    if type(value) is not Ros1Pal_interaction_msgsASREvent:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.event_id
    writer.integer(_part0, 1, True)
    _part1 = value.listen_state
    writer.integer(_part1, 1, True)
    _part2 = value.recognized_utterance
    _write_Ros1Pal_interaction_msgsAsrresult(writer, _part2)
    _part3 = value.active
    if type(_part3) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part3), 1)
    if not 28 <= len(writer.data) - _start <= 1212:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_interaction_msgsASREvent(reader):
    _start = reader.position
    value = Ros1Pal_interaction_msgsASREvent()
    value.event_id = reader.integer(1, True)
    value.listen_state = reader.integer(1, True)
    value.recognized_utterance = _read_Ros1Pal_interaction_msgsAsrresult(reader)
    value.active = _read_bool(reader)
    if not 28 <= reader.position - _start <= 1212:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_interaction_msgsASRFileGoal:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_interaction_msgs/ASRFileGoal'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_9ccba4b3d861d0e759312bec211e5f198eb11bd3838088906a7cba85ab56dd35'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 396
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 396
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    file: _py_str = ''
    lang_id: _py_str = ''
    grammar: _py_str = ''

    def encode(self):
        writer = _Writer(396)
        _write_Ros1Pal_interaction_msgsASRFileGoal(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 396)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_interaction_msgsASRFileGoal:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 12, 396))
        value = _read_Ros1Pal_interaction_msgsASRFileGoal(reader)
        reader.end()
        return value

_record_Ros1Pal_interaction_msgsASRFileGoal = Ros1Pal_interaction_msgsASRFileGoal

def _write_Ros1Pal_interaction_msgsASRFileGoal(writer, value):
    if type(value) is not Ros1Pal_interaction_msgsASRFileGoal:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.file
    _write_text(writer, _part0, 128)
    _part1 = value.lang_id
    _write_text(writer, _part1, 128)
    _part2 = value.grammar
    _write_text(writer, _part2, 128)
    if not 12 <= len(writer.data) - _start <= 396:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_interaction_msgsASRFileGoal(reader):
    _start = reader.position
    value = Ros1Pal_interaction_msgsASRFileGoal()
    value.file = _read_text(reader, 128)
    value.lang_id = _read_text(reader, 128)
    value.grammar = _read_text(reader, 128)
    if not 12 <= reader.position - _start <= 396:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_interaction_msgsASRFileResult:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_interaction_msgs/ASRFileResult'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_8fef2b5f288de2136bf3d58eca596fcb8d41c43e0eb428d5fac61cc0dfdc9db2'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 5104
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 5104
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    file: _py_str = ''
    msg: _py_str = ''
    recognised_utterances: _py_list[_record_Ros1Pal_interaction_msgsAsrresult] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(5104)
        _write_Ros1Pal_interaction_msgsASRFileResult(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 5104)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_interaction_msgsASRFileResult:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 12, 5104))
        value = _read_Ros1Pal_interaction_msgsASRFileResult(reader)
        reader.end()
        return value

_record_Ros1Pal_interaction_msgsASRFileResult = Ros1Pal_interaction_msgsASRFileResult

def _write_Ros1Pal_interaction_msgsASRFileResult(writer, value):
    if type(value) is not Ros1Pal_interaction_msgsASRFileResult:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.file
    _write_text(writer, _part0, 128)
    _part1 = value.msg
    _write_text(writer, _part1, 128)
    _part2 = value.recognised_utterances
    if type(_part2) not in (list, tuple):
        raise TypeError('array value required')
    _count2 = len(_part2)
    if _count2 > 4:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        _write_Ros1Pal_interaction_msgsAsrresult(writer, _element)
    if not 12 <= len(writer.data) - _start <= 5104:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_interaction_msgsASRFileResult(reader):
    _start = reader.position
    value = Ros1Pal_interaction_msgsASRFileResult()
    value.file = _read_text(reader, 128)
    value.msg = _read_text(reader, 128)
    value.recognised_utterances = [_read_Ros1Pal_interaction_msgsAsrresult(reader) for _ in range(_read_count(reader, 4, 25))]
    if not 12 <= reader.position - _start <= 5104:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_interaction_msgsASRFileFeedback:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_interaction_msgs/ASRFileFeedback'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_c5a53add76fa297f74af24e0ecb0d3dc68b3ce85eaecdff21a26a7441e2ad9c3'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 25
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1209
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1209
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    recognised_utterance: _record_Ros1Pal_interaction_msgsAsrresult = _field(default_factory=lambda: Ros1Pal_interaction_msgsAsrresult())

    def encode(self):
        writer = _Writer(1209)
        _write_Ros1Pal_interaction_msgsASRFileFeedback(writer, self)
        wire = writer.finish()
        return _wire(wire, 25, 1209)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_interaction_msgsASRFileFeedback:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 25, 1209))
        value = _read_Ros1Pal_interaction_msgsASRFileFeedback(reader)
        reader.end()
        return value

_record_Ros1Pal_interaction_msgsASRFileFeedback = Ros1Pal_interaction_msgsASRFileFeedback

def _write_Ros1Pal_interaction_msgsASRFileFeedback(writer, value):
    if type(value) is not Ros1Pal_interaction_msgsASRFileFeedback:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.recognised_utterance
    _write_Ros1Pal_interaction_msgsAsrresult(writer, _part0)
    if not 25 <= len(writer.data) - _start <= 1209:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_interaction_msgsASRFileFeedback(reader):
    _start = reader.position
    value = Ros1Pal_interaction_msgsASRFileFeedback()
    value.recognised_utterance = _read_Ros1Pal_interaction_msgsAsrresult(reader)
    if not 25 <= reader.position - _start <= 1209:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_interaction_msgsASRLangModelMngmt:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_interaction_msgs/ASRLangModelMngmt'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_9ef368d2c72d86f541952fd520429be4998fd28e46c32da1d60edc1cd63c3b09'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 5
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 133
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 133
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = [{'name': 'ENABLE', 'type': 'int8', 'native_type': 'int8', 'literal': '1', 'value': '1'},
     {'name': 'DISABLE', 'type': 'int8', 'native_type': 'int8', 'literal': '2', 'value': '2'},
     {'name': 'LOAD', 'type': 'int8', 'native_type': 'int8', 'literal': '3', 'value': '3'},
     {'name': 'UNLOAD', 'type': 'int8', 'native_type': 'int8', 'literal': '4', 'value': '4'}]
    ENABLE: _ClassVar = 1
    DISABLE: _ClassVar = 2
    LOAD: _ClassVar = 3
    UNLOAD: _ClassVar = 4
    action: _py_int = 0
    modelName: _py_str = ''

    def encode(self):
        writer = _Writer(133)
        _write_Ros1Pal_interaction_msgsASRLangModelMngmt(writer, self)
        wire = writer.finish()
        return _wire(wire, 5, 133)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_interaction_msgsASRLangModelMngmt:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 5, 133))
        value = _read_Ros1Pal_interaction_msgsASRLangModelMngmt(reader)
        reader.end()
        return value

_record_Ros1Pal_interaction_msgsASRLangModelMngmt = Ros1Pal_interaction_msgsASRLangModelMngmt

def _write_Ros1Pal_interaction_msgsASRLangModelMngmt(writer, value):
    if type(value) is not Ros1Pal_interaction_msgsASRLangModelMngmt:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.action
    writer.integer(_part0, 1, True)
    _part1 = value.modelName
    _write_text(writer, _part1, 128)
    if not 5 <= len(writer.data) - _start <= 133:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_interaction_msgsASRLangModelMngmt(reader):
    _start = reader.position
    value = Ros1Pal_interaction_msgsASRLangModelMngmt()
    value.action = reader.integer(1, True)
    value.modelName = _read_text(reader, 128)
    if not 5 <= reader.position - _start <= 133:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_interaction_msgsASRLanguage:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_interaction_msgs/ASRLanguage'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_227aee498814954d3800e631b8dce3a5fd3d22dc5437ec24b03b5f8cc48000eb'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 132
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 132
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    language: _py_str = ''

    def encode(self):
        writer = _Writer(132)
        _write_Ros1Pal_interaction_msgsASRLanguage(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 132)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_interaction_msgsASRLanguage:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 4, 132))
        value = _read_Ros1Pal_interaction_msgsASRLanguage(reader)
        reader.end()
        return value

_record_Ros1Pal_interaction_msgsASRLanguage = Ros1Pal_interaction_msgsASRLanguage

def _write_Ros1Pal_interaction_msgsASRLanguage(writer, value):
    if type(value) is not Ros1Pal_interaction_msgsASRLanguage:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.language
    _write_text(writer, _part0, 128)
    if not 4 <= len(writer.data) - _start <= 132:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_interaction_msgsASRLanguage(reader):
    _start = reader.position
    value = Ros1Pal_interaction_msgsASRLanguage()
    value.language = _read_text(reader, 128)
    if not 4 <= reader.position - _start <= 132:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_interaction_msgsASRSrvRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_interaction_msgs/ASRSrvRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_3a7fc134e8d1e0c32421ff0ad9831a892e7bc94b211d8309f8a2c2e99720e170'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 14
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 526
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 526
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = [{'name': 'ACTIVATION', 'type': 'int8', 'native_type': 'int8', 'literal': '1', 'value': '1'},
     {'name': 'GRAMMAR', 'type': 'int8', 'native_type': 'int8', 'literal': '2', 'value': '2'},
     {'name': 'LANGUAGE', 'type': 'int8', 'native_type': 'int8', 'literal': '3', 'value': '3'},
     {'name': 'STATUS', 'type': 'int8', 'native_type': 'int8', 'literal': '4', 'value': '4'},
     {'name': 'KWSPOTTING', 'type': 'int8', 'native_type': 'int8', 'literal': '5', 'value': '5'}]
    ACTIVATION: _ClassVar = 1
    GRAMMAR: _ClassVar = 2
    LANGUAGE: _ClassVar = 3
    STATUS: _ClassVar = 4
    KWSPOTTING: _ClassVar = 5
    requests: _py_list[_py_int] = _field(default_factory=lambda: [])
    activation: _record_Ros1Pal_interaction_msgsASRActivation = _field(default_factory=lambda: Ros1Pal_interaction_msgsASRActivation())
    model: _record_Ros1Pal_interaction_msgsASRLangModelMngmt = _field(default_factory=lambda: Ros1Pal_interaction_msgsASRLangModelMngmt())
    lang: _record_Ros1Pal_interaction_msgsASRLanguage = _field(default_factory=lambda: Ros1Pal_interaction_msgsASRLanguage())

    def encode(self):
        writer = _Writer(526)
        _write_Ros1Pal_interaction_msgsASRSrvRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 14, 526)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_interaction_msgsASRSrvRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 14, 526))
        value = _read_Ros1Pal_interaction_msgsASRSrvRequest(reader)
        reader.end()
        return value

_record_Ros1Pal_interaction_msgsASRSrvRequest = Ros1Pal_interaction_msgsASRSrvRequest

def _write_Ros1Pal_interaction_msgsASRSrvRequest(writer, value):
    if type(value) is not Ros1Pal_interaction_msgsASRSrvRequest:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.requests
    if type(_part0) not in (list, tuple):
        raise TypeError('array value required')
    _count0 = len(_part0)
    if _count0 > 256:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count0, 4)
    for _index in range(_count0):
        _element = _part0[_index]
        writer.integer(_element, 1, True)
    _part1 = value.activation
    _write_Ros1Pal_interaction_msgsASRActivation(writer, _part1)
    _part2 = value.model
    _write_Ros1Pal_interaction_msgsASRLangModelMngmt(writer, _part2)
    _part3 = value.lang
    _write_Ros1Pal_interaction_msgsASRLanguage(writer, _part3)
    if not 14 <= len(writer.data) - _start <= 526:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_interaction_msgsASRSrvRequest(reader):
    _start = reader.position
    value = Ros1Pal_interaction_msgsASRSrvRequest()
    value.requests = [reader.integer(1, True) for _ in range(_read_count(reader, 256, 1))]
    value.activation = _read_Ros1Pal_interaction_msgsASRActivation(reader)
    value.model = _read_Ros1Pal_interaction_msgsASRLangModelMngmt(reader)
    value.lang = _read_Ros1Pal_interaction_msgsASRLanguage(reader)
    if not 14 <= reader.position - _start <= 526:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_interaction_msgsASRServiceRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_interaction_msgs/ASRServiceRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_c78e78d5d88eb264ecc15c534da9e28e04bc6e3bb33685e24b9cf695aee73715'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 14
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 526
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 526
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    request: _record_Ros1Pal_interaction_msgsASRSrvRequest = _field(default_factory=lambda: Ros1Pal_interaction_msgsASRSrvRequest())

    def encode(self):
        writer = _Writer(526)
        _write_Ros1Pal_interaction_msgsASRServiceRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 14, 526)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_interaction_msgsASRServiceRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 14, 526))
        value = _read_Ros1Pal_interaction_msgsASRServiceRequest(reader)
        reader.end()
        return value

_record_Ros1Pal_interaction_msgsASRServiceRequest = Ros1Pal_interaction_msgsASRServiceRequest

def _write_Ros1Pal_interaction_msgsASRServiceRequest(writer, value):
    if type(value) is not Ros1Pal_interaction_msgsASRServiceRequest:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.request
    _write_Ros1Pal_interaction_msgsASRSrvRequest(writer, _part0)
    if not 14 <= len(writer.data) - _start <= 526:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_interaction_msgsASRServiceRequest(reader):
    _start = reader.position
    value = Ros1Pal_interaction_msgsASRServiceRequest()
    value.request = _read_Ros1Pal_interaction_msgsASRSrvRequest(reader)
    if not 14 <= reader.position - _start <= 526:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_interaction_msgsAudioDeviceDescription:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_interaction_msgs/AudioDeviceDescription'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_899a8393d0b03ca92891b0c60871b5e3a697750b036ef34b37709eed88139857'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 13
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 141
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 141
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = [{'name': 'SIGNED', 'type': 'int8', 'native_type': 'int8', 'literal': '0', 'value': '0'},
     {'name': 'UNSIGNED', 'type': 'int8', 'native_type': 'int8', 'literal': '1', 'value': '1'}]
    SIGNED: _ClassVar = 0
    UNSIGNED: _ClassVar = 1
    device_name: _py_str = ''
    sample_rate: _py_int = 0
    sample_size: _py_int = 0
    format: _py_int = 0
    buffer_size: _py_int = 0
    number_of_channels: _py_int = 0

    def encode(self):
        writer = _Writer(141)
        _write_Ros1Pal_interaction_msgsAudioDeviceDescription(writer, self)
        wire = writer.finish()
        return _wire(wire, 13, 141)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_interaction_msgsAudioDeviceDescription:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 13, 141))
        value = _read_Ros1Pal_interaction_msgsAudioDeviceDescription(reader)
        reader.end()
        return value

_record_Ros1Pal_interaction_msgsAudioDeviceDescription = Ros1Pal_interaction_msgsAudioDeviceDescription

def _write_Ros1Pal_interaction_msgsAudioDeviceDescription(writer, value):
    if type(value) is not Ros1Pal_interaction_msgsAudioDeviceDescription:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.device_name
    _write_text(writer, _part0, 128)
    _part1 = value.sample_rate
    writer.integer(_part1, 4, False)
    _part2 = value.sample_size
    writer.integer(_part2, 1, True)
    _part3 = value.format
    writer.integer(_part3, 1, True)
    _part4 = value.buffer_size
    writer.integer(_part4, 2, False)
    _part5 = value.number_of_channels
    writer.integer(_part5, 1, True)
    if not 13 <= len(writer.data) - _start <= 141:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_interaction_msgsAudioDeviceDescription(reader):
    _start = reader.position
    value = Ros1Pal_interaction_msgsAudioDeviceDescription()
    value.device_name = _read_text(reader, 128)
    value.sample_rate = reader.integer(4, False)
    value.sample_size = reader.integer(1, True)
    value.format = reader.integer(1, True)
    value.buffer_size = reader.integer(2, False)
    value.number_of_channels = reader.integer(1, True)
    if not 13 <= reader.position - _start <= 141:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_interaction_msgsASRStatus:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_interaction_msgs/ASRStatus'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_0469173f91448cb5069e27cab54cfd117d9a22d757e8a8303ac5cb1c53e7e985'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 26
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 538
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 538
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    active: _py_bool = False
    language: _py_str = ''
    enabled_grammar: _py_str = ''
    acoustic_env: _py_str = ''
    device: _record_Ros1Pal_interaction_msgsAudioDeviceDescription = _field(default_factory=lambda: Ros1Pal_interaction_msgsAudioDeviceDescription())

    def encode(self):
        writer = _Writer(538)
        _write_Ros1Pal_interaction_msgsASRStatus(writer, self)
        wire = writer.finish()
        return _wire(wire, 26, 538)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_interaction_msgsASRStatus:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 26, 538))
        value = _read_Ros1Pal_interaction_msgsASRStatus(reader)
        reader.end()
        return value

_record_Ros1Pal_interaction_msgsASRStatus = Ros1Pal_interaction_msgsASRStatus

def _write_Ros1Pal_interaction_msgsASRStatus(writer, value):
    if type(value) is not Ros1Pal_interaction_msgsASRStatus:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.active
    if type(_part0) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part0), 1)
    _part1 = value.language
    _write_text(writer, _part1, 128)
    _part2 = value.enabled_grammar
    _write_text(writer, _part2, 128)
    _part3 = value.acoustic_env
    _write_text(writer, _part3, 128)
    _part4 = value.device
    _write_Ros1Pal_interaction_msgsAudioDeviceDescription(writer, _part4)
    if not 26 <= len(writer.data) - _start <= 538:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_interaction_msgsASRStatus(reader):
    _start = reader.position
    value = Ros1Pal_interaction_msgsASRStatus()
    value.active = _read_bool(reader)
    value.language = _read_text(reader, 128)
    value.enabled_grammar = _read_text(reader, 128)
    value.acoustic_env = _read_text(reader, 128)
    value.device = _read_Ros1Pal_interaction_msgsAudioDeviceDescription(reader)
    if not 26 <= reader.position - _start <= 538:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_interaction_msgsASRSrvResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_interaction_msgs/ASRSrvResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_b0d47bec71896b9a6090ee0e99c5dad16272306b7b266a99e3da0db334e24d3a'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 34
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 802
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 802
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    status: _record_Ros1Pal_interaction_msgsASRStatus = _field(default_factory=lambda: Ros1Pal_interaction_msgsASRStatus())
    error_msg: _py_str = ''
    warn_msg: _py_str = ''

    def encode(self):
        writer = _Writer(802)
        _write_Ros1Pal_interaction_msgsASRSrvResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 34, 802)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_interaction_msgsASRSrvResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 34, 802))
        value = _read_Ros1Pal_interaction_msgsASRSrvResponse(reader)
        reader.end()
        return value

_record_Ros1Pal_interaction_msgsASRSrvResponse = Ros1Pal_interaction_msgsASRSrvResponse

def _write_Ros1Pal_interaction_msgsASRSrvResponse(writer, value):
    if type(value) is not Ros1Pal_interaction_msgsASRSrvResponse:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.status
    _write_Ros1Pal_interaction_msgsASRStatus(writer, _part0)
    _part1 = value.error_msg
    _write_text(writer, _part1, 128)
    _part2 = value.warn_msg
    _write_text(writer, _part2, 128)
    if not 34 <= len(writer.data) - _start <= 802:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_interaction_msgsASRSrvResponse(reader):
    _start = reader.position
    value = Ros1Pal_interaction_msgsASRSrvResponse()
    value.status = _read_Ros1Pal_interaction_msgsASRStatus(reader)
    value.error_msg = _read_text(reader, 128)
    value.warn_msg = _read_text(reader, 128)
    if not 34 <= reader.position - _start <= 802:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_interaction_msgsASRServiceResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_interaction_msgs/ASRServiceResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_bfa0a5701b04c4f637febfb3c24d5f49ebd690b82089ec88e21d7dca40028680'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 34
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 802
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 802
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    response: _record_Ros1Pal_interaction_msgsASRSrvResponse = _field(default_factory=lambda: Ros1Pal_interaction_msgsASRSrvResponse())

    def encode(self):
        writer = _Writer(802)
        _write_Ros1Pal_interaction_msgsASRServiceResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 34, 802)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_interaction_msgsASRServiceResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 34, 802))
        value = _read_Ros1Pal_interaction_msgsASRServiceResponse(reader)
        reader.end()
        return value

_record_Ros1Pal_interaction_msgsASRServiceResponse = Ros1Pal_interaction_msgsASRServiceResponse

def _write_Ros1Pal_interaction_msgsASRServiceResponse(writer, value):
    if type(value) is not Ros1Pal_interaction_msgsASRServiceResponse:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.response
    _write_Ros1Pal_interaction_msgsASRSrvResponse(writer, _part0)
    if not 34 <= len(writer.data) - _start <= 802:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_interaction_msgsASRServiceResponse(reader):
    _start = reader.position
    value = Ros1Pal_interaction_msgsASRServiceResponse()
    value.response = _read_Ros1Pal_interaction_msgsASRSrvResponse(reader)
    if not 34 <= reader.position - _start <= 802:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_interaction_msgsAudioPlayGoal:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_interaction_msgs/AudioPlayGoal'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_1c2b6894e5b00f204c3d36af18802e5b54e2950b2ef22d3294460f3e7bd84e30'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 5
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 133
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 133
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    file: _py_str = ''
    priority: _py_int = 0

    def encode(self):
        writer = _Writer(133)
        _write_Ros1Pal_interaction_msgsAudioPlayGoal(writer, self)
        wire = writer.finish()
        return _wire(wire, 5, 133)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_interaction_msgsAudioPlayGoal:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 5, 133))
        value = _read_Ros1Pal_interaction_msgsAudioPlayGoal(reader)
        reader.end()
        return value

_record_Ros1Pal_interaction_msgsAudioPlayGoal = Ros1Pal_interaction_msgsAudioPlayGoal

def _write_Ros1Pal_interaction_msgsAudioPlayGoal(writer, value):
    if type(value) is not Ros1Pal_interaction_msgsAudioPlayGoal:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.file
    _write_text(writer, _part0, 128)
    _part1 = value.priority
    writer.integer(_part1, 1, False)
    if not 5 <= len(writer.data) - _start <= 133:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_interaction_msgsAudioPlayGoal(reader):
    _start = reader.position
    value = Ros1Pal_interaction_msgsAudioPlayGoal()
    value.file = _read_text(reader, 128)
    value.priority = reader.integer(1, False)
    if not 5 <= reader.position - _start <= 133:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_interaction_msgsAudioPlayResult:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_interaction_msgs/AudioPlayResult'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_46d6efb4dbf5cca76894398daf8b70e0f6577f624e90dc088beeca147a4f91fe'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Pal_interaction_msgsAudioPlayResult(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_interaction_msgsAudioPlayResult:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Pal_interaction_msgsAudioPlayResult(reader)
        reader.end()
        return value

_record_Ros1Pal_interaction_msgsAudioPlayResult = Ros1Pal_interaction_msgsAudioPlayResult

def _write_Ros1Pal_interaction_msgsAudioPlayResult(writer, value):
    if type(value) is not Ros1Pal_interaction_msgsAudioPlayResult:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros1Pal_interaction_msgsAudioPlayResult(reader):
    _start = reader.position
    value = Ros1Pal_interaction_msgsAudioPlayResult()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_interaction_msgsAudioPlayFeedback:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_interaction_msgs/AudioPlayFeedback'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_8715716200235ab9076d7f152ef277236349ffb02f01b16ba5f10ede343729bd'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Pal_interaction_msgsAudioPlayFeedback(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_interaction_msgsAudioPlayFeedback:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Pal_interaction_msgsAudioPlayFeedback(reader)
        reader.end()
        return value

_record_Ros1Pal_interaction_msgsAudioPlayFeedback = Ros1Pal_interaction_msgsAudioPlayFeedback

def _write_Ros1Pal_interaction_msgsAudioPlayFeedback(writer, value):
    if type(value) is not Ros1Pal_interaction_msgsAudioPlayFeedback:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros1Pal_interaction_msgsAudioPlayFeedback(reader):
    _start = reader.position
    value = Ros1Pal_interaction_msgsAudioPlayFeedback()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_interaction_msgsAudioPlayerState:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_interaction_msgs/AudioPlayerState'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_01549954e3ca3bfb4dd7e5c82e8697d0a480d16757826cc4708266794ec85675'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 21
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 277
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 277
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros1Std_msgsHeader = _field(default_factory=lambda: Ros1Std_msgsHeader())
    isPlaying: _py_bool = False
    msg: _py_str = ''

    def encode(self):
        writer = _Writer(277)
        _write_Ros1Pal_interaction_msgsAudioPlayerState(writer, self)
        wire = writer.finish()
        return _wire(wire, 21, 277)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_interaction_msgsAudioPlayerState:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 21, 277))
        value = _read_Ros1Pal_interaction_msgsAudioPlayerState(reader)
        reader.end()
        return value

_record_Ros1Pal_interaction_msgsAudioPlayerState = Ros1Pal_interaction_msgsAudioPlayerState

def _write_Ros1Pal_interaction_msgsAudioPlayerState(writer, value):
    if type(value) is not Ros1Pal_interaction_msgsAudioPlayerState:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros1Std_msgsHeader(writer, _part0)
    _part1 = value.isPlaying
    if type(_part1) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part1), 1)
    _part2 = value.msg
    _write_text(writer, _part2, 128)
    if not 21 <= len(writer.data) - _start <= 277:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_interaction_msgsAudioPlayerState(reader):
    _start = reader.position
    value = Ros1Pal_interaction_msgsAudioPlayerState()
    value.header = _read_Ros1Std_msgsHeader(reader)
    value.isPlaying = _read_bool(reader)
    value.msg = _read_text(reader, 128)
    if not 21 <= reader.position - _start <= 277:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_interaction_msgsDirectionOfArrival:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_interaction_msgs/DirectionOfArrival'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_1569630ee3abd3caad9a14797d6381b68e764f0c00266d2de5c450f002c8f5fd'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 16
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 144
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 144
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    doa: _py_float = 0.0
    prob: _py_float = 0.0
    power: _py_float = 0.0
    metadoa: _py_str = ''

    def encode(self):
        writer = _Writer(144)
        _write_Ros1Pal_interaction_msgsDirectionOfArrival(writer, self)
        wire = writer.finish()
        return _wire(wire, 16, 144)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_interaction_msgsDirectionOfArrival:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 16, 144))
        value = _read_Ros1Pal_interaction_msgsDirectionOfArrival(reader)
        reader.end()
        return value

_record_Ros1Pal_interaction_msgsDirectionOfArrival = Ros1Pal_interaction_msgsDirectionOfArrival

def _write_Ros1Pal_interaction_msgsDirectionOfArrival(writer, value):
    if type(value) is not Ros1Pal_interaction_msgsDirectionOfArrival:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.doa
    writer.f32(_part0)
    _part1 = value.prob
    writer.f32(_part1)
    _part2 = value.power
    writer.f32(_part2)
    _part3 = value.metadoa
    _write_text(writer, _part3, 128)
    if not 16 <= len(writer.data) - _start <= 144:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_interaction_msgsDirectionOfArrival(reader):
    _start = reader.position
    value = Ros1Pal_interaction_msgsDirectionOfArrival()
    value.doa = reader.f32()
    value.prob = reader.f32()
    value.power = reader.f32()
    value.metadoa = _read_text(reader, 128)
    if not 16 <= reader.position - _start <= 144:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_interaction_msgsEnablingSoundLocalisation:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_interaction_msgs/EnablingSoundLocalisation'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_8df033349e2f5d7072336e535fc87c1ff6148ed15bc36cc952a99d133a69d495'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    enable: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Pal_interaction_msgsEnablingSoundLocalisation(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_interaction_msgsEnablingSoundLocalisation:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Pal_interaction_msgsEnablingSoundLocalisation(reader)
        reader.end()
        return value

_record_Ros1Pal_interaction_msgsEnablingSoundLocalisation = Ros1Pal_interaction_msgsEnablingSoundLocalisation

def _write_Ros1Pal_interaction_msgsEnablingSoundLocalisation(writer, value):
    if type(value) is not Ros1Pal_interaction_msgsEnablingSoundLocalisation:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.enable
    if type(_part0) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_interaction_msgsEnablingSoundLocalisation(reader):
    _start = reader.position
    value = Ros1Pal_interaction_msgsEnablingSoundLocalisation()
    value.enable = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_interaction_msgsI18nArgument:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_interaction_msgs/I18nArgument'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_2ca48fd9d8f6dc4a1bc9b69c33c407ea1d6c400f22ceff31f784f161f41f27fb'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 396
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 396
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    section: _py_str = ''
    key: _py_str = ''
    expanded: _py_str = ''

    def encode(self):
        writer = _Writer(396)
        _write_Ros1Pal_interaction_msgsI18nArgument(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 396)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_interaction_msgsI18nArgument:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 12, 396))
        value = _read_Ros1Pal_interaction_msgsI18nArgument(reader)
        reader.end()
        return value

_record_Ros1Pal_interaction_msgsI18nArgument = Ros1Pal_interaction_msgsI18nArgument

def _write_Ros1Pal_interaction_msgsI18nArgument(writer, value):
    if type(value) is not Ros1Pal_interaction_msgsI18nArgument:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.section
    _write_text(writer, _part0, 128)
    _part1 = value.key
    _write_text(writer, _part1, 128)
    _part2 = value.expanded
    _write_text(writer, _part2, 128)
    if not 12 <= len(writer.data) - _start <= 396:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_interaction_msgsI18nArgument(reader):
    _start = reader.position
    value = Ros1Pal_interaction_msgsI18nArgument()
    value.section = _read_text(reader, 128)
    value.key = _read_text(reader, 128)
    value.expanded = _read_text(reader, 128)
    if not 12 <= reader.position - _start <= 396:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_interaction_msgsI18nText:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_interaction_msgs/I18nText'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_b3e1cb48129a6ed9cad7f0b543c770aa8b7b0362d00e71185bb6b5ad8c38816c'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 16
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1984
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1984
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    section: _py_str = ''
    key: _py_str = ''
    lang_id: _py_str = ''
    arguments: _py_list[_record_Ros1Pal_interaction_msgsI18nArgument] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(1984)
        _write_Ros1Pal_interaction_msgsI18nText(writer, self)
        wire = writer.finish()
        return _wire(wire, 16, 1984)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_interaction_msgsI18nText:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 16, 1984))
        value = _read_Ros1Pal_interaction_msgsI18nText(reader)
        reader.end()
        return value

_record_Ros1Pal_interaction_msgsI18nText = Ros1Pal_interaction_msgsI18nText

def _write_Ros1Pal_interaction_msgsI18nText(writer, value):
    if type(value) is not Ros1Pal_interaction_msgsI18nText:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.section
    _write_text(writer, _part0, 128)
    _part1 = value.key
    _write_text(writer, _part1, 128)
    _part2 = value.lang_id
    _write_text(writer, _part2, 128)
    _part3 = value.arguments
    if type(_part3) not in (list, tuple):
        raise TypeError('array value required')
    _count3 = len(_part3)
    if _count3 > 4:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count3, 4)
    for _index in range(_count3):
        _element = _part3[_index]
        _write_Ros1Pal_interaction_msgsI18nArgument(writer, _element)
    if not 16 <= len(writer.data) - _start <= 1984:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_interaction_msgsI18nText(reader):
    _start = reader.position
    value = Ros1Pal_interaction_msgsI18nText()
    value.section = _read_text(reader, 128)
    value.key = _read_text(reader, 128)
    value.lang_id = _read_text(reader, 128)
    value.arguments = [_read_Ros1Pal_interaction_msgsI18nArgument(reader) for _ in range(_read_count(reader, 4, 12))]
    if not 16 <= reader.position - _start <= 1984:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_interaction_msgsTtsText:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_interaction_msgs/TtsText'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_0bf14fabb5b62c5341e606b8ac9f6abaf74a85033a10e9a8f1e5b8bdfe178a87'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 264
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 264
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    text: _py_str = ''
    lang_id: _py_str = ''

    def encode(self):
        writer = _Writer(264)
        _write_Ros1Pal_interaction_msgsTtsText(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 264)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_interaction_msgsTtsText:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 264))
        value = _read_Ros1Pal_interaction_msgsTtsText(reader)
        reader.end()
        return value

_record_Ros1Pal_interaction_msgsTtsText = Ros1Pal_interaction_msgsTtsText

def _write_Ros1Pal_interaction_msgsTtsText(writer, value):
    if type(value) is not Ros1Pal_interaction_msgsTtsText:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.text
    _write_text(writer, _part0, 128)
    _part1 = value.lang_id
    _write_text(writer, _part1, 128)
    if not 8 <= len(writer.data) - _start <= 264:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_interaction_msgsTtsText(reader):
    _start = reader.position
    value = Ros1Pal_interaction_msgsTtsText()
    value.text = _read_text(reader, 128)
    value.lang_id = _read_text(reader, 128)
    if not 8 <= reader.position - _start <= 264:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_interaction_msgsGetSpeechDurationRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_interaction_msgs/GetSpeechDurationRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_0926f4515183e6c9fd4cd5b20c6aa53014ba7dbd4e64113c9b6c514123ba7dc5'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 24
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 2248
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 2248
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    text: _record_Ros1Pal_interaction_msgsI18nText = _field(default_factory=lambda: Ros1Pal_interaction_msgsI18nText())
    rawtext: _record_Ros1Pal_interaction_msgsTtsText = _field(default_factory=lambda: Ros1Pal_interaction_msgsTtsText())

    def encode(self):
        writer = _Writer(2248)
        _write_Ros1Pal_interaction_msgsGetSpeechDurationRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 24, 2248)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_interaction_msgsGetSpeechDurationRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 24, 2248))
        value = _read_Ros1Pal_interaction_msgsGetSpeechDurationRequest(reader)
        reader.end()
        return value

_record_Ros1Pal_interaction_msgsGetSpeechDurationRequest = Ros1Pal_interaction_msgsGetSpeechDurationRequest

def _write_Ros1Pal_interaction_msgsGetSpeechDurationRequest(writer, value):
    if type(value) is not Ros1Pal_interaction_msgsGetSpeechDurationRequest:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.text
    _write_Ros1Pal_interaction_msgsI18nText(writer, _part0)
    _part1 = value.rawtext
    _write_Ros1Pal_interaction_msgsTtsText(writer, _part1)
    if not 24 <= len(writer.data) - _start <= 2248:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_interaction_msgsGetSpeechDurationRequest(reader):
    _start = reader.position
    value = Ros1Pal_interaction_msgsGetSpeechDurationRequest()
    value.text = _read_Ros1Pal_interaction_msgsI18nText(reader)
    value.rawtext = _read_Ros1Pal_interaction_msgsTtsText(reader)
    if not 24 <= reader.position - _start <= 2248:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_interaction_msgsGetSpeechDurationResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_interaction_msgs/GetSpeechDurationResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_44379b24ddf4582ec184a0da7993d27b9f4ec5d430a129468bf8aef6d5437578'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 9
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 2249
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 2249
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    ok: _py_bool = False
    words: _py_list[_py_str] = _field(default_factory=lambda: [])
    word_durations: _py_list[_record_Ros1Duration] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(2249)
        _write_Ros1Pal_interaction_msgsGetSpeechDurationResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 9, 2249)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_interaction_msgsGetSpeechDurationResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 9, 2249))
        value = _read_Ros1Pal_interaction_msgsGetSpeechDurationResponse(reader)
        reader.end()
        return value

_record_Ros1Pal_interaction_msgsGetSpeechDurationResponse = Ros1Pal_interaction_msgsGetSpeechDurationResponse

def _write_Ros1Pal_interaction_msgsGetSpeechDurationResponse(writer, value):
    if type(value) is not Ros1Pal_interaction_msgsGetSpeechDurationResponse:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.ok
    if type(_part0) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part0), 1)
    _part1 = value.words
    if type(_part1) not in (list, tuple):
        raise TypeError('array value required')
    _count1 = len(_part1)
    if _count1 > 16:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        _write_text(writer, _element, 128)
    _part2 = value.word_durations
    if type(_part2) not in (list, tuple):
        raise TypeError('array value required')
    _count2 = len(_part2)
    if _count2 > 16:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        _write_Ros1Duration(writer, _element)
    if not 9 <= len(writer.data) - _start <= 2249:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_interaction_msgsGetSpeechDurationResponse(reader):
    _start = reader.position
    value = Ros1Pal_interaction_msgsGetSpeechDurationResponse()
    value.ok = _read_bool(reader)
    value.words = [_read_text(reader, 128) for _ in range(_read_count(reader, 16, 4))]
    value.word_durations = [_read_Ros1Duration(reader) for _ in range(_read_count(reader, 16, 8))]
    if not 9 <= reader.position - _start <= 2249:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_interaction_msgsInputArgument:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_interaction_msgs/InputArgument'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_96c3c0967199a746bf47ffd146123f31ec2f1949b7f3a343cad3825b8b1e8dd0'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 264
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 264
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    key: _py_str = ''
    value: _py_str = ''

    def encode(self):
        writer = _Writer(264)
        _write_Ros1Pal_interaction_msgsInputArgument(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 264)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_interaction_msgsInputArgument:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 264))
        value = _read_Ros1Pal_interaction_msgsInputArgument(reader)
        reader.end()
        return value

_record_Ros1Pal_interaction_msgsInputArgument = Ros1Pal_interaction_msgsInputArgument

def _write_Ros1Pal_interaction_msgsInputArgument(writer, value):
    if type(value) is not Ros1Pal_interaction_msgsInputArgument:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.key
    _write_text(writer, _part0, 128)
    _part1 = value.value
    _write_text(writer, _part1, 128)
    if not 8 <= len(writer.data) - _start <= 264:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_interaction_msgsInputArgument(reader):
    _start = reader.position
    value = Ros1Pal_interaction_msgsInputArgument()
    value.key = _read_text(reader, 128)
    value.value = _read_text(reader, 128)
    if not 8 <= reader.position - _start <= 264:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_interaction_msgsInput:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_interaction_msgs/Input'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_11478aeb5c676f50680ee5c4e75973b10cec5df40f09cbb8573ddad4eb91d307'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1192
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1192
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = [{'name': 'INPUT_ACCEPT',
      'type': 'string',
      'native_type': 'string',
      'literal': 'INPUT_ACCEPT',
      'value': 'INPUT_ACCEPT'},
     {'name': 'INPUT_REJECT',
      'type': 'string',
      'native_type': 'string',
      'literal': 'INPUT_REJECT',
      'value': 'INPUT_REJECT'},
     {'name': 'INPUT_CANCEL',
      'type': 'string',
      'native_type': 'string',
      'literal': 'INPUT_CANCEL',
      'value': 'INPUT_CANCEL'},
     {'name': 'OK', 'type': 'string', 'native_type': 'string', 'literal': 'ok', 'value': 'ok'},
     {'name': 'YES', 'type': 'string', 'native_type': 'string', 'literal': 'yes', 'value': 'yes'},
     {'name': 'NO', 'type': 'string', 'native_type': 'string', 'literal': 'no', 'value': 'no'},
     {'name': 'CANCEL',
      'type': 'string',
      'native_type': 'string',
      'literal': 'cancel',
      'value': 'cancel'},
     {'name': 'ABORT', 'type': 'string', 'native_type': 'string', 'literal': 'abort', 'value': 'abort'}]
    INPUT_ACCEPT: _ClassVar = 'INPUT_ACCEPT'
    INPUT_REJECT: _ClassVar = 'INPUT_REJECT'
    INPUT_CANCEL: _ClassVar = 'INPUT_CANCEL'
    OK: _ClassVar = 'ok'
    YES: _ClassVar = 'yes'
    NO: _ClassVar = 'no'
    CANCEL: _ClassVar = 'cancel'
    ABORT: _ClassVar = 'abort'
    action: _py_str = ''
    args: _py_list[_record_Ros1Pal_interaction_msgsInputArgument] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(1192)
        _write_Ros1Pal_interaction_msgsInput(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 1192)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_interaction_msgsInput:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 1192))
        value = _read_Ros1Pal_interaction_msgsInput(reader)
        reader.end()
        return value

_record_Ros1Pal_interaction_msgsInput = Ros1Pal_interaction_msgsInput

def _write_Ros1Pal_interaction_msgsInput(writer, value):
    if type(value) is not Ros1Pal_interaction_msgsInput:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.action
    _write_text(writer, _part0, 128)
    _part1 = value.args
    if type(_part1) not in (list, tuple):
        raise TypeError('array value required')
    _count1 = len(_part1)
    if _count1 > 4:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        _write_Ros1Pal_interaction_msgsInputArgument(writer, _element)
    if not 8 <= len(writer.data) - _start <= 1192:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_interaction_msgsInput(reader):
    _start = reader.position
    value = Ros1Pal_interaction_msgsInput()
    value.action = _read_text(reader, 128)
    value.args = [_read_Ros1Pal_interaction_msgsInputArgument(reader) for _ in range(_read_count(reader, 4, 8))]
    if not 8 <= reader.position - _start <= 1192:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_interaction_msgsSoundGoal:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_interaction_msgs/SoundGoal'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_07b9c59deb5669b601a4e02708bd14d16a19263edde6f8fef3a4781724a4f3db'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 16
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 272
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 272
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    text: _py_str = ''
    lang_id: _py_str = ''
    wait_before_speaking: _record_Ros1Duration = _field(default_factory=lambda: Ros1Duration())

    def encode(self):
        writer = _Writer(272)
        _write_Ros1Pal_interaction_msgsSoundGoal(writer, self)
        wire = writer.finish()
        return _wire(wire, 16, 272)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_interaction_msgsSoundGoal:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 16, 272))
        value = _read_Ros1Pal_interaction_msgsSoundGoal(reader)
        reader.end()
        return value

_record_Ros1Pal_interaction_msgsSoundGoal = Ros1Pal_interaction_msgsSoundGoal

def _write_Ros1Pal_interaction_msgsSoundGoal(writer, value):
    if type(value) is not Ros1Pal_interaction_msgsSoundGoal:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.text
    _write_text(writer, _part0, 128)
    _part1 = value.lang_id
    _write_text(writer, _part1, 128)
    _part2 = value.wait_before_speaking
    _write_Ros1Duration(writer, _part2)
    if not 16 <= len(writer.data) - _start <= 272:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_interaction_msgsSoundGoal(reader):
    _start = reader.position
    value = Ros1Pal_interaction_msgsSoundGoal()
    value.text = _read_text(reader, 128)
    value.lang_id = _read_text(reader, 128)
    value.wait_before_speaking = _read_Ros1Duration(reader)
    if not 16 <= reader.position - _start <= 272:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_interaction_msgsSoundResult:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_interaction_msgs/SoundResult'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_53c3ab50649a2ffe113e4ae246aa05736090d42f5a0158f2878292319ee89a86'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 132
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 132
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    text: _py_str = ''

    def encode(self):
        writer = _Writer(132)
        _write_Ros1Pal_interaction_msgsSoundResult(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 132)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_interaction_msgsSoundResult:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 4, 132))
        value = _read_Ros1Pal_interaction_msgsSoundResult(reader)
        reader.end()
        return value

_record_Ros1Pal_interaction_msgsSoundResult = Ros1Pal_interaction_msgsSoundResult

def _write_Ros1Pal_interaction_msgsSoundResult(writer, value):
    if type(value) is not Ros1Pal_interaction_msgsSoundResult:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.text
    _write_text(writer, _part0, 128)
    if not 4 <= len(writer.data) - _start <= 132:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_interaction_msgsSoundResult(reader):
    _start = reader.position
    value = Ros1Pal_interaction_msgsSoundResult()
    value.text = _read_text(reader, 128)
    if not 4 <= reader.position - _start <= 132:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_interaction_msgsSoundFeedback:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_interaction_msgs/SoundFeedback'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_e9a77075706815852fbf5684df54d9d655925f7fecc7caa407d9076adc645d7d'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Pal_interaction_msgsSoundFeedback(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_interaction_msgsSoundFeedback:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Pal_interaction_msgsSoundFeedback(reader)
        reader.end()
        return value

_record_Ros1Pal_interaction_msgsSoundFeedback = Ros1Pal_interaction_msgsSoundFeedback

def _write_Ros1Pal_interaction_msgsSoundFeedback(writer, value):
    if type(value) is not Ros1Pal_interaction_msgsSoundFeedback:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros1Pal_interaction_msgsSoundFeedback(reader):
    _start = reader.position
    value = Ros1Pal_interaction_msgsSoundFeedback()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_interaction_msgsSoundLocalisationServiceRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_interaction_msgs/SoundLocalisationServiceRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_e7505ba44b9dc511311f5609c1618a1214362063600b32e2057dbe9cc2d32feb'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    enabling: _record_Ros1Pal_interaction_msgsEnablingSoundLocalisation = (
        _field(default_factory=lambda: Ros1Pal_interaction_msgsEnablingSoundLocalisation())
    )

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Pal_interaction_msgsSoundLocalisationServiceRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_interaction_msgsSoundLocalisationServiceRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Pal_interaction_msgsSoundLocalisationServiceRequest(reader)
        reader.end()
        return value

_record_Ros1Pal_interaction_msgsSoundLocalisationServiceRequest = Ros1Pal_interaction_msgsSoundLocalisationServiceRequest

def _write_Ros1Pal_interaction_msgsSoundLocalisationServiceRequest(writer, value):
    if type(value) is not Ros1Pal_interaction_msgsSoundLocalisationServiceRequest:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.enabling
    _write_Ros1Pal_interaction_msgsEnablingSoundLocalisation(writer, _part0)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_interaction_msgsSoundLocalisationServiceRequest(reader):
    _start = reader.position
    value = Ros1Pal_interaction_msgsSoundLocalisationServiceRequest()
    value.enabling = _read_Ros1Pal_interaction_msgsEnablingSoundLocalisation(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_interaction_msgsSoundLocalisationServiceResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_interaction_msgs/SoundLocalisationServiceResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_205fe5e2195345e29bac8477e95059862a44b476a359d808551427941c64ad6e'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Pal_interaction_msgsSoundLocalisationServiceResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_interaction_msgsSoundLocalisationServiceResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Pal_interaction_msgsSoundLocalisationServiceResponse(reader)
        reader.end()
        return value

_record_Ros1Pal_interaction_msgsSoundLocalisationServiceResponse = Ros1Pal_interaction_msgsSoundLocalisationServiceResponse

def _write_Ros1Pal_interaction_msgsSoundLocalisationServiceResponse(writer, value):
    if type(value) is not Ros1Pal_interaction_msgsSoundLocalisationServiceResponse:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros1Pal_interaction_msgsSoundLocalisationServiceResponse(reader):
    _start = reader.position
    value = Ros1Pal_interaction_msgsSoundLocalisationServiceResponse()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_interaction_msgsTTSstate:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_interaction_msgs/TTSstate'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_b9269838ab729ac39efc69c373314419ace1b43a2bf47176c822671aba9d9987'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 5
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 133
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 133
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    isSpeaking: _py_bool = False
    text: _py_str = ''

    def encode(self):
        writer = _Writer(133)
        _write_Ros1Pal_interaction_msgsTTSstate(writer, self)
        wire = writer.finish()
        return _wire(wire, 5, 133)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_interaction_msgsTTSstate:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 5, 133))
        value = _read_Ros1Pal_interaction_msgsTTSstate(reader)
        reader.end()
        return value

_record_Ros1Pal_interaction_msgsTTSstate = Ros1Pal_interaction_msgsTTSstate

def _write_Ros1Pal_interaction_msgsTTSstate(writer, value):
    if type(value) is not Ros1Pal_interaction_msgsTTSstate:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.isSpeaking
    if type(_part0) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part0), 1)
    _part1 = value.text
    _write_text(writer, _part1, 128)
    if not 5 <= len(writer.data) - _start <= 133:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_interaction_msgsTTSstate(reader):
    _start = reader.position
    value = Ros1Pal_interaction_msgsTTSstate()
    value.isSpeaking = _read_bool(reader)
    value.text = _read_text(reader, 128)
    if not 5 <= reader.position - _start <= 133:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_interaction_msgsTtsGoal:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_interaction_msgs/TtsGoal'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_d128a99394120e1688e4feb9906b033af53982dbf12040604502aeb8f59304c7'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 36
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 2388
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 2388
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    text: _record_Ros1Pal_interaction_msgsI18nText = _field(default_factory=lambda: Ros1Pal_interaction_msgsI18nText())
    rawtext: _record_Ros1Pal_interaction_msgsTtsText = _field(default_factory=lambda: Ros1Pal_interaction_msgsTtsText())
    speakerName: _py_str = ''
    wait_before_speaking: _py_float = 0.0

    def encode(self):
        writer = _Writer(2388)
        _write_Ros1Pal_interaction_msgsTtsGoal(writer, self)
        wire = writer.finish()
        return _wire(wire, 36, 2388)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_interaction_msgsTtsGoal:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 36, 2388))
        value = _read_Ros1Pal_interaction_msgsTtsGoal(reader)
        reader.end()
        return value

_record_Ros1Pal_interaction_msgsTtsGoal = Ros1Pal_interaction_msgsTtsGoal

def _write_Ros1Pal_interaction_msgsTtsGoal(writer, value):
    if type(value) is not Ros1Pal_interaction_msgsTtsGoal:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.text
    _write_Ros1Pal_interaction_msgsI18nText(writer, _part0)
    _part1 = value.rawtext
    _write_Ros1Pal_interaction_msgsTtsText(writer, _part1)
    _part2 = value.speakerName
    _write_text(writer, _part2, 128)
    _part3 = value.wait_before_speaking
    writer.f64(_part3)
    if not 36 <= len(writer.data) - _start <= 2388:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_interaction_msgsTtsGoal(reader):
    _start = reader.position
    value = Ros1Pal_interaction_msgsTtsGoal()
    value.text = _read_Ros1Pal_interaction_msgsI18nText(reader)
    value.rawtext = _read_Ros1Pal_interaction_msgsTtsText(reader)
    value.speakerName = _read_text(reader, 128)
    value.wait_before_speaking = reader.f64()
    if not 36 <= reader.position - _start <= 2388:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_interaction_msgsTtsResult:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_interaction_msgs/TtsResult'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_74f6eebecfd7e0e50e48ca3393fc0f9e9e24baec834bf39cb30455e9f0d9cf56'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 264
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 264
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    text: _py_str = ''
    msg: _py_str = ''

    def encode(self):
        writer = _Writer(264)
        _write_Ros1Pal_interaction_msgsTtsResult(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 264)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_interaction_msgsTtsResult:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 264))
        value = _read_Ros1Pal_interaction_msgsTtsResult(reader)
        reader.end()
        return value

_record_Ros1Pal_interaction_msgsTtsResult = Ros1Pal_interaction_msgsTtsResult

def _write_Ros1Pal_interaction_msgsTtsResult(writer, value):
    if type(value) is not Ros1Pal_interaction_msgsTtsResult:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.text
    _write_text(writer, _part0, 128)
    _part1 = value.msg
    _write_text(writer, _part1, 128)
    if not 8 <= len(writer.data) - _start <= 264:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_interaction_msgsTtsResult(reader):
    _start = reader.position
    value = Ros1Pal_interaction_msgsTtsResult()
    value.text = _read_text(reader, 128)
    value.msg = _read_text(reader, 128)
    if not 8 <= reader.position - _start <= 264:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_interaction_msgsTtsMark:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_interaction_msgs/TtsMark'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_4f92d66f3ec5bc7645da4cb0dabce2d662ebffe13a67c999c5cf3d771f11fc95'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 4364
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 4364
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    id: _py_str = ''
    keys: _py_list[_py_str] = _field(default_factory=lambda: [])
    value: _py_list[_py_str] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(4364)
        _write_Ros1Pal_interaction_msgsTtsMark(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 4364)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_interaction_msgsTtsMark:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 12, 4364))
        value = _read_Ros1Pal_interaction_msgsTtsMark(reader)
        reader.end()
        return value

_record_Ros1Pal_interaction_msgsTtsMark = Ros1Pal_interaction_msgsTtsMark

def _write_Ros1Pal_interaction_msgsTtsMark(writer, value):
    if type(value) is not Ros1Pal_interaction_msgsTtsMark:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.id
    _write_text(writer, _part0, 128)
    _part1 = value.keys
    if type(_part1) not in (list, tuple):
        raise TypeError('array value required')
    _count1 = len(_part1)
    if _count1 > 16:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        _write_text(writer, _element, 128)
    _part2 = value.value
    if type(_part2) not in (list, tuple):
        raise TypeError('array value required')
    _count2 = len(_part2)
    if _count2 > 16:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        _write_text(writer, _element, 128)
    if not 12 <= len(writer.data) - _start <= 4364:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_interaction_msgsTtsMark(reader):
    _start = reader.position
    value = Ros1Pal_interaction_msgsTtsMark()
    value.id = _read_text(reader, 128)
    value.keys = [_read_text(reader, 128) for _ in range(_read_count(reader, 16, 4))]
    value.value = [_read_text(reader, 128) for _ in range(_read_count(reader, 16, 4))]
    if not 12 <= reader.position - _start <= 4364:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_interaction_msgsTtsFeedback:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_interaction_msgs/TtsFeedback'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_3154aa11cda4bc9750910ea8283b14106fc992d9b4f99055bdefd226bf784894'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 34
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 4770
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 4770
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = [{'name': 'TTS_EVENT_INITIALIZATION',
      'type': 'uint16',
      'native_type': 'uint16',
      'literal': '1',
      'value': '1'},
     {'name': 'TTS_EVENT_SHUTDOWN',
      'type': 'uint16',
      'native_type': 'uint16',
      'literal': '2',
      'value': '2'},
     {'name': 'TTS_EVENT_SYNCHRONIZATION',
      'type': 'uint16',
      'native_type': 'uint16',
      'literal': '4',
      'value': '4'},
     {'name': 'TTS_EVENT_FINISHED_PLAYING_UTTERANCE',
      'type': 'uint16',
      'native_type': 'uint16',
      'literal': '8',
      'value': '8'},
     {'name': 'TTS_EVENT_MARK',
      'type': 'uint16',
      'native_type': 'uint16',
      'literal': '16',
      'value': '16'},
     {'name': 'TTS_EVENT_STARTED_PLAYING_WORD',
      'type': 'uint16',
      'native_type': 'uint16',
      'literal': '32',
      'value': '32'},
     {'name': 'TTS_EVENT_FINISHED_PLAYING_PHRASE',
      'type': 'uint16',
      'native_type': 'uint16',
      'literal': '64',
      'value': '64'},
     {'name': 'TTS_EVENT_FINISHED_PLAYING_SENTENCE',
      'type': 'uint16',
      'native_type': 'uint16',
      'literal': '128',
      'value': '128'},
     {'name': 'TTS_EVENT_VISEME',
      'type': 'uint16',
      'native_type': 'uint16',
      'literal': '256',
      'value': '256'}]
    TTS_EVENT_INITIALIZATION: _ClassVar = 1
    TTS_EVENT_SHUTDOWN: _ClassVar = 2
    TTS_EVENT_SYNCHRONIZATION: _ClassVar = 4
    TTS_EVENT_FINISHED_PLAYING_UTTERANCE: _ClassVar = 8
    TTS_EVENT_MARK: _ClassVar = 16
    TTS_EVENT_STARTED_PLAYING_WORD: _ClassVar = 32
    TTS_EVENT_FINISHED_PLAYING_PHRASE: _ClassVar = 64
    TTS_EVENT_FINISHED_PLAYING_SENTENCE: _ClassVar = 128
    TTS_EVENT_VISEME: _ClassVar = 256
    event_type: _py_int = 0
    timestamp: _record_Ros1Time = _field(default_factory=lambda: Ros1Time())
    text_said: _py_str = ''
    next_word: _py_str = ''
    viseme_id: _py_str = ''
    marks: _record_Ros1Pal_interaction_msgsTtsMark = _field(default_factory=lambda: Ros1Pal_interaction_msgsTtsMark())

    def encode(self):
        writer = _Writer(4770)
        _write_Ros1Pal_interaction_msgsTtsFeedback(writer, self)
        wire = writer.finish()
        return _wire(wire, 34, 4770)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_interaction_msgsTtsFeedback:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 34, 4770))
        value = _read_Ros1Pal_interaction_msgsTtsFeedback(reader)
        reader.end()
        return value

_record_Ros1Pal_interaction_msgsTtsFeedback = Ros1Pal_interaction_msgsTtsFeedback

def _write_Ros1Pal_interaction_msgsTtsFeedback(writer, value):
    if type(value) is not Ros1Pal_interaction_msgsTtsFeedback:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.event_type
    writer.integer(_part0, 2, False)
    _part1 = value.timestamp
    _write_Ros1Time(writer, _part1)
    _part2 = value.text_said
    _write_text(writer, _part2, 128)
    _part3 = value.next_word
    _write_text(writer, _part3, 128)
    _part4 = value.viseme_id
    _write_text(writer, _part4, 128)
    _part5 = value.marks
    _write_Ros1Pal_interaction_msgsTtsMark(writer, _part5)
    if not 34 <= len(writer.data) - _start <= 4770:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_interaction_msgsTtsFeedback(reader):
    _start = reader.position
    value = Ros1Pal_interaction_msgsTtsFeedback()
    value.event_type = reader.integer(2, False)
    value.timestamp = _read_Ros1Time(reader)
    value.text_said = _read_text(reader, 128)
    value.next_word = _read_text(reader, 128)
    value.viseme_id = _read_text(reader, 128)
    value.marks = _read_Ros1Pal_interaction_msgsTtsMark(reader)
    if not 34 <= reader.position - _start <= 4770:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_interaction_msgsVoiceActivity:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_interaction_msgs/VoiceActivity'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_c33952dbed35f2e6e08dd4dd8b7adf5c71a52106e2b274b988ec3218648b42a7'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    isSpeech: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Pal_interaction_msgsVoiceActivity(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_interaction_msgsVoiceActivity:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Pal_interaction_msgsVoiceActivity(reader)
        reader.end()
        return value

_record_Ros1Pal_interaction_msgsVoiceActivity = Ros1Pal_interaction_msgsVoiceActivity

def _write_Ros1Pal_interaction_msgsVoiceActivity(writer, value):
    if type(value) is not Ros1Pal_interaction_msgsVoiceActivity:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.isSpeech
    if type(_part0) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_interaction_msgsVoiceActivity(reader):
    _start = reader.position
    value = Ros1Pal_interaction_msgsVoiceActivity()
    value.isSpeech = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_interaction_msgsWebGuiEvent:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_interaction_msgs/WebGuiEvent'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_fb8030a4cb371da5dae852d62b28d8e7b03c3d37f0f6390c904ef3dc84084e23'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 264
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 264
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    name: _py_str = ''
    arg: _py_str = ''

    def encode(self):
        writer = _Writer(264)
        _write_Ros1Pal_interaction_msgsWebGuiEvent(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 264)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_interaction_msgsWebGuiEvent:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 264))
        value = _read_Ros1Pal_interaction_msgsWebGuiEvent(reader)
        reader.end()
        return value

_record_Ros1Pal_interaction_msgsWebGuiEvent = Ros1Pal_interaction_msgsWebGuiEvent

def _write_Ros1Pal_interaction_msgsWebGuiEvent(writer, value):
    if type(value) is not Ros1Pal_interaction_msgsWebGuiEvent:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.name
    _write_text(writer, _part0, 128)
    _part1 = value.arg
    _write_text(writer, _part1, 128)
    if not 8 <= len(writer.data) - _start <= 264:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_interaction_msgsWebGuiEvent(reader):
    _start = reader.position
    value = Ros1Pal_interaction_msgsWebGuiEvent()
    value.name = _read_text(reader, 128)
    value.arg = _read_text(reader, 128)
    if not 8 <= reader.position - _start <= 264:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_interaction_msgsAsrupdate:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_interaction_msgs/asrupdate'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_34584358ab6faa36c96fbbe2de2bef7cba7ae6eb5879cd6b676a1826fb154fda'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 17
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 529
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 529
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    language: _py_str = ''
    enable_grammar: _py_str = ''
    disable_grammar: _py_str = ''
    acousticenv: _py_str = ''
    active: _py_bool = False

    def encode(self):
        writer = _Writer(529)
        _write_Ros1Pal_interaction_msgsAsrupdate(writer, self)
        wire = writer.finish()
        return _wire(wire, 17, 529)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_interaction_msgsAsrupdate:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 17, 529))
        value = _read_Ros1Pal_interaction_msgsAsrupdate(reader)
        reader.end()
        return value

_record_Ros1Pal_interaction_msgsAsrupdate = Ros1Pal_interaction_msgsAsrupdate

def _write_Ros1Pal_interaction_msgsAsrupdate(writer, value):
    if type(value) is not Ros1Pal_interaction_msgsAsrupdate:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.language
    _write_text(writer, _part0, 128)
    _part1 = value.enable_grammar
    _write_text(writer, _part1, 128)
    _part2 = value.disable_grammar
    _write_text(writer, _part2, 128)
    _part3 = value.acousticenv
    _write_text(writer, _part3, 128)
    _part4 = value.active
    if type(_part4) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part4), 1)
    if not 17 <= len(writer.data) - _start <= 529:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_interaction_msgsAsrupdate(reader):
    _start = reader.position
    value = Ros1Pal_interaction_msgsAsrupdate()
    value.language = _read_text(reader, 128)
    value.enable_grammar = _read_text(reader, 128)
    value.disable_grammar = _read_text(reader, 128)
    value.acousticenv = _read_text(reader, 128)
    value.active = _read_bool(reader)
    if not 17 <= reader.position - _start <= 529:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_interaction_msgsAudiosignal:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_interaction_msgs/audiosignal'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_f70d9a987e0f5443060a55d2f617d9a8fc9e59fe110a9acd256a186b64e5e809'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 264
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 264
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    channel0: _py_list[_py_float] = _field(default_factory=lambda: [])
    channel1: _py_list[_py_float] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(264)
        _write_Ros1Pal_interaction_msgsAudiosignal(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 264)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_interaction_msgsAudiosignal:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 264))
        value = _read_Ros1Pal_interaction_msgsAudiosignal(reader)
        reader.end()
        return value

_record_Ros1Pal_interaction_msgsAudiosignal = Ros1Pal_interaction_msgsAudiosignal

def _write_Ros1Pal_interaction_msgsAudiosignal(writer, value):
    if type(value) is not Ros1Pal_interaction_msgsAudiosignal:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.channel0
    if type(_part0) not in (list, tuple):
        raise TypeError('array value required')
    _count0 = len(_part0)
    if _count0 > 16:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count0, 4)
    for _index in range(_count0):
        _element = _part0[_index]
        writer.f64(_element)
    _part1 = value.channel1
    if type(_part1) not in (list, tuple):
        raise TypeError('array value required')
    _count1 = len(_part1)
    if _count1 > 16:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        writer.f64(_element)
    if not 8 <= len(writer.data) - _start <= 264:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_interaction_msgsAudiosignal(reader):
    _start = reader.position
    value = Ros1Pal_interaction_msgsAudiosignal()
    value.channel0 = [reader.f64() for _ in range(_read_count(reader, 16, 8))]
    value.channel1 = [reader.f64() for _ in range(_read_count(reader, 16, 8))]
    if not 8 <= reader.position - _start <= 264:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_interaction_msgsRecognizerServiceRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_interaction_msgs/recognizerServiceRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_369151b882d849a0ab75110068aedd9eac22d87afe7b5bc13af87a6f78588edc'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 17
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 529
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 529
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    asrupdate: _record_Ros1Pal_interaction_msgsAsrupdate = _field(default_factory=lambda: Ros1Pal_interaction_msgsAsrupdate())

    def encode(self):
        writer = _Writer(529)
        _write_Ros1Pal_interaction_msgsRecognizerServiceRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 17, 529)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_interaction_msgsRecognizerServiceRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 17, 529))
        value = _read_Ros1Pal_interaction_msgsRecognizerServiceRequest(reader)
        reader.end()
        return value

_record_Ros1Pal_interaction_msgsRecognizerServiceRequest = Ros1Pal_interaction_msgsRecognizerServiceRequest

def _write_Ros1Pal_interaction_msgsRecognizerServiceRequest(writer, value):
    if type(value) is not Ros1Pal_interaction_msgsRecognizerServiceRequest:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.asrupdate
    _write_Ros1Pal_interaction_msgsAsrupdate(writer, _part0)
    if not 17 <= len(writer.data) - _start <= 529:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_interaction_msgsRecognizerServiceRequest(reader):
    _start = reader.position
    value = Ros1Pal_interaction_msgsRecognizerServiceRequest()
    value.asrupdate = _read_Ros1Pal_interaction_msgsAsrupdate(reader)
    if not 17 <= reader.position - _start <= 529:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_interaction_msgsRecognizerServiceResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_interaction_msgs/recognizerServiceResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_3598ef995f13f4377e0e4eff270a9e277c3c94018f60aeb944119ce9f5b25813'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Pal_interaction_msgsRecognizerServiceResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_interaction_msgsRecognizerServiceResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Pal_interaction_msgsRecognizerServiceResponse(reader)
        reader.end()
        return value

_record_Ros1Pal_interaction_msgsRecognizerServiceResponse = Ros1Pal_interaction_msgsRecognizerServiceResponse

def _write_Ros1Pal_interaction_msgsRecognizerServiceResponse(writer, value):
    if type(value) is not Ros1Pal_interaction_msgsRecognizerServiceResponse:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros1Pal_interaction_msgsRecognizerServiceResponse(reader):
    _start = reader.position
    value = Ros1Pal_interaction_msgsRecognizerServiceResponse()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_motion_model_msgsGetMotionMapRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_motion_model_msgs/GetMotionMapRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_4bfce8e9cc79e30ec211aa18bafb432fa0d3ff4fa18569a1c0ef178fe2729e97'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Pal_motion_model_msgsGetMotionMapRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_motion_model_msgsGetMotionMapRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Pal_motion_model_msgsGetMotionMapRequest(reader)
        reader.end()
        return value

_record_Ros1Pal_motion_model_msgsGetMotionMapRequest = Ros1Pal_motion_model_msgsGetMotionMapRequest

def _write_Ros1Pal_motion_model_msgsGetMotionMapRequest(writer, value):
    if type(value) is not Ros1Pal_motion_model_msgsGetMotionMapRequest:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros1Pal_motion_model_msgsGetMotionMapRequest(reader):
    _start = reader.position
    value = Ros1Pal_motion_model_msgsGetMotionMapRequest()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_motion_model_msgsMotionModel:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_motion_model_msgs/MotionModel'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_3d44b889a1c70d5e84107202bccf2143c8dd559a2cd5499d0c7319568469c1ea'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 24
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 24
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 24
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    heading_mean: _py_float = 0.0
    heading_std_dev: _py_float = 0.0
    linear_speed_mean: _py_float = 0.0
    linear_speed_std_dev: _py_float = 0.0
    angular_speed_mean: _py_float = 0.0
    angular_speed_std_dev: _py_float = 0.0

    def encode(self):
        writer = _Writer(24)
        _write_Ros1Pal_motion_model_msgsMotionModel(writer, self)
        wire = writer.finish()
        return _wire(wire, 24, 24)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_motion_model_msgsMotionModel:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 24, 24))
        value = _read_Ros1Pal_motion_model_msgsMotionModel(reader)
        reader.end()
        return value

_record_Ros1Pal_motion_model_msgsMotionModel = Ros1Pal_motion_model_msgsMotionModel

def _write_Ros1Pal_motion_model_msgsMotionModel(writer, value):
    if type(value) is not Ros1Pal_motion_model_msgsMotionModel:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.heading_mean
    writer.f32(_part0)
    _part1 = value.heading_std_dev
    writer.f32(_part1)
    _part2 = value.linear_speed_mean
    writer.f32(_part2)
    _part3 = value.linear_speed_std_dev
    writer.f32(_part3)
    _part4 = value.angular_speed_mean
    writer.f32(_part4)
    _part5 = value.angular_speed_std_dev
    writer.f32(_part5)
    if not 24 <= len(writer.data) - _start <= 24:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_motion_model_msgsMotionModel(reader):
    _start = reader.position
    value = Ros1Pal_motion_model_msgsMotionModel()
    value.heading_mean = reader.f32()
    value.heading_std_dev = reader.f32()
    value.linear_speed_mean = reader.f32()
    value.linear_speed_std_dev = reader.f32()
    value.angular_speed_mean = reader.f32()
    value.angular_speed_std_dev = reader.f32()
    if not 24 <= reader.position - _start <= 24:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_motion_model_msgsMotionModelList:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_motion_model_msgs/MotionModelList'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_f85f87d53cc9ae6392347e9d2cc41d306260335b4568e671890ebdd43a27a294'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 100
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 100
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    models: _py_list[_record_Ros1Pal_motion_model_msgsMotionModel] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(100)
        _write_Ros1Pal_motion_model_msgsMotionModelList(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 100)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_motion_model_msgsMotionModelList:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 4, 100))
        value = _read_Ros1Pal_motion_model_msgsMotionModelList(reader)
        reader.end()
        return value

_record_Ros1Pal_motion_model_msgsMotionModelList = Ros1Pal_motion_model_msgsMotionModelList

def _write_Ros1Pal_motion_model_msgsMotionModelList(writer, value):
    if type(value) is not Ros1Pal_motion_model_msgsMotionModelList:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.models
    if type(_part0) not in (list, tuple):
        raise TypeError('array value required')
    _count0 = len(_part0)
    if _count0 > 4:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count0, 4)
    for _index in range(_count0):
        _element = _part0[_index]
        _write_Ros1Pal_motion_model_msgsMotionModel(writer, _element)
    if not 4 <= len(writer.data) - _start <= 100:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_motion_model_msgsMotionModelList(reader):
    _start = reader.position
    value = Ros1Pal_motion_model_msgsMotionModelList()
    value.models = [_read_Ros1Pal_motion_model_msgsMotionModel(reader) for _ in range(_read_count(reader, 4, 24))]
    if not 4 <= reader.position - _start <= 100:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_motion_model_msgsMotionModelMap:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_motion_model_msgs/MotionModelMap'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_6f1702acedc40207e16d9a06d68581fb055ac1b42135efdbbbd1477eff42b289'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 96
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 624
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 624
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros1Std_msgsHeader = _field(default_factory=lambda: Ros1Std_msgsHeader())
    info: _record_Ros1Nav_msgsMapMetaData = _field(default_factory=lambda: Ros1Nav_msgsMapMetaData())
    data: _py_list[_record_Ros1Pal_motion_model_msgsMotionModelList] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(624)
        _write_Ros1Pal_motion_model_msgsMotionModelMap(writer, self)
        wire = writer.finish()
        return _wire(wire, 96, 624)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_motion_model_msgsMotionModelMap:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 96, 624))
        value = _read_Ros1Pal_motion_model_msgsMotionModelMap(reader)
        reader.end()
        return value

_record_Ros1Pal_motion_model_msgsMotionModelMap = Ros1Pal_motion_model_msgsMotionModelMap

def _write_Ros1Pal_motion_model_msgsMotionModelMap(writer, value):
    if type(value) is not Ros1Pal_motion_model_msgsMotionModelMap:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros1Std_msgsHeader(writer, _part0)
    _part1 = value.info
    _write_Ros1Nav_msgsMapMetaData(writer, _part1)
    _part2 = value.data
    if type(_part2) not in (list, tuple):
        raise TypeError('array value required')
    _count2 = len(_part2)
    if _count2 > 4:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        _write_Ros1Pal_motion_model_msgsMotionModelList(writer, _element)
    if not 96 <= len(writer.data) - _start <= 624:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_motion_model_msgsMotionModelMap(reader):
    _start = reader.position
    value = Ros1Pal_motion_model_msgsMotionModelMap()
    value.header = _read_Ros1Std_msgsHeader(reader)
    value.info = _read_Ros1Nav_msgsMapMetaData(reader)
    value.data = [_read_Ros1Pal_motion_model_msgsMotionModelList(reader) for _ in range(_read_count(reader, 4, 4))]
    if not 96 <= reader.position - _start <= 624:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_motion_model_msgsGetMotionMapResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_motion_model_msgs/GetMotionMapResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_b031c17ef990e784eeeb7fbf270b482207c5de43323a9cbf37306ac07b159440'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 96
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 624
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 624
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    map: _record_Ros1Pal_motion_model_msgsMotionModelMap = _field(default_factory=lambda: Ros1Pal_motion_model_msgsMotionModelMap())

    def encode(self):
        writer = _Writer(624)
        _write_Ros1Pal_motion_model_msgsGetMotionMapResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 96, 624)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_motion_model_msgsGetMotionMapResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 96, 624))
        value = _read_Ros1Pal_motion_model_msgsGetMotionMapResponse(reader)
        reader.end()
        return value

_record_Ros1Pal_motion_model_msgsGetMotionMapResponse = Ros1Pal_motion_model_msgsGetMotionMapResponse

def _write_Ros1Pal_motion_model_msgsGetMotionMapResponse(writer, value):
    if type(value) is not Ros1Pal_motion_model_msgsGetMotionMapResponse:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.map
    _write_Ros1Pal_motion_model_msgsMotionModelMap(writer, _part0)
    if not 96 <= len(writer.data) - _start <= 624:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_motion_model_msgsGetMotionMapResponse(reader):
    _start = reader.position
    value = Ros1Pal_motion_model_msgsGetMotionMapResponse()
    value.map = _read_Ros1Pal_motion_model_msgsMotionModelMap(reader)
    if not 96 <= reader.position - _start <= 624:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_multirobot_msgsWifiServiceDetection:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_multirobot_msgs/WifiServiceDetection'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_1f9a244c4e98ec5f4eb60bd008a62b94a91a6982b56273510c3019b95f1b5741'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 22
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 278
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 278
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros1Std_msgsHeader = _field(default_factory=lambda: Ros1Std_msgsHeader())
    id: _py_str = ''
    signal: _py_int = 0

    def encode(self):
        writer = _Writer(278)
        _write_Ros1Pal_multirobot_msgsWifiServiceDetection(writer, self)
        wire = writer.finish()
        return _wire(wire, 22, 278)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_multirobot_msgsWifiServiceDetection:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 22, 278))
        value = _read_Ros1Pal_multirobot_msgsWifiServiceDetection(reader)
        reader.end()
        return value

_record_Ros1Pal_multirobot_msgsWifiServiceDetection = Ros1Pal_multirobot_msgsWifiServiceDetection

def _write_Ros1Pal_multirobot_msgsWifiServiceDetection(writer, value):
    if type(value) is not Ros1Pal_multirobot_msgsWifiServiceDetection:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros1Std_msgsHeader(writer, _part0)
    _part1 = value.id
    _write_text(writer, _part1, 128)
    _part2 = value.signal
    writer.integer(_part2, 2, True)
    if not 22 <= len(writer.data) - _start <= 278:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_multirobot_msgsWifiServiceDetection(reader):
    _start = reader.position
    value = Ros1Pal_multirobot_msgsWifiServiceDetection()
    value.header = _read_Ros1Std_msgsHeader(reader)
    value.id = _read_text(reader, 128)
    value.signal = reader.integer(2, True)
    if not 22 <= reader.position - _start <= 278:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_navigation_msgsAcknowledgmentRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_navigation_msgs/AcknowledgmentRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_0249fb5130ed44b9127f0cb73472fc4366de614fcc3be68ed3e7bf2a4636cae5'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 132
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 132
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    input: _py_str = ''

    def encode(self):
        writer = _Writer(132)
        _write_Ros1Pal_navigation_msgsAcknowledgmentRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 132)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_navigation_msgsAcknowledgmentRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 4, 132))
        value = _read_Ros1Pal_navigation_msgsAcknowledgmentRequest(reader)
        reader.end()
        return value

_record_Ros1Pal_navigation_msgsAcknowledgmentRequest = Ros1Pal_navigation_msgsAcknowledgmentRequest

def _write_Ros1Pal_navigation_msgsAcknowledgmentRequest(writer, value):
    if type(value) is not Ros1Pal_navigation_msgsAcknowledgmentRequest:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.input
    _write_text(writer, _part0, 128)
    if not 4 <= len(writer.data) - _start <= 132:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_navigation_msgsAcknowledgmentRequest(reader):
    _start = reader.position
    value = Ros1Pal_navigation_msgsAcknowledgmentRequest()
    value.input = _read_text(reader, 128)
    if not 4 <= reader.position - _start <= 132:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_navigation_msgsAcknowledgmentResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_navigation_msgs/AcknowledgmentResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_cbc0f207907bc8de9f5c04bbf13c54ce81e72797ffadd0fea44980d1aa2658ae'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 5
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 133
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 133
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    output: _py_bool = False
    error: _py_str = ''

    def encode(self):
        writer = _Writer(133)
        _write_Ros1Pal_navigation_msgsAcknowledgmentResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 5, 133)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_navigation_msgsAcknowledgmentResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 5, 133))
        value = _read_Ros1Pal_navigation_msgsAcknowledgmentResponse(reader)
        reader.end()
        return value

_record_Ros1Pal_navigation_msgsAcknowledgmentResponse = Ros1Pal_navigation_msgsAcknowledgmentResponse

def _write_Ros1Pal_navigation_msgsAcknowledgmentResponse(writer, value):
    if type(value) is not Ros1Pal_navigation_msgsAcknowledgmentResponse:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.output
    if type(_part0) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part0), 1)
    _part1 = value.error
    _write_text(writer, _part1, 128)
    if not 5 <= len(writer.data) - _start <= 133:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_navigation_msgsAcknowledgmentResponse(reader):
    _start = reader.position
    value = Ros1Pal_navigation_msgsAcknowledgmentResponse()
    value.output = _read_bool(reader)
    value.error = _read_text(reader, 128)
    if not 5 <= reader.position - _start <= 133:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Std_msgsString:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'std_msgs/String'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_8a71a2d5957414e5a34318653c6314c005aab13980a35fa331401a4acd4442dc'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 132
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 132
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    data: _py_str = ''

    def encode(self):
        writer = _Writer(132)
        _write_Ros1Std_msgsString(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 132)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Std_msgsString:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 4, 132))
        value = _read_Ros1Std_msgsString(reader)
        reader.end()
        return value

_record_Ros1Std_msgsString = Ros1Std_msgsString

def _write_Ros1Std_msgsString(writer, value):
    if type(value) is not Ros1Std_msgsString:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.data
    _write_text(writer, _part0, 128)
    if not 4 <= len(writer.data) - _start <= 132:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Std_msgsString(reader):
    _start = reader.position
    value = Ros1Std_msgsString()
    value.data = _read_text(reader, 128)
    if not 4 <= reader.position - _start <= 132:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_navigation_msgsAvailableMaps:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_navigation_msgs/AvailableMaps'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_3ac5ca4dc811d8082ad915e4f81eca379f2165a639dc113bb078f9952ed7322d'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 532
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 532
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    map_names: _py_list[_record_Ros1Std_msgsString] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(532)
        _write_Ros1Pal_navigation_msgsAvailableMaps(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 532)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_navigation_msgsAvailableMaps:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 4, 532))
        value = _read_Ros1Pal_navigation_msgsAvailableMaps(reader)
        reader.end()
        return value

_record_Ros1Pal_navigation_msgsAvailableMaps = Ros1Pal_navigation_msgsAvailableMaps

def _write_Ros1Pal_navigation_msgsAvailableMaps(writer, value):
    if type(value) is not Ros1Pal_navigation_msgsAvailableMaps:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.map_names
    if type(_part0) not in (list, tuple):
        raise TypeError('array value required')
    _count0 = len(_part0)
    if _count0 > 4:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count0, 4)
    for _index in range(_count0):
        _element = _part0[_index]
        _write_Ros1Std_msgsString(writer, _element)
    if not 4 <= len(writer.data) - _start <= 532:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_navigation_msgsAvailableMaps(reader):
    _start = reader.position
    value = Ros1Pal_navigation_msgsAvailableMaps()
    value.map_names = [_read_Ros1Std_msgsString(reader) for _ in range(_read_count(reader, 4, 4))]
    if not 4 <= reader.position - _start <= 532:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_navigation_msgsChangeBuildingRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_navigation_msgs/ChangeBuildingRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_6144b47179187bf53c27112461762b29e9af1841704a53981e0b633d798c094c'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 264
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 264
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    building_name: _py_str = ''
    floor_name: _py_str = ''

    def encode(self):
        writer = _Writer(264)
        _write_Ros1Pal_navigation_msgsChangeBuildingRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 264)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_navigation_msgsChangeBuildingRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 264))
        value = _read_Ros1Pal_navigation_msgsChangeBuildingRequest(reader)
        reader.end()
        return value

_record_Ros1Pal_navigation_msgsChangeBuildingRequest = Ros1Pal_navigation_msgsChangeBuildingRequest

def _write_Ros1Pal_navigation_msgsChangeBuildingRequest(writer, value):
    if type(value) is not Ros1Pal_navigation_msgsChangeBuildingRequest:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.building_name
    _write_text(writer, _part0, 128)
    _part1 = value.floor_name
    _write_text(writer, _part1, 128)
    if not 8 <= len(writer.data) - _start <= 264:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_navigation_msgsChangeBuildingRequest(reader):
    _start = reader.position
    value = Ros1Pal_navigation_msgsChangeBuildingRequest()
    value.building_name = _read_text(reader, 128)
    value.floor_name = _read_text(reader, 128)
    if not 8 <= reader.position - _start <= 264:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_navigation_msgsChangeBuildingResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_navigation_msgs/ChangeBuildingResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_561da528ec2a5cc779e660da2d9218d3b64339cf0a7c3a889aabb5d8aa63e640'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Pal_navigation_msgsChangeBuildingResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_navigation_msgsChangeBuildingResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Pal_navigation_msgsChangeBuildingResponse(reader)
        reader.end()
        return value

_record_Ros1Pal_navigation_msgsChangeBuildingResponse = Ros1Pal_navigation_msgsChangeBuildingResponse

def _write_Ros1Pal_navigation_msgsChangeBuildingResponse(writer, value):
    if type(value) is not Ros1Pal_navigation_msgsChangeBuildingResponse:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_navigation_msgsChangeBuildingResponse(reader):
    _start = reader.position
    value = Ros1Pal_navigation_msgsChangeBuildingResponse()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_navigation_msgsChangeMapRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_navigation_msgs/ChangeMapRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_5b418e8170efc2707f0667474c75034109e36b29e3d00f0b6ae1410a59beb4bf'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 96
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 480
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 480
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    map: _record_Ros1Nav_msgsOccupancyGrid = _field(default_factory=lambda: Ros1Nav_msgsOccupancyGrid())

    def encode(self):
        writer = _Writer(480)
        _write_Ros1Pal_navigation_msgsChangeMapRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 96, 480)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_navigation_msgsChangeMapRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 96, 480))
        value = _read_Ros1Pal_navigation_msgsChangeMapRequest(reader)
        reader.end()
        return value

_record_Ros1Pal_navigation_msgsChangeMapRequest = Ros1Pal_navigation_msgsChangeMapRequest

def _write_Ros1Pal_navigation_msgsChangeMapRequest(writer, value):
    if type(value) is not Ros1Pal_navigation_msgsChangeMapRequest:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.map
    _write_Ros1Nav_msgsOccupancyGrid(writer, _part0)
    if not 96 <= len(writer.data) - _start <= 480:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_navigation_msgsChangeMapRequest(reader):
    _start = reader.position
    value = Ros1Pal_navigation_msgsChangeMapRequest()
    value.map = _read_Ros1Nav_msgsOccupancyGrid(reader)
    if not 96 <= reader.position - _start <= 480:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_navigation_msgsChangeMapResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_navigation_msgs/ChangeMapResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_29d8c048afd7b6e76c7045decd5d8af1d994db75f4af2c2e663d95c3579077f5'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Pal_navigation_msgsChangeMapResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_navigation_msgsChangeMapResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Pal_navigation_msgsChangeMapResponse(reader)
        reader.end()
        return value

_record_Ros1Pal_navigation_msgsChangeMapResponse = Ros1Pal_navigation_msgsChangeMapResponse

def _write_Ros1Pal_navigation_msgsChangeMapResponse(writer, value):
    if type(value) is not Ros1Pal_navigation_msgsChangeMapResponse:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_navigation_msgsChangeMapResponse(reader):
    _start = reader.position
    value = Ros1Pal_navigation_msgsChangeMapResponse()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_navigation_msgsChangeSyncMapRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_navigation_msgs/ChangeSyncMapRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_d289a4940286f55bfade22fc3c87a511067e1f1ec078d8735acf455469846de5'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 104
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 2728
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 2728
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    map: _record_Ros1Nav_msgsOccupancyGrid = _field(default_factory=lambda: Ros1Nav_msgsOccupancyGrid())
    map_name: _py_str = ''
    sources: _py_list[_py_str] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(2728)
        _write_Ros1Pal_navigation_msgsChangeSyncMapRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 104, 2728)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_navigation_msgsChangeSyncMapRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 104, 2728))
        value = _read_Ros1Pal_navigation_msgsChangeSyncMapRequest(reader)
        reader.end()
        return value

_record_Ros1Pal_navigation_msgsChangeSyncMapRequest = Ros1Pal_navigation_msgsChangeSyncMapRequest

def _write_Ros1Pal_navigation_msgsChangeSyncMapRequest(writer, value):
    if type(value) is not Ros1Pal_navigation_msgsChangeSyncMapRequest:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.map
    _write_Ros1Nav_msgsOccupancyGrid(writer, _part0)
    _part1 = value.map_name
    _write_text(writer, _part1, 128)
    _part2 = value.sources
    if type(_part2) not in (list, tuple):
        raise TypeError('array value required')
    _count2 = len(_part2)
    if _count2 > 16:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        _write_text(writer, _element, 128)
    if not 104 <= len(writer.data) - _start <= 2728:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_navigation_msgsChangeSyncMapRequest(reader):
    _start = reader.position
    value = Ros1Pal_navigation_msgsChangeSyncMapRequest()
    value.map = _read_Ros1Nav_msgsOccupancyGrid(reader)
    value.map_name = _read_text(reader, 128)
    value.sources = [_read_text(reader, 128) for _ in range(_read_count(reader, 16, 4))]
    if not 104 <= reader.position - _start <= 2728:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_navigation_msgsChangeSyncMapResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_navigation_msgs/ChangeSyncMapResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_d10c4bb1230e579ed4b24537211cdfd6d7d155a7297681a14af9a5d9a3f2ab80'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Pal_navigation_msgsChangeSyncMapResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_navigation_msgsChangeSyncMapResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Pal_navigation_msgsChangeSyncMapResponse(reader)
        reader.end()
        return value

_record_Ros1Pal_navigation_msgsChangeSyncMapResponse = Ros1Pal_navigation_msgsChangeSyncMapResponse

def _write_Ros1Pal_navigation_msgsChangeSyncMapResponse(writer, value):
    if type(value) is not Ros1Pal_navigation_msgsChangeSyncMapResponse:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_navigation_msgsChangeSyncMapResponse(reader):
    _start = reader.position
    value = Ros1Pal_navigation_msgsChangeSyncMapResponse()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_navigation_msgsDisableEmergencyRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_navigation_msgs/DisableEmergencyRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_70dbc31ae4309c03fa21a0247c16598ca1a9056243963854e9e17a4648cc599c'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 9
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 9
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 9
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    second: _py_float = 0.0
    useLEDs: _py_bool = False

    def encode(self):
        writer = _Writer(9)
        _write_Ros1Pal_navigation_msgsDisableEmergencyRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 9, 9)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_navigation_msgsDisableEmergencyRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 9, 9))
        value = _read_Ros1Pal_navigation_msgsDisableEmergencyRequest(reader)
        reader.end()
        return value

_record_Ros1Pal_navigation_msgsDisableEmergencyRequest = Ros1Pal_navigation_msgsDisableEmergencyRequest

def _write_Ros1Pal_navigation_msgsDisableEmergencyRequest(writer, value):
    if type(value) is not Ros1Pal_navigation_msgsDisableEmergencyRequest:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.second
    writer.f64(_part0)
    _part1 = value.useLEDs
    if type(_part1) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part1), 1)
    if not 9 <= len(writer.data) - _start <= 9:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_navigation_msgsDisableEmergencyRequest(reader):
    _start = reader.position
    value = Ros1Pal_navigation_msgsDisableEmergencyRequest()
    value.second = reader.f64()
    value.useLEDs = _read_bool(reader)
    if not 9 <= reader.position - _start <= 9:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_navigation_msgsDisableEmergencyResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_navigation_msgs/DisableEmergencyResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_c5b7fa73ccceb51e2a6fa950f690a65f91f046644b75f878964d322d9b6573a4'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Pal_navigation_msgsDisableEmergencyResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_navigation_msgsDisableEmergencyResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Pal_navigation_msgsDisableEmergencyResponse(reader)
        reader.end()
        return value

_record_Ros1Pal_navigation_msgsDisableEmergencyResponse = Ros1Pal_navigation_msgsDisableEmergencyResponse

def _write_Ros1Pal_navigation_msgsDisableEmergencyResponse(writer, value):
    if type(value) is not Ros1Pal_navigation_msgsDisableEmergencyResponse:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_navigation_msgsDisableEmergencyResponse(reader):
    _start = reader.position
    value = Ros1Pal_navigation_msgsDisableEmergencyResponse()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_navigation_msgsEmergency:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_navigation_msgs/Emergency'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_00339764ab9f5d7e90ce08b5675434a1113e38b31e9f94166a6c8b994b02d635'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 7
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 535
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 535
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    data: _py_bool = False
    forward: _py_bool = False
    backward: _py_bool = False
    msgs: _py_list[_record_Ros1Std_msgsString] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(535)
        _write_Ros1Pal_navigation_msgsEmergency(writer, self)
        wire = writer.finish()
        return _wire(wire, 7, 535)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_navigation_msgsEmergency:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 7, 535))
        value = _read_Ros1Pal_navigation_msgsEmergency(reader)
        reader.end()
        return value

_record_Ros1Pal_navigation_msgsEmergency = Ros1Pal_navigation_msgsEmergency

def _write_Ros1Pal_navigation_msgsEmergency(writer, value):
    if type(value) is not Ros1Pal_navigation_msgsEmergency:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.data
    if type(_part0) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part0), 1)
    _part1 = value.forward
    if type(_part1) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part1), 1)
    _part2 = value.backward
    if type(_part2) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part2), 1)
    _part3 = value.msgs
    if type(_part3) not in (list, tuple):
        raise TypeError('array value required')
    _count3 = len(_part3)
    if _count3 > 4:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count3, 4)
    for _index in range(_count3):
        _element = _part3[_index]
        _write_Ros1Std_msgsString(writer, _element)
    if not 7 <= len(writer.data) - _start <= 535:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_navigation_msgsEmergency(reader):
    _start = reader.position
    value = Ros1Pal_navigation_msgsEmergency()
    value.data = _read_bool(reader)
    value.forward = _read_bool(reader)
    value.backward = _read_bool(reader)
    value.msgs = [_read_Ros1Std_msgsString(reader) for _ in range(_read_count(reader, 4, 4))]
    if not 7 <= reader.position - _start <= 535:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_navigation_msgsEulerAngles:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_navigation_msgs/EulerAngles'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_cc1bd6ac99235a0d92e3f458be257dcd81c88763822f7e9c5b3f034a76691d0f'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 29
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 157
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 157
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    sequence: _py_str = ''
    angles_in_degrees: _py_bool = False
    ai: _py_float = 0.0
    aj: _py_float = 0.0
    ak: _py_float = 0.0

    def encode(self):
        writer = _Writer(157)
        _write_Ros1Pal_navigation_msgsEulerAngles(writer, self)
        wire = writer.finish()
        return _wire(wire, 29, 157)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_navigation_msgsEulerAngles:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 29, 157))
        value = _read_Ros1Pal_navigation_msgsEulerAngles(reader)
        reader.end()
        return value

_record_Ros1Pal_navigation_msgsEulerAngles = Ros1Pal_navigation_msgsEulerAngles

def _write_Ros1Pal_navigation_msgsEulerAngles(writer, value):
    if type(value) is not Ros1Pal_navigation_msgsEulerAngles:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.sequence
    _write_text(writer, _part0, 128)
    _part1 = value.angles_in_degrees
    if type(_part1) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part1), 1)
    _part2 = value.ai
    writer.f64(_part2)
    _part3 = value.aj
    writer.f64(_part3)
    _part4 = value.ak
    writer.f64(_part4)
    if not 29 <= len(writer.data) - _start <= 157:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_navigation_msgsEulerAngles(reader):
    _start = reader.position
    value = Ros1Pal_navigation_msgsEulerAngles()
    value.sequence = _read_text(reader, 128)
    value.angles_in_degrees = _read_bool(reader)
    value.ai = reader.f64()
    value.aj = reader.f64()
    value.ak = reader.f64()
    if not 29 <= reader.position - _start <= 157:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_navigation_msgsEulerAnglesStamped:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_navigation_msgs/EulerAnglesStamped'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_595448173da01bddbdba145a6bd1e6269a37b12ac4a7fdc26ca5cb5083452462'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 45
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 301
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 301
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros1Std_msgsHeader = _field(default_factory=lambda: Ros1Std_msgsHeader())
    angles: _record_Ros1Pal_navigation_msgsEulerAngles = _field(default_factory=lambda: Ros1Pal_navigation_msgsEulerAngles())

    def encode(self):
        writer = _Writer(301)
        _write_Ros1Pal_navigation_msgsEulerAnglesStamped(writer, self)
        wire = writer.finish()
        return _wire(wire, 45, 301)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_navigation_msgsEulerAnglesStamped:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 45, 301))
        value = _read_Ros1Pal_navigation_msgsEulerAnglesStamped(reader)
        reader.end()
        return value

_record_Ros1Pal_navigation_msgsEulerAnglesStamped = Ros1Pal_navigation_msgsEulerAnglesStamped

def _write_Ros1Pal_navigation_msgsEulerAnglesStamped(writer, value):
    if type(value) is not Ros1Pal_navigation_msgsEulerAnglesStamped:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros1Std_msgsHeader(writer, _part0)
    _part1 = value.angles
    _write_Ros1Pal_navigation_msgsEulerAngles(writer, _part1)
    if not 45 <= len(writer.data) - _start <= 301:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_navigation_msgsEulerAnglesStamped(reader):
    _start = reader.position
    value = Ros1Pal_navigation_msgsEulerAnglesStamped()
    value.header = _read_Ros1Std_msgsHeader(reader)
    value.angles = _read_Ros1Pal_navigation_msgsEulerAngles(reader)
    if not 45 <= reader.position - _start <= 301:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_navigation_msgsExecuteParkingGoal:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_navigation_msgs/ExecuteParkingGoal'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_5bc772cbbc3a5f90165c84a9f5d81d961a789e78bbbf2fe19706d76be3e3dfae'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 25
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 281
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 281
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    source_frame: _py_str = ''
    target_frame: _py_str = ''
    backwards: _py_bool = False
    max_lin_vel: _py_float = 0.0
    max_rot_vel: _py_float = 0.0

    def encode(self):
        writer = _Writer(281)
        _write_Ros1Pal_navigation_msgsExecuteParkingGoal(writer, self)
        wire = writer.finish()
        return _wire(wire, 25, 281)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_navigation_msgsExecuteParkingGoal:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 25, 281))
        value = _read_Ros1Pal_navigation_msgsExecuteParkingGoal(reader)
        reader.end()
        return value

_record_Ros1Pal_navigation_msgsExecuteParkingGoal = Ros1Pal_navigation_msgsExecuteParkingGoal

def _write_Ros1Pal_navigation_msgsExecuteParkingGoal(writer, value):
    if type(value) is not Ros1Pal_navigation_msgsExecuteParkingGoal:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.source_frame
    _write_text(writer, _part0, 128)
    _part1 = value.target_frame
    _write_text(writer, _part1, 128)
    _part2 = value.backwards
    if type(_part2) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part2), 1)
    _part3 = value.max_lin_vel
    writer.f64(_part3)
    _part4 = value.max_rot_vel
    writer.f64(_part4)
    if not 25 <= len(writer.data) - _start <= 281:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_navigation_msgsExecuteParkingGoal(reader):
    _start = reader.position
    value = Ros1Pal_navigation_msgsExecuteParkingGoal()
    value.source_frame = _read_text(reader, 128)
    value.target_frame = _read_text(reader, 128)
    value.backwards = _read_bool(reader)
    value.max_lin_vel = reader.f64()
    value.max_rot_vel = reader.f64()
    if not 25 <= reader.position - _start <= 281:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_navigation_msgsExecuteParkingResult:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_navigation_msgs/ExecuteParkingResult'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_51f06f36f320cad8e090e602ad2b390141b364fc4d13ea92a2cbf1cfb784f1ca'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Pal_navigation_msgsExecuteParkingResult(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_navigation_msgsExecuteParkingResult:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Pal_navigation_msgsExecuteParkingResult(reader)
        reader.end()
        return value

_record_Ros1Pal_navigation_msgsExecuteParkingResult = Ros1Pal_navigation_msgsExecuteParkingResult

def _write_Ros1Pal_navigation_msgsExecuteParkingResult(writer, value):
    if type(value) is not Ros1Pal_navigation_msgsExecuteParkingResult:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros1Pal_navigation_msgsExecuteParkingResult(reader):
    _start = reader.position
    value = Ros1Pal_navigation_msgsExecuteParkingResult()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_navigation_msgsExecuteParkingFeedback:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_navigation_msgs/ExecuteParkingFeedback'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_54fd7db88b179345d32957a36858d4dc1be0e3d1bdbee1ae2051cb69feabd842'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Pal_navigation_msgsExecuteParkingFeedback(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_navigation_msgsExecuteParkingFeedback:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Pal_navigation_msgsExecuteParkingFeedback(reader)
        reader.end()
        return value

_record_Ros1Pal_navigation_msgsExecuteParkingFeedback = Ros1Pal_navigation_msgsExecuteParkingFeedback

def _write_Ros1Pal_navigation_msgsExecuteParkingFeedback(writer, value):
    if type(value) is not Ros1Pal_navigation_msgsExecuteParkingFeedback:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros1Pal_navigation_msgsExecuteParkingFeedback(reader):
    _start = reader.position
    value = Ros1Pal_navigation_msgsExecuteParkingFeedback()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_navigation_msgsFinalApproachPoseRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_navigation_msgs/FinalApproachPoseRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_52d199aa79bb76f00cff19792aefd0414fe7319a5f2e4f6c74f88ff7d3810f16'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 56
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 56
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 56
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    pose: _record_Ros1Geometry_msgsPose = _field(default_factory=lambda: Ros1Geometry_msgsPose())

    def encode(self):
        writer = _Writer(56)
        _write_Ros1Pal_navigation_msgsFinalApproachPoseRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 56, 56)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_navigation_msgsFinalApproachPoseRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 56, 56))
        value = _read_Ros1Pal_navigation_msgsFinalApproachPoseRequest(reader)
        reader.end()
        return value

_record_Ros1Pal_navigation_msgsFinalApproachPoseRequest = Ros1Pal_navigation_msgsFinalApproachPoseRequest

def _write_Ros1Pal_navigation_msgsFinalApproachPoseRequest(writer, value):
    if type(value) is not Ros1Pal_navigation_msgsFinalApproachPoseRequest:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.pose
    _write_Ros1Geometry_msgsPose(writer, _part0)
    if not 56 <= len(writer.data) - _start <= 56:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_navigation_msgsFinalApproachPoseRequest(reader):
    _start = reader.position
    value = Ros1Pal_navigation_msgsFinalApproachPoseRequest()
    value.pose = _read_Ros1Geometry_msgsPose(reader)
    if not 56 <= reader.position - _start <= 56:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Std_msgsBool:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'std_msgs/Bool'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_cbbbbbf2df23f98389500cbf265f45ca9210c3495622a1fd122c1b8b76ce7d33'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    data: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Std_msgsBool(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Std_msgsBool:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Std_msgsBool(reader)
        reader.end()
        return value

_record_Ros1Std_msgsBool = Ros1Std_msgsBool

def _write_Ros1Std_msgsBool(writer, value):
    if type(value) is not Ros1Std_msgsBool:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.data
    if type(_part0) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Std_msgsBool(reader):
    _start = reader.position
    value = Ros1Std_msgsBool()
    value.data = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_navigation_msgsFinalApproachPoseResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_navigation_msgs/FinalApproachPoseResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_b0fdbf02ad6c5cd8352a6b66994bd075acfe88027276b560edb8f0f37ba1bf09'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    done: _record_Ros1Std_msgsBool = _field(default_factory=lambda: Ros1Std_msgsBool())

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Pal_navigation_msgsFinalApproachPoseResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_navigation_msgsFinalApproachPoseResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Pal_navigation_msgsFinalApproachPoseResponse(reader)
        reader.end()
        return value

_record_Ros1Pal_navigation_msgsFinalApproachPoseResponse = Ros1Pal_navigation_msgsFinalApproachPoseResponse

def _write_Ros1Pal_navigation_msgsFinalApproachPoseResponse(writer, value):
    if type(value) is not Ros1Pal_navigation_msgsFinalApproachPoseResponse:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.done
    _write_Ros1Std_msgsBool(writer, _part0)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_navigation_msgsFinalApproachPoseResponse(reader):
    _start = reader.position
    value = Ros1Pal_navigation_msgsFinalApproachPoseResponse()
    value.done = _read_Ros1Std_msgsBool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_navigation_msgsGetMapConfigurationRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_navigation_msgs/GetMapConfigurationRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_4bfa959fc39c0b51bfa7b9874ff219c2ec1ec59462aa46bf3e504571bda6937e'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Pal_navigation_msgsGetMapConfigurationRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_navigation_msgsGetMapConfigurationRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Pal_navigation_msgsGetMapConfigurationRequest(reader)
        reader.end()
        return value

_record_Ros1Pal_navigation_msgsGetMapConfigurationRequest = Ros1Pal_navigation_msgsGetMapConfigurationRequest

def _write_Ros1Pal_navigation_msgsGetMapConfigurationRequest(writer, value):
    if type(value) is not Ros1Pal_navigation_msgsGetMapConfigurationRequest:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros1Pal_navigation_msgsGetMapConfigurationRequest(reader):
    _start = reader.position
    value = Ros1Pal_navigation_msgsGetMapConfigurationRequest()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Std_msgsFloat32:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'std_msgs/Float32'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_d19ba548217238df8898fc387f092102779ef51eb3dfece19928caf0025b40b9'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 4
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 4
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    data: _py_float = 0.0

    def encode(self):
        writer = _Writer(4)
        _write_Ros1Std_msgsFloat32(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 4)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Std_msgsFloat32:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 4, 4))
        value = _read_Ros1Std_msgsFloat32(reader)
        reader.end()
        return value

_record_Ros1Std_msgsFloat32 = Ros1Std_msgsFloat32

def _write_Ros1Std_msgsFloat32(writer, value):
    if type(value) is not Ros1Std_msgsFloat32:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.data
    writer.f32(_part0)
    if not 4 <= len(writer.data) - _start <= 4:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Std_msgsFloat32(reader):
    _start = reader.position
    value = Ros1Std_msgsFloat32()
    value.data = reader.f32()
    if not 4 <= reader.position - _start <= 4:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_navigation_msgsHighways:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_navigation_msgs/Highways'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_f3717c2a5b4e42173901f70af63a28b4dd00e24adf686212a01ff442379f1c43'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 13
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 237
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 237
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    points: _py_list[_record_Ros1Geometry_msgsPoint] = _field(default_factory=lambda: [])
    directional: _record_Ros1Std_msgsBool = _field(default_factory=lambda: Ros1Std_msgsBool())
    line_width: _record_Ros1Std_msgsFloat32 = _field(default_factory=lambda: Ros1Std_msgsFloat32())
    name: _record_Ros1Std_msgsString = _field(default_factory=lambda: Ros1Std_msgsString())

    def encode(self):
        writer = _Writer(237)
        _write_Ros1Pal_navigation_msgsHighways(writer, self)
        wire = writer.finish()
        return _wire(wire, 13, 237)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_navigation_msgsHighways:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 13, 237))
        value = _read_Ros1Pal_navigation_msgsHighways(reader)
        reader.end()
        return value

_record_Ros1Pal_navigation_msgsHighways = Ros1Pal_navigation_msgsHighways

def _write_Ros1Pal_navigation_msgsHighways(writer, value):
    if type(value) is not Ros1Pal_navigation_msgsHighways:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.points
    if type(_part0) not in (list, tuple):
        raise TypeError('array value required')
    _count0 = len(_part0)
    if _count0 > 4:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count0, 4)
    for _index in range(_count0):
        _element = _part0[_index]
        _write_Ros1Geometry_msgsPoint(writer, _element)
    _part1 = value.directional
    _write_Ros1Std_msgsBool(writer, _part1)
    _part2 = value.line_width
    _write_Ros1Std_msgsFloat32(writer, _part2)
    _part3 = value.name
    _write_Ros1Std_msgsString(writer, _part3)
    if not 13 <= len(writer.data) - _start <= 237:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_navigation_msgsHighways(reader):
    _start = reader.position
    value = Ros1Pal_navigation_msgsHighways()
    value.points = [_read_Ros1Geometry_msgsPoint(reader) for _ in range(_read_count(reader, 4, 24))]
    value.directional = _read_Ros1Std_msgsBool(reader)
    value.line_width = _read_Ros1Std_msgsFloat32(reader)
    value.name = _read_Ros1Std_msgsString(reader)
    if not 13 <= reader.position - _start <= 237:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Sensor_msgsChannelFloat32:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'sensor_msgs/ChannelFloat32'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_a164e6a7d124c3c1d5cc165f622c492079b7b31686d4bcff3f8dc45b20a0213b'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 200
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 200
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    name: _py_str = ''
    values: _py_list[_py_float] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(200)
        _write_Ros1Sensor_msgsChannelFloat32(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 200)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Sensor_msgsChannelFloat32:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 200))
        value = _read_Ros1Sensor_msgsChannelFloat32(reader)
        reader.end()
        return value

_record_Ros1Sensor_msgsChannelFloat32 = Ros1Sensor_msgsChannelFloat32

def _write_Ros1Sensor_msgsChannelFloat32(writer, value):
    if type(value) is not Ros1Sensor_msgsChannelFloat32:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.name
    _write_text(writer, _part0, 128)
    _part1 = value.values
    if type(_part1) not in (list, tuple):
        raise TypeError('array value required')
    _count1 = len(_part1)
    if _count1 > 16:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        writer.f32(_element)
    if not 8 <= len(writer.data) - _start <= 200:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Sensor_msgsChannelFloat32(reader):
    _start = reader.position
    value = Ros1Sensor_msgsChannelFloat32()
    value.name = _read_text(reader, 128)
    value.values = [reader.f32() for _ in range(_read_count(reader, 16, 4))]
    if not 8 <= reader.position - _start <= 200:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Sensor_msgsPointCloud:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'sensor_msgs/PointCloud'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_714f5812773665cb9e8cfb03b86e3926eaae188eed2d96cd775c20a9c42a3fce'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 24
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1000
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1000
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros1Std_msgsHeader = _field(default_factory=lambda: Ros1Std_msgsHeader())
    points: _py_list[_record_Ros1Geometry_msgsPoint32] = _field(default_factory=lambda: [])
    channels: _py_list[_record_Ros1Sensor_msgsChannelFloat32] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(1000)
        _write_Ros1Sensor_msgsPointCloud(writer, self)
        wire = writer.finish()
        return _wire(wire, 24, 1000)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Sensor_msgsPointCloud:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 24, 1000))
        value = _read_Ros1Sensor_msgsPointCloud(reader)
        reader.end()
        return value

_record_Ros1Sensor_msgsPointCloud = Ros1Sensor_msgsPointCloud

def _write_Ros1Sensor_msgsPointCloud(writer, value):
    if type(value) is not Ros1Sensor_msgsPointCloud:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros1Std_msgsHeader(writer, _part0)
    _part1 = value.points
    if type(_part1) not in (list, tuple):
        raise TypeError('array value required')
    _count1 = len(_part1)
    if _count1 > 4:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        _write_Ros1Geometry_msgsPoint32(writer, _element)
    _part2 = value.channels
    if type(_part2) not in (list, tuple):
        raise TypeError('array value required')
    _count2 = len(_part2)
    if _count2 > 4:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        _write_Ros1Sensor_msgsChannelFloat32(writer, _element)
    if not 24 <= len(writer.data) - _start <= 1000:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Sensor_msgsPointCloud(reader):
    _start = reader.position
    value = Ros1Sensor_msgsPointCloud()
    value.header = _read_Ros1Std_msgsHeader(reader)
    value.points = [_read_Ros1Geometry_msgsPoint32(reader) for _ in range(_read_count(reader, 4, 12))]
    value.channels = [_read_Ros1Sensor_msgsChannelFloat32(reader) for _ in range(_read_count(reader, 4, 8))]
    if not 24 <= reader.position - _start <= 1000:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_navigation_msgsPOI:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_navigation_msgs/POI'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_3750170dda28a05b81a5c1255fb3e88adc6105bef955601cccb82a6639e796a4'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 32
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1664
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1664
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    points: _record_Ros1Sensor_msgsPointCloud = _field(default_factory=lambda: Ros1Sensor_msgsPointCloud())
    ids: _py_list[_record_Ros1Std_msgsString] = _field(default_factory=lambda: [])
    map_id: _record_Ros1Std_msgsString = _field(default_factory=lambda: Ros1Std_msgsString())

    def encode(self):
        writer = _Writer(1664)
        _write_Ros1Pal_navigation_msgsPOI(writer, self)
        wire = writer.finish()
        return _wire(wire, 32, 1664)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_navigation_msgsPOI:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 32, 1664))
        value = _read_Ros1Pal_navigation_msgsPOI(reader)
        reader.end()
        return value

_record_Ros1Pal_navigation_msgsPOI = Ros1Pal_navigation_msgsPOI

def _write_Ros1Pal_navigation_msgsPOI(writer, value):
    if type(value) is not Ros1Pal_navigation_msgsPOI:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.points
    _write_Ros1Sensor_msgsPointCloud(writer, _part0)
    _part1 = value.ids
    if type(_part1) not in (list, tuple):
        raise TypeError('array value required')
    _count1 = len(_part1)
    if _count1 > 4:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        _write_Ros1Std_msgsString(writer, _element)
    _part2 = value.map_id
    _write_Ros1Std_msgsString(writer, _part2)
    if not 32 <= len(writer.data) - _start <= 1664:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_navigation_msgsPOI(reader):
    _start = reader.position
    value = Ros1Pal_navigation_msgsPOI()
    value.points = _read_Ros1Sensor_msgsPointCloud(reader)
    value.ids = [_read_Ros1Std_msgsString(reader) for _ in range(_read_count(reader, 4, 4))]
    value.map_id = _read_Ros1Std_msgsString(reader)
    if not 32 <= reader.position - _start <= 1664:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_navigation_msgsPOIGroup:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_navigation_msgs/POIGroup'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_82b1a1a03ae086b33692ee39850fe1d5df11a3ed3f74cf32204a9851a55b0abf'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 664
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 664
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    group_name: _record_Ros1Std_msgsString = _field(default_factory=lambda: Ros1Std_msgsString())
    poi_names: _py_list[_record_Ros1Std_msgsString] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(664)
        _write_Ros1Pal_navigation_msgsPOIGroup(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 664)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_navigation_msgsPOIGroup:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 664))
        value = _read_Ros1Pal_navigation_msgsPOIGroup(reader)
        reader.end()
        return value

_record_Ros1Pal_navigation_msgsPOIGroup = Ros1Pal_navigation_msgsPOIGroup

def _write_Ros1Pal_navigation_msgsPOIGroup(writer, value):
    if type(value) is not Ros1Pal_navigation_msgsPOIGroup:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.group_name
    _write_Ros1Std_msgsString(writer, _part0)
    _part1 = value.poi_names
    if type(_part1) not in (list, tuple):
        raise TypeError('array value required')
    _count1 = len(_part1)
    if _count1 > 4:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        _write_Ros1Std_msgsString(writer, _element)
    if not 8 <= len(writer.data) - _start <= 664:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_navigation_msgsPOIGroup(reader):
    _start = reader.position
    value = Ros1Pal_navigation_msgsPOIGroup()
    value.group_name = _read_Ros1Std_msgsString(reader)
    value.poi_names = [_read_Ros1Std_msgsString(reader) for _ in range(_read_count(reader, 4, 4))]
    if not 8 <= reader.position - _start <= 664:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_navigation_msgsVisualLocDB:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_navigation_msgs/VisualLocDB'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_644cacceb6580e474906170240e511dca1427355428ac346eb5ba2a74eceb063'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 780
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 780
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    documents: _py_list[_py_int] = _field(default_factory=lambda: [])
    tree: _py_list[_py_int] = _field(default_factory=lambda: [])
    weights: _py_list[_py_int] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(780)
        _write_Ros1Pal_navigation_msgsVisualLocDB(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 780)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_navigation_msgsVisualLocDB:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 12, 780))
        value = _read_Ros1Pal_navigation_msgsVisualLocDB(reader)
        reader.end()
        return value

_record_Ros1Pal_navigation_msgsVisualLocDB = Ros1Pal_navigation_msgsVisualLocDB

def _write_Ros1Pal_navigation_msgsVisualLocDB(writer, value):
    if type(value) is not Ros1Pal_navigation_msgsVisualLocDB:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.documents
    if type(_part0) not in (list, tuple):
        raise TypeError('array value required')
    _count0 = len(_part0)
    if _count0 > 256:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count0, 4)
    for _index in range(_count0):
        _element = _part0[_index]
        writer.integer(_element, 1, False)
    _part1 = value.tree
    if type(_part1) not in (list, tuple):
        raise TypeError('array value required')
    _count1 = len(_part1)
    if _count1 > 256:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        writer.integer(_element, 1, False)
    _part2 = value.weights
    if type(_part2) not in (list, tuple):
        raise TypeError('array value required')
    _count2 = len(_part2)
    if _count2 > 256:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        writer.integer(_element, 1, False)
    if not 12 <= len(writer.data) - _start <= 780:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_navigation_msgsVisualLocDB(reader):
    _start = reader.position
    value = Ros1Pal_navigation_msgsVisualLocDB()
    value.documents = [reader.integer(1, False) for _ in range(_read_count(reader, 256, 1))]
    value.tree = [reader.integer(1, False) for _ in range(_read_count(reader, 256, 1))]
    value.weights = [reader.integer(1, False) for _ in range(_read_count(reader, 256, 1))]
    if not 12 <= reader.position - _start <= 780:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_navigation_msgsNiceMapTransformation:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_navigation_msgs/NiceMapTransformation'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_0c52375fd069a4fc6f5d93c7652ddaba7e9e0002e40e5d0db64aa77e355d0ef0'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 32
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 32
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 32
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    x: _py_float = 0.0
    y: _py_float = 0.0
    rotYawRad: _py_float = 0.0
    scale: _py_float = 0.0

    def encode(self):
        writer = _Writer(32)
        _write_Ros1Pal_navigation_msgsNiceMapTransformation(writer, self)
        wire = writer.finish()
        return _wire(wire, 32, 32)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_navigation_msgsNiceMapTransformation:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 32, 32))
        value = _read_Ros1Pal_navigation_msgsNiceMapTransformation(reader)
        reader.end()
        return value

_record_Ros1Pal_navigation_msgsNiceMapTransformation = Ros1Pal_navigation_msgsNiceMapTransformation

def _write_Ros1Pal_navigation_msgsNiceMapTransformation(writer, value):
    if type(value) is not Ros1Pal_navigation_msgsNiceMapTransformation:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.x
    writer.f64(_part0)
    _part1 = value.y
    writer.f64(_part1)
    _part2 = value.rotYawRad
    writer.f64(_part2)
    _part3 = value.scale
    writer.f64(_part3)
    if not 32 <= len(writer.data) - _start <= 32:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_navigation_msgsNiceMapTransformation(reader):
    _start = reader.position
    value = Ros1Pal_navigation_msgsNiceMapTransformation()
    value.x = reader.f64()
    value.y = reader.f64()
    value.rotYawRad = reader.f64()
    value.scale = reader.f64()
    if not 32 <= reader.position - _start <= 32:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_navigation_msgsMapConfiguration:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_navigation_msgs/MapConfiguration'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_807b6436f6e7ee13b63cfadc9de5fd38ca3fedd2d0e902c3c7558c1d7b606255'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 317
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 15953
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 15953
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    numberOfSubMaps: _py_int = 0
    highways: _py_list[_record_Ros1Pal_navigation_msgsHighways] = _field(default_factory=lambda: [])
    pois: _record_Ros1Pal_navigation_msgsPOI = _field(default_factory=lambda: Ros1Pal_navigation_msgsPOI())
    vo: _record_Ros1Pal_navigation_msgsPOI = _field(default_factory=lambda: Ros1Pal_navigation_msgsPOI())
    zoi: _record_Ros1Pal_navigation_msgsPOI = _field(default_factory=lambda: Ros1Pal_navigation_msgsPOI())
    ramps: _record_Ros1Pal_navigation_msgsPOI = _field(default_factory=lambda: Ros1Pal_navigation_msgsPOI())
    poigroups: _py_list[_record_Ros1Pal_navigation_msgsPOIGroup] = _field(default_factory=lambda: [])
    visualLocDb: _record_Ros1Pal_navigation_msgsVisualLocDB = _field(default_factory=lambda: Ros1Pal_navigation_msgsVisualLocDB())
    navigation_map: _record_Ros1Nav_msgsOccupancyGrid = _field(default_factory=lambda: Ros1Nav_msgsOccupancyGrid())
    user_map: _record_Ros1Sensor_msgsImage = _field(default_factory=lambda: Ros1Sensor_msgsImage())
    transform: _record_Ros1Pal_navigation_msgsNiceMapTransformation = _field(default_factory=lambda: Ros1Pal_navigation_msgsNiceMapTransformation())

    def encode(self):
        writer = _Writer(15953)
        _write_Ros1Pal_navigation_msgsMapConfiguration(writer, self)
        wire = writer.finish()
        return _wire(wire, 317, 15953)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_navigation_msgsMapConfiguration:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 317, 15953))
        value = _read_Ros1Pal_navigation_msgsMapConfiguration(reader)
        reader.end()
        return value

_record_Ros1Pal_navigation_msgsMapConfiguration = Ros1Pal_navigation_msgsMapConfiguration

def _write_Ros1Pal_navigation_msgsMapConfiguration(writer, value):
    if type(value) is not Ros1Pal_navigation_msgsMapConfiguration:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.numberOfSubMaps
    writer.integer(_part0, 4, True)
    _part1 = value.highways
    if type(_part1) not in (list, tuple):
        raise TypeError('array value required')
    _count1 = len(_part1)
    if _count1 > 4:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        _write_Ros1Pal_navigation_msgsHighways(writer, _element)
    _part2 = value.pois
    _write_Ros1Pal_navigation_msgsPOI(writer, _part2)
    _part3 = value.vo
    _write_Ros1Pal_navigation_msgsPOI(writer, _part3)
    _part4 = value.zoi
    _write_Ros1Pal_navigation_msgsPOI(writer, _part4)
    _part5 = value.ramps
    _write_Ros1Pal_navigation_msgsPOI(writer, _part5)
    _part6 = value.poigroups
    if type(_part6) not in (list, tuple):
        raise TypeError('array value required')
    _count6 = len(_part6)
    if _count6 > 4:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count6, 4)
    for _index in range(_count6):
        _element = _part6[_index]
        _write_Ros1Pal_navigation_msgsPOIGroup(writer, _element)
    _part7 = value.visualLocDb
    _write_Ros1Pal_navigation_msgsVisualLocDB(writer, _part7)
    _part8 = value.navigation_map
    _write_Ros1Nav_msgsOccupancyGrid(writer, _part8)
    _part9 = value.user_map
    _write_Ros1Sensor_msgsImage(writer, _part9)
    _part10 = value.transform
    _write_Ros1Pal_navigation_msgsNiceMapTransformation(writer, _part10)
    if not 317 <= len(writer.data) - _start <= 15953:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_navigation_msgsMapConfiguration(reader):
    _start = reader.position
    value = Ros1Pal_navigation_msgsMapConfiguration()
    value.numberOfSubMaps = reader.integer(4, True)
    value.highways = [_read_Ros1Pal_navigation_msgsHighways(reader) for _ in range(_read_count(reader, 4, 13))]
    value.pois = _read_Ros1Pal_navigation_msgsPOI(reader)
    value.vo = _read_Ros1Pal_navigation_msgsPOI(reader)
    value.zoi = _read_Ros1Pal_navigation_msgsPOI(reader)
    value.ramps = _read_Ros1Pal_navigation_msgsPOI(reader)
    value.poigroups = [_read_Ros1Pal_navigation_msgsPOIGroup(reader) for _ in range(_read_count(reader, 4, 8))]
    value.visualLocDb = _read_Ros1Pal_navigation_msgsVisualLocDB(reader)
    value.navigation_map = _read_Ros1Nav_msgsOccupancyGrid(reader)
    value.user_map = _read_Ros1Sensor_msgsImage(reader)
    value.transform = _read_Ros1Pal_navigation_msgsNiceMapTransformation(reader)
    if not 317 <= reader.position - _start <= 15953:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_navigation_msgsGetMapConfigurationResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_navigation_msgs/GetMapConfigurationResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_89a83992447a75bd8c210766b00ca09e0235d872716f57c6e438490c762cd60d'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 317
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 15953
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 15953
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    map_config: _record_Ros1Pal_navigation_msgsMapConfiguration = _field(default_factory=lambda: Ros1Pal_navigation_msgsMapConfiguration())

    def encode(self):
        writer = _Writer(15953)
        _write_Ros1Pal_navigation_msgsGetMapConfigurationResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 317, 15953)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_navigation_msgsGetMapConfigurationResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 317, 15953))
        value = _read_Ros1Pal_navigation_msgsGetMapConfigurationResponse(reader)
        reader.end()
        return value

_record_Ros1Pal_navigation_msgsGetMapConfigurationResponse = Ros1Pal_navigation_msgsGetMapConfigurationResponse

def _write_Ros1Pal_navigation_msgsGetMapConfigurationResponse(writer, value):
    if type(value) is not Ros1Pal_navigation_msgsGetMapConfigurationResponse:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.map_config
    _write_Ros1Pal_navigation_msgsMapConfiguration(writer, _part0)
    if not 317 <= len(writer.data) - _start <= 15953:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_navigation_msgsGetMapConfigurationResponse(reader):
    _start = reader.position
    value = Ros1Pal_navigation_msgsGetMapConfigurationResponse()
    value.map_config = _read_Ros1Pal_navigation_msgsMapConfiguration(reader)
    if not 317 <= reader.position - _start <= 15953:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_navigation_msgsGetNodesRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_navigation_msgs/GetNodesRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_dee03ae04981d1dc0c0b9e7af3a8379f8409e50a790c3be71894d97edb00c4e2'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Pal_navigation_msgsGetNodesRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_navigation_msgsGetNodesRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Pal_navigation_msgsGetNodesRequest(reader)
        reader.end()
        return value

_record_Ros1Pal_navigation_msgsGetNodesRequest = Ros1Pal_navigation_msgsGetNodesRequest

def _write_Ros1Pal_navigation_msgsGetNodesRequest(writer, value):
    if type(value) is not Ros1Pal_navigation_msgsGetNodesRequest:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros1Pal_navigation_msgsGetNodesRequest(reader):
    _start = reader.position
    value = Ros1Pal_navigation_msgsGetNodesRequest()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_navigation_msgsGetNodesResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_navigation_msgs/GetNodesResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_415815a998e9ab87b1e40663082bddb4c8d19ac64b9165bb4e70feeaedd110a3'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 2
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 2
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 2
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    node: _py_int = 0
    totPOI: _py_int = 0

    def encode(self):
        writer = _Writer(2)
        _write_Ros1Pal_navigation_msgsGetNodesResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 2, 2)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_navigation_msgsGetNodesResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 2, 2))
        value = _read_Ros1Pal_navigation_msgsGetNodesResponse(reader)
        reader.end()
        return value

_record_Ros1Pal_navigation_msgsGetNodesResponse = Ros1Pal_navigation_msgsGetNodesResponse

def _write_Ros1Pal_navigation_msgsGetNodesResponse(writer, value):
    if type(value) is not Ros1Pal_navigation_msgsGetNodesResponse:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.node
    writer.integer(_part0, 1, True)
    _part1 = value.totPOI
    writer.integer(_part1, 1, True)
    if not 2 <= len(writer.data) - _start <= 2:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_navigation_msgsGetNodesResponse(reader):
    _start = reader.position
    value = Ros1Pal_navigation_msgsGetNodesResponse()
    value.node = reader.integer(1, True)
    value.totPOI = reader.integer(1, True)
    if not 2 <= reader.position - _start <= 2:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_navigation_msgsGetPOIRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_navigation_msgs/GetPOIRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_4405875fa858b2faaabaca085a3f16846b311ed7866c36b583887c827ad54cc6'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Pal_navigation_msgsGetPOIRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_navigation_msgsGetPOIRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Pal_navigation_msgsGetPOIRequest(reader)
        reader.end()
        return value

_record_Ros1Pal_navigation_msgsGetPOIRequest = Ros1Pal_navigation_msgsGetPOIRequest

def _write_Ros1Pal_navigation_msgsGetPOIRequest(writer, value):
    if type(value) is not Ros1Pal_navigation_msgsGetPOIRequest:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros1Pal_navigation_msgsGetPOIRequest(reader):
    _start = reader.position
    value = Ros1Pal_navigation_msgsGetPOIRequest()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_navigation_msgsGetPOIResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_navigation_msgs/GetPOIResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_9d7a0f291c648928f13eeb120c69ce685be71ef4de559684d7b4a758dd74dfe3'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 32
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1664
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1664
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    poi: _record_Ros1Pal_navigation_msgsPOI = _field(default_factory=lambda: Ros1Pal_navigation_msgsPOI())

    def encode(self):
        writer = _Writer(1664)
        _write_Ros1Pal_navigation_msgsGetPOIResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 32, 1664)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_navigation_msgsGetPOIResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 32, 1664))
        value = _read_Ros1Pal_navigation_msgsGetPOIResponse(reader)
        reader.end()
        return value

_record_Ros1Pal_navigation_msgsGetPOIResponse = Ros1Pal_navigation_msgsGetPOIResponse

def _write_Ros1Pal_navigation_msgsGetPOIResponse(writer, value):
    if type(value) is not Ros1Pal_navigation_msgsGetPOIResponse:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.poi
    _write_Ros1Pal_navigation_msgsPOI(writer, _part0)
    if not 32 <= len(writer.data) - _start <= 1664:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_navigation_msgsGetPOIResponse(reader):
    _start = reader.position
    value = Ros1Pal_navigation_msgsGetPOIResponse()
    value.poi = _read_Ros1Pal_navigation_msgsPOI(reader)
    if not 32 <= reader.position - _start <= 1664:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_navigation_msgsGetSubMapRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_navigation_msgs/GetSubMapRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_93c60279a243153baa7ab19b93ae27fabfdfff99e28e961c782f7498550ca377'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    index: _py_int = 0

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Pal_navigation_msgsGetSubMapRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_navigation_msgsGetSubMapRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Pal_navigation_msgsGetSubMapRequest(reader)
        reader.end()
        return value

_record_Ros1Pal_navigation_msgsGetSubMapRequest = Ros1Pal_navigation_msgsGetSubMapRequest

def _write_Ros1Pal_navigation_msgsGetSubMapRequest(writer, value):
    if type(value) is not Ros1Pal_navigation_msgsGetSubMapRequest:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.index
    writer.integer(_part0, 1, True)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_navigation_msgsGetSubMapRequest(reader):
    _start = reader.position
    value = Ros1Pal_navigation_msgsGetSubMapRequest()
    value.index = reader.integer(1, True)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_navigation_msgsGetSubMapResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_navigation_msgs/GetSubMapResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_0e89187a2b88f7eca611483f7dd8db9b09bad5da07cf65e350b1b1e7dbab6768'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Pal_navigation_msgsGetSubMapResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_navigation_msgsGetSubMapResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Pal_navigation_msgsGetSubMapResponse(reader)
        reader.end()
        return value

_record_Ros1Pal_navigation_msgsGetSubMapResponse = Ros1Pal_navigation_msgsGetSubMapResponse

def _write_Ros1Pal_navigation_msgsGetSubMapResponse(writer, value):
    if type(value) is not Ros1Pal_navigation_msgsGetSubMapResponse:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros1Pal_navigation_msgsGetSubMapResponse(reader):
    _start = reader.position
    value = Ros1Pal_navigation_msgsGetSubMapResponse()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_navigation_msgsGoToGoal:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_navigation_msgs/GoToGoal'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_26ff6f3220dee058063f4d81ed396c7d152b56b735878ed3ce2929eeeebb24d1'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 72
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 200
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 200
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    target_pose: _record_Ros1Geometry_msgsPoseStamped = _field(default_factory=lambda: Ros1Geometry_msgsPoseStamped())

    def encode(self):
        writer = _Writer(200)
        _write_Ros1Pal_navigation_msgsGoToGoal(writer, self)
        wire = writer.finish()
        return _wire(wire, 72, 200)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_navigation_msgsGoToGoal:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 72, 200))
        value = _read_Ros1Pal_navigation_msgsGoToGoal(reader)
        reader.end()
        return value

_record_Ros1Pal_navigation_msgsGoToGoal = Ros1Pal_navigation_msgsGoToGoal

def _write_Ros1Pal_navigation_msgsGoToGoal(writer, value):
    if type(value) is not Ros1Pal_navigation_msgsGoToGoal:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.target_pose
    _write_Ros1Geometry_msgsPoseStamped(writer, _part0)
    if not 72 <= len(writer.data) - _start <= 200:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_navigation_msgsGoToGoal(reader):
    _start = reader.position
    value = Ros1Pal_navigation_msgsGoToGoal()
    value.target_pose = _read_Ros1Geometry_msgsPoseStamped(reader)
    if not 72 <= reader.position - _start <= 200:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_navigation_msgsGoToResult:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_navigation_msgs/GoToResult'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_89a3eb05425f5a9b3e7a514cc44ffcc0c2492cf0247d51c3fe4b5c1635d09ef1'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Pal_navigation_msgsGoToResult(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_navigation_msgsGoToResult:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Pal_navigation_msgsGoToResult(reader)
        reader.end()
        return value

_record_Ros1Pal_navigation_msgsGoToResult = Ros1Pal_navigation_msgsGoToResult

def _write_Ros1Pal_navigation_msgsGoToResult(writer, value):
    if type(value) is not Ros1Pal_navigation_msgsGoToResult:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros1Pal_navigation_msgsGoToResult(reader):
    _start = reader.position
    value = Ros1Pal_navigation_msgsGoToResult()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_navigation_msgsGoToFeedback:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_navigation_msgs/GoToFeedback'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_1ae5791a0a5d958bb57df7596658f1ce3cc369b832229fc407d2205f7076847b'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 72
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 200
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 200
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    base_position: _record_Ros1Geometry_msgsPoseStamped = _field(default_factory=lambda: Ros1Geometry_msgsPoseStamped())

    def encode(self):
        writer = _Writer(200)
        _write_Ros1Pal_navigation_msgsGoToFeedback(writer, self)
        wire = writer.finish()
        return _wire(wire, 72, 200)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_navigation_msgsGoToFeedback:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 72, 200))
        value = _read_Ros1Pal_navigation_msgsGoToFeedback(reader)
        reader.end()
        return value

_record_Ros1Pal_navigation_msgsGoToFeedback = Ros1Pal_navigation_msgsGoToFeedback

def _write_Ros1Pal_navigation_msgsGoToFeedback(writer, value):
    if type(value) is not Ros1Pal_navigation_msgsGoToFeedback:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.base_position
    _write_Ros1Geometry_msgsPoseStamped(writer, _part0)
    if not 72 <= len(writer.data) - _start <= 200:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_navigation_msgsGoToFeedback(reader):
    _start = reader.position
    value = Ros1Pal_navigation_msgsGoToFeedback()
    value.base_position = _read_Ros1Geometry_msgsPoseStamped(reader)
    if not 72 <= reader.position - _start <= 200:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_navigation_msgsGoToPOIGoal:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_navigation_msgs/GoToPOIGoal'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_76b73385b6183f03926456ae38d666a53db772bc4f9dfbb1060cf7955154f043'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 132
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 132
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    poi: _record_Ros1Std_msgsString = _field(default_factory=lambda: Ros1Std_msgsString())

    def encode(self):
        writer = _Writer(132)
        _write_Ros1Pal_navigation_msgsGoToPOIGoal(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 132)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_navigation_msgsGoToPOIGoal:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 4, 132))
        value = _read_Ros1Pal_navigation_msgsGoToPOIGoal(reader)
        reader.end()
        return value

_record_Ros1Pal_navigation_msgsGoToPOIGoal = Ros1Pal_navigation_msgsGoToPOIGoal

def _write_Ros1Pal_navigation_msgsGoToPOIGoal(writer, value):
    if type(value) is not Ros1Pal_navigation_msgsGoToPOIGoal:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.poi
    _write_Ros1Std_msgsString(writer, _part0)
    if not 4 <= len(writer.data) - _start <= 132:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_navigation_msgsGoToPOIGoal(reader):
    _start = reader.position
    value = Ros1Pal_navigation_msgsGoToPOIGoal()
    value.poi = _read_Ros1Std_msgsString(reader)
    if not 4 <= reader.position - _start <= 132:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_navigation_msgsGoToPOIResult:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_navigation_msgs/GoToPOIResult'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_0378eb6adc3b300e5f7bb037789cfab4a986c333bfcb45d191e26f74867ef807'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Pal_navigation_msgsGoToPOIResult(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_navigation_msgsGoToPOIResult:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Pal_navigation_msgsGoToPOIResult(reader)
        reader.end()
        return value

_record_Ros1Pal_navigation_msgsGoToPOIResult = Ros1Pal_navigation_msgsGoToPOIResult

def _write_Ros1Pal_navigation_msgsGoToPOIResult(writer, value):
    if type(value) is not Ros1Pal_navigation_msgsGoToPOIResult:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros1Pal_navigation_msgsGoToPOIResult(reader):
    _start = reader.position
    value = Ros1Pal_navigation_msgsGoToPOIResult()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_navigation_msgsGoToPOIFeedback:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_navigation_msgs/GoToPOIFeedback'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_78d8367fcd91cdb4d50ab664251531390a75e7042506bf60f048a3ddffe746d6'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 72
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 200
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 200
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    base_position: _record_Ros1Geometry_msgsPoseStamped = _field(default_factory=lambda: Ros1Geometry_msgsPoseStamped())

    def encode(self):
        writer = _Writer(200)
        _write_Ros1Pal_navigation_msgsGoToPOIFeedback(writer, self)
        wire = writer.finish()
        return _wire(wire, 72, 200)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_navigation_msgsGoToPOIFeedback:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 72, 200))
        value = _read_Ros1Pal_navigation_msgsGoToPOIFeedback(reader)
        reader.end()
        return value

_record_Ros1Pal_navigation_msgsGoToPOIFeedback = Ros1Pal_navigation_msgsGoToPOIFeedback

def _write_Ros1Pal_navigation_msgsGoToPOIFeedback(writer, value):
    if type(value) is not Ros1Pal_navigation_msgsGoToPOIFeedback:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.base_position
    _write_Ros1Geometry_msgsPoseStamped(writer, _part0)
    if not 72 <= len(writer.data) - _start <= 200:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_navigation_msgsGoToPOIFeedback(reader):
    _start = reader.position
    value = Ros1Pal_navigation_msgsGoToPOIFeedback()
    value.base_position = _read_Ros1Geometry_msgsPoseStamped(reader)
    if not 72 <= reader.position - _start <= 200:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_navigation_msgsJoyPriorityGoal:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_navigation_msgs/JoyPriorityGoal'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_d3276e0ecfb362f00a38258d939d052108742f0b7546303a86ea6cf51aa5d7d1'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Pal_navigation_msgsJoyPriorityGoal(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_navigation_msgsJoyPriorityGoal:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Pal_navigation_msgsJoyPriorityGoal(reader)
        reader.end()
        return value

_record_Ros1Pal_navigation_msgsJoyPriorityGoal = Ros1Pal_navigation_msgsJoyPriorityGoal

def _write_Ros1Pal_navigation_msgsJoyPriorityGoal(writer, value):
    if type(value) is not Ros1Pal_navigation_msgsJoyPriorityGoal:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros1Pal_navigation_msgsJoyPriorityGoal(reader):
    _start = reader.position
    value = Ros1Pal_navigation_msgsJoyPriorityGoal()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_navigation_msgsJoyPriorityResult:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_navigation_msgs/JoyPriorityResult'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_877ee5214e72b1c83d9d1335fe7684bb5688b6f6b84c073168b4f0594fa6b20d'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Pal_navigation_msgsJoyPriorityResult(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_navigation_msgsJoyPriorityResult:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Pal_navigation_msgsJoyPriorityResult(reader)
        reader.end()
        return value

_record_Ros1Pal_navigation_msgsJoyPriorityResult = Ros1Pal_navigation_msgsJoyPriorityResult

def _write_Ros1Pal_navigation_msgsJoyPriorityResult(writer, value):
    if type(value) is not Ros1Pal_navigation_msgsJoyPriorityResult:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros1Pal_navigation_msgsJoyPriorityResult(reader):
    _start = reader.position
    value = Ros1Pal_navigation_msgsJoyPriorityResult()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_navigation_msgsJoyPriorityFeedback:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_navigation_msgs/JoyPriorityFeedback'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_46000d5acaf6e01c153895486f7d8f5b19dd8d7df068459ad51cd767e8a979e7'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Pal_navigation_msgsJoyPriorityFeedback(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_navigation_msgsJoyPriorityFeedback:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Pal_navigation_msgsJoyPriorityFeedback(reader)
        reader.end()
        return value

_record_Ros1Pal_navigation_msgsJoyPriorityFeedback = Ros1Pal_navigation_msgsJoyPriorityFeedback

def _write_Ros1Pal_navigation_msgsJoyPriorityFeedback(writer, value):
    if type(value) is not Ros1Pal_navigation_msgsJoyPriorityFeedback:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros1Pal_navigation_msgsJoyPriorityFeedback(reader):
    _start = reader.position
    value = Ros1Pal_navigation_msgsJoyPriorityFeedback()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_navigation_msgsJoyTurboGoal:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_navigation_msgs/JoyTurboGoal'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_3a7c13c9dd95b66aa331ca3e9324fed749a2ca0c310f4d00ef8a77afd03cd3a5'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Pal_navigation_msgsJoyTurboGoal(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_navigation_msgsJoyTurboGoal:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Pal_navigation_msgsJoyTurboGoal(reader)
        reader.end()
        return value

_record_Ros1Pal_navigation_msgsJoyTurboGoal = Ros1Pal_navigation_msgsJoyTurboGoal

def _write_Ros1Pal_navigation_msgsJoyTurboGoal(writer, value):
    if type(value) is not Ros1Pal_navigation_msgsJoyTurboGoal:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros1Pal_navigation_msgsJoyTurboGoal(reader):
    _start = reader.position
    value = Ros1Pal_navigation_msgsJoyTurboGoal()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_navigation_msgsJoyTurboResult:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_navigation_msgs/JoyTurboResult'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_3cafcac3a4a1e9f17e9be6827f3c6888c21c7aa0f644a17b097301346f1fc97d'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Pal_navigation_msgsJoyTurboResult(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_navigation_msgsJoyTurboResult:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Pal_navigation_msgsJoyTurboResult(reader)
        reader.end()
        return value

_record_Ros1Pal_navigation_msgsJoyTurboResult = Ros1Pal_navigation_msgsJoyTurboResult

def _write_Ros1Pal_navigation_msgsJoyTurboResult(writer, value):
    if type(value) is not Ros1Pal_navigation_msgsJoyTurboResult:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros1Pal_navigation_msgsJoyTurboResult(reader):
    _start = reader.position
    value = Ros1Pal_navigation_msgsJoyTurboResult()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_navigation_msgsJoyTurboFeedback:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_navigation_msgs/JoyTurboFeedback'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_8028ff57865bec806da57ae6bf19e7928af52b969fe0c6662474f39eb27fbb8e'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Pal_navigation_msgsJoyTurboFeedback(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_navigation_msgsJoyTurboFeedback:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Pal_navigation_msgsJoyTurboFeedback(reader)
        reader.end()
        return value

_record_Ros1Pal_navigation_msgsJoyTurboFeedback = Ros1Pal_navigation_msgsJoyTurboFeedback

def _write_Ros1Pal_navigation_msgsJoyTurboFeedback(writer, value):
    if type(value) is not Ros1Pal_navigation_msgsJoyTurboFeedback:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros1Pal_navigation_msgsJoyTurboFeedback(reader):
    _start = reader.position
    value = Ros1Pal_navigation_msgsJoyTurboFeedback()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_navigation_msgsLaserImage:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_navigation_msgs/LaserImage'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_94e3d294205016ea87f46b5cf6bbc1bb7644f24f900ce1f9cbb4bac6004b66f2'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 76
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 4556
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 4556
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros1Std_msgsHeader = _field(default_factory=lambda: Ros1Std_msgsHeader())
    origin: _record_Ros1Geometry_msgsPoint = _field(default_factory=lambda: Ros1Geometry_msgsPoint())
    image: _record_Ros1Sensor_msgsCompressedImage = _field(default_factory=lambda: Ros1Sensor_msgsCompressedImage())
    height: _py_float = 0.0
    width: _py_float = 0.0
    resolution: _py_float = 0.0

    def encode(self):
        writer = _Writer(4556)
        _write_Ros1Pal_navigation_msgsLaserImage(writer, self)
        wire = writer.finish()
        return _wire(wire, 76, 4556)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_navigation_msgsLaserImage:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 76, 4556))
        value = _read_Ros1Pal_navigation_msgsLaserImage(reader)
        reader.end()
        return value

_record_Ros1Pal_navigation_msgsLaserImage = Ros1Pal_navigation_msgsLaserImage

def _write_Ros1Pal_navigation_msgsLaserImage(writer, value):
    if type(value) is not Ros1Pal_navigation_msgsLaserImage:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros1Std_msgsHeader(writer, _part0)
    _part1 = value.origin
    _write_Ros1Geometry_msgsPoint(writer, _part1)
    _part2 = value.image
    _write_Ros1Sensor_msgsCompressedImage(writer, _part2)
    _part3 = value.height
    writer.f32(_part3)
    _part4 = value.width
    writer.f32(_part4)
    _part5 = value.resolution
    writer.f32(_part5)
    if not 76 <= len(writer.data) - _start <= 4556:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_navigation_msgsLaserImage(reader):
    _start = reader.position
    value = Ros1Pal_navigation_msgsLaserImage()
    value.header = _read_Ros1Std_msgsHeader(reader)
    value.origin = _read_Ros1Geometry_msgsPoint(reader)
    value.image = _read_Ros1Sensor_msgsCompressedImage(reader)
    value.height = reader.f32()
    value.width = reader.f32()
    value.resolution = reader.f32()
    if not 76 <= reader.position - _start <= 4556:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_navigation_msgsListMapsRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_navigation_msgs/ListMapsRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_5705dfe7ff7affbbcc0469694234dba068652b4e2bf1409ab85cf07ee1fd2385'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Pal_navigation_msgsListMapsRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_navigation_msgsListMapsRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Pal_navigation_msgsListMapsRequest(reader)
        reader.end()
        return value

_record_Ros1Pal_navigation_msgsListMapsRequest = Ros1Pal_navigation_msgsListMapsRequest

def _write_Ros1Pal_navigation_msgsListMapsRequest(writer, value):
    if type(value) is not Ros1Pal_navigation_msgsListMapsRequest:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros1Pal_navigation_msgsListMapsRequest(reader):
    _start = reader.position
    value = Ros1Pal_navigation_msgsListMapsRequest()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_navigation_msgsListMapsResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_navigation_msgs/ListMapsResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_348a760b57b0c823d35a49efb65bdf8e11d1bcab3aaf218f51781de9fc5d8033'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 5
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 2117
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 2117
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False
    maps: _py_list[_py_str] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(2117)
        _write_Ros1Pal_navigation_msgsListMapsResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 5, 2117)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_navigation_msgsListMapsResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 5, 2117))
        value = _read_Ros1Pal_navigation_msgsListMapsResponse(reader)
        reader.end()
        return value

_record_Ros1Pal_navigation_msgsListMapsResponse = Ros1Pal_navigation_msgsListMapsResponse

def _write_Ros1Pal_navigation_msgsListMapsResponse(writer, value):
    if type(value) is not Ros1Pal_navigation_msgsListMapsResponse:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part0), 1)
    _part1 = value.maps
    if type(_part1) not in (list, tuple):
        raise TypeError('array value required')
    _count1 = len(_part1)
    if _count1 > 16:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        _write_text(writer, _element, 128)
    if not 5 <= len(writer.data) - _start <= 2117:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_navigation_msgsListMapsResponse(reader):
    _start = reader.position
    value = Ros1Pal_navigation_msgsListMapsResponse()
    value.success = _read_bool(reader)
    value.maps = [_read_text(reader, 128) for _ in range(_read_count(reader, 16, 4))]
    if not 5 <= reader.position - _start <= 2117:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_navigation_msgsNavigationStatus:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_navigation_msgs/NavigationStatus'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_64ae750f64cce12a3e2c6379380c208ee9afab146582280af4b6e445a2ccb105'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 264
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 264
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    status: _record_Ros1Std_msgsString = _field(default_factory=lambda: Ros1Std_msgsString())
    msg: _record_Ros1Std_msgsString = _field(default_factory=lambda: Ros1Std_msgsString())

    def encode(self):
        writer = _Writer(264)
        _write_Ros1Pal_navigation_msgsNavigationStatus(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 264)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_navigation_msgsNavigationStatus:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 264))
        value = _read_Ros1Pal_navigation_msgsNavigationStatus(reader)
        reader.end()
        return value

_record_Ros1Pal_navigation_msgsNavigationStatus = Ros1Pal_navigation_msgsNavigationStatus

def _write_Ros1Pal_navigation_msgsNavigationStatus(writer, value):
    if type(value) is not Ros1Pal_navigation_msgsNavigationStatus:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.status
    _write_Ros1Std_msgsString(writer, _part0)
    _part1 = value.msg
    _write_Ros1Std_msgsString(writer, _part1)
    if not 8 <= len(writer.data) - _start <= 264:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_navigation_msgsNavigationStatus(reader):
    _start = reader.position
    value = Ros1Pal_navigation_msgsNavigationStatus()
    value.status = _read_Ros1Std_msgsString(reader)
    value.msg = _read_Ros1Std_msgsString(reader)
    if not 8 <= reader.position - _start <= 264:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_navigation_msgsPolarReading:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_navigation_msgs/PolarReading'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_8fda83158c3186185b077be3457af2c77bb69a9efc6fedde6b2e0d2bfb902fd2'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    angle: _py_float = 0.0
    distance: _py_float = 0.0

    def encode(self):
        writer = _Writer(8)
        _write_Ros1Pal_navigation_msgsPolarReading(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 8)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_navigation_msgsPolarReading:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 8))
        value = _read_Ros1Pal_navigation_msgsPolarReading(reader)
        reader.end()
        return value

_record_Ros1Pal_navigation_msgsPolarReading = Ros1Pal_navigation_msgsPolarReading

def _write_Ros1Pal_navigation_msgsPolarReading(writer, value):
    if type(value) is not Ros1Pal_navigation_msgsPolarReading:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.angle
    writer.f32(_part0)
    _part1 = value.distance
    writer.f32(_part1)
    if not 8 <= len(writer.data) - _start <= 8:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_navigation_msgsPolarReading(reader):
    _start = reader.position
    value = Ros1Pal_navigation_msgsPolarReading()
    value.angle = reader.f32()
    value.distance = reader.f32()
    if not 8 <= reader.position - _start <= 8:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_navigation_msgsPolarReadingScan:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_navigation_msgs/PolarReadingScan'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_80d29afd1790fc33923dd1233f118dce0189db42194aac17d6059873ead24245'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 20
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 180
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 180
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros1Std_msgsHeader = _field(default_factory=lambda: Ros1Std_msgsHeader())
    readings: _py_list[_record_Ros1Pal_navigation_msgsPolarReading] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(180)
        _write_Ros1Pal_navigation_msgsPolarReadingScan(writer, self)
        wire = writer.finish()
        return _wire(wire, 20, 180)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_navigation_msgsPolarReadingScan:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 20, 180))
        value = _read_Ros1Pal_navigation_msgsPolarReadingScan(reader)
        reader.end()
        return value

_record_Ros1Pal_navigation_msgsPolarReadingScan = Ros1Pal_navigation_msgsPolarReadingScan

def _write_Ros1Pal_navigation_msgsPolarReadingScan(writer, value):
    if type(value) is not Ros1Pal_navigation_msgsPolarReadingScan:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros1Std_msgsHeader(writer, _part0)
    _part1 = value.readings
    if type(_part1) not in (list, tuple):
        raise TypeError('array value required')
    _count1 = len(_part1)
    if _count1 > 4:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        _write_Ros1Pal_navigation_msgsPolarReading(writer, _element)
    if not 20 <= len(writer.data) - _start <= 180:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_navigation_msgsPolarReadingScan(reader):
    _start = reader.position
    value = Ros1Pal_navigation_msgsPolarReadingScan()
    value.header = _read_Ros1Std_msgsHeader(reader)
    value.readings = [_read_Ros1Pal_navigation_msgsPolarReading(reader) for _ in range(_read_count(reader, 4, 8))]
    if not 20 <= reader.position - _start <= 180:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_navigation_msgsRenameMapRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_navigation_msgs/RenameMapRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_a0c1e30166e0a09c94ab0192d8f0b34954eb795eb34f2636110dee13a1539852'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 264
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 264
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    current_map_name: _py_str = ''
    new_map_name: _py_str = ''

    def encode(self):
        writer = _Writer(264)
        _write_Ros1Pal_navigation_msgsRenameMapRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 264)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_navigation_msgsRenameMapRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 264))
        value = _read_Ros1Pal_navigation_msgsRenameMapRequest(reader)
        reader.end()
        return value

_record_Ros1Pal_navigation_msgsRenameMapRequest = Ros1Pal_navigation_msgsRenameMapRequest

def _write_Ros1Pal_navigation_msgsRenameMapRequest(writer, value):
    if type(value) is not Ros1Pal_navigation_msgsRenameMapRequest:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.current_map_name
    _write_text(writer, _part0, 128)
    _part1 = value.new_map_name
    _write_text(writer, _part1, 128)
    if not 8 <= len(writer.data) - _start <= 264:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_navigation_msgsRenameMapRequest(reader):
    _start = reader.position
    value = Ros1Pal_navigation_msgsRenameMapRequest()
    value.current_map_name = _read_text(reader, 128)
    value.new_map_name = _read_text(reader, 128)
    if not 8 <= reader.position - _start <= 264:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_navigation_msgsRenameMapResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_navigation_msgs/RenameMapResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_9a2e4bcfbd5b7b7476b7dad1a51fa19f749806fefe395a55834a38e831b51807'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 5
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 133
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 133
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False
    message: _py_str = ''

    def encode(self):
        writer = _Writer(133)
        _write_Ros1Pal_navigation_msgsRenameMapResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 5, 133)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_navigation_msgsRenameMapResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 5, 133))
        value = _read_Ros1Pal_navigation_msgsRenameMapResponse(reader)
        reader.end()
        return value

_record_Ros1Pal_navigation_msgsRenameMapResponse = Ros1Pal_navigation_msgsRenameMapResponse

def _write_Ros1Pal_navigation_msgsRenameMapResponse(writer, value):
    if type(value) is not Ros1Pal_navigation_msgsRenameMapResponse:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part0), 1)
    _part1 = value.message
    _write_text(writer, _part1, 128)
    if not 5 <= len(writer.data) - _start <= 133:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_navigation_msgsRenameMapResponse(reader):
    _start = reader.position
    value = Ros1Pal_navigation_msgsRenameMapResponse()
    value.success = _read_bool(reader)
    value.message = _read_text(reader, 128)
    if not 5 <= reader.position - _start <= 133:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_navigation_msgsSafetyZoneRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_navigation_msgs/SafetyZoneRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_c7bfca2804a0307c6666f800ecaacccc5daf70a315407b097799b2ea2ce8d53f'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 28
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 28
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 28
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = [{'name': 'NO_SENSORS', 'type': 'int8', 'native_type': 'byte', 'literal': '0', 'value': '0'},
     {'name': 'ALL_SENSORS', 'type': 'int8', 'native_type': 'byte', 'literal': '127', 'value': '127'},
     {'name': 'FRONT_SONARS', 'type': 'int8', 'native_type': 'byte', 'literal': '1', 'value': '1'},
     {'name': 'LEFT_SONARS', 'type': 'int8', 'native_type': 'byte', 'literal': '2', 'value': '2'},
     {'name': 'RIGHT_SONARS', 'type': 'int8', 'native_type': 'byte', 'literal': '4', 'value': '4'},
     {'name': 'BACK_SONARS', 'type': 'int8', 'native_type': 'byte', 'literal': '8', 'value': '8'},
     {'name': 'TORSO_SONARS', 'type': 'int8', 'native_type': 'byte', 'literal': '16', 'value': '16'},
     {'name': 'ONLY_SONARS', 'type': 'int8', 'native_type': 'byte', 'literal': '31', 'value': '31'},
     {'name': 'BASE_LASER', 'type': 'int8', 'native_type': 'byte', 'literal': '32', 'value': '32'},
     {'name': 'TORSO_LASER', 'type': 'int8', 'native_type': 'byte', 'literal': '64', 'value': '64'},
     {'name': 'ONLY_LASERS', 'type': 'int8', 'native_type': 'byte', 'literal': '96', 'value': '96'}]
    NO_SENSORS: _ClassVar = 0
    ALL_SENSORS: _ClassVar = 127
    FRONT_SONARS: _ClassVar = 1
    LEFT_SONARS: _ClassVar = 2
    RIGHT_SONARS: _ClassVar = 4
    BACK_SONARS: _ClassVar = 8
    TORSO_SONARS: _ClassVar = 16
    ONLY_SONARS: _ClassVar = 31
    BASE_LASER: _ClassVar = 32
    TORSO_LASER: _ClassVar = 64
    ONLY_LASERS: _ClassVar = 96
    distance: _py_float = 0.0
    leftAngleRad: _py_float = 0.0
    rightAngleRad: _py_float = 0.0
    sensorMask: _py_int = 0

    def encode(self):
        writer = _Writer(28)
        _write_Ros1Pal_navigation_msgsSafetyZoneRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 28, 28)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_navigation_msgsSafetyZoneRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 28, 28))
        value = _read_Ros1Pal_navigation_msgsSafetyZoneRequest(reader)
        reader.end()
        return value

_record_Ros1Pal_navigation_msgsSafetyZoneRequest = Ros1Pal_navigation_msgsSafetyZoneRequest

def _write_Ros1Pal_navigation_msgsSafetyZoneRequest(writer, value):
    if type(value) is not Ros1Pal_navigation_msgsSafetyZoneRequest:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.distance
    writer.f64(_part0)
    _part1 = value.leftAngleRad
    writer.f64(_part1)
    _part2 = value.rightAngleRad
    writer.f64(_part2)
    _part3 = value.sensorMask
    writer.integer(_part3, 4, False)
    if not 28 <= len(writer.data) - _start <= 28:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_navigation_msgsSafetyZoneRequest(reader):
    _start = reader.position
    value = Ros1Pal_navigation_msgsSafetyZoneRequest()
    value.distance = reader.f64()
    value.leftAngleRad = reader.f64()
    value.rightAngleRad = reader.f64()
    value.sensorMask = reader.integer(4, False)
    if not 28 <= reader.position - _start <= 28:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_navigation_msgsSafetyZoneResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_navigation_msgs/SafetyZoneResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_237e4207a82e5b1a1caccdf5a010cef018d1bcebff8c00a550d11bb5f729d122'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 34
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 34
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 34
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    leftSafe: _py_bool = False
    leftMinDist: _py_float = 0.0
    leftMinDistAngleRad: _py_float = 0.0
    rightSafe: _py_bool = False
    rightMinDist: _py_float = 0.0
    rightMinDistAngleRad: _py_float = 0.0

    def encode(self):
        writer = _Writer(34)
        _write_Ros1Pal_navigation_msgsSafetyZoneResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 34, 34)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_navigation_msgsSafetyZoneResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 34, 34))
        value = _read_Ros1Pal_navigation_msgsSafetyZoneResponse(reader)
        reader.end()
        return value

_record_Ros1Pal_navigation_msgsSafetyZoneResponse = Ros1Pal_navigation_msgsSafetyZoneResponse

def _write_Ros1Pal_navigation_msgsSafetyZoneResponse(writer, value):
    if type(value) is not Ros1Pal_navigation_msgsSafetyZoneResponse:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.leftSafe
    if type(_part0) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part0), 1)
    _part1 = value.leftMinDist
    writer.f64(_part1)
    _part2 = value.leftMinDistAngleRad
    writer.f64(_part2)
    _part3 = value.rightSafe
    if type(_part3) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part3), 1)
    _part4 = value.rightMinDist
    writer.f64(_part4)
    _part5 = value.rightMinDistAngleRad
    writer.f64(_part5)
    if not 34 <= len(writer.data) - _start <= 34:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_navigation_msgsSafetyZoneResponse(reader):
    _start = reader.position
    value = Ros1Pal_navigation_msgsSafetyZoneResponse()
    value.leftSafe = _read_bool(reader)
    value.leftMinDist = reader.f64()
    value.leftMinDistAngleRad = reader.f64()
    value.rightSafe = _read_bool(reader)
    value.rightMinDist = reader.f64()
    value.rightMinDistAngleRad = reader.f64()
    if not 34 <= reader.position - _start <= 34:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_navigation_msgsSaveMapRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_navigation_msgs/SaveMapRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_a5ff7c9bf1f8f2117dda21a7ac565fc743a6753a0de329ea601754bfed7fb07d'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 132
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 132
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    directory: _py_str = ''

    def encode(self):
        writer = _Writer(132)
        _write_Ros1Pal_navigation_msgsSaveMapRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 132)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_navigation_msgsSaveMapRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 4, 132))
        value = _read_Ros1Pal_navigation_msgsSaveMapRequest(reader)
        reader.end()
        return value

_record_Ros1Pal_navigation_msgsSaveMapRequest = Ros1Pal_navigation_msgsSaveMapRequest

def _write_Ros1Pal_navigation_msgsSaveMapRequest(writer, value):
    if type(value) is not Ros1Pal_navigation_msgsSaveMapRequest:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.directory
    _write_text(writer, _part0, 128)
    if not 4 <= len(writer.data) - _start <= 132:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_navigation_msgsSaveMapRequest(reader):
    _start = reader.position
    value = Ros1Pal_navigation_msgsSaveMapRequest()
    value.directory = _read_text(reader, 128)
    if not 4 <= reader.position - _start <= 132:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_navigation_msgsSaveMapResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_navigation_msgs/SaveMapResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_afc5ee8548a56c73711b0f2057a399d88b02485b96b9ef7c2c4deec48ddcb064'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 13
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 397
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 397
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False
    name: _py_str = ''
    full_path: _py_str = ''
    message: _py_str = ''

    def encode(self):
        writer = _Writer(397)
        _write_Ros1Pal_navigation_msgsSaveMapResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 13, 397)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_navigation_msgsSaveMapResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 13, 397))
        value = _read_Ros1Pal_navigation_msgsSaveMapResponse(reader)
        reader.end()
        return value

_record_Ros1Pal_navigation_msgsSaveMapResponse = Ros1Pal_navigation_msgsSaveMapResponse

def _write_Ros1Pal_navigation_msgsSaveMapResponse(writer, value):
    if type(value) is not Ros1Pal_navigation_msgsSaveMapResponse:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part0), 1)
    _part1 = value.name
    _write_text(writer, _part1, 128)
    _part2 = value.full_path
    _write_text(writer, _part2, 128)
    _part3 = value.message
    _write_text(writer, _part3, 128)
    if not 13 <= len(writer.data) - _start <= 397:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_navigation_msgsSaveMapResponse(reader):
    _start = reader.position
    value = Ros1Pal_navigation_msgsSaveMapResponse()
    value.success = _read_bool(reader)
    value.name = _read_text(reader, 128)
    value.full_path = _read_text(reader, 128)
    value.message = _read_text(reader, 128)
    if not 13 <= reader.position - _start <= 397:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_navigation_msgsServiceStatus:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_navigation_msgs/ServiceStatus'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_c08ab79758b14d1722aaaf425096153a299db64bf4efa8f154d08f20b0d68622'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 18
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 146
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 146
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    serviceName: _py_str = ''
    is_running: _py_bool = False
    update_frequency: _py_float = 0.0
    latest_run_time: _record_Ros1Time = _field(default_factory=lambda: Ros1Time())
    status: _py_bool = False

    def encode(self):
        writer = _Writer(146)
        _write_Ros1Pal_navigation_msgsServiceStatus(writer, self)
        wire = writer.finish()
        return _wire(wire, 18, 146)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_navigation_msgsServiceStatus:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 18, 146))
        value = _read_Ros1Pal_navigation_msgsServiceStatus(reader)
        reader.end()
        return value

_record_Ros1Pal_navigation_msgsServiceStatus = Ros1Pal_navigation_msgsServiceStatus

def _write_Ros1Pal_navigation_msgsServiceStatus(writer, value):
    if type(value) is not Ros1Pal_navigation_msgsServiceStatus:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.serviceName
    _write_text(writer, _part0, 128)
    _part1 = value.is_running
    if type(_part1) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part1), 1)
    _part2 = value.update_frequency
    writer.f32(_part2)
    _part3 = value.latest_run_time
    _write_Ros1Time(writer, _part3)
    _part4 = value.status
    if type(_part4) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part4), 1)
    if not 18 <= len(writer.data) - _start <= 146:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_navigation_msgsServiceStatus(reader):
    _start = reader.position
    value = Ros1Pal_navigation_msgsServiceStatus()
    value.serviceName = _read_text(reader, 128)
    value.is_running = _read_bool(reader)
    value.update_frequency = reader.f32()
    value.latest_run_time = _read_Ros1Time(reader)
    value.status = _read_bool(reader)
    if not 18 <= reader.position - _start <= 146:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_navigation_msgsSetMapConfigurationRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_navigation_msgs/SetMapConfigurationRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_f8205ddf6c3a59445ee1a9868259a07e4b5d2d88e3e722259410016317b88cd8'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 317
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 15953
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 15953
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    map_config: _record_Ros1Pal_navigation_msgsMapConfiguration = _field(default_factory=lambda: Ros1Pal_navigation_msgsMapConfiguration())

    def encode(self):
        writer = _Writer(15953)
        _write_Ros1Pal_navigation_msgsSetMapConfigurationRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 317, 15953)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_navigation_msgsSetMapConfigurationRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 317, 15953))
        value = _read_Ros1Pal_navigation_msgsSetMapConfigurationRequest(reader)
        reader.end()
        return value

_record_Ros1Pal_navigation_msgsSetMapConfigurationRequest = Ros1Pal_navigation_msgsSetMapConfigurationRequest

def _write_Ros1Pal_navigation_msgsSetMapConfigurationRequest(writer, value):
    if type(value) is not Ros1Pal_navigation_msgsSetMapConfigurationRequest:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.map_config
    _write_Ros1Pal_navigation_msgsMapConfiguration(writer, _part0)
    if not 317 <= len(writer.data) - _start <= 15953:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_navigation_msgsSetMapConfigurationRequest(reader):
    _start = reader.position
    value = Ros1Pal_navigation_msgsSetMapConfigurationRequest()
    value.map_config = _read_Ros1Pal_navigation_msgsMapConfiguration(reader)
    if not 317 <= reader.position - _start <= 15953:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_navigation_msgsSetMapConfigurationResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_navigation_msgs/SetMapConfigurationResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_ef256f903c5860e7f8eb52e644184d325614940a29b96beb716381d1a066f701'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Pal_navigation_msgsSetMapConfigurationResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_navigation_msgsSetMapConfigurationResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Pal_navigation_msgsSetMapConfigurationResponse(reader)
        reader.end()
        return value

_record_Ros1Pal_navigation_msgsSetMapConfigurationResponse = Ros1Pal_navigation_msgsSetMapConfigurationResponse

def _write_Ros1Pal_navigation_msgsSetMapConfigurationResponse(writer, value):
    if type(value) is not Ros1Pal_navigation_msgsSetMapConfigurationResponse:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros1Pal_navigation_msgsSetMapConfigurationResponse(reader):
    _start = reader.position
    value = Ros1Pal_navigation_msgsSetMapConfigurationResponse()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_navigation_msgsSetPOIRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_navigation_msgs/SetPOIRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_ca248b399762c27d6bf941c2600ead52f026f9b5a1fde3987d6050b2626c582e'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 32
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1664
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1664
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    poi: _record_Ros1Pal_navigation_msgsPOI = _field(default_factory=lambda: Ros1Pal_navigation_msgsPOI())

    def encode(self):
        writer = _Writer(1664)
        _write_Ros1Pal_navigation_msgsSetPOIRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 32, 1664)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_navigation_msgsSetPOIRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 32, 1664))
        value = _read_Ros1Pal_navigation_msgsSetPOIRequest(reader)
        reader.end()
        return value

_record_Ros1Pal_navigation_msgsSetPOIRequest = Ros1Pal_navigation_msgsSetPOIRequest

def _write_Ros1Pal_navigation_msgsSetPOIRequest(writer, value):
    if type(value) is not Ros1Pal_navigation_msgsSetPOIRequest:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.poi
    _write_Ros1Pal_navigation_msgsPOI(writer, _part0)
    if not 32 <= len(writer.data) - _start <= 1664:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_navigation_msgsSetPOIRequest(reader):
    _start = reader.position
    value = Ros1Pal_navigation_msgsSetPOIRequest()
    value.poi = _read_Ros1Pal_navigation_msgsPOI(reader)
    if not 32 <= reader.position - _start <= 1664:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_navigation_msgsSetPOIResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_navigation_msgs/SetPOIResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_a273017f817a15e0936b8eba139ca9797c2f550b7b5926a9275416dce3dfbfd1'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Pal_navigation_msgsSetPOIResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_navigation_msgsSetPOIResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Pal_navigation_msgsSetPOIResponse(reader)
        reader.end()
        return value

_record_Ros1Pal_navigation_msgsSetPOIResponse = Ros1Pal_navigation_msgsSetPOIResponse

def _write_Ros1Pal_navigation_msgsSetPOIResponse(writer, value):
    if type(value) is not Ros1Pal_navigation_msgsSetPOIResponse:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros1Pal_navigation_msgsSetPOIResponse(reader):
    _start = reader.position
    value = Ros1Pal_navigation_msgsSetPOIResponse()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_navigation_msgsSetSubMapFloorRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_navigation_msgs/SetSubMapFloorRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_4bade8d2022442add78465f9e7aa302fd650256c6e4fefedadc46f6ea3f19536'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 2
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 2
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 2
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    index: _py_int = 0
    floor: _py_int = 0

    def encode(self):
        writer = _Writer(2)
        _write_Ros1Pal_navigation_msgsSetSubMapFloorRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 2, 2)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_navigation_msgsSetSubMapFloorRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 2, 2))
        value = _read_Ros1Pal_navigation_msgsSetSubMapFloorRequest(reader)
        reader.end()
        return value

_record_Ros1Pal_navigation_msgsSetSubMapFloorRequest = Ros1Pal_navigation_msgsSetSubMapFloorRequest

def _write_Ros1Pal_navigation_msgsSetSubMapFloorRequest(writer, value):
    if type(value) is not Ros1Pal_navigation_msgsSetSubMapFloorRequest:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.index
    writer.integer(_part0, 1, True)
    _part1 = value.floor
    writer.integer(_part1, 1, True)
    if not 2 <= len(writer.data) - _start <= 2:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_navigation_msgsSetSubMapFloorRequest(reader):
    _start = reader.position
    value = Ros1Pal_navigation_msgsSetSubMapFloorRequest()
    value.index = reader.integer(1, True)
    value.floor = reader.integer(1, True)
    if not 2 <= reader.position - _start <= 2:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_navigation_msgsSetSubMapFloorResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_navigation_msgs/SetSubMapFloorResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_67d24dd2353c6ee7113822da8a23e15a5a465c6f692ef40d8ca8486b5fccc1ac'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Pal_navigation_msgsSetSubMapFloorResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_navigation_msgsSetSubMapFloorResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Pal_navigation_msgsSetSubMapFloorResponse(reader)
        reader.end()
        return value

_record_Ros1Pal_navigation_msgsSetSubMapFloorResponse = Ros1Pal_navigation_msgsSetSubMapFloorResponse

def _write_Ros1Pal_navigation_msgsSetSubMapFloorResponse(writer, value):
    if type(value) is not Ros1Pal_navigation_msgsSetSubMapFloorResponse:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros1Pal_navigation_msgsSetSubMapFloorResponse(reader):
    _start = reader.position
    value = Ros1Pal_navigation_msgsSetSubMapFloorResponse()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_navigation_msgsTabletPOI:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_navigation_msgs/TabletPOI'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_0f632e29a4a78c036cf5ccb39ae26a0f64a7642d727698c06f2d879de9241ae0'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 764
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 764
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    POIs: _py_list[_record_Ros1Geometry_msgsPoint] = _field(default_factory=lambda: [])
    IDs: _py_list[_record_Ros1Std_msgsString] = _field(default_factory=lambda: [])
    map_id: _record_Ros1Std_msgsString = _field(default_factory=lambda: Ros1Std_msgsString())

    def encode(self):
        writer = _Writer(764)
        _write_Ros1Pal_navigation_msgsTabletPOI(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 764)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_navigation_msgsTabletPOI:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 12, 764))
        value = _read_Ros1Pal_navigation_msgsTabletPOI(reader)
        reader.end()
        return value

_record_Ros1Pal_navigation_msgsTabletPOI = Ros1Pal_navigation_msgsTabletPOI

def _write_Ros1Pal_navigation_msgsTabletPOI(writer, value):
    if type(value) is not Ros1Pal_navigation_msgsTabletPOI:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.POIs
    if type(_part0) not in (list, tuple):
        raise TypeError('array value required')
    _count0 = len(_part0)
    if _count0 > 4:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count0, 4)
    for _index in range(_count0):
        _element = _part0[_index]
        _write_Ros1Geometry_msgsPoint(writer, _element)
    _part1 = value.IDs
    if type(_part1) not in (list, tuple):
        raise TypeError('array value required')
    _count1 = len(_part1)
    if _count1 > 4:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        _write_Ros1Std_msgsString(writer, _element)
    _part2 = value.map_id
    _write_Ros1Std_msgsString(writer, _part2)
    if not 12 <= len(writer.data) - _start <= 764:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_navigation_msgsTabletPOI(reader):
    _start = reader.position
    value = Ros1Pal_navigation_msgsTabletPOI()
    value.POIs = [_read_Ros1Geometry_msgsPoint(reader) for _ in range(_read_count(reader, 4, 24))]
    value.IDs = [_read_Ros1Std_msgsString(reader) for _ in range(_read_count(reader, 4, 4))]
    value.map_id = _read_Ros1Std_msgsString(reader)
    if not 12 <= reader.position - _start <= 764:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_navigation_msgsVisualLocRecognizeRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_navigation_msgs/VisualLocRecognizeRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_7a4a33e9269b79d338bc44c15c0e9ffab87d8fe9c132fddd487df5b9248600e4'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Pal_navigation_msgsVisualLocRecognizeRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_navigation_msgsVisualLocRecognizeRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Pal_navigation_msgsVisualLocRecognizeRequest(reader)
        reader.end()
        return value

_record_Ros1Pal_navigation_msgsVisualLocRecognizeRequest = Ros1Pal_navigation_msgsVisualLocRecognizeRequest

def _write_Ros1Pal_navigation_msgsVisualLocRecognizeRequest(writer, value):
    if type(value) is not Ros1Pal_navigation_msgsVisualLocRecognizeRequest:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros1Pal_navigation_msgsVisualLocRecognizeRequest(reader):
    _start = reader.position
    value = Ros1Pal_navigation_msgsVisualLocRecognizeRequest()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_navigation_msgsVisualLocRecognizeResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_navigation_msgs/VisualLocRecognizeResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_306e234599c2ff8a294a8e078a4f6c43dbf8fba8d368fca5a6016826b098be89'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 369
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 497
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 497
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False
    confidence: _py_float = 0.0
    estimatedPose: _record_Ros1Geometry_msgsPoseWithCovarianceStamped = _field(default_factory=lambda: Ros1Geometry_msgsPoseWithCovarianceStamped())

    def encode(self):
        writer = _Writer(497)
        _write_Ros1Pal_navigation_msgsVisualLocRecognizeResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 369, 497)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_navigation_msgsVisualLocRecognizeResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 369, 497))
        value = _read_Ros1Pal_navigation_msgsVisualLocRecognizeResponse(reader)
        reader.end()
        return value

_record_Ros1Pal_navigation_msgsVisualLocRecognizeResponse = Ros1Pal_navigation_msgsVisualLocRecognizeResponse

def _write_Ros1Pal_navigation_msgsVisualLocRecognizeResponse(writer, value):
    if type(value) is not Ros1Pal_navigation_msgsVisualLocRecognizeResponse:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part0), 1)
    _part1 = value.confidence
    writer.f64(_part1)
    _part2 = value.estimatedPose
    _write_Ros1Geometry_msgsPoseWithCovarianceStamped(writer, _part2)
    if not 369 <= len(writer.data) - _start <= 497:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_navigation_msgsVisualLocRecognizeResponse(reader):
    _start = reader.position
    value = Ros1Pal_navigation_msgsVisualLocRecognizeResponse()
    value.success = _read_bool(reader)
    value.confidence = reader.f64()
    value.estimatedPose = _read_Ros1Geometry_msgsPoseWithCovarianceStamped(reader)
    if not 369 <= reader.position - _start <= 497:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_navigation_msgsVisualTrainingGoal:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_navigation_msgs/VisualTrainingGoal'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_ea430253b6b7cd7fd82e0e3cbc0c40cb6d4835444a09587d90f1b698dd53ade4'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 5
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 133
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 133
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = [{'name': 'ACTION_TRAIN', 'type': 'uint8', 'native_type': 'uint8', 'literal': '0', 'value': '0'}]
    ACTION_TRAIN: _ClassVar = 0
    action: _py_int = 0
    database_path: _py_str = ''

    def encode(self):
        writer = _Writer(133)
        _write_Ros1Pal_navigation_msgsVisualTrainingGoal(writer, self)
        wire = writer.finish()
        return _wire(wire, 5, 133)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_navigation_msgsVisualTrainingGoal:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 5, 133))
        value = _read_Ros1Pal_navigation_msgsVisualTrainingGoal(reader)
        reader.end()
        return value

_record_Ros1Pal_navigation_msgsVisualTrainingGoal = Ros1Pal_navigation_msgsVisualTrainingGoal

def _write_Ros1Pal_navigation_msgsVisualTrainingGoal(writer, value):
    if type(value) is not Ros1Pal_navigation_msgsVisualTrainingGoal:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.action
    writer.integer(_part0, 1, False)
    _part1 = value.database_path
    _write_text(writer, _part1, 128)
    if not 5 <= len(writer.data) - _start <= 133:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_navigation_msgsVisualTrainingGoal(reader):
    _start = reader.position
    value = Ros1Pal_navigation_msgsVisualTrainingGoal()
    value.action = reader.integer(1, False)
    value.database_path = _read_text(reader, 128)
    if not 5 <= reader.position - _start <= 133:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_navigation_msgsVisualTrainingResult:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_navigation_msgs/VisualTrainingResult'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_3a1c9623f4ec7e02ecf7a33978d54c95b9c3a42f4cb5004e11f062774175c387'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Pal_navigation_msgsVisualTrainingResult(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_navigation_msgsVisualTrainingResult:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Pal_navigation_msgsVisualTrainingResult(reader)
        reader.end()
        return value

_record_Ros1Pal_navigation_msgsVisualTrainingResult = Ros1Pal_navigation_msgsVisualTrainingResult

def _write_Ros1Pal_navigation_msgsVisualTrainingResult(writer, value):
    if type(value) is not Ros1Pal_navigation_msgsVisualTrainingResult:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros1Pal_navigation_msgsVisualTrainingResult(reader):
    _start = reader.position
    value = Ros1Pal_navigation_msgsVisualTrainingResult()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_navigation_msgsVisualTrainingFeedback:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_navigation_msgs/VisualTrainingFeedback'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_39409b2914607480bd3fb1f3ec5162c11ab8b8e773e23f7730693c2461deaab3'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Pal_navigation_msgsVisualTrainingFeedback(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_navigation_msgsVisualTrainingFeedback:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Pal_navigation_msgsVisualTrainingFeedback(reader)
        reader.end()
        return value

_record_Ros1Pal_navigation_msgsVisualTrainingFeedback = Ros1Pal_navigation_msgsVisualTrainingFeedback

def _write_Ros1Pal_navigation_msgsVisualTrainingFeedback(writer, value):
    if type(value) is not Ros1Pal_navigation_msgsVisualTrainingFeedback:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros1Pal_navigation_msgsVisualTrainingFeedback(reader):
    _start = reader.position
    value = Ros1Pal_navigation_msgsVisualTrainingFeedback()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_simulation_msgsExternalWrench:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_simulation_msgs/ExternalWrench'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_b85249fbffa7b83dd13e2f42d71c5a4136743e892760cf0eb65bbaf3dfd0824c'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 100
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 356
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 356
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros1Std_msgsHeader = _field(default_factory=lambda: Ros1Std_msgsHeader())
    link_name: _py_str = ''
    wrench: _record_Ros1Geometry_msgsWrench = _field(default_factory=lambda: Ros1Geometry_msgsWrench())
    application_point: _record_Ros1Geometry_msgsPoint = _field(default_factory=lambda: Ros1Geometry_msgsPoint())
    duration: _record_Ros1Duration = _field(default_factory=lambda: Ros1Duration())

    def encode(self):
        writer = _Writer(356)
        _write_Ros1Pal_simulation_msgsExternalWrench(writer, self)
        wire = writer.finish()
        return _wire(wire, 100, 356)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_simulation_msgsExternalWrench:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 100, 356))
        value = _read_Ros1Pal_simulation_msgsExternalWrench(reader)
        reader.end()
        return value

_record_Ros1Pal_simulation_msgsExternalWrench = Ros1Pal_simulation_msgsExternalWrench

def _write_Ros1Pal_simulation_msgsExternalWrench(writer, value):
    if type(value) is not Ros1Pal_simulation_msgsExternalWrench:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros1Std_msgsHeader(writer, _part0)
    _part1 = value.link_name
    _write_text(writer, _part1, 128)
    _part2 = value.wrench
    _write_Ros1Geometry_msgsWrench(writer, _part2)
    _part3 = value.application_point
    _write_Ros1Geometry_msgsPoint(writer, _part3)
    _part4 = value.duration
    _write_Ros1Duration(writer, _part4)
    if not 100 <= len(writer.data) - _start <= 356:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_simulation_msgsExternalWrench(reader):
    _start = reader.position
    value = Ros1Pal_simulation_msgsExternalWrench()
    value.header = _read_Ros1Std_msgsHeader(reader)
    value.link_name = _read_text(reader, 128)
    value.wrench = _read_Ros1Geometry_msgsWrench(reader)
    value.application_point = _read_Ros1Geometry_msgsPoint(reader)
    value.duration = _read_Ros1Duration(reader)
    if not 100 <= reader.position - _start <= 356:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_tablet_msgsFunctionalityStatus:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_tablet_msgs/FunctionalityStatus'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_ce7e4fc9d13688058739c422c63a6af44d883b54b3efde8aed4e3272f8b0de35'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 5
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 133
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 133
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    errMessage: _record_Ros1Std_msgsString = _field(default_factory=lambda: Ros1Std_msgsString())
    errStatus: _record_Ros1Std_msgsBool = _field(default_factory=lambda: Ros1Std_msgsBool())

    def encode(self):
        writer = _Writer(133)
        _write_Ros1Pal_tablet_msgsFunctionalityStatus(writer, self)
        wire = writer.finish()
        return _wire(wire, 5, 133)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_tablet_msgsFunctionalityStatus:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 5, 133))
        value = _read_Ros1Pal_tablet_msgsFunctionalityStatus(reader)
        reader.end()
        return value

_record_Ros1Pal_tablet_msgsFunctionalityStatus = Ros1Pal_tablet_msgsFunctionalityStatus

def _write_Ros1Pal_tablet_msgsFunctionalityStatus(writer, value):
    if type(value) is not Ros1Pal_tablet_msgsFunctionalityStatus:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.errMessage
    _write_Ros1Std_msgsString(writer, _part0)
    _part1 = value.errStatus
    _write_Ros1Std_msgsBool(writer, _part1)
    if not 5 <= len(writer.data) - _start <= 133:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_tablet_msgsFunctionalityStatus(reader):
    _start = reader.position
    value = Ros1Pal_tablet_msgsFunctionalityStatus()
    value.errMessage = _read_Ros1Std_msgsString(reader)
    value.errStatus = _read_Ros1Std_msgsBool(reader)
    if not 5 <= reader.position - _start <= 133:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_tablet_msgsRobotStatus:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_tablet_msgs/RobotStatus'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_b01e5783832f7b816d0dca678bca11f49554304116bf9a8fccc9b36b18b4478d'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 536
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 536
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    messages: _py_list[_record_Ros1Pal_tablet_msgsFunctionalityStatus] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(536)
        _write_Ros1Pal_tablet_msgsRobotStatus(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 536)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_tablet_msgsRobotStatus:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 4, 536))
        value = _read_Ros1Pal_tablet_msgsRobotStatus(reader)
        reader.end()
        return value

_record_Ros1Pal_tablet_msgsRobotStatus = Ros1Pal_tablet_msgsRobotStatus

def _write_Ros1Pal_tablet_msgsRobotStatus(writer, value):
    if type(value) is not Ros1Pal_tablet_msgsRobotStatus:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.messages
    if type(_part0) not in (list, tuple):
        raise TypeError('array value required')
    _count0 = len(_part0)
    if _count0 > 4:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count0, 4)
    for _index in range(_count0):
        _element = _part0[_index]
        _write_Ros1Pal_tablet_msgsFunctionalityStatus(writer, _element)
    if not 4 <= len(writer.data) - _start <= 536:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_tablet_msgsRobotStatus(reader):
    _start = reader.position
    value = Ros1Pal_tablet_msgsRobotStatus()
    value.messages = [_read_Ros1Pal_tablet_msgsFunctionalityStatus(reader) for _ in range(_read_count(reader, 4, 5))]
    if not 4 <= reader.position - _start <= 536:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_video_recording_msgsStartRecordingRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_video_recording_msgs/StartRecordingRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_214a2bd3c382b4bd7dbb15d1b694e6d385bd9b2656944068177bd0408a16d914'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Pal_video_recording_msgsStartRecordingRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_video_recording_msgsStartRecordingRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Pal_video_recording_msgsStartRecordingRequest(reader)
        reader.end()
        return value

_record_Ros1Pal_video_recording_msgsStartRecordingRequest = Ros1Pal_video_recording_msgsStartRecordingRequest

def _write_Ros1Pal_video_recording_msgsStartRecordingRequest(writer, value):
    if type(value) is not Ros1Pal_video_recording_msgsStartRecordingRequest:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros1Pal_video_recording_msgsStartRecordingRequest(reader):
    _start = reader.position
    value = Ros1Pal_video_recording_msgsStartRecordingRequest()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_video_recording_msgsStartRecordingResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_video_recording_msgs/StartRecordingResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_03b8bcd879b02864300b8a90d721958a4335f53bd17abbd29178471de736d9b6'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Pal_video_recording_msgsStartRecordingResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_video_recording_msgsStartRecordingResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Pal_video_recording_msgsStartRecordingResponse(reader)
        reader.end()
        return value

_record_Ros1Pal_video_recording_msgsStartRecordingResponse = Ros1Pal_video_recording_msgsStartRecordingResponse

def _write_Ros1Pal_video_recording_msgsStartRecordingResponse(writer, value):
    if type(value) is not Ros1Pal_video_recording_msgsStartRecordingResponse:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros1Pal_video_recording_msgsStartRecordingResponse(reader):
    _start = reader.position
    value = Ros1Pal_video_recording_msgsStartRecordingResponse()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_video_recording_msgsStopRecordingRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_video_recording_msgs/StopRecordingRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_2fe53f84621ac67f592d86f028c2d5be67f4fee13663b82a9b128d50a8a1c4f5'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Pal_video_recording_msgsStopRecordingRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_video_recording_msgsStopRecordingRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Pal_video_recording_msgsStopRecordingRequest(reader)
        reader.end()
        return value

_record_Ros1Pal_video_recording_msgsStopRecordingRequest = Ros1Pal_video_recording_msgsStopRecordingRequest

def _write_Ros1Pal_video_recording_msgsStopRecordingRequest(writer, value):
    if type(value) is not Ros1Pal_video_recording_msgsStopRecordingRequest:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros1Pal_video_recording_msgsStopRecordingRequest(reader):
    _start = reader.position
    value = Ros1Pal_video_recording_msgsStopRecordingRequest()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_video_recording_msgsStopRecordingResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_video_recording_msgs/StopRecordingResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_0e7555737246a82dcf9203313b8bfc43c808fa1d8a405c4159bf3b837545b7c2'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Pal_video_recording_msgsStopRecordingResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_video_recording_msgsStopRecordingResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Pal_video_recording_msgsStopRecordingResponse(reader)
        reader.end()
        return value

_record_Ros1Pal_video_recording_msgsStopRecordingResponse = Ros1Pal_video_recording_msgsStopRecordingResponse

def _write_Ros1Pal_video_recording_msgsStopRecordingResponse(writer, value):
    if type(value) is not Ros1Pal_video_recording_msgsStopRecordingResponse:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros1Pal_video_recording_msgsStopRecordingResponse(reader):
    _start = reader.position
    value = Ros1Pal_video_recording_msgsStopRecordingResponse()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_vision_msgsDetectedObject:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_vision_msgs/DetectedObject'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_49ddd55b2f5fc8053980d77760c563c563113d1dafc899b0b5d619f98ab7ad25'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 40
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 168
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 168
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros1Std_msgsHeader = _field(default_factory=lambda: Ros1Std_msgsHeader())
    position3D: _record_Ros1Geometry_msgsPoint = _field(default_factory=lambda: Ros1Geometry_msgsPoint())

    def encode(self):
        writer = _Writer(168)
        _write_Ros1Pal_vision_msgsDetectedObject(writer, self)
        wire = writer.finish()
        return _wire(wire, 40, 168)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_vision_msgsDetectedObject:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 40, 168))
        value = _read_Ros1Pal_vision_msgsDetectedObject(reader)
        reader.end()
        return value

_record_Ros1Pal_vision_msgsDetectedObject = Ros1Pal_vision_msgsDetectedObject

def _write_Ros1Pal_vision_msgsDetectedObject(writer, value):
    if type(value) is not Ros1Pal_vision_msgsDetectedObject:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros1Std_msgsHeader(writer, _part0)
    _part1 = value.position3D
    _write_Ros1Geometry_msgsPoint(writer, _part1)
    if not 40 <= len(writer.data) - _start <= 168:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_vision_msgsDetectedObject(reader):
    _start = reader.position
    value = Ros1Pal_vision_msgsDetectedObject()
    value.header = _read_Ros1Std_msgsHeader(reader)
    value.position3D = _read_Ros1Geometry_msgsPoint(reader)
    if not 40 <= reader.position - _start <= 168:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Std_msgsColorRGBA:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'std_msgs/ColorRGBA'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_2c956a9dd28dc999fc04f9704e68021ae940136f6c54d151975792a9344da90d'
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
        _write_Ros1Std_msgsColorRGBA(writer, self)
        wire = writer.finish()
        return _wire(wire, 16, 16)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Std_msgsColorRGBA:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 16, 16))
        value = _read_Ros1Std_msgsColorRGBA(reader)
        reader.end()
        return value

_record_Ros1Std_msgsColorRGBA = Ros1Std_msgsColorRGBA

def _write_Ros1Std_msgsColorRGBA(writer, value):
    if type(value) is not Ros1Std_msgsColorRGBA:
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

def _read_Ros1Std_msgsColorRGBA(reader):
    _start = reader.position
    value = Ros1Std_msgsColorRGBA()
    value.r = reader.f32()
    value.g = reader.f32()
    value.b = reader.f32()
    value.a = reader.f32()
    if not 16 <= reader.position - _start <= 16:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_vision_msgsRectangle:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_vision_msgs/Rectangle'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_fa96c9ba0ef62b6f620e1200ffde47ce33ae8d41e444c39ae65e6aa3b27954c4'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 32
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 32
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 32
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    x: _py_int = 0
    y: _py_int = 0
    width: _py_int = 0
    height: _py_int = 0

    def encode(self):
        writer = _Writer(32)
        _write_Ros1Pal_vision_msgsRectangle(writer, self)
        wire = writer.finish()
        return _wire(wire, 32, 32)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_vision_msgsRectangle:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 32, 32))
        value = _read_Ros1Pal_vision_msgsRectangle(reader)
        reader.end()
        return value

_record_Ros1Pal_vision_msgsRectangle = Ros1Pal_vision_msgsRectangle

def _write_Ros1Pal_vision_msgsRectangle(writer, value):
    if type(value) is not Ros1Pal_vision_msgsRectangle:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.x
    writer.integer(_part0, 8, True)
    _part1 = value.y
    writer.integer(_part1, 8, True)
    _part2 = value.width
    writer.integer(_part2, 8, True)
    _part3 = value.height
    writer.integer(_part3, 8, True)
    if not 32 <= len(writer.data) - _start <= 32:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_vision_msgsRectangle(reader):
    _start = reader.position
    value = Ros1Pal_vision_msgsRectangle()
    value.x = reader.integer(8, True)
    value.y = reader.integer(8, True)
    value.width = reader.integer(8, True)
    value.height = reader.integer(8, True)
    if not 32 <= reader.position - _start <= 32:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_vision_msgsDetectedPerson:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_vision_msgs/DetectedPerson'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_ce1f7b8789e0928dc98ba3819be067f6bb077a9144f475f5c50a849be781c82e'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 136
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 264
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 264
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros1Std_msgsHeader = _field(default_factory=lambda: Ros1Std_msgsHeader())
    objectId: _py_int = 0
    boxColour: _record_Ros1Std_msgsColorRGBA = _field(default_factory=lambda: Ros1Std_msgsColorRGBA())
    confidence: _py_float = 0.0
    position3D: _record_Ros1Geometry_msgsPoint = _field(default_factory=lambda: Ros1Geometry_msgsPoint())
    box: _record_Ros1Pal_vision_msgsRectangle = _field(default_factory=lambda: Ros1Pal_vision_msgsRectangle())
    faceBox: _record_Ros1Pal_vision_msgsRectangle = _field(default_factory=lambda: Ros1Pal_vision_msgsRectangle())

    def encode(self):
        writer = _Writer(264)
        _write_Ros1Pal_vision_msgsDetectedPerson(writer, self)
        wire = writer.finish()
        return _wire(wire, 136, 264)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_vision_msgsDetectedPerson:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 136, 264))
        value = _read_Ros1Pal_vision_msgsDetectedPerson(reader)
        reader.end()
        return value

_record_Ros1Pal_vision_msgsDetectedPerson = Ros1Pal_vision_msgsDetectedPerson

def _write_Ros1Pal_vision_msgsDetectedPerson(writer, value):
    if type(value) is not Ros1Pal_vision_msgsDetectedPerson:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros1Std_msgsHeader(writer, _part0)
    _part1 = value.objectId
    writer.integer(_part1, 8, True)
    _part2 = value.boxColour
    _write_Ros1Std_msgsColorRGBA(writer, _part2)
    _part3 = value.confidence
    writer.f64(_part3)
    _part4 = value.position3D
    _write_Ros1Geometry_msgsPoint(writer, _part4)
    _part5 = value.box
    _write_Ros1Pal_vision_msgsRectangle(writer, _part5)
    _part6 = value.faceBox
    _write_Ros1Pal_vision_msgsRectangle(writer, _part6)
    if not 136 <= len(writer.data) - _start <= 264:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_vision_msgsDetectedPerson(reader):
    _start = reader.position
    value = Ros1Pal_vision_msgsDetectedPerson()
    value.header = _read_Ros1Std_msgsHeader(reader)
    value.objectId = reader.integer(8, True)
    value.boxColour = _read_Ros1Std_msgsColorRGBA(reader)
    value.confidence = reader.f64()
    value.position3D = _read_Ros1Geometry_msgsPoint(reader)
    value.box = _read_Ros1Pal_vision_msgsRectangle(reader)
    value.faceBox = _read_Ros1Pal_vision_msgsRectangle(reader)
    if not 136 <= reader.position - _start <= 264:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_vision_msgsFaceDetection:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_vision_msgs/FaceDetection'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_57943eb9a19b9558fc5e7390bfbb3f7ab271cfb5ab7892bc1442a43c8d3217d5'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 60
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 124
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 124
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    position3D: _record_Ros1Geometry_msgsPoint = _field(default_factory=lambda: Ros1Geometry_msgsPoint())
    imageBoundingBox: _record_Ros1Pal_vision_msgsRectangle = _field(default_factory=lambda: Ros1Pal_vision_msgsRectangle())
    hog: _py_list[_py_float] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(124)
        _write_Ros1Pal_vision_msgsFaceDetection(writer, self)
        wire = writer.finish()
        return _wire(wire, 60, 124)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_vision_msgsFaceDetection:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 60, 124))
        value = _read_Ros1Pal_vision_msgsFaceDetection(reader)
        reader.end()
        return value

_record_Ros1Pal_vision_msgsFaceDetection = Ros1Pal_vision_msgsFaceDetection

def _write_Ros1Pal_vision_msgsFaceDetection(writer, value):
    if type(value) is not Ros1Pal_vision_msgsFaceDetection:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.position3D
    _write_Ros1Geometry_msgsPoint(writer, _part0)
    _part1 = value.imageBoundingBox
    _write_Ros1Pal_vision_msgsRectangle(writer, _part1)
    _part2 = value.hog
    if type(_part2) not in (list, tuple):
        raise TypeError('array value required')
    _count2 = len(_part2)
    if _count2 > 16:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        writer.f32(_element)
    if not 60 <= len(writer.data) - _start <= 124:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_vision_msgsFaceDetection(reader):
    _start = reader.position
    value = Ros1Pal_vision_msgsFaceDetection()
    value.position3D = _read_Ros1Geometry_msgsPoint(reader)
    value.imageBoundingBox = _read_Ros1Pal_vision_msgsRectangle(reader)
    value.hog = [reader.f32() for _ in range(_read_count(reader, 16, 4))]
    if not 60 <= reader.position - _start <= 124:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_vision_msgsFaceDetections:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_vision_msgs/FaceDetections'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_bc135c2c93419e99b87edabfe3a72e744e574ec703e77919736ae90f069417a0'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 24
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 648
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 648
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros1Std_msgsHeader = _field(default_factory=lambda: Ros1Std_msgsHeader())
    imgID: _py_int = 0
    faces: _py_list[_record_Ros1Pal_vision_msgsFaceDetection] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(648)
        _write_Ros1Pal_vision_msgsFaceDetections(writer, self)
        wire = writer.finish()
        return _wire(wire, 24, 648)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_vision_msgsFaceDetections:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 24, 648))
        value = _read_Ros1Pal_vision_msgsFaceDetections(reader)
        reader.end()
        return value

_record_Ros1Pal_vision_msgsFaceDetections = Ros1Pal_vision_msgsFaceDetections

def _write_Ros1Pal_vision_msgsFaceDetections(writer, value):
    if type(value) is not Ros1Pal_vision_msgsFaceDetections:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros1Std_msgsHeader(writer, _part0)
    _part1 = value.imgID
    writer.integer(_part1, 4, False)
    _part2 = value.faces
    if type(_part2) not in (list, tuple):
        raise TypeError('array value required')
    _count2 = len(_part2)
    if _count2 > 4:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        _write_Ros1Pal_vision_msgsFaceDetection(writer, _element)
    if not 24 <= len(writer.data) - _start <= 648:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_vision_msgsFaceDetections(reader):
    _start = reader.position
    value = Ros1Pal_vision_msgsFaceDetections()
    value.header = _read_Ros1Std_msgsHeader(reader)
    value.imgID = reader.integer(4, False)
    value.faces = [_read_Ros1Pal_vision_msgsFaceDetection(reader) for _ in range(_read_count(reader, 4, 60))]
    if not 24 <= reader.position - _start <= 648:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_vision_msgsFaceRecognitionGoal:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_vision_msgs/FaceRecognitionGoal'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_bcf0281ebf646f90ea48d50971aedcd174eec9bdf8cb45ca66c6e4aa672cda4b'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 5
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 133
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 133
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    order_id: _py_int = 0
    order_argument: _py_str = ''

    def encode(self):
        writer = _Writer(133)
        _write_Ros1Pal_vision_msgsFaceRecognitionGoal(writer, self)
        wire = writer.finish()
        return _wire(wire, 5, 133)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_vision_msgsFaceRecognitionGoal:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 5, 133))
        value = _read_Ros1Pal_vision_msgsFaceRecognitionGoal(reader)
        reader.end()
        return value

_record_Ros1Pal_vision_msgsFaceRecognitionGoal = Ros1Pal_vision_msgsFaceRecognitionGoal

def _write_Ros1Pal_vision_msgsFaceRecognitionGoal(writer, value):
    if type(value) is not Ros1Pal_vision_msgsFaceRecognitionGoal:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.order_id
    writer.integer(_part0, 1, False)
    _part1 = value.order_argument
    _write_text(writer, _part1, 128)
    if not 5 <= len(writer.data) - _start <= 133:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_vision_msgsFaceRecognitionGoal(reader):
    _start = reader.position
    value = Ros1Pal_vision_msgsFaceRecognitionGoal()
    value.order_id = reader.integer(1, False)
    value.order_argument = _read_text(reader, 128)
    if not 5 <= reader.position - _start <= 133:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_vision_msgsFaceRecognitionResult:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_vision_msgs/FaceRecognitionResult'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_47287112c67933fc592f58a910627ff0ddc35f2cf8f38437399ef1ed94e4d36e'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 9
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 2185
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 2185
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    order_id: _py_int = 0
    names: _py_list[_py_str] = _field(default_factory=lambda: [])
    confidence: _py_list[_py_float] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(2185)
        _write_Ros1Pal_vision_msgsFaceRecognitionResult(writer, self)
        wire = writer.finish()
        return _wire(wire, 9, 2185)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_vision_msgsFaceRecognitionResult:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 9, 2185))
        value = _read_Ros1Pal_vision_msgsFaceRecognitionResult(reader)
        reader.end()
        return value

_record_Ros1Pal_vision_msgsFaceRecognitionResult = Ros1Pal_vision_msgsFaceRecognitionResult

def _write_Ros1Pal_vision_msgsFaceRecognitionResult(writer, value):
    if type(value) is not Ros1Pal_vision_msgsFaceRecognitionResult:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.order_id
    writer.integer(_part0, 1, False)
    _part1 = value.names
    if type(_part1) not in (list, tuple):
        raise TypeError('array value required')
    _count1 = len(_part1)
    if _count1 > 16:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        _write_text(writer, _element, 128)
    _part2 = value.confidence
    if type(_part2) not in (list, tuple):
        raise TypeError('array value required')
    _count2 = len(_part2)
    if _count2 > 16:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        writer.f32(_element)
    if not 9 <= len(writer.data) - _start <= 2185:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_vision_msgsFaceRecognitionResult(reader):
    _start = reader.position
    value = Ros1Pal_vision_msgsFaceRecognitionResult()
    value.order_id = reader.integer(1, False)
    value.names = [_read_text(reader, 128) for _ in range(_read_count(reader, 16, 4))]
    value.confidence = [reader.f32() for _ in range(_read_count(reader, 16, 4))]
    if not 9 <= reader.position - _start <= 2185:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_vision_msgsFaceRecognitionFeedback:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_vision_msgs/FaceRecognitionFeedback'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_42cb3618f562e3083ca7069e0f41233a9584cd00b9a3d2cb791d5956735dbfd7'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 9
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 2185
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 2185
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    order_id: _py_int = 0
    names: _py_list[_py_str] = _field(default_factory=lambda: [])
    confidence: _py_list[_py_float] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(2185)
        _write_Ros1Pal_vision_msgsFaceRecognitionFeedback(writer, self)
        wire = writer.finish()
        return _wire(wire, 9, 2185)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_vision_msgsFaceRecognitionFeedback:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 9, 2185))
        value = _read_Ros1Pal_vision_msgsFaceRecognitionFeedback(reader)
        reader.end()
        return value

_record_Ros1Pal_vision_msgsFaceRecognitionFeedback = Ros1Pal_vision_msgsFaceRecognitionFeedback

def _write_Ros1Pal_vision_msgsFaceRecognitionFeedback(writer, value):
    if type(value) is not Ros1Pal_vision_msgsFaceRecognitionFeedback:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.order_id
    writer.integer(_part0, 1, False)
    _part1 = value.names
    if type(_part1) not in (list, tuple):
        raise TypeError('array value required')
    _count1 = len(_part1)
    if _count1 > 16:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        _write_text(writer, _element, 128)
    _part2 = value.confidence
    if type(_part2) not in (list, tuple):
        raise TypeError('array value required')
    _count2 = len(_part2)
    if _count2 > 16:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        writer.f32(_element)
    if not 9 <= len(writer.data) - _start <= 2185:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_vision_msgsFaceRecognitionFeedback(reader):
    _start = reader.position
    value = Ros1Pal_vision_msgsFaceRecognitionFeedback()
    value.order_id = reader.integer(1, False)
    value.names = [_read_text(reader, 128) for _ in range(_read_count(reader, 16, 4))]
    value.confidence = [reader.f32() for _ in range(_read_count(reader, 16, 4))]
    if not 9 <= reader.position - _start <= 2185:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_vision_msgsFaceTrackingStartRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_vision_msgs/FaceTrackingStartRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_e41bf1927b5c764ff89ca9d9049719e35c96c1689ba4bb930d1e90480a13647c'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Pal_vision_msgsFaceTrackingStartRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_vision_msgsFaceTrackingStartRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Pal_vision_msgsFaceTrackingStartRequest(reader)
        reader.end()
        return value

_record_Ros1Pal_vision_msgsFaceTrackingStartRequest = Ros1Pal_vision_msgsFaceTrackingStartRequest

def _write_Ros1Pal_vision_msgsFaceTrackingStartRequest(writer, value):
    if type(value) is not Ros1Pal_vision_msgsFaceTrackingStartRequest:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros1Pal_vision_msgsFaceTrackingStartRequest(reader):
    _start = reader.position
    value = Ros1Pal_vision_msgsFaceTrackingStartRequest()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_vision_msgsFaceTrackingStartResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_vision_msgs/FaceTrackingStartResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_51e6335ecfe5827f0bae5e5610b5dec443373b1233942b40387958b1b47ba4bf'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Pal_vision_msgsFaceTrackingStartResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_vision_msgsFaceTrackingStartResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Pal_vision_msgsFaceTrackingStartResponse(reader)
        reader.end()
        return value

_record_Ros1Pal_vision_msgsFaceTrackingStartResponse = Ros1Pal_vision_msgsFaceTrackingStartResponse

def _write_Ros1Pal_vision_msgsFaceTrackingStartResponse(writer, value):
    if type(value) is not Ros1Pal_vision_msgsFaceTrackingStartResponse:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros1Pal_vision_msgsFaceTrackingStartResponse(reader):
    _start = reader.position
    value = Ros1Pal_vision_msgsFaceTrackingStartResponse()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_vision_msgsFaceTrackingStopRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_vision_msgs/FaceTrackingStopRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_850dd9a2cdf7e12197ac7efad3facaf4609c7be7c63d8157a6b92bc1e56926e5'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Pal_vision_msgsFaceTrackingStopRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_vision_msgsFaceTrackingStopRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Pal_vision_msgsFaceTrackingStopRequest(reader)
        reader.end()
        return value

_record_Ros1Pal_vision_msgsFaceTrackingStopRequest = Ros1Pal_vision_msgsFaceTrackingStopRequest

def _write_Ros1Pal_vision_msgsFaceTrackingStopRequest(writer, value):
    if type(value) is not Ros1Pal_vision_msgsFaceTrackingStopRequest:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros1Pal_vision_msgsFaceTrackingStopRequest(reader):
    _start = reader.position
    value = Ros1Pal_vision_msgsFaceTrackingStopRequest()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_vision_msgsFaceTrackingStopResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_vision_msgs/FaceTrackingStopResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_158adae14ad8a978f5c934c5aee9489306e9ddd31d9afa15ff1a9f9af8872b5f'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Pal_vision_msgsFaceTrackingStopResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_vision_msgsFaceTrackingStopResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Pal_vision_msgsFaceTrackingStopResponse(reader)
        reader.end()
        return value

_record_Ros1Pal_vision_msgsFaceTrackingStopResponse = Ros1Pal_vision_msgsFaceTrackingStopResponse

def _write_Ros1Pal_vision_msgsFaceTrackingStopResponse(writer, value):
    if type(value) is not Ros1Pal_vision_msgsFaceTrackingStopResponse:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros1Pal_vision_msgsFaceTrackingStopResponse(reader):
    _start = reader.position
    value = Ros1Pal_vision_msgsFaceTrackingStopResponse()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_vision_msgsFollowMeResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_vision_msgs/FollowMeResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_509edcb3854474332fd562cc897fff9266b789772700de1b4a447670fd0bb24f'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 17
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 145
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 145
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros1Std_msgsHeader = _field(default_factory=lambda: Ros1Std_msgsHeader())
    targetDetected: _py_bool = False

    def encode(self):
        writer = _Writer(145)
        _write_Ros1Pal_vision_msgsFollowMeResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 17, 145)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_vision_msgsFollowMeResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 17, 145))
        value = _read_Ros1Pal_vision_msgsFollowMeResponse(reader)
        reader.end()
        return value

_record_Ros1Pal_vision_msgsFollowMeResponse = Ros1Pal_vision_msgsFollowMeResponse

def _write_Ros1Pal_vision_msgsFollowMeResponse(writer, value):
    if type(value) is not Ros1Pal_vision_msgsFollowMeResponse:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros1Std_msgsHeader(writer, _part0)
    _part1 = value.targetDetected
    if type(_part1) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part1), 1)
    if not 17 <= len(writer.data) - _start <= 145:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_vision_msgsFollowMeResponse(reader):
    _start = reader.position
    value = Ros1Pal_vision_msgsFollowMeResponse()
    value.header = _read_Ros1Std_msgsHeader(reader)
    value.targetDetected = _read_bool(reader)
    if not 17 <= reader.position - _start <= 145:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_vision_msgsFollowMeStartRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_vision_msgs/FollowMeStartRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_9ad00d43667a3ac5324f5999d68f04b8c176c308d94c2ed4da9d357697b0faba'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 4
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 4
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    maxSecondsTargetLost: _py_float = 0.0

    def encode(self):
        writer = _Writer(4)
        _write_Ros1Pal_vision_msgsFollowMeStartRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 4)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_vision_msgsFollowMeStartRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 4, 4))
        value = _read_Ros1Pal_vision_msgsFollowMeStartRequest(reader)
        reader.end()
        return value

_record_Ros1Pal_vision_msgsFollowMeStartRequest = Ros1Pal_vision_msgsFollowMeStartRequest

def _write_Ros1Pal_vision_msgsFollowMeStartRequest(writer, value):
    if type(value) is not Ros1Pal_vision_msgsFollowMeStartRequest:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.maxSecondsTargetLost
    writer.f32(_part0)
    if not 4 <= len(writer.data) - _start <= 4:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_vision_msgsFollowMeStartRequest(reader):
    _start = reader.position
    value = Ros1Pal_vision_msgsFollowMeStartRequest()
    value.maxSecondsTargetLost = reader.f32()
    if not 4 <= reader.position - _start <= 4:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_vision_msgsFollowMeStartResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_vision_msgs/FollowMeStartResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_2d61bb56a1595cfb26c8607e75c06b6ad712ee04f23f8bb3ec2055a311d3376a'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Pal_vision_msgsFollowMeStartResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_vision_msgsFollowMeStartResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Pal_vision_msgsFollowMeStartResponse(reader)
        reader.end()
        return value

_record_Ros1Pal_vision_msgsFollowMeStartResponse = Ros1Pal_vision_msgsFollowMeStartResponse

def _write_Ros1Pal_vision_msgsFollowMeStartResponse(writer, value):
    if type(value) is not Ros1Pal_vision_msgsFollowMeStartResponse:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros1Pal_vision_msgsFollowMeStartResponse(reader):
    _start = reader.position
    value = Ros1Pal_vision_msgsFollowMeStartResponse()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_vision_msgsFollowMeStopRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_vision_msgs/FollowMeStopRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_6027cba04b80218bf304f2a426f716bba87534e477b5dda411c921ac27e9a8b2'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Pal_vision_msgsFollowMeStopRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_vision_msgsFollowMeStopRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Pal_vision_msgsFollowMeStopRequest(reader)
        reader.end()
        return value

_record_Ros1Pal_vision_msgsFollowMeStopRequest = Ros1Pal_vision_msgsFollowMeStopRequest

def _write_Ros1Pal_vision_msgsFollowMeStopRequest(writer, value):
    if type(value) is not Ros1Pal_vision_msgsFollowMeStopRequest:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros1Pal_vision_msgsFollowMeStopRequest(reader):
    _start = reader.position
    value = Ros1Pal_vision_msgsFollowMeStopRequest()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_vision_msgsFollowMeStopResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_vision_msgs/FollowMeStopResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_a2b3b521174fc092b8f04cdc09ff4a43113b71b9daa4977e7a233fc8a5c02cdb'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Pal_vision_msgsFollowMeStopResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_vision_msgsFollowMeStopResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Pal_vision_msgsFollowMeStopResponse(reader)
        reader.end()
        return value

_record_Ros1Pal_vision_msgsFollowMeStopResponse = Ros1Pal_vision_msgsFollowMeStopResponse

def _write_Ros1Pal_vision_msgsFollowMeStopResponse(writer, value):
    if type(value) is not Ros1Pal_vision_msgsFollowMeStopResponse:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros1Pal_vision_msgsFollowMeStopResponse(reader):
    _start = reader.position
    value = Ros1Pal_vision_msgsFollowMeStopResponse()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_vision_msgsGesture:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_vision_msgs/Gesture'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_e947cfbffe33a44d3590ff6513d4486c7411747df12fed9c178662e5beb2e4d1'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 44
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 300
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 300
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros1Std_msgsHeader = _field(default_factory=lambda: Ros1Std_msgsHeader())
    gestureId: _py_str = ''
    position3D: _record_Ros1Geometry_msgsPoint = _field(default_factory=lambda: Ros1Geometry_msgsPoint())

    def encode(self):
        writer = _Writer(300)
        _write_Ros1Pal_vision_msgsGesture(writer, self)
        wire = writer.finish()
        return _wire(wire, 44, 300)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_vision_msgsGesture:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 44, 300))
        value = _read_Ros1Pal_vision_msgsGesture(reader)
        reader.end()
        return value

_record_Ros1Pal_vision_msgsGesture = Ros1Pal_vision_msgsGesture

def _write_Ros1Pal_vision_msgsGesture(writer, value):
    if type(value) is not Ros1Pal_vision_msgsGesture:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros1Std_msgsHeader(writer, _part0)
    _part1 = value.gestureId
    _write_text(writer, _part1, 128)
    _part2 = value.position3D
    _write_Ros1Geometry_msgsPoint(writer, _part2)
    if not 44 <= len(writer.data) - _start <= 300:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_vision_msgsGesture(reader):
    _start = reader.position
    value = Ros1Pal_vision_msgsGesture()
    value.header = _read_Ros1Std_msgsHeader(reader)
    value.gestureId = _read_text(reader, 128)
    value.position3D = _read_Ros1Geometry_msgsPoint(reader)
    if not 44 <= reader.position - _start <= 300:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_vision_msgsHeadPanTilt:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_vision_msgs/HeadPanTilt'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_69c6664a98a42741b82d5c147ccfabdb7bb7138cae590c77a2b63103cdf899cc'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 24
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 152
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 152
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros1Std_msgsHeader = _field(default_factory=lambda: Ros1Std_msgsHeader())
    pan: _py_float = 0.0
    tilt: _py_float = 0.0

    def encode(self):
        writer = _Writer(152)
        _write_Ros1Pal_vision_msgsHeadPanTilt(writer, self)
        wire = writer.finish()
        return _wire(wire, 24, 152)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_vision_msgsHeadPanTilt:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 24, 152))
        value = _read_Ros1Pal_vision_msgsHeadPanTilt(reader)
        reader.end()
        return value

_record_Ros1Pal_vision_msgsHeadPanTilt = Ros1Pal_vision_msgsHeadPanTilt

def _write_Ros1Pal_vision_msgsHeadPanTilt(writer, value):
    if type(value) is not Ros1Pal_vision_msgsHeadPanTilt:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros1Std_msgsHeader(writer, _part0)
    _part1 = value.pan
    writer.f32(_part1)
    _part2 = value.tilt
    writer.f32(_part2)
    if not 24 <= len(writer.data) - _start <= 152:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_vision_msgsHeadPanTilt(reader):
    _start = reader.position
    value = Ros1Pal_vision_msgsHeadPanTilt()
    value.header = _read_Ros1Std_msgsHeader(reader)
    value.pan = reader.f32()
    value.tilt = reader.f32()
    if not 24 <= reader.position - _start <= 152:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_vision_msgsHogDetection:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_vision_msgs/HogDetection'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_4d745cf6bb2b9fce9d25b0c7b15be14ba7aec15d19a6677f7d8f4dfc40c3dcf4'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 88
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 344
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 344
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    imageBoundingBox: _record_Ros1Pal_vision_msgsRectangle = _field(default_factory=lambda: Ros1Pal_vision_msgsRectangle())
    direction: _record_Ros1Geometry_msgsVector3 = _field(default_factory=lambda: Ros1Geometry_msgsVector3())
    hog: _py_list[_py_float] = _field(default_factory=lambda: [])
    principalEigenVectorRGB: _record_Ros1Std_msgsColorRGBA = _field(default_factory=lambda: Ros1Std_msgsColorRGBA())
    rgbClusterCenters: _py_list[_record_Ros1Std_msgsColorRGBA] = _field(default_factory=lambda: [])
    rgbDescriptor1: _py_list[_py_int] = _field(default_factory=lambda: [])
    rgbDescriptor2: _py_list[_py_int] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(344)
        _write_Ros1Pal_vision_msgsHogDetection(writer, self)
        wire = writer.finish()
        return _wire(wire, 88, 344)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_vision_msgsHogDetection:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 88, 344))
        value = _read_Ros1Pal_vision_msgsHogDetection(reader)
        reader.end()
        return value

_record_Ros1Pal_vision_msgsHogDetection = Ros1Pal_vision_msgsHogDetection

def _write_Ros1Pal_vision_msgsHogDetection(writer, value):
    if type(value) is not Ros1Pal_vision_msgsHogDetection:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.imageBoundingBox
    _write_Ros1Pal_vision_msgsRectangle(writer, _part0)
    _part1 = value.direction
    _write_Ros1Geometry_msgsVector3(writer, _part1)
    _part2 = value.hog
    if type(_part2) not in (list, tuple):
        raise TypeError('array value required')
    _count2 = len(_part2)
    if _count2 > 16:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        writer.f32(_element)
    _part3 = value.principalEigenVectorRGB
    _write_Ros1Std_msgsColorRGBA(writer, _part3)
    _part4 = value.rgbClusterCenters
    if type(_part4) not in (list, tuple):
        raise TypeError('array value required')
    _count4 = len(_part4)
    if _count4 > 4:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count4, 4)
    for _index in range(_count4):
        _element = _part4[_index]
        _write_Ros1Std_msgsColorRGBA(writer, _element)
    _part5 = value.rgbDescriptor1
    if type(_part5) not in (list, tuple):
        raise TypeError('array value required')
    _count5 = len(_part5)
    if _count5 > 16:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count5, 4)
    for _index in range(_count5):
        _element = _part5[_index]
        writer.integer(_element, 4, False)
    _part6 = value.rgbDescriptor2
    if type(_part6) not in (list, tuple):
        raise TypeError('array value required')
    _count6 = len(_part6)
    if _count6 > 16:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count6, 4)
    for _index in range(_count6):
        _element = _part6[_index]
        writer.integer(_element, 4, False)
    if not 88 <= len(writer.data) - _start <= 344:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_vision_msgsHogDetection(reader):
    _start = reader.position
    value = Ros1Pal_vision_msgsHogDetection()
    value.imageBoundingBox = _read_Ros1Pal_vision_msgsRectangle(reader)
    value.direction = _read_Ros1Geometry_msgsVector3(reader)
    value.hog = [reader.f32() for _ in range(_read_count(reader, 16, 4))]
    value.principalEigenVectorRGB = _read_Ros1Std_msgsColorRGBA(reader)
    value.rgbClusterCenters = [_read_Ros1Std_msgsColorRGBA(reader) for _ in range(_read_count(reader, 4, 16))]
    value.rgbDescriptor1 = [reader.integer(4, False) for _ in range(_read_count(reader, 16, 4))]
    value.rgbDescriptor2 = [reader.integer(4, False) for _ in range(_read_count(reader, 16, 4))]
    if not 88 <= reader.position - _start <= 344:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_vision_msgsHogDetections:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_vision_msgs/HogDetections'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_8ea9e8cc6d81de0b518f3dd1fd3fedca765711f965644e2a0fa88b8d334cbace'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 24
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1528
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1528
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros1Std_msgsHeader = _field(default_factory=lambda: Ros1Std_msgsHeader())
    imgID: _py_int = 0
    persons: _py_list[_record_Ros1Pal_vision_msgsHogDetection] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(1528)
        _write_Ros1Pal_vision_msgsHogDetections(writer, self)
        wire = writer.finish()
        return _wire(wire, 24, 1528)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_vision_msgsHogDetections:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 24, 1528))
        value = _read_Ros1Pal_vision_msgsHogDetections(reader)
        reader.end()
        return value

_record_Ros1Pal_vision_msgsHogDetections = Ros1Pal_vision_msgsHogDetections

def _write_Ros1Pal_vision_msgsHogDetections(writer, value):
    if type(value) is not Ros1Pal_vision_msgsHogDetections:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros1Std_msgsHeader(writer, _part0)
    _part1 = value.imgID
    writer.integer(_part1, 4, False)
    _part2 = value.persons
    if type(_part2) not in (list, tuple):
        raise TypeError('array value required')
    _count2 = len(_part2)
    if _count2 > 4:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        _write_Ros1Pal_vision_msgsHogDetection(writer, _element)
    if not 24 <= len(writer.data) - _start <= 1528:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_vision_msgsHogDetections(reader):
    _start = reader.position
    value = Ros1Pal_vision_msgsHogDetections()
    value.header = _read_Ros1Std_msgsHeader(reader)
    value.imgID = reader.integer(4, False)
    value.persons = [_read_Ros1Pal_vision_msgsHogDetection(reader) for _ in range(_read_count(reader, 4, 88))]
    if not 24 <= reader.position - _start <= 1528:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_vision_msgsLegDetections:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_vision_msgs/LegDetections'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_e175101eca8d474e2569d4e4e125fd84e8c8a73c957472cf7e4b6aae9dfa0549'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 20
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 244
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 244
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros1Std_msgsHeader = _field(default_factory=lambda: Ros1Std_msgsHeader())
    position3D: _py_list[_record_Ros1Geometry_msgsPoint] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(244)
        _write_Ros1Pal_vision_msgsLegDetections(writer, self)
        wire = writer.finish()
        return _wire(wire, 20, 244)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_vision_msgsLegDetections:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 20, 244))
        value = _read_Ros1Pal_vision_msgsLegDetections(reader)
        reader.end()
        return value

_record_Ros1Pal_vision_msgsLegDetections = Ros1Pal_vision_msgsLegDetections

def _write_Ros1Pal_vision_msgsLegDetections(writer, value):
    if type(value) is not Ros1Pal_vision_msgsLegDetections:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros1Std_msgsHeader(writer, _part0)
    _part1 = value.position3D
    if type(_part1) not in (list, tuple):
        raise TypeError('array value required')
    _count1 = len(_part1)
    if _count1 > 4:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        _write_Ros1Geometry_msgsPoint(writer, _element)
    if not 20 <= len(writer.data) - _start <= 244:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_vision_msgsLegDetections(reader):
    _start = reader.position
    value = Ros1Pal_vision_msgsLegDetections()
    value.header = _read_Ros1Std_msgsHeader(reader)
    value.position3D = [_read_Ros1Geometry_msgsPoint(reader) for _ in range(_read_count(reader, 4, 24))]
    if not 20 <= reader.position - _start <= 244:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_vision_msgsLookToPixelRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_vision_msgs/LookToPixelRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_ead4559133ef68c0248064d865cceaeb335f6104424a199ebc4452e6878383ff'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    x: _py_float = 0.0
    y: _py_float = 0.0

    def encode(self):
        writer = _Writer(8)
        _write_Ros1Pal_vision_msgsLookToPixelRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 8)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_vision_msgsLookToPixelRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 8))
        value = _read_Ros1Pal_vision_msgsLookToPixelRequest(reader)
        reader.end()
        return value

_record_Ros1Pal_vision_msgsLookToPixelRequest = Ros1Pal_vision_msgsLookToPixelRequest

def _write_Ros1Pal_vision_msgsLookToPixelRequest(writer, value):
    if type(value) is not Ros1Pal_vision_msgsLookToPixelRequest:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.x
    writer.f32(_part0)
    _part1 = value.y
    writer.f32(_part1)
    if not 8 <= len(writer.data) - _start <= 8:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_vision_msgsLookToPixelRequest(reader):
    _start = reader.position
    value = Ros1Pal_vision_msgsLookToPixelRequest()
    value.x = reader.f32()
    value.y = reader.f32()
    if not 8 <= reader.position - _start <= 8:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_vision_msgsLookToPixelResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_vision_msgs/LookToPixelResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_137d83d2b779310ee91811bd5a17c4d232fb2114246da1520656876385562ae1'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Pal_vision_msgsLookToPixelResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_vision_msgsLookToPixelResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Pal_vision_msgsLookToPixelResponse(reader)
        reader.end()
        return value

_record_Ros1Pal_vision_msgsLookToPixelResponse = Ros1Pal_vision_msgsLookToPixelResponse

def _write_Ros1Pal_vision_msgsLookToPixelResponse(writer, value):
    if type(value) is not Ros1Pal_vision_msgsLookToPixelResponse:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros1Pal_vision_msgsLookToPixelResponse(reader):
    _start = reader.position
    value = Ros1Pal_vision_msgsLookToPixelResponse()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoal:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_visual_localization_msgs/VisualLocAddPlaceGoal'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_6d84634e1bebf082190a3992acd2379d94a375158775cf0a01c430779105049d'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoal(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoal:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoal(reader)
        reader.end()
        return value

_record_Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoal = Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoal

def _write_Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoal(writer, value):
    if type(value) is not Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoal:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoal(reader):
    _start = reader.position
    value = Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoal()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_visual_localization_msgsVisualLocAddPlaceResult:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_visual_localization_msgs/VisualLocAddPlaceResult'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_604eadb052736d8c3999fff8ab635886d87f779943632ce01e89742d591c265a'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    res: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Pal_visual_localization_msgsVisualLocAddPlaceResult(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_visual_localization_msgsVisualLocAddPlaceResult:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Pal_visual_localization_msgsVisualLocAddPlaceResult(reader)
        reader.end()
        return value

_record_Ros1Pal_visual_localization_msgsVisualLocAddPlaceResult = Ros1Pal_visual_localization_msgsVisualLocAddPlaceResult

def _write_Ros1Pal_visual_localization_msgsVisualLocAddPlaceResult(writer, value):
    if type(value) is not Ros1Pal_visual_localization_msgsVisualLocAddPlaceResult:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.res
    if type(_part0) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_visual_localization_msgsVisualLocAddPlaceResult(reader):
    _start = reader.position
    value = Ros1Pal_visual_localization_msgsVisualLocAddPlaceResult()
    value.res = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedback:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_visual_localization_msgs/VisualLocAddPlaceFeedback'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_ceb1b2594d5bf763de97096f0bb683276be372393e779d3b3334b3adc7a6f3b6'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedback(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedback:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedback(reader)
        reader.end()
        return value

_record_Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedback = Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedback

def _write_Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedback(writer, value):
    if type(value) is not Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedback:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedback(reader):
    _start = reader.position
    value = Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedback()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_visual_localization_msgsVisualLocRecognizeGoal:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_visual_localization_msgs/VisualLocRecognizeGoal'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_b1aa9fe3f12a81861385e9421e153869ee3f2ba0949fe55c0ed0fe7170ae4c4a'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Pal_visual_localization_msgsVisualLocRecognizeGoal(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_visual_localization_msgsVisualLocRecognizeGoal:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Pal_visual_localization_msgsVisualLocRecognizeGoal(reader)
        reader.end()
        return value

_record_Ros1Pal_visual_localization_msgsVisualLocRecognizeGoal = Ros1Pal_visual_localization_msgsVisualLocRecognizeGoal

def _write_Ros1Pal_visual_localization_msgsVisualLocRecognizeGoal(writer, value):
    if type(value) is not Ros1Pal_visual_localization_msgsVisualLocRecognizeGoal:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros1Pal_visual_localization_msgsVisualLocRecognizeGoal(reader):
    _start = reader.position
    value = Ros1Pal_visual_localization_msgsVisualLocRecognizeGoal()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_visual_localization_msgsVisualLocRecognizeResult:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_visual_localization_msgs/VisualLocRecognizeResult'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_e20e2e4ba374756256518e0e7075689be3c87660703926ab5d1cb33c8ff1c6da'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 369
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 497
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 497
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False
    confidence: _py_float = 0.0
    estimatedPose: _record_Ros1Geometry_msgsPoseWithCovarianceStamped = _field(default_factory=lambda: Ros1Geometry_msgsPoseWithCovarianceStamped())

    def encode(self):
        writer = _Writer(497)
        _write_Ros1Pal_visual_localization_msgsVisualLocRecognizeResult(writer, self)
        wire = writer.finish()
        return _wire(wire, 369, 497)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_visual_localization_msgsVisualLocRecognizeResult:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 369, 497))
        value = _read_Ros1Pal_visual_localization_msgsVisualLocRecognizeResult(reader)
        reader.end()
        return value

_record_Ros1Pal_visual_localization_msgsVisualLocRecognizeResult = Ros1Pal_visual_localization_msgsVisualLocRecognizeResult

def _write_Ros1Pal_visual_localization_msgsVisualLocRecognizeResult(writer, value):
    if type(value) is not Ros1Pal_visual_localization_msgsVisualLocRecognizeResult:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part0), 1)
    _part1 = value.confidence
    writer.f64(_part1)
    _part2 = value.estimatedPose
    _write_Ros1Geometry_msgsPoseWithCovarianceStamped(writer, _part2)
    if not 369 <= len(writer.data) - _start <= 497:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_visual_localization_msgsVisualLocRecognizeResult(reader):
    _start = reader.position
    value = Ros1Pal_visual_localization_msgsVisualLocRecognizeResult()
    value.success = _read_bool(reader)
    value.confidence = reader.f64()
    value.estimatedPose = _read_Ros1Geometry_msgsPoseWithCovarianceStamped(reader)
    if not 369 <= reader.position - _start <= 497:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedback:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_visual_localization_msgs/VisualLocRecognizeFeedback'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_07206e6717d8ba2621e7a00f69d65a2e56102b64e84e0ef66e44e93a4468e65e'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedback(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedback:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedback(reader)
        reader.end()
        return value

_record_Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedback = Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedback

def _write_Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedback(writer, value):
    if type(value) is not Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedback:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedback(reader):
    _start = reader.position
    value = Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedback()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_walking_msgsContactState:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_walking_msgs/ContactState'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_632dc784a31db78e0b56fe3c2f324e19dcdcac6d6bdc72e0f9fab21e2a8ea3a8'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = [{'name': 'TYPE_DS', 'type': 'uint8', 'native_type': 'uint8', 'literal': '0', 'value': '0'},
     {'name': 'TYPE_LSS', 'type': 'uint8', 'native_type': 'uint8', 'literal': '1', 'value': '1'},
     {'name': 'TYPE_RSS', 'type': 'uint8', 'native_type': 'uint8', 'literal': '2', 'value': '2'}]
    TYPE_DS: _ClassVar = 0
    TYPE_LSS: _ClassVar = 1
    TYPE_RSS: _ClassVar = 2
    type: _py_int = 0

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Pal_walking_msgsContactState(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_walking_msgsContactState:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Pal_walking_msgsContactState(reader)
        reader.end()
        return value

_record_Ros1Pal_walking_msgsContactState = Ros1Pal_walking_msgsContactState

def _write_Ros1Pal_walking_msgsContactState(writer, value):
    if type(value) is not Ros1Pal_walking_msgsContactState:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.type
    writer.integer(_part0, 1, False)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_walking_msgsContactState(reader):
    _start = reader.position
    value = Ros1Pal_walking_msgsContactState()
    value.type = reader.integer(1, False)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_walking_msgsMoveHipFeetRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_walking_msgs/MoveHipFeetRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_5fb083fec01e8eab76d0023802e8ec7590fc993ba7a68d1a2033c43065131c5c'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 64
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1248
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1248
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    hip_poses: _record_Ros1Geometry_msgsPoseArray = _field(default_factory=lambda: Ros1Geometry_msgsPoseArray())
    left_foot_poses: _record_Ros1Geometry_msgsPoseArray = _field(default_factory=lambda: Ros1Geometry_msgsPoseArray())
    right_foot_poses: _record_Ros1Geometry_msgsPoseArray = _field(default_factory=lambda: Ros1Geometry_msgsPoseArray())
    times_after_previous: _py_list[_record_Ros1Duration] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(1248)
        _write_Ros1Pal_walking_msgsMoveHipFeetRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 64, 1248)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_walking_msgsMoveHipFeetRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 64, 1248))
        value = _read_Ros1Pal_walking_msgsMoveHipFeetRequest(reader)
        reader.end()
        return value

_record_Ros1Pal_walking_msgsMoveHipFeetRequest = Ros1Pal_walking_msgsMoveHipFeetRequest

def _write_Ros1Pal_walking_msgsMoveHipFeetRequest(writer, value):
    if type(value) is not Ros1Pal_walking_msgsMoveHipFeetRequest:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.hip_poses
    _write_Ros1Geometry_msgsPoseArray(writer, _part0)
    _part1 = value.left_foot_poses
    _write_Ros1Geometry_msgsPoseArray(writer, _part1)
    _part2 = value.right_foot_poses
    _write_Ros1Geometry_msgsPoseArray(writer, _part2)
    _part3 = value.times_after_previous
    if type(_part3) not in (list, tuple):
        raise TypeError('array value required')
    _count3 = len(_part3)
    if _count3 > 16:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count3, 4)
    for _index in range(_count3):
        _element = _part3[_index]
        _write_Ros1Duration(writer, _element)
    if not 64 <= len(writer.data) - _start <= 1248:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_walking_msgsMoveHipFeetRequest(reader):
    _start = reader.position
    value = Ros1Pal_walking_msgsMoveHipFeetRequest()
    value.hip_poses = _read_Ros1Geometry_msgsPoseArray(reader)
    value.left_foot_poses = _read_Ros1Geometry_msgsPoseArray(reader)
    value.right_foot_poses = _read_Ros1Geometry_msgsPoseArray(reader)
    value.times_after_previous = [_read_Ros1Duration(reader) for _ in range(_read_count(reader, 16, 8))]
    if not 64 <= reader.position - _start <= 1248:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_walking_msgsMoveHipFeetResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_walking_msgs/MoveHipFeetResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_d5adee26d6498a466a886f9869495d90adae91081287903faa9b90ac6ab2306e'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Pal_walking_msgsMoveHipFeetResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_walking_msgsMoveHipFeetResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Pal_walking_msgsMoveHipFeetResponse(reader)
        reader.end()
        return value

_record_Ros1Pal_walking_msgsMoveHipFeetResponse = Ros1Pal_walking_msgsMoveHipFeetResponse

def _write_Ros1Pal_walking_msgsMoveHipFeetResponse(writer, value):
    if type(value) is not Ros1Pal_walking_msgsMoveHipFeetResponse:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros1Pal_walking_msgsMoveHipFeetResponse(reader):
    _start = reader.position
    value = Ros1Pal_walking_msgsMoveHipFeetResponse()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_walking_msgsSMStatus:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_walking_msgs/SMStatus'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_490c0966b36899ce64a1271d9c1eaf9802b9285eb7835b0565a3e2bbf01a0c6e'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 170
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 170
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 170
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = [{'name': 'right', 'type': 'uint8', 'native_type': 'uint8', 'literal': '1', 'value': '1'},
     {'name': 'left', 'type': 'uint8', 'native_type': 'uint8', 'literal': '0', 'value': '0'}]
    right: _ClassVar = 1
    left: _ClassVar = 0
    left_foot_pose: _record_Ros1Geometry_msgsPose = _field(default_factory=lambda: Ros1Geometry_msgsPose())
    right_foot_pose: _record_Ros1Geometry_msgsPose = _field(default_factory=lambda: Ros1Geometry_msgsPose())
    stance_foot_side: _py_int = 0
    future_swing_landing_pose: _record_Ros1Geometry_msgsPose = _field(default_factory=lambda: Ros1Geometry_msgsPose())
    future_swing_side: _py_int = 0

    def encode(self):
        writer = _Writer(170)
        _write_Ros1Pal_walking_msgsSMStatus(writer, self)
        wire = writer.finish()
        return _wire(wire, 170, 170)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_walking_msgsSMStatus:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 170, 170))
        value = _read_Ros1Pal_walking_msgsSMStatus(reader)
        reader.end()
        return value

_record_Ros1Pal_walking_msgsSMStatus = Ros1Pal_walking_msgsSMStatus

def _write_Ros1Pal_walking_msgsSMStatus(writer, value):
    if type(value) is not Ros1Pal_walking_msgsSMStatus:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.left_foot_pose
    _write_Ros1Geometry_msgsPose(writer, _part0)
    _part1 = value.right_foot_pose
    _write_Ros1Geometry_msgsPose(writer, _part1)
    _part2 = value.stance_foot_side
    writer.integer(_part2, 1, False)
    _part3 = value.future_swing_landing_pose
    _write_Ros1Geometry_msgsPose(writer, _part3)
    _part4 = value.future_swing_side
    writer.integer(_part4, 1, False)
    if not 170 <= len(writer.data) - _start <= 170:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_walking_msgsSMStatus(reader):
    _start = reader.position
    value = Ros1Pal_walking_msgsSMStatus()
    value.left_foot_pose = _read_Ros1Geometry_msgsPose(reader)
    value.right_foot_pose = _read_Ros1Geometry_msgsPose(reader)
    value.stance_foot_side = reader.integer(1, False)
    value.future_swing_landing_pose = _read_Ros1Geometry_msgsPose(reader)
    value.future_swing_side = reader.integer(1, False)
    if not 170 <= reader.position - _start <= 170:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_walking_msgsSitRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_walking_msgs/SitRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_8dc49a028691c5be0752fad0ad7cf1d2d4cc3e093ff8fe53b0f0f5dcf66241da'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 9
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 9
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 9
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    down: _py_bool = False
    weight_threshold: _py_float = 0.0

    def encode(self):
        writer = _Writer(9)
        _write_Ros1Pal_walking_msgsSitRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 9, 9)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_walking_msgsSitRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 9, 9))
        value = _read_Ros1Pal_walking_msgsSitRequest(reader)
        reader.end()
        return value

_record_Ros1Pal_walking_msgsSitRequest = Ros1Pal_walking_msgsSitRequest

def _write_Ros1Pal_walking_msgsSitRequest(writer, value):
    if type(value) is not Ros1Pal_walking_msgsSitRequest:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.down
    if type(_part0) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part0), 1)
    _part1 = value.weight_threshold
    writer.f64(_part1)
    if not 9 <= len(writer.data) - _start <= 9:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_walking_msgsSitRequest(reader):
    _start = reader.position
    value = Ros1Pal_walking_msgsSitRequest()
    value.down = _read_bool(reader)
    value.weight_threshold = reader.f64()
    if not 9 <= reader.position - _start <= 9:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_walking_msgsSitResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_walking_msgs/SitResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_6af9975562de7fe4864f8409ec5c1210f5d144c872e0ce9b553a391a1790df35'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Pal_walking_msgsSitResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_walking_msgsSitResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Pal_walking_msgsSitResponse(reader)
        reader.end()
        return value

_record_Ros1Pal_walking_msgsSitResponse = Ros1Pal_walking_msgsSitResponse

def _write_Ros1Pal_walking_msgsSitResponse(writer, value):
    if type(value) is not Ros1Pal_walking_msgsSitResponse:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros1Pal_walking_msgsSitResponse(reader):
    _start = reader.position
    value = Ros1Pal_walking_msgsSitResponse()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_walking_msgsStepOverRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_walking_msgs/StepOverRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_00736de4ce830d33f33d93ca8c703dfc555f0ecc2ac86d90002929f4cefaedde'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 32
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 32
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 32
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    step_length: _py_float = 0.0
    step_time: _py_float = 0.0
    step_height: _py_float = 0.0
    z_lipm: _py_float = 0.0

    def encode(self):
        writer = _Writer(32)
        _write_Ros1Pal_walking_msgsStepOverRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 32, 32)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_walking_msgsStepOverRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 32, 32))
        value = _read_Ros1Pal_walking_msgsStepOverRequest(reader)
        reader.end()
        return value

_record_Ros1Pal_walking_msgsStepOverRequest = Ros1Pal_walking_msgsStepOverRequest

def _write_Ros1Pal_walking_msgsStepOverRequest(writer, value):
    if type(value) is not Ros1Pal_walking_msgsStepOverRequest:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.step_length
    writer.f64(_part0)
    _part1 = value.step_time
    writer.f64(_part1)
    _part2 = value.step_height
    writer.f64(_part2)
    _part3 = value.z_lipm
    writer.f64(_part3)
    if not 32 <= len(writer.data) - _start <= 32:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_walking_msgsStepOverRequest(reader):
    _start = reader.position
    value = Ros1Pal_walking_msgsStepOverRequest()
    value.step_length = reader.f64()
    value.step_time = reader.f64()
    value.step_height = reader.f64()
    value.z_lipm = reader.f64()
    if not 32 <= reader.position - _start <= 32:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_walking_msgsStepOverResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_walking_msgs/StepOverResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_e7803ee0f8ffd0f2c1eb698670454e2eaae232d60f629e5f0b3b57f876dce944'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 132
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 132
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    result: _py_str = ''

    def encode(self):
        writer = _Writer(132)
        _write_Ros1Pal_walking_msgsStepOverResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 132)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_walking_msgsStepOverResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 4, 132))
        value = _read_Ros1Pal_walking_msgsStepOverResponse(reader)
        reader.end()
        return value

_record_Ros1Pal_walking_msgsStepOverResponse = Ros1Pal_walking_msgsStepOverResponse

def _write_Ros1Pal_walking_msgsStepOverResponse(writer, value):
    if type(value) is not Ros1Pal_walking_msgsStepOverResponse:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.result
    _write_text(writer, _part0, 128)
    if not 4 <= len(writer.data) - _start <= 132:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_walking_msgsStepOverResponse(reader):
    _start = reader.position
    value = Ros1Pal_walking_msgsStepOverResponse()
    value.result = _read_text(reader, 128)
    if not 4 <= reader.position - _start <= 132:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_walking_msgsWalkStepsRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_walking_msgs/WalkStepsRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_eab28f422b38937bef44f8c9ef8c5f08283d3fefd0f16865a91e641b489e446a'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 20
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 20
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 20
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    nsteps: _py_int = 0
    step_length: _py_float = 0.0
    step_time: _py_float = 0.0

    def encode(self):
        writer = _Writer(20)
        _write_Ros1Pal_walking_msgsWalkStepsRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 20, 20)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_walking_msgsWalkStepsRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 20, 20))
        value = _read_Ros1Pal_walking_msgsWalkStepsRequest(reader)
        reader.end()
        return value

_record_Ros1Pal_walking_msgsWalkStepsRequest = Ros1Pal_walking_msgsWalkStepsRequest

def _write_Ros1Pal_walking_msgsWalkStepsRequest(writer, value):
    if type(value) is not Ros1Pal_walking_msgsWalkStepsRequest:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.nsteps
    writer.integer(_part0, 4, True)
    _part1 = value.step_length
    writer.f64(_part1)
    _part2 = value.step_time
    writer.f64(_part2)
    if not 20 <= len(writer.data) - _start <= 20:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_walking_msgsWalkStepsRequest(reader):
    _start = reader.position
    value = Ros1Pal_walking_msgsWalkStepsRequest()
    value.nsteps = reader.integer(4, True)
    value.step_length = reader.f64()
    value.step_time = reader.f64()
    if not 20 <= reader.position - _start <= 20:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_walking_msgsWalkStepsResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_walking_msgs/WalkStepsResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_69cf3d1ffea1bbf362863bbaf88af9177ab0324312b2549fb248d3fa21a9522f'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Pal_walking_msgsWalkStepsResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_walking_msgsWalkStepsResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Pal_walking_msgsWalkStepsResponse(reader)
        reader.end()
        return value

_record_Ros1Pal_walking_msgsWalkStepsResponse = Ros1Pal_walking_msgsWalkStepsResponse

def _write_Ros1Pal_walking_msgsWalkStepsResponse(writer, value):
    if type(value) is not Ros1Pal_walking_msgsWalkStepsResponse:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros1Pal_walking_msgsWalkStepsResponse(reader):
    _start = reader.position
    value = Ros1Pal_walking_msgsWalkStepsResponse()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_walking_msgsWalkingStatus:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_walking_msgs/WalkingStatus'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_8831e9c68eeb3e065e2986f7671b2925425e07b18a48228e977f984fb9c09e02'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 208
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 336
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 336
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros1Std_msgsHeader = _field(default_factory=lambda: Ros1Std_msgsHeader())
    hip_reference_pose: _record_Ros1Geometry_msgsPose = _field(default_factory=lambda: Ros1Geometry_msgsPose())
    foot_reference_pose: _py_list[_record_Ros1Geometry_msgsPose] = _field(default_factory=lambda: [Ros1Geometry_msgsPose() for _ in range(2)])
    zmp_reference: _record_Ros1Geometry_msgsPoint = _field(default_factory=lambda: Ros1Geometry_msgsPoint())

    def encode(self):
        writer = _Writer(336)
        _write_Ros1Pal_walking_msgsWalkingStatus(writer, self)
        wire = writer.finish()
        return _wire(wire, 208, 336)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_walking_msgsWalkingStatus:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 208, 336))
        value = _read_Ros1Pal_walking_msgsWalkingStatus(reader)
        reader.end()
        return value

_record_Ros1Pal_walking_msgsWalkingStatus = Ros1Pal_walking_msgsWalkingStatus

def _write_Ros1Pal_walking_msgsWalkingStatus(writer, value):
    if type(value) is not Ros1Pal_walking_msgsWalkingStatus:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros1Std_msgsHeader(writer, _part0)
    _part1 = value.hip_reference_pose
    _write_Ros1Geometry_msgsPose(writer, _part1)
    _part2 = value.foot_reference_pose
    if type(_part2) not in (list, tuple):
        raise TypeError('array value required')
    _count2 = len(_part2)
    if _count2 != 2:
        raise ValueError('fixed/sequence count bound')
    for _index in range(_count2):
        _element = _part2[_index]
        _write_Ros1Geometry_msgsPose(writer, _element)
    _part3 = value.zmp_reference
    _write_Ros1Geometry_msgsPoint(writer, _part3)
    if not 208 <= len(writer.data) - _start <= 336:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_walking_msgsWalkingStatus(reader):
    _start = reader.position
    value = Ros1Pal_walking_msgsWalkingStatus()
    value.header = _read_Ros1Std_msgsHeader(reader)
    value.hip_reference_pose = _read_Ros1Geometry_msgsPose(reader)
    value.foot_reference_pose = [_read_Ros1Geometry_msgsPose(reader) for _ in range(2)]
    value.zmp_reference = _read_Ros1Geometry_msgsPoint(reader)
    if not 208 <= reader.position - _start <= 336:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Std_msgsDuration:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'std_msgs/Duration'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_195444342590aabe87833226c1cce7cc900519e5b1fe13ff460406396e3ce175'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    data: _record_Ros1Duration = _field(default_factory=lambda: Ros1Duration())

    def encode(self):
        writer = _Writer(8)
        _write_Ros1Std_msgsDuration(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 8)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Std_msgsDuration:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 8))
        value = _read_Ros1Std_msgsDuration(reader)
        reader.end()
        return value

_record_Ros1Std_msgsDuration = Ros1Std_msgsDuration

def _write_Ros1Std_msgsDuration(writer, value):
    if type(value) is not Ros1Std_msgsDuration:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.data
    _write_Ros1Duration(writer, _part0)
    if not 8 <= len(writer.data) - _start <= 8:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Std_msgsDuration(reader):
    _start = reader.position
    value = Ros1Std_msgsDuration()
    value.data = _read_Ros1Duration(reader)
    if not 8 <= reader.position - _start <= 8:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_walking_msgsWalkingStep:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_walking_msgs/WalkingStep'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_b6bacf08a7ff7277b0c96730c5b2691540af208dd61f2662990253ba4d1925dd'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 53
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 181
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 181
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros1Std_msgsHeader = _field(default_factory=lambda: Ros1Std_msgsHeader())
    step_target: _record_Ros1Humanoid_nav_msgsStepTarget = _field(default_factory=lambda: Ros1Humanoid_nav_msgsStepTarget())
    step_duration: _record_Ros1Std_msgsDuration = _field(default_factory=lambda: Ros1Std_msgsDuration())
    step_list_size: _py_int = 0

    def encode(self):
        writer = _Writer(181)
        _write_Ros1Pal_walking_msgsWalkingStep(writer, self)
        wire = writer.finish()
        return _wire(wire, 53, 181)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_walking_msgsWalkingStep:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 53, 181))
        value = _read_Ros1Pal_walking_msgsWalkingStep(reader)
        reader.end()
        return value

_record_Ros1Pal_walking_msgsWalkingStep = Ros1Pal_walking_msgsWalkingStep

def _write_Ros1Pal_walking_msgsWalkingStep(writer, value):
    if type(value) is not Ros1Pal_walking_msgsWalkingStep:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros1Std_msgsHeader(writer, _part0)
    _part1 = value.step_target
    _write_Ros1Humanoid_nav_msgsStepTarget(writer, _part1)
    _part2 = value.step_duration
    _write_Ros1Std_msgsDuration(writer, _part2)
    _part3 = value.step_list_size
    writer.integer(_part3, 4, True)
    if not 53 <= len(writer.data) - _start <= 181:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_walking_msgsWalkingStep(reader):
    _start = reader.position
    value = Ros1Pal_walking_msgsWalkingStep()
    value.header = _read_Ros1Std_msgsHeader(reader)
    value.step_target = _read_Ros1Humanoid_nav_msgsStepTarget(reader)
    value.step_duration = _read_Ros1Std_msgsDuration(reader)
    value.step_list_size = reader.integer(4, True)
    if not 53 <= reader.position - _start <= 181:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_web_msgsWebGoTo:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_web_msgs/WebGoTo'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_19f21af491edb41e15ccb284a67005ef6ed2209b873dd94e5241206f4d2471a5'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 5
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 133
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 133
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = [{'name': 'IMAGE', 'type': 'uint8', 'native_type': 'uint8', 'literal': '0', 'value': '0'},
     {'name': 'VIDEO', 'type': 'uint8', 'native_type': 'uint8', 'literal': '1', 'value': '1'},
     {'name': 'URI', 'type': 'uint8', 'native_type': 'uint8', 'literal': '2', 'value': '2'},
     {'name': 'URL', 'type': 'uint8', 'native_type': 'uint8', 'literal': '3', 'value': '3'},
     {'name': 'TOUCH_PAGE', 'type': 'uint8', 'native_type': 'uint8', 'literal': '4', 'value': '4'}]
    IMAGE: _ClassVar = 0
    VIDEO: _ClassVar = 1
    URI: _ClassVar = 2
    URL: _ClassVar = 3
    TOUCH_PAGE: _ClassVar = 4
    type: _py_int = 0
    value: _py_str = ''

    def encode(self):
        writer = _Writer(133)
        _write_Ros1Pal_web_msgsWebGoTo(writer, self)
        wire = writer.finish()
        return _wire(wire, 5, 133)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_web_msgsWebGoTo:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 5, 133))
        value = _read_Ros1Pal_web_msgsWebGoTo(reader)
        reader.end()
        return value

_record_Ros1Pal_web_msgsWebGoTo = Ros1Pal_web_msgsWebGoTo

def _write_Ros1Pal_web_msgsWebGoTo(writer, value):
    if type(value) is not Ros1Pal_web_msgsWebGoTo:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.type
    writer.integer(_part0, 1, False)
    _part1 = value.value
    _write_text(writer, _part1, 128)
    if not 5 <= len(writer.data) - _start <= 133:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_web_msgsWebGoTo(reader):
    _start = reader.position
    value = Ros1Pal_web_msgsWebGoTo()
    value.type = reader.integer(1, False)
    value.value = _read_text(reader, 128)
    if not 5 <= reader.position - _start <= 133:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_web_msgsGetUserInputGoal:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_web_msgs/GetUserInputGoal'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_d170bc8de6aad94561016ef3c075df8c1f528911d42ac2eb9d22885db2533b3e'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 95
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 7167
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 7167
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    web_go_to: _record_Ros1Pal_web_msgsWebGoTo = _field(default_factory=lambda: Ros1Pal_web_msgsWebGoTo())
    question_tts: _record_Ros1Pal_interaction_msgsTtsGoal = _field(default_factory=lambda: Ros1Pal_interaction_msgsTtsGoal())
    valid_asr_inputs: _py_list[_py_str] = _field(default_factory=lambda: [])
    asr_language: _py_str = ''
    asr_timeout: _record_Ros1Duration = _field(default_factory=lambda: Ros1Duration())
    retry_asr: _py_bool = False
    retry_tts: _record_Ros1Pal_interaction_msgsTtsGoal = _field(default_factory=lambda: Ros1Pal_interaction_msgsTtsGoal())
    wait_for_interaction: _py_bool = False

    def encode(self):
        writer = _Writer(7167)
        _write_Ros1Pal_web_msgsGetUserInputGoal(writer, self)
        wire = writer.finish()
        return _wire(wire, 95, 7167)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_web_msgsGetUserInputGoal:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 95, 7167))
        value = _read_Ros1Pal_web_msgsGetUserInputGoal(reader)
        reader.end()
        return value

_record_Ros1Pal_web_msgsGetUserInputGoal = Ros1Pal_web_msgsGetUserInputGoal

def _write_Ros1Pal_web_msgsGetUserInputGoal(writer, value):
    if type(value) is not Ros1Pal_web_msgsGetUserInputGoal:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.web_go_to
    _write_Ros1Pal_web_msgsWebGoTo(writer, _part0)
    _part1 = value.question_tts
    _write_Ros1Pal_interaction_msgsTtsGoal(writer, _part1)
    _part2 = value.valid_asr_inputs
    if type(_part2) not in (list, tuple):
        raise TypeError('array value required')
    _count2 = len(_part2)
    if _count2 > 16:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        _write_text(writer, _element, 128)
    _part3 = value.asr_language
    _write_text(writer, _part3, 128)
    _part4 = value.asr_timeout
    _write_Ros1Duration(writer, _part4)
    _part5 = value.retry_asr
    if type(_part5) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part5), 1)
    _part6 = value.retry_tts
    _write_Ros1Pal_interaction_msgsTtsGoal(writer, _part6)
    _part7 = value.wait_for_interaction
    if type(_part7) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part7), 1)
    if not 95 <= len(writer.data) - _start <= 7167:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_web_msgsGetUserInputGoal(reader):
    _start = reader.position
    value = Ros1Pal_web_msgsGetUserInputGoal()
    value.web_go_to = _read_Ros1Pal_web_msgsWebGoTo(reader)
    value.question_tts = _read_Ros1Pal_interaction_msgsTtsGoal(reader)
    value.valid_asr_inputs = [_read_text(reader, 128) for _ in range(_read_count(reader, 16, 4))]
    value.asr_language = _read_text(reader, 128)
    value.asr_timeout = _read_Ros1Duration(reader)
    value.retry_asr = _read_bool(reader)
    value.retry_tts = _read_Ros1Pal_interaction_msgsTtsGoal(reader)
    value.wait_for_interaction = _read_bool(reader)
    if not 95 <= reader.position - _start <= 7167:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_web_msgsGetUserInputResult:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_web_msgs/GetUserInputResult'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_95e443de95ce17d423ad14004609c743ed1ff0bea7f69921384dd499ba9ba778'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1192
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1192
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    input: _record_Ros1Pal_interaction_msgsInput = _field(default_factory=lambda: Ros1Pal_interaction_msgsInput())

    def encode(self):
        writer = _Writer(1192)
        _write_Ros1Pal_web_msgsGetUserInputResult(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 1192)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_web_msgsGetUserInputResult:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 1192))
        value = _read_Ros1Pal_web_msgsGetUserInputResult(reader)
        reader.end()
        return value

_record_Ros1Pal_web_msgsGetUserInputResult = Ros1Pal_web_msgsGetUserInputResult

def _write_Ros1Pal_web_msgsGetUserInputResult(writer, value):
    if type(value) is not Ros1Pal_web_msgsGetUserInputResult:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.input
    _write_Ros1Pal_interaction_msgsInput(writer, _part0)
    if not 8 <= len(writer.data) - _start <= 1192:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_web_msgsGetUserInputResult(reader):
    _start = reader.position
    value = Ros1Pal_web_msgsGetUserInputResult()
    value.input = _read_Ros1Pal_interaction_msgsInput(reader)
    if not 8 <= reader.position - _start <= 1192:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_web_msgsGetUserInputFeedback:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_web_msgs/GetUserInputFeedback'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_cc9395e24ce3a8ae3aa198453ac066da1bcb5f90a5883cc4c7dc6a6a52675395'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Pal_web_msgsGetUserInputFeedback(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_web_msgsGetUserInputFeedback:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Pal_web_msgsGetUserInputFeedback(reader)
        reader.end()
        return value

_record_Ros1Pal_web_msgsGetUserInputFeedback = Ros1Pal_web_msgsGetUserInputFeedback

def _write_Ros1Pal_web_msgsGetUserInputFeedback(writer, value):
    if type(value) is not Ros1Pal_web_msgsGetUserInputFeedback:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros1Pal_web_msgsGetUserInputFeedback(reader):
    _start = reader.position
    value = Ros1Pal_web_msgsGetUserInputFeedback()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_wifi_localization_msgsGetWifiMapRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_wifi_localization_msgs/GetWifiMapRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_91f308677881cbf1a91911f58602b59adabc3935db966392d28ad81acd70d832'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Pal_wifi_localization_msgsGetWifiMapRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_wifi_localization_msgsGetWifiMapRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Pal_wifi_localization_msgsGetWifiMapRequest(reader)
        reader.end()
        return value

_record_Ros1Pal_wifi_localization_msgsGetWifiMapRequest = Ros1Pal_wifi_localization_msgsGetWifiMapRequest

def _write_Ros1Pal_wifi_localization_msgsGetWifiMapRequest(writer, value):
    if type(value) is not Ros1Pal_wifi_localization_msgsGetWifiMapRequest:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros1Pal_wifi_localization_msgsGetWifiMapRequest(reader):
    _start = reader.position
    value = Ros1Pal_wifi_localization_msgsGetWifiMapRequest()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_wifi_localization_msgsWifiSignal:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_wifi_localization_msgs/WifiSignal'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_f2397d50da735cc25a1392f79d7dca7e1a4bf2837e5981cb987bdfbb0dcebf71'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 140
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 140
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    id: _record_Ros1Std_msgsString = _field(default_factory=lambda: Ros1Std_msgsString())
    mean: _py_float = 0.0
    std_dev: _py_float = 0.0

    def encode(self):
        writer = _Writer(140)
        _write_Ros1Pal_wifi_localization_msgsWifiSignal(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 140)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_wifi_localization_msgsWifiSignal:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 12, 140))
        value = _read_Ros1Pal_wifi_localization_msgsWifiSignal(reader)
        reader.end()
        return value

_record_Ros1Pal_wifi_localization_msgsWifiSignal = Ros1Pal_wifi_localization_msgsWifiSignal

def _write_Ros1Pal_wifi_localization_msgsWifiSignal(writer, value):
    if type(value) is not Ros1Pal_wifi_localization_msgsWifiSignal:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.id
    _write_Ros1Std_msgsString(writer, _part0)
    _part1 = value.mean
    writer.f32(_part1)
    _part2 = value.std_dev
    writer.f32(_part2)
    if not 12 <= len(writer.data) - _start <= 140:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_wifi_localization_msgsWifiSignal(reader):
    _start = reader.position
    value = Ros1Pal_wifi_localization_msgsWifiSignal()
    value.id = _read_Ros1Std_msgsString(reader)
    value.mean = reader.f32()
    value.std_dev = reader.f32()
    if not 12 <= reader.position - _start <= 140:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_wifi_localization_msgsWifiSignalList:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_wifi_localization_msgs/WifiSignalList'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_9a15f8c545d1fb461b8b4d42c31fe7803392a5277c9ee0377aa9b79888ae64fc'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 20
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 580
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 580
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    networks: _py_list[_record_Ros1Pal_wifi_localization_msgsWifiSignal] = _field(default_factory=lambda: [])
    start_time: _record_Ros1Time = _field(default_factory=lambda: Ros1Time())
    end_time: _record_Ros1Time = _field(default_factory=lambda: Ros1Time())

    def encode(self):
        writer = _Writer(580)
        _write_Ros1Pal_wifi_localization_msgsWifiSignalList(writer, self)
        wire = writer.finish()
        return _wire(wire, 20, 580)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_wifi_localization_msgsWifiSignalList:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 20, 580))
        value = _read_Ros1Pal_wifi_localization_msgsWifiSignalList(reader)
        reader.end()
        return value

_record_Ros1Pal_wifi_localization_msgsWifiSignalList = Ros1Pal_wifi_localization_msgsWifiSignalList

def _write_Ros1Pal_wifi_localization_msgsWifiSignalList(writer, value):
    if type(value) is not Ros1Pal_wifi_localization_msgsWifiSignalList:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.networks
    if type(_part0) not in (list, tuple):
        raise TypeError('array value required')
    _count0 = len(_part0)
    if _count0 > 4:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count0, 4)
    for _index in range(_count0):
        _element = _part0[_index]
        _write_Ros1Pal_wifi_localization_msgsWifiSignal(writer, _element)
    _part1 = value.start_time
    _write_Ros1Time(writer, _part1)
    _part2 = value.end_time
    _write_Ros1Time(writer, _part2)
    if not 20 <= len(writer.data) - _start <= 580:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_wifi_localization_msgsWifiSignalList(reader):
    _start = reader.position
    value = Ros1Pal_wifi_localization_msgsWifiSignalList()
    value.networks = [_read_Ros1Pal_wifi_localization_msgsWifiSignal(reader) for _ in range(_read_count(reader, 4, 12))]
    value.start_time = _read_Ros1Time(reader)
    value.end_time = _read_Ros1Time(reader)
    if not 20 <= reader.position - _start <= 580:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_wifi_localization_msgsWifiSignalMap:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_wifi_localization_msgs/WifiSignalMap'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_948926ffa19fd58fabf24b61ae0d2334e09b3815358f79b521dd3b84fe231a3e'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 100
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 2548
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 2548
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros1Std_msgsHeader = _field(default_factory=lambda: Ros1Std_msgsHeader())
    info: _record_Ros1Nav_msgsMapMetaData = _field(default_factory=lambda: Ros1Nav_msgsMapMetaData())
    sectors: _py_int = 0
    data: _py_list[_record_Ros1Pal_wifi_localization_msgsWifiSignalList] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(2548)
        _write_Ros1Pal_wifi_localization_msgsWifiSignalMap(writer, self)
        wire = writer.finish()
        return _wire(wire, 100, 2548)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_wifi_localization_msgsWifiSignalMap:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 100, 2548))
        value = _read_Ros1Pal_wifi_localization_msgsWifiSignalMap(reader)
        reader.end()
        return value

_record_Ros1Pal_wifi_localization_msgsWifiSignalMap = Ros1Pal_wifi_localization_msgsWifiSignalMap

def _write_Ros1Pal_wifi_localization_msgsWifiSignalMap(writer, value):
    if type(value) is not Ros1Pal_wifi_localization_msgsWifiSignalMap:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros1Std_msgsHeader(writer, _part0)
    _part1 = value.info
    _write_Ros1Nav_msgsMapMetaData(writer, _part1)
    _part2 = value.sectors
    writer.integer(_part2, 4, False)
    _part3 = value.data
    if type(_part3) not in (list, tuple):
        raise TypeError('array value required')
    _count3 = len(_part3)
    if _count3 > 4:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count3, 4)
    for _index in range(_count3):
        _element = _part3[_index]
        _write_Ros1Pal_wifi_localization_msgsWifiSignalList(writer, _element)
    if not 100 <= len(writer.data) - _start <= 2548:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_wifi_localization_msgsWifiSignalMap(reader):
    _start = reader.position
    value = Ros1Pal_wifi_localization_msgsWifiSignalMap()
    value.header = _read_Ros1Std_msgsHeader(reader)
    value.info = _read_Ros1Nav_msgsMapMetaData(reader)
    value.sectors = reader.integer(4, False)
    value.data = [_read_Ros1Pal_wifi_localization_msgsWifiSignalList(reader) for _ in range(_read_count(reader, 4, 20))]
    if not 100 <= reader.position - _start <= 2548:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Pal_wifi_localization_msgsGetWifiMapResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'pal_wifi_localization_msgs/GetWifiMapResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_576278a043277d7621c6fc90fbbf583a0ad0ef9d7704fb8b5cca8b1b86c7bcb3'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 100
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 2548
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 2548
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    map: _record_Ros1Pal_wifi_localization_msgsWifiSignalMap = _field(default_factory=lambda: Ros1Pal_wifi_localization_msgsWifiSignalMap())

    def encode(self):
        writer = _Writer(2548)
        _write_Ros1Pal_wifi_localization_msgsGetWifiMapResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 100, 2548)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Pal_wifi_localization_msgsGetWifiMapResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 100, 2548))
        value = _read_Ros1Pal_wifi_localization_msgsGetWifiMapResponse(reader)
        reader.end()
        return value

_record_Ros1Pal_wifi_localization_msgsGetWifiMapResponse = Ros1Pal_wifi_localization_msgsGetWifiMapResponse

def _write_Ros1Pal_wifi_localization_msgsGetWifiMapResponse(writer, value):
    if type(value) is not Ros1Pal_wifi_localization_msgsGetWifiMapResponse:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.map
    _write_Ros1Pal_wifi_localization_msgsWifiSignalMap(writer, _part0)
    if not 100 <= len(writer.data) - _start <= 2548:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Pal_wifi_localization_msgsGetWifiMapResponse(reader):
    _start = reader.position
    value = Ros1Pal_wifi_localization_msgsGetWifiMapResponse()
    value.map = _read_Ros1Pal_wifi_localization_msgsWifiSignalMap(reader)
    if not 100 <= reader.position - _start <= 2548:
        raise ValueError('nested complete record aggregate extent')
    return value

