# @file bounded_records.py
# @brief Complete universal_robots values and adapters for the selected original interface catalog.
# @details Retain original field order, scalar widths, array capacities, string bounds, constants and declared
# defaults. Pure value access and canonical codecs create no native ROS allocation or resource grant. Transport
# roles require the separately admitted SDK owner.
# @see share/platform/universal_robots/domains/universal-robots-polyscopex-complete.ir.json
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
class Ros2Std_msgsMsgString:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "std_msgs/msg/String"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_c48b5497cbf487f56eb073a982b93acd501c6bb72f0e9ef9dce2175ce7ac15c5"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1028
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1028
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    data: _py_str = ""

    def encode(self):
        writer = _Writer(1028)
        _write_Ros2Std_msgsMsgString(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 1028)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Std_msgsMsgString:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 4, 1028))
        value = _read_Ros2Std_msgsMsgString(reader)
        reader.end()
        return value


_record_Ros2Std_msgsMsgString = Ros2Std_msgsMsgString


def _write_Ros2Std_msgsMsgString(writer, value):
    if type(value) is not Ros2Std_msgsMsgString:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.data
    _write_text(writer, _part0, 1024)
    if not 4 <= len(writer.data) - _start <= 1028:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Std_msgsMsgString(reader):
    _start = reader.position
    value = Ros2Std_msgsMsgString()
    value.data = _read_text(reader, 1024)
    if not 4 <= reader.position - _start <= 1028:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2UrinterfacesMsgRobotMode:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "urinterfaces/msg/RobotMode"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_a16ec0ed8caa1a2b48cd4116d88877911921848469cd139f4783e4f2c549e7ea"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 13
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 141
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 141
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = [
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
    DISCONNECTED: _ClassVar = 0
    CONFIRM_SAFETY: _ClassVar = 1
    BOOTING: _ClassVar = 2
    POWER_OFF: _ClassVar = 3
    POWER_ON: _ClassVar = 4
    IDLE: _ClassVar = 5
    BACKDRIVE: _ClassVar = 6
    RUNNING: _ClassVar = 7
    UPDATING_FIRMWARE: _ClassVar = 8
    header: _record_Ros2Std_msgsMsgHeader = _field(default_factory=lambda: Ros2Std_msgsMsgHeader())
    data: _py_int = 0

    def encode(self):
        writer = _Writer(141)
        _write_Ros2UrinterfacesMsgRobotMode(writer, self)
        wire = writer.finish()
        return _wire(wire, 13, 141)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2UrinterfacesMsgRobotMode:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 13, 141))
        value = _read_Ros2UrinterfacesMsgRobotMode(reader)
        reader.end()
        return value


_record_Ros2UrinterfacesMsgRobotMode = Ros2UrinterfacesMsgRobotMode


def _write_Ros2UrinterfacesMsgRobotMode(writer, value):
    if type(value) is not Ros2UrinterfacesMsgRobotMode:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros2Std_msgsMsgHeader(writer, _part0)
    _part1 = value.data
    writer.integer(_part1, 1, True)
    if not 13 <= len(writer.data) - _start <= 141:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2UrinterfacesMsgRobotMode(reader):
    _start = reader.position
    value = Ros2UrinterfacesMsgRobotMode()
    value.header = _read_Ros2Std_msgsMsgHeader(reader)
    value.data = reader.integer(1, True)
    if not 13 <= reader.position - _start <= 141:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2UrinterfacesActionSetMode_Goal:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "urinterfaces/action/SetMode_Goal"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_d1d998e217d6f3d3eefd8ffccecff8463580346150a59a1c7a2dac8d609e0e09"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 15
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 143
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 143
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    target_robot_mode: _record_Ros2UrinterfacesMsgRobotMode = _field(
        default_factory=lambda: Ros2UrinterfacesMsgRobotMode()
    )
    stop_program: _py_bool = False
    play_program: _py_bool = False

    def encode(self):
        writer = _Writer(143)
        _write_Ros2UrinterfacesActionSetMode_Goal(writer, self)
        wire = writer.finish()
        return _wire(wire, 15, 143)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2UrinterfacesActionSetMode_Goal:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 15, 143))
        value = _read_Ros2UrinterfacesActionSetMode_Goal(reader)
        reader.end()
        return value


_record_Ros2UrinterfacesActionSetMode_Goal = Ros2UrinterfacesActionSetMode_Goal


def _write_Ros2UrinterfacesActionSetMode_Goal(writer, value):
    if type(value) is not Ros2UrinterfacesActionSetMode_Goal:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.target_robot_mode
    _write_Ros2UrinterfacesMsgRobotMode(writer, _part0)
    _part1 = value.stop_program
    if type(_part1) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part1), 1)
    _part2 = value.play_program
    if type(_part2) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part2), 1)
    if not 15 <= len(writer.data) - _start <= 143:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2UrinterfacesActionSetMode_Goal(reader):
    _start = reader.position
    value = Ros2UrinterfacesActionSetMode_Goal()
    value.target_robot_mode = _read_Ros2UrinterfacesMsgRobotMode(reader)
    value.stop_program = _read_bool(reader)
    value.play_program = _read_bool(reader)
    if not 15 <= reader.position - _start <= 143:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2UrinterfacesActionSetMode_Result:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "urinterfaces/action/SetMode_Result"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_500243a508824c42fe2da424040aa60bf2426ac607f2f6016fab014f81518af7"
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
        _write_Ros2UrinterfacesActionSetMode_Result(writer, self)
        wire = writer.finish()
        return _wire(wire, 5, 261)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2UrinterfacesActionSetMode_Result:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 5, 261))
        value = _read_Ros2UrinterfacesActionSetMode_Result(reader)
        reader.end()
        return value


_record_Ros2UrinterfacesActionSetMode_Result = Ros2UrinterfacesActionSetMode_Result


def _write_Ros2UrinterfacesActionSetMode_Result(writer, value):
    if type(value) is not Ros2UrinterfacesActionSetMode_Result:
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


def _read_Ros2UrinterfacesActionSetMode_Result(reader):
    _start = reader.position
    value = Ros2UrinterfacesActionSetMode_Result()
    value.success = _read_bool(reader)
    value.message = _read_text(reader, 256)
    if not 5 <= reader.position - _start <= 261:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2UrinterfacesActionSetMode_Feedback:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "urinterfaces/action/SetMode_Feedback"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_22fb71c17066829bd66c98bc631c82b2bfef3c501e08960a6bfad3d902f76537"
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
        _write_Ros2UrinterfacesActionSetMode_Feedback(writer, self)
        wire = writer.finish()
        return _wire(wire, 2, 2)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2UrinterfacesActionSetMode_Feedback:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 2, 2))
        value = _read_Ros2UrinterfacesActionSetMode_Feedback(reader)
        reader.end()
        return value


_record_Ros2UrinterfacesActionSetMode_Feedback = Ros2UrinterfacesActionSetMode_Feedback


def _write_Ros2UrinterfacesActionSetMode_Feedback(writer, value):
    if type(value) is not Ros2UrinterfacesActionSetMode_Feedback:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.current_robot_mode
    writer.integer(_part0, 1, True)
    _part1 = value.current_safety_mode
    writer.integer(_part1, 1, True)
    if not 2 <= len(writer.data) - _start <= 2:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2UrinterfacesActionSetMode_Feedback(reader):
    _start = reader.position
    value = Ros2UrinterfacesActionSetMode_Feedback()
    value.current_robot_mode = reader.integer(1, True)
    value.current_safety_mode = reader.integer(1, True)
    if not 2 <= reader.position - _start <= 2:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2UrinterfacesMsgActiveTCP:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "urinterfaces/msg/ActiveTCP"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_e62d31728eca201dee256d88d1d268bf2ecb9607ed5c48783432f966edf459ae"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 16
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 400
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 400
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros2Std_msgsMsgHeader = _field(default_factory=lambda: Ros2Std_msgsMsgHeader())
    data: _py_str = ""

    def encode(self):
        writer = _Writer(400)
        _write_Ros2UrinterfacesMsgActiveTCP(writer, self)
        wire = writer.finish()
        return _wire(wire, 16, 400)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2UrinterfacesMsgActiveTCP:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 16, 400))
        value = _read_Ros2UrinterfacesMsgActiveTCP(reader)
        reader.end()
        return value


_record_Ros2UrinterfacesMsgActiveTCP = Ros2UrinterfacesMsgActiveTCP


def _write_Ros2UrinterfacesMsgActiveTCP(writer, value):
    if type(value) is not Ros2UrinterfacesMsgActiveTCP:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros2Std_msgsMsgHeader(writer, _part0)
    _part1 = value.data
    _write_text(writer, _part1, 256)
    if not 16 <= len(writer.data) - _start <= 400:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2UrinterfacesMsgActiveTCP(reader):
    _start = reader.position
    value = Ros2UrinterfacesMsgActiveTCP()
    value.header = _read_Ros2Std_msgsMsgHeader(reader)
    value.data = _read_text(reader, 256)
    if not 16 <= reader.position - _start <= 400:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2UrinterfacesMsgAnalog:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "urinterfaces/msg/Analog"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_e81cffd909f3bc387ee00c37537434341ef93fd160e465be033aa9bc412b979b"
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
    value: _py_float = 0.0

    def encode(self):
        writer = _Writer(6)
        _write_Ros2UrinterfacesMsgAnalog(writer, self)
        wire = writer.finish()
        return _wire(wire, 6, 6)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2UrinterfacesMsgAnalog:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 6, 6))
        value = _read_Ros2UrinterfacesMsgAnalog(reader)
        reader.end()
        return value


