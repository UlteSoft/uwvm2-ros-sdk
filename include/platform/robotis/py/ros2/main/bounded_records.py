# @file bounded_records.py
# @brief Provide the complete robotis main canonical value surface.
# @details The original 34 record catalog retains field order, constants, defaults and quotas.
# Borrowed values and buffers must remain stable while a conversion is in progress.
# Malformed, truncated and trailing wire values are refused through the shared wire error contract.
# No declaration grants a capability or establishes a native ROS registry identity.
# Original declarations and units are retained in share/platform/robotis/catalogs.
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
class Ros2Geometry_msgsMsgPoint:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'geometry_msgs/msg/Point'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616'
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
        _write_Ros2Geometry_msgsMsgPoint(writer, self)
        wire = writer.finish()
        return _wire(wire, 24, 24)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Geometry_msgsMsgPoint:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 24, 24))
        value = _read_Ros2Geometry_msgsMsgPoint(reader)
        reader.end()
        return value

_record_Ros2Geometry_msgsMsgPoint = Ros2Geometry_msgsMsgPoint

def _write_Ros2Geometry_msgsMsgPoint(writer, value):
    if type(value) is not Ros2Geometry_msgsMsgPoint:
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

def _read_Ros2Geometry_msgsMsgPoint(reader):
    _start = reader.position
    value = Ros2Geometry_msgsMsgPoint()
    value.x = reader.f64()
    value.y = reader.f64()
    value.z = reader.f64()
    if not 24 <= reader.position - _start <= 24:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Geometry_msgsMsgQuaternion:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'geometry_msgs/msg/Quaternion'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 32
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 32
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 32
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    x: _py_float = 0.0
    y: _py_float = 0.0
    z: _py_float = 0.0
    w: _py_float = 1.0

    def encode(self):
        writer = _Writer(32)
        _write_Ros2Geometry_msgsMsgQuaternion(writer, self)
        wire = writer.finish()
        return _wire(wire, 32, 32)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Geometry_msgsMsgQuaternion:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 32, 32))
        value = _read_Ros2Geometry_msgsMsgQuaternion(reader)
        reader.end()
        return value

_record_Ros2Geometry_msgsMsgQuaternion = Ros2Geometry_msgsMsgQuaternion

def _write_Ros2Geometry_msgsMsgQuaternion(writer, value):
    if type(value) is not Ros2Geometry_msgsMsgQuaternion:
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

def _read_Ros2Geometry_msgsMsgQuaternion(reader):
    _start = reader.position
    value = Ros2Geometry_msgsMsgQuaternion()
    value.x = reader.f64()
    value.y = reader.f64()
    value.z = reader.f64()
    value.w = reader.f64()
    if not 32 <= reader.position - _start <= 32:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Geometry_msgsMsgPose:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'geometry_msgs/msg/Pose'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 56
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 56
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 56
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    position: _record_Ros2Geometry_msgsMsgPoint = _field(default_factory=lambda: Ros2Geometry_msgsMsgPoint())
    orientation: _record_Ros2Geometry_msgsMsgQuaternion = _field(default_factory=lambda: Ros2Geometry_msgsMsgQuaternion())

    def encode(self):
        writer = _Writer(56)
        _write_Ros2Geometry_msgsMsgPose(writer, self)
        wire = writer.finish()
        return _wire(wire, 56, 56)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Geometry_msgsMsgPose:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 56, 56))
        value = _read_Ros2Geometry_msgsMsgPose(reader)
        reader.end()
        return value

_record_Ros2Geometry_msgsMsgPose = Ros2Geometry_msgsMsgPose

def _write_Ros2Geometry_msgsMsgPose(writer, value):
    if type(value) is not Ros2Geometry_msgsMsgPose:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.position
    _write_Ros2Geometry_msgsMsgPoint(writer, _part0)
    _part1 = value.orientation
    _write_Ros2Geometry_msgsMsgQuaternion(writer, _part1)
    if not 56 <= len(writer.data) - _start <= 56:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Geometry_msgsMsgPose(reader):
    _start = reader.position
    value = Ros2Geometry_msgsMsgPose()
    value.position = _read_Ros2Geometry_msgsMsgPoint(reader)
    value.orientation = _read_Ros2Geometry_msgsMsgQuaternion(reader)
    if not 56 <= reader.position - _start <= 56:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Geometry_msgsMsgPoseWithCovariance:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'geometry_msgs/msg/PoseWithCovariance'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_8eb3e25c45769eb29691011c05315ed50f2b97eff488f9e8ee2dc70bddab4dc2'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 344
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 344
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 344
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    pose: _record_Ros2Geometry_msgsMsgPose = _field(default_factory=lambda: Ros2Geometry_msgsMsgPose())
    covariance: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(36)])

    def encode(self):
        writer = _Writer(344)
        _write_Ros2Geometry_msgsMsgPoseWithCovariance(writer, self)
        wire = writer.finish()
        return _wire(wire, 344, 344)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Geometry_msgsMsgPoseWithCovariance:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 344, 344))
        value = _read_Ros2Geometry_msgsMsgPoseWithCovariance(reader)
        reader.end()
        return value

_record_Ros2Geometry_msgsMsgPoseWithCovariance = Ros2Geometry_msgsMsgPoseWithCovariance

def _write_Ros2Geometry_msgsMsgPoseWithCovariance(writer, value):
    if type(value) is not Ros2Geometry_msgsMsgPoseWithCovariance:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.pose
    _write_Ros2Geometry_msgsMsgPose(writer, _part0)
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

def _read_Ros2Geometry_msgsMsgPoseWithCovariance(reader):
    _start = reader.position
    value = Ros2Geometry_msgsMsgPoseWithCovariance()
    value.pose = _read_Ros2Geometry_msgsMsgPose(reader)
    value.covariance = [reader.f64() for _ in range(36)]
    if not 344 <= reader.position - _start <= 344:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Geometry_msgsMsgVector3:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'geometry_msgs/msg/Vector3'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e'
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
    _start = len(writer.data)
    _part0 = value.x
    writer.f64(_part0)
    _part1 = value.y
    writer.f64(_part1)
    _part2 = value.z
    writer.f64(_part2)
    if not 24 <= len(writer.data) - _start <= 24:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Geometry_msgsMsgVector3(reader):
    _start = reader.position
    value = Ros2Geometry_msgsMsgVector3()
    value.x = reader.f64()
    value.y = reader.f64()
    value.z = reader.f64()
    if not 24 <= reader.position - _start <= 24:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Geometry_msgsMsgTransform:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'geometry_msgs/msg/Transform'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 56
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 56
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 56
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    translation: _record_Ros2Geometry_msgsMsgVector3 = _field(default_factory=lambda: Ros2Geometry_msgsMsgVector3())
    rotation: _record_Ros2Geometry_msgsMsgQuaternion = _field(default_factory=lambda: Ros2Geometry_msgsMsgQuaternion())

    def encode(self):
        writer = _Writer(56)
        _write_Ros2Geometry_msgsMsgTransform(writer, self)
        wire = writer.finish()
        return _wire(wire, 56, 56)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Geometry_msgsMsgTransform:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 56, 56))
        value = _read_Ros2Geometry_msgsMsgTransform(reader)
        reader.end()
        return value

_record_Ros2Geometry_msgsMsgTransform = Ros2Geometry_msgsMsgTransform

