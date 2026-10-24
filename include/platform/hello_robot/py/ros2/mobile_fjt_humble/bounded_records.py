# @file bounded_records.py
# @brief Provide the complete hello_robot mobile_fjt_humble canonical value surface.
# @details The original 17 record catalog retains field order, constants, defaults and quotas.
# Borrowed values and buffers must remain stable while a conversion is in progress.
# Malformed, truncated and trailing wire values are refused through the shared wire error contract.
# No declaration grants a capability or establishes a native ROS registry identity.
# Original declarations and units are retained in share/platform/hello_robot/catalogs.
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
class Ros2Trajectory_msgsMsgJointTrajectoryPoint:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'trajectory_msgs/msg/JointTrajectoryPoint'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_a512b971211baa8604440e02a046b586e7970293242607002ceb89196c9d99b1'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 24
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 280
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 280
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    positions: _py_list[_py_float] = _field(default_factory=lambda: [])
    velocities: _py_list[_py_float] = _field(default_factory=lambda: [])
    accelerations: _py_list[_py_float] = _field(default_factory=lambda: [])
    effort: _py_list[_py_float] = _field(default_factory=lambda: [])
    time_from_start: _record_Ros2Builtin_interfacesMsgDuration = _field(default_factory=lambda: Ros2Builtin_interfacesMsgDuration())

    def encode(self):
        writer = _Writer(280)
        _write_Ros2Trajectory_msgsMsgJointTrajectoryPoint(writer, self)
        wire = writer.finish()
        return _wire(wire, 24, 280)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Trajectory_msgsMsgJointTrajectoryPoint:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 24, 280))
        value = _read_Ros2Trajectory_msgsMsgJointTrajectoryPoint(reader)
        reader.end()
        return value

_record_Ros2Trajectory_msgsMsgJointTrajectoryPoint = Ros2Trajectory_msgsMsgJointTrajectoryPoint

def _write_Ros2Trajectory_msgsMsgJointTrajectoryPoint(writer, value):
    if type(value) is not Ros2Trajectory_msgsMsgJointTrajectoryPoint:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.positions
    if type(_part0) not in (list, tuple):
        raise TypeError('array value required')
    _count0 = len(_part0)
    if _count0 > 8:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count0, 4)
    for _index in range(_count0):
        _element = _part0[_index]
        writer.f64(_element)
    _part1 = value.velocities
    if type(_part1) not in (list, tuple):
        raise TypeError('array value required')
    _count1 = len(_part1)
    if _count1 > 8:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        writer.f64(_element)
    _part2 = value.accelerations
    if type(_part2) not in (list, tuple):
        raise TypeError('array value required')
    _count2 = len(_part2)
    if _count2 > 8:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        writer.f64(_element)
    _part3 = value.effort
    if type(_part3) not in (list, tuple):
        raise TypeError('array value required')
    _count3 = len(_part3)
    if _count3 > 8:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count3, 4)
    for _index in range(_count3):
        _element = _part3[_index]
        writer.f64(_element)
    _part4 = value.time_from_start
    _write_Ros2Builtin_interfacesMsgDuration(writer, _part4)
    if not 24 <= len(writer.data) - _start <= 280:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Trajectory_msgsMsgJointTrajectoryPoint(reader):
    _start = reader.position
    value = Ros2Trajectory_msgsMsgJointTrajectoryPoint()
    value.positions = [reader.f64() for _ in range(_read_count(reader, 8, 8))]
    value.velocities = [reader.f64() for _ in range(_read_count(reader, 8, 8))]
    value.accelerations = [reader.f64() for _ in range(_read_count(reader, 8, 8))]
    value.effort = [reader.f64() for _ in range(_read_count(reader, 8, 8))]
    value.time_from_start = _read_Ros2Builtin_interfacesMsgDuration(reader)
    if not 24 <= reader.position - _start <= 280:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Trajectory_msgsMsgJointTrajectory:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'trajectory_msgs/msg/JointTrajectory'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_e32bd7016b5fefcab6adeb42072e2d56c45d4b9f7cb372bdb5bfac97abf8cb77'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 20
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1484
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1484
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros2Std_msgsMsgHeader = _field(default_factory=lambda: Ros2Std_msgsMsgHeader())
    joint_names: _py_list[_py_str] = _field(default_factory=lambda: [])
    points: _py_list[_record_Ros2Trajectory_msgsMsgJointTrajectoryPoint] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(1484)
        _write_Ros2Trajectory_msgsMsgJointTrajectory(writer, self)
        wire = writer.finish()
        return _wire(wire, 20, 1484)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Trajectory_msgsMsgJointTrajectory:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 20, 1484))
        value = _read_Ros2Trajectory_msgsMsgJointTrajectory(reader)
        reader.end()
        return value