_record_Ros2UrinterfacesMsgAnalog = Ros2UrinterfacesMsgAnalog


def _write_Ros2UrinterfacesMsgAnalog(writer, value):
    if type(value) is not Ros2UrinterfacesMsgAnalog:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.pin
    writer.integer(_part0, 1, False)
    _part1 = value.domain
    writer.integer(_part1, 1, False)
    _part2 = value.value
    writer.f32(_part2)
    if not 6 <= len(writer.data) - _start <= 6:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2UrinterfacesMsgAnalog(reader):
    _start = reader.position
    value = Ros2UrinterfacesMsgAnalog()
    value.pin = reader.integer(1, False)
    value.domain = reader.integer(1, False)
    value.value = reader.f32()
    if not 6 <= reader.position - _start <= 6:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2UrinterfacesMsgAnalogIO:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "urinterfaces/msg/AnalogIO"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_3130f3e3857f21bab5092d9c6abea8c45965c07ebb9c1ab14b28fa51b7d71e0c"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 200
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 200
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    analog_inputs: _py_list[_record_Ros2UrinterfacesMsgAnalog] = _field(default_factory=lambda: [])
    analog_outputs: _py_list[_record_Ros2UrinterfacesMsgAnalog] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(200)
        _write_Ros2UrinterfacesMsgAnalogIO(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 200)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2UrinterfacesMsgAnalogIO:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 8, 200))
        value = _read_Ros2UrinterfacesMsgAnalogIO(reader)
        reader.end()
        return value


_record_Ros2UrinterfacesMsgAnalogIO = Ros2UrinterfacesMsgAnalogIO


def _write_Ros2UrinterfacesMsgAnalogIO(writer, value):
    if type(value) is not Ros2UrinterfacesMsgAnalogIO:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.analog_inputs
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 > 16:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count0, 4)
    for _index in range(_count0):
        _element = _part0[_index]
        _write_Ros2UrinterfacesMsgAnalog(writer, _element)
    _part1 = value.analog_outputs
    if type(_part1) not in (list, tuple):
        raise TypeError("array value required")
    _count1 = len(_part1)
    if _count1 > 16:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        _write_Ros2UrinterfacesMsgAnalog(writer, _element)
    if not 8 <= len(writer.data) - _start <= 200:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2UrinterfacesMsgAnalogIO(reader):
    _start = reader.position
    value = Ros2UrinterfacesMsgAnalogIO()
    value.analog_inputs = [_read_Ros2UrinterfacesMsgAnalog(reader) for _ in range(_read_count(reader, 16, 6))]
    value.analog_outputs = [
        _read_Ros2UrinterfacesMsgAnalog(reader) for _ in range(_read_count(reader, 16, 6))
    ]
    if not 8 <= reader.position - _start <= 200:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2UrinterfacesMsgAnalogIOStateStamped:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "urinterfaces/msg/AnalogIOStateStamped"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_a40e839bb4acfcb26503c79f01216b7aea9ab8ff25c50dca42578b206ab40a89"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 20
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 340
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 340
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros2Std_msgsMsgHeader = _field(default_factory=lambda: Ros2Std_msgsMsgHeader())
    io_state: _record_Ros2UrinterfacesMsgAnalogIO = _field(
        default_factory=lambda: Ros2UrinterfacesMsgAnalogIO()
    )

    def encode(self):
        writer = _Writer(340)
        _write_Ros2UrinterfacesMsgAnalogIOStateStamped(writer, self)
        wire = writer.finish()
        return _wire(wire, 20, 340)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2UrinterfacesMsgAnalogIOStateStamped:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 20, 340))
        value = _read_Ros2UrinterfacesMsgAnalogIOStateStamped(reader)
        reader.end()
        return value


_record_Ros2UrinterfacesMsgAnalogIOStateStamped = Ros2UrinterfacesMsgAnalogIOStateStamped


def _write_Ros2UrinterfacesMsgAnalogIOStateStamped(writer, value):
    if type(value) is not Ros2UrinterfacesMsgAnalogIOStateStamped:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros2Std_msgsMsgHeader(writer, _part0)
    _part1 = value.io_state
    _write_Ros2UrinterfacesMsgAnalogIO(writer, _part1)
    if not 20 <= len(writer.data) - _start <= 340:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2UrinterfacesMsgAnalogIOStateStamped(reader):
    _start = reader.position
    value = Ros2UrinterfacesMsgAnalogIOStateStamped()
    value.header = _read_Ros2Std_msgsMsgHeader(reader)
    value.io_state = _read_Ros2UrinterfacesMsgAnalogIO(reader)
    if not 20 <= reader.position - _start <= 340:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2UrinterfacesMsgAnalogStamped:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "urinterfaces/msg/AnalogStamped"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_749557c6e79b882385927c62d3c45963797ce116d7be6235bd9f186a7b4da76c"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 18
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 146
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 146
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros2Std_msgsMsgHeader = _field(default_factory=lambda: Ros2Std_msgsMsgHeader())
    data: _record_Ros2UrinterfacesMsgAnalog = _field(default_factory=lambda: Ros2UrinterfacesMsgAnalog())

    def encode(self):
        writer = _Writer(146)
        _write_Ros2UrinterfacesMsgAnalogStamped(writer, self)
        wire = writer.finish()
        return _wire(wire, 18, 146)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2UrinterfacesMsgAnalogStamped:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 18, 146))
        value = _read_Ros2UrinterfacesMsgAnalogStamped(reader)
        reader.end()
        return value


_record_Ros2UrinterfacesMsgAnalogStamped = Ros2UrinterfacesMsgAnalogStamped


def _write_Ros2UrinterfacesMsgAnalogStamped(writer, value):
    if type(value) is not Ros2UrinterfacesMsgAnalogStamped:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros2Std_msgsMsgHeader(writer, _part0)
    _part1 = value.data
    _write_Ros2UrinterfacesMsgAnalog(writer, _part1)
    if not 18 <= len(writer.data) - _start <= 146:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2UrinterfacesMsgAnalogStamped(reader):
    _start = reader.position
    value = Ros2UrinterfacesMsgAnalogStamped()
    value.header = _read_Ros2Std_msgsMsgHeader(reader)
    value.data = _read_Ros2UrinterfacesMsgAnalog(reader)
    if not 18 <= reader.position - _start <= 146:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2UrinterfacesMsgBoolStamped:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "urinterfaces/msg/BoolStamped"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_1a4128638df10bd9a8d33af0ed3c2ee9b4deb771d45dfe83f2a9a75c7f77de66"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 13
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 141
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 141
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros2Std_msgsMsgHeader = _field(default_factory=lambda: Ros2Std_msgsMsgHeader())
    data: _py_bool = False

    def encode(self):
        writer = _Writer(141)
        _write_Ros2UrinterfacesMsgBoolStamped(writer, self)
        wire = writer.finish()
        return _wire(wire, 13, 141)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2UrinterfacesMsgBoolStamped:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 13, 141))
        value = _read_Ros2UrinterfacesMsgBoolStamped(reader)
        reader.end()
        return value


_record_Ros2UrinterfacesMsgBoolStamped = Ros2UrinterfacesMsgBoolStamped


def _write_Ros2UrinterfacesMsgBoolStamped(writer, value):
    if type(value) is not Ros2UrinterfacesMsgBoolStamped:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros2Std_msgsMsgHeader(writer, _part0)
    _part1 = value.data
    if type(_part1) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part1), 1)
    if not 13 <= len(writer.data) - _start <= 141:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2UrinterfacesMsgBoolStamped(reader):
    _start = reader.position
    value = Ros2UrinterfacesMsgBoolStamped()
    value.header = _read_Ros2Std_msgsMsgHeader(reader)
    value.data = _read_bool(reader)
    if not 13 <= reader.position - _start <= 141:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2UrinterfacesMsgControlCycle:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "urinterfaces/msg/ControlCycle"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_99a4d96e5673f5ac49eab13cd8b28af55ac83e1626c39ed20ff46655df4d6278"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 20
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 148
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 148
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros2Std_msgsMsgHeader = _field(default_factory=lambda: Ros2Std_msgsMsgHeader())
    data: _py_int = 0

    def encode(self):
        writer = _Writer(148)
        _write_Ros2UrinterfacesMsgControlCycle(writer, self)
        wire = writer.finish()
        return _wire(wire, 20, 148)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2UrinterfacesMsgControlCycle:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 20, 148))
        value = _read_Ros2UrinterfacesMsgControlCycle(reader)
        reader.end()
        return value


_record_Ros2UrinterfacesMsgControlCycle = Ros2UrinterfacesMsgControlCycle


