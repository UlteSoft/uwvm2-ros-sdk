# @file bounded_records.py
# @brief Complete kuka values and adapters for the selected original interface catalog.
# @details Retain original field order, scalar widths, array capacities, string bounds, constants and declared
# defaults. Pure value access and canonical codecs create no native ROS allocation or resource grant. Transport
# roles require the separately admitted SDK owner.
# @see share/platform/kuka/domains/kuka-ros2-complete.ir.json
# @see document/platform/kuka/en_US/README.md

# Generated complete canonical records; source-only until actually tested.
from __future__ import annotations
from dataclasses import dataclass as _dataclass, field as _field
from builtins import (
    classmethod as _classmethod,
    bool as _py_bool,
    float as _py_float,
    int as _py_int,
    str as _py_str,
    bytes as _py_bytes,
    list as _py_list,
)
from typing import ClassVar as _ClassVar
from roswasm.codecs import Writer as _Writer, Reader as _Reader


def _write_raw(writer, value, maximum):
    if type(value) is not bytes or len(value) > maximum:
        raise ValueError("bounded raw bytes required")
    writer.integer(len(value), 4).raw(value)


def _read_raw(reader, maximum):
    count = reader.integer(4)
    if count > maximum:
        raise ValueError("raw byte count bound")
    return reader.take(count)


def _write_text(writer, value, maximum):
    if type(value) is not str or len(value) > maximum or "\0" in value:
        raise ValueError("bounded custom UTF-8 string without NUL required")
    raw = value.encode("utf-8", "strict")
    if len(raw) > maximum:
        raise ValueError("custom UTF-8 byte bound")
    writer.integer(len(raw), 4).raw(raw)


def _read_text(reader, maximum):
    count = reader.integer(4)
    if count > maximum:
        raise ValueError("custom UTF-8 byte bound")
    value = reader.take(count).decode("utf-8", "strict")
    if "\0" in value:
        raise ValueError("NUL in custom string")
    return value


def _read_count(reader, maximum, element_minimum):
    count = reader.integer(4)
    # Reader.data/position are the current SDK's actual owned-byte view/cursor.
    # The complete top-level wire was already bounded before Reader creation.
    if count > maximum or (
        element_minimum and count > (len(reader.data) - reader.position) // element_minimum
    ):
        raise ValueError("sequence count/remaining extent")
    return count


def _read_bool(reader):
    value = reader.integer(1)
    if value > 1:
        raise ValueError("canonical bool must be0/1")
    return bool(value)


def _wire(value, minimum, maximum):
    if type(value) is not bytes or not minimum <= len(value) <= maximum:
        raise ValueError("complete bounded immutable wire required")
    return value


@_dataclass
class Ros2Builtin_interfacesMsgDuration:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "builtin_interfaces/msg/Duration"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4"
    )
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
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 8, 8))
        value = _read_Ros2Builtin_interfacesMsgDuration(reader)
        reader.end()
        return value


_record_Ros2Builtin_interfacesMsgDuration = Ros2Builtin_interfacesMsgDuration


def _write_Ros2Builtin_interfacesMsgDuration(writer, value):
    if type(value) is not Ros2Builtin_interfacesMsgDuration:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.sec
    writer.integer(_part0, 4, True)
    _part1 = value.nanosec
    writer.integer(_part1, 4, False)
    if not 0 <= _part1 < 1000000000:
        raise ValueError("normalized subsecond field required")
    if not 8 <= len(writer.data) - _start <= 8:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Builtin_interfacesMsgDuration(reader):
    _start = reader.position
    value = Ros2Builtin_interfacesMsgDuration()
    value.sec = reader.integer(4, True)
    value.nanosec = reader.integer(4, False)
    if not 0 <= value.nanosec < 1000000000:
        raise ValueError("normalized subsecond field required")
    if not 8 <= reader.position - _start <= 8:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Builtin_interfacesMsgTime:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "builtin_interfaces/msg/Time"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7"
    )
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
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 8, 8))
        value = _read_Ros2Builtin_interfacesMsgTime(reader)
        reader.end()
        return value


_record_Ros2Builtin_interfacesMsgTime = Ros2Builtin_interfacesMsgTime


def _write_Ros2Builtin_interfacesMsgTime(writer, value):
    if type(value) is not Ros2Builtin_interfacesMsgTime:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.sec
    writer.integer(_part0, 4, True)
    _part1 = value.nanosec
    writer.integer(_part1, 4, False)
    if not 0 <= _part1 < 1000000000:
        raise ValueError("normalized subsecond field required")
    if not 8 <= len(writer.data) - _start <= 8:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Builtin_interfacesMsgTime(reader):
    _start = reader.position
    value = Ros2Builtin_interfacesMsgTime()
    value.sec = reader.integer(4, True)
    value.nanosec = reader.integer(4, False)
    if not 0 <= value.nanosec < 1000000000:
        raise ValueError("normalized subsecond field required")
    if not 8 <= reader.position - _start <= 8:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Std_msgsMsgHeader:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "std_msgs/msg/Header"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_afba9e74be3c5e3321750c1c4c30ba2925269f75b9da43a6d5c1e93d293d7396"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 76
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 76
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    stamp: _record_Ros2Builtin_interfacesMsgTime = _field(
        default_factory=lambda: Ros2Builtin_interfacesMsgTime()
    )
    frame_id: _py_str = ""

    def encode(self):
        writer = _Writer(76)
        _write_Ros2Std_msgsMsgHeader(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 76)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Std_msgsMsgHeader:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 12, 76))
        value = _read_Ros2Std_msgsMsgHeader(reader)
        reader.end()
        return value


_record_Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader


def _write_Ros2Std_msgsMsgHeader(writer, value):
    if type(value) is not Ros2Std_msgsMsgHeader:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.stamp
    _write_Ros2Builtin_interfacesMsgTime(writer, _part0)
    _part1 = value.frame_id
    _write_text(writer, _part1, 64)
    if not 12 <= len(writer.data) - _start <= 76:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Std_msgsMsgHeader(reader):
    _start = reader.position
    value = Ros2Std_msgsMsgHeader()
    value.stamp = _read_Ros2Builtin_interfacesMsgTime(reader)
    value.frame_id = _read_text(reader, 64)
    if not 12 <= reader.position - _start <= 76:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Trajectory_msgsMsgJointTrajectoryPoint:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "trajectory_msgs/msg/JointTrajectoryPoint"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_4d55f494f060a9a3ff23bedd54da49f9e70e6b77acbdf911878afbf672cbadc5"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 24
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 408
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 408
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    positions: _py_list[_py_float] = _field(default_factory=lambda: [])
    velocities: _py_list[_py_float] = _field(default_factory=lambda: [])
    accelerations: _py_list[_py_float] = _field(default_factory=lambda: [])
    effort: _py_list[_py_float] = _field(default_factory=lambda: [])
    time_from_start: _record_Ros2Builtin_interfacesMsgDuration = _field(
        default_factory=lambda: Ros2Builtin_interfacesMsgDuration()
    )

    def encode(self):
        writer = _Writer(408)
        _write_Ros2Trajectory_msgsMsgJointTrajectoryPoint(writer, self)
        wire = writer.finish()
        return _wire(wire, 24, 408)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Trajectory_msgsMsgJointTrajectoryPoint:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 24, 408))
        value = _read_Ros2Trajectory_msgsMsgJointTrajectoryPoint(reader)
        reader.end()
        return value


_record_Ros2Trajectory_msgsMsgJointTrajectoryPoint = Ros2Trajectory_msgsMsgJointTrajectoryPoint


def _write_Ros2Trajectory_msgsMsgJointTrajectoryPoint(writer, value):
    if type(value) is not Ros2Trajectory_msgsMsgJointTrajectoryPoint:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.positions
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 > 12:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count0, 4)
    for _index in range(_count0):
        _element = _part0[_index]
        writer.f64(_element)
    _part1 = value.velocities
    if type(_part1) not in (list, tuple):
        raise TypeError("array value required")
    _count1 = len(_part1)
    if _count1 > 12:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        writer.f64(_element)
    _part2 = value.accelerations
    if type(_part2) not in (list, tuple):
        raise TypeError("array value required")
    _count2 = len(_part2)
    if _count2 > 12:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        writer.f64(_element)
    _part3 = value.effort
    if type(_part3) not in (list, tuple):
        raise TypeError("array value required")
    _count3 = len(_part3)
    if _count3 > 12:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count3, 4)
    for _index in range(_count3):
        _element = _part3[_index]
        writer.f64(_element)
    _part4 = value.time_from_start
    _write_Ros2Builtin_interfacesMsgDuration(writer, _part4)
    if not 24 <= len(writer.data) - _start <= 408:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Trajectory_msgsMsgJointTrajectoryPoint(reader):
    _start = reader.position
    value = Ros2Trajectory_msgsMsgJointTrajectoryPoint()
    value.positions = [reader.f64() for _ in range(_read_count(reader, 12, 8))]
    value.velocities = [reader.f64() for _ in range(_read_count(reader, 12, 8))]
    value.accelerations = [reader.f64() for _ in range(_read_count(reader, 12, 8))]
    value.effort = [reader.f64() for _ in range(_read_count(reader, 12, 8))]
    value.time_from_start = _read_Ros2Builtin_interfacesMsgDuration(reader)
    if not 24 <= reader.position - _start <= 408:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Trajectory_msgsMsgJointTrajectory:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "trajectory_msgs/msg/JointTrajectory"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_d74956440763bd09c76ec623efeb322aa89be8ef6410b9125d4e2cb1aeeb69c0"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 20
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 4164
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 4164
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros2Std_msgsMsgHeader = _field(default_factory=lambda: Ros2Std_msgsMsgHeader())
    joint_names: _py_list[_py_str] = _field(default_factory=lambda: [])
    points: _py_list[_record_Ros2Trajectory_msgsMsgJointTrajectoryPoint] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(4164)
        _write_Ros2Trajectory_msgsMsgJointTrajectory(writer, self)
        wire = writer.finish()
        return _wire(wire, 20, 4164)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Trajectory_msgsMsgJointTrajectory:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 20, 4164))
        value = _read_Ros2Trajectory_msgsMsgJointTrajectory(reader)
        reader.end()
        return value


