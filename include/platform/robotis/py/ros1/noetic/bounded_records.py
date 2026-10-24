# @file bounded_records.py
# @brief Provide the complete robotis noetic canonical value surface.
# @details The original 28 record catalog retains field order, constants, defaults and quotas.
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
class Ros1Geometry_msgsTransformStamped:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'geometry_msgs/TransformStamped'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_9237b5dc5d3beacf4310244ce746a4210b9864855b611d1bf54cf23c28d7b79a'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 76
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 460
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 460
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros1Std_msgsHeader = _field(default_factory=lambda: Ros1Std_msgsHeader())
    child_frame_id: _py_str = ''
    transform: _record_Ros1Geometry_msgsTransform = _field(default_factory=lambda: Ros1Geometry_msgsTransform())

    def encode(self):
        writer = _Writer(460)
        _write_Ros1Geometry_msgsTransformStamped(writer, self)
        wire = writer.finish()
        return _wire(wire, 76, 460)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Geometry_msgsTransformStamped:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 76, 460))
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
    _write_text(writer, _part1, 256)
    _part2 = value.transform
    _write_Ros1Geometry_msgsTransform(writer, _part2)
    if not 76 <= len(writer.data) - _start <= 460:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Geometry_msgsTransformStamped(reader):
    _start = reader.position
    value = Ros1Geometry_msgsTransformStamped()
    value.header = _read_Ros1Std_msgsHeader(reader)
    value.child_frame_id = _read_text(reader, 256)
    value.transform = _read_Ros1Geometry_msgsTransform(reader)
    if not 76 <= reader.position - _start <= 460:
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
class Ros1Geometry_msgsTwistStamped:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'geometry_msgs/TwistStamped'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_27a31bcca6a50fbc6c6259b53d229872336a75628d6afd9de174eee2481946c7'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 64
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 192
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 192
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros1Std_msgsHeader = _field(default_factory=lambda: Ros1Std_msgsHeader())
    twist: _record_Ros1Geometry_msgsTwist = _field(default_factory=lambda: Ros1Geometry_msgsTwist())

    def encode(self):
        writer = _Writer(192)
        _write_Ros1Geometry_msgsTwistStamped(writer, self)
        wire = writer.finish()
        return _wire(wire, 64, 192)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Geometry_msgsTwistStamped:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 64, 192))
        value = _read_Ros1Geometry_msgsTwistStamped(reader)
        reader.end()
        return value

_record_Ros1Geometry_msgsTwistStamped = Ros1Geometry_msgsTwistStamped

def _write_Ros1Geometry_msgsTwistStamped(writer, value):
    if type(value) is not Ros1Geometry_msgsTwistStamped:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros1Std_msgsHeader(writer, _part0)
    _part1 = value.twist
    _write_Ros1Geometry_msgsTwist(writer, _part1)
    if not 64 <= len(writer.data) - _start <= 192:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Geometry_msgsTwistStamped(reader):
    _start = reader.position
    value = Ros1Geometry_msgsTwistStamped()
    value.header = _read_Ros1Std_msgsHeader(reader)
    value.twist = _read_Ros1Geometry_msgsTwist(reader)
    if not 64 <= reader.position - _start <= 192:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Geometry_msgsTwistWithCovariance:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'geometry_msgs/TwistWithCovariance'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_ff6790d181503b424d84726c8f4a7852cef14c6dd93e6d32cf3c37023f74bcdf'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 336
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 336
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 336
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    twist: _record_Ros1Geometry_msgsTwist = _field(default_factory=lambda: Ros1Geometry_msgsTwist())
    covariance: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(36)])

    def encode(self):
        writer = _Writer(336)
        _write_Ros1Geometry_msgsTwistWithCovariance(writer, self)
        wire = writer.finish()
        return _wire(wire, 336, 336)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Geometry_msgsTwistWithCovariance:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 336, 336))
        value = _read_Ros1Geometry_msgsTwistWithCovariance(reader)
        reader.end()
        return value