def _write_Ros2UrinterfacesMsgControlCycle(writer, value):
    if type(value) is not Ros2UrinterfacesMsgControlCycle:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros2Std_msgsMsgHeader(writer, _part0)
    _part1 = value.data
    writer.integer(_part1, 8, False)
    if not 20 <= len(writer.data) - _start <= 148:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2UrinterfacesMsgControlCycle(reader):
    _start = reader.position
    value = Ros2UrinterfacesMsgControlCycle()
    value.header = _read_Ros2Std_msgsMsgHeader(reader)
    value.data = reader.integer(8, False)
    if not 20 <= reader.position - _start <= 148:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2UrinterfacesMsgCurrent:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "urinterfaces/msg/Current"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_759f2139335bcb720f7f4a38cd8b1413f203f2dd2b72149fa0de0fb7a0a778df"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 16
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 144
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 144
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros2Std_msgsMsgHeader = _field(default_factory=lambda: Ros2Std_msgsMsgHeader())
    data: _py_float = 0.0

    def encode(self):
        writer = _Writer(144)
        _write_Ros2UrinterfacesMsgCurrent(writer, self)
        wire = writer.finish()
        return _wire(wire, 16, 144)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2UrinterfacesMsgCurrent:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 16, 144))
        value = _read_Ros2UrinterfacesMsgCurrent(reader)
        reader.end()
        return value


_record_Ros2UrinterfacesMsgCurrent = Ros2UrinterfacesMsgCurrent


def _write_Ros2UrinterfacesMsgCurrent(writer, value):
    if type(value) is not Ros2UrinterfacesMsgCurrent:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros2Std_msgsMsgHeader(writer, _part0)
    _part1 = value.data
    writer.f32(_part1)
    if not 16 <= len(writer.data) - _start <= 144:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2UrinterfacesMsgCurrent(reader):
    _start = reader.position
    value = Ros2UrinterfacesMsgCurrent()
    value.header = _read_Ros2Std_msgsMsgHeader(reader)
    value.data = reader.f32()
    if not 16 <= reader.position - _start <= 144:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2UrinterfacesMsgDigital:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "urinterfaces/msg/Digital"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_c60c73df0383bb9a3e23ae3148cff9d6eb49b88c2d10add0af6a86ec9af54512"
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
        _write_Ros2UrinterfacesMsgDigital(writer, self)
        wire = writer.finish()
        return _wire(wire, 2, 2)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2UrinterfacesMsgDigital:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 2, 2))
        value = _read_Ros2UrinterfacesMsgDigital(reader)
        reader.end()
        return value


_record_Ros2UrinterfacesMsgDigital = Ros2UrinterfacesMsgDigital


def _write_Ros2UrinterfacesMsgDigital(writer, value):
    if type(value) is not Ros2UrinterfacesMsgDigital:
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


def _read_Ros2UrinterfacesMsgDigital(reader):
    _start = reader.position
    value = Ros2UrinterfacesMsgDigital()
    value.pin = reader.integer(1, False)
    value.state = _read_bool(reader)
    if not 2 <= reader.position - _start <= 2:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2UrinterfacesMsgDigitalIO:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "urinterfaces/msg/DigitalIO"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_11235b6010feb7e3e5e6c2be8acd3fbba1c25ecbf97ae5e0c899a0e3de3c4e4a"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 136
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 136
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    digital_inputs: _py_list[_record_Ros2UrinterfacesMsgDigital] = _field(default_factory=lambda: [])
    digital_outputs: _py_list[_record_Ros2UrinterfacesMsgDigital] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(136)
        _write_Ros2UrinterfacesMsgDigitalIO(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 136)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2UrinterfacesMsgDigitalIO:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 8, 136))
        value = _read_Ros2UrinterfacesMsgDigitalIO(reader)
        reader.end()
        return value


_record_Ros2UrinterfacesMsgDigitalIO = Ros2UrinterfacesMsgDigitalIO


def _write_Ros2UrinterfacesMsgDigitalIO(writer, value):
    if type(value) is not Ros2UrinterfacesMsgDigitalIO:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.digital_inputs
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 > 32:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count0, 4)
    for _index in range(_count0):
        _element = _part0[_index]
        _write_Ros2UrinterfacesMsgDigital(writer, _element)
    _part1 = value.digital_outputs
    if type(_part1) not in (list, tuple):
        raise TypeError("array value required")
    _count1 = len(_part1)
    if _count1 > 32:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        _write_Ros2UrinterfacesMsgDigital(writer, _element)
    if not 8 <= len(writer.data) - _start <= 136:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2UrinterfacesMsgDigitalIO(reader):
    _start = reader.position
    value = Ros2UrinterfacesMsgDigitalIO()
    value.digital_inputs = [
        _read_Ros2UrinterfacesMsgDigital(reader) for _ in range(_read_count(reader, 32, 2))
    ]
    value.digital_outputs = [
        _read_Ros2UrinterfacesMsgDigital(reader) for _ in range(_read_count(reader, 32, 2))
    ]
    if not 8 <= reader.position - _start <= 136:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2UrinterfacesMsgDigitalIOStateStamped:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "urinterfaces/msg/DigitalIOStateStamped"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_542db76916f234e79216804426dc4e8d386a0ef547907391c921f51ed45e64c9"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 28
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 412
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 412
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros2Std_msgsMsgHeader = _field(default_factory=lambda: Ros2Std_msgsMsgHeader())
    configurable_io: _record_Ros2UrinterfacesMsgDigitalIO = _field(
        default_factory=lambda: Ros2UrinterfacesMsgDigitalIO()
    )
    standard_io: _record_Ros2UrinterfacesMsgDigitalIO = _field(
        default_factory=lambda: Ros2UrinterfacesMsgDigitalIO()
    )

    def encode(self):
        writer = _Writer(412)
        _write_Ros2UrinterfacesMsgDigitalIOStateStamped(writer, self)
        wire = writer.finish()
        return _wire(wire, 28, 412)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2UrinterfacesMsgDigitalIOStateStamped:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 28, 412))
        value = _read_Ros2UrinterfacesMsgDigitalIOStateStamped(reader)
        reader.end()
        return value


_record_Ros2UrinterfacesMsgDigitalIOStateStamped = Ros2UrinterfacesMsgDigitalIOStateStamped


def _write_Ros2UrinterfacesMsgDigitalIOStateStamped(writer, value):
    if type(value) is not Ros2UrinterfacesMsgDigitalIOStateStamped:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros2Std_msgsMsgHeader(writer, _part0)
    _part1 = value.configurable_io
    _write_Ros2UrinterfacesMsgDigitalIO(writer, _part1)
    _part2 = value.standard_io
    _write_Ros2UrinterfacesMsgDigitalIO(writer, _part2)
    if not 28 <= len(writer.data) - _start <= 412:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2UrinterfacesMsgDigitalIOStateStamped(reader):
    _start = reader.position
    value = Ros2UrinterfacesMsgDigitalIOStateStamped()
    value.header = _read_Ros2Std_msgsMsgHeader(reader)
    value.configurable_io = _read_Ros2UrinterfacesMsgDigitalIO(reader)
    value.standard_io = _read_Ros2UrinterfacesMsgDigitalIO(reader)
    if not 28 <= reader.position - _start <= 412:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2UrinterfacesMsgDigitalStamped:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "urinterfaces/msg/DigitalStamped"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_dc86d5a04c0801089ddf6b61b5fd33d63df8b5599550c6a0e84e19bbff375865"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 14
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 142
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 142
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros2Std_msgsMsgHeader = _field(default_factory=lambda: Ros2Std_msgsMsgHeader())
    data: _record_Ros2UrinterfacesMsgDigital = _field(default_factory=lambda: Ros2UrinterfacesMsgDigital())

    def encode(self):
        writer = _Writer(142)
        _write_Ros2UrinterfacesMsgDigitalStamped(writer, self)
        wire = writer.finish()
        return _wire(wire, 14, 142)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2UrinterfacesMsgDigitalStamped:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 14, 142))
        value = _read_Ros2UrinterfacesMsgDigitalStamped(reader)
        reader.end()
        return value


_record_Ros2UrinterfacesMsgDigitalStamped = Ros2UrinterfacesMsgDigitalStamped


def _write_Ros2UrinterfacesMsgDigitalStamped(writer, value):
    if type(value) is not Ros2UrinterfacesMsgDigitalStamped:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros2Std_msgsMsgHeader(writer, _part0)
    _part1 = value.data
    _write_Ros2UrinterfacesMsgDigital(writer, _part1)
    if not 14 <= len(writer.data) - _start <= 142:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2UrinterfacesMsgDigitalStamped(reader):
    _start = reader.position
    value = Ros2UrinterfacesMsgDigitalStamped()
    value.header = _read_Ros2Std_msgsMsgHeader(reader)
    value.data = _read_Ros2UrinterfacesMsgDigital(reader)
    if not 14 <= reader.position - _start <= 142:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2UrinterfacesMsgDoubleMultiArrayStamped:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "urinterfaces/msg/DoubleMultiArrayStamped"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_82b52f88248ea8d6cd7b809d1fd5aa55b4bbe1618044e739998a7ec74a23a8ae"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 16
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 272
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 272
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros2Std_msgsMsgHeader = _field(default_factory=lambda: Ros2Std_msgsMsgHeader())
    data: _py_list[_py_float] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(272)
        _write_Ros2UrinterfacesMsgDoubleMultiArrayStamped(writer, self)
        wire = writer.finish()
        return _wire(wire, 16, 272)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2UrinterfacesMsgDoubleMultiArrayStamped:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 16, 272))
        value = _read_Ros2UrinterfacesMsgDoubleMultiArrayStamped(reader)
        reader.end()
        return value