_record_Ros2Trajectory_msgsMsgJointTrajectory = Ros2Trajectory_msgsMsgJointTrajectory


def _write_Ros2Trajectory_msgsMsgJointTrajectory(writer, value):
    if type(value) is not Ros2Trajectory_msgsMsgJointTrajectory:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros2Std_msgsMsgHeader(writer, _part0)
    _part1 = value.joint_names
    if type(_part1) not in (list, tuple):
        raise TypeError("array value required")
    _count1 = len(_part1)
    if _count1 > 12:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        _write_text(writer, _element, 64)
    _part2 = value.points
    if type(_part2) not in (list, tuple):
        raise TypeError("array value required")
    _count2 = len(_part2)
    if _count2 > 8:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        _write_Ros2Trajectory_msgsMsgJointTrajectoryPoint(writer, _element)
    if not 20 <= len(writer.data) - _start <= 4164:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Trajectory_msgsMsgJointTrajectory(reader):
    _start = reader.position
    value = Ros2Trajectory_msgsMsgJointTrajectory()
    value.header = _read_Ros2Std_msgsMsgHeader(reader)
    value.joint_names = [_read_text(reader, 64) for _ in range(_read_count(reader, 12, 4))]
    value.points = [
        _read_Ros2Trajectory_msgsMsgJointTrajectoryPoint(reader) for _ in range(_read_count(reader, 8, 24))
    ]
    if not 20 <= reader.position - _start <= 4164:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Geometry_msgsMsgVector3:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "geometry_msgs/msg/Vector3"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e"
    )
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
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 24, 24))
        value = _read_Ros2Geometry_msgsMsgVector3(reader)
        reader.end()
        return value


_record_Ros2Geometry_msgsMsgVector3 = Ros2Geometry_msgsMsgVector3


def _write_Ros2Geometry_msgsMsgVector3(writer, value):
    if type(value) is not Ros2Geometry_msgsMsgVector3:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.x
    writer.f64(_part0)
    _part1 = value.y
    writer.f64(_part1)
    _part2 = value.z
    writer.f64(_part2)
    if not 24 <= len(writer.data) - _start <= 24:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Geometry_msgsMsgVector3(reader):
    _start = reader.position
    value = Ros2Geometry_msgsMsgVector3()
    value.x = reader.f64()
    value.y = reader.f64()
    value.z = reader.f64()
    if not 24 <= reader.position - _start <= 24:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Geometry_msgsMsgQuaternion:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "geometry_msgs/msg/Quaternion"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672"
    )
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
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 32, 32))
        value = _read_Ros2Geometry_msgsMsgQuaternion(reader)
        reader.end()
        return value


_record_Ros2Geometry_msgsMsgQuaternion = Ros2Geometry_msgsMsgQuaternion


def _write_Ros2Geometry_msgsMsgQuaternion(writer, value):
    if type(value) is not Ros2Geometry_msgsMsgQuaternion:
        raise TypeError("exact generated record required")
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
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Geometry_msgsMsgQuaternion(reader):
    _start = reader.position
    value = Ros2Geometry_msgsMsgQuaternion()
    value.x = reader.f64()
    value.y = reader.f64()
    value.z = reader.f64()
    value.w = reader.f64()
    if not 32 <= reader.position - _start <= 32:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Geometry_msgsMsgTransform:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "geometry_msgs/msg/Transform"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 56
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 56
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 56
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    translation: _record_Ros2Geometry_msgsMsgVector3 = _field(
        default_factory=lambda: Ros2Geometry_msgsMsgVector3()
    )
    rotation: _record_Ros2Geometry_msgsMsgQuaternion = _field(
        default_factory=lambda: Ros2Geometry_msgsMsgQuaternion()
    )

    def encode(self):
        writer = _Writer(56)
        _write_Ros2Geometry_msgsMsgTransform(writer, self)
        wire = writer.finish()
        return _wire(wire, 56, 56)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Geometry_msgsMsgTransform:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 56, 56))
        value = _read_Ros2Geometry_msgsMsgTransform(reader)
        reader.end()
        return value


_record_Ros2Geometry_msgsMsgTransform = Ros2Geometry_msgsMsgTransform


def _write_Ros2Geometry_msgsMsgTransform(writer, value):
    if type(value) is not Ros2Geometry_msgsMsgTransform:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.translation
    _write_Ros2Geometry_msgsMsgVector3(writer, _part0)
    _part1 = value.rotation
    _write_Ros2Geometry_msgsMsgQuaternion(writer, _part1)
    if not 56 <= len(writer.data) - _start <= 56:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Geometry_msgsMsgTransform(reader):
    _start = reader.position
    value = Ros2Geometry_msgsMsgTransform()
    value.translation = _read_Ros2Geometry_msgsMsgVector3(reader)
    value.rotation = _read_Ros2Geometry_msgsMsgQuaternion(reader)
    if not 56 <= reader.position - _start <= 56:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Geometry_msgsMsgTwist:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "geometry_msgs/msg/Twist"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 48
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 48
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 48
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    linear: _record_Ros2Geometry_msgsMsgVector3 = _field(
        default_factory=lambda: Ros2Geometry_msgsMsgVector3()
    )
    angular: _record_Ros2Geometry_msgsMsgVector3 = _field(
        default_factory=lambda: Ros2Geometry_msgsMsgVector3()
    )

    def encode(self):
        writer = _Writer(48)
        _write_Ros2Geometry_msgsMsgTwist(writer, self)
        wire = writer.finish()
        return _wire(wire, 48, 48)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Geometry_msgsMsgTwist:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 48, 48))
        value = _read_Ros2Geometry_msgsMsgTwist(reader)
        reader.end()
        return value


_record_Ros2Geometry_msgsMsgTwist = Ros2Geometry_msgsMsgTwist


def _write_Ros2Geometry_msgsMsgTwist(writer, value):
    if type(value) is not Ros2Geometry_msgsMsgTwist:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.linear
    _write_Ros2Geometry_msgsMsgVector3(writer, _part0)
    _part1 = value.angular
    _write_Ros2Geometry_msgsMsgVector3(writer, _part1)
    if not 48 <= len(writer.data) - _start <= 48:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Geometry_msgsMsgTwist(reader):
    _start = reader.position
    value = Ros2Geometry_msgsMsgTwist()
    value.linear = _read_Ros2Geometry_msgsMsgVector3(reader)
    value.angular = _read_Ros2Geometry_msgsMsgVector3(reader)
    if not 48 <= reader.position - _start <= 48:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "trajectory_msgs/msg/MultiDOFJointTrajectoryPoint"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_6590b7ca1cdaa89da04b7a661266e2d4c6e3e2668dc90505a7c24d7be8a43242"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 20
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 324
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 324
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    transforms: _py_list[_record_Ros2Geometry_msgsMsgTransform] = _field(default_factory=lambda: [])
    velocities: _py_list[_record_Ros2Geometry_msgsMsgTwist] = _field(default_factory=lambda: [])
    accelerations: _py_list[_record_Ros2Geometry_msgsMsgTwist] = _field(default_factory=lambda: [])
    time_from_start: _record_Ros2Builtin_interfacesMsgDuration = _field(
        default_factory=lambda: Ros2Builtin_interfacesMsgDuration()
    )

    def encode(self):
        writer = _Writer(324)
        _write_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(writer, self)
        wire = writer.finish()
        return _wire(wire, 20, 324)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 20, 324))
        value = _read_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(reader)
        reader.end()
        return value


_record_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint = (
    Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
)


