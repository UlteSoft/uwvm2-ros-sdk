# @file bounded_records.py
# @brief Complete universal_robots values and adapters for the selected original interface catalog.
# @details Retain original field order, scalar widths, array capacities, string bounds, constants and declared
# defaults. Pure value access and canonical codecs create no native ROS allocation or resource grant. Transport
# roles require the separately admitted SDK owner.
# @see share/platform/universal_robots/domains/universal-robots-ros1-trajectory-complete.ir.json
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
class Ros1Time:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "time"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0"
    )
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
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 8, 8))
        value = _read_Ros1Time(reader)
        reader.end()
        return value


_record_Ros1Time = Ros1Time


def _write_Ros1Time(writer, value):
    if type(value) is not Ros1Time:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.sec
    writer.integer(_part0, 4, False)
    _part1 = value.nsec
    writer.integer(_part1, 4, False)
    if not 0 <= _part1 < 1000000000:
        raise ValueError("normalized subsecond field required")
    if not 8 <= len(writer.data) - _start <= 8:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Time(reader):
    _start = reader.position
    value = Ros1Time()
    value.sec = reader.integer(4, False)
    value.nsec = reader.integer(4, False)
    if not 0 <= value.nsec < 1000000000:
        raise ValueError("normalized subsecond field required")
    if not 8 <= reader.position - _start <= 8:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Std_msgsHeader:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "std_msgs/Header"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 16
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 144
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 144
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    seq: _py_int = 0
    stamp: _record_Ros1Time = _field(default_factory=lambda: Ros1Time())
    frame_id: _py_str = ""

    def encode(self):
        writer = _Writer(144)
        _write_Ros1Std_msgsHeader(writer, self)
        wire = writer.finish()
        return _wire(wire, 16, 144)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Std_msgsHeader:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 16, 144))
        value = _read_Ros1Std_msgsHeader(reader)
        reader.end()
        return value


_record_Ros1Std_msgsHeader = Ros1Std_msgsHeader


def _write_Ros1Std_msgsHeader(writer, value):
    if type(value) is not Ros1Std_msgsHeader:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.seq
    writer.integer(_part0, 4, False)
    _part1 = value.stamp
    _write_Ros1Time(writer, _part1)
    _part2 = value.frame_id
    _write_text(writer, _part2, 128)
    if not 16 <= len(writer.data) - _start <= 144:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Std_msgsHeader(reader):
    _start = reader.position
    value = Ros1Std_msgsHeader()
    value.seq = reader.integer(4, False)
    value.stamp = _read_Ros1Time(reader)
    value.frame_id = _read_text(reader, 128)
    if not 16 <= reader.position - _start <= 144:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Duration:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "duration"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_8dbec6cdfef79495208abb358c5e8283ec8d9d471f984424afcda997d142cca8"
    )
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
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 8, 8))
        value = _read_Ros1Duration(reader)
        reader.end()
        return value


_record_Ros1Duration = Ros1Duration


def _write_Ros1Duration(writer, value):
    if type(value) is not Ros1Duration:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.sec
    writer.integer(_part0, 4, True)
    _part1 = value.nsec
    writer.integer(_part1, 4, True)
    if not 0 <= _part1 < 1000000000:
        raise ValueError("normalized subsecond field required")
    if not 8 <= len(writer.data) - _start <= 8:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Duration(reader):
    _start = reader.position
    value = Ros1Duration()
    value.sec = reader.integer(4, True)
    value.nsec = reader.integer(4, True)
    if not 0 <= value.nsec < 1000000000:
        raise ValueError("normalized subsecond field required")
    if not 8 <= reader.position - _start <= 8:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Trajectory_msgsJointTrajectoryPoint:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "trajectory_msgs/JointTrajectoryPoint"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_5fbdf1845c522d88461d06d5dfae1f35cef5d7f00a87e405c0d458c8e1a9e64d"
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
    time_from_start: _record_Ros1Duration = _field(default_factory=lambda: Ros1Duration())

    def encode(self):
        writer = _Writer(216)
        _write_Ros1Trajectory_msgsJointTrajectoryPoint(writer, self)
        wire = writer.finish()
        return _wire(wire, 24, 216)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Trajectory_msgsJointTrajectoryPoint:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 24, 216))
        value = _read_Ros1Trajectory_msgsJointTrajectoryPoint(reader)
        reader.end()
        return value


_record_Ros1Trajectory_msgsJointTrajectoryPoint = Ros1Trajectory_msgsJointTrajectoryPoint


def _write_Ros1Trajectory_msgsJointTrajectoryPoint(writer, value):
    if type(value) is not Ros1Trajectory_msgsJointTrajectoryPoint:
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
    _write_Ros1Duration(writer, _part4)
    if not 24 <= len(writer.data) - _start <= 216:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Trajectory_msgsJointTrajectoryPoint(reader):
    _start = reader.position
    value = Ros1Trajectory_msgsJointTrajectoryPoint()
    value.positions = [reader.f64() for _ in range(_read_count(reader, 6, 8))]
    value.velocities = [reader.f64() for _ in range(_read_count(reader, 6, 8))]
    value.accelerations = [reader.f64() for _ in range(_read_count(reader, 6, 8))]
    value.effort = [reader.f64() for _ in range(_read_count(reader, 6, 8))]
    value.time_from_start = _read_Ros1Duration(reader)
    if not 24 <= reader.position - _start <= 216:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Trajectory_msgsJointTrajectory:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "trajectory_msgs/JointTrajectory"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_522dc1a8799adc4be16ce5a35a19a217de1095f018af0a7eb57eb6114c69adda"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 24
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 5168
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 5168
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros1Std_msgsHeader = _field(default_factory=lambda: Ros1Std_msgsHeader())
    joint_names: _py_list[_py_str] = _field(default_factory=lambda: [])
    points: _py_list[_record_Ros1Trajectory_msgsJointTrajectoryPoint] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(5168)
        _write_Ros1Trajectory_msgsJointTrajectory(writer, self)
        wire = writer.finish()
        return _wire(wire, 24, 5168)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Trajectory_msgsJointTrajectory:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 24, 5168))
        value = _read_Ros1Trajectory_msgsJointTrajectory(reader)
        reader.end()
        return value


_record_Ros1Trajectory_msgsJointTrajectory = Ros1Trajectory_msgsJointTrajectory


def _write_Ros1Trajectory_msgsJointTrajectory(writer, value):
    if type(value) is not Ros1Trajectory_msgsJointTrajectory:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros1Std_msgsHeader(writer, _part0)
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
        _write_Ros1Trajectory_msgsJointTrajectoryPoint(writer, _element)
    if not 24 <= len(writer.data) - _start <= 5168:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Trajectory_msgsJointTrajectory(reader):
    _start = reader.position
    value = Ros1Trajectory_msgsJointTrajectory()
    value.header = _read_Ros1Std_msgsHeader(reader)
    value.joint_names = [_read_text(reader, 256) for _ in range(_read_count(reader, 6, 4))]
    value.points = [
        _read_Ros1Trajectory_msgsJointTrajectoryPoint(reader) for _ in range(_read_count(reader, 16, 24))
    ]
    if not 24 <= reader.position - _start <= 5168:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Control_msgsJointTolerance:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "control_msgs/JointTolerance"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_dfb80a25d10bc883359720da419af0baa78217e72619922a762a5a96a06d0738"
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
        _write_Ros1Control_msgsJointTolerance(writer, self)
        wire = writer.finish()
        return _wire(wire, 28, 156)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Control_msgsJointTolerance:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 28, 156))
        value = _read_Ros1Control_msgsJointTolerance(reader)
        reader.end()
        return value


_record_Ros1Control_msgsJointTolerance = Ros1Control_msgsJointTolerance


def _write_Ros1Control_msgsJointTolerance(writer, value):
    if type(value) is not Ros1Control_msgsJointTolerance:
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


def _read_Ros1Control_msgsJointTolerance(reader):
    _start = reader.position
    value = Ros1Control_msgsJointTolerance()
    value.name = _read_text(reader, 128)
    value.position = reader.f64()
    value.velocity = reader.f64()
    value.acceleration = reader.f64()
    if not 28 <= reader.position - _start <= 156:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Control_msgsFollowJointTrajectoryGoal:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "control_msgs/FollowJointTrajectoryGoal"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_bcbae7a4976e04bd115e5916808d63bd18da9eade34d35aab26439c1971b6c78"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 40
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 7056
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 7056
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    trajectory: _record_Ros1Trajectory_msgsJointTrajectory = _field(
        default_factory=lambda: Ros1Trajectory_msgsJointTrajectory()
    )
    path_tolerance: _py_list[_record_Ros1Control_msgsJointTolerance] = _field(default_factory=lambda: [])
    goal_tolerance: _py_list[_record_Ros1Control_msgsJointTolerance] = _field(default_factory=lambda: [])
    goal_time_tolerance: _record_Ros1Duration = _field(default_factory=lambda: Ros1Duration())

    def encode(self):
        writer = _Writer(7056)
        _write_Ros1Control_msgsFollowJointTrajectoryGoal(writer, self)
        wire = writer.finish()
        return _wire(wire, 40, 7056)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Control_msgsFollowJointTrajectoryGoal:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 40, 7056))
        value = _read_Ros1Control_msgsFollowJointTrajectoryGoal(reader)
        reader.end()
        return value


_record_Ros1Control_msgsFollowJointTrajectoryGoal = Ros1Control_msgsFollowJointTrajectoryGoal