_record_Ros2UrinterfacesMsgDoubleMultiArrayStamped = Ros2UrinterfacesMsgDoubleMultiArrayStamped


def _write_Ros2UrinterfacesMsgDoubleMultiArrayStamped(writer, value):
    if type(value) is not Ros2UrinterfacesMsgDoubleMultiArrayStamped:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros2Std_msgsMsgHeader(writer, _part0)
    _part1 = value.data
    if type(_part1) not in (list, tuple):
        raise TypeError("array value required")
    _count1 = len(_part1)
    if _count1 > 16:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        writer.f64(_element)
    if not 16 <= len(writer.data) - _start <= 272:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2UrinterfacesMsgDoubleMultiArrayStamped(reader):
    _start = reader.position
    value = Ros2UrinterfacesMsgDoubleMultiArrayStamped()
    value.header = _read_Ros2Std_msgsMsgHeader(reader)
    value.data = [reader.f64() for _ in range(_read_count(reader, 16, 8))]
    if not 16 <= reader.position - _start <= 272:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2UrinterfacesMsgFloat32Stamped:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "urinterfaces/msg/Float32Stamped"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_5989940d19890b6d3b78172e9920708745b78e35c1c4fb238412c37a813d30d3"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 16
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 144
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 144
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros2Std_msgsMsgHeader = _field(default_factory=lambda: Ros2Std_msgsMsgHeader())
    data: _py_float = 0.0

    def encode(self):
        writer = _Writer(144)
        _write_Ros2UrinterfacesMsgFloat32Stamped(writer, self)
        wire = writer.finish()
        return _wire(wire, 16, 144)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2UrinterfacesMsgFloat32Stamped:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 16, 144))
        value = _read_Ros2UrinterfacesMsgFloat32Stamped(reader)
        reader.end()
        return value


_record_Ros2UrinterfacesMsgFloat32Stamped = Ros2UrinterfacesMsgFloat32Stamped


def _write_Ros2UrinterfacesMsgFloat32Stamped(writer, value):
    if type(value) is not Ros2UrinterfacesMsgFloat32Stamped:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros2Std_msgsMsgHeader(writer, _part0)
    _part1 = value.data
    writer.f32(_part1)
    if not 16 <= len(writer.data) - _start <= 144:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2UrinterfacesMsgFloat32Stamped(reader):
    _start = reader.position
    value = Ros2UrinterfacesMsgFloat32Stamped()
    value.header = _read_Ros2Std_msgsMsgHeader(reader)
    value.data = reader.f32()
    if not 16 <= reader.position - _start <= 144:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2UrinterfacesMsgFloat64Stamped:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "urinterfaces/msg/Float64Stamped"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_4f8950feff6f20dbdbf9cac1f01168824be3698a4bd90355a470b580930edb21"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 20
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 148
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 148
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros2Std_msgsMsgHeader = _field(default_factory=lambda: Ros2Std_msgsMsgHeader())
    data: _py_float = 0.0

    def encode(self):
        writer = _Writer(148)
        _write_Ros2UrinterfacesMsgFloat64Stamped(writer, self)
        wire = writer.finish()
        return _wire(wire, 20, 148)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2UrinterfacesMsgFloat64Stamped:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 20, 148))
        value = _read_Ros2UrinterfacesMsgFloat64Stamped(reader)
        reader.end()
        return value


_record_Ros2UrinterfacesMsgFloat64Stamped = Ros2UrinterfacesMsgFloat64Stamped


def _write_Ros2UrinterfacesMsgFloat64Stamped(writer, value):
    if type(value) is not Ros2UrinterfacesMsgFloat64Stamped:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros2Std_msgsMsgHeader(writer, _part0)
    _part1 = value.data
    writer.f64(_part1)
    if not 20 <= len(writer.data) - _start <= 148:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2UrinterfacesMsgFloat64Stamped(reader):
    _start = reader.position
    value = Ros2UrinterfacesMsgFloat64Stamped()
    value.header = _read_Ros2Std_msgsMsgHeader(reader)
    value.data = reader.f64()
    if not 20 <= reader.position - _start <= 148:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2UrinterfacesMsgJointMode:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "urinterfaces/msg/JointMode"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_6d766192096ced3c8568a98fb286c309e00cfb97e34b2611fff70e5bb1eaa95c"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 19
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 147
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 147
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = [
        {
            "name": "JOINT_MODE_RESET",
            "type": "uint8",
            "native_type": "uint8",
            "literal": "235",
            "value": "235",
        },
        {
            "name": "JOINT_MODE_SHUTTING_DOWN",
            "type": "uint8",
            "native_type": "uint8",
            "literal": "236",
            "value": "236",
        },
        {
            "name": "JOINT_MODE_PART_D_CALIBRATION",
            "type": "uint8",
            "native_type": "uint8",
            "literal": "237",
            "value": "237",
        },
        {
            "name": "JOINT_MODE_BACKDRIVE",
            "type": "uint8",
            "native_type": "uint8",
            "literal": "238",
            "value": "238",
        },
        {
            "name": "JOINT_MODE_POWER_OFF",
            "type": "uint8",
            "native_type": "uint8",
            "literal": "239",
            "value": "239",
        },
        {
            "name": "JOINT_MODE_READY_FOR_POWER_OFF",
            "type": "uint8",
            "native_type": "uint8",
            "literal": "240",
            "value": "240",
        },
        {
            "name": "JOINT_MODE_NOT_RESPONDING",
            "type": "uint8",
            "native_type": "uint8",
            "literal": "245",
            "value": "245",
        },
        {
            "name": "JOINT_MODE_MOTOR_INITIALISATION",
            "type": "uint8",
            "native_type": "uint8",
            "literal": "246",
            "value": "246",
        },
        {
            "name": "JOINT_MODE_BOOTING",
            "type": "uint8",
            "native_type": "uint8",
            "literal": "247",
            "value": "247",
        },
        {
            "name": "JOINT_MODE_PART_D_CALIBRATION_ERROR",
            "type": "uint8",
            "native_type": "uint8",
            "literal": "248",
            "value": "248",
        },
        {
            "name": "JOINT_MODE_BOOTLOADER",
            "type": "uint8",
            "native_type": "uint8",
            "literal": "249",
            "value": "249",
        },
        {
            "name": "JOINT_MODE_CALIBRATION",
            "type": "uint8",
            "native_type": "uint8",
            "literal": "250",
            "value": "250",
        },
        {
            "name": "JOINT_MODE_VIOLATION",
            "type": "uint8",
            "native_type": "uint8",
            "literal": "251",
            "value": "251",
        },
        {
            "name": "JOINT_MODE_FAULT",
            "type": "uint8",
            "native_type": "uint8",
            "literal": "252",
            "value": "252",
        },
        {
            "name": "JOINT_MODE_RUNNING",
            "type": "uint8",
            "native_type": "uint8",
            "literal": "253",
            "value": "253",
        },
        {
            "name": "JOINT_MODE_IDLE",
            "type": "uint8",
            "native_type": "uint8",
            "literal": "255",
            "value": "255",
        },
    ]
    JOINT_MODE_RESET: _ClassVar = 235
    JOINT_MODE_SHUTTING_DOWN: _ClassVar = 236
    JOINT_MODE_PART_D_CALIBRATION: _ClassVar = 237
    JOINT_MODE_BACKDRIVE: _ClassVar = 238
    JOINT_MODE_POWER_OFF: _ClassVar = 239
    JOINT_MODE_READY_FOR_POWER_OFF: _ClassVar = 240
    JOINT_MODE_NOT_RESPONDING: _ClassVar = 245
    JOINT_MODE_MOTOR_INITIALISATION: _ClassVar = 246
    JOINT_MODE_BOOTING: _ClassVar = 247
    JOINT_MODE_PART_D_CALIBRATION_ERROR: _ClassVar = 248
    JOINT_MODE_BOOTLOADER: _ClassVar = 249
    JOINT_MODE_CALIBRATION: _ClassVar = 250
    JOINT_MODE_VIOLATION: _ClassVar = 251
    JOINT_MODE_FAULT: _ClassVar = 252
    JOINT_MODE_RUNNING: _ClassVar = 253
    JOINT_MODE_IDLE: _ClassVar = 255
    header: _record_Ros2Std_msgsMsgHeader = _field(default_factory=lambda: Ros2Std_msgsMsgHeader())
    joint_modes: _py_list[_py_int] = _field(default_factory=lambda: [0 for _ in range(6)])
    tool_mode: _py_int = 0

    def encode(self):
        writer = _Writer(147)
        _write_Ros2UrinterfacesMsgJointMode(writer, self)
        wire = writer.finish()
        return _wire(wire, 19, 147)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2UrinterfacesMsgJointMode:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 19, 147))
        value = _read_Ros2UrinterfacesMsgJointMode(reader)
        reader.end()
        return value


_record_Ros2UrinterfacesMsgJointMode = Ros2UrinterfacesMsgJointMode