_record_Ros2Trajectory_msgsMsgJointTrajectory = Ros2Trajectory_msgsMsgJointTrajectory

def _write_Ros2Trajectory_msgsMsgJointTrajectory(writer, value):
    if type(value) is not Ros2Trajectory_msgsMsgJointTrajectory:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros2Std_msgsMsgHeader(writer, _part0)
    _part1 = value.joint_names
    if type(_part1) not in (list, tuple):
        raise TypeError('array value required')
    _count1 = len(_part1)
    if _count1 > 8:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        _write_text(writer, _element, 128)
    _part2 = value.points
    if type(_part2) not in (list, tuple):
        raise TypeError('array value required')
    _count2 = len(_part2)
    if _count2 > 1:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        _write_Ros2Trajectory_msgsMsgJointTrajectoryPoint(writer, _element)
    if not 20 <= len(writer.data) - _start <= 1484:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Trajectory_msgsMsgJointTrajectory(reader):
    _start = reader.position
    value = Ros2Trajectory_msgsMsgJointTrajectory()
    value.header = _read_Ros2Std_msgsMsgHeader(reader)
    value.joint_names = [_read_text(reader, 128) for _ in range(_read_count(reader, 8, 4))]
    value.points = [_read_Ros2Trajectory_msgsMsgJointTrajectoryPoint(reader) for _ in range(_read_count(reader, 1, 24))]
    if not 20 <= reader.position - _start <= 1484:
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
class Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'trajectory_msgs/msg/MultiDOFJointTrajectoryPoint'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_4b4b6ba78f11918fcdc138544f7ef1a140d1fc51b385349ab1ad5716472c3daf'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 20
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 844
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 844
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    transforms: _py_list[_record_Ros2Geometry_msgsMsgTransform] = _field(default_factory=lambda: [])
    velocities: _py_list[_record_Ros2Geometry_msgsMsgTwist] = _field(default_factory=lambda: [])
    accelerations: _py_list[_record_Ros2Geometry_msgsMsgTwist] = _field(default_factory=lambda: [])
    time_from_start: _record_Ros2Builtin_interfacesMsgDuration = _field(default_factory=lambda: Ros2Builtin_interfacesMsgDuration())

    def encode(self):
        writer = _Writer(844)
        _write_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(writer, self)
        wire = writer.finish()
        return _wire(wire, 20, 844)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 20, 844))
        value = _read_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(reader)
        reader.end()
        return value

_record_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint = Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint

def _write_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(writer, value):
    if type(value) is not Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.transforms
    if type(_part0) not in (list, tuple):
        raise TypeError('array value required')
    _count0 = len(_part0)
    if _count0 > 1:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count0, 4)
    for _index in range(_count0):
        _element = _part0[_index]
        _write_Ros2Geometry_msgsMsgTransform(writer, _element)
    _part1 = value.velocities
    if type(_part1) not in (list, tuple):
        raise TypeError('array value required')
    _count1 = len(_part1)
    if _count1 > 8:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        _write_Ros2Geometry_msgsMsgTwist(writer, _element)
    _part2 = value.accelerations
    if type(_part2) not in (list, tuple):
        raise TypeError('array value required')
    _count2 = len(_part2)
    if _count2 > 8:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        _write_Ros2Geometry_msgsMsgTwist(writer, _element)
    _part3 = value.time_from_start
    _write_Ros2Builtin_interfacesMsgDuration(writer, _part3)
    if not 20 <= len(writer.data) - _start <= 844:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(reader):
    _start = reader.position
    value = Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint()
    value.transforms = [_read_Ros2Geometry_msgsMsgTransform(reader) for _ in range(_read_count(reader, 1, 56))]
    value.velocities = [_read_Ros2Geometry_msgsMsgTwist(reader) for _ in range(_read_count(reader, 8, 48))]
    value.accelerations = [_read_Ros2Geometry_msgsMsgTwist(reader) for _ in range(_read_count(reader, 8, 48))]
    value.time_from_start = _read_Ros2Builtin_interfacesMsgDuration(reader)
    if not 20 <= reader.position - _start <= 844:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Trajectory_msgsMsgMultiDOFJointTrajectory:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'trajectory_msgs/msg/MultiDOFJointTrajectory'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_b822a2d5db9b83e916dcc9db4932952a314773ef53c9fbaf825902e0eb7c8cb5'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 20
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 2048
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 2048
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros2Std_msgsMsgHeader = _field(default_factory=lambda: Ros2Std_msgsMsgHeader())
    joint_names: _py_list[_py_str] = _field(default_factory=lambda: [])
    points: _py_list[_record_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(2048)
        _write_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory(writer, self)
        wire = writer.finish()
        return _wire(wire, 20, 2048)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Trajectory_msgsMsgMultiDOFJointTrajectory:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 20, 2048))
        value = _read_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory(reader)
        reader.end()
        return value