def _write_Ros1Control_msgsFollowJointTrajectoryGoal(writer, value):
    if type(value) is not Ros1Control_msgsFollowJointTrajectoryGoal:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.trajectory
    _write_Ros1Trajectory_msgsJointTrajectory(writer, _part0)
    _part1 = value.path_tolerance
    if type(_part1) not in (list, tuple):
        raise TypeError("array value required")
    _count1 = len(_part1)
    if _count1 > 6:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        _write_Ros1Control_msgsJointTolerance(writer, _element)
    _part2 = value.goal_tolerance
    if type(_part2) not in (list, tuple):
        raise TypeError("array value required")
    _count2 = len(_part2)
    if _count2 > 6:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        _write_Ros1Control_msgsJointTolerance(writer, _element)
    _part3 = value.goal_time_tolerance
    _write_Ros1Duration(writer, _part3)
    if not 40 <= len(writer.data) - _start <= 7056:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Control_msgsFollowJointTrajectoryGoal(reader):
    _start = reader.position
    value = Ros1Control_msgsFollowJointTrajectoryGoal()
    value.trajectory = _read_Ros1Trajectory_msgsJointTrajectory(reader)
    value.path_tolerance = [
        _read_Ros1Control_msgsJointTolerance(reader) for _ in range(_read_count(reader, 6, 28))
    ]
    value.goal_tolerance = [
        _read_Ros1Control_msgsJointTolerance(reader) for _ in range(_read_count(reader, 6, 28))
    ]
    value.goal_time_tolerance = _read_Ros1Duration(reader)
    if not 40 <= reader.position - _start <= 7056:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Control_msgsFollowJointTrajectoryResult:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "control_msgs/FollowJointTrajectoryResult"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_71da832be83c08804668aa63576768bbe831f21f5f270cdc8d851b30d2fc4281"
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
        _write_Ros1Control_msgsFollowJointTrajectoryResult(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 4104)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Control_msgsFollowJointTrajectoryResult:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 8, 4104))
        value = _read_Ros1Control_msgsFollowJointTrajectoryResult(reader)
        reader.end()
        return value


_record_Ros1Control_msgsFollowJointTrajectoryResult = Ros1Control_msgsFollowJointTrajectoryResult


def _write_Ros1Control_msgsFollowJointTrajectoryResult(writer, value):
    if type(value) is not Ros1Control_msgsFollowJointTrajectoryResult:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.error_code
    writer.integer(_part0, 4, True)
    _part1 = value.error_string
    _write_text(writer, _part1, 4096)
    if not 8 <= len(writer.data) - _start <= 4104:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Control_msgsFollowJointTrajectoryResult(reader):
    _start = reader.position
    value = Ros1Control_msgsFollowJointTrajectoryResult()
    value.error_code = reader.integer(4, True)
    value.error_string = _read_text(reader, 4096)
    if not 8 <= reader.position - _start <= 4104:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Control_msgsFollowJointTrajectoryFeedback:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "control_msgs/FollowJointTrajectoryFeedback"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_fbb2813fa8fe3e2b4a0c7e968fb5ef037df0af707b9439e8615bc3d447db6913"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 92
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 2356
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 2356
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros1Std_msgsHeader = _field(default_factory=lambda: Ros1Std_msgsHeader())
    joint_names: _py_list[_py_str] = _field(default_factory=lambda: [])
    desired: _record_Ros1Trajectory_msgsJointTrajectoryPoint = _field(
        default_factory=lambda: Ros1Trajectory_msgsJointTrajectoryPoint()
    )
    actual: _record_Ros1Trajectory_msgsJointTrajectoryPoint = _field(
        default_factory=lambda: Ros1Trajectory_msgsJointTrajectoryPoint()
    )
    error: _record_Ros1Trajectory_msgsJointTrajectoryPoint = _field(
        default_factory=lambda: Ros1Trajectory_msgsJointTrajectoryPoint()
    )

    def encode(self):
        writer = _Writer(2356)
        _write_Ros1Control_msgsFollowJointTrajectoryFeedback(writer, self)
        wire = writer.finish()
        return _wire(wire, 92, 2356)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Control_msgsFollowJointTrajectoryFeedback:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 92, 2356))
        value = _read_Ros1Control_msgsFollowJointTrajectoryFeedback(reader)
        reader.end()
        return value


_record_Ros1Control_msgsFollowJointTrajectoryFeedback = Ros1Control_msgsFollowJointTrajectoryFeedback


def _write_Ros1Control_msgsFollowJointTrajectoryFeedback(writer, value):
    if type(value) is not Ros1Control_msgsFollowJointTrajectoryFeedback:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros1Std_msgsHeader(writer, _part0)
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
    _write_Ros1Trajectory_msgsJointTrajectoryPoint(writer, _part2)
    _part3 = value.actual
    _write_Ros1Trajectory_msgsJointTrajectoryPoint(writer, _part3)
    _part4 = value.error
    _write_Ros1Trajectory_msgsJointTrajectoryPoint(writer, _part4)
    if not 92 <= len(writer.data) - _start <= 2356:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Control_msgsFollowJointTrajectoryFeedback(reader):
    _start = reader.position
    value = Ros1Control_msgsFollowJointTrajectoryFeedback()
    value.header = _read_Ros1Std_msgsHeader(reader)
    value.joint_names = [_read_text(reader, 256) for _ in range(_read_count(reader, 6, 4))]
    value.desired = _read_Ros1Trajectory_msgsJointTrajectoryPoint(reader)
    value.actual = _read_Ros1Trajectory_msgsJointTrajectoryPoint(reader)
    value.error = _read_Ros1Trajectory_msgsJointTrajectoryPoint(reader)
    if not 92 <= reader.position - _start <= 2356:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Geometry_msgsPoint:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "geometry_msgs/Point"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b"
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
        _write_Ros1Geometry_msgsPoint(writer, self)
        wire = writer.finish()
        return _wire(wire, 24, 24)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Geometry_msgsPoint:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 24, 24))
        value = _read_Ros1Geometry_msgsPoint(reader)
        reader.end()
        return value


_record_Ros1Geometry_msgsPoint = Ros1Geometry_msgsPoint


def _write_Ros1Geometry_msgsPoint(writer, value):
    if type(value) is not Ros1Geometry_msgsPoint:
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


def _read_Ros1Geometry_msgsPoint(reader):
    _start = reader.position
    value = Ros1Geometry_msgsPoint()
    value.x = reader.f64()
    value.y = reader.f64()
    value.z = reader.f64()
    if not 24 <= reader.position - _start <= 24:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Geometry_msgsQuaternion:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "geometry_msgs/Quaternion"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934"
    )
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
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 32, 32))
        value = _read_Ros1Geometry_msgsQuaternion(reader)
        reader.end()
        return value


_record_Ros1Geometry_msgsQuaternion = Ros1Geometry_msgsQuaternion


def _write_Ros1Geometry_msgsQuaternion(writer, value):
    if type(value) is not Ros1Geometry_msgsQuaternion:
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


def _read_Ros1Geometry_msgsQuaternion(reader):
    _start = reader.position
    value = Ros1Geometry_msgsQuaternion()
    value.x = reader.f64()
    value.y = reader.f64()
    value.z = reader.f64()
    value.w = reader.f64()
    if not 32 <= reader.position - _start <= 32:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Geometry_msgsPose:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "geometry_msgs/Pose"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 56
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 56
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 56
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    position: _record_Ros1Geometry_msgsPoint = _field(default_factory=lambda: Ros1Geometry_msgsPoint())
    orientation: _record_Ros1Geometry_msgsQuaternion = _field(
        default_factory=lambda: Ros1Geometry_msgsQuaternion()
    )

    def encode(self):
        writer = _Writer(56)
        _write_Ros1Geometry_msgsPose(writer, self)
        wire = writer.finish()
        return _wire(wire, 56, 56)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Geometry_msgsPose:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 56, 56))
        value = _read_Ros1Geometry_msgsPose(reader)
        reader.end()
        return value


_record_Ros1Geometry_msgsPose = Ros1Geometry_msgsPose


def _write_Ros1Geometry_msgsPose(writer, value):
    if type(value) is not Ros1Geometry_msgsPose:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.position
    _write_Ros1Geometry_msgsPoint(writer, _part0)
    _part1 = value.orientation
    _write_Ros1Geometry_msgsQuaternion(writer, _part1)
    if not 56 <= len(writer.data) - _start <= 56:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Geometry_msgsPose(reader):
    _start = reader.position
    value = Ros1Geometry_msgsPose()
    value.position = _read_Ros1Geometry_msgsPoint(reader)
    value.orientation = _read_Ros1Geometry_msgsQuaternion(reader)
    if not 56 <= reader.position - _start <= 56:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Geometry_msgsPoseStamped:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "geometry_msgs/PoseStamped"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_bb59c4e82f561266c0f10500bfbbd1a809e9c1122ecbf559a812326af3eb2e95"
    )
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
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 72, 200))
        value = _read_Ros1Geometry_msgsPoseStamped(reader)
        reader.end()
        return value


_record_Ros1Geometry_msgsPoseStamped = Ros1Geometry_msgsPoseStamped


def _write_Ros1Geometry_msgsPoseStamped(writer, value):
    if type(value) is not Ros1Geometry_msgsPoseStamped:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros1Std_msgsHeader(writer, _part0)
    _part1 = value.pose
    _write_Ros1Geometry_msgsPose(writer, _part1)
    if not 72 <= len(writer.data) - _start <= 200:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Geometry_msgsPoseStamped(reader):
    _start = reader.position
    value = Ros1Geometry_msgsPoseStamped()
    value.header = _read_Ros1Std_msgsHeader(reader)
    value.pose = _read_Ros1Geometry_msgsPose(reader)
    if not 72 <= reader.position - _start <= 200:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Geometry_msgsVector3:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "geometry_msgs/Vector3"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_e90efcf4803d82763e0b83f8ef5502b5d042158873fcc91be32543d25d7632bc"
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
        _write_Ros1Geometry_msgsVector3(writer, self)
        wire = writer.finish()
        return _wire(wire, 24, 24)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Geometry_msgsVector3:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 24, 24))
        value = _read_Ros1Geometry_msgsVector3(reader)
        reader.end()
        return value


_record_Ros1Geometry_msgsVector3 = Ros1Geometry_msgsVector3


def _write_Ros1Geometry_msgsVector3(writer, value):
    if type(value) is not Ros1Geometry_msgsVector3:
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