def _write_Ros2UrinterfacesMsgJointMode(writer, value):
    if type(value) is not Ros2UrinterfacesMsgJointMode:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros2Std_msgsMsgHeader(writer, _part0)
    _part1 = value.joint_modes
    if type(_part1) not in (list, tuple):
        raise TypeError("array value required")
    _count1 = len(_part1)
    if _count1 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count1):
        _element = _part1[_index]
        writer.integer(_element, 1, False)
    _part2 = value.tool_mode
    writer.integer(_part2, 1, False)
    if not 19 <= len(writer.data) - _start <= 147:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2UrinterfacesMsgJointMode(reader):
    _start = reader.position
    value = Ros2UrinterfacesMsgJointMode()
    value.header = _read_Ros2Std_msgsMsgHeader(reader)
    value.joint_modes = [reader.integer(1, False) for _ in range(6)]
    value.tool_mode = reader.integer(1, False)
    if not 19 <= reader.position - _start <= 147:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2UrinterfacesMsgJointTemperature:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "urinterfaces/msg/JointTemperature"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_af77f1ec4c6b4d71e6387315d2388e7493c229dbf216848e61d5638cb308d017"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 36
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 164
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 164
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros2Std_msgsMsgHeader = _field(default_factory=lambda: Ros2Std_msgsMsgHeader())
    data: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])

    def encode(self):
        writer = _Writer(164)
        _write_Ros2UrinterfacesMsgJointTemperature(writer, self)
        wire = writer.finish()
        return _wire(wire, 36, 164)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2UrinterfacesMsgJointTemperature:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 36, 164))
        value = _read_Ros2UrinterfacesMsgJointTemperature(reader)
        reader.end()
        return value


_record_Ros2UrinterfacesMsgJointTemperature = Ros2UrinterfacesMsgJointTemperature


def _write_Ros2UrinterfacesMsgJointTemperature(writer, value):
    if type(value) is not Ros2UrinterfacesMsgJointTemperature:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros2Std_msgsMsgHeader(writer, _part0)
    _part1 = value.data
    if type(_part1) not in (list, tuple):
        raise TypeError("array value required")
    _count1 = len(_part1)
    if _count1 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count1):
        _element = _part1[_index]
        writer.f32(_element)
    if not 36 <= len(writer.data) - _start <= 164:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2UrinterfacesMsgJointTemperature(reader):
    _start = reader.position
    value = Ros2UrinterfacesMsgJointTemperature()
    value.header = _read_Ros2Std_msgsMsgHeader(reader)
    value.data = [reader.f32() for _ in range(6)]
    if not 36 <= reader.position - _start <= 164:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2UrinterfacesMsgJointVoltage:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "urinterfaces/msg/JointVoltage"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_9fa2179402b5dc29b898ac1321c1f6f86676300939776a6e32de4529f3776b61"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 60
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 188
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 188
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros2Std_msgsMsgHeader = _field(default_factory=lambda: Ros2Std_msgsMsgHeader())
    data: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])

    def encode(self):
        writer = _Writer(188)
        _write_Ros2UrinterfacesMsgJointVoltage(writer, self)
        wire = writer.finish()
        return _wire(wire, 60, 188)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2UrinterfacesMsgJointVoltage:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 60, 188))
        value = _read_Ros2UrinterfacesMsgJointVoltage(reader)
        reader.end()
        return value


_record_Ros2UrinterfacesMsgJointVoltage = Ros2UrinterfacesMsgJointVoltage


def _write_Ros2UrinterfacesMsgJointVoltage(writer, value):
    if type(value) is not Ros2UrinterfacesMsgJointVoltage:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros2Std_msgsMsgHeader(writer, _part0)
    _part1 = value.data
    if type(_part1) not in (list, tuple):
        raise TypeError("array value required")
    _count1 = len(_part1)
    if _count1 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count1):
        _element = _part1[_index]
        writer.f64(_element)
    if not 60 <= len(writer.data) - _start <= 188:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2UrinterfacesMsgJointVoltage(reader):
    _start = reader.position
    value = Ros2UrinterfacesMsgJointVoltage()
    value.header = _read_Ros2Std_msgsMsgHeader(reader)
    value.data = [reader.f64() for _ in range(6)]
    if not 60 <= reader.position - _start <= 188:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2UrinterfacesMsgJsonStringType:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "urinterfaces/msg/JsonStringType"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_05da0dcf2728cd73f875421c457804a146ceffe76e9d4619be71c2c92efdd728"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1028
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1028
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    json_string: _record_Ros2Std_msgsMsgString = _field(default_factory=lambda: Ros2Std_msgsMsgString())

    def encode(self):
        writer = _Writer(1028)
        _write_Ros2UrinterfacesMsgJsonStringType(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 1028)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2UrinterfacesMsgJsonStringType:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 4, 1028))
        value = _read_Ros2UrinterfacesMsgJsonStringType(reader)
        reader.end()
        return value


_record_Ros2UrinterfacesMsgJsonStringType = Ros2UrinterfacesMsgJsonStringType


def _write_Ros2UrinterfacesMsgJsonStringType(writer, value):
    if type(value) is not Ros2UrinterfacesMsgJsonStringType:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.json_string
    _write_Ros2Std_msgsMsgString(writer, _part0)
    if not 4 <= len(writer.data) - _start <= 1028:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2UrinterfacesMsgJsonStringType(reader):
    _start = reader.position
    value = Ros2UrinterfacesMsgJsonStringType()
    value.json_string = _read_Ros2Std_msgsMsgString(reader)
    if not 4 <= reader.position - _start <= 1028:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2UrinterfacesMsgRuntimeState:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "urinterfaces/msg/RuntimeState"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_711ca0e324cbeb36fcedea4881b8658a4b453402c410c8d3efaa57205aaf74b6"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 13
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 141
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 141
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = [
        {
            "name": "PROGRAM_STATE_UNDEFINED",
            "type": "int8",
            "native_type": "int8",
            "literal": "-1",
            "value": "-1",
        },
        {
            "name": "PROGRAM_STATE_STOPPING",
            "type": "int8",
            "native_type": "int8",
            "literal": "0",
            "value": "0",
        },
        {
            "name": "PROGRAM_STATE_STOPPED",
            "type": "int8",
            "native_type": "int8",
            "literal": "1",
            "value": "1",
        },
        {
            "name": "PROGRAM_STATE_RUNNING",
            "type": "int8",
            "native_type": "int8",
            "literal": "2",
            "value": "2",
        },
        {
            "name": "PROGRAM_STATE_PAUSING",
            "type": "int8",
            "native_type": "int8",
            "literal": "3",
            "value": "3",
        },
        {"name": "PROGRAM_STATE_PAUSED", "type": "int8", "native_type": "int8", "literal": "4", "value": "4"},
        {
            "name": "PROGRAM_STATE_RESUMING",
            "type": "int8",
            "native_type": "int8",
            "literal": "5",
            "value": "5",
        },
        {
            "name": "PROGRAM_STATE_RETRACTING",
            "type": "int8",
            "native_type": "int8",
            "literal": "6",
            "value": "6",
        },
    ]
    PROGRAM_STATE_UNDEFINED: _ClassVar = -1
    PROGRAM_STATE_STOPPING: _ClassVar = 0
    PROGRAM_STATE_STOPPED: _ClassVar = 1
    PROGRAM_STATE_RUNNING: _ClassVar = 2
    PROGRAM_STATE_PAUSING: _ClassVar = 3
    PROGRAM_STATE_PAUSED: _ClassVar = 4
    PROGRAM_STATE_RESUMING: _ClassVar = 5
    PROGRAM_STATE_RETRACTING: _ClassVar = 6
    header: _record_Ros2Std_msgsMsgHeader = _field(default_factory=lambda: Ros2Std_msgsMsgHeader())
    data: _py_int = 0

    def encode(self):
        writer = _Writer(141)
        _write_Ros2UrinterfacesMsgRuntimeState(writer, self)
        wire = writer.finish()
        return _wire(wire, 13, 141)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2UrinterfacesMsgRuntimeState:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 13, 141))
        value = _read_Ros2UrinterfacesMsgRuntimeState(reader)
        reader.end()
        return value


_record_Ros2UrinterfacesMsgRuntimeState = Ros2UrinterfacesMsgRuntimeState


def _write_Ros2UrinterfacesMsgRuntimeState(writer, value):
    if type(value) is not Ros2UrinterfacesMsgRuntimeState:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros2Std_msgsMsgHeader(writer, _part0)
    _part1 = value.data
    writer.integer(_part1, 1, True)
    if not 13 <= len(writer.data) - _start <= 141:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2UrinterfacesMsgRuntimeState(reader):
    _start = reader.position
    value = Ros2UrinterfacesMsgRuntimeState()
    value.header = _read_Ros2Std_msgsMsgHeader(reader)
    value.data = reader.integer(1, True)
    if not 13 <= reader.position - _start <= 141:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2UrinterfacesMsgSafetyStatus:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "urinterfaces/msg/SafetyStatus"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_8f266e1ee8ab2ee9791ff4b52f9dae8ef982844c8d24a0bdfb4bb93cc55b78d4"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 13
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 141
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 141
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
    header: _record_Ros2Std_msgsMsgHeader = _field(default_factory=lambda: Ros2Std_msgsMsgHeader())
    data: _py_int = 0

    def encode(self):
        writer = _Writer(141)
        _write_Ros2UrinterfacesMsgSafetyStatus(writer, self)
        wire = writer.finish()
        return _wire(wire, 13, 141)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2UrinterfacesMsgSafetyStatus:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 13, 141))
        value = _read_Ros2UrinterfacesMsgSafetyStatus(reader)
        reader.end()
        return value