_record_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory = Ros2Trajectory_msgsMsgMultiDOFJointTrajectory

def _write_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory(writer, value):
    if type(value) is not Ros2Trajectory_msgsMsgMultiDOFJointTrajectory:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros2Std_msgsMsgHeader(writer, _part0)
    _part1 = value.joint_names
    if type(_part1) not in (list, tuple):
        raise TypeError('array value required')
    _count1 = len(_part1)
    if _count1 > 8:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        _write_text(writer, _element, 128)
    _part2 = value.points
    if type(_part2) not in (list, tuple):
        raise TypeError('array value required')
    _count2 = len(_part2)
    if _count2 > 1:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        _write_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(writer, _element)
    if not 20 <= len(writer.data) - _start <= 2048:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory(reader):
    _start = reader.position
    value = Ros2Trajectory_msgsMsgMultiDOFJointTrajectory()
    value.header = _read_Ros2Std_msgsMsgHeader(reader)
    value.joint_names = [_read_text(reader, 128) for _ in range(_read_count(reader, 8, 4))]
    value.points = [_read_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(reader) for _ in range(_read_count(reader, 1, 20))]
    if not 20 <= reader.position - _start <= 2048:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Control_msgsMsgJointTolerance:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'control_msgs/msg/JointTolerance'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_3864af88029b3b1f51907b3da63d2d821104c29b9469a146a5a34f73f3598b8a'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 28
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 156
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 156
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    name: _py_str = ''
    position: _py_float = 0.0
    velocity: _py_float = 0.0
    acceleration: _py_float = 0.0

    def encode(self):
        writer = _Writer(156)
        _write_Ros2Control_msgsMsgJointTolerance(writer, self)
        wire = writer.finish()
        return _wire(wire, 28, 156)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Control_msgsMsgJointTolerance:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 28, 156))
        value = _read_Ros2Control_msgsMsgJointTolerance(reader)
        reader.end()
        return value

_record_Ros2Control_msgsMsgJointTolerance = Ros2Control_msgsMsgJointTolerance