def _read_Ros1Geometry_msgsVector3(reader):
    _start = reader.position
    value = Ros1Geometry_msgsVector3()
    value.x = reader.f64()
    value.y = reader.f64()
    value.z = reader.f64()
    if not 24 <= reader.position - _start <= 24:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Geometry_msgsTwist:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "geometry_msgs/Twist"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_d5a69cfff4380fcf3e9c131ddb3dfb6def041cd7308a7ebdbc150b6483dfd921"
    )
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
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 48, 48))
        value = _read_Ros1Geometry_msgsTwist(reader)
        reader.end()
        return value


_record_Ros1Geometry_msgsTwist = Ros1Geometry_msgsTwist


def _write_Ros1Geometry_msgsTwist(writer, value):
    if type(value) is not Ros1Geometry_msgsTwist:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.linear
    _write_Ros1Geometry_msgsVector3(writer, _part0)
    _part1 = value.angular
    _write_Ros1Geometry_msgsVector3(writer, _part1)
    if not 48 <= len(writer.data) - _start <= 48:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Geometry_msgsTwist(reader):
    _start = reader.position
    value = Ros1Geometry_msgsTwist()
    value.linear = _read_Ros1Geometry_msgsVector3(reader)
    value.angular = _read_Ros1Geometry_msgsVector3(reader)
    if not 48 <= reader.position - _start <= 48:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Geometry_msgsWrench:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "geometry_msgs/Wrench"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_b0938c4e084df68cf7c46445070ac3e9305d06f678275845aec6055db77617c3"
    )
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
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 48, 48))
        value = _read_Ros1Geometry_msgsWrench(reader)
        reader.end()
        return value


_record_Ros1Geometry_msgsWrench = Ros1Geometry_msgsWrench


def _write_Ros1Geometry_msgsWrench(writer, value):
    if type(value) is not Ros1Geometry_msgsWrench:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.force
    _write_Ros1Geometry_msgsVector3(writer, _part0)
    _part1 = value.torque
    _write_Ros1Geometry_msgsVector3(writer, _part1)
    if not 48 <= len(writer.data) - _start <= 48:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Geometry_msgsWrench(reader):
    _start = reader.position
    value = Ros1Geometry_msgsWrench()
    value.force = _read_Ros1Geometry_msgsVector3(reader)
    value.torque = _read_Ros1Geometry_msgsVector3(reader)
    if not 48 <= reader.position - _start <= 48:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Sensor_msgsJointState:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "sensor_msgs/JointState"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_ee28116009ad317c6a8db950f43d6a712b328b93740460dc70f97a632c3b5e0f"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 32
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1864
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1864
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros1Std_msgsHeader = _field(default_factory=lambda: Ros1Std_msgsHeader())
    name: _py_list[_py_str] = _field(default_factory=lambda: [])
    position: _py_list[_py_float] = _field(default_factory=lambda: [])
    velocity: _py_list[_py_float] = _field(default_factory=lambda: [])
    effort: _py_list[_py_float] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(1864)
        _write_Ros1Sensor_msgsJointState(writer, self)
        wire = writer.finish()
        return _wire(wire, 32, 1864)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Sensor_msgsJointState:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 32, 1864))
        value = _read_Ros1Sensor_msgsJointState(reader)
        reader.end()
        return value


_record_Ros1Sensor_msgsJointState = Ros1Sensor_msgsJointState


def _write_Ros1Sensor_msgsJointState(writer, value):
    if type(value) is not Ros1Sensor_msgsJointState:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros1Std_msgsHeader(writer, _part0)
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
    if not 32 <= len(writer.data) - _start <= 1864:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Sensor_msgsJointState(reader):
    _start = reader.position
    value = Ros1Sensor_msgsJointState()
    value.header = _read_Ros1Std_msgsHeader(reader)
    value.name = [_read_text(reader, 256) for _ in range(_read_count(reader, 6, 4))]
    value.position = [reader.f64() for _ in range(_read_count(reader, 6, 8))]
    value.velocity = [reader.f64() for _ in range(_read_count(reader, 6, 8))]
    value.effort = [reader.f64() for _ in range(_read_count(reader, 6, 8))]
    _sizes = [len(value.name), len(value.position), len(value.velocity), len(value.effort)]
    if len({n for n in _sizes if n}) > 1:
        raise ValueError("nonempty JointState arrays must have equal length")
    if not 32 <= reader.position - _start <= 1864:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Ur_dashboard_msgsAddToLogRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/AddToLogRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_faf6c1ab9c749a05ae3f4e6196cc1c3574560daae1463ebe8684bf13ea938ac4"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    message: _py_str = ""

    def encode(self):
        writer = _Writer(260)
        _write_Ros1Ur_dashboard_msgsAddToLogRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 260)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Ur_dashboard_msgsAddToLogRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 4, 260))
        value = _read_Ros1Ur_dashboard_msgsAddToLogRequest(reader)
        reader.end()
        return value


_record_Ros1Ur_dashboard_msgsAddToLogRequest = Ros1Ur_dashboard_msgsAddToLogRequest


def _write_Ros1Ur_dashboard_msgsAddToLogRequest(writer, value):
    if type(value) is not Ros1Ur_dashboard_msgsAddToLogRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.message
    _write_text(writer, _part0, 256)
    if not 4 <= len(writer.data) - _start <= 260:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Ur_dashboard_msgsAddToLogRequest(reader):
    _start = reader.position
    value = Ros1Ur_dashboard_msgsAddToLogRequest()
    value.message = _read_text(reader, 256)
    if not 4 <= reader.position - _start <= 260:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Ur_dashboard_msgsAddToLogResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/AddToLogResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_d495f7609d04abde44cb35ec5114618a2875e0a30986d2f7cc62c8ce99354e7c"
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
        _write_Ros1Ur_dashboard_msgsAddToLogResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 5, 261)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Ur_dashboard_msgsAddToLogResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 5, 261))
        value = _read_Ros1Ur_dashboard_msgsAddToLogResponse(reader)
        reader.end()
        return value


_record_Ros1Ur_dashboard_msgsAddToLogResponse = Ros1Ur_dashboard_msgsAddToLogResponse


def _write_Ros1Ur_dashboard_msgsAddToLogResponse(writer, value):
    if type(value) is not Ros1Ur_dashboard_msgsAddToLogResponse:
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


def _read_Ros1Ur_dashboard_msgsAddToLogResponse(reader):
    _start = reader.position
    value = Ros1Ur_dashboard_msgsAddToLogResponse()
    value.answer = _read_text(reader, 256)
    value.success = _read_bool(reader)
    if not 5 <= reader.position - _start <= 261:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Ur_dashboard_msgsGetLoadedProgramRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/GetLoadedProgramRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_54eecd0b652707f9c16dcbacbef05902112db993500404e1adaf26618e1d3a1a"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Ur_dashboard_msgsGetLoadedProgramRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Ur_dashboard_msgsGetLoadedProgramRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Ur_dashboard_msgsGetLoadedProgramRequest(reader)
        reader.end()
        return value


_record_Ros1Ur_dashboard_msgsGetLoadedProgramRequest = Ros1Ur_dashboard_msgsGetLoadedProgramRequest


def _write_Ros1Ur_dashboard_msgsGetLoadedProgramRequest(writer, value):
    if type(value) is not Ros1Ur_dashboard_msgsGetLoadedProgramRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros1Ur_dashboard_msgsGetLoadedProgramRequest(reader):
    _start = reader.position
    value = Ros1Ur_dashboard_msgsGetLoadedProgramRequest()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Ur_dashboard_msgsGetLoadedProgramResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/GetLoadedProgramResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_1680747345d40412a4731c48f08c402ac97fb12dd871fb320c2a9d002453f87a"
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
        _write_Ros1Ur_dashboard_msgsGetLoadedProgramResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 9, 521)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Ur_dashboard_msgsGetLoadedProgramResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 9, 521))
        value = _read_Ros1Ur_dashboard_msgsGetLoadedProgramResponse(reader)
        reader.end()
        return value


_record_Ros1Ur_dashboard_msgsGetLoadedProgramResponse = Ros1Ur_dashboard_msgsGetLoadedProgramResponse


def _write_Ros1Ur_dashboard_msgsGetLoadedProgramResponse(writer, value):
    if type(value) is not Ros1Ur_dashboard_msgsGetLoadedProgramResponse:
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


def _read_Ros1Ur_dashboard_msgsGetLoadedProgramResponse(reader):
    _start = reader.position
    value = Ros1Ur_dashboard_msgsGetLoadedProgramResponse()
    value.answer = _read_text(reader, 256)
    value.program_name = _read_text(reader, 256)
    value.success = _read_bool(reader)
    if not 9 <= reader.position - _start <= 521:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Ur_dashboard_msgsGetProgramStateRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/GetProgramStateRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_cf14c6f86ef1904f80e88117dc2f2d29a003b52e21bc6569795771f04cf072a2"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Ur_dashboard_msgsGetProgramStateRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Ur_dashboard_msgsGetProgramStateRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Ur_dashboard_msgsGetProgramStateRequest(reader)
        reader.end()
        return value


_record_Ros1Ur_dashboard_msgsGetProgramStateRequest = Ros1Ur_dashboard_msgsGetProgramStateRequest


def _write_Ros1Ur_dashboard_msgsGetProgramStateRequest(writer, value):
    if type(value) is not Ros1Ur_dashboard_msgsGetProgramStateRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros1Ur_dashboard_msgsGetProgramStateRequest(reader):
    _start = reader.position
    value = Ros1Ur_dashboard_msgsGetProgramStateRequest()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Ur_dashboard_msgsProgramState:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/ProgramState"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_97a57db64f20abcb9929b5296c75d66d994f2e9e26449810197c657694d3850e"
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
        _write_Ros1Ur_dashboard_msgsProgramState(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 260)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Ur_dashboard_msgsProgramState:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 4, 260))
        value = _read_Ros1Ur_dashboard_msgsProgramState(reader)
        reader.end()
        return value


_record_Ros1Ur_dashboard_msgsProgramState = Ros1Ur_dashboard_msgsProgramState


