# @file bounded_records.py
# @brief Complete universal_robots values and adapters for the selected original interface catalog.
# @details Retain original field order, scalar widths, array capacities, string bounds, constants and declared
# defaults. Pure value access and canonical codecs create no native ROS allocation or resource grant. Transport
# roles require the separately admitted SDK owner.
# @see share/platform/universal_robots/domains/universal-robots-ros2-trajectory-complete.ir.json
# @see document/platform/universal_robots/en_US/README.md

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
        "UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 140
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 140
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    stamp: _record_Ros2Builtin_interfacesMsgTime = _field(
        default_factory=lambda: Ros2Builtin_interfacesMsgTime()
    )
    frame_id: _py_str = ""

    def encode(self):
        writer = _Writer(140)
        _write_Ros2Std_msgsMsgHeader(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 140)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Std_msgsMsgHeader:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 12, 140))
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
    _write_text(writer, _part1, 128)
    if not 12 <= len(writer.data) - _start <= 140:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Std_msgsMsgHeader(reader):
    _start = reader.position
    value = Ros2Std_msgsMsgHeader()
    value.stamp = _read_Ros2Builtin_interfacesMsgTime(reader)
    value.frame_id = _read_text(reader, 128)
    if not 12 <= reader.position - _start <= 140:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Trajectory_msgsMsgJointTrajectoryPoint:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "trajectory_msgs/msg/JointTrajectoryPoint"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_c4eafb6efd22d299b5c6fc21844d8bf69789cf27ee5414a1d7d2371f0b1acbbf"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 24
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 216
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 216
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
        writer = _Writer(216)
        _write_Ros2Trajectory_msgsMsgJointTrajectoryPoint(writer, self)
        wire = writer.finish()
        return _wire(wire, 24, 216)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Trajectory_msgsMsgJointTrajectoryPoint:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 24, 216))
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
    if _count0 > 6:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count0, 4)
    for _index in range(_count0):
        _element = _part0[_index]
        writer.f64(_element)
    _part1 = value.velocities
    if type(_part1) not in (list, tuple):
        raise TypeError("array value required")
    _count1 = len(_part1)
    if _count1 > 6:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        writer.f64(_element)
    _part2 = value.accelerations
    if type(_part2) not in (list, tuple):
        raise TypeError("array value required")
    _count2 = len(_part2)
    if _count2 > 6:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        writer.f64(_element)
    _part3 = value.effort
    if type(_part3) not in (list, tuple):
        raise TypeError("array value required")
    _count3 = len(_part3)
    if _count3 > 6:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count3, 4)
    for _index in range(_count3):
        _element = _part3[_index]
        writer.f64(_element)
    _part4 = value.time_from_start
    _write_Ros2Builtin_interfacesMsgDuration(writer, _part4)
    if not 24 <= len(writer.data) - _start <= 216:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Trajectory_msgsMsgJointTrajectoryPoint(reader):
    _start = reader.position
    value = Ros2Trajectory_msgsMsgJointTrajectoryPoint()
    value.positions = [reader.f64() for _ in range(_read_count(reader, 6, 8))]
    value.velocities = [reader.f64() for _ in range(_read_count(reader, 6, 8))]
    value.accelerations = [reader.f64() for _ in range(_read_count(reader, 6, 8))]
    value.effort = [reader.f64() for _ in range(_read_count(reader, 6, 8))]
    value.time_from_start = _read_Ros2Builtin_interfacesMsgDuration(reader)
    if not 24 <= reader.position - _start <= 216:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Trajectory_msgsMsgJointTrajectory:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "trajectory_msgs/msg/JointTrajectory"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_e77c37c75123e442edb6a7f6f2a21dcbe33d8bb8fd2577f9906653a6ad5f8225"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 20
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 5164
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 5164
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros2Std_msgsMsgHeader = _field(default_factory=lambda: Ros2Std_msgsMsgHeader())
    joint_names: _py_list[_py_str] = _field(default_factory=lambda: [])
    points: _py_list[_record_Ros2Trajectory_msgsMsgJointTrajectoryPoint] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(5164)
        _write_Ros2Trajectory_msgsMsgJointTrajectory(writer, self)
        wire = writer.finish()
        return _wire(wire, 20, 5164)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Trajectory_msgsMsgJointTrajectory:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 20, 5164))
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
    if _count1 > 6:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        _write_text(writer, _element, 256)
    _part2 = value.points
    if type(_part2) not in (list, tuple):
        raise TypeError("array value required")
    _count2 = len(_part2)
    if _count2 > 16:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        _write_Ros2Trajectory_msgsMsgJointTrajectoryPoint(writer, _element)
    if not 20 <= len(writer.data) - _start <= 5164:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Trajectory_msgsMsgJointTrajectory(reader):
    _start = reader.position
    value = Ros2Trajectory_msgsMsgJointTrajectory()
    value.header = _read_Ros2Std_msgsMsgHeader(reader)
    value.joint_names = [_read_text(reader, 256) for _ in range(_read_count(reader, 6, 4))]
    value.points = [
        _read_Ros2Trajectory_msgsMsgJointTrajectoryPoint(reader) for _ in range(_read_count(reader, 16, 24))
    ]
    if not 20 <= reader.position - _start <= 5164:
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
        "UWVMROS1_2bf467681a39a08ac0d1ca84fb0c1792628850af3dffa4b56108d01ecca81974"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 20
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1060
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1060
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros2Std_msgsMsgHeader = _field(default_factory=lambda: Ros2Std_msgsMsgHeader())
    joint_names: _py_list[_py_str] = _field(default_factory=lambda: [])
    points: _py_list[_record_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint] = _field(
        default_factory=lambda: []
    )

    def encode(self):
        writer = _Writer(1060)
        _write_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory(writer, self)
        wire = writer.finish()
        return _wire(wire, 20, 1060)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Trajectory_msgsMsgMultiDOFJointTrajectory:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 20, 1060))
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
        _write_text(writer, _element, 128)
    _part2 = value.points
    if type(_part2) not in (list, tuple):
        raise TypeError("array value required")
    _count2 = len(_part2)
    if _count2 > 2:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        _write_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(writer, _element)
    if not 20 <= len(writer.data) - _start <= 1060:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory(reader):
    _start = reader.position
    value = Ros2Trajectory_msgsMsgMultiDOFJointTrajectory()
    value.header = _read_Ros2Std_msgsMsgHeader(reader)
    value.joint_names = [_read_text(reader, 128) for _ in range(_read_count(reader, 2, 4))]
    value.points = [
        _read_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(reader)
        for _ in range(_read_count(reader, 2, 20))
    ]
    if not 20 <= reader.position - _start <= 1060:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Control_msgsMsgJointTolerance:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "control_msgs/msg/JointTolerance"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_3864af88029b3b1f51907b3da63d2d821104c29b9469a146a5a34f73f3598b8a"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 28
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 156
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 156
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    name: _py_str = ""
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
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 28, 156))
        value = _read_Ros2Control_msgsMsgJointTolerance(reader)
        reader.end()
        return value


_record_Ros2Control_msgsMsgJointTolerance = Ros2Control_msgsMsgJointTolerance


def _write_Ros2Control_msgsMsgJointTolerance(writer, value):
    if type(value) is not Ros2Control_msgsMsgJointTolerance:
        raise TypeError("exact generated record required")
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
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Control_msgsMsgJointTolerance(reader):
    _start = reader.position
    value = Ros2Control_msgsMsgJointTolerance()
    value.name = _read_text(reader, 128)
    value.position = reader.f64()
    value.velocity = reader.f64()
    value.acceleration = reader.f64()
    if not 28 <= reader.position - _start <= 156:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Control_msgsMsgJointComponentTolerance:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "control_msgs/msg/JointComponentTolerance"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_8a10f659b38feae6dfcf89818d35a164743b02c0e5cfe2d86aae7eda56e914fb"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 30
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 158
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 158
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
        writer = _Writer(158)
        _write_Ros2Control_msgsMsgJointComponentTolerance(writer, self)
        wire = writer.finish()
        return _wire(wire, 30, 158)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Control_msgsMsgJointComponentTolerance:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 30, 158))
        value = _read_Ros2Control_msgsMsgJointComponentTolerance(reader)
        reader.end()
        return value


_record_Ros2Control_msgsMsgJointComponentTolerance = Ros2Control_msgsMsgJointComponentTolerance


def _write_Ros2Control_msgsMsgJointComponentTolerance(writer, value):
    if type(value) is not Ros2Control_msgsMsgJointComponentTolerance:
        raise TypeError("exact generated record required")
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
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Control_msgsMsgJointComponentTolerance(reader):
    _start = reader.position
    value = Ros2Control_msgsMsgJointComponentTolerance()
    value.joint_name = _read_text(reader, 128)
    value.component = reader.integer(2, False)
    value.position = reader.f64()
    value.velocity = reader.f64()
    value.acceleration = reader.f64()
    if not 30 <= reader.position - _start <= 158:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Control_msgsActionFollowJointTrajectory_Goal:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "control_msgs/action/FollowJointTrajectory_Goal"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_34db8e96526d0dae9e4107c6b1a4de32bbf468b2903b01e30fc7c7be44773e23"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 64
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 10016
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 10016
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
        writer = _Writer(10016)
        _write_Ros2Control_msgsActionFollowJointTrajectory_Goal(writer, self)
        wire = writer.finish()
        return _wire(wire, 64, 10016)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Control_msgsActionFollowJointTrajectory_Goal:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 64, 10016))
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
    if _count2 > 6:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        _write_Ros2Control_msgsMsgJointTolerance(writer, _element)
    _part3 = value.component_path_tolerance
    if type(_part3) not in (list, tuple):
        raise TypeError("array value required")
    _count3 = len(_part3)
    if _count3 > 6:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count3, 4)
    for _index in range(_count3):
        _element = _part3[_index]
        _write_Ros2Control_msgsMsgJointComponentTolerance(writer, _element)
    _part4 = value.goal_tolerance
    if type(_part4) not in (list, tuple):
        raise TypeError("array value required")
    _count4 = len(_part4)
    if _count4 > 6:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count4, 4)
    for _index in range(_count4):
        _element = _part4[_index]
        _write_Ros2Control_msgsMsgJointTolerance(writer, _element)
    _part5 = value.component_goal_tolerance
    if type(_part5) not in (list, tuple):
        raise TypeError("array value required")
    _count5 = len(_part5)
    if _count5 > 6:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count5, 4)
    for _index in range(_count5):
        _element = _part5[_index]
        _write_Ros2Control_msgsMsgJointComponentTolerance(writer, _element)
    _part6 = value.goal_time_tolerance
    _write_Ros2Builtin_interfacesMsgDuration(writer, _part6)
    if not 64 <= len(writer.data) - _start <= 10016:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Control_msgsActionFollowJointTrajectory_Goal(reader):
    _start = reader.position
    value = Ros2Control_msgsActionFollowJointTrajectory_Goal()
    value.trajectory = _read_Ros2Trajectory_msgsMsgJointTrajectory(reader)
    value.multi_dof_trajectory = _read_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory(reader)
    value.path_tolerance = [
        _read_Ros2Control_msgsMsgJointTolerance(reader) for _ in range(_read_count(reader, 6, 28))
    ]
    value.component_path_tolerance = [
        _read_Ros2Control_msgsMsgJointComponentTolerance(reader) for _ in range(_read_count(reader, 6, 30))
    ]
    value.goal_tolerance = [
        _read_Ros2Control_msgsMsgJointTolerance(reader) for _ in range(_read_count(reader, 6, 28))
    ]
    value.component_goal_tolerance = [
        _read_Ros2Control_msgsMsgJointComponentTolerance(reader) for _ in range(_read_count(reader, 6, 30))
    ]
    value.goal_time_tolerance = _read_Ros2Builtin_interfacesMsgDuration(reader)
    if not 64 <= reader.position - _start <= 10016:
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
        "UWVMROS1_ed813f6e8b6223b6ecc8fa6f2f9b732c7b6d97c834baec8fbc5f8878e11c45c6"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 152
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 3592
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 3592
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
        writer = _Writer(3592)
        _write_Ros2Control_msgsActionFollowJointTrajectory_Feedback(writer, self)
        wire = writer.finish()
        return _wire(wire, 152, 3592)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Control_msgsActionFollowJointTrajectory_Feedback:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 152, 3592))
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
    if _count1 > 6:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        _write_text(writer, _element, 256)
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
        _write_text(writer, _element, 128)
    _part6 = value.multi_dof_desired
    _write_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(writer, _part6)
    _part7 = value.multi_dof_actual
    _write_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(writer, _part7)
    _part8 = value.multi_dof_error
    _write_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(writer, _part8)
    if not 152 <= len(writer.data) - _start <= 3592:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Control_msgsActionFollowJointTrajectory_Feedback(reader):
    _start = reader.position
    value = Ros2Control_msgsActionFollowJointTrajectory_Feedback()
    value.header = _read_Ros2Std_msgsMsgHeader(reader)
    value.joint_names = [_read_text(reader, 256) for _ in range(_read_count(reader, 6, 4))]
    value.desired = _read_Ros2Trajectory_msgsMsgJointTrajectoryPoint(reader)
    value.actual = _read_Ros2Trajectory_msgsMsgJointTrajectoryPoint(reader)
    value.error = _read_Ros2Trajectory_msgsMsgJointTrajectoryPoint(reader)
    value.multi_dof_joint_names = [_read_text(reader, 128) for _ in range(_read_count(reader, 2, 4))]
    value.multi_dof_desired = _read_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(reader)
    value.multi_dof_actual = _read_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(reader)
    value.multi_dof_error = _read_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(reader)
    if not 152 <= reader.position - _start <= 3592:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Geometry_msgsMsgPoint:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "geometry_msgs/msg/Point"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616"
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
        _write_Ros2Geometry_msgsMsgPoint(writer, self)
        wire = writer.finish()
        return _wire(wire, 24, 24)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Geometry_msgsMsgPoint:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 24, 24))
        value = _read_Ros2Geometry_msgsMsgPoint(reader)
        reader.end()
        return value


_record_Ros2Geometry_msgsMsgPoint = Ros2Geometry_msgsMsgPoint


def _write_Ros2Geometry_msgsMsgPoint(writer, value):
    if type(value) is not Ros2Geometry_msgsMsgPoint:
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


def _read_Ros2Geometry_msgsMsgPoint(reader):
    _start = reader.position
    value = Ros2Geometry_msgsMsgPoint()
    value.x = reader.f64()
    value.y = reader.f64()
    value.z = reader.f64()
    if not 24 <= reader.position - _start <= 24:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Geometry_msgsMsgPose:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "geometry_msgs/msg/Pose"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 56
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 56
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 56
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    position: _record_Ros2Geometry_msgsMsgPoint = _field(default_factory=lambda: Ros2Geometry_msgsMsgPoint())
    orientation: _record_Ros2Geometry_msgsMsgQuaternion = _field(
        default_factory=lambda: Ros2Geometry_msgsMsgQuaternion()
    )

    def encode(self):
        writer = _Writer(56)
        _write_Ros2Geometry_msgsMsgPose(writer, self)
        wire = writer.finish()
        return _wire(wire, 56, 56)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Geometry_msgsMsgPose:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 56, 56))
        value = _read_Ros2Geometry_msgsMsgPose(reader)
        reader.end()
        return value


_record_Ros2Geometry_msgsMsgPose = Ros2Geometry_msgsMsgPose


def _write_Ros2Geometry_msgsMsgPose(writer, value):
    if type(value) is not Ros2Geometry_msgsMsgPose:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.position
    _write_Ros2Geometry_msgsMsgPoint(writer, _part0)
    _part1 = value.orientation
    _write_Ros2Geometry_msgsMsgQuaternion(writer, _part1)
    if not 56 <= len(writer.data) - _start <= 56:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Geometry_msgsMsgPose(reader):
    _start = reader.position
    value = Ros2Geometry_msgsMsgPose()
    value.position = _read_Ros2Geometry_msgsMsgPoint(reader)
    value.orientation = _read_Ros2Geometry_msgsMsgQuaternion(reader)
    if not 56 <= reader.position - _start <= 56:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Geometry_msgsMsgPoseStamped:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "geometry_msgs/msg/PoseStamped"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_71abdc844f18f02f45a354967a5f1c644fb20dc14cbc61c64aa41b927e0712a2"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 68
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 196
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 196
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros2Std_msgsMsgHeader = _field(default_factory=lambda: Ros2Std_msgsMsgHeader())
    pose: _record_Ros2Geometry_msgsMsgPose = _field(default_factory=lambda: Ros2Geometry_msgsMsgPose())

    def encode(self):
        writer = _Writer(196)
        _write_Ros2Geometry_msgsMsgPoseStamped(writer, self)
        wire = writer.finish()
        return _wire(wire, 68, 196)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Geometry_msgsMsgPoseStamped:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 68, 196))
        value = _read_Ros2Geometry_msgsMsgPoseStamped(reader)
        reader.end()
        return value


_record_Ros2Geometry_msgsMsgPoseStamped = Ros2Geometry_msgsMsgPoseStamped


def _write_Ros2Geometry_msgsMsgPoseStamped(writer, value):
    if type(value) is not Ros2Geometry_msgsMsgPoseStamped:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros2Std_msgsMsgHeader(writer, _part0)
    _part1 = value.pose
    _write_Ros2Geometry_msgsMsgPose(writer, _part1)
    if not 68 <= len(writer.data) - _start <= 196:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Geometry_msgsMsgPoseStamped(reader):
    _start = reader.position
    value = Ros2Geometry_msgsMsgPoseStamped()
    value.header = _read_Ros2Std_msgsMsgHeader(reader)
    value.pose = _read_Ros2Geometry_msgsMsgPose(reader)
    if not 68 <= reader.position - _start <= 196:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Geometry_msgsMsgVector3Stamped:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "geometry_msgs/msg/Vector3Stamped"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_c6b67646d3fc6d29c195637ea353dafa7085b2bdb55a15a8b65009200b5ed31b"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 36
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 164
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 164
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros2Std_msgsMsgHeader = _field(default_factory=lambda: Ros2Std_msgsMsgHeader())
    vector: _record_Ros2Geometry_msgsMsgVector3 = _field(
        default_factory=lambda: Ros2Geometry_msgsMsgVector3()
    )

    def encode(self):
        writer = _Writer(164)
        _write_Ros2Geometry_msgsMsgVector3Stamped(writer, self)
        wire = writer.finish()
        return _wire(wire, 36, 164)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Geometry_msgsMsgVector3Stamped:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 36, 164))
        value = _read_Ros2Geometry_msgsMsgVector3Stamped(reader)
        reader.end()
        return value


_record_Ros2Geometry_msgsMsgVector3Stamped = Ros2Geometry_msgsMsgVector3Stamped


def _write_Ros2Geometry_msgsMsgVector3Stamped(writer, value):
    if type(value) is not Ros2Geometry_msgsMsgVector3Stamped:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros2Std_msgsMsgHeader(writer, _part0)
    _part1 = value.vector
    _write_Ros2Geometry_msgsMsgVector3(writer, _part1)
    if not 36 <= len(writer.data) - _start <= 164:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Geometry_msgsMsgVector3Stamped(reader):
    _start = reader.position
    value = Ros2Geometry_msgsMsgVector3Stamped()
    value.header = _read_Ros2Std_msgsMsgHeader(reader)
    value.vector = _read_Ros2Geometry_msgsMsgVector3(reader)
    if not 36 <= reader.position - _start <= 164:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Geometry_msgsMsgWrench:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "geometry_msgs/msg/Wrench"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_fdfdf2474c0129b0ce1f85972cc87fd80478ac7d2429d9de1ec58951a82a11b6"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 48
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 48
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 48
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    force: _record_Ros2Geometry_msgsMsgVector3 = _field(default_factory=lambda: Ros2Geometry_msgsMsgVector3())
    torque: _record_Ros2Geometry_msgsMsgVector3 = _field(
        default_factory=lambda: Ros2Geometry_msgsMsgVector3()
    )

    def encode(self):
        writer = _Writer(48)
        _write_Ros2Geometry_msgsMsgWrench(writer, self)
        wire = writer.finish()
        return _wire(wire, 48, 48)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Geometry_msgsMsgWrench:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 48, 48))
        value = _read_Ros2Geometry_msgsMsgWrench(reader)
        reader.end()
        return value


_record_Ros2Geometry_msgsMsgWrench = Ros2Geometry_msgsMsgWrench


def _write_Ros2Geometry_msgsMsgWrench(writer, value):
    if type(value) is not Ros2Geometry_msgsMsgWrench:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.force
    _write_Ros2Geometry_msgsMsgVector3(writer, _part0)
    _part1 = value.torque
    _write_Ros2Geometry_msgsMsgVector3(writer, _part1)
    if not 48 <= len(writer.data) - _start <= 48:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Geometry_msgsMsgWrench(reader):
    _start = reader.position
    value = Ros2Geometry_msgsMsgWrench()
    value.force = _read_Ros2Geometry_msgsMsgVector3(reader)
    value.torque = _read_Ros2Geometry_msgsMsgVector3(reader)
    if not 48 <= reader.position - _start <= 48:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Sensor_msgsMsgJointState:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "sensor_msgs/msg/JointState"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_b27092c8f58e8f9f96d790d525f894b30953ddbcffcc52a1d316e7dcce0908b9"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 28
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1860
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1860
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros2Std_msgsMsgHeader = _field(default_factory=lambda: Ros2Std_msgsMsgHeader())
    name: _py_list[_py_str] = _field(default_factory=lambda: [])
    position: _py_list[_py_float] = _field(default_factory=lambda: [])
    velocity: _py_list[_py_float] = _field(default_factory=lambda: [])
    effort: _py_list[_py_float] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(1860)
        _write_Ros2Sensor_msgsMsgJointState(writer, self)
        wire = writer.finish()
        return _wire(wire, 28, 1860)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Sensor_msgsMsgJointState:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 28, 1860))
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
    if _count1 > 6:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        _write_text(writer, _element, 256)
    _part2 = value.position
    if type(_part2) not in (list, tuple):
        raise TypeError("array value required")
    _count2 = len(_part2)
    if _count2 > 6:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        writer.f64(_element)
    _part3 = value.velocity
    if type(_part3) not in (list, tuple):
        raise TypeError("array value required")
    _count3 = len(_part3)
    if _count3 > 6:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count3, 4)
    for _index in range(_count3):
        _element = _part3[_index]
        writer.f64(_element)
    _part4 = value.effort
    if type(_part4) not in (list, tuple):
        raise TypeError("array value required")
    _count4 = len(_part4)
    if _count4 > 6:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count4, 4)
    for _index in range(_count4):
        _element = _part4[_index]
        writer.f64(_element)
    _sizes = [_count1, _count2, _count3, _count4]
    if len({n for n in _sizes if n}) > 1:
        raise ValueError("nonempty JointState arrays must have equal length")
    if not 28 <= len(writer.data) - _start <= 1860:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Sensor_msgsMsgJointState(reader):
    _start = reader.position
    value = Ros2Sensor_msgsMsgJointState()
    value.header = _read_Ros2Std_msgsMsgHeader(reader)
    value.name = [_read_text(reader, 256) for _ in range(_read_count(reader, 6, 4))]
    value.position = [reader.f64() for _ in range(_read_count(reader, 6, 8))]
    value.velocity = [reader.f64() for _ in range(_read_count(reader, 6, 8))]
    value.effort = [reader.f64() for _ in range(_read_count(reader, 6, 8))]
    _sizes = [len(value.name), len(value.position), len(value.velocity), len(value.effort)]
    if len({n for n in _sizes if n}) > 1:
        raise ValueError("nonempty JointState arrays must have equal length")
    if not 28 <= reader.position - _start <= 1860:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_dashboard_msgsActionSetMode_Goal:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/action/SetMode_Goal"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_8a7484a60bad21933df3f847d3fd554e41098ed596dee270335ce9f092dc313d"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 3
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 3
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 3
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    target_robot_mode: _py_int = 0
    stop_program: _py_bool = False
    play_program: _py_bool = False

    def encode(self):
        writer = _Writer(3)
        _write_Ros2Ur_dashboard_msgsActionSetMode_Goal(writer, self)
        wire = writer.finish()
        return _wire(wire, 3, 3)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_dashboard_msgsActionSetMode_Goal:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 3, 3))
        value = _read_Ros2Ur_dashboard_msgsActionSetMode_Goal(reader)
        reader.end()
        return value