def _write_Ros2Control_msgsMsgJointTolerance(writer, value):
    if type(value) is not Ros2Control_msgsMsgJointTolerance:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.name
    _write_text(writer, _part0, 128)
    _part1 = value.position
    writer.f64(_part1)
    _part2 = value.velocity
    writer.f64(_part2)
    _part3 = value.acceleration
    writer.f64(_part3)
    if not 28 <= len(writer.data) - _start <= 156:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Control_msgsMsgJointTolerance(reader):
    _start = reader.position
    value = Ros2Control_msgsMsgJointTolerance()
    value.name = _read_text(reader, 128)
    value.position = reader.f64()
    value.velocity = reader.f64()
    value.acceleration = reader.f64()
    if not 28 <= reader.position - _start <= 156:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Control_msgsMsgJointComponentTolerance:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'control_msgs/msg/JointComponentTolerance'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_8a10f659b38feae6dfcf89818d35a164743b02c0e5cfe2d86aae7eda56e914fb'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 30
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 158
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 158
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = [{'name': 'X_AXIS', 'type': 'uint16', 'native_type': 'uint16', 'literal': '1', 'value': '1'},
     {'name': 'Y_AXIS', 'type': 'uint16', 'native_type': 'uint16', 'literal': '2', 'value': '2'},
     {'name': 'Z_AXIS', 'type': 'uint16', 'native_type': 'uint16', 'literal': '3', 'value': '3'},
     {'name': 'TRANSLATION', 'type': 'uint16', 'native_type': 'uint16', 'literal': '4', 'value': '4'},
     {'name': 'ROTATION', 'type': 'uint16', 'native_type': 'uint16', 'literal': '5', 'value': '5'}]
    X_AXIS: _ClassVar = 1
    Y_AXIS: _ClassVar = 2
    Z_AXIS: _ClassVar = 3
    TRANSLATION: _ClassVar = 4
    ROTATION: _ClassVar = 5
    joint_name: _py_str = ''
    component: _py_int = 0
    position: _py_float = 0.0
    velocity: _py_float = 0.0
    acceleration: _py_float = 0.0

    def encode(self):
        writer = _Writer(158)
        _write_Ros2Control_msgsMsgJointComponentTolerance(writer, self)
        wire = writer.finish()
        return _wire(wire, 30, 158)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Control_msgsMsgJointComponentTolerance:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 30, 158))
        value = _read_Ros2Control_msgsMsgJointComponentTolerance(reader)
        reader.end()
        return value

_record_Ros2Control_msgsMsgJointComponentTolerance = Ros2Control_msgsMsgJointComponentTolerance

def _write_Ros2Control_msgsMsgJointComponentTolerance(writer, value):
    if type(value) is not Ros2Control_msgsMsgJointComponentTolerance:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.joint_name
    _write_text(writer, _part0, 128)
    _part1 = value.component
    writer.integer(_part1, 2, False)
    _part2 = value.position
    writer.f64(_part2)
    _part3 = value.velocity
    writer.f64(_part3)
    _part4 = value.acceleration
    writer.f64(_part4)
    if not 30 <= len(writer.data) - _start <= 158:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Control_msgsMsgJointComponentTolerance(reader):
    _start = reader.position
    value = Ros2Control_msgsMsgJointComponentTolerance()
    value.joint_name = _read_text(reader, 128)
    value.component = reader.integer(2, False)
    value.position = reader.f64()
    value.velocity = reader.f64()
    value.acceleration = reader.f64()
    if not 30 <= reader.position - _start <= 158:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Control_msgsActionFollowJointTrajectory_Goal:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'control_msgs/action/FollowJointTrajectory_Goal'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_fa8334eb129cc91c50febaccfebb371f6fbdd82188d6301823344d6664300018'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 64
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 8580
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 8580
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    trajectory: _record_Ros2Trajectory_msgsMsgJointTrajectory = _field(default_factory=lambda: Ros2Trajectory_msgsMsgJointTrajectory())
    multi_dof_trajectory: _record_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory = (
        _field(default_factory=lambda: Ros2Trajectory_msgsMsgMultiDOFJointTrajectory())
    )
    path_tolerance: _py_list[_record_Ros2Control_msgsMsgJointTolerance] = _field(default_factory=lambda: [])
    component_path_tolerance: _py_list[_record_Ros2Control_msgsMsgJointComponentTolerance] = _field(default_factory=lambda: [])
    goal_tolerance: _py_list[_record_Ros2Control_msgsMsgJointTolerance] = _field(default_factory=lambda: [])
    component_goal_tolerance: _py_list[_record_Ros2Control_msgsMsgJointComponentTolerance] = _field(default_factory=lambda: [])
    goal_time_tolerance: _record_Ros2Builtin_interfacesMsgDuration = _field(default_factory=lambda: Ros2Builtin_interfacesMsgDuration())

    def encode(self):
        writer = _Writer(8580)
        _write_Ros2Control_msgsActionFollowJointTrajectory_Goal(writer, self)
        wire = writer.finish()
        return _wire(wire, 64, 8580)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Control_msgsActionFollowJointTrajectory_Goal:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 64, 8580))
        value = _read_Ros2Control_msgsActionFollowJointTrajectory_Goal(reader)
        reader.end()
        return value

_record_Ros2Control_msgsActionFollowJointTrajectory_Goal = Ros2Control_msgsActionFollowJointTrajectory_Goal