def _write_Ros1Ur_dashboard_msgsProgramState(writer, value):
    if type(value) is not Ros1Ur_dashboard_msgsProgramState:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.state
    _write_text(writer, _part0, 256)
    if not 4 <= len(writer.data) - _start <= 260:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Ur_dashboard_msgsProgramState(reader):
    _start = reader.position
    value = Ros1Ur_dashboard_msgsProgramState()
    value.state = _read_text(reader, 256)
    if not 4 <= reader.position - _start <= 260:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Ur_dashboard_msgsGetProgramStateResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/GetProgramStateResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_366caf89303bfff48d3c0f89aa2a640c3d29af5a0c19d76ceccf26d50c3ab2ed"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 13
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 781
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 781
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    state: _record_Ros1Ur_dashboard_msgsProgramState = _field(
        default_factory=lambda: Ros1Ur_dashboard_msgsProgramState()
    )
    program_name: _py_str = ""
    answer: _py_str = ""
    success: _py_bool = False

    def encode(self):
        writer = _Writer(781)
        _write_Ros1Ur_dashboard_msgsGetProgramStateResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 13, 781)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Ur_dashboard_msgsGetProgramStateResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 13, 781))
        value = _read_Ros1Ur_dashboard_msgsGetProgramStateResponse(reader)
        reader.end()
        return value


_record_Ros1Ur_dashboard_msgsGetProgramStateResponse = Ros1Ur_dashboard_msgsGetProgramStateResponse


def _write_Ros1Ur_dashboard_msgsGetProgramStateResponse(writer, value):
    if type(value) is not Ros1Ur_dashboard_msgsGetProgramStateResponse:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.state
    _write_Ros1Ur_dashboard_msgsProgramState(writer, _part0)
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


def _read_Ros1Ur_dashboard_msgsGetProgramStateResponse(reader):
    _start = reader.position
    value = Ros1Ur_dashboard_msgsGetProgramStateResponse()
    value.state = _read_Ros1Ur_dashboard_msgsProgramState(reader)
    value.program_name = _read_text(reader, 256)
    value.answer = _read_text(reader, 256)
    value.success = _read_bool(reader)
    if not 13 <= reader.position - _start <= 781:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Ur_dashboard_msgsGetRobotModeRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/GetRobotModeRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_b9ffe283d7dbcb85879dbf6964d393f5d44661227bb26e1acc34308edb288609"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Ur_dashboard_msgsGetRobotModeRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Ur_dashboard_msgsGetRobotModeRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Ur_dashboard_msgsGetRobotModeRequest(reader)
        reader.end()
        return value


_record_Ros1Ur_dashboard_msgsGetRobotModeRequest = Ros1Ur_dashboard_msgsGetRobotModeRequest


def _write_Ros1Ur_dashboard_msgsGetRobotModeRequest(writer, value):
    if type(value) is not Ros1Ur_dashboard_msgsGetRobotModeRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros1Ur_dashboard_msgsGetRobotModeRequest(reader):
    _start = reader.position
    value = Ros1Ur_dashboard_msgsGetRobotModeRequest()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Ur_dashboard_msgsRobotMode:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/RobotMode"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_b2772853eff2ec9b849b6de4a90ce98487a8eff49d1371283dce503908702066"
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
        _write_Ros1Ur_dashboard_msgsRobotMode(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Ur_dashboard_msgsRobotMode:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Ur_dashboard_msgsRobotMode(reader)
        reader.end()
        return value


_record_Ros1Ur_dashboard_msgsRobotMode = Ros1Ur_dashboard_msgsRobotMode


def _write_Ros1Ur_dashboard_msgsRobotMode(writer, value):
    if type(value) is not Ros1Ur_dashboard_msgsRobotMode:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.mode
    writer.integer(_part0, 1, True)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Ur_dashboard_msgsRobotMode(reader):
    _start = reader.position
    value = Ros1Ur_dashboard_msgsRobotMode()
    value.mode = reader.integer(1, True)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Ur_dashboard_msgsGetRobotModeResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/GetRobotModeResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_f6c0d0d03a956a34b00fd63540226b6abb8b106e2a35cb912b4886a5c4cecc3f"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 6
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 262
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 262
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    robot_mode: _record_Ros1Ur_dashboard_msgsRobotMode = _field(
        default_factory=lambda: Ros1Ur_dashboard_msgsRobotMode()
    )
    answer: _py_str = ""
    success: _py_bool = False

    def encode(self):
        writer = _Writer(262)
        _write_Ros1Ur_dashboard_msgsGetRobotModeResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 6, 262)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Ur_dashboard_msgsGetRobotModeResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 6, 262))
        value = _read_Ros1Ur_dashboard_msgsGetRobotModeResponse(reader)
        reader.end()
        return value


_record_Ros1Ur_dashboard_msgsGetRobotModeResponse = Ros1Ur_dashboard_msgsGetRobotModeResponse


def _write_Ros1Ur_dashboard_msgsGetRobotModeResponse(writer, value):
    if type(value) is not Ros1Ur_dashboard_msgsGetRobotModeResponse:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.robot_mode
    _write_Ros1Ur_dashboard_msgsRobotMode(writer, _part0)
    _part1 = value.answer
    _write_text(writer, _part1, 256)
    _part2 = value.success
    if type(_part2) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part2), 1)
    if not 6 <= len(writer.data) - _start <= 262:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Ur_dashboard_msgsGetRobotModeResponse(reader):
    _start = reader.position
    value = Ros1Ur_dashboard_msgsGetRobotModeResponse()
    value.robot_mode = _read_Ros1Ur_dashboard_msgsRobotMode(reader)
    value.answer = _read_text(reader, 256)
    value.success = _read_bool(reader)
    if not 6 <= reader.position - _start <= 262:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Ur_dashboard_msgsGetSafetyModeRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/GetSafetyModeRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_f697e2ff2bcd56523563060a46bca2e1b7af487128f05562fcb18bfa73cbca8b"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Ur_dashboard_msgsGetSafetyModeRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Ur_dashboard_msgsGetSafetyModeRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Ur_dashboard_msgsGetSafetyModeRequest(reader)
        reader.end()
        return value


_record_Ros1Ur_dashboard_msgsGetSafetyModeRequest = Ros1Ur_dashboard_msgsGetSafetyModeRequest


def _write_Ros1Ur_dashboard_msgsGetSafetyModeRequest(writer, value):
    if type(value) is not Ros1Ur_dashboard_msgsGetSafetyModeRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros1Ur_dashboard_msgsGetSafetyModeRequest(reader):
    _start = reader.position
    value = Ros1Ur_dashboard_msgsGetSafetyModeRequest()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Ur_dashboard_msgsSafetyMode:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/SafetyMode"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_5a0c2737166cf2e2bd4c17b46c597f674b8d806b802d4e86ee0d76fc55f29cf7"
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
        _write_Ros1Ur_dashboard_msgsSafetyMode(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Ur_dashboard_msgsSafetyMode:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Ur_dashboard_msgsSafetyMode(reader)
        reader.end()
        return value


_record_Ros1Ur_dashboard_msgsSafetyMode = Ros1Ur_dashboard_msgsSafetyMode


def _write_Ros1Ur_dashboard_msgsSafetyMode(writer, value):
    if type(value) is not Ros1Ur_dashboard_msgsSafetyMode:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.mode
    writer.integer(_part0, 1, False)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Ur_dashboard_msgsSafetyMode(reader):
    _start = reader.position
    value = Ros1Ur_dashboard_msgsSafetyMode()
    value.mode = reader.integer(1, False)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Ur_dashboard_msgsGetSafetyModeResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/GetSafetyModeResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_70121af922588eaab9a34855e3da0cde837b1449d2a2d6c28addc70916df1a15"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 6
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 262
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 262
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    safety_mode: _record_Ros1Ur_dashboard_msgsSafetyMode = _field(
        default_factory=lambda: Ros1Ur_dashboard_msgsSafetyMode()
    )
    answer: _py_str = ""
    success: _py_bool = False

    def encode(self):
        writer = _Writer(262)
        _write_Ros1Ur_dashboard_msgsGetSafetyModeResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 6, 262)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Ur_dashboard_msgsGetSafetyModeResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 6, 262))
        value = _read_Ros1Ur_dashboard_msgsGetSafetyModeResponse(reader)
        reader.end()
        return value


_record_Ros1Ur_dashboard_msgsGetSafetyModeResponse = Ros1Ur_dashboard_msgsGetSafetyModeResponse


def _write_Ros1Ur_dashboard_msgsGetSafetyModeResponse(writer, value):
    if type(value) is not Ros1Ur_dashboard_msgsGetSafetyModeResponse:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.safety_mode
    _write_Ros1Ur_dashboard_msgsSafetyMode(writer, _part0)
    _part1 = value.answer
    _write_text(writer, _part1, 256)
    _part2 = value.success
    if type(_part2) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part2), 1)
    if not 6 <= len(writer.data) - _start <= 262:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Ur_dashboard_msgsGetSafetyModeResponse(reader):
    _start = reader.position
    value = Ros1Ur_dashboard_msgsGetSafetyModeResponse()
    value.safety_mode = _read_Ros1Ur_dashboard_msgsSafetyMode(reader)
    value.answer = _read_text(reader, 256)
    value.success = _read_bool(reader)
    if not 6 <= reader.position - _start <= 262:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Ur_dashboard_msgsIsInRemoteControlRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/IsInRemoteControlRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_4b3c39f36f953904eb582d8c5f91161f2864782d4a4ab209a7dab32a117175da"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Ur_dashboard_msgsIsInRemoteControlRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Ur_dashboard_msgsIsInRemoteControlRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Ur_dashboard_msgsIsInRemoteControlRequest(reader)
        reader.end()
        return value


_record_Ros1Ur_dashboard_msgsIsInRemoteControlRequest = Ros1Ur_dashboard_msgsIsInRemoteControlRequest