_record_Ros1Geometry_msgsTwistWithCovariance = Ros1Geometry_msgsTwistWithCovariance

def _write_Ros1Geometry_msgsTwistWithCovariance(writer, value):
    if type(value) is not Ros1Geometry_msgsTwistWithCovariance:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.twist
    _write_Ros1Geometry_msgsTwist(writer, _part0)
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

def _read_Ros1Geometry_msgsTwistWithCovariance(reader):
    _start = reader.position
    value = Ros1Geometry_msgsTwistWithCovariance()
    value.twist = _read_Ros1Geometry_msgsTwist(reader)
    value.covariance = [reader.f64() for _ in range(36)]
    if not 336 <= reader.position - _start <= 336:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Nav_msgsOdometry:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'nav_msgs/Odometry'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_e0ff5eb7aef868891846ac7618249b12c18fcf0969653f24fdeaa7644e636ca0'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 700
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1084
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1084
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros1Std_msgsHeader = _field(default_factory=lambda: Ros1Std_msgsHeader())
    child_frame_id: _py_str = ''
    pose: _record_Ros1Geometry_msgsPoseWithCovariance = _field(default_factory=lambda: Ros1Geometry_msgsPoseWithCovariance())
    twist: _record_Ros1Geometry_msgsTwistWithCovariance = _field(default_factory=lambda: Ros1Geometry_msgsTwistWithCovariance())

    def encode(self):
        writer = _Writer(1084)
        _write_Ros1Nav_msgsOdometry(writer, self)
        wire = writer.finish()
        return _wire(wire, 700, 1084)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Nav_msgsOdometry:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 700, 1084))
        value = _read_Ros1Nav_msgsOdometry(reader)
        reader.end()
        return value

_record_Ros1Nav_msgsOdometry = Ros1Nav_msgsOdometry

def _write_Ros1Nav_msgsOdometry(writer, value):
    if type(value) is not Ros1Nav_msgsOdometry:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros1Std_msgsHeader(writer, _part0)
    _part1 = value.child_frame_id
    _write_text(writer, _part1, 256)
    _part2 = value.pose
    _write_Ros1Geometry_msgsPoseWithCovariance(writer, _part2)
    _part3 = value.twist
    _write_Ros1Geometry_msgsTwistWithCovariance(writer, _part3)
    if not 700 <= len(writer.data) - _start <= 1084:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Nav_msgsOdometry(reader):
    _start = reader.position
    value = Ros1Nav_msgsOdometry()
    value.header = _read_Ros1Std_msgsHeader(reader)
    value.child_frame_id = _read_text(reader, 256)
    value.pose = _read_Ros1Geometry_msgsPoseWithCovariance(reader)
    value.twist = _read_Ros1Geometry_msgsTwistWithCovariance(reader)
    if not 700 <= reader.position - _start <= 1084:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Sensor_msgsBatteryState:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'sensor_msgs/BatteryState'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_4b176902362348cd3b7eec6ae21e2035d33df6990b4682ddf5123ef6e0339441'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 64
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 832
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 832
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
      'value': '6'}]
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
    header: _record_Ros1Std_msgsHeader = _field(default_factory=lambda: Ros1Std_msgsHeader())
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
        writer = _Writer(832)
        _write_Ros1Sensor_msgsBatteryState(writer, self)
        wire = writer.finish()
        return _wire(wire, 64, 832)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Sensor_msgsBatteryState:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 64, 832))
        value = _read_Ros1Sensor_msgsBatteryState(reader)
        reader.end()
        return value

_record_Ros1Sensor_msgsBatteryState = Ros1Sensor_msgsBatteryState