def _write_Ros2Control_msgsActionFollowJointTrajectory_Goal(writer, value):
    if type(value) is not Ros2Control_msgsActionFollowJointTrajectory_Goal:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.trajectory
    _write_Ros2Trajectory_msgsMsgJointTrajectory(writer, _part0)
    _part1 = value.multi_dof_trajectory
    _write_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory(writer, _part1)
    _part2 = value.path_tolerance
    if type(_part2) not in (list, tuple):
        raise TypeError('array value required')
    _count2 = len(_part2)
    if _count2 > 8:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        _write_Ros2Control_msgsMsgJointTolerance(writer, _element)
    _part3 = value.component_path_tolerance
    if type(_part3) not in (list, tuple):
        raise TypeError('array value required')
    _count3 = len(_part3)
    if _count3 > 8:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count3, 4)
    for _index in range(_count3):
        _element = _part3[_index]
        _write_Ros2Control_msgsMsgJointComponentTolerance(writer, _element)
    _part4 = value.goal_tolerance
    if type(_part4) not in (list, tuple):
        raise TypeError('array value required')
    _count4 = len(_part4)
    if _count4 > 8:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count4, 4)
    for _index in range(_count4):
        _element = _part4[_index]
        _write_Ros2Control_msgsMsgJointTolerance(writer, _element)
    _part5 = value.component_goal_tolerance
    if type(_part5) not in (list, tuple):
        raise TypeError('array value required')
    _count5 = len(_part5)
    if _count5 > 8:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count5, 4)
    for _index in range(_count5):
        _element = _part5[_index]
        _write_Ros2Control_msgsMsgJointComponentTolerance(writer, _element)
    _part6 = value.goal_time_tolerance
    _write_Ros2Builtin_interfacesMsgDuration(writer, _part6)
    if not 64 <= len(writer.data) - _start <= 8580:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Control_msgsActionFollowJointTrajectory_Goal(reader):
    _start = reader.position
    value = Ros2Control_msgsActionFollowJointTrajectory_Goal()
    value.trajectory = _read_Ros2Trajectory_msgsMsgJointTrajectory(reader)
    value.multi_dof_trajectory = _read_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory(reader)
    value.path_tolerance = [_read_Ros2Control_msgsMsgJointTolerance(reader) for _ in range(_read_count(reader, 8, 28))]
    value.component_path_tolerance = [_read_Ros2Control_msgsMsgJointComponentTolerance(reader) for _ in range(_read_count(reader, 8, 30))]
    value.goal_tolerance = [_read_Ros2Control_msgsMsgJointTolerance(reader) for _ in range(_read_count(reader, 8, 28))]
    value.component_goal_tolerance = [_read_Ros2Control_msgsMsgJointComponentTolerance(reader) for _ in range(_read_count(reader, 8, 30))]
    value.goal_time_tolerance = _read_Ros2Builtin_interfacesMsgDuration(reader)
    if not 64 <= reader.position - _start <= 8580:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Control_msgsActionFollowJointTrajectory_Result:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'control_msgs/action/FollowJointTrajectory_Result'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_df1e08076a5c725b865cc8807462d9ccf9577df11cbb71fcc0d280d77d0e5649'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 264
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 264
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = [{'name': 'SUCCESSFUL', 'type': 'int32', 'native_type': 'int32', 'literal': '0', 'value': '0'},
     {'name': 'INVALID_GOAL', 'type': 'int32', 'native_type': 'int32', 'literal': '-1', 'value': '-1'},
     {'name': 'INVALID_JOINTS',
      'type': 'int32',
      'native_type': 'int32',
      'literal': '-2',
      'value': '-2'},
     {'name': 'OLD_HEADER_TIMESTAMP',
      'type': 'int32',
      'native_type': 'int32',
      'literal': '-3',
      'value': '-3'},
     {'name': 'PATH_TOLERANCE_VIOLATED',
      'type': 'int32',
      'native_type': 'int32',
      'literal': '-4',
      'value': '-4'},
     {'name': 'GOAL_TOLERANCE_VIOLATED',
      'type': 'int32',
      'native_type': 'int32',
      'literal': '-5',
      'value': '-5'}]
    SUCCESSFUL: _ClassVar = 0
    INVALID_GOAL: _ClassVar = -1
    INVALID_JOINTS: _ClassVar = -2
    OLD_HEADER_TIMESTAMP: _ClassVar = -3
    PATH_TOLERANCE_VIOLATED: _ClassVar = -4
    GOAL_TOLERANCE_VIOLATED: _ClassVar = -5
    error_code: _py_int = 0
    error_string: _py_str = ''

    def encode(self):
        writer = _Writer(264)
        _write_Ros2Control_msgsActionFollowJointTrajectory_Result(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 264)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Control_msgsActionFollowJointTrajectory_Result:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 264))
        value = _read_Ros2Control_msgsActionFollowJointTrajectory_Result(reader)
        reader.end()
        return value