def _write_Ros2Geometry_msgsMsgTransform(writer, value):
    if type(value) is not Ros2Geometry_msgsMsgTransform:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.translation
    _write_Ros2Geometry_msgsMsgVector3(writer, _part0)
    _part1 = value.rotation
    _write_Ros2Geometry_msgsMsgQuaternion(writer, _part1)
    if not 56 <= len(writer.data) - _start <= 56:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Geometry_msgsMsgTransform(reader):
    _start = reader.position
    value = Ros2Geometry_msgsMsgTransform()
    value.translation = _read_Ros2Geometry_msgsMsgVector3(reader)
    value.rotation = _read_Ros2Geometry_msgsMsgQuaternion(reader)
    if not 56 <= reader.position - _start <= 56:
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
class Ros2Geometry_msgsMsgTransformStamped:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'geometry_msgs/msg/TransformStamped'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_1cb6033612e0632fe87e6cf44bf5a899220370c372ba25b989a066171925ee7a'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 72
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 456
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 456
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros2Std_msgsMsgHeader = _field(default_factory=lambda: Ros2Std_msgsMsgHeader())
    child_frame_id: _py_str = ''
    transform: _record_Ros2Geometry_msgsMsgTransform = _field(default_factory=lambda: Ros2Geometry_msgsMsgTransform())

    def encode(self):
        writer = _Writer(456)
        _write_Ros2Geometry_msgsMsgTransformStamped(writer, self)
        wire = writer.finish()
        return _wire(wire, 72, 456)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Geometry_msgsMsgTransformStamped:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 72, 456))
        value = _read_Ros2Geometry_msgsMsgTransformStamped(reader)
        reader.end()
        return value

_record_Ros2Geometry_msgsMsgTransformStamped = Ros2Geometry_msgsMsgTransformStamped

def _write_Ros2Geometry_msgsMsgTransformStamped(writer, value):
    if type(value) is not Ros2Geometry_msgsMsgTransformStamped:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros2Std_msgsMsgHeader(writer, _part0)
    _part1 = value.child_frame_id
    _write_text(writer, _part1, 256)
    _part2 = value.transform
    _write_Ros2Geometry_msgsMsgTransform(writer, _part2)
    if not 72 <= len(writer.data) - _start <= 456:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Geometry_msgsMsgTransformStamped(reader):
    _start = reader.position
    value = Ros2Geometry_msgsMsgTransformStamped()
    value.header = _read_Ros2Std_msgsMsgHeader(reader)
    value.child_frame_id = _read_text(reader, 256)
    value.transform = _read_Ros2Geometry_msgsMsgTransform(reader)
    if not 72 <= reader.position - _start <= 456:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Geometry_msgsMsgTwist:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'geometry_msgs/msg/Twist'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 48
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 48
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 48
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
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
    _start = len(writer.data)
    _part0 = value.linear
    _write_Ros2Geometry_msgsMsgVector3(writer, _part0)
    _part1 = value.angular
    _write_Ros2Geometry_msgsMsgVector3(writer, _part1)
    if not 48 <= len(writer.data) - _start <= 48:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Geometry_msgsMsgTwist(reader):
    _start = reader.position
    value = Ros2Geometry_msgsMsgTwist()
    value.linear = _read_Ros2Geometry_msgsMsgVector3(reader)
    value.angular = _read_Ros2Geometry_msgsMsgVector3(reader)
    if not 48 <= reader.position - _start <= 48:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Geometry_msgsMsgTwistStamped:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'geometry_msgs/msg/TwistStamped'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_7448b885388ff3454de1a35b8c5c895ee58b791267b435df1e4cf7c1eee0f573'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 60
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 188
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 188
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros2Std_msgsMsgHeader = _field(default_factory=lambda: Ros2Std_msgsMsgHeader())
    twist: _record_Ros2Geometry_msgsMsgTwist = _field(default_factory=lambda: Ros2Geometry_msgsMsgTwist())

    def encode(self):
        writer = _Writer(188)
        _write_Ros2Geometry_msgsMsgTwistStamped(writer, self)
        wire = writer.finish()
        return _wire(wire, 60, 188)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Geometry_msgsMsgTwistStamped:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 60, 188))
        value = _read_Ros2Geometry_msgsMsgTwistStamped(reader)
        reader.end()
        return value

_record_Ros2Geometry_msgsMsgTwistStamped = Ros2Geometry_msgsMsgTwistStamped

def _write_Ros2Geometry_msgsMsgTwistStamped(writer, value):
    if type(value) is not Ros2Geometry_msgsMsgTwistStamped:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros2Std_msgsMsgHeader(writer, _part0)
    _part1 = value.twist
    _write_Ros2Geometry_msgsMsgTwist(writer, _part1)
    if not 60 <= len(writer.data) - _start <= 188:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Geometry_msgsMsgTwistStamped(reader):
    _start = reader.position
    value = Ros2Geometry_msgsMsgTwistStamped()
    value.header = _read_Ros2Std_msgsMsgHeader(reader)
    value.twist = _read_Ros2Geometry_msgsMsgTwist(reader)
    if not 60 <= reader.position - _start <= 188:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Geometry_msgsMsgTwistWithCovariance:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'geometry_msgs/msg/TwistWithCovariance'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_96c9fddad7b7c240e850d8c27ddb5f8343764cac791ef9e210196f7941aaf404'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 336
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 336
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 336
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    twist: _record_Ros2Geometry_msgsMsgTwist = _field(default_factory=lambda: Ros2Geometry_msgsMsgTwist())
    covariance: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(36)])

    def encode(self):
        writer = _Writer(336)
        _write_Ros2Geometry_msgsMsgTwistWithCovariance(writer, self)
        wire = writer.finish()
        return _wire(wire, 336, 336)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Geometry_msgsMsgTwistWithCovariance:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 336, 336))
        value = _read_Ros2Geometry_msgsMsgTwistWithCovariance(reader)
        reader.end()
        return value

_record_Ros2Geometry_msgsMsgTwistWithCovariance = Ros2Geometry_msgsMsgTwistWithCovariance

def _write_Ros2Geometry_msgsMsgTwistWithCovariance(writer, value):
    if type(value) is not Ros2Geometry_msgsMsgTwistWithCovariance:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.twist
    _write_Ros2Geometry_msgsMsgTwist(writer, _part0)
    _part1 = value.covariance
    if type(_part1) not in (list, tuple):
        raise TypeError('array value required')
    _count1 = len(_part1)
    if _count1 != 36:
        raise ValueError('fixed/sequence count bound')
    for _index in range(_count1):
        _element = _part1[_index]
        writer.f64(_element)
    if not 336 <= len(writer.data) - _start <= 336:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Geometry_msgsMsgTwistWithCovariance(reader):
    _start = reader.position
    value = Ros2Geometry_msgsMsgTwistWithCovariance()
    value.twist = _read_Ros2Geometry_msgsMsgTwist(reader)
    value.covariance = [reader.f64() for _ in range(36)]
    if not 336 <= reader.position - _start <= 336:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Nav_msgsMsgOdometry:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'nav_msgs/msg/Odometry'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_4eb9aa4edb3d288080deaae0326c26a75923e69d40c9b10219baf6d441ea8111'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 696
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1080
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1080
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros2Std_msgsMsgHeader = _field(default_factory=lambda: Ros2Std_msgsMsgHeader())
    child_frame_id: _py_str = ''
    pose: _record_Ros2Geometry_msgsMsgPoseWithCovariance = _field(default_factory=lambda: Ros2Geometry_msgsMsgPoseWithCovariance())
    twist: _record_Ros2Geometry_msgsMsgTwistWithCovariance = _field(default_factory=lambda: Ros2Geometry_msgsMsgTwistWithCovariance())

    def encode(self):
        writer = _Writer(1080)
        _write_Ros2Nav_msgsMsgOdometry(writer, self)
        wire = writer.finish()
        return _wire(wire, 696, 1080)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Nav_msgsMsgOdometry:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 696, 1080))
        value = _read_Ros2Nav_msgsMsgOdometry(reader)
        reader.end()
        return value

_record_Ros2Nav_msgsMsgOdometry = Ros2Nav_msgsMsgOdometry