def _write_Ros1Sensor_msgsBatteryState(writer, value):
    if type(value) is not Ros1Sensor_msgsBatteryState:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros1Std_msgsHeader(writer, _part0)
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
    if not 64 <= len(writer.data) - _start <= 832:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Sensor_msgsBatteryState(reader):
    _start = reader.position
    value = Ros1Sensor_msgsBatteryState()
    value.header = _read_Ros1Std_msgsHeader(reader)
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
    if not 64 <= reader.position - _start <= 832:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Sensor_msgsImu:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'sensor_msgs/Imu'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_de9c3f5bb37e1dc20be73cb44f614a9ff8645c4cfbc305dc18425d8d9f130bc3'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 312
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 440
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 440
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros1Std_msgsHeader = _field(default_factory=lambda: Ros1Std_msgsHeader())
    orientation: _record_Ros1Geometry_msgsQuaternion = _field(default_factory=lambda: Ros1Geometry_msgsQuaternion())
    orientation_covariance: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(9)])
    angular_velocity: _record_Ros1Geometry_msgsVector3 = _field(default_factory=lambda: Ros1Geometry_msgsVector3())
    angular_velocity_covariance: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(9)])
    linear_acceleration: _record_Ros1Geometry_msgsVector3 = _field(default_factory=lambda: Ros1Geometry_msgsVector3())
    linear_acceleration_covariance: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(9)])

    def encode(self):
        writer = _Writer(440)
        _write_Ros1Sensor_msgsImu(writer, self)
        wire = writer.finish()
        return _wire(wire, 312, 440)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Sensor_msgsImu:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 312, 440))
        value = _read_Ros1Sensor_msgsImu(reader)
        reader.end()
        return value

_record_Ros1Sensor_msgsImu = Ros1Sensor_msgsImu

def _write_Ros1Sensor_msgsImu(writer, value):
    if type(value) is not Ros1Sensor_msgsImu:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros1Std_msgsHeader(writer, _part0)
    _part1 = value.orientation
    _write_Ros1Geometry_msgsQuaternion(writer, _part1)
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
    _write_Ros1Geometry_msgsVector3(writer, _part3)
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
    _write_Ros1Geometry_msgsVector3(writer, _part5)
    _part6 = value.linear_acceleration_covariance
    if type(_part6) not in (list, tuple):
        raise TypeError('array value required')
    _count6 = len(_part6)
    if _count6 != 9:
        raise ValueError('fixed/sequence count bound')
    for _index in range(_count6):
        _element = _part6[_index]
        writer.f64(_element)
    if not 312 <= len(writer.data) - _start <= 440:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Sensor_msgsImu(reader):
    _start = reader.position
    value = Ros1Sensor_msgsImu()
    value.header = _read_Ros1Std_msgsHeader(reader)
    value.orientation = _read_Ros1Geometry_msgsQuaternion(reader)
    value.orientation_covariance = [reader.f64() for _ in range(9)]
    value.angular_velocity = _read_Ros1Geometry_msgsVector3(reader)
    value.angular_velocity_covariance = [reader.f64() for _ in range(9)]
    value.linear_acceleration = _read_Ros1Geometry_msgsVector3(reader)
    value.linear_acceleration_covariance = [reader.f64() for _ in range(9)]
    if not 312 <= reader.position - _start <= 440:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Sensor_msgsJointState:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'sensor_msgs/JointState'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_f27093d33cca1405ec35a9e525a95aa4002421a579cb78c6da3be3719f3cb66e'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 32
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 472
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 472
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros1Std_msgsHeader = _field(default_factory=lambda: Ros1Std_msgsHeader())
    name: _py_list[_py_str] = _field(default_factory=lambda: [])
    position: _py_list[_py_float] = _field(default_factory=lambda: [])
    velocity: _py_list[_py_float] = _field(default_factory=lambda: [])
    effort: _py_list[_py_float] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(472)
        _write_Ros1Sensor_msgsJointState(writer, self)
        wire = writer.finish()
        return _wire(wire, 32, 472)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Sensor_msgsJointState:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 32, 472))
        value = _read_Ros1Sensor_msgsJointState(reader)
        reader.end()
        return value

_record_Ros1Sensor_msgsJointState = Ros1Sensor_msgsJointState