def _write_Ros1Ur_dashboard_msgsIsInRemoteControlRequest(writer, value):
    if type(value) is not Ros1Ur_dashboard_msgsIsInRemoteControlRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros1Ur_dashboard_msgsIsInRemoteControlRequest(reader):
    _start = reader.position
    value = Ros1Ur_dashboard_msgsIsInRemoteControlRequest()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Ur_dashboard_msgsIsInRemoteControlResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/IsInRemoteControlResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_6c4af27571b48a5b8e8f1f857b2c02a333e7b4b360f8f3645a39630594c1663a"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 6
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 262
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 262
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    answer: _py_str = ""
    in_remote_control: _py_bool = False
    success: _py_bool = False

    def encode(self):
        writer = _Writer(262)
        _write_Ros1Ur_dashboard_msgsIsInRemoteControlResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 6, 262)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Ur_dashboard_msgsIsInRemoteControlResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 6, 262))
        value = _read_Ros1Ur_dashboard_msgsIsInRemoteControlResponse(reader)
        reader.end()
        return value


_record_Ros1Ur_dashboard_msgsIsInRemoteControlResponse = Ros1Ur_dashboard_msgsIsInRemoteControlResponse


def _write_Ros1Ur_dashboard_msgsIsInRemoteControlResponse(writer, value):
    if type(value) is not Ros1Ur_dashboard_msgsIsInRemoteControlResponse:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.answer
    _write_text(writer, _part0, 256)
    _part1 = value.in_remote_control
    if type(_part1) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part1), 1)
    _part2 = value.success
    if type(_part2) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part2), 1)
    if not 6 <= len(writer.data) - _start <= 262:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Ur_dashboard_msgsIsInRemoteControlResponse(reader):
    _start = reader.position
    value = Ros1Ur_dashboard_msgsIsInRemoteControlResponse()
    value.answer = _read_text(reader, 256)
    value.in_remote_control = _read_bool(reader)
    value.success = _read_bool(reader)
    if not 6 <= reader.position - _start <= 262:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Ur_dashboard_msgsIsProgramRunningRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/IsProgramRunningRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_0be481297028886e15f07ace4178ca0aec595724cd83ab01d0155e7c6aa6666f"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Ur_dashboard_msgsIsProgramRunningRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Ur_dashboard_msgsIsProgramRunningRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Ur_dashboard_msgsIsProgramRunningRequest(reader)
        reader.end()
        return value


_record_Ros1Ur_dashboard_msgsIsProgramRunningRequest = Ros1Ur_dashboard_msgsIsProgramRunningRequest


def _write_Ros1Ur_dashboard_msgsIsProgramRunningRequest(writer, value):
    if type(value) is not Ros1Ur_dashboard_msgsIsProgramRunningRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros1Ur_dashboard_msgsIsProgramRunningRequest(reader):
    _start = reader.position
    value = Ros1Ur_dashboard_msgsIsProgramRunningRequest()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Ur_dashboard_msgsIsProgramRunningResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/IsProgramRunningResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_4d9de4f7e7071d142c09e3184d4a6f29d4044d003ad11ba3b72e1129ecf144ac"
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
        _write_Ros1Ur_dashboard_msgsIsProgramRunningResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 6, 262)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Ur_dashboard_msgsIsProgramRunningResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 6, 262))
        value = _read_Ros1Ur_dashboard_msgsIsProgramRunningResponse(reader)
        reader.end()
        return value


_record_Ros1Ur_dashboard_msgsIsProgramRunningResponse = Ros1Ur_dashboard_msgsIsProgramRunningResponse


def _write_Ros1Ur_dashboard_msgsIsProgramRunningResponse(writer, value):
    if type(value) is not Ros1Ur_dashboard_msgsIsProgramRunningResponse:
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


def _read_Ros1Ur_dashboard_msgsIsProgramRunningResponse(reader):
    _start = reader.position
    value = Ros1Ur_dashboard_msgsIsProgramRunningResponse()
    value.answer = _read_text(reader, 256)
    value.program_running = _read_bool(reader)
    value.success = _read_bool(reader)
    if not 6 <= reader.position - _start <= 262:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Ur_dashboard_msgsIsProgramSavedRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/IsProgramSavedRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_45ce1466c35adc812096bfb8b2cd84dfa87940109831c9f797b5786afa14f5a8"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Ur_dashboard_msgsIsProgramSavedRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Ur_dashboard_msgsIsProgramSavedRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Ur_dashboard_msgsIsProgramSavedRequest(reader)
        reader.end()
        return value


_record_Ros1Ur_dashboard_msgsIsProgramSavedRequest = Ros1Ur_dashboard_msgsIsProgramSavedRequest


def _write_Ros1Ur_dashboard_msgsIsProgramSavedRequest(writer, value):
    if type(value) is not Ros1Ur_dashboard_msgsIsProgramSavedRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros1Ur_dashboard_msgsIsProgramSavedRequest(reader):
    _start = reader.position
    value = Ros1Ur_dashboard_msgsIsProgramSavedRequest()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Ur_dashboard_msgsIsProgramSavedResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/IsProgramSavedResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_eb53e077fe7b216e27fc57f838666a54a84e479e02e508d41df5cff9f0637a52"
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
        _write_Ros1Ur_dashboard_msgsIsProgramSavedResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 10, 522)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Ur_dashboard_msgsIsProgramSavedResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 10, 522))
        value = _read_Ros1Ur_dashboard_msgsIsProgramSavedResponse(reader)
        reader.end()
        return value


_record_Ros1Ur_dashboard_msgsIsProgramSavedResponse = Ros1Ur_dashboard_msgsIsProgramSavedResponse


def _write_Ros1Ur_dashboard_msgsIsProgramSavedResponse(writer, value):
    if type(value) is not Ros1Ur_dashboard_msgsIsProgramSavedResponse:
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


def _read_Ros1Ur_dashboard_msgsIsProgramSavedResponse(reader):
    _start = reader.position
    value = Ros1Ur_dashboard_msgsIsProgramSavedResponse()
    value.answer = _read_text(reader, 256)
    value.program_name = _read_text(reader, 256)
    value.program_saved = _read_bool(reader)
    value.success = _read_bool(reader)
    if not 10 <= reader.position - _start <= 522:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Ur_dashboard_msgsLoadRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/LoadRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_dfbde7b2376c7c9ba3926e4803f16b22f7ade3b2f768a25886a1490656edd2bd"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    filename: _py_str = ""

    def encode(self):
        writer = _Writer(260)
        _write_Ros1Ur_dashboard_msgsLoadRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 260)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Ur_dashboard_msgsLoadRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 4, 260))
        value = _read_Ros1Ur_dashboard_msgsLoadRequest(reader)
        reader.end()
        return value


_record_Ros1Ur_dashboard_msgsLoadRequest = Ros1Ur_dashboard_msgsLoadRequest


def _write_Ros1Ur_dashboard_msgsLoadRequest(writer, value):
    if type(value) is not Ros1Ur_dashboard_msgsLoadRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.filename
    _write_text(writer, _part0, 256)
    if not 4 <= len(writer.data) - _start <= 260:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Ur_dashboard_msgsLoadRequest(reader):
    _start = reader.position
    value = Ros1Ur_dashboard_msgsLoadRequest()
    value.filename = _read_text(reader, 256)
    if not 4 <= reader.position - _start <= 260:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Ur_dashboard_msgsLoadResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/LoadResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_0ed3b3f2a0066248734e64c0706e52ebf07113569a98baf249a99adfff59be02"
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
        _write_Ros1Ur_dashboard_msgsLoadResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 5, 261)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Ur_dashboard_msgsLoadResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 5, 261))
        value = _read_Ros1Ur_dashboard_msgsLoadResponse(reader)
        reader.end()
        return value


_record_Ros1Ur_dashboard_msgsLoadResponse = Ros1Ur_dashboard_msgsLoadResponse


def _write_Ros1Ur_dashboard_msgsLoadResponse(writer, value):
    if type(value) is not Ros1Ur_dashboard_msgsLoadResponse:
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


def _read_Ros1Ur_dashboard_msgsLoadResponse(reader):
    _start = reader.position
    value = Ros1Ur_dashboard_msgsLoadResponse()
    value.answer = _read_text(reader, 256)
    value.success = _read_bool(reader)
    if not 5 <= reader.position - _start <= 261:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Ur_dashboard_msgsPopupRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/PopupRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_11556bfb811a28141b6c5e9c11720920a389d735b8c09ed1a8f47d05f293e90d"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    message: _py_str = ""

    def encode(self):
        writer = _Writer(260)
        _write_Ros1Ur_dashboard_msgsPopupRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 260)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Ur_dashboard_msgsPopupRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 4, 260))
        value = _read_Ros1Ur_dashboard_msgsPopupRequest(reader)
        reader.end()
        return value


_record_Ros1Ur_dashboard_msgsPopupRequest = Ros1Ur_dashboard_msgsPopupRequest


def _write_Ros1Ur_dashboard_msgsPopupRequest(writer, value):
    if type(value) is not Ros1Ur_dashboard_msgsPopupRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.message
    _write_text(writer, _part0, 256)
    if not 4 <= len(writer.data) - _start <= 260:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Ur_dashboard_msgsPopupRequest(reader):
    _start = reader.position
    value = Ros1Ur_dashboard_msgsPopupRequest()
    value.message = _read_text(reader, 256)
    if not 4 <= reader.position - _start <= 260:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Ur_dashboard_msgsPopupResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/PopupResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_33ac5b2128d6e7c2e562af7e2b8a8e907c16c07034b377920cba4fbd04ca9e14"
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
        _write_Ros1Ur_dashboard_msgsPopupResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 5, 261)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Ur_dashboard_msgsPopupResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 5, 261))
        value = _read_Ros1Ur_dashboard_msgsPopupResponse(reader)
        reader.end()
        return value


_record_Ros1Ur_dashboard_msgsPopupResponse = Ros1Ur_dashboard_msgsPopupResponse


def _write_Ros1Ur_dashboard_msgsPopupResponse(writer, value):
    if type(value) is not Ros1Ur_dashboard_msgsPopupResponse:
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