def _write_Ros2Nav_msgsMsgOdometry(writer, value):
    if type(value) is not Ros2Nav_msgsMsgOdometry:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros2Std_msgsMsgHeader(writer, _part0)
    _part1 = value.child_frame_id
    _write_text(writer, _part1, 256)
    _part2 = value.pose
    _write_Ros2Geometry_msgsMsgPoseWithCovariance(writer, _part2)
    _part3 = value.twist
    _write_Ros2Geometry_msgsMsgTwistWithCovariance(writer, _part3)
    if not 696 <= len(writer.data) - _start <= 1080:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Nav_msgsMsgOdometry(reader):
    _start = reader.position
    value = Ros2Nav_msgsMsgOdometry()
    value.header = _read_Ros2Std_msgsMsgHeader(reader)
    value.child_frame_id = _read_text(reader, 256)
    value.pose = _read_Ros2Geometry_msgsMsgPoseWithCovariance(reader)
    value.twist = _read_Ros2Geometry_msgsMsgTwistWithCovariance(reader)
    if not 696 <= reader.position - _start <= 1080:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Sensor_msgsMsgBatteryState:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'sensor_msgs/msg/BatteryState'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_9083c57dde00bba912db4dd736027cb92bbed2b1a79f965570dee86e1ff5a96e'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 60
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 828
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 828
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = [{'name': 'POWER_SUPPLY_STATUS_UNKNOWN',
      'type': 'uint8',
      'native_type': 'uint8',
      'literal': '0',
      'value': '0'},
     {'name': 'POWER_SUPPLY_STATUS_CHARGING',
      'type': 'uint8',
      'native_type': 'uint8',
      'literal': '1',
      'value': '1'},
     {'name': 'POWER_SUPPLY_STATUS_DISCHARGING',
      'type': 'uint8',
      'native_type': 'uint8',
      'literal': '2',
      'value': '2'},
     {'name': 'POWER_SUPPLY_STATUS_NOT_CHARGING',
      'type': 'uint8',
      'native_type': 'uint8',
      'literal': '3',
      'value': '3'},
     {'name': 'POWER_SUPPLY_STATUS_FULL',
      'type': 'uint8',
      'native_type': 'uint8',
      'literal': '4',
      'value': '4'},
     {'name': 'POWER_SUPPLY_HEALTH_UNKNOWN',
      'type': 'uint8',
      'native_type': 'uint8',
      'literal': '0',
      'value': '0'},
     {'name': 'POWER_SUPPLY_HEALTH_GOOD',
      'type': 'uint8',
      'native_type': 'uint8',
      'literal': '1',
      'value': '1'},
     {'name': 'POWER_SUPPLY_HEALTH_OVERHEAT',
      'type': 'uint8',
      'native_type': 'uint8',
      'literal': '2',
      'value': '2'},
     {'name': 'POWER_SUPPLY_HEALTH_DEAD',
      'type': 'uint8',
      'native_type': 'uint8',
      'literal': '3',
      'value': '3'},
     {'name': 'POWER_SUPPLY_HEALTH_OVERVOLTAGE',
      'type': 'uint8',
      'native_type': 'uint8',
      'literal': '4',
      'value': '4'},
     {'name': 'POWER_SUPPLY_HEALTH_UNSPEC_FAILURE',
      'type': 'uint8',
      'native_type': 'uint8',
      'literal': '5',
      'value': '5'},
     {'name': 'POWER_SUPPLY_HEALTH_COLD',
      'type': 'uint8',
      'native_type': 'uint8',
      'literal': '6',
      'value': '6'},
     {'name': 'POWER_SUPPLY_HEALTH_WATCHDOG_TIMER_EXPIRE',
      'type': 'uint8',
      'native_type': 'uint8',
      'literal': '7',
      'value': '7'},
     {'name': 'POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE',
      'type': 'uint8',
      'native_type': 'uint8',
      'literal': '8',
      'value': '8'},
     {'name': 'POWER_SUPPLY_TECHNOLOGY_UNKNOWN',
      'type': 'uint8',
      'native_type': 'uint8',
      'literal': '0',
      'value': '0'},
     {'name': 'POWER_SUPPLY_TECHNOLOGY_NIMH',
      'type': 'uint8',
      'native_type': 'uint8',
      'literal': '1',
      'value': '1'},
     {'name': 'POWER_SUPPLY_TECHNOLOGY_LION',
      'type': 'uint8',
      'native_type': 'uint8',
      'literal': '2',
      'value': '2'},
     {'name': 'POWER_SUPPLY_TECHNOLOGY_LIPO',
      'type': 'uint8',
      'native_type': 'uint8',
      'literal': '3',
      'value': '3'},
     {'name': 'POWER_SUPPLY_TECHNOLOGY_LIFE',
      'type': 'uint8',
      'native_type': 'uint8',
      'literal': '4',
      'value': '4'},
     {'name': 'POWER_SUPPLY_TECHNOLOGY_NICD',
      'type': 'uint8',
      'native_type': 'uint8',
      'literal': '5',
      'value': '5'},
     {'name': 'POWER_SUPPLY_TECHNOLOGY_LIMN',
      'type': 'uint8',
      'native_type': 'uint8',
      'literal': '6',
      'value': '6'},
     {'name': 'POWER_SUPPLY_TECHNOLOGY_TERNARY',
      'type': 'uint8',
      'native_type': 'uint8',
      'literal': '7',
      'value': '7'},
     {'name': 'POWER_SUPPLY_TECHNOLOGY_VRLA',
      'type': 'uint8',
      'native_type': 'uint8',
      'literal': '8',
      'value': '8'}]
    POWER_SUPPLY_STATUS_UNKNOWN: _ClassVar = 0
    POWER_SUPPLY_STATUS_CHARGING: _ClassVar = 1
    POWER_SUPPLY_STATUS_DISCHARGING: _ClassVar = 2
    POWER_SUPPLY_STATUS_NOT_CHARGING: _ClassVar = 3
    POWER_SUPPLY_STATUS_FULL: _ClassVar = 4
    POWER_SUPPLY_HEALTH_UNKNOWN: _ClassVar = 0
    POWER_SUPPLY_HEALTH_GOOD: _ClassVar = 1
    POWER_SUPPLY_HEALTH_OVERHEAT: _ClassVar = 2
    POWER_SUPPLY_HEALTH_DEAD: _ClassVar = 3
    POWER_SUPPLY_HEALTH_OVERVOLTAGE: _ClassVar = 4
    POWER_SUPPLY_HEALTH_UNSPEC_FAILURE: _ClassVar = 5
    POWER_SUPPLY_HEALTH_COLD: _ClassVar = 6
    POWER_SUPPLY_HEALTH_WATCHDOG_TIMER_EXPIRE: _ClassVar = 7
    POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE: _ClassVar = 8
    POWER_SUPPLY_TECHNOLOGY_UNKNOWN: _ClassVar = 0
    POWER_SUPPLY_TECHNOLOGY_NIMH: _ClassVar = 1
    POWER_SUPPLY_TECHNOLOGY_LION: _ClassVar = 2
    POWER_SUPPLY_TECHNOLOGY_LIPO: _ClassVar = 3
    POWER_SUPPLY_TECHNOLOGY_LIFE: _ClassVar = 4
    POWER_SUPPLY_TECHNOLOGY_NICD: _ClassVar = 5
    POWER_SUPPLY_TECHNOLOGY_LIMN: _ClassVar = 6
    POWER_SUPPLY_TECHNOLOGY_TERNARY: _ClassVar = 7
    POWER_SUPPLY_TECHNOLOGY_VRLA: _ClassVar = 8
    header: _record_Ros2Std_msgsMsgHeader = _field(default_factory=lambda: Ros2Std_msgsMsgHeader())
    voltage: _py_float = 0.0
    temperature: _py_float = 0.0
    current: _py_float = 0.0
    charge: _py_float = 0.0
    capacity: _py_float = 0.0
    design_capacity: _py_float = 0.0
    percentage: _py_float = 0.0
    power_supply_status: _py_int = 0
    power_supply_health: _py_int = 0
    power_supply_technology: _py_int = 0
    present: _py_bool = False
    cell_voltage: _py_list[_py_float] = _field(default_factory=lambda: [])
    cell_temperature: _py_list[_py_float] = _field(default_factory=lambda: [])
    location: _py_str = ''
    serial_number: _py_str = ''

    def encode(self):
        writer = _Writer(828)
        _write_Ros2Sensor_msgsMsgBatteryState(writer, self)
        wire = writer.finish()
        return _wire(wire, 60, 828)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Sensor_msgsMsgBatteryState:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 60, 828))
        value = _read_Ros2Sensor_msgsMsgBatteryState(reader)
        reader.end()
        return value