def _write_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(writer, value):
    if type(value) is not Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.transforms
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 > 2:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count0, 4)
    for _index in range(_count0):
        _element = _part0[_index]
        _write_Ros2Geometry_msgsMsgTransform(writer, _element)
    _part1 = value.velocities
    if type(_part1) not in (list, tuple):
        raise TypeError("array value required")
    _count1 = len(_part1)
    if _count1 > 2:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        _write_Ros2Geometry_msgsMsgTwist(writer, _element)
    _part2 = value.accelerations
    if type(_part2) not in (list, tuple):
        raise TypeError("array value required")
    _count2 = len(_part2)
    if _count2 > 2:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        _write_Ros2Geometry_msgsMsgTwist(writer, _element)
    _part3 = value.time_from_start
    _write_Ros2Builtin_interfacesMsgDuration(writer, _part3)
    if not 20 <= len(writer.data) - _start <= 324:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(reader):
    _start = reader.position
    value = Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint()
    value.transforms = [
        _read_Ros2Geometry_msgsMsgTransform(reader) for _ in range(_read_count(reader, 2, 56))
    ]
    value.velocities = [_read_Ros2Geometry_msgsMsgTwist(reader) for _ in range(_read_count(reader, 2, 48))]
    value.accelerations = [_read_Ros2Geometry_msgsMsgTwist(reader) for _ in range(_read_count(reader, 2, 48))]
    value.time_from_start = _read_Ros2Builtin_interfacesMsgDuration(reader)
    if not 20 <= reader.position - _start <= 324:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Trajectory_msgsMsgMultiDOFJointTrajectory:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "trajectory_msgs/msg/MultiDOFJointTrajectory"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_6ea66f146cdce31369361e521be484d2c39bca818cc4b2069e1209d250ec2401"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 20
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1516
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1516
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros2Std_msgsMsgHeader = _field(default_factory=lambda: Ros2Std_msgsMsgHeader())
    joint_names: _py_list[_py_str] = _field(default_factory=lambda: [])
    points: _py_list[_record_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint] = _field(
        default_factory=lambda: []
    )

    def encode(self):
        writer = _Writer(1516)
        _write_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory(writer, self)
        wire = writer.finish()
        return _wire(wire, 20, 1516)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Trajectory_msgsMsgMultiDOFJointTrajectory:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 20, 1516))
        value = _read_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory(reader)
        reader.end()
        return value


_record_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory = Ros2Trajectory_msgsMsgMultiDOFJointTrajectory


def _write_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory(writer, value):
    if type(value) is not Ros2Trajectory_msgsMsgMultiDOFJointTrajectory:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros2Std_msgsMsgHeader(writer, _part0)
    _part1 = value.joint_names
    if type(_part1) not in (list, tuple):
        raise TypeError("array value required")
    _count1 = len(_part1)
    if _count1 > 2:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        _write_text(writer, _element, 64)
    _part2 = value.points
    if type(_part2) not in (list, tuple):
        raise TypeError("array value required")
    _count2 = len(_part2)
    if _count2 > 4:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        _write_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(writer, _element)
    if not 20 <= len(writer.data) - _start <= 1516:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory(reader):
    _start = reader.position
    value = Ros2Trajectory_msgsMsgMultiDOFJointTrajectory()
    value.header = _read_Ros2Std_msgsMsgHeader(reader)
    value.joint_names = [_read_text(reader, 64) for _ in range(_read_count(reader, 2, 4))]
    value.points = [
        _read_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(reader)
        for _ in range(_read_count(reader, 4, 20))
    ]
    if not 20 <= reader.position - _start <= 1516:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Control_msgsMsgJointTolerance:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "control_msgs/msg/JointTolerance"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_ad7701ac1cb0dd68a947577272964b0d6051d1846019de97e9c9d0f7be7b2fa2"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 28
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 92
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 92
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    name: _py_str = ""
    position: _py_float = 0.0
    velocity: _py_float = 0.0
    acceleration: _py_float = 0.0

    def encode(self):
        writer = _Writer(92)
        _write_Ros2Control_msgsMsgJointTolerance(writer, self)
        wire = writer.finish()
        return _wire(wire, 28, 92)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Control_msgsMsgJointTolerance:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 28, 92))
        value = _read_Ros2Control_msgsMsgJointTolerance(reader)
        reader.end()
        return value


_record_Ros2Control_msgsMsgJointTolerance = Ros2Control_msgsMsgJointTolerance


def _write_Ros2Control_msgsMsgJointTolerance(writer, value):
    if type(value) is not Ros2Control_msgsMsgJointTolerance:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.name
    _write_text(writer, _part0, 64)
    _part1 = value.position
    writer.f64(_part1)
    _part2 = value.velocity
    writer.f64(_part2)
    _part3 = value.acceleration
    writer.f64(_part3)
    if not 28 <= len(writer.data) - _start <= 92:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Control_msgsMsgJointTolerance(reader):
    _start = reader.position
    value = Ros2Control_msgsMsgJointTolerance()
    value.name = _read_text(reader, 64)
    value.position = reader.f64()
    value.velocity = reader.f64()
    value.acceleration = reader.f64()
    if not 28 <= reader.position - _start <= 92:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Control_msgsMsgJointComponentTolerance:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "control_msgs/msg/JointComponentTolerance"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_658f3d3f180b301e5c612188390187ec4034064976f133018048bb1fdec55342"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 30
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 542
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 542
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = [
        {"name": "X_AXIS", "type": "uint16", "native_type": "uint16", "literal": "1", "value": "1"},
        {"name": "Y_AXIS", "type": "uint16", "native_type": "uint16", "literal": "2", "value": "2"},
        {"name": "Z_AXIS", "type": "uint16", "native_type": "uint16", "literal": "3", "value": "3"},
        {"name": "TRANSLATION", "type": "uint16", "native_type": "uint16", "literal": "4", "value": "4"},
        {"name": "ROTATION", "type": "uint16", "native_type": "uint16", "literal": "5", "value": "5"},
    ]
    X_AXIS: _ClassVar = 1
    Y_AXIS: _ClassVar = 2
    Z_AXIS: _ClassVar = 3
    TRANSLATION: _ClassVar = 4
    ROTATION: _ClassVar = 5
    joint_name: _py_str = ""
    component: _py_int = 0
    position: _py_float = 0.0
    velocity: _py_float = 0.0
    acceleration: _py_float = 0.0

    def encode(self):
        writer = _Writer(542)
        _write_Ros2Control_msgsMsgJointComponentTolerance(writer, self)
        wire = writer.finish()
        return _wire(wire, 30, 542)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Control_msgsMsgJointComponentTolerance:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 30, 542))
        value = _read_Ros2Control_msgsMsgJointComponentTolerance(reader)
        reader.end()
        return value


_record_Ros2Control_msgsMsgJointComponentTolerance = Ros2Control_msgsMsgJointComponentTolerance


def _write_Ros2Control_msgsMsgJointComponentTolerance(writer, value):
    if type(value) is not Ros2Control_msgsMsgJointComponentTolerance:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.joint_name
    _write_text(writer, _part0, 512)
    _part1 = value.component
    writer.integer(_part1, 2, False)
    _part2 = value.position
    writer.f64(_part2)
    _part3 = value.velocity
    writer.f64(_part3)
    _part4 = value.acceleration
    writer.f64(_part4)
    if not 30 <= len(writer.data) - _start <= 542:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Control_msgsMsgJointComponentTolerance(reader):
    _start = reader.position
    value = Ros2Control_msgsMsgJointComponentTolerance()
    value.joint_name = _read_text(reader, 512)
    value.component = reader.integer(2, False)
    value.position = reader.f64()
    value.velocity = reader.f64()
    value.acceleration = reader.f64()
    if not 30 <= reader.position - _start <= 542:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Control_msgsActionFollowJointTrajectory_Goal:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "control_msgs/action/FollowJointTrajectory_Goal"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_8945d5b29832f1190b0a4f8c4af4e82686c4b913413affe9c0945570b4fb1f16"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 64
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 20920
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 20920
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    trajectory: _record_Ros2Trajectory_msgsMsgJointTrajectory = _field(
        default_factory=lambda: Ros2Trajectory_msgsMsgJointTrajectory()
    )
    multi_dof_trajectory: _record_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory = _field(
        default_factory=lambda: Ros2Trajectory_msgsMsgMultiDOFJointTrajectory()
    )
    path_tolerance: _py_list[_record_Ros2Control_msgsMsgJointTolerance] = _field(default_factory=lambda: [])
    component_path_tolerance: _py_list[_record_Ros2Control_msgsMsgJointComponentTolerance] = _field(
        default_factory=lambda: []
    )
    goal_tolerance: _py_list[_record_Ros2Control_msgsMsgJointTolerance] = _field(default_factory=lambda: [])
    component_goal_tolerance: _py_list[_record_Ros2Control_msgsMsgJointComponentTolerance] = _field(
        default_factory=lambda: []
    )
    goal_time_tolerance: _record_Ros2Builtin_interfacesMsgDuration = _field(
        default_factory=lambda: Ros2Builtin_interfacesMsgDuration()
    )

    def encode(self):
        writer = _Writer(20920)
        _write_Ros2Control_msgsActionFollowJointTrajectory_Goal(writer, self)
        wire = writer.finish()
        return _wire(wire, 64, 20920)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Control_msgsActionFollowJointTrajectory_Goal:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 64, 20920))
        value = _read_Ros2Control_msgsActionFollowJointTrajectory_Goal(reader)
        reader.end()
        return value


_record_Ros2Control_msgsActionFollowJointTrajectory_Goal = Ros2Control_msgsActionFollowJointTrajectory_Goal