_record_Ros2Ur_dashboard_msgsActionSetMode_Goal = Ros2Ur_dashboard_msgsActionSetMode_Goal


def _write_Ros2Ur_dashboard_msgsActionSetMode_Goal(writer, value):
    if type(value) is not Ros2Ur_dashboard_msgsActionSetMode_Goal:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.target_robot_mode
    writer.integer(_part0, 1, True)
    _part1 = value.stop_program
    if type(_part1) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part1), 1)
    _part2 = value.play_program
    if type(_part2) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part2), 1)
    if not 3 <= len(writer.data) - _start <= 3:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_dashboard_msgsActionSetMode_Goal(reader):
    _start = reader.position
    value = Ros2Ur_dashboard_msgsActionSetMode_Goal()
    value.target_robot_mode = reader.integer(1, True)
    value.stop_program = _read_bool(reader)
    value.play_program = _read_bool(reader)
    if not 3 <= reader.position - _start <= 3:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_dashboard_msgsActionSetMode_Result:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/action/SetMode_Result"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_ef2a557ff27171319d46170ab16a80f5cba5fbd59e44c21cc1b704d01764b913"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 5
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 261
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 261
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False
    message: _py_str = ""

    def encode(self):
        writer = _Writer(261)
        _write_Ros2Ur_dashboard_msgsActionSetMode_Result(writer, self)
        wire = writer.finish()
        return _wire(wire, 5, 261)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_dashboard_msgsActionSetMode_Result:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 5, 261))
        value = _read_Ros2Ur_dashboard_msgsActionSetMode_Result(reader)
        reader.end()
        return value


_record_Ros2Ur_dashboard_msgsActionSetMode_Result = Ros2Ur_dashboard_msgsActionSetMode_Result


def _write_Ros2Ur_dashboard_msgsActionSetMode_Result(writer, value):
    if type(value) is not Ros2Ur_dashboard_msgsActionSetMode_Result:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    _part1 = value.message
    _write_text(writer, _part1, 256)
    if not 5 <= len(writer.data) - _start <= 261:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_dashboard_msgsActionSetMode_Result(reader):
    _start = reader.position
    value = Ros2Ur_dashboard_msgsActionSetMode_Result()
    value.success = _read_bool(reader)
    value.message = _read_text(reader, 256)
    if not 5 <= reader.position - _start <= 261:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_dashboard_msgsActionSetMode_Feedback:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/action/SetMode_Feedback"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_afd74cd0a79174b53499a40b23b040ba96ec3d3e332129999525dcf6ca287ac6"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 2
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 2
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 2
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    current_robot_mode: _py_int = 0
    current_safety_mode: _py_int = 0

    def encode(self):
        writer = _Writer(2)
        _write_Ros2Ur_dashboard_msgsActionSetMode_Feedback(writer, self)
        wire = writer.finish()
        return _wire(wire, 2, 2)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_dashboard_msgsActionSetMode_Feedback:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 2, 2))
        value = _read_Ros2Ur_dashboard_msgsActionSetMode_Feedback(reader)
        reader.end()
        return value


_record_Ros2Ur_dashboard_msgsActionSetMode_Feedback = Ros2Ur_dashboard_msgsActionSetMode_Feedback


def _write_Ros2Ur_dashboard_msgsActionSetMode_Feedback(writer, value):
    if type(value) is not Ros2Ur_dashboard_msgsActionSetMode_Feedback:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.current_robot_mode
    writer.integer(_part0, 1, True)
    _part1 = value.current_safety_mode
    writer.integer(_part1, 1, True)
    if not 2 <= len(writer.data) - _start <= 2:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_dashboard_msgsActionSetMode_Feedback(reader):
    _start = reader.position
    value = Ros2Ur_dashboard_msgsActionSetMode_Feedback()
    value.current_robot_mode = reader.integer(1, True)
    value.current_safety_mode = reader.integer(1, True)
    if not 2 <= reader.position - _start <= 2:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_dashboard_msgsMsgOperationalMode:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/msg/OperationalMode"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_7a0be8522cdc20e01d382218499030176a0f6565376fadc5bbdd871a01b9316e"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = [
        {"name": "MANUAL", "type": "string", "native_type": "string", "literal": "MANUAL", "value": "MANUAL"},
        {
            "name": "AUTOMATIC",
            "type": "string",
            "native_type": "string",
            "literal": "AUTOMATIC",
            "value": "AUTOMATIC",
        },
    ]
    MANUAL: _ClassVar = "MANUAL"
    AUTOMATIC: _ClassVar = "AUTOMATIC"
    mode: _py_str = ""

    def encode(self):
        writer = _Writer(260)
        _write_Ros2Ur_dashboard_msgsMsgOperationalMode(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 260)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_dashboard_msgsMsgOperationalMode:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 4, 260))
        value = _read_Ros2Ur_dashboard_msgsMsgOperationalMode(reader)
        reader.end()
        return value


_record_Ros2Ur_dashboard_msgsMsgOperationalMode = Ros2Ur_dashboard_msgsMsgOperationalMode


def _write_Ros2Ur_dashboard_msgsMsgOperationalMode(writer, value):
    if type(value) is not Ros2Ur_dashboard_msgsMsgOperationalMode:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.mode
    _write_text(writer, _part0, 256)
    if not 4 <= len(writer.data) - _start <= 260:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_dashboard_msgsMsgOperationalMode(reader):
    _start = reader.position
    value = Ros2Ur_dashboard_msgsMsgOperationalMode()
    value.mode = _read_text(reader, 256)
    if not 4 <= reader.position - _start <= 260:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_dashboard_msgsMsgProgramInformation:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/msg/ProgramInformation"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_9299ce545acd0b6ff064998334820fbe503b71dc47a475ef93545d2cdb41f965"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 36
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 676
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 676
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = [
        {
            "name": "PROGRAM_STATE_DRAFT",
            "type": "string",
            "native_type": "string",
            "literal": '"DRAFT"',
            "value": "DRAFT",
        },
        {
            "name": "PROGRAM_STATE_FINAL",
            "type": "string",
            "native_type": "string",
            "literal": '"FINAL"',
            "value": "FINAL",
        },
    ]
    PROGRAM_STATE_DRAFT: _ClassVar = "DRAFT"
    PROGRAM_STATE_FINAL: _ClassVar = "FINAL"
    name: _py_str = ""
    description: _py_str = ""
    created_date: _py_int = 0
    last_saved_date: _py_int = 0
    last_modified_date: _py_int = 0
    program_state: _py_str = ""

    def encode(self):
        writer = _Writer(676)
        _write_Ros2Ur_dashboard_msgsMsgProgramInformation(writer, self)
        wire = writer.finish()
        return _wire(wire, 36, 676)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_dashboard_msgsMsgProgramInformation:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 36, 676))
        value = _read_Ros2Ur_dashboard_msgsMsgProgramInformation(reader)
        reader.end()
        return value


_record_Ros2Ur_dashboard_msgsMsgProgramInformation = Ros2Ur_dashboard_msgsMsgProgramInformation


def _write_Ros2Ur_dashboard_msgsMsgProgramInformation(writer, value):
    if type(value) is not Ros2Ur_dashboard_msgsMsgProgramInformation:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.name
    _write_text(writer, _part0, 128)
    _part1 = value.description
    _write_text(writer, _part1, 256)
    _part2 = value.created_date
    writer.integer(_part2, 8, False)
    _part3 = value.last_saved_date
    writer.integer(_part3, 8, False)
    _part4 = value.last_modified_date
    writer.integer(_part4, 8, False)
    _part5 = value.program_state
    _write_text(writer, _part5, 256)
    if not 36 <= len(writer.data) - _start <= 676:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_dashboard_msgsMsgProgramInformation(reader):
    _start = reader.position
    value = Ros2Ur_dashboard_msgsMsgProgramInformation()
    value.name = _read_text(reader, 128)
    value.description = _read_text(reader, 256)
    value.created_date = reader.integer(8, False)
    value.last_saved_date = reader.integer(8, False)
    value.last_modified_date = reader.integer(8, False)
    value.program_state = _read_text(reader, 256)
    if not 36 <= reader.position - _start <= 676:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_dashboard_msgsMsgProgramState:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/msg/ProgramState"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_1462a3c2323792afbbfc6d48a600a6ab66a50a6f6f583e57a62da2458ea81f26"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = [
        {
            "name": "STOPPED",
            "type": "string",
            "native_type": "string",
            "literal": "STOPPED",
            "value": "STOPPED",
        },
        {
            "name": "PLAYING",
            "type": "string",
            "native_type": "string",
            "literal": "PLAYING",
            "value": "PLAYING",
        },
        {"name": "PAUSED", "type": "string", "native_type": "string", "literal": "PAUSED", "value": "PAUSED"},
    ]
    STOPPED: _ClassVar = "STOPPED"
    PLAYING: _ClassVar = "PLAYING"
    PAUSED: _ClassVar = "PAUSED"
    state: _py_str = ""

    def encode(self):
        writer = _Writer(260)
        _write_Ros2Ur_dashboard_msgsMsgProgramState(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 260)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_dashboard_msgsMsgProgramState:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 4, 260))
        value = _read_Ros2Ur_dashboard_msgsMsgProgramState(reader)
        reader.end()
        return value


_record_Ros2Ur_dashboard_msgsMsgProgramState = Ros2Ur_dashboard_msgsMsgProgramState


def _write_Ros2Ur_dashboard_msgsMsgProgramState(writer, value):
    if type(value) is not Ros2Ur_dashboard_msgsMsgProgramState:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.state
    _write_text(writer, _part0, 256)
    if not 4 <= len(writer.data) - _start <= 260:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_dashboard_msgsMsgProgramState(reader):
    _start = reader.position
    value = Ros2Ur_dashboard_msgsMsgProgramState()
    value.state = _read_text(reader, 256)
    if not 4 <= reader.position - _start <= 260:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_dashboard_msgsMsgRobotMode:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/msg/RobotMode"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_81a79c84083520d911de108a728ad1877de78a57ec9e27b5cc432590be4616bb"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = [
        {"name": "NO_CONTROLLER", "type": "int8", "native_type": "int8", "literal": "-1", "value": "-1"},
        {"name": "DISCONNECTED", "type": "int8", "native_type": "int8", "literal": "0", "value": "0"},
        {"name": "CONFIRM_SAFETY", "type": "int8", "native_type": "int8", "literal": "1", "value": "1"},
        {"name": "BOOTING", "type": "int8", "native_type": "int8", "literal": "2", "value": "2"},
        {"name": "POWER_OFF", "type": "int8", "native_type": "int8", "literal": "3", "value": "3"},
        {"name": "POWER_ON", "type": "int8", "native_type": "int8", "literal": "4", "value": "4"},
        {"name": "IDLE", "type": "int8", "native_type": "int8", "literal": "5", "value": "5"},
        {"name": "BACKDRIVE", "type": "int8", "native_type": "int8", "literal": "6", "value": "6"},
        {"name": "RUNNING", "type": "int8", "native_type": "int8", "literal": "7", "value": "7"},
        {"name": "UPDATING_FIRMWARE", "type": "int8", "native_type": "int8", "literal": "8", "value": "8"},
    ]
    NO_CONTROLLER: _ClassVar = -1
    DISCONNECTED: _ClassVar = 0
    CONFIRM_SAFETY: _ClassVar = 1
    BOOTING: _ClassVar = 2
    POWER_OFF: _ClassVar = 3
    POWER_ON: _ClassVar = 4
    IDLE: _ClassVar = 5
    BACKDRIVE: _ClassVar = 6
    RUNNING: _ClassVar = 7
    UPDATING_FIRMWARE: _ClassVar = 8
    mode: _py_int = 0

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Ur_dashboard_msgsMsgRobotMode(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_dashboard_msgsMsgRobotMode:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Ur_dashboard_msgsMsgRobotMode(reader)
        reader.end()
        return value


_record_Ros2Ur_dashboard_msgsMsgRobotMode = Ros2Ur_dashboard_msgsMsgRobotMode


def _write_Ros2Ur_dashboard_msgsMsgRobotMode(writer, value):
    if type(value) is not Ros2Ur_dashboard_msgsMsgRobotMode:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.mode
    writer.integer(_part0, 1, True)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_dashboard_msgsMsgRobotMode(reader):
    _start = reader.position
    value = Ros2Ur_dashboard_msgsMsgRobotMode()
    value.mode = reader.integer(1, True)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_dashboard_msgsMsgSafetyMode:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/msg/SafetyMode"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_2eb3d5075a2d7d1765a604c1d1d198379010867d83a98d0327488ca51f5e1aac"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = [
        {"name": "NORMAL", "type": "uint8", "native_type": "uint8", "literal": "1", "value": "1"},
        {"name": "REDUCED", "type": "uint8", "native_type": "uint8", "literal": "2", "value": "2"},
        {"name": "PROTECTIVE_STOP", "type": "uint8", "native_type": "uint8", "literal": "3", "value": "3"},
        {"name": "RECOVERY", "type": "uint8", "native_type": "uint8", "literal": "4", "value": "4"},
        {"name": "SAFEGUARD_STOP", "type": "uint8", "native_type": "uint8", "literal": "5", "value": "5"},
        {
            "name": "SYSTEM_EMERGENCY_STOP",
            "type": "uint8",
            "native_type": "uint8",
            "literal": "6",
            "value": "6",
        },
        {
            "name": "ROBOT_EMERGENCY_STOP",
            "type": "uint8",
            "native_type": "uint8",
            "literal": "7",
            "value": "7",
        },
        {"name": "VIOLATION", "type": "uint8", "native_type": "uint8", "literal": "8", "value": "8"},
        {"name": "FAULT", "type": "uint8", "native_type": "uint8", "literal": "9", "value": "9"},
        {
            "name": "VALIDATE_JOINT_ID",
            "type": "uint8",
            "native_type": "uint8",
            "literal": "10",
            "value": "10",
        },
        {
            "name": "UNDEFINED_SAFETY_MODE",
            "type": "uint8",
            "native_type": "uint8",
            "literal": "11",
            "value": "11",
        },
        {
            "name": "AUTOMATIC_MODE_SAFEGUARD_STOP",
            "type": "uint8",
            "native_type": "uint8",
            "literal": "12",
            "value": "12",
        },
        {
            "name": "SYSTEM_THREE_POSITION_ENABLING_STOP",
            "type": "uint8",
            "native_type": "uint8",
            "literal": "13",
            "value": "13",
        },
    ]
    NORMAL: _ClassVar = 1
    REDUCED: _ClassVar = 2
    PROTECTIVE_STOP: _ClassVar = 3
    RECOVERY: _ClassVar = 4
    SAFEGUARD_STOP: _ClassVar = 5
    SYSTEM_EMERGENCY_STOP: _ClassVar = 6
    ROBOT_EMERGENCY_STOP: _ClassVar = 7
    VIOLATION: _ClassVar = 8
    FAULT: _ClassVar = 9
    VALIDATE_JOINT_ID: _ClassVar = 10
    UNDEFINED_SAFETY_MODE: _ClassVar = 11
    AUTOMATIC_MODE_SAFEGUARD_STOP: _ClassVar = 12
    SYSTEM_THREE_POSITION_ENABLING_STOP: _ClassVar = 13
    mode: _py_int = 0

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Ur_dashboard_msgsMsgSafetyMode(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_dashboard_msgsMsgSafetyMode:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Ur_dashboard_msgsMsgSafetyMode(reader)
        reader.end()
        return value


_record_Ros2Ur_dashboard_msgsMsgSafetyMode = Ros2Ur_dashboard_msgsMsgSafetyMode


def _write_Ros2Ur_dashboard_msgsMsgSafetyMode(writer, value):
    if type(value) is not Ros2Ur_dashboard_msgsMsgSafetyMode:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.mode
    writer.integer(_part0, 1, False)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_dashboard_msgsMsgSafetyMode(reader):
    _start = reader.position
    value = Ros2Ur_dashboard_msgsMsgSafetyMode()
    value.mode = reader.integer(1, False)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_dashboard_msgsMsgSafetyStatus:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/msg/SafetyStatus"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_1b1a7257c40d9c62e0b6291f241825d029fe38f3f3695265a182a270899a79e9"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = [
        {"name": "NORMAL", "type": "int8", "native_type": "int8", "literal": "1", "value": "1"},
        {"name": "REDUCED", "type": "int8", "native_type": "int8", "literal": "2", "value": "2"},
        {"name": "PROTECTIVE_STOP", "type": "int8", "native_type": "int8", "literal": "3", "value": "3"},
        {"name": "RECOVERY", "type": "int8", "native_type": "int8", "literal": "4", "value": "4"},
        {"name": "SAFEGUARD_STOP", "type": "int8", "native_type": "int8", "literal": "5", "value": "5"},
        {
            "name": "SYSTEM_EMERGENCY_STOP",
            "type": "int8",
            "native_type": "int8",
            "literal": "6",
            "value": "6",
        },
        {"name": "ROBOT_EMERGENCY_STOP", "type": "int8", "native_type": "int8", "literal": "7", "value": "7"},
        {"name": "VIOLATION", "type": "int8", "native_type": "int8", "literal": "8", "value": "8"},
        {"name": "FAULT", "type": "int8", "native_type": "int8", "literal": "9", "value": "9"},
        {"name": "VALIDATE_JOINT_ID", "type": "int8", "native_type": "int8", "literal": "10", "value": "10"},
        {
            "name": "UNDEFINED_SAFETY_MODE",
            "type": "int8",
            "native_type": "int8",
            "literal": "11",
            "value": "11",
        },
        {
            "name": "AUTOMATIC_MODE_SAFEGUARD_STOP",
            "type": "int8",
            "native_type": "int8",
            "literal": "12",
            "value": "12",
        },
        {
            "name": "SYSTEM_THREE_POSITION_ENABLING_STOP",
            "type": "int8",
            "native_type": "int8",
            "literal": "13",
            "value": "13",
        },
        {
            "name": "TP_THREE_POSITION_ENABLING_STOP",
            "type": "int8",
            "native_type": "int8",
            "literal": "14",
            "value": "14",
        },
        {
            "name": "IMMI_EMERGENCY_STOP",
            "type": "int8",
            "native_type": "int8",
            "literal": "15",
            "value": "15",
        },
        {
            "name": "IMMI_SAFEGUARD_STOP",
            "type": "int8",
            "native_type": "int8",
            "literal": "16",
            "value": "16",
        },
        {
            "name": "PROFISAFE_WAITING_FOR_PARAMETERS",
            "type": "int8",
            "native_type": "int8",
            "literal": "17",
            "value": "17",
        },
        {
            "name": "PROFISAFE_AUTOMATIC_MODE_SAFEGUARD_STOP",
            "type": "int8",
            "native_type": "int8",
            "literal": "18",
            "value": "18",
        },
        {
            "name": "PROFISAFE_SAFEGUARD_STOP",
            "type": "int8",
            "native_type": "int8",
            "literal": "19",
            "value": "19",
        },
        {
            "name": "PROFISAFE_EMERGENCY_STOP",
            "type": "int8",
            "native_type": "int8",
            "literal": "20",
            "value": "20",
        },
        {
            "name": "SAFETY_API_SAFEGUARD_STOP",
            "type": "int8",
            "native_type": "int8",
            "literal": "22",
            "value": "22",
        },
        {"name": "IO_PLANE_STOP", "type": "int8", "native_type": "int8", "literal": "23", "value": "23"},
    ]
    NORMAL: _ClassVar = 1
    REDUCED: _ClassVar = 2
    PROTECTIVE_STOP: _ClassVar = 3
    RECOVERY: _ClassVar = 4
    SAFEGUARD_STOP: _ClassVar = 5
    SYSTEM_EMERGENCY_STOP: _ClassVar = 6
    ROBOT_EMERGENCY_STOP: _ClassVar = 7
    VIOLATION: _ClassVar = 8
    FAULT: _ClassVar = 9
    VALIDATE_JOINT_ID: _ClassVar = 10
    UNDEFINED_SAFETY_MODE: _ClassVar = 11
    AUTOMATIC_MODE_SAFEGUARD_STOP: _ClassVar = 12
    SYSTEM_THREE_POSITION_ENABLING_STOP: _ClassVar = 13
    TP_THREE_POSITION_ENABLING_STOP: _ClassVar = 14
    IMMI_EMERGENCY_STOP: _ClassVar = 15
    IMMI_SAFEGUARD_STOP: _ClassVar = 16
    PROFISAFE_WAITING_FOR_PARAMETERS: _ClassVar = 17
    PROFISAFE_AUTOMATIC_MODE_SAFEGUARD_STOP: _ClassVar = 18
    PROFISAFE_SAFEGUARD_STOP: _ClassVar = 19
    PROFISAFE_EMERGENCY_STOP: _ClassVar = 20
    SAFETY_API_SAFEGUARD_STOP: _ClassVar = 22
    IO_PLANE_STOP: _ClassVar = 23
    status: _py_int = 0

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Ur_dashboard_msgsMsgSafetyStatus(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_dashboard_msgsMsgSafetyStatus:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Ur_dashboard_msgsMsgSafetyStatus(reader)
        reader.end()
        return value


_record_Ros2Ur_dashboard_msgsMsgSafetyStatus = Ros2Ur_dashboard_msgsMsgSafetyStatus


def _write_Ros2Ur_dashboard_msgsMsgSafetyStatus(writer, value):
    if type(value) is not Ros2Ur_dashboard_msgsMsgSafetyStatus:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.status
    writer.integer(_part0, 1, True)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_dashboard_msgsMsgSafetyStatus(reader):
    _start = reader.position
    value = Ros2Ur_dashboard_msgsMsgSafetyStatus()
    value.status = reader.integer(1, True)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_dashboard_msgsMsgUserRole:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/msg/UserRole"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_7568bc9417685a9bc56cfdd2b41ff81ab99bd8e20fbe5f9e537b5b5d0689440a"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = [
        {
            "name": "PROGRAMMER",
            "type": "string",
            "native_type": "string",
            "literal": "PROGRAMMER",
            "value": "PROGRAMMER",
        },
        {
            "name": "OPERATOR",
            "type": "string",
            "native_type": "string",
            "literal": "OPERATOR",
            "value": "OPERATOR",
        },
        {"name": "NONE", "type": "string", "native_type": "string", "literal": "NONE", "value": "NONE"},
        {"name": "LOCKED", "type": "string", "native_type": "string", "literal": "LOCKED", "value": "LOCKED"},
        {
            "name": "RESTRICTED",
            "type": "string",
            "native_type": "string",
            "literal": "RESTRICTED",
            "value": "RESTRICTED",
        },
    ]
    PROGRAMMER: _ClassVar = "PROGRAMMER"
    OPERATOR: _ClassVar = "OPERATOR"
    NONE: _ClassVar = "NONE"
    LOCKED: _ClassVar = "LOCKED"
    RESTRICTED: _ClassVar = "RESTRICTED"
    role: _py_str = ""

    def encode(self):
        writer = _Writer(260)
        _write_Ros2Ur_dashboard_msgsMsgUserRole(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 260)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_dashboard_msgsMsgUserRole:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 4, 260))
        value = _read_Ros2Ur_dashboard_msgsMsgUserRole(reader)
        reader.end()
        return value


_record_Ros2Ur_dashboard_msgsMsgUserRole = Ros2Ur_dashboard_msgsMsgUserRole


def _write_Ros2Ur_dashboard_msgsMsgUserRole(writer, value):
    if type(value) is not Ros2Ur_dashboard_msgsMsgUserRole:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.role
    _write_text(writer, _part0, 256)
    if not 4 <= len(writer.data) - _start <= 260:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_dashboard_msgsMsgUserRole(reader):
    _start = reader.position
    value = Ros2Ur_dashboard_msgsMsgUserRole()
    value.role = _read_text(reader, 256)
    if not 4 <= reader.position - _start <= 260:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_dashboard_msgsMsgVersionInformation:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/msg/VersionInformation"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_450c41c4361f1bca51f864dd9ef596851b17ebc79d4f784e7abb8b721752443d"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 16
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 16
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 16
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    major: _py_int = 0
    minor: _py_int = 0
    bugfix: _py_int = 0
    build: _py_int = 0

    def encode(self):
        writer = _Writer(16)
        _write_Ros2Ur_dashboard_msgsMsgVersionInformation(writer, self)
        wire = writer.finish()
        return _wire(wire, 16, 16)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_dashboard_msgsMsgVersionInformation:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 16, 16))
        value = _read_Ros2Ur_dashboard_msgsMsgVersionInformation(reader)
        reader.end()
        return value