_record_Ros2Sensor_msgsMsgBatteryState = Ros2Sensor_msgsMsgBatteryState

def _write_Ros2Sensor_msgsMsgBatteryState(writer, value):
    if type(value) is not Ros2Sensor_msgsMsgBatteryState:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros2Std_msgsMsgHeader(writer, _part0)
    _part1 = value.voltage
    writer.f32(_part1)
    _part2 = value.temperature
    writer.f32(_part2)
    _part3 = value.current
    writer.f32(_part3)
    _part4 = value.charge
    writer.f32(_part4)
    _part5 = value.capacity
    writer.f32(_part5)
    _part6 = value.design_capacity
    writer.f32(_part6)
    _part7 = value.percentage
    writer.f32(_part7)
    _part8 = value.power_supply_status
    writer.integer(_part8, 1, False)
    _part9 = value.power_supply_health
    writer.integer(_part9, 1, False)
    _part10 = value.power_supply_technology
    writer.integer(_part10, 1, False)
    _part11 = value.present
    if type(_part11) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part11), 1)
    _part12 = value.cell_voltage
    if type(_part12) not in (list, tuple):
        raise TypeError('array value required')
    _count12 = len(_part12)
    if _count12 > 16:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count12, 4)
    for _index in range(_count12):
        _element = _part12[_index]
        writer.f32(_element)
    _part13 = value.cell_temperature
    if type(_part13) not in (list, tuple):
        raise TypeError('array value required')
    _count13 = len(_part13)
    if _count13 > 16:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count13, 4)
    for _index in range(_count13):
        _element = _part13[_index]
        writer.f32(_element)
    _part14 = value.location
    _write_text(writer, _part14, 256)
    _part15 = value.serial_number
    _write_text(writer, _part15, 256)
    if not 60 <= len(writer.data) - _start <= 828:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Sensor_msgsMsgBatteryState(reader):
    _start = reader.position
    value = Ros2Sensor_msgsMsgBatteryState()
    value.header = _read_Ros2Std_msgsMsgHeader(reader)
    value.voltage = reader.f32()
    value.temperature = reader.f32()
    value.current = reader.f32()
    value.charge = reader.f32()
    value.capacity = reader.f32()
    value.design_capacity = reader.f32()
    value.percentage = reader.f32()
    value.power_supply_status = reader.integer(1, False)
    value.power_supply_health = reader.integer(1, False)
    value.power_supply_technology = reader.integer(1, False)
    value.present = _read_bool(reader)
    value.cell_voltage = [reader.f32() for _ in range(_read_count(reader, 16, 4))]
    value.cell_temperature = [reader.f32() for _ in range(_read_count(reader, 16, 4))]
    value.location = _read_text(reader, 256)
    value.serial_number = _read_text(reader, 256)
    if not 60 <= reader.position - _start <= 828:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Sensor_msgsMsgImu:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'sensor_msgs/msg/Imu'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_e38d1c936a2a4a870b2f069af8d1796f69e6ce7b8cae0a792925ed2f6c0cae1b'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 308
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 436
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 436
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros2Std_msgsMsgHeader = _field(default_factory=lambda: Ros2Std_msgsMsgHeader())
    orientation: _record_Ros2Geometry_msgsMsgQuaternion = _field(default_factory=lambda: Ros2Geometry_msgsMsgQuaternion())
    orientation_covariance: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(9)])
    angular_velocity: _record_Ros2Geometry_msgsMsgVector3 = _field(default_factory=lambda: Ros2Geometry_msgsMsgVector3())
    angular_velocity_covariance: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(9)])
    linear_acceleration: _record_Ros2Geometry_msgsMsgVector3 = _field(default_factory=lambda: Ros2Geometry_msgsMsgVector3())
    linear_acceleration_covariance: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(9)])

    def encode(self):
        writer = _Writer(436)
        _write_Ros2Sensor_msgsMsgImu(writer, self)
        wire = writer.finish()
        return _wire(wire, 308, 436)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Sensor_msgsMsgImu:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 308, 436))
        value = _read_Ros2Sensor_msgsMsgImu(reader)
        reader.end()
        return value

_record_Ros2Sensor_msgsMsgImu = Ros2Sensor_msgsMsgImu

def _write_Ros2Sensor_msgsMsgImu(writer, value):
    if type(value) is not Ros2Sensor_msgsMsgImu:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros2Std_msgsMsgHeader(writer, _part0)
    _part1 = value.orientation
    _write_Ros2Geometry_msgsMsgQuaternion(writer, _part1)
    _part2 = value.orientation_covariance
    if type(_part2) not in (list, tuple):
        raise TypeError('array value required')
    _count2 = len(_part2)
    if _count2 != 9:
        raise ValueError('fixed/sequence count bound')
    for _index in range(_count2):
        _element = _part2[_index]
        writer.f64(_element)
    _part3 = value.angular_velocity
    _write_Ros2Geometry_msgsMsgVector3(writer, _part3)
    _part4 = value.angular_velocity_covariance
    if type(_part4) not in (list, tuple):
        raise TypeError('array value required')
    _count4 = len(_part4)
    if _count4 != 9:
        raise ValueError('fixed/sequence count bound')
    for _index in range(_count4):
        _element = _part4[_index]
        writer.f64(_element)
    _part5 = value.linear_acceleration
    _write_Ros2Geometry_msgsMsgVector3(writer, _part5)
    _part6 = value.linear_acceleration_covariance
    if type(_part6) not in (list, tuple):
        raise TypeError('array value required')
    _count6 = len(_part6)
    if _count6 != 9:
        raise ValueError('fixed/sequence count bound')
    for _index in range(_count6):
        _element = _part6[_index]
        writer.f64(_element)
    if not 308 <= len(writer.data) - _start <= 436:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Sensor_msgsMsgImu(reader):
    _start = reader.position
    value = Ros2Sensor_msgsMsgImu()
    value.header = _read_Ros2Std_msgsMsgHeader(reader)
    value.orientation = _read_Ros2Geometry_msgsMsgQuaternion(reader)
    value.orientation_covariance = [reader.f64() for _ in range(9)]
    value.angular_velocity = _read_Ros2Geometry_msgsMsgVector3(reader)
    value.angular_velocity_covariance = [reader.f64() for _ in range(9)]
    value.linear_acceleration = _read_Ros2Geometry_msgsMsgVector3(reader)
    value.linear_acceleration_covariance = [reader.f64() for _ in range(9)]
    if not 308 <= reader.position - _start <= 436:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Sensor_msgsMsgJointState:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'sensor_msgs/msg/JointState'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_5c4d1ef0128c748e20f6b30c9c3bb5ef6e3c529a0b05b81764ac4774ce765bcf'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 28
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 468
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 468
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros2Std_msgsMsgHeader = _field(default_factory=lambda: Ros2Std_msgsMsgHeader())
    name: _py_list[_py_str] = _field(default_factory=lambda: [])
    position: _py_list[_py_float] = _field(default_factory=lambda: [])
    velocity: _py_list[_py_float] = _field(default_factory=lambda: [])
    effort: _py_list[_py_float] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(468)
        _write_Ros2Sensor_msgsMsgJointState(writer, self)
        wire = writer.finish()
        return _wire(wire, 28, 468)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Sensor_msgsMsgJointState:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 28, 468))
        value = _read_Ros2Sensor_msgsMsgJointState(reader)
        reader.end()
        return value

_record_Ros2Sensor_msgsMsgJointState = Ros2Sensor_msgsMsgJointState