_record_Ros2UrinterfacesMsgSafetyStatus = Ros2UrinterfacesMsgSafetyStatus


def _write_Ros2UrinterfacesMsgSafetyStatus(writer, value):
    if type(value) is not Ros2UrinterfacesMsgSafetyStatus:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros2Std_msgsMsgHeader(writer, _part0)
    _part1 = value.data
    writer.integer(_part1, 1, True)
    if not 13 <= len(writer.data) - _start <= 141:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2UrinterfacesMsgSafetyStatus(reader):
    _start = reader.position
    value = Ros2UrinterfacesMsgSafetyStatus()
    value.header = _read_Ros2Std_msgsMsgHeader(reader)
    value.data = reader.integer(1, True)
    if not 13 <= reader.position - _start <= 141:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2UrinterfacesMsgSharedVariablesEditResponse:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "urinterfaces/msg/SharedVariablesEditResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_870ce8f649642b6edcce8ba5c7cb27818ec138d7afb2cde926638d21ea748212"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 5
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1029
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1029
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False
    result_message: _record_Ros2Std_msgsMsgString = _field(default_factory=lambda: Ros2Std_msgsMsgString())

    def encode(self):
        writer = _Writer(1029)
        _write_Ros2UrinterfacesMsgSharedVariablesEditResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 5, 1029)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2UrinterfacesMsgSharedVariablesEditResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 5, 1029))
        value = _read_Ros2UrinterfacesMsgSharedVariablesEditResponse(reader)
        reader.end()
        return value


_record_Ros2UrinterfacesMsgSharedVariablesEditResponse = Ros2UrinterfacesMsgSharedVariablesEditResponse


def _write_Ros2UrinterfacesMsgSharedVariablesEditResponse(writer, value):
    if type(value) is not Ros2UrinterfacesMsgSharedVariablesEditResponse:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    _part1 = value.result_message
    _write_Ros2Std_msgsMsgString(writer, _part1)
    if not 5 <= len(writer.data) - _start <= 1029:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2UrinterfacesMsgSharedVariablesEditResponse(reader):
    _start = reader.position
    value = Ros2UrinterfacesMsgSharedVariablesEditResponse()
    value.success = _read_bool(reader)
    value.result_message = _read_Ros2Std_msgsMsgString(reader)
    if not 5 <= reader.position - _start <= 1029:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2UrinterfacesMsgSpeedSliderFraction:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "urinterfaces/msg/SpeedSliderFraction"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_55158782c2bc4d4741e8f2850efddf09d27666f9c3aeeded762d8d8e4198fccd"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 20
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 148
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 148
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros2Std_msgsMsgHeader = _field(default_factory=lambda: Ros2Std_msgsMsgHeader())
    data: _py_float = 0.0

    def encode(self):
        writer = _Writer(148)
        _write_Ros2UrinterfacesMsgSpeedSliderFraction(writer, self)
        wire = writer.finish()
        return _wire(wire, 20, 148)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2UrinterfacesMsgSpeedSliderFraction:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 20, 148))
        value = _read_Ros2UrinterfacesMsgSpeedSliderFraction(reader)
        reader.end()
        return value


_record_Ros2UrinterfacesMsgSpeedSliderFraction = Ros2UrinterfacesMsgSpeedSliderFraction


def _write_Ros2UrinterfacesMsgSpeedSliderFraction(writer, value):
    if type(value) is not Ros2UrinterfacesMsgSpeedSliderFraction:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros2Std_msgsMsgHeader(writer, _part0)
    _part1 = value.data
    writer.f64(_part1)
    if not 20 <= len(writer.data) - _start <= 148:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2UrinterfacesMsgSpeedSliderFraction(reader):
    _start = reader.position
    value = Ros2UrinterfacesMsgSpeedSliderFraction()
    value.header = _read_Ros2Std_msgsMsgHeader(reader)
    value.data = reader.f64()
    if not 20 <= reader.position - _start <= 148:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2UrinterfacesMsgTCPState:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "urinterfaces/msg/TCPState"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_49d8f678cc32669dd81528bb4c5d97f28019745159ef5e7267c8a076cd315b92"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 116
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 244
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 244
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros2Std_msgsMsgHeader = _field(default_factory=lambda: Ros2Std_msgsMsgHeader())
    pose: _record_Ros2Geometry_msgsMsgPose = _field(default_factory=lambda: Ros2Geometry_msgsMsgPose())
    speed: _record_Ros2Geometry_msgsMsgTwist = _field(default_factory=lambda: Ros2Geometry_msgsMsgTwist())

    def encode(self):
        writer = _Writer(244)
        _write_Ros2UrinterfacesMsgTCPState(writer, self)
        wire = writer.finish()
        return _wire(wire, 116, 244)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2UrinterfacesMsgTCPState:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 116, 244))
        value = _read_Ros2UrinterfacesMsgTCPState(reader)
        reader.end()
        return value


_record_Ros2UrinterfacesMsgTCPState = Ros2UrinterfacesMsgTCPState


def _write_Ros2UrinterfacesMsgTCPState(writer, value):
    if type(value) is not Ros2UrinterfacesMsgTCPState:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros2Std_msgsMsgHeader(writer, _part0)
    _part1 = value.pose
    _write_Ros2Geometry_msgsMsgPose(writer, _part1)
    _part2 = value.speed
    _write_Ros2Geometry_msgsMsgTwist(writer, _part2)
    if not 116 <= len(writer.data) - _start <= 244:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2UrinterfacesMsgTCPState(reader):
    _start = reader.position
    value = Ros2UrinterfacesMsgTCPState()
    value.header = _read_Ros2Std_msgsMsgHeader(reader)
    value.pose = _read_Ros2Geometry_msgsMsgPose(reader)
    value.speed = _read_Ros2Geometry_msgsMsgTwist(reader)
    if not 116 <= reader.position - _start <= 244:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2UrinterfacesMsgToolOutputMode:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "urinterfaces/msg/ToolOutputMode"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_21df545459050dc86de1fb111c9a4b2c8bb50c3729137b8d5c5134dd33b84660"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 15
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 143
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 143
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = [
        {"name": "TOOL_OUTPUT", "type": "uint8", "native_type": "uint8", "literal": "0", "value": "0"},
        {"name": "TOOL_POWER", "type": "uint8", "native_type": "uint8", "literal": "1", "value": "1"},
        {"name": "TOOL_SAFE", "type": "uint8", "native_type": "uint8", "literal": "2", "value": "2"},
        {
            "name": "OUTPUT_MODE_DISABLED",
            "type": "uint8",
            "native_type": "uint8",
            "literal": "0",
            "value": "0",
        },
        {
            "name": "OUTPUT_MODE_SINKING",
            "type": "uint8",
            "native_type": "uint8",
            "literal": "1",
            "value": "1",
        },
        {
            "name": "OUTPUT_MODE_SOURCING",
            "type": "uint8",
            "native_type": "uint8",
            "literal": "2",
            "value": "2",
        },
        {
            "name": "OUTPUT_MODE_PUSH_PULL",
            "type": "uint8",
            "native_type": "uint8",
            "literal": "3",
            "value": "3",
        },
    ]
    TOOL_OUTPUT: _ClassVar = 0
    TOOL_POWER: _ClassVar = 1
    TOOL_SAFE: _ClassVar = 2
    OUTPUT_MODE_DISABLED: _ClassVar = 0
    OUTPUT_MODE_SINKING: _ClassVar = 1
    OUTPUT_MODE_SOURCING: _ClassVar = 2
    OUTPUT_MODE_PUSH_PULL: _ClassVar = 3
    header: _record_Ros2Std_msgsMsgHeader = _field(default_factory=lambda: Ros2Std_msgsMsgHeader())
    output_mode: _py_int = 0
    output_pin_mode: _py_list[_py_int] = _field(default_factory=lambda: [0 for _ in range(2)])

    def encode(self):
        writer = _Writer(143)
        _write_Ros2UrinterfacesMsgToolOutputMode(writer, self)
        wire = writer.finish()
        return _wire(wire, 15, 143)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2UrinterfacesMsgToolOutputMode:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 15, 143))
        value = _read_Ros2UrinterfacesMsgToolOutputMode(reader)
        reader.end()
        return value


_record_Ros2UrinterfacesMsgToolOutputMode = Ros2UrinterfacesMsgToolOutputMode