def _read_Ros1Ur_dashboard_msgsPopupResponse(reader):
    _start = reader.position
    value = Ros1Ur_dashboard_msgsPopupResponse()
    value.answer = _read_text(reader, 256)
    value.success = _read_bool(reader)
    if not 5 <= reader.position - _start <= 261:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Ur_dashboard_msgsRawRequestRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/RawRequestRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_ca8e3fdb45888bf4feb3c0f4ed05b7b9499a74493aaa0a8727f9f513922adfb4"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    query: _py_str = ""

    def encode(self):
        writer = _Writer(260)
        _write_Ros1Ur_dashboard_msgsRawRequestRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 260)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Ur_dashboard_msgsRawRequestRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 4, 260))
        value = _read_Ros1Ur_dashboard_msgsRawRequestRequest(reader)
        reader.end()
        return value


_record_Ros1Ur_dashboard_msgsRawRequestRequest = Ros1Ur_dashboard_msgsRawRequestRequest


def _write_Ros1Ur_dashboard_msgsRawRequestRequest(writer, value):
    if type(value) is not Ros1Ur_dashboard_msgsRawRequestRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.query
    _write_text(writer, _part0, 256)
    if not 4 <= len(writer.data) - _start <= 260:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Ur_dashboard_msgsRawRequestRequest(reader):
    _start = reader.position
    value = Ros1Ur_dashboard_msgsRawRequestRequest()
    value.query = _read_text(reader, 256)
    if not 4 <= reader.position - _start <= 260:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Ur_dashboard_msgsRawRequestResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/RawRequestResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_76dbb0c8d0143bd4d39bbf66c6866b0771013fe67fbad76887c6490c91f39e80"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    answer: _py_str = ""

    def encode(self):
        writer = _Writer(260)
        _write_Ros1Ur_dashboard_msgsRawRequestResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 260)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Ur_dashboard_msgsRawRequestResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 4, 260))
        value = _read_Ros1Ur_dashboard_msgsRawRequestResponse(reader)
        reader.end()
        return value


_record_Ros1Ur_dashboard_msgsRawRequestResponse = Ros1Ur_dashboard_msgsRawRequestResponse


def _write_Ros1Ur_dashboard_msgsRawRequestResponse(writer, value):
    if type(value) is not Ros1Ur_dashboard_msgsRawRequestResponse:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.answer
    _write_text(writer, _part0, 256)
    if not 4 <= len(writer.data) - _start <= 260:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Ur_dashboard_msgsRawRequestResponse(reader):
    _start = reader.position
    value = Ros1Ur_dashboard_msgsRawRequestResponse()
    value.answer = _read_text(reader, 256)
    if not 4 <= reader.position - _start <= 260:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Ur_dashboard_msgsSetModeGoal:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/SetModeGoal"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_27ba58b57af47e8efff15a70fb0562d5904d019c17e39a499bf003730434a528"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 3
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 3
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 3
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    target_robot_mode: _record_Ros1Ur_dashboard_msgsRobotMode = _field(
        default_factory=lambda: Ros1Ur_dashboard_msgsRobotMode()
    )
    stop_program: _py_bool = False
    play_program: _py_bool = False

    def encode(self):
        writer = _Writer(3)
        _write_Ros1Ur_dashboard_msgsSetModeGoal(writer, self)
        wire = writer.finish()
        return _wire(wire, 3, 3)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Ur_dashboard_msgsSetModeGoal:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 3, 3))
        value = _read_Ros1Ur_dashboard_msgsSetModeGoal(reader)
        reader.end()
        return value


_record_Ros1Ur_dashboard_msgsSetModeGoal = Ros1Ur_dashboard_msgsSetModeGoal


def _write_Ros1Ur_dashboard_msgsSetModeGoal(writer, value):
    if type(value) is not Ros1Ur_dashboard_msgsSetModeGoal:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.target_robot_mode
    _write_Ros1Ur_dashboard_msgsRobotMode(writer, _part0)
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


def _read_Ros1Ur_dashboard_msgsSetModeGoal(reader):
    _start = reader.position
    value = Ros1Ur_dashboard_msgsSetModeGoal()
    value.target_robot_mode = _read_Ros1Ur_dashboard_msgsRobotMode(reader)
    value.stop_program = _read_bool(reader)
    value.play_program = _read_bool(reader)
    if not 3 <= reader.position - _start <= 3:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Ur_dashboard_msgsSetModeResult:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/SetModeResult"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_e558d01061183cabca7022bd66aeb1958e14dfc62226a701c86020e73ffa1114"
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
        _write_Ros1Ur_dashboard_msgsSetModeResult(writer, self)
        wire = writer.finish()
        return _wire(wire, 5, 261)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Ur_dashboard_msgsSetModeResult:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 5, 261))
        value = _read_Ros1Ur_dashboard_msgsSetModeResult(reader)
        reader.end()
        return value


_record_Ros1Ur_dashboard_msgsSetModeResult = Ros1Ur_dashboard_msgsSetModeResult


def _write_Ros1Ur_dashboard_msgsSetModeResult(writer, value):
    if type(value) is not Ros1Ur_dashboard_msgsSetModeResult:
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


def _read_Ros1Ur_dashboard_msgsSetModeResult(reader):
    _start = reader.position
    value = Ros1Ur_dashboard_msgsSetModeResult()
    value.success = _read_bool(reader)
    value.message = _read_text(reader, 256)
    if not 5 <= reader.position - _start <= 261:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Ur_dashboard_msgsSetModeFeedback:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_dashboard_msgs/SetModeFeedback"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_d29b507dcc5d72ee086c8a5a9a7a762d677ed408ec02dbe661abc17e2de5c7e2"
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
        _write_Ros1Ur_dashboard_msgsSetModeFeedback(writer, self)
        wire = writer.finish()
        return _wire(wire, 2, 2)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Ur_dashboard_msgsSetModeFeedback:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 2, 2))
        value = _read_Ros1Ur_dashboard_msgsSetModeFeedback(reader)
        reader.end()
        return value


_record_Ros1Ur_dashboard_msgsSetModeFeedback = Ros1Ur_dashboard_msgsSetModeFeedback


def _write_Ros1Ur_dashboard_msgsSetModeFeedback(writer, value):
    if type(value) is not Ros1Ur_dashboard_msgsSetModeFeedback:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.current_robot_mode
    writer.integer(_part0, 1, True)
    _part1 = value.current_safety_mode
    writer.integer(_part1, 1, True)
    if not 2 <= len(writer.data) - _start <= 2:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Ur_dashboard_msgsSetModeFeedback(reader):
    _start = reader.position
    value = Ros1Ur_dashboard_msgsSetModeFeedback()
    value.current_robot_mode = reader.integer(1, True)
    value.current_safety_mode = reader.integer(1, True)
    if not 2 <= reader.position - _start <= 2:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Ur_msgsAnalog:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_msgs/Analog"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_638dc3b30def8193a501b4c1c778792a60c8c683a96880e9fa6db6c01774f6a7"
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
        _write_Ros1Ur_msgsAnalog(writer, self)
        wire = writer.finish()
        return _wire(wire, 6, 6)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Ur_msgsAnalog:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 6, 6))
        value = _read_Ros1Ur_msgsAnalog(reader)
        reader.end()
        return value


_record_Ros1Ur_msgsAnalog = Ros1Ur_msgsAnalog


def _write_Ros1Ur_msgsAnalog(writer, value):
    if type(value) is not Ros1Ur_msgsAnalog:
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


def _read_Ros1Ur_msgsAnalog(reader):
    _start = reader.position
    value = Ros1Ur_msgsAnalog()
    value.pin = reader.integer(1, False)
    value.domain = reader.integer(1, False)
    value.state = reader.f32()
    if not 6 <= reader.position - _start <= 6:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Ur_msgsDigital:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_msgs/Digital"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_c5840cfc5e26fe2f18817e46a0322a92e02ca21983920c71ebeb585769f5622c"
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
        _write_Ros1Ur_msgsDigital(writer, self)
        wire = writer.finish()
        return _wire(wire, 2, 2)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Ur_msgsDigital:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 2, 2))
        value = _read_Ros1Ur_msgsDigital(reader)
        reader.end()
        return value


_record_Ros1Ur_msgsDigital = Ros1Ur_msgsDigital


def _write_Ros1Ur_msgsDigital(writer, value):
    if type(value) is not Ros1Ur_msgsDigital:
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


def _read_Ros1Ur_msgsDigital(reader):
    _start = reader.position
    value = Ros1Ur_msgsDigital()
    value.pin = reader.integer(1, False)
    value.state = _read_bool(reader)
    if not 2 <= reader.position - _start <= 2:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Ur_msgsGetRobotSoftwareVersionRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_msgs/GetRobotSoftwareVersionRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_bbcdd98ee8d951a8a4fa873ad1c755f16c5cce14ceb7a614343dd44ccf84b9c8"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Ur_msgsGetRobotSoftwareVersionRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Ur_msgsGetRobotSoftwareVersionRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Ur_msgsGetRobotSoftwareVersionRequest(reader)
        reader.end()
        return value


_record_Ros1Ur_msgsGetRobotSoftwareVersionRequest = Ros1Ur_msgsGetRobotSoftwareVersionRequest


def _write_Ros1Ur_msgsGetRobotSoftwareVersionRequest(writer, value):
    if type(value) is not Ros1Ur_msgsGetRobotSoftwareVersionRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros1Ur_msgsGetRobotSoftwareVersionRequest(reader):
    _start = reader.position
    value = Ros1Ur_msgsGetRobotSoftwareVersionRequest()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Ur_msgsGetRobotSoftwareVersionResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_msgs/GetRobotSoftwareVersionResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_36ab51ce55e3630f8ca71f364f4c5cc1f4b010f678777e4fd7b03dd480f92e64"
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
        _write_Ros1Ur_msgsGetRobotSoftwareVersionResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 16, 16)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Ur_msgsGetRobotSoftwareVersionResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 16, 16))
        value = _read_Ros1Ur_msgsGetRobotSoftwareVersionResponse(reader)
        reader.end()
        return value


_record_Ros1Ur_msgsGetRobotSoftwareVersionResponse = Ros1Ur_msgsGetRobotSoftwareVersionResponse