def _write_Ros1Sensor_msgsJointState(writer, value):
    if type(value) is not Ros1Sensor_msgsJointState:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros1Std_msgsHeader(writer, _part0)
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
    if not 32 <= len(writer.data) - _start <= 472:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Sensor_msgsJointState(reader):
    _start = reader.position
    value = Ros1Sensor_msgsJointState()
    value.header = _read_Ros1Std_msgsHeader(reader)
    value.name = [_read_text(reader, 128) for _ in range(_read_count(reader, 2, 4))]
    value.position = [reader.f64() for _ in range(_read_count(reader, 2, 8))]
    value.velocity = [reader.f64() for _ in range(_read_count(reader, 2, 8))]
    value.effort = [reader.f64() for _ in range(_read_count(reader, 2, 8))]
    _sizes = [len(value.name), len(value.position), len(value.velocity), len(value.effort)]
    if len({n for n in _sizes if n}) > 1:
        raise ValueError('nonempty JointState arrays must have equal length')
    if not 32 <= reader.position - _start <= 472:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Sensor_msgsLaserScan:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'sensor_msgs/LaserScan'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_f7aee00335bf7d165004957149192f58abe5a27b5c4884bdf8d1ae9be06b366b'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 52
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 8372
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 8372
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros1Std_msgsHeader = _field(default_factory=lambda: Ros1Std_msgsHeader())
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
        writer = _Writer(8372)
        _write_Ros1Sensor_msgsLaserScan(writer, self)
        wire = writer.finish()
        return _wire(wire, 52, 8372)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Sensor_msgsLaserScan:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 52, 8372))
        value = _read_Ros1Sensor_msgsLaserScan(reader)
        reader.end()
        return value

_record_Ros1Sensor_msgsLaserScan = Ros1Sensor_msgsLaserScan

def _write_Ros1Sensor_msgsLaserScan(writer, value):
    if type(value) is not Ros1Sensor_msgsLaserScan:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros1Std_msgsHeader(writer, _part0)
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
    if not 52 <= len(writer.data) - _start <= 8372:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Sensor_msgsLaserScan(reader):
    _start = reader.position
    value = Ros1Sensor_msgsLaserScan()
    value.header = _read_Ros1Std_msgsHeader(reader)
    value.angle_min = reader.f32()
    value.angle_max = reader.f32()
    value.angle_increment = reader.f32()
    value.time_increment = reader.f32()
    value.scan_time = reader.f32()
    value.range_min = reader.f32()
    value.range_max = reader.f32()
    value.ranges = [reader.f32() for _ in range(_read_count(reader, 1024, 4))]
    value.intensities = [reader.f32() for _ in range(_read_count(reader, 1024, 4))]
    if not 52 <= reader.position - _start <= 8372:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Sensor_msgsMagneticField:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'sensor_msgs/MagneticField'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_1817b7ce8903797288ccf293373f81890c75af59d03d948339943a531ab754fe'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 112
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 240
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 240
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros1Std_msgsHeader = _field(default_factory=lambda: Ros1Std_msgsHeader())
    magnetic_field: _record_Ros1Geometry_msgsVector3 = _field(default_factory=lambda: Ros1Geometry_msgsVector3())
    magnetic_field_covariance: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(9)])

    def encode(self):
        writer = _Writer(240)
        _write_Ros1Sensor_msgsMagneticField(writer, self)
        wire = writer.finish()
        return _wire(wire, 112, 240)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Sensor_msgsMagneticField:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 112, 240))
        value = _read_Ros1Sensor_msgsMagneticField(reader)
        reader.end()
        return value

_record_Ros1Sensor_msgsMagneticField = Ros1Sensor_msgsMagneticField