_record_Ros2Ur_dashboard_msgsMsgVersionInformation = Ros2Ur_dashboard_msgsMsgVersionInformation


def _write_Ros2Ur_dashboard_msgsMsgVersionInformation(writer, value):
    if type(value) is not Ros2Ur_dashboard_msgsMsgVersionInformation:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.major
    writer.integer(_part0, 4, False)
    _part1 = value.minor
    writer.integer(_part1, 4, False)
    _part2 = value.bugfix
    writer.integer(_part2, 4, False)
    _part3 = value.build
    writer.integer(_part3, 4, False)
    if not 16 <= len(writer.data) - _start <= 16:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_dashboard_msgsMsgVersionInformation(reader):
    _start = reader.position
    value = Ros2Ur_dashboard_msgsMsgVersionInformation()
    value.major = reader.integer(4, False)
    value.minor = reader.integer(4, False)
    value.bugfix = reader.integer(4, False)
    value.build = reader.integer(4, False)
    if not 16 <= reader.position - _start <= 16:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_dashboard_msgsSrvAddToLog_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/srv/AddToLog_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_ecfe5bb0d0db92bc5dfdec9bf82fbe730e3b3b4d65680812d0540b9055590142"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    message: _py_str = ""

    def encode(self):
        writer = _Writer(260)
        _write_Ros2Ur_dashboard_msgsSrvAddToLog_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 260)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_dashboard_msgsSrvAddToLog_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 4, 260))
        value = _read_Ros2Ur_dashboard_msgsSrvAddToLog_Request(reader)
        reader.end()
        return value


_record_Ros2Ur_dashboard_msgsSrvAddToLog_Request = Ros2Ur_dashboard_msgsSrvAddToLog_Request


def _write_Ros2Ur_dashboard_msgsSrvAddToLog_Request(writer, value):
    if type(value) is not Ros2Ur_dashboard_msgsSrvAddToLog_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.message
    _write_text(writer, _part0, 256)
    if not 4 <= len(writer.data) - _start <= 260:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_dashboard_msgsSrvAddToLog_Request(reader):
    _start = reader.position
    value = Ros2Ur_dashboard_msgsSrvAddToLog_Request()
    value.message = _read_text(reader, 256)
    if not 4 <= reader.position - _start <= 260:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_dashboard_msgsSrvAddToLog_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/srv/AddToLog_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_57b0c150a353d3fca6e96c4dc86e72f71b452663ede1eeb69e51069992d07e4c"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 5
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 261
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 261
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    answer: _py_str = ""
    success: _py_bool = False

    def encode(self):
        writer = _Writer(261)
        _write_Ros2Ur_dashboard_msgsSrvAddToLog_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 5, 261)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_dashboard_msgsSrvAddToLog_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 5, 261))
        value = _read_Ros2Ur_dashboard_msgsSrvAddToLog_Response(reader)
        reader.end()
        return value


_record_Ros2Ur_dashboard_msgsSrvAddToLog_Response = Ros2Ur_dashboard_msgsSrvAddToLog_Response


def _write_Ros2Ur_dashboard_msgsSrvAddToLog_Response(writer, value):
    if type(value) is not Ros2Ur_dashboard_msgsSrvAddToLog_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.answer
    _write_text(writer, _part0, 256)
    _part1 = value.success
    if type(_part1) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part1), 1)
    if not 5 <= len(writer.data) - _start <= 261:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_dashboard_msgsSrvAddToLog_Response(reader):
    _start = reader.position
    value = Ros2Ur_dashboard_msgsSrvAddToLog_Response()
    value.answer = _read_text(reader, 256)
    value.success = _read_bool(reader)
    if not 5 <= reader.position - _start <= 261:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_dashboard_msgsSrvDownloadProgram_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/srv/DownloadProgram_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_5c84420393aae13ea448d171a7b2956a55a39f3321f504b9f3bd5b4a38960c2f"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 520
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 520
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    program_name: _py_str = ""
    target_path: _py_str = ""

    def encode(self):
        writer = _Writer(520)
        _write_Ros2Ur_dashboard_msgsSrvDownloadProgram_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 520)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_dashboard_msgsSrvDownloadProgram_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 8, 520))
        value = _read_Ros2Ur_dashboard_msgsSrvDownloadProgram_Request(reader)
        reader.end()
        return value


_record_Ros2Ur_dashboard_msgsSrvDownloadProgram_Request = Ros2Ur_dashboard_msgsSrvDownloadProgram_Request


def _write_Ros2Ur_dashboard_msgsSrvDownloadProgram_Request(writer, value):
    if type(value) is not Ros2Ur_dashboard_msgsSrvDownloadProgram_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.program_name
    _write_text(writer, _part0, 256)
    _part1 = value.target_path
    _write_text(writer, _part1, 256)
    if not 8 <= len(writer.data) - _start <= 520:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_dashboard_msgsSrvDownloadProgram_Request(reader):
    _start = reader.position
    value = Ros2Ur_dashboard_msgsSrvDownloadProgram_Request()
    value.program_name = _read_text(reader, 256)
    value.target_path = _read_text(reader, 256)
    if not 8 <= reader.position - _start <= 520:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_dashboard_msgsSrvDownloadProgram_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/srv/DownloadProgram_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_46b0a73805282bad5f819f712275b7dd2ca4a6bb8c73c445ea8ae0a3d0f9e8e0"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 5
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 261
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 261
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    answer: _py_str = ""
    success: _py_bool = False

    def encode(self):
        writer = _Writer(261)
        _write_Ros2Ur_dashboard_msgsSrvDownloadProgram_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 5, 261)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_dashboard_msgsSrvDownloadProgram_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 5, 261))
        value = _read_Ros2Ur_dashboard_msgsSrvDownloadProgram_Response(reader)
        reader.end()
        return value


_record_Ros2Ur_dashboard_msgsSrvDownloadProgram_Response = Ros2Ur_dashboard_msgsSrvDownloadProgram_Response


def _write_Ros2Ur_dashboard_msgsSrvDownloadProgram_Response(writer, value):
    if type(value) is not Ros2Ur_dashboard_msgsSrvDownloadProgram_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.answer
    _write_text(writer, _part0, 256)
    _part1 = value.success
    if type(_part1) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part1), 1)
    if not 5 <= len(writer.data) - _start <= 261:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_dashboard_msgsSrvDownloadProgram_Response(reader):
    _start = reader.position
    value = Ros2Ur_dashboard_msgsSrvDownloadProgram_Response()
    value.answer = _read_text(reader, 256)
    value.success = _read_bool(reader)
    if not 5 <= reader.position - _start <= 261:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/srv/DownloadSupportFile_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_d919563629f81d5a8c10f1d2921ea16f3c912a49b8d3bcf65d17b8daa0a38140"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    target_path: _py_str = ""

    def encode(self):
        writer = _Writer(260)
        _write_Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 260)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 4, 260))
        value = _read_Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Request(reader)
        reader.end()
        return value


_record_Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Request = (
    Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Request
)


def _write_Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Request(writer, value):
    if type(value) is not Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.target_path
    _write_text(writer, _part0, 256)
    if not 4 <= len(writer.data) - _start <= 260:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Request(reader):
    _start = reader.position
    value = Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Request()
    value.target_path = _read_text(reader, 256)
    if not 4 <= reader.position - _start <= 260:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/srv/DownloadSupportFile_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_76e190e6e9f1ddfff3082ea2adb0463d21ba9fb6795153fe6bbacee8a3334667"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 6
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 262
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 262
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    answer: _py_str = ""
    success: _py_bool = False
    support_files_present: _py_bool = False

    def encode(self):
        writer = _Writer(262)
        _write_Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 6, 262)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 6, 262))
        value = _read_Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Response(reader)
        reader.end()
        return value


_record_Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Response = (
    Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Response
)


def _write_Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Response(writer, value):
    if type(value) is not Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.answer
    _write_text(writer, _part0, 256)
    _part1 = value.success
    if type(_part1) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part1), 1)
    _part2 = value.support_files_present
    if type(_part2) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part2), 1)
    if not 6 <= len(writer.data) - _start <= 262:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Response(reader):
    _start = reader.position
    value = Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Response()
    value.answer = _read_text(reader, 256)
    value.success = _read_bool(reader)
    value.support_files_present = _read_bool(reader)
    if not 6 <= reader.position - _start <= 262:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/srv/GenerateFlightReport_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_7246d97690c0c827e9cfab2f8297cf27a10e60e41ebb3ba345f361a109057099"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = [
        {
            "name": "CONTROLLER",
            "type": "string",
            "native_type": "string",
            "literal": "controller",
            "value": "controller",
        },
        {
            "name": "SOFTWARE",
            "type": "string",
            "native_type": "string",
            "literal": "software",
            "value": "software",
        },
        {"name": "SYSTEM", "type": "string", "native_type": "string", "literal": "system", "value": "system"},
    ]
    CONTROLLER: _ClassVar = "controller"
    SOFTWARE: _ClassVar = "software"
    SYSTEM: _ClassVar = "system"
    report_type: _py_str = "SYSTEM"

    def encode(self):
        writer = _Writer(260)
        _write_Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 260)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 4, 260))
        value = _read_Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Request(reader)
        reader.end()
        return value


_record_Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Request = (
    Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Request
)


def _write_Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Request(writer, value):
    if type(value) is not Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.report_type
    _write_text(writer, _part0, 256)
    if not 4 <= len(writer.data) - _start <= 260:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Request(reader):
    _start = reader.position
    value = Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Request()
    value.report_type = _read_text(reader, 256)
    if not 4 <= reader.position - _start <= 260:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/srv/GenerateFlightReport_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_adebf67876b5ae3377cec0aa04138c2ab73ef7c0d7942c77c6c06b248a836445"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 9
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 521
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 521
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False
    answer: _py_str = ""
    report_id: _py_str = ""

    def encode(self):
        writer = _Writer(521)
        _write_Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 9, 521)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 9, 521))
        value = _read_Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Response(reader)
        reader.end()
        return value


_record_Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Response = (
    Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Response
)


def _write_Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Response(writer, value):
    if type(value) is not Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    _part1 = value.answer
    _write_text(writer, _part1, 256)
    _part2 = value.report_id
    _write_text(writer, _part2, 256)
    if not 9 <= len(writer.data) - _start <= 521:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Response(reader):
    _start = reader.position
    value = Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Response()
    value.success = _read_bool(reader)
    value.answer = _read_text(reader, 256)
    value.report_id = _read_text(reader, 256)
    if not 9 <= reader.position - _start <= 521:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/srv/GenerateSupportFile_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_10b0371b77db32d75a77dcb0605b325caa1915ccfb7d0917896fd75234e6ada7"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    dir_path: _py_str = "."

    def encode(self):
        writer = _Writer(260)
        _write_Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 260)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 4, 260))
        value = _read_Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Request(reader)
        reader.end()
        return value


_record_Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Request = (
    Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Request
)


def _write_Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Request(writer, value):
    if type(value) is not Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.dir_path
    _write_text(writer, _part0, 256)
    if not 4 <= len(writer.data) - _start <= 260:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Request(reader):
    _start = reader.position
    value = Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Request()
    value.dir_path = _read_text(reader, 256)
    if not 4 <= reader.position - _start <= 260:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/srv/GenerateSupportFile_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_f370623fe690f218073f8538aa9fcf41c94d4abd3e0507e09607ef11e10edf38"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 9
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 521
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 521
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False
    answer: _py_str = ""
    generated_file_name: _py_str = ""

    def encode(self):
        writer = _Writer(521)
        _write_Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 9, 521)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 9, 521))
        value = _read_Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Response(reader)
        reader.end()
        return value


_record_Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Response = (
    Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Response
)


def _write_Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Response(writer, value):
    if type(value) is not Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    _part1 = value.answer
    _write_text(writer, _part1, 256)
    _part2 = value.generated_file_name
    _write_text(writer, _part2, 256)
    if not 9 <= len(writer.data) - _start <= 521:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Response(reader):
    _start = reader.position
    value = Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Response()
    value.success = _read_bool(reader)
    value.answer = _read_text(reader, 256)
    value.generated_file_name = _read_text(reader, 256)
    if not 9 <= reader.position - _start <= 521:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/srv/GetLoadedProgram_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_030e5746e6a4da8f266e37d11cc3826715099ff1aa1c845a97042aec987707e3"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Request(reader)
        reader.end()
        return value


_record_Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Request = Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Request


def _write_Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Request(writer, value):
    if type(value) is not Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Request(reader):
    _start = reader.position
    value = Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Request()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/srv/GetLoadedProgram_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_3e8c7f3c8711faea01de37b9a011f34a9c6dd660cc222e46177b2c1898ec2f7e"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 9
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 521
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 521
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    answer: _py_str = ""
    program_name: _py_str = ""
    success: _py_bool = False

    def encode(self):
        writer = _Writer(521)
        _write_Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 9, 521)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 9, 521))
        value = _read_Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Response(reader)
        reader.end()
        return value


_record_Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Response = Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Response


def _write_Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Response(writer, value):
    if type(value) is not Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.answer
    _write_text(writer, _part0, 256)
    _part1 = value.program_name
    _write_text(writer, _part1, 256)
    _part2 = value.success
    if type(_part2) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part2), 1)
    if not 9 <= len(writer.data) - _start <= 521:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Response(reader):
    _start = reader.position
    value = Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Response()
    value.answer = _read_text(reader, 256)
    value.program_name = _read_text(reader, 256)
    value.success = _read_bool(reader)
    if not 9 <= reader.position - _start <= 521:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_dashboard_msgsSrvGetOperationalMode_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/srv/GetOperationalMode_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_3f348b5d9e04a8ba01f5277ad259c34a6816ae0693f47c49e348a5497a90a325"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros2Ur_dashboard_msgsSrvGetOperationalMode_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_dashboard_msgsSrvGetOperationalMode_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros2Ur_dashboard_msgsSrvGetOperationalMode_Request(reader)
        reader.end()
        return value


_record_Ros2Ur_dashboard_msgsSrvGetOperationalMode_Request = (
    Ros2Ur_dashboard_msgsSrvGetOperationalMode_Request
)


def _write_Ros2Ur_dashboard_msgsSrvGetOperationalMode_Request(writer, value):
    if type(value) is not Ros2Ur_dashboard_msgsSrvGetOperationalMode_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros2Ur_dashboard_msgsSrvGetOperationalMode_Request(reader):
    _start = reader.position
    value = Ros2Ur_dashboard_msgsSrvGetOperationalMode_Request()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_dashboard_msgsSrvGetOperationalMode_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/srv/GetOperationalMode_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_6c2da335fd551162020eb394b91e99aaeca17e34e7c2e98de935c81912efb5f6"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 9
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 521
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 521
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False
    answer: _py_str = ""
    operational_mode: _record_Ros2Ur_dashboard_msgsMsgOperationalMode = _field(
        default_factory=lambda: Ros2Ur_dashboard_msgsMsgOperationalMode()
    )

    def encode(self):
        writer = _Writer(521)
        _write_Ros2Ur_dashboard_msgsSrvGetOperationalMode_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 9, 521)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_dashboard_msgsSrvGetOperationalMode_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 9, 521))
        value = _read_Ros2Ur_dashboard_msgsSrvGetOperationalMode_Response(reader)
        reader.end()
        return value


_record_Ros2Ur_dashboard_msgsSrvGetOperationalMode_Response = (
    Ros2Ur_dashboard_msgsSrvGetOperationalMode_Response
)


def _write_Ros2Ur_dashboard_msgsSrvGetOperationalMode_Response(writer, value):
    if type(value) is not Ros2Ur_dashboard_msgsSrvGetOperationalMode_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    _part1 = value.answer
    _write_text(writer, _part1, 256)
    _part2 = value.operational_mode
    _write_Ros2Ur_dashboard_msgsMsgOperationalMode(writer, _part2)
    if not 9 <= len(writer.data) - _start <= 521:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_dashboard_msgsSrvGetOperationalMode_Response(reader):
    _start = reader.position
    value = Ros2Ur_dashboard_msgsSrvGetOperationalMode_Response()
    value.success = _read_bool(reader)
    value.answer = _read_text(reader, 256)
    value.operational_mode = _read_Ros2Ur_dashboard_msgsMsgOperationalMode(reader)
    if not 9 <= reader.position - _start <= 521:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/srv/GetPolyScopeVersion_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_88193ae202f0cb02746bc5556e8e8ee277fb4fae72ee4b96a6539c980dc86f13"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Request(reader)
        reader.end()
        return value


_record_Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Request = (
    Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Request
)


def _write_Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Request(writer, value):
    if type(value) is not Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Request(reader):
    _start = reader.position
    value = Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Request()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/srv/GetPolyScopeVersion_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_c8d53d0a920806e86ceb6d2ac5a692a92e62b057432554bed9dcf57bed0ff9bd"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 21
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 277
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 277
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    answer: _py_str = ""
    success: _py_bool = False
    version: _record_Ros2Ur_dashboard_msgsMsgVersionInformation = _field(
        default_factory=lambda: Ros2Ur_dashboard_msgsMsgVersionInformation()
    )

    def encode(self):
        writer = _Writer(277)
        _write_Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 21, 277)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 21, 277))
        value = _read_Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Response(reader)
        reader.end()
        return value


_record_Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Response = (
    Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Response
)


def _write_Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Response(writer, value):
    if type(value) is not Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.answer
    _write_text(writer, _part0, 256)
    _part1 = value.success
    if type(_part1) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part1), 1)
    _part2 = value.version
    _write_Ros2Ur_dashboard_msgsMsgVersionInformation(writer, _part2)
    if not 21 <= len(writer.data) - _start <= 277:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Response(reader):
    _start = reader.position
    value = Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Response()
    value.answer = _read_text(reader, 256)
    value.success = _read_bool(reader)
    value.version = _read_Ros2Ur_dashboard_msgsMsgVersionInformation(reader)
    if not 21 <= reader.position - _start <= 277:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_dashboard_msgsSrvGetProgramState_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/srv/GetProgramState_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_fe42d1d1aa3d7bdbaa410bce045120d6dd841213ef10c5dd158c2b76fa157f65"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros2Ur_dashboard_msgsSrvGetProgramState_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_dashboard_msgsSrvGetProgramState_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros2Ur_dashboard_msgsSrvGetProgramState_Request(reader)
        reader.end()
        return value


_record_Ros2Ur_dashboard_msgsSrvGetProgramState_Request = Ros2Ur_dashboard_msgsSrvGetProgramState_Request