_record_Ros2Control_msgsActionFollowJointTrajectory_Result = Ros2Control_msgsActionFollowJointTrajectory_Result

def _write_Ros2Control_msgsActionFollowJointTrajectory_Result(writer, value):
    if type(value) is not Ros2Control_msgsActionFollowJointTrajectory_Result:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.error_code
    writer.integer(_part0, 4, True)
    _part1 = value.error_string
    _write_text(writer, _part1, 256)
    if not 8 <= len(writer.data) - _start <= 264:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Control_msgsActionFollowJointTrajectory_Result(reader):
    _start = reader.position
    value = Ros2Control_msgsActionFollowJointTrajectory_Result()
    value.error_code = reader.integer(4, True)
    value.error_string = _read_text(reader, 256)
    if not 8 <= reader.position - _start <= 264:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Control_msgsActionFollowJointTrajectory_Feedback:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'control_msgs/action/FollowJointTrajectory_Feedback'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_ae2175027c3e45997d272b9610d15ef52cc665d23c0a371892d10b3d100e3529'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 152
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 4708
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 4708
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros2Std_msgsMsgHeader = _field(default_factory=lambda: Ros2Std_msgsMsgHeader())
    joint_names: _py_list[_py_str] = _field(default_factory=lambda: [])
    desired: _record_Ros2Trajectory_msgsMsgJointTrajectoryPoint = _field(default_factory=lambda: Ros2Trajectory_msgsMsgJointTrajectoryPoint())
    actual: _record_Ros2Trajectory_msgsMsgJointTrajectoryPoint = _field(default_factory=lambda: Ros2Trajectory_msgsMsgJointTrajectoryPoint())
    error: _record_Ros2Trajectory_msgsMsgJointTrajectoryPoint = _field(default_factory=lambda: Ros2Trajectory_msgsMsgJointTrajectoryPoint())
    multi_dof_joint_names: _py_list[_py_str] = _field(default_factory=lambda: [])
    multi_dof_desired: _record_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint = (
        _field(default_factory=lambda: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint())
    )
    multi_dof_actual: _record_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint = (
        _field(default_factory=lambda: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint())
    )
    multi_dof_error: _record_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint = (
        _field(default_factory=lambda: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint())
    )

    def encode(self):
        writer = _Writer(4708)
        _write_Ros2Control_msgsActionFollowJointTrajectory_Feedback(writer, self)
        wire = writer.finish()
        return _wire(wire, 152, 4708)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Control_msgsActionFollowJointTrajectory_Feedback:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 152, 4708))
        value = _read_Ros2Control_msgsActionFollowJointTrajectory_Feedback(reader)
        reader.end()
        return value

_record_Ros2Control_msgsActionFollowJointTrajectory_Feedback = Ros2Control_msgsActionFollowJointTrajectory_Feedback