def _write_Ros1Sensor_msgsMagneticField(writer, value):
    if type(value) is not Ros1Sensor_msgsMagneticField:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros1Std_msgsHeader(writer, _part0)
    _part1 = value.magnetic_field
    _write_Ros1Geometry_msgsVector3(writer, _part1)
    _part2 = value.magnetic_field_covariance
    if type(_part2) not in (list, tuple):
        raise TypeError('array value required')
    _count2 = len(_part2)
    if _count2 != 9:
        raise ValueError('fixed/sequence count bound')
    for _index in range(_count2):
        _element = _part2[_index]
        writer.f64(_element)
    if not 112 <= len(writer.data) - _start <= 240:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Sensor_msgsMagneticField(reader):
    _start = reader.position
    value = Ros1Sensor_msgsMagneticField()
    value.header = _read_Ros1Std_msgsHeader(reader)
    value.magnetic_field = _read_Ros1Geometry_msgsVector3(reader)
    value.magnetic_field_covariance = [reader.f64() for _ in range(9)]
    if not 112 <= reader.position - _start <= 240:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Std_srvsSetBoolRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'std_srvs/SetBoolRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_1621dbb16e2455a199cc871a0e784642a73bc57e76a4d524778163fab97f6aac'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    data: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Std_srvsSetBoolRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Std_srvsSetBoolRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Std_srvsSetBoolRequest(reader)
        reader.end()
        return value

_record_Ros1Std_srvsSetBoolRequest = Ros1Std_srvsSetBoolRequest

def _write_Ros1Std_srvsSetBoolRequest(writer, value):
    if type(value) is not Ros1Std_srvsSetBoolRequest:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.data
    if type(_part0) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Std_srvsSetBoolRequest(reader):
    _start = reader.position
    value = Ros1Std_srvsSetBoolRequest()
    value.data = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Std_srvsSetBoolResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'std_srvs/SetBoolResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_1e12b91618f540070e34e170e12db7659f8686cdf5fb8e1bf098b8d483522cd6'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 5
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 261
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 261
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False
    message: _py_str = ''

    def encode(self):
        writer = _Writer(261)
        _write_Ros1Std_srvsSetBoolResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 5, 261)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Std_srvsSetBoolResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 5, 261))
        value = _read_Ros1Std_srvsSetBoolResponse(reader)
        reader.end()
        return value

_record_Ros1Std_srvsSetBoolResponse = Ros1Std_srvsSetBoolResponse

def _write_Ros1Std_srvsSetBoolResponse(writer, value):
    if type(value) is not Ros1Std_srvsSetBoolResponse:
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

def _read_Ros1Std_srvsSetBoolResponse(reader):
    _start = reader.position
    value = Ros1Std_srvsSetBoolResponse()
    value.success = _read_bool(reader)
    value.message = _read_text(reader, 256)
    if not 5 <= reader.position - _start <= 261:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Std_srvsTriggerRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'std_srvs/TriggerRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_d4e98dca9dc9a031d6b0f51937613f4f29c36156f0f05475339149794d47db1e'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Std_srvsTriggerRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Std_srvsTriggerRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Std_srvsTriggerRequest(reader)
        reader.end()
        return value

_record_Ros1Std_srvsTriggerRequest = Ros1Std_srvsTriggerRequest

def _write_Ros1Std_srvsTriggerRequest(writer, value):
    if type(value) is not Ros1Std_srvsTriggerRequest:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros1Std_srvsTriggerRequest(reader):
    _start = reader.position
    value = Ros1Std_srvsTriggerRequest()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Std_srvsTriggerResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'std_srvs/TriggerResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_e625281ddea64aff38d8647e2673b418b77474cae0501500b280cabb3d247d1d'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 5
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 261
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 261
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False
    message: _py_str = ''

    def encode(self):
        writer = _Writer(261)
        _write_Ros1Std_srvsTriggerResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 5, 261)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Std_srvsTriggerResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 5, 261))
        value = _read_Ros1Std_srvsTriggerResponse(reader)
        reader.end()
        return value

_record_Ros1Std_srvsTriggerResponse = Ros1Std_srvsTriggerResponse