def _write_Ros2Ur_dashboard_msgsSrvGetProgramState_Request(writer, value):
    if type(value) is not Ros2Ur_dashboard_msgsSrvGetProgramState_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros2Ur_dashboard_msgsSrvGetProgramState_Request(reader):
    _start = reader.position
    value = Ros2Ur_dashboard_msgsSrvGetProgramState_Request()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_dashboard_msgsSrvGetProgramState_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/srv/GetProgramState_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_b20731b8552f323837c5939f390060a6c7c92e9447df5e620891708cfce51ff4"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 13
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 781
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 781
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    state: _record_Ros2Ur_dashboard_msgsMsgProgramState = _field(
        default_factory=lambda: Ros2Ur_dashboard_msgsMsgProgramState()
    )
    program_name: _py_str = ""
    answer: _py_str = ""
    success: _py_bool = False

    def encode(self):
        writer = _Writer(781)
        _write_Ros2Ur_dashboard_msgsSrvGetProgramState_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 13, 781)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_dashboard_msgsSrvGetProgramState_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 13, 781))
        value = _read_Ros2Ur_dashboard_msgsSrvGetProgramState_Response(reader)
        reader.end()
        return value


_record_Ros2Ur_dashboard_msgsSrvGetProgramState_Response = Ros2Ur_dashboard_msgsSrvGetProgramState_Response


def _write_Ros2Ur_dashboard_msgsSrvGetProgramState_Response(writer, value):
    if type(value) is not Ros2Ur_dashboard_msgsSrvGetProgramState_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.state
    _write_Ros2Ur_dashboard_msgsMsgProgramState(writer, _part0)
    _part1 = value.program_name
    _write_text(writer, _part1, 256)
    _part2 = value.answer
    _write_text(writer, _part2, 256)
    _part3 = value.success
    if type(_part3) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part3), 1)
    if not 13 <= len(writer.data) - _start <= 781:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_dashboard_msgsSrvGetProgramState_Response(reader):
    _start = reader.position
    value = Ros2Ur_dashboard_msgsSrvGetProgramState_Response()
    value.state = _read_Ros2Ur_dashboard_msgsMsgProgramState(reader)
    value.program_name = _read_text(reader, 256)
    value.answer = _read_text(reader, 256)
    value.success = _read_bool(reader)
    if not 13 <= reader.position - _start <= 781:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_dashboard_msgsSrvGetPrograms_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/srv/GetPrograms_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_8d7b4f3fb9a15854b59c85c5205bf20d3e0f6a1a972ccbdf77ee8377c9e40d6d"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros2Ur_dashboard_msgsSrvGetPrograms_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_dashboard_msgsSrvGetPrograms_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros2Ur_dashboard_msgsSrvGetPrograms_Request(reader)
        reader.end()
        return value


_record_Ros2Ur_dashboard_msgsSrvGetPrograms_Request = Ros2Ur_dashboard_msgsSrvGetPrograms_Request


def _write_Ros2Ur_dashboard_msgsSrvGetPrograms_Request(writer, value):
    if type(value) is not Ros2Ur_dashboard_msgsSrvGetPrograms_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros2Ur_dashboard_msgsSrvGetPrograms_Request(reader):
    _start = reader.position
    value = Ros2Ur_dashboard_msgsSrvGetPrograms_Request()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_dashboard_msgsSrvGetPrograms_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/srv/GetPrograms_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_111b67c562ba0c77c2924b97058e4126055ad6deb7f99049b8caf8990b3f979c"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 9
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 11081
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 11081
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    programs: _py_list[_record_Ros2Ur_dashboard_msgsMsgProgramInformation] = _field(
        default_factory=lambda: []
    )
    answer: _py_str = ""
    success: _py_bool = False

    def encode(self):
        writer = _Writer(11081)
        _write_Ros2Ur_dashboard_msgsSrvGetPrograms_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 9, 11081)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_dashboard_msgsSrvGetPrograms_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 9, 11081))
        value = _read_Ros2Ur_dashboard_msgsSrvGetPrograms_Response(reader)
        reader.end()
        return value


_record_Ros2Ur_dashboard_msgsSrvGetPrograms_Response = Ros2Ur_dashboard_msgsSrvGetPrograms_Response


def _write_Ros2Ur_dashboard_msgsSrvGetPrograms_Response(writer, value):
    if type(value) is not Ros2Ur_dashboard_msgsSrvGetPrograms_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.programs
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 > 16:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count0, 4)
    for _index in range(_count0):
        _element = _part0[_index]
        _write_Ros2Ur_dashboard_msgsMsgProgramInformation(writer, _element)
    _part1 = value.answer
    _write_text(writer, _part1, 256)
    _part2 = value.success
    if type(_part2) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part2), 1)
    if not 9 <= len(writer.data) - _start <= 11081:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_dashboard_msgsSrvGetPrograms_Response(reader):
    _start = reader.position
    value = Ros2Ur_dashboard_msgsSrvGetPrograms_Response()
    value.programs = [
        _read_Ros2Ur_dashboard_msgsMsgProgramInformation(reader) for _ in range(_read_count(reader, 16, 36))
    ]
    value.answer = _read_text(reader, 256)
    value.success = _read_bool(reader)
    if not 9 <= reader.position - _start <= 11081:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_dashboard_msgsSrvGetRobotMode_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/srv/GetRobotMode_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_d1d9cd94a443b20ec0d41a8db1a6d87291657597abc014e7da0f46a58c6c5614"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros2Ur_dashboard_msgsSrvGetRobotMode_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_dashboard_msgsSrvGetRobotMode_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros2Ur_dashboard_msgsSrvGetRobotMode_Request(reader)
        reader.end()
        return value


_record_Ros2Ur_dashboard_msgsSrvGetRobotMode_Request = Ros2Ur_dashboard_msgsSrvGetRobotMode_Request


def _write_Ros2Ur_dashboard_msgsSrvGetRobotMode_Request(writer, value):
    if type(value) is not Ros2Ur_dashboard_msgsSrvGetRobotMode_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros2Ur_dashboard_msgsSrvGetRobotMode_Request(reader):
    _start = reader.position
    value = Ros2Ur_dashboard_msgsSrvGetRobotMode_Request()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_dashboard_msgsSrvGetRobotMode_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/srv/GetRobotMode_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_67db750ad95b3b207d61b18513a117c868040c22c93638f07fa74645d87bcfba"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 6
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 262
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 262
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    robot_mode: _record_Ros2Ur_dashboard_msgsMsgRobotMode = _field(
        default_factory=lambda: Ros2Ur_dashboard_msgsMsgRobotMode()
    )
    answer: _py_str = ""
    success: _py_bool = False

    def encode(self):
        writer = _Writer(262)
        _write_Ros2Ur_dashboard_msgsSrvGetRobotMode_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 6, 262)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_dashboard_msgsSrvGetRobotMode_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 6, 262))
        value = _read_Ros2Ur_dashboard_msgsSrvGetRobotMode_Response(reader)
        reader.end()
        return value


_record_Ros2Ur_dashboard_msgsSrvGetRobotMode_Response = Ros2Ur_dashboard_msgsSrvGetRobotMode_Response


def _write_Ros2Ur_dashboard_msgsSrvGetRobotMode_Response(writer, value):
    if type(value) is not Ros2Ur_dashboard_msgsSrvGetRobotMode_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.robot_mode
    _write_Ros2Ur_dashboard_msgsMsgRobotMode(writer, _part0)
    _part1 = value.answer
    _write_text(writer, _part1, 256)
    _part2 = value.success
    if type(_part2) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part2), 1)
    if not 6 <= len(writer.data) - _start <= 262:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_dashboard_msgsSrvGetRobotMode_Response(reader):
    _start = reader.position
    value = Ros2Ur_dashboard_msgsSrvGetRobotMode_Response()
    value.robot_mode = _read_Ros2Ur_dashboard_msgsMsgRobotMode(reader)
    value.answer = _read_text(reader, 256)
    value.success = _read_bool(reader)
    if not 6 <= reader.position - _start <= 262:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_dashboard_msgsSrvGetRobotModel_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/srv/GetRobotModel_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_9db08f07993bd5786aea5b6bd567f9e9f49329883326ea16e6c49eef1586dc43"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros2Ur_dashboard_msgsSrvGetRobotModel_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_dashboard_msgsSrvGetRobotModel_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros2Ur_dashboard_msgsSrvGetRobotModel_Request(reader)
        reader.end()
        return value


_record_Ros2Ur_dashboard_msgsSrvGetRobotModel_Request = Ros2Ur_dashboard_msgsSrvGetRobotModel_Request


def _write_Ros2Ur_dashboard_msgsSrvGetRobotModel_Request(writer, value):
    if type(value) is not Ros2Ur_dashboard_msgsSrvGetRobotModel_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros2Ur_dashboard_msgsSrvGetRobotModel_Request(reader):
    _start = reader.position
    value = Ros2Ur_dashboard_msgsSrvGetRobotModel_Request()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_dashboard_msgsSrvGetRobotModel_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/srv/GetRobotModel_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_faf0124c542ef7420915527c27e99a7d26c5d6274f55d869bc9416e6b7d9b3c9"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 9
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 521
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 521
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False
    answer: _py_str = ""
    robot_model: _py_str = ""

    def encode(self):
        writer = _Writer(521)
        _write_Ros2Ur_dashboard_msgsSrvGetRobotModel_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 9, 521)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_dashboard_msgsSrvGetRobotModel_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 9, 521))
        value = _read_Ros2Ur_dashboard_msgsSrvGetRobotModel_Response(reader)
        reader.end()
        return value


_record_Ros2Ur_dashboard_msgsSrvGetRobotModel_Response = Ros2Ur_dashboard_msgsSrvGetRobotModel_Response


def _write_Ros2Ur_dashboard_msgsSrvGetRobotModel_Response(writer, value):
    if type(value) is not Ros2Ur_dashboard_msgsSrvGetRobotModel_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    _part1 = value.answer
    _write_text(writer, _part1, 256)
    _part2 = value.robot_model
    _write_text(writer, _part2, 256)
    if not 9 <= len(writer.data) - _start <= 521:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_dashboard_msgsSrvGetRobotModel_Response(reader):
    _start = reader.position
    value = Ros2Ur_dashboard_msgsSrvGetRobotModel_Response()
    value.success = _read_bool(reader)
    value.answer = _read_text(reader, 256)
    value.robot_model = _read_text(reader, 256)
    if not 9 <= reader.position - _start <= 521:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_dashboard_msgsSrvGetSafetyMode_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/srv/GetSafetyMode_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_5866cc4b0e10508eeb45ceecf9f9b6036ba55d04c9613622e189ccde2781dcb0"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros2Ur_dashboard_msgsSrvGetSafetyMode_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_dashboard_msgsSrvGetSafetyMode_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros2Ur_dashboard_msgsSrvGetSafetyMode_Request(reader)
        reader.end()
        return value


_record_Ros2Ur_dashboard_msgsSrvGetSafetyMode_Request = Ros2Ur_dashboard_msgsSrvGetSafetyMode_Request


def _write_Ros2Ur_dashboard_msgsSrvGetSafetyMode_Request(writer, value):
    if type(value) is not Ros2Ur_dashboard_msgsSrvGetSafetyMode_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros2Ur_dashboard_msgsSrvGetSafetyMode_Request(reader):
    _start = reader.position
    value = Ros2Ur_dashboard_msgsSrvGetSafetyMode_Request()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_dashboard_msgsSrvGetSafetyMode_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/srv/GetSafetyMode_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_f65d7ff83dc97f891032d8ab16bf71a9c2326c6ae6a033fe1d6e06f011c5a40b"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 6
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 262
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 262
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    safety_mode: _record_Ros2Ur_dashboard_msgsMsgSafetyMode = _field(
        default_factory=lambda: Ros2Ur_dashboard_msgsMsgSafetyMode()
    )
    answer: _py_str = ""
    success: _py_bool = False

    def encode(self):
        writer = _Writer(262)
        _write_Ros2Ur_dashboard_msgsSrvGetSafetyMode_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 6, 262)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_dashboard_msgsSrvGetSafetyMode_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 6, 262))
        value = _read_Ros2Ur_dashboard_msgsSrvGetSafetyMode_Response(reader)
        reader.end()
        return value


_record_Ros2Ur_dashboard_msgsSrvGetSafetyMode_Response = Ros2Ur_dashboard_msgsSrvGetSafetyMode_Response


def _write_Ros2Ur_dashboard_msgsSrvGetSafetyMode_Response(writer, value):
    if type(value) is not Ros2Ur_dashboard_msgsSrvGetSafetyMode_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.safety_mode
    _write_Ros2Ur_dashboard_msgsMsgSafetyMode(writer, _part0)
    _part1 = value.answer
    _write_text(writer, _part1, 256)
    _part2 = value.success
    if type(_part2) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part2), 1)
    if not 6 <= len(writer.data) - _start <= 262:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_dashboard_msgsSrvGetSafetyMode_Response(reader):
    _start = reader.position
    value = Ros2Ur_dashboard_msgsSrvGetSafetyMode_Response()
    value.safety_mode = _read_Ros2Ur_dashboard_msgsMsgSafetyMode(reader)
    value.answer = _read_text(reader, 256)
    value.success = _read_bool(reader)
    if not 6 <= reader.position - _start <= 262:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/srv/GetSafetyStatus_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_0e2958bcd7b121682361c94b2926bcc4552d7ef07dc2af4609d04b1bb7054602"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Request(reader)
        reader.end()
        return value


_record_Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Request = Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Request


def _write_Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Request(writer, value):
    if type(value) is not Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Request(reader):
    _start = reader.position
    value = Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Request()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/srv/GetSafetyStatus_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_bb96aaa96f5c78b97ad80a14eb96865dc10b5a1d12524fcbcc75fc6d481c53e4"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 6
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 262
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 262
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    answer: _py_str = ""
    success: _py_bool = False
    safety_status: _record_Ros2Ur_dashboard_msgsMsgSafetyStatus = _field(
        default_factory=lambda: Ros2Ur_dashboard_msgsMsgSafetyStatus()
    )

    def encode(self):
        writer = _Writer(262)
        _write_Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 6, 262)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 6, 262))
        value = _read_Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Response(reader)
        reader.end()
        return value


_record_Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Response = Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Response


def _write_Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Response(writer, value):
    if type(value) is not Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.answer
    _write_text(writer, _part0, 256)
    _part1 = value.success
    if type(_part1) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part1), 1)
    _part2 = value.safety_status
    _write_Ros2Ur_dashboard_msgsMsgSafetyStatus(writer, _part2)
    if not 6 <= len(writer.data) - _start <= 262:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Response(reader):
    _start = reader.position
    value = Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Response()
    value.answer = _read_text(reader, 256)
    value.success = _read_bool(reader)
    value.safety_status = _read_Ros2Ur_dashboard_msgsMsgSafetyStatus(reader)
    if not 6 <= reader.position - _start <= 262:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_dashboard_msgsSrvGetSerialNumber_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/srv/GetSerialNumber_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_bbb1ca066c77ed459352de69d566f3ea87b94fe593c31c911193416f92a73c9b"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros2Ur_dashboard_msgsSrvGetSerialNumber_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_dashboard_msgsSrvGetSerialNumber_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros2Ur_dashboard_msgsSrvGetSerialNumber_Request(reader)
        reader.end()
        return value


_record_Ros2Ur_dashboard_msgsSrvGetSerialNumber_Request = Ros2Ur_dashboard_msgsSrvGetSerialNumber_Request


def _write_Ros2Ur_dashboard_msgsSrvGetSerialNumber_Request(writer, value):
    if type(value) is not Ros2Ur_dashboard_msgsSrvGetSerialNumber_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros2Ur_dashboard_msgsSrvGetSerialNumber_Request(reader):
    _start = reader.position
    value = Ros2Ur_dashboard_msgsSrvGetSerialNumber_Request()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_dashboard_msgsSrvGetSerialNumber_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/srv/GetSerialNumber_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_f389641d089fa6fd421348f047732de2122cd714bdb2bd4d1e611592aca349e7"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 13
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 269
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 269
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    serial_number: _py_int = 0
    answer: _py_str = ""
    success: _py_bool = False

    def encode(self):
        writer = _Writer(269)
        _write_Ros2Ur_dashboard_msgsSrvGetSerialNumber_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 13, 269)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_dashboard_msgsSrvGetSerialNumber_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 13, 269))
        value = _read_Ros2Ur_dashboard_msgsSrvGetSerialNumber_Response(reader)
        reader.end()
        return value


_record_Ros2Ur_dashboard_msgsSrvGetSerialNumber_Response = Ros2Ur_dashboard_msgsSrvGetSerialNumber_Response


def _write_Ros2Ur_dashboard_msgsSrvGetSerialNumber_Response(writer, value):
    if type(value) is not Ros2Ur_dashboard_msgsSrvGetSerialNumber_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.serial_number
    writer.integer(_part0, 8, False)
    _part1 = value.answer
    _write_text(writer, _part1, 256)
    _part2 = value.success
    if type(_part2) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part2), 1)
    if not 13 <= len(writer.data) - _start <= 269:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_dashboard_msgsSrvGetSerialNumber_Response(reader):
    _start = reader.position
    value = Ros2Ur_dashboard_msgsSrvGetSerialNumber_Response()
    value.serial_number = reader.integer(8, False)
    value.answer = _read_text(reader, 256)
    value.success = _read_bool(reader)
    if not 13 <= reader.position - _start <= 269:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_dashboard_msgsSrvGetUserRole_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/srv/GetUserRole_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_a331be09dd2093e4584e6dc80f83caaadd3a8e43cca6a1c8fcfa1e2ea632c9f0"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros2Ur_dashboard_msgsSrvGetUserRole_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_dashboard_msgsSrvGetUserRole_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros2Ur_dashboard_msgsSrvGetUserRole_Request(reader)
        reader.end()
        return value


_record_Ros2Ur_dashboard_msgsSrvGetUserRole_Request = Ros2Ur_dashboard_msgsSrvGetUserRole_Request


def _write_Ros2Ur_dashboard_msgsSrvGetUserRole_Request(writer, value):
    if type(value) is not Ros2Ur_dashboard_msgsSrvGetUserRole_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros2Ur_dashboard_msgsSrvGetUserRole_Request(reader):
    _start = reader.position
    value = Ros2Ur_dashboard_msgsSrvGetUserRole_Request()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_dashboard_msgsSrvGetUserRole_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/srv/GetUserRole_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_ed4f53e59fbe4cd33cfbf5d190b60fbe8371dda7da9d7af6e270a882eb142df8"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 9
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 521
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 521
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    user_role: _record_Ros2Ur_dashboard_msgsMsgUserRole = _field(
        default_factory=lambda: Ros2Ur_dashboard_msgsMsgUserRole()
    )
    answer: _py_str = ""
    success: _py_bool = False

    def encode(self):
        writer = _Writer(521)
        _write_Ros2Ur_dashboard_msgsSrvGetUserRole_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 9, 521)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_dashboard_msgsSrvGetUserRole_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 9, 521))
        value = _read_Ros2Ur_dashboard_msgsSrvGetUserRole_Response(reader)
        reader.end()
        return value


_record_Ros2Ur_dashboard_msgsSrvGetUserRole_Response = Ros2Ur_dashboard_msgsSrvGetUserRole_Response


def _write_Ros2Ur_dashboard_msgsSrvGetUserRole_Response(writer, value):
    if type(value) is not Ros2Ur_dashboard_msgsSrvGetUserRole_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.user_role
    _write_Ros2Ur_dashboard_msgsMsgUserRole(writer, _part0)
    _part1 = value.answer
    _write_text(writer, _part1, 256)
    _part2 = value.success
    if type(_part2) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part2), 1)
    if not 9 <= len(writer.data) - _start <= 521:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_dashboard_msgsSrvGetUserRole_Response(reader):
    _start = reader.position
    value = Ros2Ur_dashboard_msgsSrvGetUserRole_Response()
    value.user_role = _read_Ros2Ur_dashboard_msgsMsgUserRole(reader)
    value.answer = _read_text(reader, 256)
    value.success = _read_bool(reader)
    if not 9 <= reader.position - _start <= 521:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/srv/IsInRemoteControl_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_4b6b86fc4337c36589e8781b46ddbe6992f750b565ff413ea0b069982d87a463"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Request(reader)
        reader.end()
        return value


_record_Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Request = Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Request


def _write_Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Request(writer, value):
    if type(value) is not Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Request(reader):
    _start = reader.position
    value = Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Request()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/srv/IsInRemoteControl_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_f2705c1be319c7c667f4f2224851b06c24b15b4211c2828fab89f09455e4c816"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 6
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 262
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 262
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    answer: _py_str = ""
    remote_control: _py_bool = False
    success: _py_bool = False

    def encode(self):
        writer = _Writer(262)
        _write_Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 6, 262)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 6, 262))
        value = _read_Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Response(reader)
        reader.end()
        return value


_record_Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Response = (
    Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Response
)


def _write_Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Response(writer, value):
    if type(value) is not Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.answer
    _write_text(writer, _part0, 256)
    _part1 = value.remote_control
    if type(_part1) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part1), 1)
    _part2 = value.success
    if type(_part2) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part2), 1)
    if not 6 <= len(writer.data) - _start <= 262:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Response(reader):
    _start = reader.position
    value = Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Response()
    value.answer = _read_text(reader, 256)
    value.remote_control = _read_bool(reader)
    value.success = _read_bool(reader)
    if not 6 <= reader.position - _start <= 262:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_dashboard_msgsSrvIsProgramRunning_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/srv/IsProgramRunning_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_f28274c0dc01d8aa2f981f969c05a614e6b3922601d578f99c6321a4b20fc80f"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros2Ur_dashboard_msgsSrvIsProgramRunning_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_dashboard_msgsSrvIsProgramRunning_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros2Ur_dashboard_msgsSrvIsProgramRunning_Request(reader)
        reader.end()
        return value


_record_Ros2Ur_dashboard_msgsSrvIsProgramRunning_Request = Ros2Ur_dashboard_msgsSrvIsProgramRunning_Request