def _write_Ros2Control_msgsActionFollowJointTrajectory_Goal(writer, value):
    if type(value) is not Ros2Control_msgsActionFollowJointTrajectory_Goal:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.trajectory
    _write_Ros2Trajectory_msgsMsgJointTrajectory(writer, _part0)
    _part1 = value.multi_dof_trajectory
    _write_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory(writer, _part1)
    _part2 = value.path_tolerance
    if type(_part2) not in (list, tuple):
        raise TypeError("array value required")
    _count2 = len(_part2)
    if _count2 > 12:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        _write_Ros2Control_msgsMsgJointTolerance(writer, _element)
    _part3 = value.component_path_tolerance
    if type(_part3) not in (list, tuple):
        raise TypeError("array value required")
    _count3 = len(_part3)
    if _count3 > 12:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count3, 4)
    for _index in range(_count3):
        _element = _part3[_index]
        _write_Ros2Control_msgsMsgJointComponentTolerance(writer, _element)
    _part4 = value.goal_tolerance
    if type(_part4) not in (list, tuple):
        raise TypeError("array value required")
    _count4 = len(_part4)
    if _count4 > 12:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count4, 4)
    for _index in range(_count4):
        _element = _part4[_index]
        _write_Ros2Control_msgsMsgJointTolerance(writer, _element)
    _part5 = value.component_goal_tolerance
    if type(_part5) not in (list, tuple):
        raise TypeError("array value required")
    _count5 = len(_part5)
    if _count5 > 12:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count5, 4)
    for _index in range(_count5):
        _element = _part5[_index]
        _write_Ros2Control_msgsMsgJointComponentTolerance(writer, _element)
    _part6 = value.goal_time_tolerance
    _write_Ros2Builtin_interfacesMsgDuration(writer, _part6)
    if not 64 <= len(writer.data) - _start <= 20920:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Control_msgsActionFollowJointTrajectory_Goal(reader):
    _start = reader.position
    value = Ros2Control_msgsActionFollowJointTrajectory_Goal()
    value.trajectory = _read_Ros2Trajectory_msgsMsgJointTrajectory(reader)
    value.multi_dof_trajectory = _read_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory(reader)
    value.path_tolerance = [
        _read_Ros2Control_msgsMsgJointTolerance(reader) for _ in range(_read_count(reader, 12, 28))
    ]
    value.component_path_tolerance = [
        _read_Ros2Control_msgsMsgJointComponentTolerance(reader) for _ in range(_read_count(reader, 12, 30))
    ]
    value.goal_tolerance = [
        _read_Ros2Control_msgsMsgJointTolerance(reader) for _ in range(_read_count(reader, 12, 28))
    ]
    value.component_goal_tolerance = [
        _read_Ros2Control_msgsMsgJointComponentTolerance(reader) for _ in range(_read_count(reader, 12, 30))
    ]
    value.goal_time_tolerance = _read_Ros2Builtin_interfacesMsgDuration(reader)
    if not 64 <= reader.position - _start <= 20920:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Control_msgsActionFollowJointTrajectory_Result:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "control_msgs/action/FollowJointTrajectory_Result"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_c698e3a3a772735ff6027b04af28e9bc88d6b7138863ce5737aa090f543dac70"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 4104
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 4104
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = [
        {"name": "SUCCESSFUL", "type": "int32", "native_type": "int32", "literal": "0", "value": "0"},
        {"name": "INVALID_GOAL", "type": "int32", "native_type": "int32", "literal": "-1", "value": "-1"},
        {"name": "INVALID_JOINTS", "type": "int32", "native_type": "int32", "literal": "-2", "value": "-2"},
        {
            "name": "OLD_HEADER_TIMESTAMP",
            "type": "int32",
            "native_type": "int32",
            "literal": "-3",
            "value": "-3",
        },
        {
            "name": "PATH_TOLERANCE_VIOLATED",
            "type": "int32",
            "native_type": "int32",
            "literal": "-4",
            "value": "-4",
        },
        {
            "name": "GOAL_TOLERANCE_VIOLATED",
            "type": "int32",
            "native_type": "int32",
            "literal": "-5",
            "value": "-5",
        },
    ]
    SUCCESSFUL: _ClassVar = 0
    INVALID_GOAL: _ClassVar = -1
    INVALID_JOINTS: _ClassVar = -2
    OLD_HEADER_TIMESTAMP: _ClassVar = -3
    PATH_TOLERANCE_VIOLATED: _ClassVar = -4
    GOAL_TOLERANCE_VIOLATED: _ClassVar = -5
    error_code: _py_int = 0
    error_string: _py_str = ""

    def encode(self):
        writer = _Writer(4104)
        _write_Ros2Control_msgsActionFollowJointTrajectory_Result(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 4104)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Control_msgsActionFollowJointTrajectory_Result:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 8, 4104))
        value = _read_Ros2Control_msgsActionFollowJointTrajectory_Result(reader)
        reader.end()
        return value


_record_Ros2Control_msgsActionFollowJointTrajectory_Result = (
    Ros2Control_msgsActionFollowJointTrajectory_Result
)


def _write_Ros2Control_msgsActionFollowJointTrajectory_Result(writer, value):
    if type(value) is not Ros2Control_msgsActionFollowJointTrajectory_Result:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.error_code
    writer.integer(_part0, 4, True)
    _part1 = value.error_string
    _write_text(writer, _part1, 4096)
    if not 8 <= len(writer.data) - _start <= 4104:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Control_msgsActionFollowJointTrajectory_Result(reader):
    _start = reader.position
    value = Ros2Control_msgsActionFollowJointTrajectory_Result()
    value.error_code = reader.integer(4, True)
    value.error_string = _read_text(reader, 4096)
    if not 8 <= reader.position - _start <= 4104:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Control_msgsActionFollowJointTrajectory_Feedback:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "control_msgs/action/FollowJointTrajectory_Feedback"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_68f3809217bd914cd971e1365ca825111c1394b2587c6989736adcaa8a40a7cb"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 152
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 4128
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 4128
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros2Std_msgsMsgHeader = _field(default_factory=lambda: Ros2Std_msgsMsgHeader())
    joint_names: _py_list[_py_str] = _field(default_factory=lambda: [])
    desired: _record_Ros2Trajectory_msgsMsgJointTrajectoryPoint = _field(
        default_factory=lambda: Ros2Trajectory_msgsMsgJointTrajectoryPoint()
    )
    actual: _record_Ros2Trajectory_msgsMsgJointTrajectoryPoint = _field(
        default_factory=lambda: Ros2Trajectory_msgsMsgJointTrajectoryPoint()
    )
    error: _record_Ros2Trajectory_msgsMsgJointTrajectoryPoint = _field(
        default_factory=lambda: Ros2Trajectory_msgsMsgJointTrajectoryPoint()
    )
    multi_dof_joint_names: _py_list[_py_str] = _field(default_factory=lambda: [])
    multi_dof_desired: _record_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint = _field(
        default_factory=lambda: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint()
    )
    multi_dof_actual: _record_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint = _field(
        default_factory=lambda: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint()
    )
    multi_dof_error: _record_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint = _field(
        default_factory=lambda: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint()
    )

    def encode(self):
        writer = _Writer(4128)
        _write_Ros2Control_msgsActionFollowJointTrajectory_Feedback(writer, self)
        wire = writer.finish()
        return _wire(wire, 152, 4128)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Control_msgsActionFollowJointTrajectory_Feedback:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 152, 4128))
        value = _read_Ros2Control_msgsActionFollowJointTrajectory_Feedback(reader)
        reader.end()
        return value


_record_Ros2Control_msgsActionFollowJointTrajectory_Feedback = (
    Ros2Control_msgsActionFollowJointTrajectory_Feedback
)


def _write_Ros2Control_msgsActionFollowJointTrajectory_Feedback(writer, value):
    if type(value) is not Ros2Control_msgsActionFollowJointTrajectory_Feedback:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros2Std_msgsMsgHeader(writer, _part0)
    _part1 = value.joint_names
    if type(_part1) not in (list, tuple):
        raise TypeError("array value required")
    _count1 = len(_part1)
    if _count1 > 12:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        _write_text(writer, _element, 64)
    _part2 = value.desired
    _write_Ros2Trajectory_msgsMsgJointTrajectoryPoint(writer, _part2)
    _part3 = value.actual
    _write_Ros2Trajectory_msgsMsgJointTrajectoryPoint(writer, _part3)
    _part4 = value.error
    _write_Ros2Trajectory_msgsMsgJointTrajectoryPoint(writer, _part4)
    _part5 = value.multi_dof_joint_names
    if type(_part5) not in (list, tuple):
        raise TypeError("array value required")
    _count5 = len(_part5)
    if _count5 > 2:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count5, 4)
    for _index in range(_count5):
        _element = _part5[_index]
        _write_text(writer, _element, 512)
    _part6 = value.multi_dof_desired
    _write_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(writer, _part6)
    _part7 = value.multi_dof_actual
    _write_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(writer, _part7)
    _part8 = value.multi_dof_error
    _write_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(writer, _part8)
    if not 152 <= len(writer.data) - _start <= 4128:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Control_msgsActionFollowJointTrajectory_Feedback(reader):
    _start = reader.position
    value = Ros2Control_msgsActionFollowJointTrajectory_Feedback()
    value.header = _read_Ros2Std_msgsMsgHeader(reader)
    value.joint_names = [_read_text(reader, 64) for _ in range(_read_count(reader, 12, 4))]
    value.desired = _read_Ros2Trajectory_msgsMsgJointTrajectoryPoint(reader)
    value.actual = _read_Ros2Trajectory_msgsMsgJointTrajectoryPoint(reader)
    value.error = _read_Ros2Trajectory_msgsMsgJointTrajectoryPoint(reader)
    value.multi_dof_joint_names = [_read_text(reader, 512) for _ in range(_read_count(reader, 2, 4))]
    value.multi_dof_desired = _read_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(reader)
    value.multi_dof_actual = _read_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(reader)
    value.multi_dof_error = _read_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(reader)
    if not 152 <= reader.position - _start <= 4128:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Kuka_driver_interfacesMsgFRIState:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "kuka_driver_interfaces/msg/FRIState"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_27be8431e4a8cda3bb4d6d5a8a69fd86a0d07a1d920799c232d63a4941ee6716"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 40
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 40
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 40
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    session_state: _py_int = 0
    connection_quality: _py_int = 0
    safety_state: _py_int = 0
    command_mode: _py_int = 0
    control_mode: _py_int = 0
    operation_mode: _py_int = 0
    drive_state: _py_int = 0
    overlay_type: _py_int = 0
    tracking_performance: _py_float = 0.0

    def encode(self):
        writer = _Writer(40)
        _write_Ros2Kuka_driver_interfacesMsgFRIState(writer, self)
        wire = writer.finish()
        return _wire(wire, 40, 40)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Kuka_driver_interfacesMsgFRIState:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 40, 40))
        value = _read_Ros2Kuka_driver_interfacesMsgFRIState(reader)
        reader.end()
        return value