def _write_Ros2UrinterfacesMsgToolOutputMode(writer, value):
    if type(value) is not Ros2UrinterfacesMsgToolOutputMode:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros2Std_msgsMsgHeader(writer, _part0)
    _part1 = value.output_mode
    writer.integer(_part1, 1, False)
    _part2 = value.output_pin_mode
    if type(_part2) not in (list, tuple):
        raise TypeError("array value required")
    _count2 = len(_part2)
    if _count2 != 2:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count2):
        _element = _part2[_index]
        writer.integer(_element, 1, False)
    if not 15 <= len(writer.data) - _start <= 143:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2UrinterfacesMsgToolOutputMode(reader):
    _start = reader.position
    value = Ros2UrinterfacesMsgToolOutputMode()
    value.header = _read_Ros2Std_msgsMsgHeader(reader)
    value.output_mode = reader.integer(1, False)
    value.output_pin_mode = [reader.integer(1, False) for _ in range(2)]
    if not 15 <= reader.position - _start <= 143:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2UrinterfacesMsgVariableUpdate:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "urinterfaces/msg/VariableUpdate"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_7028ea5c674be886f4fac1d2ac0452167489f2c23d7ea759cdbec90feccbdb20"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 16
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1168
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1168
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros2Std_msgsMsgHeader = _field(default_factory=lambda: Ros2Std_msgsMsgHeader())
    data: _record_Ros2UrinterfacesMsgJsonStringType = _field(
        default_factory=lambda: Ros2UrinterfacesMsgJsonStringType()
    )

    def encode(self):
        writer = _Writer(1168)
        _write_Ros2UrinterfacesMsgVariableUpdate(writer, self)
        wire = writer.finish()
        return _wire(wire, 16, 1168)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2UrinterfacesMsgVariableUpdate:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 16, 1168))
        value = _read_Ros2UrinterfacesMsgVariableUpdate(reader)
        reader.end()
        return value


_record_Ros2UrinterfacesMsgVariableUpdate = Ros2UrinterfacesMsgVariableUpdate


def _write_Ros2UrinterfacesMsgVariableUpdate(writer, value):
    if type(value) is not Ros2UrinterfacesMsgVariableUpdate:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros2Std_msgsMsgHeader(writer, _part0)
    _part1 = value.data
    _write_Ros2UrinterfacesMsgJsonStringType(writer, _part1)
    if not 16 <= len(writer.data) - _start <= 1168:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2UrinterfacesMsgVariableUpdate(reader):
    _start = reader.position
    value = Ros2UrinterfacesMsgVariableUpdate()
    value.header = _read_Ros2Std_msgsMsgHeader(reader)
    value.data = _read_Ros2UrinterfacesMsgJsonStringType(reader)
    if not 16 <= reader.position - _start <= 1168:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2UrinterfacesMsgVoltageCurrentStamped:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "urinterfaces/msg/VoltageCurrentStamped"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_bcc3f6871a7bf0ff691d0c9c1b6596a633597de795b486c2b82ac922ede76805"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 28
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 156
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 156
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros2Std_msgsMsgHeader = _field(default_factory=lambda: Ros2Std_msgsMsgHeader())
    voltage: _py_float = 0.0
    current: _py_float = 0.0

    def encode(self):
        writer = _Writer(156)
        _write_Ros2UrinterfacesMsgVoltageCurrentStamped(writer, self)
        wire = writer.finish()
        return _wire(wire, 28, 156)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2UrinterfacesMsgVoltageCurrentStamped:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 28, 156))
        value = _read_Ros2UrinterfacesMsgVoltageCurrentStamped(reader)
        reader.end()
        return value


_record_Ros2UrinterfacesMsgVoltageCurrentStamped = Ros2UrinterfacesMsgVoltageCurrentStamped


def _write_Ros2UrinterfacesMsgVoltageCurrentStamped(writer, value):
    if type(value) is not Ros2UrinterfacesMsgVoltageCurrentStamped:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros2Std_msgsMsgHeader(writer, _part0)
    _part1 = value.voltage
    writer.f64(_part1)
    _part2 = value.current
    writer.f64(_part2)
    if not 28 <= len(writer.data) - _start <= 156:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2UrinterfacesMsgVoltageCurrentStamped(reader):
    _start = reader.position
    value = Ros2UrinterfacesMsgVoltageCurrentStamped()
    value.header = _read_Ros2Std_msgsMsgHeader(reader)
    value.voltage = reader.f64()
    value.current = reader.f64()
    if not 28 <= reader.position - _start <= 156:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2UrinterfacesMsgWorldModelNames:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "urinterfaces/msg/WorldModelNames"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_499f722fc97565bd0124888d7c20f4e9f8947893c49b1608dcf201fe3538d7a9"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 16
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 16592
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 16592
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros2Std_msgsMsgHeader = _field(default_factory=lambda: Ros2Std_msgsMsgHeader())
    data: _py_list[_record_Ros2Std_msgsMsgString] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(16592)
        _write_Ros2UrinterfacesMsgWorldModelNames(writer, self)
        wire = writer.finish()
        return _wire(wire, 16, 16592)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2UrinterfacesMsgWorldModelNames:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 16, 16592))
        value = _read_Ros2UrinterfacesMsgWorldModelNames(reader)
        reader.end()
        return value


_record_Ros2UrinterfacesMsgWorldModelNames = Ros2UrinterfacesMsgWorldModelNames


def _write_Ros2UrinterfacesMsgWorldModelNames(writer, value):
    if type(value) is not Ros2UrinterfacesMsgWorldModelNames:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros2Std_msgsMsgHeader(writer, _part0)
    _part1 = value.data
    if type(_part1) not in (list, tuple):
        raise TypeError("array value required")
    _count1 = len(_part1)
    if _count1 > 16:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        _write_Ros2Std_msgsMsgString(writer, _element)
    if not 16 <= len(writer.data) - _start <= 16592:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2UrinterfacesMsgWorldModelNames(reader):
    _start = reader.position
    value = Ros2UrinterfacesMsgWorldModelNames()
    value.header = _read_Ros2Std_msgsMsgHeader(reader)
    value.data = [_read_Ros2Std_msgsMsgString(reader) for _ in range(_read_count(reader, 16, 4))]
    if not 16 <= reader.position - _start <= 16592:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2UrinterfacesSrvSetAnalogOutput_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "urinterfaces/srv/SetAnalogOutput_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_8be07a94dd334a03871180a9c73bab11377664e60500ac68d312398d51acd32d"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 100
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 100
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    data: _py_list[_record_Ros2UrinterfacesMsgAnalog] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(100)
        _write_Ros2UrinterfacesSrvSetAnalogOutput_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 100)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2UrinterfacesSrvSetAnalogOutput_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 4, 100))
        value = _read_Ros2UrinterfacesSrvSetAnalogOutput_Request(reader)
        reader.end()
        return value


_record_Ros2UrinterfacesSrvSetAnalogOutput_Request = Ros2UrinterfacesSrvSetAnalogOutput_Request


def _write_Ros2UrinterfacesSrvSetAnalogOutput_Request(writer, value):
    if type(value) is not Ros2UrinterfacesSrvSetAnalogOutput_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.data
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 > 16:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count0, 4)
    for _index in range(_count0):
        _element = _part0[_index]
        _write_Ros2UrinterfacesMsgAnalog(writer, _element)
    if not 4 <= len(writer.data) - _start <= 100:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2UrinterfacesSrvSetAnalogOutput_Request(reader):
    _start = reader.position
    value = Ros2UrinterfacesSrvSetAnalogOutput_Request()
    value.data = [_read_Ros2UrinterfacesMsgAnalog(reader) for _ in range(_read_count(reader, 16, 6))]
    if not 4 <= reader.position - _start <= 100:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2UrinterfacesSrvSetAnalogOutput_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "urinterfaces/srv/SetAnalogOutput_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_14016138286129e4f155ac2f82f5573e8a4af7d7c5ede55ce57f3ad76cb82e4e"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2UrinterfacesSrvSetAnalogOutput_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2UrinterfacesSrvSetAnalogOutput_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2UrinterfacesSrvSetAnalogOutput_Response(reader)
        reader.end()
        return value


_record_Ros2UrinterfacesSrvSetAnalogOutput_Response = Ros2UrinterfacesSrvSetAnalogOutput_Response


def _write_Ros2UrinterfacesSrvSetAnalogOutput_Response(writer, value):
    if type(value) is not Ros2UrinterfacesSrvSetAnalogOutput_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2UrinterfacesSrvSetAnalogOutput_Response(reader):
    _start = reader.position
    value = Ros2UrinterfacesSrvSetAnalogOutput_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2UrinterfacesSrvSetDigitalOutput_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "urinterfaces/srv/SetDigitalOutput_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_ec6c587810af7f3d04b10058e69c8095775e8b6feede5fc0f60ca1dfda0b5e47"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 36
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 36
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    data: _py_list[_record_Ros2UrinterfacesMsgDigital] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(36)
        _write_Ros2UrinterfacesSrvSetDigitalOutput_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 36)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2UrinterfacesSrvSetDigitalOutput_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 4, 36))
        value = _read_Ros2UrinterfacesSrvSetDigitalOutput_Request(reader)
        reader.end()
        return value


_record_Ros2UrinterfacesSrvSetDigitalOutput_Request = Ros2UrinterfacesSrvSetDigitalOutput_Request