def _write_Ros2Ur_dashboard_msgsSrvIsProgramRunning_Request(writer, value):
    if type(value) is not Ros2Ur_dashboard_msgsSrvIsProgramRunning_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros2Ur_dashboard_msgsSrvIsProgramRunning_Request(reader):
    _start = reader.position
    value = Ros2Ur_dashboard_msgsSrvIsProgramRunning_Request()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_dashboard_msgsSrvIsProgramRunning_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/srv/IsProgramRunning_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_c57cc7ecd7e81f7359824b43884a58f65748a4c77cacbcc45be17aa9147cf499"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 6
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 262
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 262
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    answer: _py_str = ""
    program_running: _py_bool = False
    success: _py_bool = False

    def encode(self):
        writer = _Writer(262)
        _write_Ros2Ur_dashboard_msgsSrvIsProgramRunning_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 6, 262)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_dashboard_msgsSrvIsProgramRunning_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 6, 262))
        value = _read_Ros2Ur_dashboard_msgsSrvIsProgramRunning_Response(reader)
        reader.end()
        return value


_record_Ros2Ur_dashboard_msgsSrvIsProgramRunning_Response = Ros2Ur_dashboard_msgsSrvIsProgramRunning_Response


def _write_Ros2Ur_dashboard_msgsSrvIsProgramRunning_Response(writer, value):
    if type(value) is not Ros2Ur_dashboard_msgsSrvIsProgramRunning_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.answer
    _write_text(writer, _part0, 256)
    _part1 = value.program_running
    if type(_part1) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part1), 1)
    _part2 = value.success
    if type(_part2) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part2), 1)
    if not 6 <= len(writer.data) - _start <= 262:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_dashboard_msgsSrvIsProgramRunning_Response(reader):
    _start = reader.position
    value = Ros2Ur_dashboard_msgsSrvIsProgramRunning_Response()
    value.answer = _read_text(reader, 256)
    value.program_running = _read_bool(reader)
    value.success = _read_bool(reader)
    if not 6 <= reader.position - _start <= 262:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_dashboard_msgsSrvIsProgramSaved_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/srv/IsProgramSaved_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_c53d57cffc0480d66257150a8450ba90563fda5153742784831d38abcbc0b099"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros2Ur_dashboard_msgsSrvIsProgramSaved_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_dashboard_msgsSrvIsProgramSaved_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros2Ur_dashboard_msgsSrvIsProgramSaved_Request(reader)
        reader.end()
        return value


_record_Ros2Ur_dashboard_msgsSrvIsProgramSaved_Request = Ros2Ur_dashboard_msgsSrvIsProgramSaved_Request


def _write_Ros2Ur_dashboard_msgsSrvIsProgramSaved_Request(writer, value):
    if type(value) is not Ros2Ur_dashboard_msgsSrvIsProgramSaved_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros2Ur_dashboard_msgsSrvIsProgramSaved_Request(reader):
    _start = reader.position
    value = Ros2Ur_dashboard_msgsSrvIsProgramSaved_Request()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_dashboard_msgsSrvIsProgramSaved_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/srv/IsProgramSaved_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_aa171247f31fd00a1b8820ee21cf20d159bd10d0d2887dc96b3a4dd4d372d115"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 10
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 522
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 522
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    answer: _py_str = ""
    program_name: _py_str = ""
    program_saved: _py_bool = False
    success: _py_bool = False

    def encode(self):
        writer = _Writer(522)
        _write_Ros2Ur_dashboard_msgsSrvIsProgramSaved_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 10, 522)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_dashboard_msgsSrvIsProgramSaved_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 10, 522))
        value = _read_Ros2Ur_dashboard_msgsSrvIsProgramSaved_Response(reader)
        reader.end()
        return value


_record_Ros2Ur_dashboard_msgsSrvIsProgramSaved_Response = Ros2Ur_dashboard_msgsSrvIsProgramSaved_Response


def _write_Ros2Ur_dashboard_msgsSrvIsProgramSaved_Response(writer, value):
    if type(value) is not Ros2Ur_dashboard_msgsSrvIsProgramSaved_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.answer
    _write_text(writer, _part0, 256)
    _part1 = value.program_name
    _write_text(writer, _part1, 256)
    _part2 = value.program_saved
    if type(_part2) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part2), 1)
    _part3 = value.success
    if type(_part3) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part3), 1)
    if not 10 <= len(writer.data) - _start <= 522:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_dashboard_msgsSrvIsProgramSaved_Response(reader):
    _start = reader.position
    value = Ros2Ur_dashboard_msgsSrvIsProgramSaved_Response()
    value.answer = _read_text(reader, 256)
    value.program_name = _read_text(reader, 256)
    value.program_saved = _read_bool(reader)
    value.success = _read_bool(reader)
    if not 10 <= reader.position - _start <= 522:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_dashboard_msgsSrvLoad_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/srv/Load_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_1d0cd6cdeaaafce999a7e9924721246b9f4954f22da40fd0a27fb7b657324876"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    filename: _py_str = ""

    def encode(self):
        writer = _Writer(260)
        _write_Ros2Ur_dashboard_msgsSrvLoad_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 260)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_dashboard_msgsSrvLoad_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 4, 260))
        value = _read_Ros2Ur_dashboard_msgsSrvLoad_Request(reader)
        reader.end()
        return value


_record_Ros2Ur_dashboard_msgsSrvLoad_Request = Ros2Ur_dashboard_msgsSrvLoad_Request


def _write_Ros2Ur_dashboard_msgsSrvLoad_Request(writer, value):
    if type(value) is not Ros2Ur_dashboard_msgsSrvLoad_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.filename
    _write_text(writer, _part0, 256)
    if not 4 <= len(writer.data) - _start <= 260:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_dashboard_msgsSrvLoad_Request(reader):
    _start = reader.position
    value = Ros2Ur_dashboard_msgsSrvLoad_Request()
    value.filename = _read_text(reader, 256)
    if not 4 <= reader.position - _start <= 260:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_dashboard_msgsSrvLoad_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/srv/Load_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_4e694de8079133a8e789add3640dfe19805cad92991a650167c2aae7067da415"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 5
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 261
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 261
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    answer: _py_str = ""
    success: _py_bool = False

    def encode(self):
        writer = _Writer(261)
        _write_Ros2Ur_dashboard_msgsSrvLoad_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 5, 261)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_dashboard_msgsSrvLoad_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 5, 261))
        value = _read_Ros2Ur_dashboard_msgsSrvLoad_Response(reader)
        reader.end()
        return value


_record_Ros2Ur_dashboard_msgsSrvLoad_Response = Ros2Ur_dashboard_msgsSrvLoad_Response


def _write_Ros2Ur_dashboard_msgsSrvLoad_Response(writer, value):
    if type(value) is not Ros2Ur_dashboard_msgsSrvLoad_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.answer
    _write_text(writer, _part0, 256)
    _part1 = value.success
    if type(_part1) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part1), 1)
    if not 5 <= len(writer.data) - _start <= 261:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_dashboard_msgsSrvLoad_Response(reader):
    _start = reader.position
    value = Ros2Ur_dashboard_msgsSrvLoad_Response()
    value.answer = _read_text(reader, 256)
    value.success = _read_bool(reader)
    if not 5 <= reader.position - _start <= 261:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_dashboard_msgsSrvPopup_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/srv/Popup_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_369e6eab4f689a846c52fcc5cb539da63fab3939fab254dd1e04c7b274d5f770"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 520
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 520
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    message: _py_str = ""
    title: _py_str = ""

    def encode(self):
        writer = _Writer(520)
        _write_Ros2Ur_dashboard_msgsSrvPopup_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 520)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_dashboard_msgsSrvPopup_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 8, 520))
        value = _read_Ros2Ur_dashboard_msgsSrvPopup_Request(reader)
        reader.end()
        return value


_record_Ros2Ur_dashboard_msgsSrvPopup_Request = Ros2Ur_dashboard_msgsSrvPopup_Request


def _write_Ros2Ur_dashboard_msgsSrvPopup_Request(writer, value):
    if type(value) is not Ros2Ur_dashboard_msgsSrvPopup_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.message
    _write_text(writer, _part0, 256)
    _part1 = value.title
    _write_text(writer, _part1, 256)
    if not 8 <= len(writer.data) - _start <= 520:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_dashboard_msgsSrvPopup_Request(reader):
    _start = reader.position
    value = Ros2Ur_dashboard_msgsSrvPopup_Request()
    value.message = _read_text(reader, 256)
    value.title = _read_text(reader, 256)
    if not 8 <= reader.position - _start <= 520:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_dashboard_msgsSrvPopup_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/srv/Popup_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_0b54f7c477c1ddf8ccb18d12d50eaf308225d4927ee377377ed354426e58f984"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 5
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 261
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 261
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    answer: _py_str = ""
    success: _py_bool = False

    def encode(self):
        writer = _Writer(261)
        _write_Ros2Ur_dashboard_msgsSrvPopup_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 5, 261)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_dashboard_msgsSrvPopup_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 5, 261))
        value = _read_Ros2Ur_dashboard_msgsSrvPopup_Response(reader)
        reader.end()
        return value


_record_Ros2Ur_dashboard_msgsSrvPopup_Response = Ros2Ur_dashboard_msgsSrvPopup_Response


def _write_Ros2Ur_dashboard_msgsSrvPopup_Response(writer, value):
    if type(value) is not Ros2Ur_dashboard_msgsSrvPopup_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.answer
    _write_text(writer, _part0, 256)
    _part1 = value.success
    if type(_part1) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part1), 1)
    if not 5 <= len(writer.data) - _start <= 261:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_dashboard_msgsSrvPopup_Response(reader):
    _start = reader.position
    value = Ros2Ur_dashboard_msgsSrvPopup_Response()
    value.answer = _read_text(reader, 256)
    value.success = _read_bool(reader)
    if not 5 <= reader.position - _start <= 261:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_dashboard_msgsSrvRawRequest_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/srv/RawRequest_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_2bf66d87b20ca2de9ed94c04c79042a50239728320b43b27c9942405795b4555"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    query: _py_str = ""

    def encode(self):
        writer = _Writer(260)
        _write_Ros2Ur_dashboard_msgsSrvRawRequest_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 260)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_dashboard_msgsSrvRawRequest_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 4, 260))
        value = _read_Ros2Ur_dashboard_msgsSrvRawRequest_Request(reader)
        reader.end()
        return value


_record_Ros2Ur_dashboard_msgsSrvRawRequest_Request = Ros2Ur_dashboard_msgsSrvRawRequest_Request


def _write_Ros2Ur_dashboard_msgsSrvRawRequest_Request(writer, value):
    if type(value) is not Ros2Ur_dashboard_msgsSrvRawRequest_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.query
    _write_text(writer, _part0, 256)
    if not 4 <= len(writer.data) - _start <= 260:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_dashboard_msgsSrvRawRequest_Request(reader):
    _start = reader.position
    value = Ros2Ur_dashboard_msgsSrvRawRequest_Request()
    value.query = _read_text(reader, 256)
    if not 4 <= reader.position - _start <= 260:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_dashboard_msgsSrvRawRequest_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/srv/RawRequest_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_7c37f54149bab54f6e7bbfed41992eb54416b31346bc889a9632d5497111267f"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    answer: _py_str = ""

    def encode(self):
        writer = _Writer(260)
        _write_Ros2Ur_dashboard_msgsSrvRawRequest_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 260)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_dashboard_msgsSrvRawRequest_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 4, 260))
        value = _read_Ros2Ur_dashboard_msgsSrvRawRequest_Response(reader)
        reader.end()
        return value


_record_Ros2Ur_dashboard_msgsSrvRawRequest_Response = Ros2Ur_dashboard_msgsSrvRawRequest_Response


def _write_Ros2Ur_dashboard_msgsSrvRawRequest_Response(writer, value):
    if type(value) is not Ros2Ur_dashboard_msgsSrvRawRequest_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.answer
    _write_text(writer, _part0, 256)
    if not 4 <= len(writer.data) - _start <= 260:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_dashboard_msgsSrvRawRequest_Response(reader):
    _start = reader.position
    value = Ros2Ur_dashboard_msgsSrvRawRequest_Response()
    value.answer = _read_text(reader, 256)
    if not 4 <= reader.position - _start <= 260:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_dashboard_msgsSrvSetOperationalMode_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/srv/SetOperationalMode_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_8cc61f7c64211c46e01e52eee2c05f6e709f4f0900cf24fdfd4079b0f7581a00"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    operational_mode: _record_Ros2Ur_dashboard_msgsMsgOperationalMode = _field(
        default_factory=lambda: Ros2Ur_dashboard_msgsMsgOperationalMode()
    )

    def encode(self):
        writer = _Writer(260)
        _write_Ros2Ur_dashboard_msgsSrvSetOperationalMode_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 260)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_dashboard_msgsSrvSetOperationalMode_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 4, 260))
        value = _read_Ros2Ur_dashboard_msgsSrvSetOperationalMode_Request(reader)
        reader.end()
        return value


_record_Ros2Ur_dashboard_msgsSrvSetOperationalMode_Request = (
    Ros2Ur_dashboard_msgsSrvSetOperationalMode_Request
)


def _write_Ros2Ur_dashboard_msgsSrvSetOperationalMode_Request(writer, value):
    if type(value) is not Ros2Ur_dashboard_msgsSrvSetOperationalMode_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.operational_mode
    _write_Ros2Ur_dashboard_msgsMsgOperationalMode(writer, _part0)
    if not 4 <= len(writer.data) - _start <= 260:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_dashboard_msgsSrvSetOperationalMode_Request(reader):
    _start = reader.position
    value = Ros2Ur_dashboard_msgsSrvSetOperationalMode_Request()
    value.operational_mode = _read_Ros2Ur_dashboard_msgsMsgOperationalMode(reader)
    if not 4 <= reader.position - _start <= 260:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_dashboard_msgsSrvSetOperationalMode_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/srv/SetOperationalMode_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_f5009de077224371e9d2f6c0aecbabd24c80148f2c7e1b1383a64f6f214b202a"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 5
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 261
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 261
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    answer: _py_str = ""
    success: _py_bool = False

    def encode(self):
        writer = _Writer(261)
        _write_Ros2Ur_dashboard_msgsSrvSetOperationalMode_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 5, 261)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_dashboard_msgsSrvSetOperationalMode_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 5, 261))
        value = _read_Ros2Ur_dashboard_msgsSrvSetOperationalMode_Response(reader)
        reader.end()
        return value


_record_Ros2Ur_dashboard_msgsSrvSetOperationalMode_Response = (
    Ros2Ur_dashboard_msgsSrvSetOperationalMode_Response
)


def _write_Ros2Ur_dashboard_msgsSrvSetOperationalMode_Response(writer, value):
    if type(value) is not Ros2Ur_dashboard_msgsSrvSetOperationalMode_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.answer
    _write_text(writer, _part0, 256)
    _part1 = value.success
    if type(_part1) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part1), 1)
    if not 5 <= len(writer.data) - _start <= 261:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_dashboard_msgsSrvSetOperationalMode_Response(reader):
    _start = reader.position
    value = Ros2Ur_dashboard_msgsSrvSetOperationalMode_Response()
    value.answer = _read_text(reader, 256)
    value.success = _read_bool(reader)
    if not 5 <= reader.position - _start <= 261:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_dashboard_msgsSrvSetUserRole_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/srv/SetUserRole_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_7bd499947803efca81401a2de496d24e7e54ba97f4f86ec2b3089146a0655f5e"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    user_role: _record_Ros2Ur_dashboard_msgsMsgUserRole = _field(
        default_factory=lambda: Ros2Ur_dashboard_msgsMsgUserRole()
    )

    def encode(self):
        writer = _Writer(260)
        _write_Ros2Ur_dashboard_msgsSrvSetUserRole_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 260)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_dashboard_msgsSrvSetUserRole_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 4, 260))
        value = _read_Ros2Ur_dashboard_msgsSrvSetUserRole_Request(reader)
        reader.end()
        return value


_record_Ros2Ur_dashboard_msgsSrvSetUserRole_Request = Ros2Ur_dashboard_msgsSrvSetUserRole_Request


def _write_Ros2Ur_dashboard_msgsSrvSetUserRole_Request(writer, value):
    if type(value) is not Ros2Ur_dashboard_msgsSrvSetUserRole_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.user_role
    _write_Ros2Ur_dashboard_msgsMsgUserRole(writer, _part0)
    if not 4 <= len(writer.data) - _start <= 260:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_dashboard_msgsSrvSetUserRole_Request(reader):
    _start = reader.position
    value = Ros2Ur_dashboard_msgsSrvSetUserRole_Request()
    value.user_role = _read_Ros2Ur_dashboard_msgsMsgUserRole(reader)
    if not 4 <= reader.position - _start <= 260:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_dashboard_msgsSrvSetUserRole_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/srv/SetUserRole_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_4cab2bba5030f4e4b9e90252d64ec2e02d6eb87070b75cf43190fecd21da59fd"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 5
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 261
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 261
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False
    answer: _py_str = ""

    def encode(self):
        writer = _Writer(261)
        _write_Ros2Ur_dashboard_msgsSrvSetUserRole_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 5, 261)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_dashboard_msgsSrvSetUserRole_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 5, 261))
        value = _read_Ros2Ur_dashboard_msgsSrvSetUserRole_Response(reader)
        reader.end()
        return value


_record_Ros2Ur_dashboard_msgsSrvSetUserRole_Response = Ros2Ur_dashboard_msgsSrvSetUserRole_Response


def _write_Ros2Ur_dashboard_msgsSrvSetUserRole_Response(writer, value):
    if type(value) is not Ros2Ur_dashboard_msgsSrvSetUserRole_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    _part1 = value.answer
    _write_text(writer, _part1, 256)
    if not 5 <= len(writer.data) - _start <= 261:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_dashboard_msgsSrvSetUserRole_Response(reader):
    _start = reader.position
    value = Ros2Ur_dashboard_msgsSrvSetUserRole_Response()
    value.success = _read_bool(reader)
    value.answer = _read_text(reader, 256)
    if not 5 <= reader.position - _start <= 261:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_dashboard_msgsSrvUploadProgram_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/srv/UploadProgram_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_f7501d0115f8d36b1942ce610b1bbc197d0276de508ac8175d539f40494f437b"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    file_path: _py_str = ""

    def encode(self):
        writer = _Writer(260)
        _write_Ros2Ur_dashboard_msgsSrvUploadProgram_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 260)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_dashboard_msgsSrvUploadProgram_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 4, 260))
        value = _read_Ros2Ur_dashboard_msgsSrvUploadProgram_Request(reader)
        reader.end()
        return value


_record_Ros2Ur_dashboard_msgsSrvUploadProgram_Request = Ros2Ur_dashboard_msgsSrvUploadProgram_Request


def _write_Ros2Ur_dashboard_msgsSrvUploadProgram_Request(writer, value):
    if type(value) is not Ros2Ur_dashboard_msgsSrvUploadProgram_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.file_path
    _write_text(writer, _part0, 256)
    if not 4 <= len(writer.data) - _start <= 260:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_dashboard_msgsSrvUploadProgram_Request(reader):
    _start = reader.position
    value = Ros2Ur_dashboard_msgsSrvUploadProgram_Request()
    value.file_path = _read_text(reader, 256)
    if not 4 <= reader.position - _start <= 260:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_dashboard_msgsSrvUploadProgram_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/srv/UploadProgram_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_ae9a28c1cd4729f54968d18a16e2f8f417bdc5e9bc15809de7481f1f20e6b398"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 9
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 521
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 521
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    answer: _py_str = ""
    program_name: _py_str = ""
    success: _py_bool = False

    def encode(self):
        writer = _Writer(521)
        _write_Ros2Ur_dashboard_msgsSrvUploadProgram_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 9, 521)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_dashboard_msgsSrvUploadProgram_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 9, 521))
        value = _read_Ros2Ur_dashboard_msgsSrvUploadProgram_Response(reader)
        reader.end()
        return value


_record_Ros2Ur_dashboard_msgsSrvUploadProgram_Response = Ros2Ur_dashboard_msgsSrvUploadProgram_Response


def _write_Ros2Ur_dashboard_msgsSrvUploadProgram_Response(writer, value):
    if type(value) is not Ros2Ur_dashboard_msgsSrvUploadProgram_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.answer
    _write_text(writer, _part0, 256)
    _part1 = value.program_name
    _write_text(writer, _part1, 256)
    _part2 = value.success
    if type(_part2) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part2), 1)
    if not 9 <= len(writer.data) - _start <= 521:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_dashboard_msgsSrvUploadProgram_Response(reader):
    _start = reader.position
    value = Ros2Ur_dashboard_msgsSrvUploadProgram_Response()
    value.answer = _read_text(reader, 256)
    value.program_name = _read_text(reader, 256)
    value.success = _read_bool(reader)
    if not 9 <= reader.position - _start <= 521:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_msgsActionFollowJointTrajectoryUntil_Goal:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_msgs/action/FollowJointTrajectoryUntil_Goal"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_78fda8f2d20c502e24b1ad4fe55f34bba41de20ff88e71b56d7a0631d7a3905a"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 37
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 7053
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 7053
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = [
        {"name": "TOOL_CONTACT", "type": "uint8", "native_type": "uint8", "literal": "0", "value": "0"}
    ]
    TOOL_CONTACT: _ClassVar = 0
    trajectory: _record_Ros2Trajectory_msgsMsgJointTrajectory = _field(
        default_factory=lambda: Ros2Trajectory_msgsMsgJointTrajectory()
    )
    path_tolerance: _py_list[_record_Ros2Control_msgsMsgJointTolerance] = _field(default_factory=lambda: [])
    goal_tolerance: _py_list[_record_Ros2Control_msgsMsgJointTolerance] = _field(default_factory=lambda: [])
    goal_time_tolerance: _record_Ros2Builtin_interfacesMsgDuration = _field(
        default_factory=lambda: Ros2Builtin_interfacesMsgDuration()
    )
    until_type: _py_int = 0

    def encode(self):
        writer = _Writer(7053)
        _write_Ros2Ur_msgsActionFollowJointTrajectoryUntil_Goal(writer, self)
        wire = writer.finish()
        return _wire(wire, 37, 7053)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_msgsActionFollowJointTrajectoryUntil_Goal:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 37, 7053))
        value = _read_Ros2Ur_msgsActionFollowJointTrajectoryUntil_Goal(reader)
        reader.end()
        return value


_record_Ros2Ur_msgsActionFollowJointTrajectoryUntil_Goal = Ros2Ur_msgsActionFollowJointTrajectoryUntil_Goal