_record_Ros2Kuka_driver_interfacesMsgFRIState = Ros2Kuka_driver_interfacesMsgFRIState


def _write_Ros2Kuka_driver_interfacesMsgFRIState(writer, value):
    if type(value) is not Ros2Kuka_driver_interfacesMsgFRIState:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.session_state
    writer.integer(_part0, 4, True)
    _part1 = value.connection_quality
    writer.integer(_part1, 4, True)
    _part2 = value.safety_state
    writer.integer(_part2, 4, True)
    _part3 = value.command_mode
    writer.integer(_part3, 4, True)
    _part4 = value.control_mode
    writer.integer(_part4, 4, True)
    _part5 = value.operation_mode
    writer.integer(_part5, 4, True)
    _part6 = value.drive_state
    writer.integer(_part6, 4, True)
    _part7 = value.overlay_type
    writer.integer(_part7, 4, True)
    _part8 = value.tracking_performance
    writer.f64(_part8)
    if not 40 <= len(writer.data) - _start <= 40:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Kuka_driver_interfacesMsgFRIState(reader):
    _start = reader.position
    value = Ros2Kuka_driver_interfacesMsgFRIState()
    value.session_state = reader.integer(4, True)
    value.connection_quality = reader.integer(4, True)
    value.safety_state = reader.integer(4, True)
    value.command_mode = reader.integer(4, True)
    value.control_mode = reader.integer(4, True)
    value.operation_mode = reader.integer(4, True)
    value.drive_state = reader.integer(4, True)
    value.overlay_type = reader.integer(4, True)
    value.tracking_performance = reader.f64()
    if not 40 <= reader.position - _start <= 40:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Kuka_driver_interfacesMsgFRIStateArray:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "kuka_driver_interfaces/msg/FRIStateArray"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_4312aa4103fd0c92fe7cd9d1201c40e327b05812cdc60130d11b8c2e0eb47449"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1736
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1736
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    robot_names: _py_list[_py_str] = _field(default_factory=lambda: [])
    states: _py_list[_record_Ros2Kuka_driver_interfacesMsgFRIState] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(1736)
        _write_Ros2Kuka_driver_interfacesMsgFRIStateArray(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 1736)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Kuka_driver_interfacesMsgFRIStateArray:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 8, 1736))
        value = _read_Ros2Kuka_driver_interfacesMsgFRIStateArray(reader)
        reader.end()
        return value


_record_Ros2Kuka_driver_interfacesMsgFRIStateArray = Ros2Kuka_driver_interfacesMsgFRIStateArray


def _write_Ros2Kuka_driver_interfacesMsgFRIStateArray(writer, value):
    if type(value) is not Ros2Kuka_driver_interfacesMsgFRIStateArray:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.robot_names
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 > 16:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count0, 4)
    for _index in range(_count0):
        _element = _part0[_index]
        _write_text(writer, _element, 64)
    _part1 = value.states
    if type(_part1) not in (list, tuple):
        raise TypeError("array value required")
    _count1 = len(_part1)
    if _count1 > 16:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        _write_Ros2Kuka_driver_interfacesMsgFRIState(writer, _element)
    if not 8 <= len(writer.data) - _start <= 1736:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Kuka_driver_interfacesMsgFRIStateArray(reader):
    _start = reader.position
    value = Ros2Kuka_driver_interfacesMsgFRIStateArray()
    value.robot_names = [_read_text(reader, 64) for _ in range(_read_count(reader, 16, 4))]
    value.states = [
        _read_Ros2Kuka_driver_interfacesMsgFRIState(reader) for _ in range(_read_count(reader, 16, 40))
    ]
    if not 8 <= reader.position - _start <= 1736:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Kuka_driver_interfacesMsgFriConfiguration:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "kuka_driver_interfaces/msg/FriConfiguration"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_a60335766ad606adc5699c833cc6bc43adc3067691bcdbf587bbfb56e8a7127e"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    receive_multiplier: _py_int = 0
    send_period_ms: _py_int = 0

    def encode(self):
        writer = _Writer(8)
        _write_Ros2Kuka_driver_interfacesMsgFriConfiguration(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 8)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Kuka_driver_interfacesMsgFriConfiguration:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 8, 8))
        value = _read_Ros2Kuka_driver_interfacesMsgFriConfiguration(reader)
        reader.end()
        return value


_record_Ros2Kuka_driver_interfacesMsgFriConfiguration = Ros2Kuka_driver_interfacesMsgFriConfiguration


def _write_Ros2Kuka_driver_interfacesMsgFriConfiguration(writer, value):
    if type(value) is not Ros2Kuka_driver_interfacesMsgFriConfiguration:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.receive_multiplier
    writer.integer(_part0, 4, True)
    _part1 = value.send_period_ms
    writer.integer(_part1, 4, True)
    if not 8 <= len(writer.data) - _start <= 8:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Kuka_driver_interfacesMsgFriConfiguration(reader):
    _start = reader.position
    value = Ros2Kuka_driver_interfacesMsgFriConfiguration()
    value.receive_multiplier = reader.integer(4, True)
    value.send_period_ms = reader.integer(4, True)
    if not 8 <= reader.position - _start <= 8:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Kuka_driver_interfacesMsgHardwareEvent:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "kuka_driver_interfaces/msg/HardwareEvent"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_cb542e9311957712257c6d8ae273b3d2d2339760978e11e3798982c84fbc5e68"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 5
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 517
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 517
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    robot_name: _py_str = ""
    event: _py_int = 0

    def encode(self):
        writer = _Writer(517)
        _write_Ros2Kuka_driver_interfacesMsgHardwareEvent(writer, self)
        wire = writer.finish()
        return _wire(wire, 5, 517)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Kuka_driver_interfacesMsgHardwareEvent:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 5, 517))
        value = _read_Ros2Kuka_driver_interfacesMsgHardwareEvent(reader)
        reader.end()
        return value


_record_Ros2Kuka_driver_interfacesMsgHardwareEvent = Ros2Kuka_driver_interfacesMsgHardwareEvent


def _write_Ros2Kuka_driver_interfacesMsgHardwareEvent(writer, value):
    if type(value) is not Ros2Kuka_driver_interfacesMsgHardwareEvent:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.robot_name
    _write_text(writer, _part0, 512)
    _part1 = value.event
    writer.integer(_part1, 1, False)
    if not 5 <= len(writer.data) - _start <= 517:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Kuka_driver_interfacesMsgHardwareEvent(reader):
    _start = reader.position
    value = Ros2Kuka_driver_interfacesMsgHardwareEvent()
    value.robot_name = _read_text(reader, 512)
    value.event = reader.integer(1, False)
    if not 5 <= reader.position - _start <= 517:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Kuka_driver_interfacesMsgKssStatus:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "kuka_driver_interfaces/msg/KssStatus"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_b28bc2f19a0f410f0cd1d5b1d59daf1d09acb3e8312b4267f622a4d119f16b82"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 9
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 9
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 9
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = [
        {"name": "UNSPECIFIED", "type": "uint8", "native_type": "uint8", "literal": "0", "value": "0"},
        {
            "name": "JOINT_POSITION_CONTROL",
            "type": "uint8",
            "native_type": "uint8",
            "literal": "1",
            "value": "1",
        },
        {
            "name": "CARTESIAN_POSITION_CONTROL",
            "type": "uint8",
            "native_type": "uint8",
            "literal": "5",
            "value": "5",
        },
        {"name": "RSI_4MS", "type": "uint8", "native_type": "uint8", "literal": "1", "value": "1"},
        {"name": "RSI_12MS", "type": "uint8", "native_type": "uint8", "literal": "2", "value": "2"},
        {"name": "T1", "type": "uint8", "native_type": "uint8", "literal": "1", "value": "1"},
        {"name": "T2", "type": "uint8", "native_type": "uint8", "literal": "2", "value": "2"},
        {"name": "AUT", "type": "uint8", "native_type": "uint8", "literal": "3", "value": "3"},
        {"name": "EXT", "type": "uint8", "native_type": "uint8", "literal": "4", "value": "4"},
    ]
    UNSPECIFIED: _ClassVar = 0
    JOINT_POSITION_CONTROL: _ClassVar = 1
    CARTESIAN_POSITION_CONTROL: _ClassVar = 5
    RSI_4MS: _ClassVar = 1
    RSI_12MS: _ClassVar = 2
    T1: _ClassVar = 1
    T2: _ClassVar = 2
    AUT: _ClassVar = 3
    EXT: _ClassVar = 4
    control_mode: _py_int = 0
    cycle_time: _py_int = 0
    drives_powered: _py_bool = False
    emergency_stop: _py_bool = False
    guard_stop: _py_bool = False
    in_motion: _py_bool = False
    motion_possible: _py_bool = False
    operation_mode: _py_int = 0
    robot_stopped: _py_bool = False

    def encode(self):
        writer = _Writer(9)
        _write_Ros2Kuka_driver_interfacesMsgKssStatus(writer, self)
        wire = writer.finish()
        return _wire(wire, 9, 9)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Kuka_driver_interfacesMsgKssStatus:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 9, 9))
        value = _read_Ros2Kuka_driver_interfacesMsgKssStatus(reader)
        reader.end()
        return value