def _write_Ros2Sensor_msgsMsgJointState(writer, value):
    if type(value) is not Ros2Sensor_msgsMsgJointState:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros2Std_msgsMsgHeader(writer, _part0)
    _part1 = value.name
    if type(_part1) not in (list, tuple):
        raise TypeError('array value required')
    _count1 = len(_part1)
    if _count1 > 2:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        _write_text(writer, _element, 128)
    _part2 = value.position
    if type(_part2) not in (list, tuple):
        raise TypeError('array value required')
    _count2 = len(_part2)
    if _count2 > 2:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        writer.f64(_element)
    _part3 = value.velocity
    if type(_part3) not in (list, tuple):
        raise TypeError('array value required')
    _count3 = len(_part3)
    if _count3 > 2:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count3, 4)
    for _index in range(_count3):
        _element = _part3[_index]
        writer.f64(_element)
    _part4 = value.effort
    if type(_part4) not in (list, tuple):
        raise TypeError('array value required')
    _count4 = len(_part4)
    if _count4 > 2:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count4, 4)
    for _index in range(_count4):
        _element = _part4[_index]
        writer.f64(_element)
    _sizes = [_count1, _count2, _count3, _count4]
    if len({n for n in _sizes if n}) > 1:
        raise ValueError('nonempty JointState arrays must have equal length')
    if not 28 <= len(writer.data) - _start <= 468:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Sensor_msgsMsgJointState(reader):
    _start = reader.position
    value = Ros2Sensor_msgsMsgJointState()
    value.header = _read_Ros2Std_msgsMsgHeader(reader)
    value.name = [_read_text(reader, 128) for _ in range(_read_count(reader, 2, 4))]
    value.position = [reader.f64() for _ in range(_read_count(reader, 2, 8))]
    value.velocity = [reader.f64() for _ in range(_read_count(reader, 2, 8))]
    value.effort = [reader.f64() for _ in range(_read_count(reader, 2, 8))]
    _sizes = [len(value.name), len(value.position), len(value.velocity), len(value.effort)]
    if len({n for n in _sizes if n}) > 1:
        raise ValueError('nonempty JointState arrays must have equal length')
    if not 28 <= reader.position - _start <= 468:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Sensor_msgsMsgLaserScan:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'sensor_msgs/msg/LaserScan'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_89faa8e14fc7f79a62a576d35c0bb377caf0cbaef6a6f181a5af2da0ead6cce4'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 48
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 8368
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 8368
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros2Std_msgsMsgHeader = _field(default_factory=lambda: Ros2Std_msgsMsgHeader())
    angle_min: _py_float = 0.0
    angle_max: _py_float = 0.0
    angle_increment: _py_float = 0.0
    time_increment: _py_float = 0.0
    scan_time: _py_float = 0.0
    range_min: _py_float = 0.0
    range_max: _py_float = 0.0
    ranges: _py_list[_py_float] = _field(default_factory=lambda: [])
    intensities: _py_list[_py_float] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(8368)
        _write_Ros2Sensor_msgsMsgLaserScan(writer, self)
        wire = writer.finish()
        return _wire(wire, 48, 8368)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Sensor_msgsMsgLaserScan:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 48, 8368))
        value = _read_Ros2Sensor_msgsMsgLaserScan(reader)
        reader.end()
        return value

_record_Ros2Sensor_msgsMsgLaserScan = Ros2Sensor_msgsMsgLaserScan

def _write_Ros2Sensor_msgsMsgLaserScan(writer, value):
    if type(value) is not Ros2Sensor_msgsMsgLaserScan:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros2Std_msgsMsgHeader(writer, _part0)
    _part1 = value.angle_min
    writer.f32(_part1)
    _part2 = value.angle_max
    writer.f32(_part2)
    _part3 = value.angle_increment
    writer.f32(_part3)
    _part4 = value.time_increment
    writer.f32(_part4)
    _part5 = value.scan_time
    writer.f32(_part5)
    _part6 = value.range_min
    writer.f32(_part6)
    _part7 = value.range_max
    writer.f32(_part7)
    _part8 = value.ranges
    if type(_part8) not in (list, tuple):
        raise TypeError('array value required')
    _count8 = len(_part8)
    if _count8 > 1024:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count8, 4)
    for _index in range(_count8):
        _element = _part8[_index]
        writer.f32(_element)
    _part9 = value.intensities
    if type(_part9) not in (list, tuple):
        raise TypeError('array value required')
    _count9 = len(_part9)
    if _count9 > 1024:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count9, 4)
    for _index in range(_count9):
        _element = _part9[_index]
        writer.f32(_element)
    if not 48 <= len(writer.data) - _start <= 8368:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Sensor_msgsMsgLaserScan(reader):
    _start = reader.position
    value = Ros2Sensor_msgsMsgLaserScan()
    value.header = _read_Ros2Std_msgsMsgHeader(reader)
    value.angle_min = reader.f32()
    value.angle_max = reader.f32()
    value.angle_increment = reader.f32()
    value.time_increment = reader.f32()
    value.scan_time = reader.f32()
    value.range_min = reader.f32()
    value.range_max = reader.f32()
    value.ranges = [reader.f32() for _ in range(_read_count(reader, 1024, 4))]
    value.intensities = [reader.f32() for _ in range(_read_count(reader, 1024, 4))]
    if not 48 <= reader.position - _start <= 8368:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Sensor_msgsMsgMagneticField:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'sensor_msgs/msg/MagneticField'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_56ae1437e0fbe7a6722ecf4795483d15f4c616e2e891372c30fa78f18be2cf8b'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 108
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 236
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 236
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros2Std_msgsMsgHeader = _field(default_factory=lambda: Ros2Std_msgsMsgHeader())
    magnetic_field: _record_Ros2Geometry_msgsMsgVector3 = _field(default_factory=lambda: Ros2Geometry_msgsMsgVector3())
    magnetic_field_covariance: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(9)])

    def encode(self):
        writer = _Writer(236)
        _write_Ros2Sensor_msgsMsgMagneticField(writer, self)
        wire = writer.finish()
        return _wire(wire, 108, 236)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Sensor_msgsMsgMagneticField:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 108, 236))
        value = _read_Ros2Sensor_msgsMsgMagneticField(reader)
        reader.end()
        return value

_record_Ros2Sensor_msgsMsgMagneticField = Ros2Sensor_msgsMsgMagneticField

def _write_Ros2Sensor_msgsMsgMagneticField(writer, value):
    if type(value) is not Ros2Sensor_msgsMsgMagneticField:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros2Std_msgsMsgHeader(writer, _part0)
    _part1 = value.magnetic_field
    _write_Ros2Geometry_msgsMsgVector3(writer, _part1)
    _part2 = value.magnetic_field_covariance
    if type(_part2) not in (list, tuple):
        raise TypeError('array value required')
    _count2 = len(_part2)
    if _count2 != 9:
        raise ValueError('fixed/sequence count bound')
    for _index in range(_count2):
        _element = _part2[_index]
        writer.f64(_element)
    if not 108 <= len(writer.data) - _start <= 236:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Sensor_msgsMsgMagneticField(reader):
    _start = reader.position
    value = Ros2Sensor_msgsMsgMagneticField()
    value.header = _read_Ros2Std_msgsMsgHeader(reader)
    value.magnetic_field = _read_Ros2Geometry_msgsMsgVector3(reader)
    value.magnetic_field_covariance = [reader.f64() for _ in range(9)]
    if not 108 <= reader.position - _start <= 236:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Std_srvsSrvSetBool_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'std_srvs/srv/SetBool_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_2523e7915bb78fe01b68f2a856611b32a88f624a6e197a6ff312b613e8c65910'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    data: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Std_srvsSrvSetBool_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Std_srvsSrvSetBool_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Std_srvsSrvSetBool_Request(reader)
        reader.end()
        return value

_record_Ros2Std_srvsSrvSetBool_Request = Ros2Std_srvsSrvSetBool_Request