def _write_Ros2Control_msgsActionFollowJointTrajectory_Feedback(writer, value):
    if type(value) is not Ros2Control_msgsActionFollowJointTrajectory_Feedback:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros2Std_msgsMsgHeader(writer, _part0)
    _part1 = value.joint_names
    if type(_part1) not in (list, tuple):
        raise TypeError('array value required')
    _count1 = len(_part1)
    if _count1 > 8:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        _write_text(writer, _element, 128)
    _part2 = value.desired
    _write_Ros2Trajectory_msgsMsgJointTrajectoryPoint(writer, _part2)
    _part3 = value.actual
    _write_Ros2Trajectory_msgsMsgJointTrajectoryPoint(writer, _part3)
    _part4 = value.error
    _write_Ros2Trajectory_msgsMsgJointTrajectoryPoint(writer, _part4)
    _part5 = value.multi_dof_joint_names
    if type(_part5) not in (list, tuple):
        raise TypeError('array value required')
    _count5 = len(_part5)
    if _count5 > 1:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count5, 4)
    for _index in range(_count5):
        _element = _part5[_index]
        _write_text(writer, _element, 128)
    _part6 = value.multi_dof_desired
    _write_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(writer, _part6)
    _part7 = value.multi_dof_actual
    _write_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(writer, _part7)
    _part8 = value.multi_dof_error
    _write_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(writer, _part8)
    if not 152 <= len(writer.data) - _start <= 4708:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Control_msgsActionFollowJointTrajectory_Feedback(reader):
    _start = reader.position
    value = Ros2Control_msgsActionFollowJointTrajectory_Feedback()
    value.header = _read_Ros2Std_msgsMsgHeader(reader)
    value.joint_names = [_read_text(reader, 128) for _ in range(_read_count(reader, 8, 4))]
    value.desired = _read_Ros2Trajectory_msgsMsgJointTrajectoryPoint(reader)
    value.actual = _read_Ros2Trajectory_msgsMsgJointTrajectoryPoint(reader)
    value.error = _read_Ros2Trajectory_msgsMsgJointTrajectoryPoint(reader)
    value.multi_dof_joint_names = [_read_text(reader, 128) for _ in range(_read_count(reader, 1, 4))]
    value.multi_dof_desired = _read_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(reader)
    value.multi_dof_actual = _read_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(reader)
    value.multi_dof_error = _read_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(reader)
    if not 152 <= reader.position - _start <= 4708:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Sensor_msgsMsgJointState:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'sensor_msgs/msg/JointState'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_bba20c36db70a98b594ba603d05b8a979038fb95b701221ba3b8689f55b06b11'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 28
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1404
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1404
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros2Std_msgsMsgHeader = _field(default_factory=lambda: Ros2Std_msgsMsgHeader())
    name: _py_list[_py_str] = _field(default_factory=lambda: [])
    position: _py_list[_py_float] = _field(default_factory=lambda: [])
    velocity: _py_list[_py_float] = _field(default_factory=lambda: [])
    effort: _py_list[_py_float] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(1404)
        _write_Ros2Sensor_msgsMsgJointState(writer, self)
        wire = writer.finish()
        return _wire(wire, 28, 1404)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Sensor_msgsMsgJointState:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 28, 1404))
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
    if _count1 > 8:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        _write_text(writer, _element, 128)
    _part2 = value.position
    if type(_part2) not in (list, tuple):
        raise TypeError('array value required')
    _count2 = len(_part2)
    if _count2 > 8:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        writer.f64(_element)
    _part3 = value.velocity
    if type(_part3) not in (list, tuple):
        raise TypeError('array value required')
    _count3 = len(_part3)
    if _count3 > 8:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count3, 4)
    for _index in range(_count3):
        _element = _part3[_index]
        writer.f64(_element)
    _part4 = value.effort
    if type(_part4) not in (list, tuple):
        raise TypeError('array value required')
    _count4 = len(_part4)
    if _count4 > 8:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count4, 4)
    for _index in range(_count4):
        _element = _part4[_index]
        writer.f64(_element)
    _sizes = [_count1, _count2, _count3, _count4]
    if len({n for n in _sizes if n}) > 1:
        raise ValueError('nonempty JointState arrays must have equal length')
    if not 28 <= len(writer.data) - _start <= 1404:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Sensor_msgsMsgJointState(reader):
    _start = reader.position
    value = Ros2Sensor_msgsMsgJointState()
    value.header = _read_Ros2Std_msgsMsgHeader(reader)
    value.name = [_read_text(reader, 128) for _ in range(_read_count(reader, 8, 4))]
    value.position = [reader.f64() for _ in range(_read_count(reader, 8, 8))]
    value.velocity = [reader.f64() for _ in range(_read_count(reader, 8, 8))]
    value.effort = [reader.f64() for _ in range(_read_count(reader, 8, 8))]
    _sizes = [len(value.name), len(value.position), len(value.velocity), len(value.effort)]
    if len({n for n in _sizes if n}) > 1:
        raise ValueError('nonempty JointState arrays must have equal length')
    if not 28 <= reader.position - _start <= 1404:
        raise ValueError('nested complete record aggregate extent')
    return value