_record_Ros2Kuka_driver_interfacesMsgKssStatus = Ros2Kuka_driver_interfacesMsgKssStatus


def _write_Ros2Kuka_driver_interfacesMsgKssStatus(writer, value):
    if type(value) is not Ros2Kuka_driver_interfacesMsgKssStatus:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.control_mode
    writer.integer(_part0, 1, False)
    _part1 = value.cycle_time
    writer.integer(_part1, 1, False)
    _part2 = value.drives_powered
    if type(_part2) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part2), 1)
    _part3 = value.emergency_stop
    if type(_part3) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part3), 1)
    _part4 = value.guard_stop
    if type(_part4) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part4), 1)
    _part5 = value.in_motion
    if type(_part5) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part5), 1)
    _part6 = value.motion_possible
    if type(_part6) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part6), 1)
    _part7 = value.operation_mode
    writer.integer(_part7, 1, False)
    _part8 = value.robot_stopped
    if type(_part8) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part8), 1)
    if not 9 <= len(writer.data) - _start <= 9:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Kuka_driver_interfacesMsgKssStatus(reader):
    _start = reader.position
    value = Ros2Kuka_driver_interfacesMsgKssStatus()
    value.control_mode = reader.integer(1, False)
    value.cycle_time = reader.integer(1, False)
    value.drives_powered = _read_bool(reader)
    value.emergency_stop = _read_bool(reader)
    value.guard_stop = _read_bool(reader)
    value.in_motion = _read_bool(reader)
    value.motion_possible = _read_bool(reader)
    value.operation_mode = reader.integer(1, False)
    value.robot_stopped = _read_bool(reader)
    if not 9 <= reader.position - _start <= 9:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Kuka_driver_interfacesMsgKssStatusArray:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "kuka_driver_interfaces/msg/KssStatusArray"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_3c8e93b369eefea89c0aa56ab657721edd041ac66e18cfbf4fc4201df60dbebd"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1240
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1240
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    robot_names: _py_list[_py_str] = _field(default_factory=lambda: [])
    statuses: _py_list[_record_Ros2Kuka_driver_interfacesMsgKssStatus] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(1240)
        _write_Ros2Kuka_driver_interfacesMsgKssStatusArray(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 1240)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Kuka_driver_interfacesMsgKssStatusArray:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 8, 1240))
        value = _read_Ros2Kuka_driver_interfacesMsgKssStatusArray(reader)
        reader.end()
        return value


_record_Ros2Kuka_driver_interfacesMsgKssStatusArray = Ros2Kuka_driver_interfacesMsgKssStatusArray


def _write_Ros2Kuka_driver_interfacesMsgKssStatusArray(writer, value):
    if type(value) is not Ros2Kuka_driver_interfacesMsgKssStatusArray:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.robot_names
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 > 16:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count0, 4)
    for _index in range(_count0):
        _element = _part0[_index]
        _write_text(writer, _element, 64)
    _part1 = value.statuses
    if type(_part1) not in (list, tuple):
        raise TypeError("array value required")
    _count1 = len(_part1)
    if _count1 > 16:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        _write_Ros2Kuka_driver_interfacesMsgKssStatus(writer, _element)
    if not 8 <= len(writer.data) - _start <= 1240:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Kuka_driver_interfacesMsgKssStatusArray(reader):
    _start = reader.position
    value = Ros2Kuka_driver_interfacesMsgKssStatusArray()
    value.robot_names = [_read_text(reader, 64) for _ in range(_read_count(reader, 16, 4))]
    value.statuses = [
        _read_Ros2Kuka_driver_interfacesMsgKssStatus(reader) for _ in range(_read_count(reader, 16, 9))
    ]
    if not 8 <= reader.position - _start <= 1240:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Lifecycle_msgsMsgState:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "lifecycle_msgs/msg/State"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_ebd49e5f87ddaa204cc4072ceef9840676c6f65f67448a027e26570dae0ded94"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 5
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 517
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 517
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = [
        {
            "name": "PRIMARY_STATE_UNKNOWN",
            "type": "uint8",
            "native_type": "uint8",
            "literal": "0",
            "value": "0",
        },
        {
            "name": "PRIMARY_STATE_UNCONFIGURED",
            "type": "uint8",
            "native_type": "uint8",
            "literal": "1",
            "value": "1",
        },
        {
            "name": "PRIMARY_STATE_INACTIVE",
            "type": "uint8",
            "native_type": "uint8",
            "literal": "2",
            "value": "2",
        },
        {
            "name": "PRIMARY_STATE_ACTIVE",
            "type": "uint8",
            "native_type": "uint8",
            "literal": "3",
            "value": "3",
        },
        {
            "name": "PRIMARY_STATE_FINALIZED",
            "type": "uint8",
            "native_type": "uint8",
            "literal": "4",
            "value": "4",
        },
        {
            "name": "TRANSITION_STATE_CONFIGURING",
            "type": "uint8",
            "native_type": "uint8",
            "literal": "10",
            "value": "10",
        },
        {
            "name": "TRANSITION_STATE_CLEANINGUP",
            "type": "uint8",
            "native_type": "uint8",
            "literal": "11",
            "value": "11",
        },
        {
            "name": "TRANSITION_STATE_SHUTTINGDOWN",
            "type": "uint8",
            "native_type": "uint8",
            "literal": "12",
            "value": "12",
        },
        {
            "name": "TRANSITION_STATE_ACTIVATING",
            "type": "uint8",
            "native_type": "uint8",
            "literal": "13",
            "value": "13",
        },
        {
            "name": "TRANSITION_STATE_DEACTIVATING",
            "type": "uint8",
            "native_type": "uint8",
            "literal": "14",
            "value": "14",
        },
        {
            "name": "TRANSITION_STATE_ERRORPROCESSING",
            "type": "uint8",
            "native_type": "uint8",
            "literal": "15",
            "value": "15",
        },
    ]
    PRIMARY_STATE_UNKNOWN: _ClassVar = 0
    PRIMARY_STATE_UNCONFIGURED: _ClassVar = 1
    PRIMARY_STATE_INACTIVE: _ClassVar = 2
    PRIMARY_STATE_ACTIVE: _ClassVar = 3
    PRIMARY_STATE_FINALIZED: _ClassVar = 4
    TRANSITION_STATE_CONFIGURING: _ClassVar = 10
    TRANSITION_STATE_CLEANINGUP: _ClassVar = 11
    TRANSITION_STATE_SHUTTINGDOWN: _ClassVar = 12
    TRANSITION_STATE_ACTIVATING: _ClassVar = 13
    TRANSITION_STATE_DEACTIVATING: _ClassVar = 14
    TRANSITION_STATE_ERRORPROCESSING: _ClassVar = 15
    id: _py_int = 0
    label: _py_str = ""

    def encode(self):
        writer = _Writer(517)
        _write_Ros2Lifecycle_msgsMsgState(writer, self)
        wire = writer.finish()
        return _wire(wire, 5, 517)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Lifecycle_msgsMsgState:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 5, 517))
        value = _read_Ros2Lifecycle_msgsMsgState(reader)
        reader.end()
        return value


_record_Ros2Lifecycle_msgsMsgState = Ros2Lifecycle_msgsMsgState