def _write_Ros2Std_srvsSrvSetBool_Request(writer, value):
    if type(value) is not Ros2Std_srvsSrvSetBool_Request:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.data
    if type(_part0) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Std_srvsSrvSetBool_Request(reader):
    _start = reader.position
    value = Ros2Std_srvsSrvSetBool_Request()
    value.data = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Std_srvsSrvSetBool_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'std_srvs/srv/SetBool_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_f2d46a8440538094221a151716d8ec44db02455f59845c50aaf4e7964c27ebe4'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 5
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 261
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 261
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False
    message: _py_str = ''

    def encode(self):
        writer = _Writer(261)
        _write_Ros2Std_srvsSrvSetBool_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 5, 261)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Std_srvsSrvSetBool_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 5, 261))
        value = _read_Ros2Std_srvsSrvSetBool_Response(reader)
        reader.end()
        return value

_record_Ros2Std_srvsSrvSetBool_Response = Ros2Std_srvsSrvSetBool_Response

def _write_Ros2Std_srvsSrvSetBool_Response(writer, value):
    if type(value) is not Ros2Std_srvsSrvSetBool_Response:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part0), 1)
    _part1 = value.message
    _write_text(writer, _part1, 256)
    if not 5 <= len(writer.data) - _start <= 261:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Std_srvsSrvSetBool_Response(reader):
    _start = reader.position
    value = Ros2Std_srvsSrvSetBool_Response()
    value.success = _read_bool(reader)
    value.message = _read_text(reader, 256)
    if not 5 <= reader.position - _start <= 261:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Std_srvsSrvTrigger_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'std_srvs/srv/Trigger_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_f1d8ad4ab7cf476cada6301f71ae24e046c244ba62bb6735183efe8e8c530a77'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros2Std_srvsSrvTrigger_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Std_srvsSrvTrigger_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros2Std_srvsSrvTrigger_Request(reader)
        reader.end()
        return value

_record_Ros2Std_srvsSrvTrigger_Request = Ros2Std_srvsSrvTrigger_Request

def _write_Ros2Std_srvsSrvTrigger_Request(writer, value):
    if type(value) is not Ros2Std_srvsSrvTrigger_Request:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros2Std_srvsSrvTrigger_Request(reader):
    _start = reader.position
    value = Ros2Std_srvsSrvTrigger_Request()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Std_srvsSrvTrigger_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'std_srvs/srv/Trigger_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_58806c592727ad1011b32edb6bca3ca32d8e5dbe7f2fa20c86220daf64a10392'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 5
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 261
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 261
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False
    message: _py_str = ''

    def encode(self):
        writer = _Writer(261)
        _write_Ros2Std_srvsSrvTrigger_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 5, 261)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Std_srvsSrvTrigger_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 5, 261))
        value = _read_Ros2Std_srvsSrvTrigger_Response(reader)
        reader.end()
        return value

_record_Ros2Std_srvsSrvTrigger_Response = Ros2Std_srvsSrvTrigger_Response

def _write_Ros2Std_srvsSrvTrigger_Response(writer, value):
    if type(value) is not Ros2Std_srvsSrvTrigger_Response:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part0), 1)
    _part1 = value.message
    _write_text(writer, _part1, 256)
    if not 5 <= len(writer.data) - _start <= 261:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Std_srvsSrvTrigger_Response(reader):
    _start = reader.position
    value = Ros2Std_srvsSrvTrigger_Response()
    value.success = _read_bool(reader)
    value.message = _read_text(reader, 256)
    if not 5 <= reader.position - _start <= 261:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Turtlebot3_msgsActionPatrol_Goal:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'turtlebot3_msgs/action/Patrol_Goal'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_929abdbc422698464043e7e8d12c2a5edd418dcd52bbde4a542b33e6862ba96f'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 24
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 24
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 24
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    goal: _record_Ros2Geometry_msgsMsgVector3 = _field(default_factory=lambda: Ros2Geometry_msgsMsgVector3())

    def encode(self):
        writer = _Writer(24)
        _write_Ros2Turtlebot3_msgsActionPatrol_Goal(writer, self)
        wire = writer.finish()
        return _wire(wire, 24, 24)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Turtlebot3_msgsActionPatrol_Goal:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 24, 24))
        value = _read_Ros2Turtlebot3_msgsActionPatrol_Goal(reader)
        reader.end()
        return value

_record_Ros2Turtlebot3_msgsActionPatrol_Goal = Ros2Turtlebot3_msgsActionPatrol_Goal

def _write_Ros2Turtlebot3_msgsActionPatrol_Goal(writer, value):
    if type(value) is not Ros2Turtlebot3_msgsActionPatrol_Goal:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.goal
    _write_Ros2Geometry_msgsMsgVector3(writer, _part0)
    if not 24 <= len(writer.data) - _start <= 24:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Turtlebot3_msgsActionPatrol_Goal(reader):
    _start = reader.position
    value = Ros2Turtlebot3_msgsActionPatrol_Goal()
    value.goal = _read_Ros2Geometry_msgsMsgVector3(reader)
    if not 24 <= reader.position - _start <= 24:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Turtlebot3_msgsActionPatrol_Result:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'turtlebot3_msgs/action/Patrol_Result'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_1d1fa277be54e1df3bd314a632ff80d79f22a306fc232219a7c23cce7a7703a3'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    result: _py_str = ''

    def encode(self):
        writer = _Writer(260)
        _write_Ros2Turtlebot3_msgsActionPatrol_Result(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 260)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Turtlebot3_msgsActionPatrol_Result:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 4, 260))
        value = _read_Ros2Turtlebot3_msgsActionPatrol_Result(reader)
        reader.end()
        return value

_record_Ros2Turtlebot3_msgsActionPatrol_Result = Ros2Turtlebot3_msgsActionPatrol_Result

def _write_Ros2Turtlebot3_msgsActionPatrol_Result(writer, value):
    if type(value) is not Ros2Turtlebot3_msgsActionPatrol_Result:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.result
    _write_text(writer, _part0, 256)
    if not 4 <= len(writer.data) - _start <= 260:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Turtlebot3_msgsActionPatrol_Result(reader):
    _start = reader.position
    value = Ros2Turtlebot3_msgsActionPatrol_Result()
    value.result = _read_text(reader, 256)
    if not 4 <= reader.position - _start <= 260:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Turtlebot3_msgsActionPatrol_Feedback:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'turtlebot3_msgs/action/Patrol_Feedback'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_7c2f3824653a3048e1b93fa95584543a01efae8bb67253d3371a2988407a601e'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    state: _py_str = ''

    def encode(self):
        writer = _Writer(260)
        _write_Ros2Turtlebot3_msgsActionPatrol_Feedback(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 260)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Turtlebot3_msgsActionPatrol_Feedback:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 4, 260))
        value = _read_Ros2Turtlebot3_msgsActionPatrol_Feedback(reader)
        reader.end()
        return value

_record_Ros2Turtlebot3_msgsActionPatrol_Feedback = Ros2Turtlebot3_msgsActionPatrol_Feedback