def _write_Ros1Std_srvsTriggerResponse(writer, value):
    if type(value) is not Ros1Std_srvsTriggerResponse:
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

def _read_Ros1Std_srvsTriggerResponse(reader):
    _start = reader.position
    value = Ros1Std_srvsTriggerResponse()
    value.success = _read_bool(reader)
    value.message = _read_text(reader, 256)
    if not 5 <= reader.position - _start <= 261:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Turtlebot3_exampleTurtlebot3Goal:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'turtlebot3_example/Turtlebot3Goal'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_f6eb642301e239005c1790cfd5b9ff00388d98d27a17cbb0edb103b6ac7bfad5'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 24
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 24
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 24
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    goal: _record_Ros1Geometry_msgsVector3 = _field(default_factory=lambda: Ros1Geometry_msgsVector3())

    def encode(self):
        writer = _Writer(24)
        _write_Ros1Turtlebot3_exampleTurtlebot3Goal(writer, self)
        wire = writer.finish()
        return _wire(wire, 24, 24)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Turtlebot3_exampleTurtlebot3Goal:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 24, 24))
        value = _read_Ros1Turtlebot3_exampleTurtlebot3Goal(reader)
        reader.end()
        return value

_record_Ros1Turtlebot3_exampleTurtlebot3Goal = Ros1Turtlebot3_exampleTurtlebot3Goal

def _write_Ros1Turtlebot3_exampleTurtlebot3Goal(writer, value):
    if type(value) is not Ros1Turtlebot3_exampleTurtlebot3Goal:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.goal
    _write_Ros1Geometry_msgsVector3(writer, _part0)
    if not 24 <= len(writer.data) - _start <= 24:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Turtlebot3_exampleTurtlebot3Goal(reader):
    _start = reader.position
    value = Ros1Turtlebot3_exampleTurtlebot3Goal()
    value.goal = _read_Ros1Geometry_msgsVector3(reader)
    if not 24 <= reader.position - _start <= 24:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Turtlebot3_exampleTurtlebot3Result:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'turtlebot3_example/Turtlebot3Result'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_c749a56ed9a0c74d1b167f69cc9b4435f9549d49144ef2951a4c3db501bad528'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    result: _py_str = ''

    def encode(self):
        writer = _Writer(260)
        _write_Ros1Turtlebot3_exampleTurtlebot3Result(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 260)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Turtlebot3_exampleTurtlebot3Result:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 4, 260))
        value = _read_Ros1Turtlebot3_exampleTurtlebot3Result(reader)
        reader.end()
        return value

_record_Ros1Turtlebot3_exampleTurtlebot3Result = Ros1Turtlebot3_exampleTurtlebot3Result

def _write_Ros1Turtlebot3_exampleTurtlebot3Result(writer, value):
    if type(value) is not Ros1Turtlebot3_exampleTurtlebot3Result:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.result
    _write_text(writer, _part0, 256)
    if not 4 <= len(writer.data) - _start <= 260:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Turtlebot3_exampleTurtlebot3Result(reader):
    _start = reader.position
    value = Ros1Turtlebot3_exampleTurtlebot3Result()
    value.result = _read_text(reader, 256)
    if not 4 <= reader.position - _start <= 260:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Turtlebot3_exampleTurtlebot3Feedback:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'turtlebot3_example/Turtlebot3Feedback'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_077b5593a1e4c23c89c4d6a87dc1d67d8fa1bf04fa3aa440f54c8eda60b688f8'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    state: _py_str = ''

    def encode(self):
        writer = _Writer(260)
        _write_Ros1Turtlebot3_exampleTurtlebot3Feedback(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 260)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Turtlebot3_exampleTurtlebot3Feedback:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 4, 260))
        value = _read_Ros1Turtlebot3_exampleTurtlebot3Feedback(reader)
        reader.end()
        return value

_record_Ros1Turtlebot3_exampleTurtlebot3Feedback = Ros1Turtlebot3_exampleTurtlebot3Feedback