def _write_Ros2Lifecycle_msgsMsgState(writer, value):
    if type(value) is not Ros2Lifecycle_msgsMsgState:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.id
    writer.integer(_part0, 1, False)
    _part1 = value.label
    _write_text(writer, _part1, 512)
    if not 5 <= len(writer.data) - _start <= 517:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Lifecycle_msgsMsgState(reader):
    _start = reader.position
    value = Ros2Lifecycle_msgsMsgState()
    value.id = reader.integer(1, False)
    value.label = _read_text(reader, 512)
    if not 5 <= reader.position - _start <= 517:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Lifecycle_msgsMsgTransition:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "lifecycle_msgs/msg/Transition"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_1f9bb864622854b446a37cf3c6e29e9cf41f8efa37375c5a56205b4c02ed10cb"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 5
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 517
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 517
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = [
        {"name": "TRANSITION_CREATE", "type": "uint8", "native_type": "uint8", "literal": "0", "value": "0"},
        {
            "name": "TRANSITION_CONFIGURE",
            "type": "uint8",
            "native_type": "uint8",
            "literal": "1",
            "value": "1",
        },
        {"name": "TRANSITION_CLEANUP", "type": "uint8", "native_type": "uint8", "literal": "2", "value": "2"},
        {
            "name": "TRANSITION_ACTIVATE",
            "type": "uint8",
            "native_type": "uint8",
            "literal": "3",
            "value": "3",
        },
        {
            "name": "TRANSITION_DEACTIVATE",
            "type": "uint8",
            "native_type": "uint8",
            "literal": "4",
            "value": "4",
        },
        {
            "name": "TRANSITION_UNCONFIGURED_SHUTDOWN",
            "type": "uint8",
            "native_type": "uint8",
            "literal": "5",
            "value": "5",
        },
        {
            "name": "TRANSITION_INACTIVE_SHUTDOWN",
            "type": "uint8",
            "native_type": "uint8",
            "literal": "6",
            "value": "6",
        },
        {
            "name": "TRANSITION_ACTIVE_SHUTDOWN",
            "type": "uint8",
            "native_type": "uint8",
            "literal": "7",
            "value": "7",
        },
        {"name": "TRANSITION_DESTROY", "type": "uint8", "native_type": "uint8", "literal": "8", "value": "8"},
        {
            "name": "TRANSITION_ON_CONFIGURE_SUCCESS",
            "type": "uint8",
            "native_type": "uint8",
            "literal": "10",
            "value": "10",
        },
        {
            "name": "TRANSITION_ON_CONFIGURE_FAILURE",
            "type": "uint8",
            "native_type": "uint8",
            "literal": "11",
            "value": "11",
        },
        {
            "name": "TRANSITION_ON_CONFIGURE_ERROR",
            "type": "uint8",
            "native_type": "uint8",
            "literal": "12",
            "value": "12",
        },
        {
            "name": "TRANSITION_ON_CLEANUP_SUCCESS",
            "type": "uint8",
            "native_type": "uint8",
            "literal": "20",
            "value": "20",
        },
        {
            "name": "TRANSITION_ON_CLEANUP_FAILURE",
            "type": "uint8",
            "native_type": "uint8",
            "literal": "21",
            "value": "21",
        },
        {
            "name": "TRANSITION_ON_CLEANUP_ERROR",
            "type": "uint8",
            "native_type": "uint8",
            "literal": "22",
            "value": "22",
        },
        {
            "name": "TRANSITION_ON_ACTIVATE_SUCCESS",
            "type": "uint8",
            "native_type": "uint8",
            "literal": "30",
            "value": "30",
        },
        {
            "name": "TRANSITION_ON_ACTIVATE_FAILURE",
            "type": "uint8",
            "native_type": "uint8",
            "literal": "31",
            "value": "31",
        },
        {
            "name": "TRANSITION_ON_ACTIVATE_ERROR",
            "type": "uint8",
            "native_type": "uint8",
            "literal": "32",
            "value": "32",
        },
        {
            "name": "TRANSITION_ON_DEACTIVATE_SUCCESS",
            "type": "uint8",
            "native_type": "uint8",
            "literal": "40",
            "value": "40",
        },
        {
            "name": "TRANSITION_ON_DEACTIVATE_FAILURE",
            "type": "uint8",
            "native_type": "uint8",
            "literal": "41",
            "value": "41",
        },
        {
            "name": "TRANSITION_ON_DEACTIVATE_ERROR",
            "type": "uint8",
            "native_type": "uint8",
            "literal": "42",
            "value": "42",
        },
        {
            "name": "TRANSITION_ON_SHUTDOWN_SUCCESS",
            "type": "uint8",
            "native_type": "uint8",
            "literal": "50",
            "value": "50",
        },
        {
            "name": "TRANSITION_ON_SHUTDOWN_FAILURE",
            "type": "uint8",
            "native_type": "uint8",
            "literal": "51",
            "value": "51",
        },
        {
            "name": "TRANSITION_ON_SHUTDOWN_ERROR",
            "type": "uint8",
            "native_type": "uint8",
            "literal": "52",
            "value": "52",
        },
        {
            "name": "TRANSITION_ON_ERROR_SUCCESS",
            "type": "uint8",
            "native_type": "uint8",
            "literal": "60",
            "value": "60",
        },
        {
            "name": "TRANSITION_ON_ERROR_FAILURE",
            "type": "uint8",
            "native_type": "uint8",
            "literal": "61",
            "value": "61",
        },
        {
            "name": "TRANSITION_ON_ERROR_ERROR",
            "type": "uint8",
            "native_type": "uint8",
            "literal": "62",
            "value": "62",
        },
        {
            "name": "TRANSITION_CALLBACK_SUCCESS",
            "type": "uint8",
            "native_type": "uint8",
            "literal": "97",
            "value": "97",
        },
        {
            "name": "TRANSITION_CALLBACK_FAILURE",
            "type": "uint8",
            "native_type": "uint8",
            "literal": "98",
            "value": "98",
        },
        {
            "name": "TRANSITION_CALLBACK_ERROR",
            "type": "uint8",
            "native_type": "uint8",
            "literal": "99",
            "value": "99",
        },
    ]
    TRANSITION_CREATE: _ClassVar = 0
    TRANSITION_CONFIGURE: _ClassVar = 1
    TRANSITION_CLEANUP: _ClassVar = 2
    TRANSITION_ACTIVATE: _ClassVar = 3
    TRANSITION_DEACTIVATE: _ClassVar = 4
    TRANSITION_UNCONFIGURED_SHUTDOWN: _ClassVar = 5
    TRANSITION_INACTIVE_SHUTDOWN: _ClassVar = 6
    TRANSITION_ACTIVE_SHUTDOWN: _ClassVar = 7
    TRANSITION_DESTROY: _ClassVar = 8
    TRANSITION_ON_CONFIGURE_SUCCESS: _ClassVar = 10
    TRANSITION_ON_CONFIGURE_FAILURE: _ClassVar = 11
    TRANSITION_ON_CONFIGURE_ERROR: _ClassVar = 12
    TRANSITION_ON_CLEANUP_SUCCESS: _ClassVar = 20
    TRANSITION_ON_CLEANUP_FAILURE: _ClassVar = 21
    TRANSITION_ON_CLEANUP_ERROR: _ClassVar = 22
    TRANSITION_ON_ACTIVATE_SUCCESS: _ClassVar = 30
    TRANSITION_ON_ACTIVATE_FAILURE: _ClassVar = 31
    TRANSITION_ON_ACTIVATE_ERROR: _ClassVar = 32
    TRANSITION_ON_DEACTIVATE_SUCCESS: _ClassVar = 40
    TRANSITION_ON_DEACTIVATE_FAILURE: _ClassVar = 41
    TRANSITION_ON_DEACTIVATE_ERROR: _ClassVar = 42
    TRANSITION_ON_SHUTDOWN_SUCCESS: _ClassVar = 50
    TRANSITION_ON_SHUTDOWN_FAILURE: _ClassVar = 51
    TRANSITION_ON_SHUTDOWN_ERROR: _ClassVar = 52
    TRANSITION_ON_ERROR_SUCCESS: _ClassVar = 60
    TRANSITION_ON_ERROR_FAILURE: _ClassVar = 61
    TRANSITION_ON_ERROR_ERROR: _ClassVar = 62
    TRANSITION_CALLBACK_SUCCESS: _ClassVar = 97
    TRANSITION_CALLBACK_FAILURE: _ClassVar = 98
    TRANSITION_CALLBACK_ERROR: _ClassVar = 99
    id: _py_int = 0
    label: _py_str = ""

    def encode(self):
        writer = _Writer(517)
        _write_Ros2Lifecycle_msgsMsgTransition(writer, self)
        wire = writer.finish()
        return _wire(wire, 5, 517)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Lifecycle_msgsMsgTransition:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 5, 517))
        value = _read_Ros2Lifecycle_msgsMsgTransition(reader)
        reader.end()
        return value


_record_Ros2Lifecycle_msgsMsgTransition = Ros2Lifecycle_msgsMsgTransition


def _write_Ros2Lifecycle_msgsMsgTransition(writer, value):
    if type(value) is not Ros2Lifecycle_msgsMsgTransition:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.id
    writer.integer(_part0, 1, False)
    _part1 = value.label
    _write_text(writer, _part1, 512)
    if not 5 <= len(writer.data) - _start <= 517:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Lifecycle_msgsMsgTransition(reader):
    _start = reader.position
    value = Ros2Lifecycle_msgsMsgTransition()
    value.id = reader.integer(1, False)
    value.label = _read_text(reader, 512)
    if not 5 <= reader.position - _start <= 517:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Lifecycle_msgsSrvChangeState_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "lifecycle_msgs/srv/ChangeState_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_b04270f03616b8e581036d327d18bde62d38627ae8acf88fb77d0ed7b3b3d3d1"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 5
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 517
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 517
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    transition: _record_Ros2Lifecycle_msgsMsgTransition = _field(
        default_factory=lambda: Ros2Lifecycle_msgsMsgTransition()
    )

    def encode(self):
        writer = _Writer(517)
        _write_Ros2Lifecycle_msgsSrvChangeState_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 5, 517)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Lifecycle_msgsSrvChangeState_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 5, 517))
        value = _read_Ros2Lifecycle_msgsSrvChangeState_Request(reader)
        reader.end()
        return value