def _write_Ros2Turtlebot3_msgsActionPatrol_Feedback(writer, value):
    if type(value) is not Ros2Turtlebot3_msgsActionPatrol_Feedback:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.state
    _write_text(writer, _part0, 256)
    if not 4 <= len(writer.data) - _start <= 260:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Turtlebot3_msgsActionPatrol_Feedback(reader):
    _start = reader.position
    value = Ros2Turtlebot3_msgsActionPatrol_Feedback()
    value.state = _read_text(reader, 256)
    if not 4 <= reader.position - _start <= 260:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Turtlebot3_msgsMsgSensorState:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'turtlebot3_msgs/msg/SensorState'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_7974ef7ca70ababf0e3f7a5e4099335a1398933833260798482f155291a62358'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 40
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 168
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 168
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = [{'name': 'BUMPER_FORWARD', 'type': 'uint8', 'native_type': 'uint8', 'literal': '1', 'value': '1'},
     {'name': 'BUMPER_BACKWARD', 'type': 'uint8', 'native_type': 'uint8', 'literal': '2', 'value': '2'},
     {'name': 'CLIFF', 'type': 'uint8', 'native_type': 'uint8', 'literal': '1', 'value': '1'},
     {'name': 'SONAR', 'type': 'uint8', 'native_type': 'uint8', 'literal': '1', 'value': '1'},
     {'name': 'ILLUMINATION', 'type': 'uint8', 'native_type': 'uint8', 'literal': '1', 'value': '1'},
     {'name': 'BUTTON0', 'type': 'uint8', 'native_type': 'uint8', 'literal': '1', 'value': '1'},
     {'name': 'BUTTON1', 'type': 'uint8', 'native_type': 'uint8', 'literal': '2', 'value': '2'},
     {'name': 'ERROR_LEFT_MOTOR',
      'type': 'uint8',
      'native_type': 'uint8',
      'literal': '1',
      'value': '1'},
     {'name': 'ERROR_RIGHT_MOTOR',
      'type': 'uint8',
      'native_type': 'uint8',
      'literal': '2',
      'value': '2'},
     {'name': 'TORQUE_ON', 'type': 'uint8', 'native_type': 'uint8', 'literal': '1', 'value': '1'},
     {'name': 'TORQUE_OFF', 'type': 'uint8', 'native_type': 'uint8', 'literal': '2', 'value': '2'}]
    BUMPER_FORWARD: _ClassVar = 1
    BUMPER_BACKWARD: _ClassVar = 2
    CLIFF: _ClassVar = 1
    SONAR: _ClassVar = 1
    ILLUMINATION: _ClassVar = 1
    BUTTON0: _ClassVar = 1
    BUTTON1: _ClassVar = 2
    ERROR_LEFT_MOTOR: _ClassVar = 1
    ERROR_RIGHT_MOTOR: _ClassVar = 2
    TORQUE_ON: _ClassVar = 1
    TORQUE_OFF: _ClassVar = 2
    header: _record_Ros2Std_msgsMsgHeader = _field(default_factory=lambda: Ros2Std_msgsMsgHeader())
    bumper: _py_int = 0
    cliff: _py_float = 0.0
    sonar: _py_float = 0.0
    illumination: _py_float = 0.0
    led: _py_int = 0
    button: _py_int = 0
    torque: _py_bool = False
    left_encoder: _py_int = 0
    right_encoder: _py_int = 0
    battery: _py_float = 0.0

    def encode(self):
        writer = _Writer(168)
        _write_Ros2Turtlebot3_msgsMsgSensorState(writer, self)
        wire = writer.finish()
        return _wire(wire, 40, 168)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Turtlebot3_msgsMsgSensorState:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 40, 168))
        value = _read_Ros2Turtlebot3_msgsMsgSensorState(reader)
        reader.end()
        return value

_record_Ros2Turtlebot3_msgsMsgSensorState = Ros2Turtlebot3_msgsMsgSensorState

def _write_Ros2Turtlebot3_msgsMsgSensorState(writer, value):
    if type(value) is not Ros2Turtlebot3_msgsMsgSensorState:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros2Std_msgsMsgHeader(writer, _part0)
    _part1 = value.bumper
    writer.integer(_part1, 1, False)
    _part2 = value.cliff
    writer.f32(_part2)
    _part3 = value.sonar
    writer.f32(_part3)
    _part4 = value.illumination
    writer.f32(_part4)
    _part5 = value.led
    writer.integer(_part5, 1, False)
    _part6 = value.button
    writer.integer(_part6, 1, False)
    _part7 = value.torque
    if type(_part7) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part7), 1)
    _part8 = value.left_encoder
    writer.integer(_part8, 4, True)
    _part9 = value.right_encoder
    writer.integer(_part9, 4, True)
    _part10 = value.battery
    writer.f32(_part10)
    if not 40 <= len(writer.data) - _start <= 168:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Turtlebot3_msgsMsgSensorState(reader):
    _start = reader.position
    value = Ros2Turtlebot3_msgsMsgSensorState()
    value.header = _read_Ros2Std_msgsMsgHeader(reader)
    value.bumper = reader.integer(1, False)
    value.cliff = reader.f32()
    value.sonar = reader.f32()
    value.illumination = reader.f32()
    value.led = reader.integer(1, False)
    value.button = reader.integer(1, False)
    value.torque = _read_bool(reader)
    value.left_encoder = reader.integer(4, True)
    value.right_encoder = reader.integer(4, True)
    value.battery = reader.f32()
    if not 40 <= reader.position - _start <= 168:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Turtlebot3_msgsMsgSound:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'turtlebot3_msgs/msg/Sound'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_e8bd9a5fdf84ad1df0f264bd13a0e8966918de19ab62e91c7524dd8fc17a4e4b'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = [{'name': 'OFF', 'type': 'uint8', 'native_type': 'uint8', 'literal': '0', 'value': '0'},
     {'name': 'ON', 'type': 'uint8', 'native_type': 'uint8', 'literal': '1', 'value': '1'},
     {'name': 'LOW_BATTERY', 'type': 'uint8', 'native_type': 'uint8', 'literal': '2', 'value': '2'},
     {'name': 'ERROR', 'type': 'uint8', 'native_type': 'uint8', 'literal': '3', 'value': '3'},
     {'name': 'BUTTON1', 'type': 'uint8', 'native_type': 'uint8', 'literal': '4', 'value': '4'},
     {'name': 'BUTTON2', 'type': 'uint8', 'native_type': 'uint8', 'literal': '5', 'value': '5'}]
    OFF: _ClassVar = 0
    ON: _ClassVar = 1
    LOW_BATTERY: _ClassVar = 2
    ERROR: _ClassVar = 3
    BUTTON1: _ClassVar = 4
    BUTTON2: _ClassVar = 5
    value: _py_int = 0

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Turtlebot3_msgsMsgSound(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Turtlebot3_msgsMsgSound:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Turtlebot3_msgsMsgSound(reader)
        reader.end()
        return value

_record_Ros2Turtlebot3_msgsMsgSound = Ros2Turtlebot3_msgsMsgSound

def _write_Ros2Turtlebot3_msgsMsgSound(writer, value):
    if type(value) is not Ros2Turtlebot3_msgsMsgSound:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.value
    writer.integer(_part0, 1, False)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Turtlebot3_msgsMsgSound(reader):
    _start = reader.position
    value = Ros2Turtlebot3_msgsMsgSound()
    value.value = reader.integer(1, False)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Turtlebot3_msgsMsgVersionInfo:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'turtlebot3_msgs/msg/VersionInfo'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_7668c77b01a05eeb8ba3c5f259f3f3a9dfad3d4fdf8aa566d65f6e8f1c0f2d6a'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 780
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 780
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    hardware: _py_str = ''
    firmware: _py_str = ''
    software: _py_str = ''

    def encode(self):
        writer = _Writer(780)
        _write_Ros2Turtlebot3_msgsMsgVersionInfo(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 780)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Turtlebot3_msgsMsgVersionInfo:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 12, 780))
        value = _read_Ros2Turtlebot3_msgsMsgVersionInfo(reader)
        reader.end()
        return value

_record_Ros2Turtlebot3_msgsMsgVersionInfo = Ros2Turtlebot3_msgsMsgVersionInfo