def _write_Ros2Ur_msgsActionFollowJointTrajectoryUntil_Goal(writer, value):
    if type(value) is not Ros2Ur_msgsActionFollowJointTrajectoryUntil_Goal:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.trajectory
    _write_Ros2Trajectory_msgsMsgJointTrajectory(writer, _part0)
    _part1 = value.path_tolerance
    if type(_part1) not in (list, tuple):
        raise TypeError("array value required")
    _count1 = len(_part1)
    if _count1 > 6:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        _write_Ros2Control_msgsMsgJointTolerance(writer, _element)
    _part2 = value.goal_tolerance
    if type(_part2) not in (list, tuple):
        raise TypeError("array value required")
    _count2 = len(_part2)
    if _count2 > 6:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        _write_Ros2Control_msgsMsgJointTolerance(writer, _element)
    _part3 = value.goal_time_tolerance
    _write_Ros2Builtin_interfacesMsgDuration(writer, _part3)
    _part4 = value.until_type
    writer.integer(_part4, 1, False)
    if not 37 <= len(writer.data) - _start <= 7053:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_msgsActionFollowJointTrajectoryUntil_Goal(reader):
    _start = reader.position
    value = Ros2Ur_msgsActionFollowJointTrajectoryUntil_Goal()
    value.trajectory = _read_Ros2Trajectory_msgsMsgJointTrajectory(reader)
    value.path_tolerance = [
        _read_Ros2Control_msgsMsgJointTolerance(reader) for _ in range(_read_count(reader, 6, 28))
    ]
    value.goal_tolerance = [
        _read_Ros2Control_msgsMsgJointTolerance(reader) for _ in range(_read_count(reader, 6, 28))
    ]
    value.goal_time_tolerance = _read_Ros2Builtin_interfacesMsgDuration(reader)
    value.until_type = reader.integer(1, False)
    if not 37 <= reader.position - _start <= 7053:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_msgsActionFollowJointTrajectoryUntil_Result:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_msgs/action/FollowJointTrajectoryUntil_Result"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_de92b9ccfb9c93f3afae9da5e8e31df9a6d6a606479fe27b9bcf14ff329bc869"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 268
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 268
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
        {"name": "TRIGGERED", "type": "int32", "native_type": "int32", "literal": "0", "value": "0"},
        {"name": "NOT_TRIGGERED", "type": "int32", "native_type": "int32", "literal": "1", "value": "1"},
    ]
    SUCCESSFUL: _ClassVar = 0
    INVALID_GOAL: _ClassVar = -1
    INVALID_JOINTS: _ClassVar = -2
    OLD_HEADER_TIMESTAMP: _ClassVar = -3
    PATH_TOLERANCE_VIOLATED: _ClassVar = -4
    GOAL_TOLERANCE_VIOLATED: _ClassVar = -5
    TRIGGERED: _ClassVar = 0
    NOT_TRIGGERED: _ClassVar = 1
    error_code: _py_int = 0
    until_condition_result: _py_int = 0
    error_string: _py_str = ""

    def encode(self):
        writer = _Writer(268)
        _write_Ros2Ur_msgsActionFollowJointTrajectoryUntil_Result(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 268)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_msgsActionFollowJointTrajectoryUntil_Result:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 12, 268))
        value = _read_Ros2Ur_msgsActionFollowJointTrajectoryUntil_Result(reader)
        reader.end()
        return value


_record_Ros2Ur_msgsActionFollowJointTrajectoryUntil_Result = (
    Ros2Ur_msgsActionFollowJointTrajectoryUntil_Result
)


def _write_Ros2Ur_msgsActionFollowJointTrajectoryUntil_Result(writer, value):
    if type(value) is not Ros2Ur_msgsActionFollowJointTrajectoryUntil_Result:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.error_code
    writer.integer(_part0, 4, True)
    _part1 = value.until_condition_result
    writer.integer(_part1, 4, True)
    _part2 = value.error_string
    _write_text(writer, _part2, 256)
    if not 12 <= len(writer.data) - _start <= 268:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_msgsActionFollowJointTrajectoryUntil_Result(reader):
    _start = reader.position
    value = Ros2Ur_msgsActionFollowJointTrajectoryUntil_Result()
    value.error_code = reader.integer(4, True)
    value.until_condition_result = reader.integer(4, True)
    value.error_string = _read_text(reader, 256)
    if not 12 <= reader.position - _start <= 268:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_msgsActionFollowJointTrajectoryUntil_Feedback:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_msgs/action/FollowJointTrajectoryUntil_Feedback"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_5a719f991f5c73784f9dc9e962ecfa0541e00daef7f747c312d4b633d63040ac"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 88
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 2352
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 2352
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

    def encode(self):
        writer = _Writer(2352)
        _write_Ros2Ur_msgsActionFollowJointTrajectoryUntil_Feedback(writer, self)
        wire = writer.finish()
        return _wire(wire, 88, 2352)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_msgsActionFollowJointTrajectoryUntil_Feedback:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 88, 2352))
        value = _read_Ros2Ur_msgsActionFollowJointTrajectoryUntil_Feedback(reader)
        reader.end()
        return value


_record_Ros2Ur_msgsActionFollowJointTrajectoryUntil_Feedback = (
    Ros2Ur_msgsActionFollowJointTrajectoryUntil_Feedback
)


def _write_Ros2Ur_msgsActionFollowJointTrajectoryUntil_Feedback(writer, value):
    if type(value) is not Ros2Ur_msgsActionFollowJointTrajectoryUntil_Feedback:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros2Std_msgsMsgHeader(writer, _part0)
    _part1 = value.joint_names
    if type(_part1) not in (list, tuple):
        raise TypeError("array value required")
    _count1 = len(_part1)
    if _count1 > 6:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        _write_text(writer, _element, 256)
    _part2 = value.desired
    _write_Ros2Trajectory_msgsMsgJointTrajectoryPoint(writer, _part2)
    _part3 = value.actual
    _write_Ros2Trajectory_msgsMsgJointTrajectoryPoint(writer, _part3)
    _part4 = value.error
    _write_Ros2Trajectory_msgsMsgJointTrajectoryPoint(writer, _part4)
    if not 88 <= len(writer.data) - _start <= 2352:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_msgsActionFollowJointTrajectoryUntil_Feedback(reader):
    _start = reader.position
    value = Ros2Ur_msgsActionFollowJointTrajectoryUntil_Feedback()
    value.header = _read_Ros2Std_msgsMsgHeader(reader)
    value.joint_names = [_read_text(reader, 256) for _ in range(_read_count(reader, 6, 4))]
    value.desired = _read_Ros2Trajectory_msgsMsgJointTrajectoryPoint(reader)
    value.actual = _read_Ros2Trajectory_msgsMsgJointTrajectoryPoint(reader)
    value.error = _read_Ros2Trajectory_msgsMsgJointTrajectoryPoint(reader)
    if not 88 <= reader.position - _start <= 2352:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_msgsActionSendScript_Goal:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_msgs/action/SendScript_Goal"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_c277cd00663786f95201e61baa658b92def3becc1f37e54aa6093bb11135819c"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 17
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 8465
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 8465
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    program: _py_str = ""
    script_name: _py_str = ""
    start_timeout: _record_Ros2Builtin_interfacesMsgDuration = _field(
        default_factory=lambda: Ros2Builtin_interfacesMsgDuration()
    )
    fail_on_warnings: _py_bool = True

    def encode(self):
        writer = _Writer(8465)
        _write_Ros2Ur_msgsActionSendScript_Goal(writer, self)
        wire = writer.finish()
        return _wire(wire, 17, 8465)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_msgsActionSendScript_Goal:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 17, 8465))
        value = _read_Ros2Ur_msgsActionSendScript_Goal(reader)
        reader.end()
        return value


_record_Ros2Ur_msgsActionSendScript_Goal = Ros2Ur_msgsActionSendScript_Goal


def _write_Ros2Ur_msgsActionSendScript_Goal(writer, value):
    if type(value) is not Ros2Ur_msgsActionSendScript_Goal:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.program
    _write_text(writer, _part0, 8192)
    _part1 = value.script_name
    _write_text(writer, _part1, 256)
    _part2 = value.start_timeout
    _write_Ros2Builtin_interfacesMsgDuration(writer, _part2)
    _part3 = value.fail_on_warnings
    if type(_part3) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part3), 1)
    if not 17 <= len(writer.data) - _start <= 8465:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_msgsActionSendScript_Goal(reader):
    _start = reader.position
    value = Ros2Ur_msgsActionSendScript_Goal()
    value.program = _read_text(reader, 8192)
    value.script_name = _read_text(reader, 256)
    value.start_timeout = _read_Ros2Builtin_interfacesMsgDuration(reader)
    value.fail_on_warnings = _read_bool(reader)
    if not 17 <= reader.position - _start <= 8465:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_msgsActionSendScript_Result:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_msgs/action/SendScript_Result"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_d4c4d9721c3a576f590ba4967b2444a82969d6ccba94ddbf8c4a974535ee17d2"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 5
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 261
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 261
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False
    message: _py_str = ""

    def encode(self):
        writer = _Writer(261)
        _write_Ros2Ur_msgsActionSendScript_Result(writer, self)
        wire = writer.finish()
        return _wire(wire, 5, 261)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_msgsActionSendScript_Result:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 5, 261))
        value = _read_Ros2Ur_msgsActionSendScript_Result(reader)
        reader.end()
        return value


_record_Ros2Ur_msgsActionSendScript_Result = Ros2Ur_msgsActionSendScript_Result


def _write_Ros2Ur_msgsActionSendScript_Result(writer, value):
    if type(value) is not Ros2Ur_msgsActionSendScript_Result:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    _part1 = value.message
    _write_text(writer, _part1, 256)
    if not 5 <= len(writer.data) - _start <= 261:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_msgsActionSendScript_Result(reader):
    _start = reader.position
    value = Ros2Ur_msgsActionSendScript_Result()
    value.success = _read_bool(reader)
    value.message = _read_text(reader, 256)
    if not 5 <= reader.position - _start <= 261:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_msgsActionSendScript_Feedback:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_msgs/action/SendScript_Feedback"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_094876d6467bd2b34f74cc6b574393117753add5254285e4e95d85b07328ef2c"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros2Ur_msgsActionSendScript_Feedback(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_msgsActionSendScript_Feedback:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros2Ur_msgsActionSendScript_Feedback(reader)
        reader.end()
        return value


_record_Ros2Ur_msgsActionSendScript_Feedback = Ros2Ur_msgsActionSendScript_Feedback


def _write_Ros2Ur_msgsActionSendScript_Feedback(writer, value):
    if type(value) is not Ros2Ur_msgsActionSendScript_Feedback:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros2Ur_msgsActionSendScript_Feedback(reader):
    _start = reader.position
    value = Ros2Ur_msgsActionSendScript_Feedback()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_msgsActionToolContact_Goal:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_msgs/action/ToolContact_Goal"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_150298ad16b1bc37d47bd3324cd4ec301ad8402c07779e8a435ce61daa7578dd"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros2Ur_msgsActionToolContact_Goal(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_msgsActionToolContact_Goal:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros2Ur_msgsActionToolContact_Goal(reader)
        reader.end()
        return value


_record_Ros2Ur_msgsActionToolContact_Goal = Ros2Ur_msgsActionToolContact_Goal


def _write_Ros2Ur_msgsActionToolContact_Goal(writer, value):
    if type(value) is not Ros2Ur_msgsActionToolContact_Goal:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros2Ur_msgsActionToolContact_Goal(reader):
    _start = reader.position
    value = Ros2Ur_msgsActionToolContact_Goal()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_msgsActionToolContact_Result:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_msgs/action/ToolContact_Result"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_b79f6080ac18b67c25131458a2af0a3c235d624c00fc5c13da534cc546c94578"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros2Ur_msgsActionToolContact_Result(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_msgsActionToolContact_Result:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros2Ur_msgsActionToolContact_Result(reader)
        reader.end()
        return value


_record_Ros2Ur_msgsActionToolContact_Result = Ros2Ur_msgsActionToolContact_Result


def _write_Ros2Ur_msgsActionToolContact_Result(writer, value):
    if type(value) is not Ros2Ur_msgsActionToolContact_Result:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros2Ur_msgsActionToolContact_Result(reader):
    _start = reader.position
    value = Ros2Ur_msgsActionToolContact_Result()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_msgsActionToolContact_Feedback:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_msgs/action/ToolContact_Feedback"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_c6a11fd615f72a70a98514703de4c007a2bb161fbd8a953c5e8b899f471f4c5b"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros2Ur_msgsActionToolContact_Feedback(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_msgsActionToolContact_Feedback:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros2Ur_msgsActionToolContact_Feedback(reader)
        reader.end()
        return value


_record_Ros2Ur_msgsActionToolContact_Feedback = Ros2Ur_msgsActionToolContact_Feedback


def _write_Ros2Ur_msgsActionToolContact_Feedback(writer, value):
    if type(value) is not Ros2Ur_msgsActionToolContact_Feedback:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros2Ur_msgsActionToolContact_Feedback(reader):
    _start = reader.position
    value = Ros2Ur_msgsActionToolContact_Feedback()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_msgsMsgAnalog:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_msgs/msg/Analog"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_68873e85836e1a65d7b67a52f5db8b3c3be082f889d2df4342386b282988f2a4"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 6
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 6
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 6
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = [
        {"name": "CURRENT", "type": "uint8", "native_type": "uint8", "literal": "0", "value": "0"},
        {"name": "VOLTAGE", "type": "uint8", "native_type": "uint8", "literal": "1", "value": "1"},
    ]
    CURRENT: _ClassVar = 0
    VOLTAGE: _ClassVar = 1
    pin: _py_int = 0
    domain: _py_int = 0
    state: _py_float = 0.0

    def encode(self):
        writer = _Writer(6)
        _write_Ros2Ur_msgsMsgAnalog(writer, self)
        wire = writer.finish()
        return _wire(wire, 6, 6)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_msgsMsgAnalog:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 6, 6))
        value = _read_Ros2Ur_msgsMsgAnalog(reader)
        reader.end()
        return value


_record_Ros2Ur_msgsMsgAnalog = Ros2Ur_msgsMsgAnalog


def _write_Ros2Ur_msgsMsgAnalog(writer, value):
    if type(value) is not Ros2Ur_msgsMsgAnalog:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.pin
    writer.integer(_part0, 1, False)
    _part1 = value.domain
    writer.integer(_part1, 1, False)
    _part2 = value.state
    writer.f32(_part2)
    if not 6 <= len(writer.data) - _start <= 6:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_msgsMsgAnalog(reader):
    _start = reader.position
    value = Ros2Ur_msgsMsgAnalog()
    value.pin = reader.integer(1, False)
    value.domain = reader.integer(1, False)
    value.state = reader.f32()
    if not 6 <= reader.position - _start <= 6:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_msgsMsgDigital:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_msgs/msg/Digital"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_e5ebd0a17ee528cff1e0a636eb0be9c7e4128d3e77be722c5f1be73df4f4c11e"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 2
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 2
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 2
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    pin: _py_int = 0
    state: _py_bool = False

    def encode(self):
        writer = _Writer(2)
        _write_Ros2Ur_msgsMsgDigital(writer, self)
        wire = writer.finish()
        return _wire(wire, 2, 2)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_msgsMsgDigital:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 2, 2))
        value = _read_Ros2Ur_msgsMsgDigital(reader)
        reader.end()
        return value


_record_Ros2Ur_msgsMsgDigital = Ros2Ur_msgsMsgDigital


def _write_Ros2Ur_msgsMsgDigital(writer, value):
    if type(value) is not Ros2Ur_msgsMsgDigital:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.pin
    writer.integer(_part0, 1, False)
    _part1 = value.state
    if type(_part1) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part1), 1)
    if not 2 <= len(writer.data) - _start <= 2:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_msgsMsgDigital(reader):
    _start = reader.position
    value = Ros2Ur_msgsMsgDigital()
    value.pin = reader.integer(1, False)
    value.state = _read_bool(reader)
    if not 2 <= reader.position - _start <= 2:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_msgsMsgFrictionModelParameters:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_msgs/msg/FrictionModelParameters"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_7cc9c7af77340f56b0559b4e2ad32972ff65f2a6cf89ebfbe2c48c645f8e9c89"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 104
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 104
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    viscous_scale: _py_list[_py_float] = _field(default_factory=lambda: [])
    coulomb_scale: _py_list[_py_float] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(104)
        _write_Ros2Ur_msgsMsgFrictionModelParameters(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 104)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_msgsMsgFrictionModelParameters:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 8, 104))
        value = _read_Ros2Ur_msgsMsgFrictionModelParameters(reader)
        reader.end()
        return value


_record_Ros2Ur_msgsMsgFrictionModelParameters = Ros2Ur_msgsMsgFrictionModelParameters


def _write_Ros2Ur_msgsMsgFrictionModelParameters(writer, value):
    if type(value) is not Ros2Ur_msgsMsgFrictionModelParameters:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.viscous_scale
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 > 6:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count0, 4)
    for _index in range(_count0):
        _element = _part0[_index]
        writer.f64(_element)
    _part1 = value.coulomb_scale
    if type(_part1) not in (list, tuple):
        raise TypeError("array value required")
    _count1 = len(_part1)
    if _count1 > 6:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        writer.f64(_element)
    if not 8 <= len(writer.data) - _start <= 104:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_msgsMsgFrictionModelParameters(reader):
    _start = reader.position
    value = Ros2Ur_msgsMsgFrictionModelParameters()
    value.viscous_scale = [reader.f64() for _ in range(_read_count(reader, 6, 8))]
    value.coulomb_scale = [reader.f64() for _ in range(_read_count(reader, 6, 8))]
    if not 8 <= reader.position - _start <= 104:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_msgsMsgIOStates:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_msgs/msg/IOStates"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_c22f9f784c89b6854fa84df416ed3704e3a312b15c8fc41162e7f5f53223fef5"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 20
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 404
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 404
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    digital_in_states: _py_list[_record_Ros2Ur_msgsMsgDigital] = _field(default_factory=lambda: [])
    digital_out_states: _py_list[_record_Ros2Ur_msgsMsgDigital] = _field(default_factory=lambda: [])
    flag_states: _py_list[_record_Ros2Ur_msgsMsgDigital] = _field(default_factory=lambda: [])
    analog_in_states: _py_list[_record_Ros2Ur_msgsMsgAnalog] = _field(default_factory=lambda: [])
    analog_out_states: _py_list[_record_Ros2Ur_msgsMsgAnalog] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(404)
        _write_Ros2Ur_msgsMsgIOStates(writer, self)
        wire = writer.finish()
        return _wire(wire, 20, 404)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_msgsMsgIOStates:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 20, 404))
        value = _read_Ros2Ur_msgsMsgIOStates(reader)
        reader.end()
        return value


_record_Ros2Ur_msgsMsgIOStates = Ros2Ur_msgsMsgIOStates


def _write_Ros2Ur_msgsMsgIOStates(writer, value):
    if type(value) is not Ros2Ur_msgsMsgIOStates:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.digital_in_states
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 > 32:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count0, 4)
    for _index in range(_count0):
        _element = _part0[_index]
        _write_Ros2Ur_msgsMsgDigital(writer, _element)
    _part1 = value.digital_out_states
    if type(_part1) not in (list, tuple):
        raise TypeError("array value required")
    _count1 = len(_part1)
    if _count1 > 32:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        _write_Ros2Ur_msgsMsgDigital(writer, _element)
    _part2 = value.flag_states
    if type(_part2) not in (list, tuple):
        raise TypeError("array value required")
    _count2 = len(_part2)
    if _count2 > 32:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        _write_Ros2Ur_msgsMsgDigital(writer, _element)
    _part3 = value.analog_in_states
    if type(_part3) not in (list, tuple):
        raise TypeError("array value required")
    _count3 = len(_part3)
    if _count3 > 16:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count3, 4)
    for _index in range(_count3):
        _element = _part3[_index]
        _write_Ros2Ur_msgsMsgAnalog(writer, _element)
    _part4 = value.analog_out_states
    if type(_part4) not in (list, tuple):
        raise TypeError("array value required")
    _count4 = len(_part4)
    if _count4 > 16:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count4, 4)
    for _index in range(_count4):
        _element = _part4[_index]
        _write_Ros2Ur_msgsMsgAnalog(writer, _element)
    if not 20 <= len(writer.data) - _start <= 404:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_msgsMsgIOStates(reader):
    _start = reader.position
    value = Ros2Ur_msgsMsgIOStates()
    value.digital_in_states = [_read_Ros2Ur_msgsMsgDigital(reader) for _ in range(_read_count(reader, 32, 2))]
    value.digital_out_states = [
        _read_Ros2Ur_msgsMsgDigital(reader) for _ in range(_read_count(reader, 32, 2))
    ]
    value.flag_states = [_read_Ros2Ur_msgsMsgDigital(reader) for _ in range(_read_count(reader, 32, 2))]
    value.analog_in_states = [_read_Ros2Ur_msgsMsgAnalog(reader) for _ in range(_read_count(reader, 16, 6))]
    value.analog_out_states = [_read_Ros2Ur_msgsMsgAnalog(reader) for _ in range(_read_count(reader, 16, 6))]
    if not 20 <= reader.position - _start <= 404:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_msgsMsgMasterboardDataMsg:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_msgs/msg/MasterboardDataMsg"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_eb3b0aab27bb5683859356ca7cf9648e53d311c1fd32cac97f68ce1d4622a9e5"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 62
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 62
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 62
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    digital_input_bits: _py_int = 0
    digital_output_bits: _py_int = 0
    analog_input_range0: _py_int = 0
    analog_input_range1: _py_int = 0
    analog_input0: _py_float = 0.0
    analog_input1: _py_float = 0.0
    analog_output_domain0: _py_int = 0
    analog_output_domain1: _py_int = 0
    analog_output0: _py_float = 0.0
    analog_output1: _py_float = 0.0
    masterboard_temperature: _py_float = 0.0
    robot_voltage_48v: _py_float = 0.0
    robot_current: _py_float = 0.0
    master_io_current: _py_float = 0.0
    master_safety_state: _py_int = 0
    master_onoff_state: _py_int = 0

    def encode(self):
        writer = _Writer(62)
        _write_Ros2Ur_msgsMsgMasterboardDataMsg(writer, self)
        wire = writer.finish()
        return _wire(wire, 62, 62)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_msgsMsgMasterboardDataMsg:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 62, 62))
        value = _read_Ros2Ur_msgsMsgMasterboardDataMsg(reader)
        reader.end()
        return value


_record_Ros2Ur_msgsMsgMasterboardDataMsg = Ros2Ur_msgsMsgMasterboardDataMsg