_record_Ros2Lifecycle_msgsSrvChangeState_Request = Ros2Lifecycle_msgsSrvChangeState_Request


def _write_Ros2Lifecycle_msgsSrvChangeState_Request(writer, value):
    if type(value) is not Ros2Lifecycle_msgsSrvChangeState_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.transition
    _write_Ros2Lifecycle_msgsMsgTransition(writer, _part0)
    if not 5 <= len(writer.data) - _start <= 517:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Lifecycle_msgsSrvChangeState_Request(reader):
    _start = reader.position
    value = Ros2Lifecycle_msgsSrvChangeState_Request()
    value.transition = _read_Ros2Lifecycle_msgsMsgTransition(reader)
    if not 5 <= reader.position - _start <= 517:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Lifecycle_msgsSrvChangeState_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "lifecycle_msgs/srv/ChangeState_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_d2dc541d6995976a2a1a2c03d499aa9dccaf487736b11704d778c86fddaf5032"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Lifecycle_msgsSrvChangeState_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Lifecycle_msgsSrvChangeState_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Lifecycle_msgsSrvChangeState_Response(reader)
        reader.end()
        return value


_record_Ros2Lifecycle_msgsSrvChangeState_Response = Ros2Lifecycle_msgsSrvChangeState_Response


def _write_Ros2Lifecycle_msgsSrvChangeState_Response(writer, value):
    if type(value) is not Ros2Lifecycle_msgsSrvChangeState_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Lifecycle_msgsSrvChangeState_Response(reader):
    _start = reader.position
    value = Ros2Lifecycle_msgsSrvChangeState_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Lifecycle_msgsSrvGetState_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "lifecycle_msgs/srv/GetState_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_86a3d813de32971a271e062acfaf201eb718aff8d68a4e343d6fceaae2b5098d"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros2Lifecycle_msgsSrvGetState_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Lifecycle_msgsSrvGetState_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros2Lifecycle_msgsSrvGetState_Request(reader)
        reader.end()
        return value


_record_Ros2Lifecycle_msgsSrvGetState_Request = Ros2Lifecycle_msgsSrvGetState_Request


def _write_Ros2Lifecycle_msgsSrvGetState_Request(writer, value):
    if type(value) is not Ros2Lifecycle_msgsSrvGetState_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros2Lifecycle_msgsSrvGetState_Request(reader):
    _start = reader.position
    value = Ros2Lifecycle_msgsSrvGetState_Request()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Lifecycle_msgsSrvGetState_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "lifecycle_msgs/srv/GetState_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_697418ec4095e98c855b1f9d238a3bd74a59ccbbc3eb31981c4df3c3b829ea39"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 5
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 517
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 517
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    current_state: _record_Ros2Lifecycle_msgsMsgState = _field(
        default_factory=lambda: Ros2Lifecycle_msgsMsgState()
    )

    def encode(self):
        writer = _Writer(517)
        _write_Ros2Lifecycle_msgsSrvGetState_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 5, 517)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Lifecycle_msgsSrvGetState_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 5, 517))
        value = _read_Ros2Lifecycle_msgsSrvGetState_Response(reader)
        reader.end()
        return value


_record_Ros2Lifecycle_msgsSrvGetState_Response = Ros2Lifecycle_msgsSrvGetState_Response


def _write_Ros2Lifecycle_msgsSrvGetState_Response(writer, value):
    if type(value) is not Ros2Lifecycle_msgsSrvGetState_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.current_state
    _write_Ros2Lifecycle_msgsMsgState(writer, _part0)
    if not 5 <= len(writer.data) - _start <= 517:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Lifecycle_msgsSrvGetState_Response(reader):
    _start = reader.position
    value = Ros2Lifecycle_msgsSrvGetState_Response()
    value.current_state = _read_Ros2Lifecycle_msgsMsgState(reader)
    if not 5 <= reader.position - _start <= 517:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Sensor_msgsMsgJointState:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "sensor_msgs/msg/JointState"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_88d44f7bdb40f8c45539a041a25903609561fa74db90b9972e1369ebbff6c884"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 28
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1196
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1196
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros2Std_msgsMsgHeader = _field(default_factory=lambda: Ros2Std_msgsMsgHeader())
    name: _py_list[_py_str] = _field(default_factory=lambda: [])
    position: _py_list[_py_float] = _field(default_factory=lambda: [])
    velocity: _py_list[_py_float] = _field(default_factory=lambda: [])
    effort: _py_list[_py_float] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(1196)
        _write_Ros2Sensor_msgsMsgJointState(writer, self)
        wire = writer.finish()
        return _wire(wire, 28, 1196)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Sensor_msgsMsgJointState:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 28, 1196))
        value = _read_Ros2Sensor_msgsMsgJointState(reader)
        reader.end()
        return value


_record_Ros2Sensor_msgsMsgJointState = Ros2Sensor_msgsMsgJointState


def _write_Ros2Sensor_msgsMsgJointState(writer, value):
    if type(value) is not Ros2Sensor_msgsMsgJointState:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros2Std_msgsMsgHeader(writer, _part0)
    _part1 = value.name
    if type(_part1) not in (list, tuple):
        raise TypeError("array value required")
    _count1 = len(_part1)
    if _count1 > 12:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        _write_text(writer, _element, 64)
    _part2 = value.position
    if type(_part2) not in (list, tuple):
        raise TypeError("array value required")
    _count2 = len(_part2)
    if _count2 > 12:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        writer.f64(_element)
    _part3 = value.velocity
    if type(_part3) not in (list, tuple):
        raise TypeError("array value required")
    _count3 = len(_part3)
    if _count3 > 12:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count3, 4)
    for _index in range(_count3):
        _element = _part3[_index]
        writer.f64(_element)
    _part4 = value.effort
    if type(_part4) not in (list, tuple):
        raise TypeError("array value required")
    _count4 = len(_part4)
    if _count4 > 12:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count4, 4)
    for _index in range(_count4):
        _element = _part4[_index]
        writer.f64(_element)
    _sizes = [_count1, _count2, _count3, _count4]
    if len({n for n in _sizes if n}) > 1:
        raise ValueError("nonempty JointState arrays must have equal length")
    if not 28 <= len(writer.data) - _start <= 1196:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Sensor_msgsMsgJointState(reader):
    _start = reader.position
    value = Ros2Sensor_msgsMsgJointState()
    value.header = _read_Ros2Std_msgsMsgHeader(reader)
    value.name = [_read_text(reader, 64) for _ in range(_read_count(reader, 12, 4))]
    value.position = [reader.f64() for _ in range(_read_count(reader, 12, 8))]
    value.velocity = [reader.f64() for _ in range(_read_count(reader, 12, 8))]
    value.effort = [reader.f64() for _ in range(_read_count(reader, 12, 8))]
    _sizes = [len(value.name), len(value.position), len(value.velocity), len(value.effort)]
    if len({n for n in _sizes if n}) > 1:
        raise ValueError("nonempty JointState arrays must have equal length")
    if not 28 <= reader.position - _start <= 1196:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Std_srvsSrvTrigger_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "std_srvs/srv/Trigger_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_f1d8ad4ab7cf476cada6301f71ae24e046c244ba62bb6735183efe8e8c530a77"
    )
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
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros2Std_srvsSrvTrigger_Request(reader)
        reader.end()
        return value


_record_Ros2Std_srvsSrvTrigger_Request = Ros2Std_srvsSrvTrigger_Request


def _write_Ros2Std_srvsSrvTrigger_Request(writer, value):
    if type(value) is not Ros2Std_srvsSrvTrigger_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros2Std_srvsSrvTrigger_Request(reader):
    _start = reader.position
    value = Ros2Std_srvsSrvTrigger_Request()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Std_srvsSrvTrigger_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "std_srvs/srv/Trigger_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_95fe65bd59112bb00093f66c6853844b01ccea8e6ded47e73038718aa886f39d"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 5
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 517
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 517
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False
    message: _py_str = ""

    def encode(self):
        writer = _Writer(517)
        _write_Ros2Std_srvsSrvTrigger_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 5, 517)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Std_srvsSrvTrigger_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 5, 517))
        value = _read_Ros2Std_srvsSrvTrigger_Response(reader)
        reader.end()
        return value


_record_Ros2Std_srvsSrvTrigger_Response = Ros2Std_srvsSrvTrigger_Response


def _write_Ros2Std_srvsSrvTrigger_Response(writer, value):
    if type(value) is not Ros2Std_srvsSrvTrigger_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    _part1 = value.message
    _write_text(writer, _part1, 512)
    if not 5 <= len(writer.data) - _start <= 517:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Std_srvsSrvTrigger_Response(reader):
    _start = reader.position
    value = Ros2Std_srvsSrvTrigger_Response()
    value.success = _read_bool(reader)
    value.message = _read_text(reader, 512)
    if not 5 <= reader.position - _start <= 517:
        raise ValueError("nested complete record aggregate extent")
    return value