def _write_Ros2Turtlebot3_msgsMsgVersionInfo(writer, value):
    if type(value) is not Ros2Turtlebot3_msgsMsgVersionInfo:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.hardware
    _write_text(writer, _part0, 256)
    _part1 = value.firmware
    _write_text(writer, _part1, 256)
    _part2 = value.software
    _write_text(writer, _part2, 256)
    if not 12 <= len(writer.data) - _start <= 780:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Turtlebot3_msgsMsgVersionInfo(reader):
    _start = reader.position
    value = Ros2Turtlebot3_msgsMsgVersionInfo()
    value.hardware = _read_text(reader, 256)
    value.firmware = _read_text(reader, 256)
    value.software = _read_text(reader, 256)
    if not 12 <= reader.position - _start <= 780:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Turtlebot3_msgsSrvDqn_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'turtlebot3_msgs/srv/Dqn_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_14042e65db9f4feef7a43bfb44255795470bb0ed91a3cf301ebec98c2d4e2d0e'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 2
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 2
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 2
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    action: _py_int = 0
    init: _py_bool = False

    def encode(self):
        writer = _Writer(2)
        _write_Ros2Turtlebot3_msgsSrvDqn_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 2, 2)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Turtlebot3_msgsSrvDqn_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 2, 2))
        value = _read_Ros2Turtlebot3_msgsSrvDqn_Request(reader)
        reader.end()
        return value

_record_Ros2Turtlebot3_msgsSrvDqn_Request = Ros2Turtlebot3_msgsSrvDqn_Request

def _write_Ros2Turtlebot3_msgsSrvDqn_Request(writer, value):
    if type(value) is not Ros2Turtlebot3_msgsSrvDqn_Request:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.action
    writer.integer(_part0, 1, False)
    _part1 = value.init
    if type(_part1) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part1), 1)
    if not 2 <= len(writer.data) - _start <= 2:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Turtlebot3_msgsSrvDqn_Request(reader):
    _start = reader.position
    value = Ros2Turtlebot3_msgsSrvDqn_Request()
    value.action = reader.integer(1, False)
    value.init = _read_bool(reader)
    if not 2 <= reader.position - _start <= 2:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Turtlebot3_msgsSrvDqn_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'turtlebot3_msgs/srv/Dqn_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_5d256e9c87d7959917f07e7cfcc0049fc18f79f547d83b72bd388a63c1417c6e'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 9
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 521
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 521
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    state: _py_list[_py_float] = _field(default_factory=lambda: [])
    reward: _py_float = 0.0
    done: _py_bool = False

    def encode(self):
        writer = _Writer(521)
        _write_Ros2Turtlebot3_msgsSrvDqn_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 9, 521)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Turtlebot3_msgsSrvDqn_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 9, 521))
        value = _read_Ros2Turtlebot3_msgsSrvDqn_Response(reader)
        reader.end()
        return value

_record_Ros2Turtlebot3_msgsSrvDqn_Response = Ros2Turtlebot3_msgsSrvDqn_Response

def _write_Ros2Turtlebot3_msgsSrvDqn_Response(writer, value):
    if type(value) is not Ros2Turtlebot3_msgsSrvDqn_Response:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.state
    if type(_part0) not in (list, tuple):
        raise TypeError('array value required')
    _count0 = len(_part0)
    if _count0 > 128:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count0, 4)
    for _index in range(_count0):
        _element = _part0[_index]
        writer.f32(_element)
    _part1 = value.reward
    writer.f32(_part1)
    _part2 = value.done
    if type(_part2) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part2), 1)
    if not 9 <= len(writer.data) - _start <= 521:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Turtlebot3_msgsSrvDqn_Response(reader):
    _start = reader.position
    value = Ros2Turtlebot3_msgsSrvDqn_Response()
    value.state = [reader.f32() for _ in range(_read_count(reader, 128, 4))]
    value.reward = reader.f32()
    value.done = _read_bool(reader)
    if not 9 <= reader.position - _start <= 521:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Turtlebot3_msgsSrvGoal_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'turtlebot3_msgs/srv/Goal_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_f76094f3cf00772bb80b59e846f1160ae6255fc0d931bbcba362104081698ded'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros2Turtlebot3_msgsSrvGoal_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Turtlebot3_msgsSrvGoal_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros2Turtlebot3_msgsSrvGoal_Request(reader)
        reader.end()
        return value

_record_Ros2Turtlebot3_msgsSrvGoal_Request = Ros2Turtlebot3_msgsSrvGoal_Request

def _write_Ros2Turtlebot3_msgsSrvGoal_Request(writer, value):
    if type(value) is not Ros2Turtlebot3_msgsSrvGoal_Request:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros2Turtlebot3_msgsSrvGoal_Request(reader):
    _start = reader.position
    value = Ros2Turtlebot3_msgsSrvGoal_Request()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Turtlebot3_msgsSrvGoal_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'turtlebot3_msgs/srv/Goal_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_8b9022a7fb8c68a0b063b080cd05c230b653169badbe205bcd8051b8020f7990'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 9
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 9
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 9
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    pose_x: _py_float = 0.0
    pose_y: _py_float = 0.0
    success: _py_bool = False

    def encode(self):
        writer = _Writer(9)
        _write_Ros2Turtlebot3_msgsSrvGoal_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 9, 9)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Turtlebot3_msgsSrvGoal_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 9, 9))
        value = _read_Ros2Turtlebot3_msgsSrvGoal_Response(reader)
        reader.end()
        return value

_record_Ros2Turtlebot3_msgsSrvGoal_Response = Ros2Turtlebot3_msgsSrvGoal_Response

def _write_Ros2Turtlebot3_msgsSrvGoal_Response(writer, value):
    if type(value) is not Ros2Turtlebot3_msgsSrvGoal_Response:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.pose_x
    writer.f32(_part0)
    _part1 = value.pose_y
    writer.f32(_part1)
    _part2 = value.success
    if type(_part2) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part2), 1)
    if not 9 <= len(writer.data) - _start <= 9:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Turtlebot3_msgsSrvGoal_Response(reader):
    _start = reader.position
    value = Ros2Turtlebot3_msgsSrvGoal_Response()
    value.pose_x = reader.f32()
    value.pose_y = reader.f32()
    value.success = _read_bool(reader)
    if not 9 <= reader.position - _start <= 9:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Turtlebot3_msgsSrvSound_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'turtlebot3_msgs/srv/Sound_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_0dcba95f5ba646d9a24b0054ba603daf1d1e5e4e9a6ffe7387cd61bff2e4151a'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    value: _py_int = 0

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Turtlebot3_msgsSrvSound_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Turtlebot3_msgsSrvSound_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Turtlebot3_msgsSrvSound_Request(reader)
        reader.end()
        return value

_record_Ros2Turtlebot3_msgsSrvSound_Request = Ros2Turtlebot3_msgsSrvSound_Request

def _write_Ros2Turtlebot3_msgsSrvSound_Request(writer, value):
    if type(value) is not Ros2Turtlebot3_msgsSrvSound_Request:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.value
    writer.integer(_part0, 1, False)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Turtlebot3_msgsSrvSound_Request(reader):
    _start = reader.position
    value = Ros2Turtlebot3_msgsSrvSound_Request()
    value.value = reader.integer(1, False)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Turtlebot3_msgsSrvSound_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'turtlebot3_msgs/srv/Sound_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_bc5a5fd3e2bf733a278b8a1315c8905b27fff49b4844df238d5574149068998e'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 5
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 261
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 261
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False
    message: _py_str = ''

    def encode(self):
        writer = _Writer(261)
        _write_Ros2Turtlebot3_msgsSrvSound_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 5, 261)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Turtlebot3_msgsSrvSound_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 5, 261))
        value = _read_Ros2Turtlebot3_msgsSrvSound_Response(reader)
        reader.end()
        return value

_record_Ros2Turtlebot3_msgsSrvSound_Response = Ros2Turtlebot3_msgsSrvSound_Response

def _write_Ros2Turtlebot3_msgsSrvSound_Response(writer, value):
    if type(value) is not Ros2Turtlebot3_msgsSrvSound_Response:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part0), 1)
    _part1 = value.message
    _write_text(writer, _part1, 256)
    if not 5 <= len(writer.data) - _start <= 261:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Turtlebot3_msgsSrvSound_Response(reader):
    _start = reader.position
    value = Ros2Turtlebot3_msgsSrvSound_Response()
    value.success = _read_bool(reader)
    value.message = _read_text(reader, 256)
    if not 5 <= reader.position - _start <= 261:
        raise ValueError('nested complete record aggregate extent')
    return value