def _write_Ros2Ur_msgsMsgMasterboardDataMsg(writer, value):
    if type(value) is not Ros2Ur_msgsMsgMasterboardDataMsg:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.digital_input_bits
    writer.integer(_part0, 4, False)
    _part1 = value.digital_output_bits
    writer.integer(_part1, 4, False)
    _part2 = value.analog_input_range0
    writer.integer(_part2, 1, True)
    _part3 = value.analog_input_range1
    writer.integer(_part3, 1, True)
    _part4 = value.analog_input0
    writer.f64(_part4)
    _part5 = value.analog_input1
    writer.f64(_part5)
    _part6 = value.analog_output_domain0
    writer.integer(_part6, 1, True)
    _part7 = value.analog_output_domain1
    writer.integer(_part7, 1, True)
    _part8 = value.analog_output0
    writer.f64(_part8)
    _part9 = value.analog_output1
    writer.f64(_part9)
    _part10 = value.masterboard_temperature
    writer.f32(_part10)
    _part11 = value.robot_voltage_48v
    writer.f32(_part11)
    _part12 = value.robot_current
    writer.f32(_part12)
    _part13 = value.master_io_current
    writer.f32(_part13)
    _part14 = value.master_safety_state
    writer.integer(_part14, 1, False)
    _part15 = value.master_onoff_state
    writer.integer(_part15, 1, False)
    if not 62 <= len(writer.data) - _start <= 62:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_msgsMsgMasterboardDataMsg(reader):
    _start = reader.position
    value = Ros2Ur_msgsMsgMasterboardDataMsg()
    value.digital_input_bits = reader.integer(4, False)
    value.digital_output_bits = reader.integer(4, False)
    value.analog_input_range0 = reader.integer(1, True)
    value.analog_input_range1 = reader.integer(1, True)
    value.analog_input0 = reader.f64()
    value.analog_input1 = reader.f64()
    value.analog_output_domain0 = reader.integer(1, True)
    value.analog_output_domain1 = reader.integer(1, True)
    value.analog_output0 = reader.f64()
    value.analog_output1 = reader.f64()
    value.masterboard_temperature = reader.f32()
    value.robot_voltage_48v = reader.f32()
    value.robot_current = reader.f32()
    value.master_io_current = reader.f32()
    value.master_safety_state = reader.integer(1, False)
    value.master_onoff_state = reader.integer(1, False)
    if not 62 <= reader.position - _start <= 62:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_msgsMsgRobotModeDataMsg:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_msgs/msg/RobotModeDataMsg"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_0181d85868dc6251289c6f7bc723757fa573c1345b6502497e335655d328bb31"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 15
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 15
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 15
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    timestamp: _py_int = 0
    is_robot_connected: _py_bool = False
    is_real_robot_enabled: _py_bool = False
    is_power_on_robot: _py_bool = False
    is_emergency_stopped: _py_bool = False
    is_protective_stopped: _py_bool = False
    is_program_running: _py_bool = False
    is_program_paused: _py_bool = False

    def encode(self):
        writer = _Writer(15)
        _write_Ros2Ur_msgsMsgRobotModeDataMsg(writer, self)
        wire = writer.finish()
        return _wire(wire, 15, 15)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_msgsMsgRobotModeDataMsg:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 15, 15))
        value = _read_Ros2Ur_msgsMsgRobotModeDataMsg(reader)
        reader.end()
        return value


_record_Ros2Ur_msgsMsgRobotModeDataMsg = Ros2Ur_msgsMsgRobotModeDataMsg


def _write_Ros2Ur_msgsMsgRobotModeDataMsg(writer, value):
    if type(value) is not Ros2Ur_msgsMsgRobotModeDataMsg:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.timestamp
    writer.integer(_part0, 8, False)
    _part1 = value.is_robot_connected
    if type(_part1) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part1), 1)
    _part2 = value.is_real_robot_enabled
    if type(_part2) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part2), 1)
    _part3 = value.is_power_on_robot
    if type(_part3) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part3), 1)
    _part4 = value.is_emergency_stopped
    if type(_part4) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part4), 1)
    _part5 = value.is_protective_stopped
    if type(_part5) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part5), 1)
    _part6 = value.is_program_running
    if type(_part6) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part6), 1)
    _part7 = value.is_program_paused
    if type(_part7) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part7), 1)
    if not 15 <= len(writer.data) - _start <= 15:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_msgsMsgRobotModeDataMsg(reader):
    _start = reader.position
    value = Ros2Ur_msgsMsgRobotModeDataMsg()
    value.timestamp = reader.integer(8, False)
    value.is_robot_connected = _read_bool(reader)
    value.is_real_robot_enabled = _read_bool(reader)
    value.is_power_on_robot = _read_bool(reader)
    value.is_emergency_stopped = _read_bool(reader)
    value.is_protective_stopped = _read_bool(reader)
    value.is_program_running = _read_bool(reader)
    value.is_program_paused = _read_bool(reader)
    if not 15 <= reader.position - _start <= 15:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_msgsMsgRobotStateRTMsg:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_msgs/msg/RobotStateRTMsg"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_a30600c42e98b89da49d63073a5d30b0989aa0cb21f2bafec229dee10591d9cd"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 96
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 768
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 768
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    time: _py_float = 0.0
    q_target: _py_list[_py_float] = _field(default_factory=lambda: [])
    qd_target: _py_list[_py_float] = _field(default_factory=lambda: [])
    qdd_target: _py_list[_py_float] = _field(default_factory=lambda: [])
    i_target: _py_list[_py_float] = _field(default_factory=lambda: [])
    m_target: _py_list[_py_float] = _field(default_factory=lambda: [])
    q_actual: _py_list[_py_float] = _field(default_factory=lambda: [])
    qd_actual: _py_list[_py_float] = _field(default_factory=lambda: [])
    i_actual: _py_list[_py_float] = _field(default_factory=lambda: [])
    tool_acc_values: _py_list[_py_float] = _field(default_factory=lambda: [])
    tcp_force: _py_list[_py_float] = _field(default_factory=lambda: [])
    tool_vector: _py_list[_py_float] = _field(default_factory=lambda: [])
    tcp_speed: _py_list[_py_float] = _field(default_factory=lambda: [])
    digital_input_bits: _py_float = 0.0
    motor_temperatures: _py_list[_py_float] = _field(default_factory=lambda: [])
    controller_timer: _py_float = 0.0
    test_value: _py_float = 0.0
    robot_mode: _py_float = 0.0
    joint_modes: _py_list[_py_float] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(768)
        _write_Ros2Ur_msgsMsgRobotStateRTMsg(writer, self)
        wire = writer.finish()
        return _wire(wire, 96, 768)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_msgsMsgRobotStateRTMsg:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 96, 768))
        value = _read_Ros2Ur_msgsMsgRobotStateRTMsg(reader)
        reader.end()
        return value


_record_Ros2Ur_msgsMsgRobotStateRTMsg = Ros2Ur_msgsMsgRobotStateRTMsg


def _write_Ros2Ur_msgsMsgRobotStateRTMsg(writer, value):
    if type(value) is not Ros2Ur_msgsMsgRobotStateRTMsg:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.time
    writer.f64(_part0)
    _part1 = value.q_target
    if type(_part1) not in (list, tuple):
        raise TypeError("array value required")
    _count1 = len(_part1)
    if _count1 > 6:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        writer.f64(_element)
    _part2 = value.qd_target
    if type(_part2) not in (list, tuple):
        raise TypeError("array value required")
    _count2 = len(_part2)
    if _count2 > 6:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        writer.f64(_element)
    _part3 = value.qdd_target
    if type(_part3) not in (list, tuple):
        raise TypeError("array value required")
    _count3 = len(_part3)
    if _count3 > 6:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count3, 4)
    for _index in range(_count3):
        _element = _part3[_index]
        writer.f64(_element)
    _part4 = value.i_target
    if type(_part4) not in (list, tuple):
        raise TypeError("array value required")
    _count4 = len(_part4)
    if _count4 > 6:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count4, 4)
    for _index in range(_count4):
        _element = _part4[_index]
        writer.f64(_element)
    _part5 = value.m_target
    if type(_part5) not in (list, tuple):
        raise TypeError("array value required")
    _count5 = len(_part5)
    if _count5 > 6:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count5, 4)
    for _index in range(_count5):
        _element = _part5[_index]
        writer.f64(_element)
    _part6 = value.q_actual
    if type(_part6) not in (list, tuple):
        raise TypeError("array value required")
    _count6 = len(_part6)
    if _count6 > 6:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count6, 4)
    for _index in range(_count6):
        _element = _part6[_index]
        writer.f64(_element)
    _part7 = value.qd_actual
    if type(_part7) not in (list, tuple):
        raise TypeError("array value required")
    _count7 = len(_part7)
    if _count7 > 6:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count7, 4)
    for _index in range(_count7):
        _element = _part7[_index]
        writer.f64(_element)
    _part8 = value.i_actual
    if type(_part8) not in (list, tuple):
        raise TypeError("array value required")
    _count8 = len(_part8)
    if _count8 > 6:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count8, 4)
    for _index in range(_count8):
        _element = _part8[_index]
        writer.f64(_element)
    _part9 = value.tool_acc_values
    if type(_part9) not in (list, tuple):
        raise TypeError("array value required")
    _count9 = len(_part9)
    if _count9 > 6:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count9, 4)
    for _index in range(_count9):
        _element = _part9[_index]
        writer.f64(_element)
    _part10 = value.tcp_force
    if type(_part10) not in (list, tuple):
        raise TypeError("array value required")
    _count10 = len(_part10)
    if _count10 > 6:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count10, 4)
    for _index in range(_count10):
        _element = _part10[_index]
        writer.f64(_element)
    _part11 = value.tool_vector
    if type(_part11) not in (list, tuple):
        raise TypeError("array value required")
    _count11 = len(_part11)
    if _count11 > 6:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count11, 4)
    for _index in range(_count11):
        _element = _part11[_index]
        writer.f64(_element)
    _part12 = value.tcp_speed
    if type(_part12) not in (list, tuple):
        raise TypeError("array value required")
    _count12 = len(_part12)
    if _count12 > 6:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count12, 4)
    for _index in range(_count12):
        _element = _part12[_index]
        writer.f64(_element)
    _part13 = value.digital_input_bits
    writer.f64(_part13)
    _part14 = value.motor_temperatures
    if type(_part14) not in (list, tuple):
        raise TypeError("array value required")
    _count14 = len(_part14)
    if _count14 > 6:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count14, 4)
    for _index in range(_count14):
        _element = _part14[_index]
        writer.f64(_element)
    _part15 = value.controller_timer
    writer.f64(_part15)
    _part16 = value.test_value
    writer.f64(_part16)
    _part17 = value.robot_mode
    writer.f64(_part17)
    _part18 = value.joint_modes
    if type(_part18) not in (list, tuple):
        raise TypeError("array value required")
    _count18 = len(_part18)
    if _count18 > 6:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count18, 4)
    for _index in range(_count18):
        _element = _part18[_index]
        writer.f64(_element)
    if not 96 <= len(writer.data) - _start <= 768:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_msgsMsgRobotStateRTMsg(reader):
    _start = reader.position
    value = Ros2Ur_msgsMsgRobotStateRTMsg()
    value.time = reader.f64()
    value.q_target = [reader.f64() for _ in range(_read_count(reader, 6, 8))]
    value.qd_target = [reader.f64() for _ in range(_read_count(reader, 6, 8))]
    value.qdd_target = [reader.f64() for _ in range(_read_count(reader, 6, 8))]
    value.i_target = [reader.f64() for _ in range(_read_count(reader, 6, 8))]
    value.m_target = [reader.f64() for _ in range(_read_count(reader, 6, 8))]
    value.q_actual = [reader.f64() for _ in range(_read_count(reader, 6, 8))]
    value.qd_actual = [reader.f64() for _ in range(_read_count(reader, 6, 8))]
    value.i_actual = [reader.f64() for _ in range(_read_count(reader, 6, 8))]
    value.tool_acc_values = [reader.f64() for _ in range(_read_count(reader, 6, 8))]
    value.tcp_force = [reader.f64() for _ in range(_read_count(reader, 6, 8))]
    value.tool_vector = [reader.f64() for _ in range(_read_count(reader, 6, 8))]
    value.tcp_speed = [reader.f64() for _ in range(_read_count(reader, 6, 8))]
    value.digital_input_bits = reader.f64()
    value.motor_temperatures = [reader.f64() for _ in range(_read_count(reader, 6, 8))]
    value.controller_timer = reader.f64()
    value.test_value = reader.f64()
    value.robot_mode = reader.f64()
    value.joint_modes = [reader.f64() for _ in range(_read_count(reader, 6, 8))]
    if not 96 <= reader.position - _start <= 768:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_msgsMsgToolDataMsg:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_msgs/msg/ToolDataMsg"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_1eec69666515ffbdca162a10967fce03ee4c25f0c27d56c5a812b87c9a229aa0"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 32
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 32
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 32
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = [
        {
            "name": "ANALOG_INPUT_RANGE_CURRENT",
            "type": "int8",
            "native_type": "int8",
            "literal": "0",
            "value": "0",
        },
        {
            "name": "ANALOG_INPUT_RANGE_VOLTAGE",
            "type": "int8",
            "native_type": "int8",
            "literal": "1",
            "value": "1",
        },
        {
            "name": "TOOL_BOOTLOADER_MODE",
            "type": "uint8",
            "native_type": "uint8",
            "literal": "249",
            "value": "249",
        },
        {
            "name": "TOOL_RUNNING_MODE",
            "type": "uint8",
            "native_type": "uint8",
            "literal": "253",
            "value": "253",
        },
        {"name": "TOOL_IDLE_MODE", "type": "uint8", "native_type": "uint8", "literal": "255", "value": "255"},
    ]
    ANALOG_INPUT_RANGE_CURRENT: _ClassVar = 0
    ANALOG_INPUT_RANGE_VOLTAGE: _ClassVar = 1
    TOOL_BOOTLOADER_MODE: _ClassVar = 249
    TOOL_RUNNING_MODE: _ClassVar = 253
    TOOL_IDLE_MODE: _ClassVar = 255
    analog_input_range2: _py_int = 0
    analog_input_range3: _py_int = 0
    analog_input2: _py_float = 0.0
    analog_input3: _py_float = 0.0
    tool_voltage_48v: _py_float = 0.0
    tool_output_voltage: _py_int = 0
    tool_current: _py_float = 0.0
    tool_temperature: _py_float = 0.0
    tool_mode: _py_int = 0

    def encode(self):
        writer = _Writer(32)
        _write_Ros2Ur_msgsMsgToolDataMsg(writer, self)
        wire = writer.finish()
        return _wire(wire, 32, 32)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_msgsMsgToolDataMsg:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 32, 32))
        value = _read_Ros2Ur_msgsMsgToolDataMsg(reader)
        reader.end()
        return value


_record_Ros2Ur_msgsMsgToolDataMsg = Ros2Ur_msgsMsgToolDataMsg


def _write_Ros2Ur_msgsMsgToolDataMsg(writer, value):
    if type(value) is not Ros2Ur_msgsMsgToolDataMsg:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.analog_input_range2
    writer.integer(_part0, 1, True)
    _part1 = value.analog_input_range3
    writer.integer(_part1, 1, True)
    _part2 = value.analog_input2
    writer.f64(_part2)
    _part3 = value.analog_input3
    writer.f64(_part3)
    _part4 = value.tool_voltage_48v
    writer.f32(_part4)
    _part5 = value.tool_output_voltage
    writer.integer(_part5, 1, False)
    _part6 = value.tool_current
    writer.f32(_part6)
    _part7 = value.tool_temperature
    writer.f32(_part7)
    _part8 = value.tool_mode
    writer.integer(_part8, 1, False)
    if not 32 <= len(writer.data) - _start <= 32:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_msgsMsgToolDataMsg(reader):
    _start = reader.position
    value = Ros2Ur_msgsMsgToolDataMsg()
    value.analog_input_range2 = reader.integer(1, True)
    value.analog_input_range3 = reader.integer(1, True)
    value.analog_input2 = reader.f64()
    value.analog_input3 = reader.f64()
    value.tool_voltage_48v = reader.f32()
    value.tool_output_voltage = reader.integer(1, False)
    value.tool_current = reader.f32()
    value.tool_temperature = reader.f32()
    value.tool_mode = reader.integer(1, False)
    if not 32 <= reader.position - _start <= 32:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_msgsSrvGetRobotSoftwareVersion_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_msgs/srv/GetRobotSoftwareVersion_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_c2d78972cb5b63138d1e780e8ff0c082dd77d5b76b09642d2c655e9f16780101"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros2Ur_msgsSrvGetRobotSoftwareVersion_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_msgsSrvGetRobotSoftwareVersion_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros2Ur_msgsSrvGetRobotSoftwareVersion_Request(reader)
        reader.end()
        return value


_record_Ros2Ur_msgsSrvGetRobotSoftwareVersion_Request = Ros2Ur_msgsSrvGetRobotSoftwareVersion_Request


def _write_Ros2Ur_msgsSrvGetRobotSoftwareVersion_Request(writer, value):
    if type(value) is not Ros2Ur_msgsSrvGetRobotSoftwareVersion_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros2Ur_msgsSrvGetRobotSoftwareVersion_Request(reader):
    _start = reader.position
    value = Ros2Ur_msgsSrvGetRobotSoftwareVersion_Request()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_msgsSrvGetRobotSoftwareVersion_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_msgs/srv/GetRobotSoftwareVersion_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_bbe9984c34d69f93ad8dbfe6059c6a2e1bf43dbd27eabd97cf0a9507308d814a"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 16
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 16
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 16
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    major: _py_int = 0
    minor: _py_int = 0
    bugfix: _py_int = 0
    build: _py_int = 0

    def encode(self):
        writer = _Writer(16)
        _write_Ros2Ur_msgsSrvGetRobotSoftwareVersion_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 16, 16)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_msgsSrvGetRobotSoftwareVersion_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 16, 16))
        value = _read_Ros2Ur_msgsSrvGetRobotSoftwareVersion_Response(reader)
        reader.end()
        return value


_record_Ros2Ur_msgsSrvGetRobotSoftwareVersion_Response = Ros2Ur_msgsSrvGetRobotSoftwareVersion_Response


def _write_Ros2Ur_msgsSrvGetRobotSoftwareVersion_Response(writer, value):
    if type(value) is not Ros2Ur_msgsSrvGetRobotSoftwareVersion_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.major
    writer.integer(_part0, 4, False)
    _part1 = value.minor
    writer.integer(_part1, 4, False)
    _part2 = value.bugfix
    writer.integer(_part2, 4, False)
    _part3 = value.build
    writer.integer(_part3, 4, False)
    if not 16 <= len(writer.data) - _start <= 16:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_msgsSrvGetRobotSoftwareVersion_Response(reader):
    _start = reader.position
    value = Ros2Ur_msgsSrvGetRobotSoftwareVersion_Response()
    value.major = reader.integer(4, False)
    value.minor = reader.integer(4, False)
    value.bugfix = reader.integer(4, False)
    value.build = reader.integer(4, False)
    if not 16 <= reader.position - _start <= 16:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_msgsSrvSetAnalogOutput_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_msgs/srv/SetAnalogOutput_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_71c3eca5c6c90758f084e275fc495feb5d1c08a467c97d941fb5864c54309bea"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 6
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 6
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 6
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    data: _record_Ros2Ur_msgsMsgAnalog = _field(default_factory=lambda: Ros2Ur_msgsMsgAnalog())

    def encode(self):
        writer = _Writer(6)
        _write_Ros2Ur_msgsSrvSetAnalogOutput_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 6, 6)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_msgsSrvSetAnalogOutput_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 6, 6))
        value = _read_Ros2Ur_msgsSrvSetAnalogOutput_Request(reader)
        reader.end()
        return value


_record_Ros2Ur_msgsSrvSetAnalogOutput_Request = Ros2Ur_msgsSrvSetAnalogOutput_Request


def _write_Ros2Ur_msgsSrvSetAnalogOutput_Request(writer, value):
    if type(value) is not Ros2Ur_msgsSrvSetAnalogOutput_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.data
    _write_Ros2Ur_msgsMsgAnalog(writer, _part0)
    if not 6 <= len(writer.data) - _start <= 6:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_msgsSrvSetAnalogOutput_Request(reader):
    _start = reader.position
    value = Ros2Ur_msgsSrvSetAnalogOutput_Request()
    value.data = _read_Ros2Ur_msgsMsgAnalog(reader)
    if not 6 <= reader.position - _start <= 6:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_msgsSrvSetAnalogOutput_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_msgs/srv/SetAnalogOutput_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_71a5f3580657cb3ca702dbb63b7af3330c922624c9e9774e47e6533e2fc0a05a"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Ur_msgsSrvSetAnalogOutput_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_msgsSrvSetAnalogOutput_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Ur_msgsSrvSetAnalogOutput_Response(reader)
        reader.end()
        return value


_record_Ros2Ur_msgsSrvSetAnalogOutput_Response = Ros2Ur_msgsSrvSetAnalogOutput_Response


def _write_Ros2Ur_msgsSrvSetAnalogOutput_Response(writer, value):
    if type(value) is not Ros2Ur_msgsSrvSetAnalogOutput_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_msgsSrvSetAnalogOutput_Response(reader):
    _start = reader.position
    value = Ros2Ur_msgsSrvSetAnalogOutput_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_msgsSrvSetForceMode_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_msgs/srv/SetForceMode_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_e43a6c22510a2078de3cb2dc17ba1b7184080a6aa29a1653b7986723c0cfef6e"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 203
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 331
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 331
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = [
        {"name": "TCP_TO_ORIGIN", "type": "uint8", "native_type": "uint8", "literal": "1", "value": "1"},
        {"name": "NO_TRANSFORM", "type": "uint8", "native_type": "uint8", "literal": "2", "value": "2"},
        {
            "name": "TCP_VELOCITY_TO_X_Y",
            "type": "uint8",
            "native_type": "uint8",
            "literal": "3",
            "value": "3",
        },
    ]
    TCP_TO_ORIGIN: _ClassVar = 1
    NO_TRANSFORM: _ClassVar = 2
    TCP_VELOCITY_TO_X_Y: _ClassVar = 3
    task_frame: _record_Ros2Geometry_msgsMsgPoseStamped = _field(
        default_factory=lambda: Ros2Geometry_msgsMsgPoseStamped()
    )
    selection_vector_x: _py_bool = False
    selection_vector_y: _py_bool = False
    selection_vector_z: _py_bool = False
    selection_vector_rx: _py_bool = False
    selection_vector_ry: _py_bool = False
    selection_vector_rz: _py_bool = False
    wrench: _record_Ros2Geometry_msgsMsgWrench = _field(default_factory=lambda: Ros2Geometry_msgsMsgWrench())
    type: _py_int = 2
    speed_limits: _record_Ros2Geometry_msgsMsgTwist = _field(
        default_factory=lambda: Ros2Geometry_msgsMsgTwist()
    )
    deviation_limits: _py_list[_py_float] = _field(
        default_factory=lambda: [
            0.009999999776482582,
            0.009999999776482582,
            0.009999999776482582,
            0.009999999776482582,
            0.009999999776482582,
            0.009999999776482582,
        ]
    )
    damping_factor: _py_float = 0.02500000037252903
    gain_scaling: _py_float = 0.5

    def encode(self):
        writer = _Writer(331)
        _write_Ros2Ur_msgsSrvSetForceMode_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 203, 331)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_msgsSrvSetForceMode_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 203, 331))
        value = _read_Ros2Ur_msgsSrvSetForceMode_Request(reader)
        reader.end()
        return value