def _write_Ros1Ur_msgsGetRobotSoftwareVersionResponse(writer, value):
    if type(value) is not Ros1Ur_msgsGetRobotSoftwareVersionResponse:
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


def _read_Ros1Ur_msgsGetRobotSoftwareVersionResponse(reader):
    _start = reader.position
    value = Ros1Ur_msgsGetRobotSoftwareVersionResponse()
    value.major = reader.integer(4, False)
    value.minor = reader.integer(4, False)
    value.bugfix = reader.integer(4, False)
    value.build = reader.integer(4, False)
    if not 16 <= reader.position - _start <= 16:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Ur_msgsIOStates:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_msgs/IOStates"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_4b10f6efdd2f129267c407bc1f8caed03776fef6d49f0a1b9dfbf2451ad8f033"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 20
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 404
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 404
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    digital_in_states: _py_list[_record_Ros1Ur_msgsDigital] = _field(default_factory=lambda: [])
    digital_out_states: _py_list[_record_Ros1Ur_msgsDigital] = _field(default_factory=lambda: [])
    flag_states: _py_list[_record_Ros1Ur_msgsDigital] = _field(default_factory=lambda: [])
    analog_in_states: _py_list[_record_Ros1Ur_msgsAnalog] = _field(default_factory=lambda: [])
    analog_out_states: _py_list[_record_Ros1Ur_msgsAnalog] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(404)
        _write_Ros1Ur_msgsIOStates(writer, self)
        wire = writer.finish()
        return _wire(wire, 20, 404)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Ur_msgsIOStates:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 20, 404))
        value = _read_Ros1Ur_msgsIOStates(reader)
        reader.end()
        return value


_record_Ros1Ur_msgsIOStates = Ros1Ur_msgsIOStates


def _write_Ros1Ur_msgsIOStates(writer, value):
    if type(value) is not Ros1Ur_msgsIOStates:
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
        _write_Ros1Ur_msgsDigital(writer, _element)
    _part1 = value.digital_out_states
    if type(_part1) not in (list, tuple):
        raise TypeError("array value required")
    _count1 = len(_part1)
    if _count1 > 32:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        _write_Ros1Ur_msgsDigital(writer, _element)
    _part2 = value.flag_states
    if type(_part2) not in (list, tuple):
        raise TypeError("array value required")
    _count2 = len(_part2)
    if _count2 > 32:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        _write_Ros1Ur_msgsDigital(writer, _element)
    _part3 = value.analog_in_states
    if type(_part3) not in (list, tuple):
        raise TypeError("array value required")
    _count3 = len(_part3)
    if _count3 > 16:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count3, 4)
    for _index in range(_count3):
        _element = _part3[_index]
        _write_Ros1Ur_msgsAnalog(writer, _element)
    _part4 = value.analog_out_states
    if type(_part4) not in (list, tuple):
        raise TypeError("array value required")
    _count4 = len(_part4)
    if _count4 > 16:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count4, 4)
    for _index in range(_count4):
        _element = _part4[_index]
        _write_Ros1Ur_msgsAnalog(writer, _element)
    if not 20 <= len(writer.data) - _start <= 404:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Ur_msgsIOStates(reader):
    _start = reader.position
    value = Ros1Ur_msgsIOStates()
    value.digital_in_states = [_read_Ros1Ur_msgsDigital(reader) for _ in range(_read_count(reader, 32, 2))]
    value.digital_out_states = [_read_Ros1Ur_msgsDigital(reader) for _ in range(_read_count(reader, 32, 2))]
    value.flag_states = [_read_Ros1Ur_msgsDigital(reader) for _ in range(_read_count(reader, 32, 2))]
    value.analog_in_states = [_read_Ros1Ur_msgsAnalog(reader) for _ in range(_read_count(reader, 16, 6))]
    value.analog_out_states = [_read_Ros1Ur_msgsAnalog(reader) for _ in range(_read_count(reader, 16, 6))]
    if not 20 <= reader.position - _start <= 404:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Ur_msgsMasterboardDataMsg:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_msgs/MasterboardDataMsg"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_f80f92b90cb33dd5b118df81447dfcc33c1ab230a91bb915a1be684401da265f"
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
    robot_voltage_48V: _py_float = 0.0
    robot_current: _py_float = 0.0
    master_io_current: _py_float = 0.0
    master_safety_state: _py_int = 0
    master_onoff_state: _py_int = 0

    def encode(self):
        writer = _Writer(62)
        _write_Ros1Ur_msgsMasterboardDataMsg(writer, self)
        wire = writer.finish()
        return _wire(wire, 62, 62)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Ur_msgsMasterboardDataMsg:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 62, 62))
        value = _read_Ros1Ur_msgsMasterboardDataMsg(reader)
        reader.end()
        return value


_record_Ros1Ur_msgsMasterboardDataMsg = Ros1Ur_msgsMasterboardDataMsg


def _write_Ros1Ur_msgsMasterboardDataMsg(writer, value):
    if type(value) is not Ros1Ur_msgsMasterboardDataMsg:
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
    _part11 = value.robot_voltage_48V
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


def _read_Ros1Ur_msgsMasterboardDataMsg(reader):
    _start = reader.position
    value = Ros1Ur_msgsMasterboardDataMsg()
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
    value.robot_voltage_48V = reader.f32()
    value.robot_current = reader.f32()
    value.master_io_current = reader.f32()
    value.master_safety_state = reader.integer(1, False)
    value.master_onoff_state = reader.integer(1, False)
    if not 62 <= reader.position - _start <= 62:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Ur_msgsRobotModeDataMsg:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_msgs/RobotModeDataMsg"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_64c4247d865e0731b13ca13ce2e355df664cabf7f3d646051d9d3ef48b05a231"
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
        _write_Ros1Ur_msgsRobotModeDataMsg(writer, self)
        wire = writer.finish()
        return _wire(wire, 15, 15)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Ur_msgsRobotModeDataMsg:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 15, 15))
        value = _read_Ros1Ur_msgsRobotModeDataMsg(reader)
        reader.end()
        return value


_record_Ros1Ur_msgsRobotModeDataMsg = Ros1Ur_msgsRobotModeDataMsg


def _write_Ros1Ur_msgsRobotModeDataMsg(writer, value):
    if type(value) is not Ros1Ur_msgsRobotModeDataMsg:
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


def _read_Ros1Ur_msgsRobotModeDataMsg(reader):
    _start = reader.position
    value = Ros1Ur_msgsRobotModeDataMsg()
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
class Ros1Ur_msgsRobotStateRTMsg:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_msgs/RobotStateRTMsg"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_e3d93b6141f749b93c229d8eabebbeb2782a16621fea4d7d39096794e7a67ce7"
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
        _write_Ros1Ur_msgsRobotStateRTMsg(writer, self)
        wire = writer.finish()
        return _wire(wire, 96, 768)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Ur_msgsRobotStateRTMsg:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 96, 768))
        value = _read_Ros1Ur_msgsRobotStateRTMsg(reader)
        reader.end()
        return value


_record_Ros1Ur_msgsRobotStateRTMsg = Ros1Ur_msgsRobotStateRTMsg


def _write_Ros1Ur_msgsRobotStateRTMsg(writer, value):
    if type(value) is not Ros1Ur_msgsRobotStateRTMsg:
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


def _read_Ros1Ur_msgsRobotStateRTMsg(reader):
    _start = reader.position
    value = Ros1Ur_msgsRobotStateRTMsg()
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
class Ros1Ur_msgsSetAnalogOutputRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_msgs/SetAnalogOutputRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_1830a63c8853ebe8842f0e8e6870fbdee136dfe78726ba581fd1c54f910c4789"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 6
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 6
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 6
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    data: _record_Ros1Ur_msgsAnalog = _field(default_factory=lambda: Ros1Ur_msgsAnalog())

    def encode(self):
        writer = _Writer(6)
        _write_Ros1Ur_msgsSetAnalogOutputRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 6, 6)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Ur_msgsSetAnalogOutputRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 6, 6))
        value = _read_Ros1Ur_msgsSetAnalogOutputRequest(reader)
        reader.end()
        return value


_record_Ros1Ur_msgsSetAnalogOutputRequest = Ros1Ur_msgsSetAnalogOutputRequest


def _write_Ros1Ur_msgsSetAnalogOutputRequest(writer, value):
    if type(value) is not Ros1Ur_msgsSetAnalogOutputRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.data
    _write_Ros1Ur_msgsAnalog(writer, _part0)
    if not 6 <= len(writer.data) - _start <= 6:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Ur_msgsSetAnalogOutputRequest(reader):
    _start = reader.position
    value = Ros1Ur_msgsSetAnalogOutputRequest()
    value.data = _read_Ros1Ur_msgsAnalog(reader)
    if not 6 <= reader.position - _start <= 6:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Ur_msgsSetAnalogOutputResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_msgs/SetAnalogOutputResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_bb84c969f904082699f67d385b093b0c6de97bfacc33eab86932f4564a823580"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Ur_msgsSetAnalogOutputResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Ur_msgsSetAnalogOutputResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Ur_msgsSetAnalogOutputResponse(reader)
        reader.end()
        return value


_record_Ros1Ur_msgsSetAnalogOutputResponse = Ros1Ur_msgsSetAnalogOutputResponse