def _write_Ros2UrinterfacesSrvSetDigitalOutput_Request(writer, value):
    if type(value) is not Ros2UrinterfacesSrvSetDigitalOutput_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.data
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 > 16:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count0, 4)
    for _index in range(_count0):
        _element = _part0[_index]
        _write_Ros2UrinterfacesMsgDigital(writer, _element)
    if not 4 <= len(writer.data) - _start <= 36:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2UrinterfacesSrvSetDigitalOutput_Request(reader):
    _start = reader.position
    value = Ros2UrinterfacesSrvSetDigitalOutput_Request()
    value.data = [_read_Ros2UrinterfacesMsgDigital(reader) for _ in range(_read_count(reader, 16, 2))]
    if not 4 <= reader.position - _start <= 36:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2UrinterfacesSrvSetDigitalOutput_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "urinterfaces/srv/SetDigitalOutput_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_0c5f0b8a7f1d14c6223838c3a28cb2236848b81ecfda29d2b704557579e9162d"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2UrinterfacesSrvSetDigitalOutput_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2UrinterfacesSrvSetDigitalOutput_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2UrinterfacesSrvSetDigitalOutput_Response(reader)
        reader.end()
        return value


_record_Ros2UrinterfacesSrvSetDigitalOutput_Response = Ros2UrinterfacesSrvSetDigitalOutput_Response


def _write_Ros2UrinterfacesSrvSetDigitalOutput_Response(writer, value):
    if type(value) is not Ros2UrinterfacesSrvSetDigitalOutput_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2UrinterfacesSrvSetDigitalOutput_Response(reader):
    _start = reader.position
    value = Ros2UrinterfacesSrvSetDigitalOutput_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2UrinterfacesSrvSetSpeedFraction_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "urinterfaces/srv/SetSpeedFraction_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_21fca7e952e32f24c905094c09776968c8cd80b7712a03de7c2a693ea79a7d63"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 4
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 4
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    value: _py_float = 0.0

    def encode(self):
        writer = _Writer(4)
        _write_Ros2UrinterfacesSrvSetSpeedFraction_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 4)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2UrinterfacesSrvSetSpeedFraction_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 4, 4))
        value = _read_Ros2UrinterfacesSrvSetSpeedFraction_Request(reader)
        reader.end()
        return value


_record_Ros2UrinterfacesSrvSetSpeedFraction_Request = Ros2UrinterfacesSrvSetSpeedFraction_Request


def _write_Ros2UrinterfacesSrvSetSpeedFraction_Request(writer, value):
    if type(value) is not Ros2UrinterfacesSrvSetSpeedFraction_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.value
    writer.f32(_part0)
    if not 4 <= len(writer.data) - _start <= 4:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2UrinterfacesSrvSetSpeedFraction_Request(reader):
    _start = reader.position
    value = Ros2UrinterfacesSrvSetSpeedFraction_Request()
    value.value = reader.f32()
    if not 4 <= reader.position - _start <= 4:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2UrinterfacesSrvSetSpeedFraction_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "urinterfaces/srv/SetSpeedFraction_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_386b067db70c17a88297d005650f6a05c0fb72eb5ee142a25c3e51c70b80c6e6"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2UrinterfacesSrvSetSpeedFraction_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2UrinterfacesSrvSetSpeedFraction_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2UrinterfacesSrvSetSpeedFraction_Response(reader)
        reader.end()
        return value


_record_Ros2UrinterfacesSrvSetSpeedFraction_Response = Ros2UrinterfacesSrvSetSpeedFraction_Response


def _write_Ros2UrinterfacesSrvSetSpeedFraction_Response(writer, value):
    if type(value) is not Ros2UrinterfacesSrvSetSpeedFraction_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2UrinterfacesSrvSetSpeedFraction_Response(reader):
    _start = reader.position
    value = Ros2UrinterfacesSrvSetSpeedFraction_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2UrinterfacesSrvSharedVariablesEditor_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "urinterfaces/srv/SharedVariablesEditor_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_c32d00237370b2eeb596c76bd9cda1ccfcab7618c71dec77d273f712462f5fa3"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1028
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1028
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    request: _record_Ros2UrinterfacesMsgJsonStringType = _field(
        default_factory=lambda: Ros2UrinterfacesMsgJsonStringType()
    )

    def encode(self):
        writer = _Writer(1028)
        _write_Ros2UrinterfacesSrvSharedVariablesEditor_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 1028)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2UrinterfacesSrvSharedVariablesEditor_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 4, 1028))
        value = _read_Ros2UrinterfacesSrvSharedVariablesEditor_Request(reader)
        reader.end()
        return value


_record_Ros2UrinterfacesSrvSharedVariablesEditor_Request = Ros2UrinterfacesSrvSharedVariablesEditor_Request


def _write_Ros2UrinterfacesSrvSharedVariablesEditor_Request(writer, value):
    if type(value) is not Ros2UrinterfacesSrvSharedVariablesEditor_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.request
    _write_Ros2UrinterfacesMsgJsonStringType(writer, _part0)
    if not 4 <= len(writer.data) - _start <= 1028:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2UrinterfacesSrvSharedVariablesEditor_Request(reader):
    _start = reader.position
    value = Ros2UrinterfacesSrvSharedVariablesEditor_Request()
    value.request = _read_Ros2UrinterfacesMsgJsonStringType(reader)
    if not 4 <= reader.position - _start <= 1028:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2UrinterfacesSrvSharedVariablesEditor_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "urinterfaces/srv/SharedVariablesEditor_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_4134f7ed9715b3f6e3fd7ecca44fcae67cdd5dc2fa432b07ab75485901d1d5ea"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 5
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1029
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1029
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    response: _record_Ros2UrinterfacesMsgSharedVariablesEditResponse = _field(
        default_factory=lambda: Ros2UrinterfacesMsgSharedVariablesEditResponse()
    )

    def encode(self):
        writer = _Writer(1029)
        _write_Ros2UrinterfacesSrvSharedVariablesEditor_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 5, 1029)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2UrinterfacesSrvSharedVariablesEditor_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 5, 1029))
        value = _read_Ros2UrinterfacesSrvSharedVariablesEditor_Response(reader)
        reader.end()
        return value


_record_Ros2UrinterfacesSrvSharedVariablesEditor_Response = Ros2UrinterfacesSrvSharedVariablesEditor_Response


def _write_Ros2UrinterfacesSrvSharedVariablesEditor_Response(writer, value):
    if type(value) is not Ros2UrinterfacesSrvSharedVariablesEditor_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.response
    _write_Ros2UrinterfacesMsgSharedVariablesEditResponse(writer, _part0)
    if not 5 <= len(writer.data) - _start <= 1029:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2UrinterfacesSrvSharedVariablesEditor_Response(reader):
    _start = reader.position
    value = Ros2UrinterfacesSrvSharedVariablesEditor_Response()
    value.response = _read_Ros2UrinterfacesMsgSharedVariablesEditResponse(reader)
    if not 5 <= reader.position - _start <= 1029:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2UrinterfacesSrvVariablesViewer_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "urinterfaces/srv/VariablesViewer_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_6ecb0db6328d813bfb987ae987d3b7f2c6913dba2cf2a62f644a8eb2f760152a"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros2UrinterfacesSrvVariablesViewer_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2UrinterfacesSrvVariablesViewer_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros2UrinterfacesSrvVariablesViewer_Request(reader)
        reader.end()
        return value


_record_Ros2UrinterfacesSrvVariablesViewer_Request = Ros2UrinterfacesSrvVariablesViewer_Request


def _write_Ros2UrinterfacesSrvVariablesViewer_Request(writer, value):
    if type(value) is not Ros2UrinterfacesSrvVariablesViewer_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros2UrinterfacesSrvVariablesViewer_Request(reader):
    _start = reader.position
    value = Ros2UrinterfacesSrvVariablesViewer_Request()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2UrinterfacesSrvVariablesViewer_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "urinterfaces/srv/VariablesViewer_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_e8cb16ca847189ac38c0d972afbdd2208d8641c29a0ee0cce8284e9e0dd249a2"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 16
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1168
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1168
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    response: _record_Ros2UrinterfacesMsgVariableUpdate = _field(
        default_factory=lambda: Ros2UrinterfacesMsgVariableUpdate()
    )

    def encode(self):
        writer = _Writer(1168)
        _write_Ros2UrinterfacesSrvVariablesViewer_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 16, 1168)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2UrinterfacesSrvVariablesViewer_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 16, 1168))
        value = _read_Ros2UrinterfacesSrvVariablesViewer_Response(reader)
        reader.end()
        return value


_record_Ros2UrinterfacesSrvVariablesViewer_Response = Ros2UrinterfacesSrvVariablesViewer_Response


def _write_Ros2UrinterfacesSrvVariablesViewer_Response(writer, value):
    if type(value) is not Ros2UrinterfacesSrvVariablesViewer_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.response
    _write_Ros2UrinterfacesMsgVariableUpdate(writer, _part0)
    if not 16 <= len(writer.data) - _start <= 1168:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2UrinterfacesSrvVariablesViewer_Response(reader):
    _start = reader.position
    value = Ros2UrinterfacesSrvVariablesViewer_Response()
    value.response = _read_Ros2UrinterfacesMsgVariableUpdate(reader)
    if not 16 <= reader.position - _start <= 1168:
        raise ValueError("nested complete record aggregate extent")
    return value