def _write_Ros1Turtlebot3_exampleTurtlebot3Feedback(writer, value):
    if type(value) is not Ros1Turtlebot3_exampleTurtlebot3Feedback:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.state
    _write_text(writer, _part0, 256)
    if not 4 <= len(writer.data) - _start <= 260:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Turtlebot3_exampleTurtlebot3Feedback(reader):
    _start = reader.position
    value = Ros1Turtlebot3_exampleTurtlebot3Feedback()
    value.state = _read_text(reader, 256)
    if not 4 <= reader.position - _start <= 260:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Turtlebot3_msgsSensorState:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'turtlebot3_msgs/SensorState'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_0ef7dd1a4b965ae027b081a6b34f111731a3adfbabcc6fd547d4da7378fcb81f'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 44
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 172
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 172
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
    header: _record_Ros1Std_msgsHeader = _field(default_factory=lambda: Ros1Std_msgsHeader())
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
        writer = _Writer(172)
        _write_Ros1Turtlebot3_msgsSensorState(writer, self)
        wire = writer.finish()
        return _wire(wire, 44, 172)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Turtlebot3_msgsSensorState:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 44, 172))
        value = _read_Ros1Turtlebot3_msgsSensorState(reader)
        reader.end()
        return value

_record_Ros1Turtlebot3_msgsSensorState = Ros1Turtlebot3_msgsSensorState

def _write_Ros1Turtlebot3_msgsSensorState(writer, value):
    if type(value) is not Ros1Turtlebot3_msgsSensorState:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros1Std_msgsHeader(writer, _part0)
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
    if not 44 <= len(writer.data) - _start <= 172:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Turtlebot3_msgsSensorState(reader):
    _start = reader.position
    value = Ros1Turtlebot3_msgsSensorState()
    value.header = _read_Ros1Std_msgsHeader(reader)
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
    if not 44 <= reader.position - _start <= 172:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Turtlebot3_msgsSound:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'turtlebot3_msgs/Sound'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_0e5af3d5a2acbfff5bf5ba94c1520490fe281e70aff02cfb6ad31acd89e7536a'
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
        _write_Ros1Turtlebot3_msgsSound(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Turtlebot3_msgsSound:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Turtlebot3_msgsSound(reader)
        reader.end()
        return value

_record_Ros1Turtlebot3_msgsSound = Ros1Turtlebot3_msgsSound

def _write_Ros1Turtlebot3_msgsSound(writer, value):
    if type(value) is not Ros1Turtlebot3_msgsSound:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.value
    writer.integer(_part0, 1, False)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Turtlebot3_msgsSound(reader):
    _start = reader.position
    value = Ros1Turtlebot3_msgsSound()
    value.value = reader.integer(1, False)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Turtlebot3_msgsVersionInfo:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'turtlebot3_msgs/VersionInfo'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_8f41d37cf43fda2e3649d85fcca83ad735dc5a8122f7829a98b18659bcad8b3a'
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
        _write_Ros1Turtlebot3_msgsVersionInfo(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 780)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Turtlebot3_msgsVersionInfo:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 12, 780))
        value = _read_Ros1Turtlebot3_msgsVersionInfo(reader)
        reader.end()
        return value

_record_Ros1Turtlebot3_msgsVersionInfo = Ros1Turtlebot3_msgsVersionInfo

def _write_Ros1Turtlebot3_msgsVersionInfo(writer, value):
    if type(value) is not Ros1Turtlebot3_msgsVersionInfo:
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

def _read_Ros1Turtlebot3_msgsVersionInfo(reader):
    _start = reader.position
    value = Ros1Turtlebot3_msgsVersionInfo()
    value.hardware = _read_text(reader, 256)
    value.firmware = _read_text(reader, 256)
    value.software = _read_text(reader, 256)
    if not 12 <= reader.position - _start <= 780:
        raise ValueError('nested complete record aggregate extent')
    return value