def _write_Ros1Ur_msgsSetAnalogOutputResponse(writer, value):
    if type(value) is not Ros1Ur_msgsSetAnalogOutputResponse:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Ur_msgsSetAnalogOutputResponse(reader):
    _start = reader.position
    value = Ros1Ur_msgsSetAnalogOutputResponse()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Ur_msgsSetForceModeRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_msgs/SetForceModeRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_c148d6eb37258e10f5d16e76e41c334fc57a3d751c0c35c47be4cabf4c015a6b"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 207
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 335
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 335
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
    task_frame: _record_Ros1Geometry_msgsPoseStamped = _field(
        default_factory=lambda: Ros1Geometry_msgsPoseStamped()
    )
    selection_vector_x: _py_bool = False
    selection_vector_y: _py_bool = False
    selection_vector_z: _py_bool = False
    selection_vector_rx: _py_bool = False
    selection_vector_ry: _py_bool = False
    selection_vector_rz: _py_bool = False
    wrench: _record_Ros1Geometry_msgsWrench = _field(default_factory=lambda: Ros1Geometry_msgsWrench())
    type: _py_int = 0
    speed_limits: _record_Ros1Geometry_msgsTwist = _field(default_factory=lambda: Ros1Geometry_msgsTwist())
    deviation_limits: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    damping_factor: _py_float = 0.0
    gain_scaling: _py_float = 0.0

    def encode(self):
        writer = _Writer(335)
        _write_Ros1Ur_msgsSetForceModeRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 207, 335)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Ur_msgsSetForceModeRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 207, 335))
        value = _read_Ros1Ur_msgsSetForceModeRequest(reader)
        reader.end()
        return value


_record_Ros1Ur_msgsSetForceModeRequest = Ros1Ur_msgsSetForceModeRequest


def _write_Ros1Ur_msgsSetForceModeRequest(writer, value):
    if type(value) is not Ros1Ur_msgsSetForceModeRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.task_frame
    _write_Ros1Geometry_msgsPoseStamped(writer, _part0)
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
    _write_Ros1Geometry_msgsWrench(writer, _part7)
    _part8 = value.type
    writer.integer(_part8, 1, False)
    _part9 = value.speed_limits
    _write_Ros1Geometry_msgsTwist(writer, _part9)
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
    if not 207 <= len(writer.data) - _start <= 335:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Ur_msgsSetForceModeRequest(reader):
    _start = reader.position
    value = Ros1Ur_msgsSetForceModeRequest()
    value.task_frame = _read_Ros1Geometry_msgsPoseStamped(reader)
    value.selection_vector_x = _read_bool(reader)
    value.selection_vector_y = _read_bool(reader)
    value.selection_vector_z = _read_bool(reader)
    value.selection_vector_rx = _read_bool(reader)
    value.selection_vector_ry = _read_bool(reader)
    value.selection_vector_rz = _read_bool(reader)
    value.wrench = _read_Ros1Geometry_msgsWrench(reader)
    value.type = reader.integer(1, False)
    value.speed_limits = _read_Ros1Geometry_msgsTwist(reader)
    value.deviation_limits = [reader.f32() for _ in range(6)]
    value.damping_factor = reader.f32()
    value.gain_scaling = reader.f32()
    if not 207 <= reader.position - _start <= 335:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Ur_msgsSetForceModeResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_msgs/SetForceModeResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_bb1eeb0b38d81d642066bed1510245423f62d25983a2de89e985d1fd1932308c"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Ur_msgsSetForceModeResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Ur_msgsSetForceModeResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Ur_msgsSetForceModeResponse(reader)
        reader.end()
        return value


_record_Ros1Ur_msgsSetForceModeResponse = Ros1Ur_msgsSetForceModeResponse


def _write_Ros1Ur_msgsSetForceModeResponse(writer, value):
    if type(value) is not Ros1Ur_msgsSetForceModeResponse:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Ur_msgsSetForceModeResponse(reader):
    _start = reader.position
    value = Ros1Ur_msgsSetForceModeResponse()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Ur_msgsSetIORequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_msgs/SetIORequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_3dbd2f05686ddaac16b37dc8ec98303acb672d176be34fc906cf32f2d4cd1872"
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
        _write_Ros1Ur_msgsSetIORequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 6, 6)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Ur_msgsSetIORequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 6, 6))
        value = _read_Ros1Ur_msgsSetIORequest(reader)
        reader.end()
        return value


_record_Ros1Ur_msgsSetIORequest = Ros1Ur_msgsSetIORequest


def _write_Ros1Ur_msgsSetIORequest(writer, value):
    if type(value) is not Ros1Ur_msgsSetIORequest:
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


def _read_Ros1Ur_msgsSetIORequest(reader):
    _start = reader.position
    value = Ros1Ur_msgsSetIORequest()
    value.fun = reader.integer(1, True)
    value.pin = reader.integer(1, True)
    value.state = reader.f32()
    if not 6 <= reader.position - _start <= 6:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Ur_msgsSetIOResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_msgs/SetIOResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_7fc137aa3db3178a450b8b2396b7821c911c79656e52bf48814745c261aecf61"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Ur_msgsSetIOResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Ur_msgsSetIOResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Ur_msgsSetIOResponse(reader)
        reader.end()
        return value


_record_Ros1Ur_msgsSetIOResponse = Ros1Ur_msgsSetIOResponse


def _write_Ros1Ur_msgsSetIOResponse(writer, value):
    if type(value) is not Ros1Ur_msgsSetIOResponse:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Ur_msgsSetIOResponse(reader):
    _start = reader.position
    value = Ros1Ur_msgsSetIOResponse()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Ur_msgsSetPayloadRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_msgs/SetPayloadRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_63ae68b44ce6aaad37cbda779fb51dee78923df27c582b4aab4104b16a307ee3"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 28
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 28
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 28
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    mass: _py_float = 0.0
    center_of_gravity: _record_Ros1Geometry_msgsVector3 = _field(
        default_factory=lambda: Ros1Geometry_msgsVector3()
    )

    def encode(self):
        writer = _Writer(28)
        _write_Ros1Ur_msgsSetPayloadRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 28, 28)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Ur_msgsSetPayloadRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 28, 28))
        value = _read_Ros1Ur_msgsSetPayloadRequest(reader)
        reader.end()
        return value


_record_Ros1Ur_msgsSetPayloadRequest = Ros1Ur_msgsSetPayloadRequest


def _write_Ros1Ur_msgsSetPayloadRequest(writer, value):
    if type(value) is not Ros1Ur_msgsSetPayloadRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.mass
    writer.f32(_part0)
    _part1 = value.center_of_gravity
    _write_Ros1Geometry_msgsVector3(writer, _part1)
    if not 28 <= len(writer.data) - _start <= 28:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Ur_msgsSetPayloadRequest(reader):
    _start = reader.position
    value = Ros1Ur_msgsSetPayloadRequest()
    value.mass = reader.f32()
    value.center_of_gravity = _read_Ros1Geometry_msgsVector3(reader)
    if not 28 <= reader.position - _start <= 28:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Ur_msgsSetPayloadResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_msgs/SetPayloadResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_a3e991f1357f2d3017ccbb7636a6248e8774434d723f5f6c77ff251dd61fce73"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Ur_msgsSetPayloadResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Ur_msgsSetPayloadResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Ur_msgsSetPayloadResponse(reader)
        reader.end()
        return value


_record_Ros1Ur_msgsSetPayloadResponse = Ros1Ur_msgsSetPayloadResponse


def _write_Ros1Ur_msgsSetPayloadResponse(writer, value):
    if type(value) is not Ros1Ur_msgsSetPayloadResponse:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Ur_msgsSetPayloadResponse(reader):
    _start = reader.position
    value = Ros1Ur_msgsSetPayloadResponse()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Ur_msgsSetSpeedSliderFractionRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_msgs/SetSpeedSliderFractionRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_f192d6d655b2ed7725bf5afe6977a352870abfd4d07e0c3380a09d280a0a0a32"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    speed_slider_fraction: _py_float = 0.0

    def encode(self):
        writer = _Writer(8)
        _write_Ros1Ur_msgsSetSpeedSliderFractionRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 8)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Ur_msgsSetSpeedSliderFractionRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 8, 8))
        value = _read_Ros1Ur_msgsSetSpeedSliderFractionRequest(reader)
        reader.end()
        return value


_record_Ros1Ur_msgsSetSpeedSliderFractionRequest = Ros1Ur_msgsSetSpeedSliderFractionRequest


def _write_Ros1Ur_msgsSetSpeedSliderFractionRequest(writer, value):
    if type(value) is not Ros1Ur_msgsSetSpeedSliderFractionRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.speed_slider_fraction
    writer.f64(_part0)
    if not 8 <= len(writer.data) - _start <= 8:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Ur_msgsSetSpeedSliderFractionRequest(reader):
    _start = reader.position
    value = Ros1Ur_msgsSetSpeedSliderFractionRequest()
    value.speed_slider_fraction = reader.f64()
    if not 8 <= reader.position - _start <= 8:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Ur_msgsSetSpeedSliderFractionResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_msgs/SetSpeedSliderFractionResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_cb08c6758ce2eeeac93bc579d7895b19b84e74b7e2d19d87831023df579288b0"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Ur_msgsSetSpeedSliderFractionResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Ur_msgsSetSpeedSliderFractionResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Ur_msgsSetSpeedSliderFractionResponse(reader)
        reader.end()
        return value


_record_Ros1Ur_msgsSetSpeedSliderFractionResponse = Ros1Ur_msgsSetSpeedSliderFractionResponse


def _write_Ros1Ur_msgsSetSpeedSliderFractionResponse(writer, value):
    if type(value) is not Ros1Ur_msgsSetSpeedSliderFractionResponse:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Ur_msgsSetSpeedSliderFractionResponse(reader):
    _start = reader.position
    value = Ros1Ur_msgsSetSpeedSliderFractionResponse()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Ur_msgsToolDataMsg:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "ur_msgs/ToolDataMsg"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_1fad1aba069bc474306dc421a62950ffeb3a0837668f08a9adf41ac1bc2bb390"
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
        _write_Ros1Ur_msgsToolDataMsg(writer, self)
        wire = writer.finish()
        return _wire(wire, 32, 32)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Ur_msgsToolDataMsg:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 32, 32))
        value = _read_Ros1Ur_msgsToolDataMsg(reader)
        reader.end()
        return value


_record_Ros1Ur_msgsToolDataMsg = Ros1Ur_msgsToolDataMsg


def _write_Ros1Ur_msgsToolDataMsg(writer, value):
    if type(value) is not Ros1Ur_msgsToolDataMsg:
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


def _read_Ros1Ur_msgsToolDataMsg(reader):
    _start = reader.position
    value = Ros1Ur_msgsToolDataMsg()
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