_record_Ros2Ur_msgsSrvSetForceMode_Request = Ros2Ur_msgsSrvSetForceMode_Request


def _write_Ros2Ur_msgsSrvSetForceMode_Request(writer, value):
    if type(value) is not Ros2Ur_msgsSrvSetForceMode_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.task_frame
    _write_Ros2Geometry_msgsMsgPoseStamped(writer, _part0)
    _part1 = value.selection_vector_x
    if type(_part1) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part1), 1)
    _part2 = value.selection_vector_y
    if type(_part2) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part2), 1)
    _part3 = value.selection_vector_z
    if type(_part3) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part3), 1)
    _part4 = value.selection_vector_rx
    if type(_part4) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part4), 1)
    _part5 = value.selection_vector_ry
    if type(_part5) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part5), 1)
    _part6 = value.selection_vector_rz
    if type(_part6) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part6), 1)
    _part7 = value.wrench
    _write_Ros2Geometry_msgsMsgWrench(writer, _part7)
    _part8 = value.type
    writer.integer(_part8, 1, False)
    _part9 = value.speed_limits
    _write_Ros2Geometry_msgsMsgTwist(writer, _part9)
    _part10 = value.deviation_limits
    if type(_part10) not in (list, tuple):
        raise TypeError("array value required")
    _count10 = len(_part10)
    if _count10 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count10):
        _element = _part10[_index]
        writer.f32(_element)
    _part11 = value.damping_factor
    writer.f32(_part11)
    _part12 = value.gain_scaling
    writer.f32(_part12)
    if not 203 <= len(writer.data) - _start <= 331:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_msgsSrvSetForceMode_Request(reader):
    _start = reader.position
    value = Ros2Ur_msgsSrvSetForceMode_Request()
    value.task_frame = _read_Ros2Geometry_msgsMsgPoseStamped(reader)
    value.selection_vector_x = _read_bool(reader)
    value.selection_vector_y = _read_bool(reader)
    value.selection_vector_z = _read_bool(reader)
    value.selection_vector_rx = _read_bool(reader)
    value.selection_vector_ry = _read_bool(reader)
    value.selection_vector_rz = _read_bool(reader)
    value.wrench = _read_Ros2Geometry_msgsMsgWrench(reader)
    value.type = reader.integer(1, False)
    value.speed_limits = _read_Ros2Geometry_msgsMsgTwist(reader)
    value.deviation_limits = [reader.f32() for _ in range(6)]
    value.damping_factor = reader.f32()
    value.gain_scaling = reader.f32()
    if not 203 <= reader.position - _start <= 331:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_msgsSrvSetForceMode_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_msgs/srv/SetForceMode_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_3f5438d426b7b68557ac8f43dc8efc2e2106782ec0cd4fd0dee7cdd69ddc7de8"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Ur_msgsSrvSetForceMode_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_msgsSrvSetForceMode_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Ur_msgsSrvSetForceMode_Response(reader)
        reader.end()
        return value


_record_Ros2Ur_msgsSrvSetForceMode_Response = Ros2Ur_msgsSrvSetForceMode_Response


def _write_Ros2Ur_msgsSrvSetForceMode_Response(writer, value):
    if type(value) is not Ros2Ur_msgsSrvSetForceMode_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_msgsSrvSetForceMode_Response(reader):
    _start = reader.position
    value = Ros2Ur_msgsSrvSetForceMode_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_msgsSrvSetFrictionModelParameters_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_msgs/srv/SetFrictionModelParameters_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_e44ad15f9c45d5a65eb13e6bc6e973bb20eebdafa04a5f2e8bcf4b0b54ce91c2"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 104
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 104
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    parameters: _record_Ros2Ur_msgsMsgFrictionModelParameters = _field(
        default_factory=lambda: Ros2Ur_msgsMsgFrictionModelParameters()
    )

    def encode(self):
        writer = _Writer(104)
        _write_Ros2Ur_msgsSrvSetFrictionModelParameters_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 104)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_msgsSrvSetFrictionModelParameters_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 8, 104))
        value = _read_Ros2Ur_msgsSrvSetFrictionModelParameters_Request(reader)
        reader.end()
        return value


_record_Ros2Ur_msgsSrvSetFrictionModelParameters_Request = Ros2Ur_msgsSrvSetFrictionModelParameters_Request


def _write_Ros2Ur_msgsSrvSetFrictionModelParameters_Request(writer, value):
    if type(value) is not Ros2Ur_msgsSrvSetFrictionModelParameters_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.parameters
    _write_Ros2Ur_msgsMsgFrictionModelParameters(writer, _part0)
    if not 8 <= len(writer.data) - _start <= 104:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_msgsSrvSetFrictionModelParameters_Request(reader):
    _start = reader.position
    value = Ros2Ur_msgsSrvSetFrictionModelParameters_Request()
    value.parameters = _read_Ros2Ur_msgsMsgFrictionModelParameters(reader)
    if not 8 <= reader.position - _start <= 104:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_msgsSrvSetFrictionModelParameters_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_msgs/srv/SetFrictionModelParameters_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_1caca29dda3dc32360fd010dfb352b6feb54bba66ee16edd2f4353e3382207b3"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Ur_msgsSrvSetFrictionModelParameters_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_msgsSrvSetFrictionModelParameters_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Ur_msgsSrvSetFrictionModelParameters_Response(reader)
        reader.end()
        return value


_record_Ros2Ur_msgsSrvSetFrictionModelParameters_Response = Ros2Ur_msgsSrvSetFrictionModelParameters_Response


def _write_Ros2Ur_msgsSrvSetFrictionModelParameters_Response(writer, value):
    if type(value) is not Ros2Ur_msgsSrvSetFrictionModelParameters_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_msgsSrvSetFrictionModelParameters_Response(reader):
    _start = reader.position
    value = Ros2Ur_msgsSrvSetFrictionModelParameters_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_msgsSrvSetGravity_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_msgs/srv/SetGravity_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_3d7fed6ae8accbddd5b09f93c3e49f2b9f99cae4cf80a951eb31ace30ec5a834"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 36
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 164
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 164
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    gravity: _record_Ros2Geometry_msgsMsgVector3Stamped = _field(
        default_factory=lambda: Ros2Geometry_msgsMsgVector3Stamped()
    )

    def encode(self):
        writer = _Writer(164)
        _write_Ros2Ur_msgsSrvSetGravity_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 36, 164)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_msgsSrvSetGravity_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 36, 164))
        value = _read_Ros2Ur_msgsSrvSetGravity_Request(reader)
        reader.end()
        return value


_record_Ros2Ur_msgsSrvSetGravity_Request = Ros2Ur_msgsSrvSetGravity_Request


def _write_Ros2Ur_msgsSrvSetGravity_Request(writer, value):
    if type(value) is not Ros2Ur_msgsSrvSetGravity_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.gravity
    _write_Ros2Geometry_msgsMsgVector3Stamped(writer, _part0)
    if not 36 <= len(writer.data) - _start <= 164:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_msgsSrvSetGravity_Request(reader):
    _start = reader.position
    value = Ros2Ur_msgsSrvSetGravity_Request()
    value.gravity = _read_Ros2Geometry_msgsMsgVector3Stamped(reader)
    if not 36 <= reader.position - _start <= 164:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_msgsSrvSetGravity_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_msgs/srv/SetGravity_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_84694df7fbb4fd15bfecaf1aae683ef1795b0c4941d1987d951467448da5f793"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 5
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 261
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 261
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False
    status: _py_str = ""

    def encode(self):
        writer = _Writer(261)
        _write_Ros2Ur_msgsSrvSetGravity_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 5, 261)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_msgsSrvSetGravity_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 5, 261))
        value = _read_Ros2Ur_msgsSrvSetGravity_Response(reader)
        reader.end()
        return value


_record_Ros2Ur_msgsSrvSetGravity_Response = Ros2Ur_msgsSrvSetGravity_Response


def _write_Ros2Ur_msgsSrvSetGravity_Response(writer, value):
    if type(value) is not Ros2Ur_msgsSrvSetGravity_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    _part1 = value.status
    _write_text(writer, _part1, 256)
    if not 5 <= len(writer.data) - _start <= 261:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_msgsSrvSetGravity_Response(reader):
    _start = reader.position
    value = Ros2Ur_msgsSrvSetGravity_Response()
    value.success = _read_bool(reader)
    value.status = _read_text(reader, 256)
    if not 5 <= reader.position - _start <= 261:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_msgsSrvSetIO_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_msgs/srv/SetIO_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_c8ac4dddeb474521b4c701a0229e99af954416b7b8d7f32d2a19629d38b378c7"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 6
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 6
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 6
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = [
        {"name": "PIN_AOUT0", "type": "int8", "native_type": "int8", "literal": "0", "value": "0"},
        {"name": "PIN_AOUT1", "type": "int8", "native_type": "int8", "literal": "1", "value": "1"},
        {"name": "PIN_DOUT0", "type": "int8", "native_type": "int8", "literal": "0", "value": "0"},
        {"name": "PIN_DOUT1", "type": "int8", "native_type": "int8", "literal": "1", "value": "1"},
        {"name": "PIN_DOUT2", "type": "int8", "native_type": "int8", "literal": "2", "value": "2"},
        {"name": "PIN_DOUT3", "type": "int8", "native_type": "int8", "literal": "3", "value": "3"},
        {"name": "PIN_DOUT4", "type": "int8", "native_type": "int8", "literal": "4", "value": "4"},
        {"name": "PIN_DOUT5", "type": "int8", "native_type": "int8", "literal": "5", "value": "5"},
        {"name": "PIN_DOUT6", "type": "int8", "native_type": "int8", "literal": "6", "value": "6"},
        {"name": "PIN_DOUT7", "type": "int8", "native_type": "int8", "literal": "7", "value": "7"},
        {"name": "PIN_CONF_OUT0", "type": "int8", "native_type": "int8", "literal": "8", "value": "8"},
        {"name": "PIN_CONF_OUT1", "type": "int8", "native_type": "int8", "literal": "9", "value": "9"},
        {"name": "PIN_CONF_OUT2", "type": "int8", "native_type": "int8", "literal": "10", "value": "10"},
        {"name": "PIN_CONF_OUT3", "type": "int8", "native_type": "int8", "literal": "11", "value": "11"},
        {"name": "PIN_CONF_OUT4", "type": "int8", "native_type": "int8", "literal": "12", "value": "12"},
        {"name": "PIN_CONF_OUT5", "type": "int8", "native_type": "int8", "literal": "13", "value": "13"},
        {"name": "PIN_CONF_OUT6", "type": "int8", "native_type": "int8", "literal": "14", "value": "14"},
        {"name": "PIN_CONF_OUT7", "type": "int8", "native_type": "int8", "literal": "15", "value": "15"},
        {"name": "PIN_TOOL_DOUT0", "type": "int8", "native_type": "int8", "literal": "16", "value": "16"},
        {"name": "PIN_TOOL_DOUT1", "type": "int8", "native_type": "int8", "literal": "17", "value": "17"},
        {"name": "FUN_SET_DIGITAL_OUT", "type": "int8", "native_type": "int8", "literal": "1", "value": "1"},
        {"name": "FUN_SET_FLAG", "type": "int8", "native_type": "int8", "literal": "2", "value": "2"},
        {"name": "FUN_SET_ANALOG_OUT", "type": "int8", "native_type": "int8", "literal": "3", "value": "3"},
        {"name": "FUN_SET_TOOL_VOLTAGE", "type": "int8", "native_type": "int8", "literal": "4", "value": "4"},
        {"name": "STATE_OFF", "type": "int8", "native_type": "int8", "literal": "0", "value": "0"},
        {"name": "STATE_ON", "type": "int8", "native_type": "int8", "literal": "1", "value": "1"},
        {
            "name": "STATE_TOOL_VOLTAGE_0V",
            "type": "int8",
            "native_type": "int8",
            "literal": "0",
            "value": "0",
        },
        {
            "name": "STATE_TOOL_VOLTAGE_12V",
            "type": "int8",
            "native_type": "int8",
            "literal": "12",
            "value": "12",
        },
        {
            "name": "STATE_TOOL_VOLTAGE_24V",
            "type": "int8",
            "native_type": "int8",
            "literal": "24",
            "value": "24",
        },
    ]
    PIN_AOUT0: _ClassVar = 0
    PIN_AOUT1: _ClassVar = 1
    PIN_DOUT0: _ClassVar = 0
    PIN_DOUT1: _ClassVar = 1
    PIN_DOUT2: _ClassVar = 2
    PIN_DOUT3: _ClassVar = 3
    PIN_DOUT4: _ClassVar = 4
    PIN_DOUT5: _ClassVar = 5
    PIN_DOUT6: _ClassVar = 6
    PIN_DOUT7: _ClassVar = 7
    PIN_CONF_OUT0: _ClassVar = 8
    PIN_CONF_OUT1: _ClassVar = 9
    PIN_CONF_OUT2: _ClassVar = 10
    PIN_CONF_OUT3: _ClassVar = 11
    PIN_CONF_OUT4: _ClassVar = 12
    PIN_CONF_OUT5: _ClassVar = 13
    PIN_CONF_OUT6: _ClassVar = 14
    PIN_CONF_OUT7: _ClassVar = 15
    PIN_TOOL_DOUT0: _ClassVar = 16
    PIN_TOOL_DOUT1: _ClassVar = 17
    FUN_SET_DIGITAL_OUT: _ClassVar = 1
    FUN_SET_FLAG: _ClassVar = 2
    FUN_SET_ANALOG_OUT: _ClassVar = 3
    FUN_SET_TOOL_VOLTAGE: _ClassVar = 4
    STATE_OFF: _ClassVar = 0
    STATE_ON: _ClassVar = 1
    STATE_TOOL_VOLTAGE_0V: _ClassVar = 0
    STATE_TOOL_VOLTAGE_12V: _ClassVar = 12
    STATE_TOOL_VOLTAGE_24V: _ClassVar = 24
    fun: _py_int = 0
    pin: _py_int = 0
    state: _py_float = 0.0

    def encode(self):
        writer = _Writer(6)
        _write_Ros2Ur_msgsSrvSetIO_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 6, 6)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_msgsSrvSetIO_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 6, 6))
        value = _read_Ros2Ur_msgsSrvSetIO_Request(reader)
        reader.end()
        return value


_record_Ros2Ur_msgsSrvSetIO_Request = Ros2Ur_msgsSrvSetIO_Request


def _write_Ros2Ur_msgsSrvSetIO_Request(writer, value):
    if type(value) is not Ros2Ur_msgsSrvSetIO_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.fun
    writer.integer(_part0, 1, True)
    _part1 = value.pin
    writer.integer(_part1, 1, True)
    _part2 = value.state
    writer.f32(_part2)
    if not 6 <= len(writer.data) - _start <= 6:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_msgsSrvSetIO_Request(reader):
    _start = reader.position
    value = Ros2Ur_msgsSrvSetIO_Request()
    value.fun = reader.integer(1, True)
    value.pin = reader.integer(1, True)
    value.state = reader.f32()
    if not 6 <= reader.position - _start <= 6:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_msgsSrvSetIO_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_msgs/srv/SetIO_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_bd32373034093ccdab140a5ba8ce8a420ef2ce441430e8306b2484f0ca535090"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Ur_msgsSrvSetIO_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_msgsSrvSetIO_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Ur_msgsSrvSetIO_Response(reader)
        reader.end()
        return value


_record_Ros2Ur_msgsSrvSetIO_Response = Ros2Ur_msgsSrvSetIO_Response


def _write_Ros2Ur_msgsSrvSetIO_Response(writer, value):
    if type(value) is not Ros2Ur_msgsSrvSetIO_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_msgsSrvSetIO_Response(reader):
    _start = reader.position
    value = Ros2Ur_msgsSrvSetIO_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_msgsSrvSetPayload_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_msgs/srv/SetPayload_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_e76e256e1accf2d742c4cf529e5af1e830db75f3db703a1f368d28077a87e735"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 84
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 84
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 84
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    mass: _py_float = 0.0
    center_of_gravity: _record_Ros2Geometry_msgsMsgVector3 = _field(
        default_factory=lambda: Ros2Geometry_msgsMsgVector3()
    )
    ixx: _py_float = 0.0
    iyy: _py_float = 0.0
    izz: _py_float = 0.0
    ixy: _py_float = 0.0
    ixz: _py_float = 0.0
    iyz: _py_float = 0.0
    transition_time: _record_Ros2Builtin_interfacesMsgDuration = _field(
        default_factory=lambda: Ros2Builtin_interfacesMsgDuration()
    )

    def encode(self):
        writer = _Writer(84)
        _write_Ros2Ur_msgsSrvSetPayload_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 84, 84)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_msgsSrvSetPayload_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 84, 84))
        value = _read_Ros2Ur_msgsSrvSetPayload_Request(reader)
        reader.end()
        return value


_record_Ros2Ur_msgsSrvSetPayload_Request = Ros2Ur_msgsSrvSetPayload_Request


def _write_Ros2Ur_msgsSrvSetPayload_Request(writer, value):
    if type(value) is not Ros2Ur_msgsSrvSetPayload_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.mass
    writer.f32(_part0)
    _part1 = value.center_of_gravity
    _write_Ros2Geometry_msgsMsgVector3(writer, _part1)
    _part2 = value.ixx
    writer.f64(_part2)
    _part3 = value.iyy
    writer.f64(_part3)
    _part4 = value.izz
    writer.f64(_part4)
    _part5 = value.ixy
    writer.f64(_part5)
    _part6 = value.ixz
    writer.f64(_part6)
    _part7 = value.iyz
    writer.f64(_part7)
    _part8 = value.transition_time
    _write_Ros2Builtin_interfacesMsgDuration(writer, _part8)
    if not 84 <= len(writer.data) - _start <= 84:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_msgsSrvSetPayload_Request(reader):
    _start = reader.position
    value = Ros2Ur_msgsSrvSetPayload_Request()
    value.mass = reader.f32()
    value.center_of_gravity = _read_Ros2Geometry_msgsMsgVector3(reader)
    value.ixx = reader.f64()
    value.iyy = reader.f64()
    value.izz = reader.f64()
    value.ixy = reader.f64()
    value.ixz = reader.f64()
    value.iyz = reader.f64()
    value.transition_time = _read_Ros2Builtin_interfacesMsgDuration(reader)
    if not 84 <= reader.position - _start <= 84:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_msgsSrvSetPayload_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_msgs/srv/SetPayload_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_036dbaa7d42b6cba6ad29a082e078401d507292483d260ba532f7d6947c1624c"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Ur_msgsSrvSetPayload_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_msgsSrvSetPayload_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Ur_msgsSrvSetPayload_Response(reader)
        reader.end()
        return value


_record_Ros2Ur_msgsSrvSetPayload_Response = Ros2Ur_msgsSrvSetPayload_Response


def _write_Ros2Ur_msgsSrvSetPayload_Response(writer, value):
    if type(value) is not Ros2Ur_msgsSrvSetPayload_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_msgsSrvSetPayload_Response(reader):
    _start = reader.position
    value = Ros2Ur_msgsSrvSetPayload_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_msgsSrvSetSpeedSliderFraction_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_msgs/srv/SetSpeedSliderFraction_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_d8f19fb240e4b70cad74c5111cdaebad14b480f21da953c95d474064b091abd8"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    speed_slider_fraction: _py_float = 0.0

    def encode(self):
        writer = _Writer(8)
        _write_Ros2Ur_msgsSrvSetSpeedSliderFraction_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 8)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_msgsSrvSetSpeedSliderFraction_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 8, 8))
        value = _read_Ros2Ur_msgsSrvSetSpeedSliderFraction_Request(reader)
        reader.end()
        return value


_record_Ros2Ur_msgsSrvSetSpeedSliderFraction_Request = Ros2Ur_msgsSrvSetSpeedSliderFraction_Request


def _write_Ros2Ur_msgsSrvSetSpeedSliderFraction_Request(writer, value):
    if type(value) is not Ros2Ur_msgsSrvSetSpeedSliderFraction_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.speed_slider_fraction
    writer.f64(_part0)
    if not 8 <= len(writer.data) - _start <= 8:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_msgsSrvSetSpeedSliderFraction_Request(reader):
    _start = reader.position
    value = Ros2Ur_msgsSrvSetSpeedSliderFraction_Request()
    value.speed_slider_fraction = reader.f64()
    if not 8 <= reader.position - _start <= 8:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Ur_msgsSrvSetSpeedSliderFraction_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_msgs/srv/SetSpeedSliderFraction_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_1ab1ad5ab4b1ed302710ec055dff7644cc6e966af919ff311eaea6cddcf7dbb9"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Ur_msgsSrvSetSpeedSliderFraction_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Ur_msgsSrvSetSpeedSliderFraction_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Ur_msgsSrvSetSpeedSliderFraction_Response(reader)
        reader.end()
        return value


_record_Ros2Ur_msgsSrvSetSpeedSliderFraction_Response = Ros2Ur_msgsSrvSetSpeedSliderFraction_Response


def _write_Ros2Ur_msgsSrvSetSpeedSliderFraction_Response(writer, value):
    if type(value) is not Ros2Ur_msgsSrvSetSpeedSliderFraction_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Ur_msgsSrvSetSpeedSliderFraction_Response(reader):
    _start = reader.position
    value = Ros2Ur_msgsSrvSetSpeedSliderFraction_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value
