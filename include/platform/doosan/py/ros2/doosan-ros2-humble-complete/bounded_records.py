# @file bounded_records.py
# @brief Complete doosan values and adapters for the selected original interface catalog.
# @details Retain original field order, scalar widths, array capacities, string bounds, constants and declared
# defaults. Pure value access and canonical codecs create no native ROS allocation or resource grant. Transport
# roles require the separately admitted SDK owner.
# @see share/platform/doosan/domains/doosan-ros2-humble-complete.ir.json
# @see document/platform/doosan/en_US/README.md

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
class Ros2Dsr_msgs2ActionJogH2r_Goal:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/action/JogH2r_Goal"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_06245e203e3de9eab0c11ee37506291cbdfc285518b044d9874412a55a948031"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 10
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 10
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 10
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    jog_axis: _py_int = 0
    move_reference: _py_int = 0
    velocity: _py_float = 0.0

    def encode(self):
        writer = _Writer(10)
        _write_Ros2Dsr_msgs2ActionJogH2r_Goal(writer, self)
        wire = writer.finish()
        return _wire(wire, 10, 10)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2ActionJogH2r_Goal:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 10, 10))
        value = _read_Ros2Dsr_msgs2ActionJogH2r_Goal(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2ActionJogH2r_Goal = Ros2Dsr_msgs2ActionJogH2r_Goal


def _write_Ros2Dsr_msgs2ActionJogH2r_Goal(writer, value):
    if type(value) is not Ros2Dsr_msgs2ActionJogH2r_Goal:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.jog_axis
    writer.integer(_part0, 1, True)
    _part1 = value.move_reference
    writer.integer(_part1, 1, True)
    _part2 = value.velocity
    writer.f64(_part2)
    if not 10 <= len(writer.data) - _start <= 10:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2ActionJogH2r_Goal(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2ActionJogH2r_Goal()
    value.jog_axis = reader.integer(1, True)
    value.move_reference = reader.integer(1, True)
    value.velocity = reader.f64()
    if not 10 <= reader.position - _start <= 10:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2ActionJogH2r_Result:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/action/JogH2r_Result"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_79b337d3246b2761333d4d9538c137e41a9b795b9ae0fcf8a3a95f9919cd9f32"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2ActionJogH2r_Result(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2ActionJogH2r_Result:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2ActionJogH2r_Result(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2ActionJogH2r_Result = Ros2Dsr_msgs2ActionJogH2r_Result


def _write_Ros2Dsr_msgs2ActionJogH2r_Result(writer, value):
    if type(value) is not Ros2Dsr_msgs2ActionJogH2r_Result:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2ActionJogH2r_Result(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2ActionJogH2r_Result()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2ActionJogH2r_Feedback:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/action/JogH2r_Feedback"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_ec4a775b8e986378d1064390512a267cc4ee1a43489b64ab3faed57a88184c8b"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 48
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 48
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 48
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    pos: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])

    def encode(self):
        writer = _Writer(48)
        _write_Ros2Dsr_msgs2ActionJogH2r_Feedback(writer, self)
        wire = writer.finish()
        return _wire(wire, 48, 48)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2ActionJogH2r_Feedback:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 48, 48))
        value = _read_Ros2Dsr_msgs2ActionJogH2r_Feedback(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2ActionJogH2r_Feedback = Ros2Dsr_msgs2ActionJogH2r_Feedback


def _write_Ros2Dsr_msgs2ActionJogH2r_Feedback(writer, value):
    if type(value) is not Ros2Dsr_msgs2ActionJogH2r_Feedback:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.pos
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count0):
        _element = _part0[_index]
        writer.f64(_element)
    if not 48 <= len(writer.data) - _start <= 48:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2ActionJogH2r_Feedback(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2ActionJogH2r_Feedback()
    value.pos = [reader.f64() for _ in range(6)]
    if not 48 <= reader.position - _start <= 48:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2ActionMovejH2r_Goal:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/action/MovejH2r_Goal"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_1f500b1d55e67e54b564236307f6761a74d79887ab35c4733cd741f480d7d0dc"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 144
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 144
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 144
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    target_pos: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    target_vel: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    target_acc: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])

    def encode(self):
        writer = _Writer(144)
        _write_Ros2Dsr_msgs2ActionMovejH2r_Goal(writer, self)
        wire = writer.finish()
        return _wire(wire, 144, 144)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2ActionMovejH2r_Goal:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 144, 144))
        value = _read_Ros2Dsr_msgs2ActionMovejH2r_Goal(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2ActionMovejH2r_Goal = Ros2Dsr_msgs2ActionMovejH2r_Goal


def _write_Ros2Dsr_msgs2ActionMovejH2r_Goal(writer, value):
    if type(value) is not Ros2Dsr_msgs2ActionMovejH2r_Goal:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.target_pos
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count0):
        _element = _part0[_index]
        writer.f64(_element)
    _part1 = value.target_vel
    if type(_part1) not in (list, tuple):
        raise TypeError("array value required")
    _count1 = len(_part1)
    if _count1 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count1):
        _element = _part1[_index]
        writer.f64(_element)
    _part2 = value.target_acc
    if type(_part2) not in (list, tuple):
        raise TypeError("array value required")
    _count2 = len(_part2)
    if _count2 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count2):
        _element = _part2[_index]
        writer.f64(_element)
    if not 144 <= len(writer.data) - _start <= 144:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2ActionMovejH2r_Goal(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2ActionMovejH2r_Goal()
    value.target_pos = [reader.f64() for _ in range(6)]
    value.target_vel = [reader.f64() for _ in range(6)]
    value.target_acc = [reader.f64() for _ in range(6)]
    if not 144 <= reader.position - _start <= 144:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2ActionMovejH2r_Result:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/action/MovejH2r_Result"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_9055b94a2148571ab9cf3edd50625e2c49697bcab7827d3d6520281e3af3fc51"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2ActionMovejH2r_Result(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2ActionMovejH2r_Result:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2ActionMovejH2r_Result(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2ActionMovejH2r_Result = Ros2Dsr_msgs2ActionMovejH2r_Result


def _write_Ros2Dsr_msgs2ActionMovejH2r_Result(writer, value):
    if type(value) is not Ros2Dsr_msgs2ActionMovejH2r_Result:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2ActionMovejH2r_Result(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2ActionMovejH2r_Result()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2ActionMovejH2r_Feedback:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/action/MovejH2r_Feedback"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_a300a02e724a0d402966787cd8ce0fc3bef26d8d2e53157d2a29cad55406fd9e"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 48
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 48
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 48
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    pos: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])

    def encode(self):
        writer = _Writer(48)
        _write_Ros2Dsr_msgs2ActionMovejH2r_Feedback(writer, self)
        wire = writer.finish()
        return _wire(wire, 48, 48)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2ActionMovejH2r_Feedback:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 48, 48))
        value = _read_Ros2Dsr_msgs2ActionMovejH2r_Feedback(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2ActionMovejH2r_Feedback = Ros2Dsr_msgs2ActionMovejH2r_Feedback


def _write_Ros2Dsr_msgs2ActionMovejH2r_Feedback(writer, value):
    if type(value) is not Ros2Dsr_msgs2ActionMovejH2r_Feedback:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.pos
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count0):
        _element = _part0[_index]
        writer.f64(_element)
    if not 48 <= len(writer.data) - _start <= 48:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2ActionMovejH2r_Feedback(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2ActionMovejH2r_Feedback()
    value.pos = [reader.f64() for _ in range(6)]
    if not 48 <= reader.position - _start <= 48:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2ActionMovelH2r_Goal:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/action/MovelH2r_Goal"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_e1e2a6cd46247b347002d41f062949ab869c6bd84c305cd951cb5fb32ffe7d9c"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 80
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 80
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 80
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    target_pos: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    target_vel: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(2)])
    target_acc: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(2)])

    def encode(self):
        writer = _Writer(80)
        _write_Ros2Dsr_msgs2ActionMovelH2r_Goal(writer, self)
        wire = writer.finish()
        return _wire(wire, 80, 80)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2ActionMovelH2r_Goal:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 80, 80))
        value = _read_Ros2Dsr_msgs2ActionMovelH2r_Goal(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2ActionMovelH2r_Goal = Ros2Dsr_msgs2ActionMovelH2r_Goal


def _write_Ros2Dsr_msgs2ActionMovelH2r_Goal(writer, value):
    if type(value) is not Ros2Dsr_msgs2ActionMovelH2r_Goal:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.target_pos
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count0):
        _element = _part0[_index]
        writer.f64(_element)
    _part1 = value.target_vel
    if type(_part1) not in (list, tuple):
        raise TypeError("array value required")
    _count1 = len(_part1)
    if _count1 != 2:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count1):
        _element = _part1[_index]
        writer.f64(_element)
    _part2 = value.target_acc
    if type(_part2) not in (list, tuple):
        raise TypeError("array value required")
    _count2 = len(_part2)
    if _count2 != 2:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count2):
        _element = _part2[_index]
        writer.f64(_element)
    if not 80 <= len(writer.data) - _start <= 80:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2ActionMovelH2r_Goal(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2ActionMovelH2r_Goal()
    value.target_pos = [reader.f64() for _ in range(6)]
    value.target_vel = [reader.f64() for _ in range(2)]
    value.target_acc = [reader.f64() for _ in range(2)]
    if not 80 <= reader.position - _start <= 80:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2ActionMovelH2r_Result:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/action/MovelH2r_Result"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_0daf4123fb4d7b06d11b3d47f1b5881357aa840e37e2adc84e46dd97d2c062dd"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2ActionMovelH2r_Result(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2ActionMovelH2r_Result:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2ActionMovelH2r_Result(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2ActionMovelH2r_Result = Ros2Dsr_msgs2ActionMovelH2r_Result


def _write_Ros2Dsr_msgs2ActionMovelH2r_Result(writer, value):
    if type(value) is not Ros2Dsr_msgs2ActionMovelH2r_Result:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2ActionMovelH2r_Result(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2ActionMovelH2r_Result()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2ActionMovelH2r_Feedback:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/action/MovelH2r_Feedback"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_e67cb580a7c20e9f69813a44eeb8cce45cffc8292dbd895c210b3a46937e745a"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 48
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 48
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 48
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    pos: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])

    def encode(self):
        writer = _Writer(48)
        _write_Ros2Dsr_msgs2ActionMovelH2r_Feedback(writer, self)
        wire = writer.finish()
        return _wire(wire, 48, 48)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2ActionMovelH2r_Feedback:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 48, 48))
        value = _read_Ros2Dsr_msgs2ActionMovelH2r_Feedback(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2ActionMovelH2r_Feedback = Ros2Dsr_msgs2ActionMovelH2r_Feedback


def _write_Ros2Dsr_msgs2ActionMovelH2r_Feedback(writer, value):
    if type(value) is not Ros2Dsr_msgs2ActionMovelH2r_Feedback:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.pos
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count0):
        _element = _part0[_index]
        writer.f64(_element)
    if not 48 <= len(writer.data) - _start <= 48:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2ActionMovelH2r_Feedback(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2ActionMovelH2r_Feedback()
    value.pos = [reader.f64() for _ in range(6)]
    if not 48 <= reader.position - _start <= 48:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2MsgAlterMotionStream:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/msg/AlterMotionStream"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_42cda028849d2f3c24dddf69907122eeaccc19ab595150b0c4bfa9a6c4b37200"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 48
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 48
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 48
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    pos: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])

    def encode(self):
        writer = _Writer(48)
        _write_Ros2Dsr_msgs2MsgAlterMotionStream(writer, self)
        wire = writer.finish()
        return _wire(wire, 48, 48)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2MsgAlterMotionStream:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 48, 48))
        value = _read_Ros2Dsr_msgs2MsgAlterMotionStream(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2MsgAlterMotionStream = Ros2Dsr_msgs2MsgAlterMotionStream


def _write_Ros2Dsr_msgs2MsgAlterMotionStream(writer, value):
    if type(value) is not Ros2Dsr_msgs2MsgAlterMotionStream:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.pos
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count0):
        _element = _part0[_index]
        writer.f64(_element)
    if not 48 <= len(writer.data) - _start <= 48:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2MsgAlterMotionStream(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2MsgAlterMotionStream()
    value.pos = [reader.f64() for _ in range(6)]
    if not 48 <= reader.position - _start <= 48:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2MsgJogMultiAxis:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/msg/JogMultiAxis"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_1abbca14f7ca912b0d1a3ff2eac2414268b78e10380d8eac9e231f79f26ce07e"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 57
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 57
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 57
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    jog_axis: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    move_reference: _py_int = 0
    speed: _py_float = 0.0

    def encode(self):
        writer = _Writer(57)
        _write_Ros2Dsr_msgs2MsgJogMultiAxis(writer, self)
        wire = writer.finish()
        return _wire(wire, 57, 57)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2MsgJogMultiAxis:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 57, 57))
        value = _read_Ros2Dsr_msgs2MsgJogMultiAxis(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2MsgJogMultiAxis = Ros2Dsr_msgs2MsgJogMultiAxis


def _write_Ros2Dsr_msgs2MsgJogMultiAxis(writer, value):
    if type(value) is not Ros2Dsr_msgs2MsgJogMultiAxis:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.jog_axis
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count0):
        _element = _part0[_index]
        writer.f64(_element)
    _part1 = value.move_reference
    writer.integer(_part1, 1, True)
    _part2 = value.speed
    writer.f64(_part2)
    if not 57 <= len(writer.data) - _start <= 57:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2MsgJogMultiAxis(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2MsgJogMultiAxis()
    value.jog_axis = [reader.f64() for _ in range(6)]
    value.move_reference = reader.integer(1, True)
    value.speed = reader.f64()
    if not 57 <= reader.position - _start <= 57:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2MsgLogAlarm:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/msg/LogAlarm"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_d35d6f6098edff03d2568f14471db88ea998873ba4a04794750f7134825e2bfe"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 24
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 792
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 792
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    level: _py_int = 0
    group: _py_int = 0
    index: _py_int = 0
    param: _py_list[_py_str] = _field(default_factory=lambda: ["" for _ in range(3)])

    def encode(self):
        writer = _Writer(792)
        _write_Ros2Dsr_msgs2MsgLogAlarm(writer, self)
        wire = writer.finish()
        return _wire(wire, 24, 792)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2MsgLogAlarm:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 24, 792))
        value = _read_Ros2Dsr_msgs2MsgLogAlarm(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2MsgLogAlarm = Ros2Dsr_msgs2MsgLogAlarm


def _write_Ros2Dsr_msgs2MsgLogAlarm(writer, value):
    if type(value) is not Ros2Dsr_msgs2MsgLogAlarm:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.level
    writer.integer(_part0, 4, True)
    _part1 = value.group
    writer.integer(_part1, 4, True)
    _part2 = value.index
    writer.integer(_part2, 4, True)
    _part3 = value.param
    if type(_part3) not in (list, tuple):
        raise TypeError("array value required")
    _count3 = len(_part3)
    if _count3 != 3:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count3):
        _element = _part3[_index]
        _write_text(writer, _element, 256)
    if not 24 <= len(writer.data) - _start <= 792:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2MsgLogAlarm(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2MsgLogAlarm()
    value.level = reader.integer(4, True)
    value.group = reader.integer(4, True)
    value.index = reader.integer(4, True)
    value.param = [_read_text(reader, 256) for _ in range(3)]
    if not 24 <= reader.position - _start <= 792:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2MsgModbusState:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/msg/ModbusState"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_b5648e70b313800a6b18e809d0950f53c538d2647ff67fd3884cce728f3be765"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 264
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 264
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    modbus_symbol: _py_str = ""
    modbus_value: _py_int = 0

    def encode(self):
        writer = _Writer(264)
        _write_Ros2Dsr_msgs2MsgModbusState(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 264)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2MsgModbusState:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 8, 264))
        value = _read_Ros2Dsr_msgs2MsgModbusState(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2MsgModbusState = Ros2Dsr_msgs2MsgModbusState


def _write_Ros2Dsr_msgs2MsgModbusState(writer, value):
    if type(value) is not Ros2Dsr_msgs2MsgModbusState:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.modbus_symbol
    _write_text(writer, _part0, 256)
    _part1 = value.modbus_value
    writer.integer(_part1, 4, True)
    if not 8 <= len(writer.data) - _start <= 264:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2MsgModbusState(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2MsgModbusState()
    value.modbus_symbol = _read_text(reader, 256)
    value.modbus_value = reader.integer(4, True)
    if not 8 <= reader.position - _start <= 264:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2MsgRobotDisconnection:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/msg/RobotDisconnection"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_d686889739e672509dee7fc8538cddd634e536f392709b7bdcc0572c755c65c4"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros2Dsr_msgs2MsgRobotDisconnection(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2MsgRobotDisconnection:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros2Dsr_msgs2MsgRobotDisconnection(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2MsgRobotDisconnection = Ros2Dsr_msgs2MsgRobotDisconnection


def _write_Ros2Dsr_msgs2MsgRobotDisconnection(writer, value):
    if type(value) is not Ros2Dsr_msgs2MsgRobotDisconnection:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros2Dsr_msgs2MsgRobotDisconnection(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2MsgRobotDisconnection()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2MsgRobotError:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/msg/RobotError"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_5c628814ad82c181ce0eae34fe89fb384169bfecbdeed07bddb2318a4e3c5a67"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 24
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 792
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 792
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    level: _py_int = 0
    group: _py_int = 0
    code: _py_int = 0
    msg1: _py_str = ""
    msg2: _py_str = ""
    msg3: _py_str = ""

    def encode(self):
        writer = _Writer(792)
        _write_Ros2Dsr_msgs2MsgRobotError(writer, self)
        wire = writer.finish()
        return _wire(wire, 24, 792)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2MsgRobotError:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 24, 792))
        value = _read_Ros2Dsr_msgs2MsgRobotError(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2MsgRobotError = Ros2Dsr_msgs2MsgRobotError


def _write_Ros2Dsr_msgs2MsgRobotError(writer, value):
    if type(value) is not Ros2Dsr_msgs2MsgRobotError:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.level
    writer.integer(_part0, 4, True)
    _part1 = value.group
    writer.integer(_part1, 4, True)
    _part2 = value.code
    writer.integer(_part2, 4, True)
    _part3 = value.msg1
    _write_text(writer, _part3, 256)
    _part4 = value.msg2
    _write_text(writer, _part4, 256)
    _part5 = value.msg3
    _write_text(writer, _part5, 256)
    if not 24 <= len(writer.data) - _start <= 792:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2MsgRobotError(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2MsgRobotError()
    value.level = reader.integer(4, True)
    value.group = reader.integer(4, True)
    value.code = reader.integer(4, True)
    value.msg1 = _read_text(reader, 256)
    value.msg2 = _read_text(reader, 256)
    value.msg3 = _read_text(reader, 256)
    if not 24 <= reader.position - _start <= 792:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Std_msgsMsgMultiArrayDimension:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "std_msgs/msg/MultiArrayDimension"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_be0694d8fef4d71a5afd7072b14b9f246464e4c3a8dbbfb21ef22c32296c2f73"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 76
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 76
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    label: _py_str = ""
    size: _py_int = 0
    stride: _py_int = 0

    def encode(self):
        writer = _Writer(76)
        _write_Ros2Std_msgsMsgMultiArrayDimension(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 76)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Std_msgsMsgMultiArrayDimension:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 12, 76))
        value = _read_Ros2Std_msgsMsgMultiArrayDimension(reader)
        reader.end()
        return value


_record_Ros2Std_msgsMsgMultiArrayDimension = Ros2Std_msgsMsgMultiArrayDimension


def _write_Ros2Std_msgsMsgMultiArrayDimension(writer, value):
    if type(value) is not Ros2Std_msgsMsgMultiArrayDimension:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.label
    _write_text(writer, _part0, 64)
    _part1 = value.size
    writer.integer(_part1, 4, False)
    _part2 = value.stride
    writer.integer(_part2, 4, False)
    if not 12 <= len(writer.data) - _start <= 76:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Std_msgsMsgMultiArrayDimension(reader):
    _start = reader.position
    value = Ros2Std_msgsMsgMultiArrayDimension()
    value.label = _read_text(reader, 64)
    value.size = reader.integer(4, False)
    value.stride = reader.integer(4, False)
    if not 12 <= reader.position - _start <= 76:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Std_msgsMsgMultiArrayLayout:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "std_msgs/msg/MultiArrayLayout"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_d1b6f03846800e7c6672b48f3585ad43cbccb4f2d892a4bc986e2df00667b392"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 236
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 236
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    dim: _py_list[_record_Ros2Std_msgsMsgMultiArrayDimension] = _field(default_factory=lambda: [])
    data_offset: _py_int = 0

    def encode(self):
        writer = _Writer(236)
        _write_Ros2Std_msgsMsgMultiArrayLayout(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 236)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Std_msgsMsgMultiArrayLayout:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 8, 236))
        value = _read_Ros2Std_msgsMsgMultiArrayLayout(reader)
        reader.end()
        return value


_record_Ros2Std_msgsMsgMultiArrayLayout = Ros2Std_msgsMsgMultiArrayLayout


def _write_Ros2Std_msgsMsgMultiArrayLayout(writer, value):
    if type(value) is not Ros2Std_msgsMsgMultiArrayLayout:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.dim
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 > 3:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count0, 4)
    for _index in range(_count0):
        _element = _part0[_index]
        _write_Ros2Std_msgsMsgMultiArrayDimension(writer, _element)
    _part1 = value.data_offset
    writer.integer(_part1, 4, False)
    if not 8 <= len(writer.data) - _start <= 236:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Std_msgsMsgMultiArrayLayout(reader):
    _start = reader.position
    value = Ros2Std_msgsMsgMultiArrayLayout()
    value.dim = [_read_Ros2Std_msgsMsgMultiArrayDimension(reader) for _ in range(_read_count(reader, 3, 12))]
    value.data_offset = reader.integer(4, False)
    if not 8 <= reader.position - _start <= 236:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Std_msgsMsgFloat64MultiArray:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "std_msgs/msg/Float64MultiArray"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_9a214c31604613d6d1ebba644301f686ad3dff1a7a6c1005540ae0062d924f95"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 368
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 368
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    layout: _record_Ros2Std_msgsMsgMultiArrayLayout = _field(
        default_factory=lambda: Ros2Std_msgsMsgMultiArrayLayout()
    )
    data: _py_list[_py_float] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(368)
        _write_Ros2Std_msgsMsgFloat64MultiArray(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 368)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Std_msgsMsgFloat64MultiArray:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 12, 368))
        value = _read_Ros2Std_msgsMsgFloat64MultiArray(reader)
        reader.end()
        return value


_record_Ros2Std_msgsMsgFloat64MultiArray = Ros2Std_msgsMsgFloat64MultiArray


def _write_Ros2Std_msgsMsgFloat64MultiArray(writer, value):
    if type(value) is not Ros2Std_msgsMsgFloat64MultiArray:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.layout
    _write_Ros2Std_msgsMsgMultiArrayLayout(writer, _part0)
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
    if not 12 <= len(writer.data) - _start <= 368:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Std_msgsMsgFloat64MultiArray(reader):
    _start = reader.position
    value = Ros2Std_msgsMsgFloat64MultiArray()
    value.layout = _read_Ros2Std_msgsMsgMultiArrayLayout(reader)
    value.data = [reader.f64() for _ in range(_read_count(reader, 16, 8))]
    if not 12 <= reader.position - _start <= 368:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2MsgRobotState:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/msg/RobotState"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_e705618c8be95896187c604e77324a4e8373df20b89819a7f94abf995eb93942"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1484
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 17004
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 17004
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    robot_state: _py_int = 0
    robot_state_str: _py_str = ""
    actual_mode: _py_int = 0
    actual_space: _py_int = 0
    current_posj: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    current_velj: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    joint_abs: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    joint_err: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    target_posj: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    target_velj: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    current_posx: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    current_tool_posx: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    current_velx: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    task_err: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    target_velx: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    target_posx: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    dynamic_tor: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    actual_jts: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    actual_ejt: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    actual_ett: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    actual_bk: _py_list[_py_int] = _field(default_factory=lambda: [0 for _ in range(6)])
    actual_mc: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    actual_mt: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    solution_space: _py_int = 0
    sync_time: _py_float = 0.0
    actual_bt: _py_list[_py_int] = _field(default_factory=lambda: [0 for _ in range(5)])
    rotation_matrix: _py_list[_record_Ros2Std_msgsMsgFloat64MultiArray] = _field(default_factory=lambda: [])
    ctrlbox_digital_input: _py_list[_py_int] = _field(default_factory=lambda: [0 for _ in range(16)])
    ctrlbox_digital_output: _py_list[_py_int] = _field(default_factory=lambda: [0 for _ in range(16)])
    flange_digital_input: _py_list[_py_int] = _field(default_factory=lambda: [0 for _ in range(6)])
    flange_digital_output: _py_list[_py_int] = _field(default_factory=lambda: [0 for _ in range(6)])
    modbus_state: _py_list[_record_Ros2Dsr_msgs2MsgModbusState] = _field(default_factory=lambda: [])
    access_control: _py_int = 0
    homming_completed: _py_bool = False
    tp_initialized: _py_bool = False
    mastering_need: _py_int = 0
    drl_stopped: _py_bool = False
    disconnected: _py_bool = False
    f_actual_w2b: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    f_current_pos_world: _py_list[_record_Ros2Std_msgsMsgFloat64MultiArray] = _field(
        default_factory=lambda: []
    )
    f_current_vel_world: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    f_world_ext_target_torque: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    f_target_pos_world: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    f_target_vel_world: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    f_rotation_matrix_world: _py_list[_record_Ros2Std_msgsMsgFloat64MultiArray] = _field(
        default_factory=lambda: []
    )
    i_actual_user_coord_num: _py_int = 0
    i_coord_ref: _py_int = 0
    f_current_pos_user: _py_list[_record_Ros2Std_msgsMsgFloat64MultiArray] = _field(
        default_factory=lambda: []
    )
    f_current_vel_user: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    f_user_ext_task_torque: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    f_target_pos_user: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    f_target_vel_user: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    f_rotation_matrix_user: _py_list[_record_Ros2Std_msgsMsgFloat64MultiArray] = _field(
        default_factory=lambda: []
    )
    f_actual_analog_input: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    b_actual_switch_input: _py_list[_py_bool] = _field(default_factory=lambda: [False for _ in range(3)])
    b_actual_safety_input: _py_list[_py_bool] = _field(default_factory=lambda: [False for _ in range(2)])
    i_actual_analog_input_type: _py_list[_py_int] = _field(default_factory=lambda: [0 for _ in range(2)])
    f_target_analog_output: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(2)])
    i_target_analog_output_type: _py_list[_py_int] = _field(default_factory=lambda: [0 for _ in range(2)])
    b_actual_encorder_strove_signal: _py_list[_py_bool] = _field(
        default_factory=lambda: [False for _ in range(2)]
    )
    i_actual_encorder_raw_data: _py_list[_py_int] = _field(default_factory=lambda: [0 for _ in range(2)])
    b_actual_encorder_reset_signal: _py_list[_py_bool] = _field(
        default_factory=lambda: [False for _ in range(2)]
    )

    def encode(self):
        writer = _Writer(17004)
        _write_Ros2Dsr_msgs2MsgRobotState(writer, self)
        wire = writer.finish()
        return _wire(wire, 1484, 17004)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2MsgRobotState:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1484, 17004))
        value = _read_Ros2Dsr_msgs2MsgRobotState(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2MsgRobotState = Ros2Dsr_msgs2MsgRobotState


def _write_Ros2Dsr_msgs2MsgRobotState(writer, value):
    if type(value) is not Ros2Dsr_msgs2MsgRobotState:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.robot_state
    writer.integer(_part0, 4, True)
    _part1 = value.robot_state_str
    _write_text(writer, _part1, 256)
    _part2 = value.actual_mode
    writer.integer(_part2, 1, True)
    _part3 = value.actual_space
    writer.integer(_part3, 1, True)
    _part4 = value.current_posj
    if type(_part4) not in (list, tuple):
        raise TypeError("array value required")
    _count4 = len(_part4)
    if _count4 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count4):
        _element = _part4[_index]
        writer.f64(_element)
    _part5 = value.current_velj
    if type(_part5) not in (list, tuple):
        raise TypeError("array value required")
    _count5 = len(_part5)
    if _count5 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count5):
        _element = _part5[_index]
        writer.f64(_element)
    _part6 = value.joint_abs
    if type(_part6) not in (list, tuple):
        raise TypeError("array value required")
    _count6 = len(_part6)
    if _count6 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count6):
        _element = _part6[_index]
        writer.f64(_element)
    _part7 = value.joint_err
    if type(_part7) not in (list, tuple):
        raise TypeError("array value required")
    _count7 = len(_part7)
    if _count7 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count7):
        _element = _part7[_index]
        writer.f64(_element)
    _part8 = value.target_posj
    if type(_part8) not in (list, tuple):
        raise TypeError("array value required")
    _count8 = len(_part8)
    if _count8 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count8):
        _element = _part8[_index]
        writer.f64(_element)
    _part9 = value.target_velj
    if type(_part9) not in (list, tuple):
        raise TypeError("array value required")
    _count9 = len(_part9)
    if _count9 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count9):
        _element = _part9[_index]
        writer.f64(_element)
    _part10 = value.current_posx
    if type(_part10) not in (list, tuple):
        raise TypeError("array value required")
    _count10 = len(_part10)
    if _count10 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count10):
        _element = _part10[_index]
        writer.f64(_element)
    _part11 = value.current_tool_posx
    if type(_part11) not in (list, tuple):
        raise TypeError("array value required")
    _count11 = len(_part11)
    if _count11 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count11):
        _element = _part11[_index]
        writer.f64(_element)
    _part12 = value.current_velx
    if type(_part12) not in (list, tuple):
        raise TypeError("array value required")
    _count12 = len(_part12)
    if _count12 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count12):
        _element = _part12[_index]
        writer.f64(_element)
    _part13 = value.task_err
    if type(_part13) not in (list, tuple):
        raise TypeError("array value required")
    _count13 = len(_part13)
    if _count13 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count13):
        _element = _part13[_index]
        writer.f64(_element)
    _part14 = value.target_velx
    if type(_part14) not in (list, tuple):
        raise TypeError("array value required")
    _count14 = len(_part14)
    if _count14 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count14):
        _element = _part14[_index]
        writer.f64(_element)
    _part15 = value.target_posx
    if type(_part15) not in (list, tuple):
        raise TypeError("array value required")
    _count15 = len(_part15)
    if _count15 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count15):
        _element = _part15[_index]
        writer.f64(_element)
    _part16 = value.dynamic_tor
    if type(_part16) not in (list, tuple):
        raise TypeError("array value required")
    _count16 = len(_part16)
    if _count16 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count16):
        _element = _part16[_index]
        writer.f64(_element)
    _part17 = value.actual_jts
    if type(_part17) not in (list, tuple):
        raise TypeError("array value required")
    _count17 = len(_part17)
    if _count17 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count17):
        _element = _part17[_index]
        writer.f64(_element)
    _part18 = value.actual_ejt
    if type(_part18) not in (list, tuple):
        raise TypeError("array value required")
    _count18 = len(_part18)
    if _count18 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count18):
        _element = _part18[_index]
        writer.f64(_element)
    _part19 = value.actual_ett
    if type(_part19) not in (list, tuple):
        raise TypeError("array value required")
    _count19 = len(_part19)
    if _count19 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count19):
        _element = _part19[_index]
        writer.f64(_element)
    _part20 = value.actual_bk
    if type(_part20) not in (list, tuple):
        raise TypeError("array value required")
    _count20 = len(_part20)
    if _count20 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count20):
        _element = _part20[_index]
        writer.integer(_element, 1, True)
    _part21 = value.actual_mc
    if type(_part21) not in (list, tuple):
        raise TypeError("array value required")
    _count21 = len(_part21)
    if _count21 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count21):
        _element = _part21[_index]
        writer.f64(_element)
    _part22 = value.actual_mt
    if type(_part22) not in (list, tuple):
        raise TypeError("array value required")
    _count22 = len(_part22)
    if _count22 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count22):
        _element = _part22[_index]
        writer.f64(_element)
    _part23 = value.solution_space
    writer.integer(_part23, 1, True)
    _part24 = value.sync_time
    writer.f64(_part24)
    _part25 = value.actual_bt
    if type(_part25) not in (list, tuple):
        raise TypeError("array value required")
    _count25 = len(_part25)
    if _count25 != 5:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count25):
        _element = _part25[_index]
        writer.integer(_element, 1, True)
    _part26 = value.rotation_matrix
    if type(_part26) not in (list, tuple):
        raise TypeError("array value required")
    _count26 = len(_part26)
    if _count26 > 6:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count26, 4)
    for _index in range(_count26):
        _element = _part26[_index]
        _write_Ros2Std_msgsMsgFloat64MultiArray(writer, _element)
    _part27 = value.ctrlbox_digital_input
    if type(_part27) not in (list, tuple):
        raise TypeError("array value required")
    _count27 = len(_part27)
    if _count27 != 16:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count27):
        _element = _part27[_index]
        writer.integer(_element, 1, True)
    _part28 = value.ctrlbox_digital_output
    if type(_part28) not in (list, tuple):
        raise TypeError("array value required")
    _count28 = len(_part28)
    if _count28 != 16:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count28):
        _element = _part28[_index]
        writer.integer(_element, 1, True)
    _part29 = value.flange_digital_input
    if type(_part29) not in (list, tuple):
        raise TypeError("array value required")
    _count29 = len(_part29)
    if _count29 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count29):
        _element = _part29[_index]
        writer.integer(_element, 1, True)
    _part30 = value.flange_digital_output
    if type(_part30) not in (list, tuple):
        raise TypeError("array value required")
    _count30 = len(_part30)
    if _count30 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count30):
        _element = _part30[_index]
        writer.integer(_element, 1, True)
    _part31 = value.modbus_state
    if type(_part31) not in (list, tuple):
        raise TypeError("array value required")
    _count31 = len(_part31)
    if _count31 > 16:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count31, 4)
    for _index in range(_count31):
        _element = _part31[_index]
        _write_Ros2Dsr_msgs2MsgModbusState(writer, _element)
    _part32 = value.access_control
    writer.integer(_part32, 4, True)
    _part33 = value.homming_completed
    if type(_part33) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part33), 1)
    _part34 = value.tp_initialized
    if type(_part34) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part34), 1)
    _part35 = value.mastering_need
    writer.integer(_part35, 1, True)
    _part36 = value.drl_stopped
    if type(_part36) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part36), 1)
    _part37 = value.disconnected
    if type(_part37) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part37), 1)
    _part38 = value.f_actual_w2b
    if type(_part38) not in (list, tuple):
        raise TypeError("array value required")
    _count38 = len(_part38)
    if _count38 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count38):
        _element = _part38[_index]
        writer.f64(_element)
    _part39 = value.f_current_pos_world
    if type(_part39) not in (list, tuple):
        raise TypeError("array value required")
    _count39 = len(_part39)
    if _count39 > 6:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count39, 4)
    for _index in range(_count39):
        _element = _part39[_index]
        _write_Ros2Std_msgsMsgFloat64MultiArray(writer, _element)
    _part40 = value.f_current_vel_world
    if type(_part40) not in (list, tuple):
        raise TypeError("array value required")
    _count40 = len(_part40)
    if _count40 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count40):
        _element = _part40[_index]
        writer.f64(_element)
    _part41 = value.f_world_ext_target_torque
    if type(_part41) not in (list, tuple):
        raise TypeError("array value required")
    _count41 = len(_part41)
    if _count41 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count41):
        _element = _part41[_index]
        writer.f64(_element)
    _part42 = value.f_target_pos_world
    if type(_part42) not in (list, tuple):
        raise TypeError("array value required")
    _count42 = len(_part42)
    if _count42 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count42):
        _element = _part42[_index]
        writer.f64(_element)
    _part43 = value.f_target_vel_world
    if type(_part43) not in (list, tuple):
        raise TypeError("array value required")
    _count43 = len(_part43)
    if _count43 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count43):
        _element = _part43[_index]
        writer.f64(_element)
    _part44 = value.f_rotation_matrix_world
    if type(_part44) not in (list, tuple):
        raise TypeError("array value required")
    _count44 = len(_part44)
    if _count44 > 6:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count44, 4)
    for _index in range(_count44):
        _element = _part44[_index]
        _write_Ros2Std_msgsMsgFloat64MultiArray(writer, _element)
    _part45 = value.i_actual_user_coord_num
    writer.integer(_part45, 1, True)
    _part46 = value.i_coord_ref
    writer.integer(_part46, 1, True)
    _part47 = value.f_current_pos_user
    if type(_part47) not in (list, tuple):
        raise TypeError("array value required")
    _count47 = len(_part47)
    if _count47 > 6:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count47, 4)
    for _index in range(_count47):
        _element = _part47[_index]
        _write_Ros2Std_msgsMsgFloat64MultiArray(writer, _element)
    _part48 = value.f_current_vel_user
    if type(_part48) not in (list, tuple):
        raise TypeError("array value required")
    _count48 = len(_part48)
    if _count48 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count48):
        _element = _part48[_index]
        writer.f64(_element)
    _part49 = value.f_user_ext_task_torque
    if type(_part49) not in (list, tuple):
        raise TypeError("array value required")
    _count49 = len(_part49)
    if _count49 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count49):
        _element = _part49[_index]
        writer.f64(_element)
    _part50 = value.f_target_pos_user
    if type(_part50) not in (list, tuple):
        raise TypeError("array value required")
    _count50 = len(_part50)
    if _count50 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count50):
        _element = _part50[_index]
        writer.f64(_element)
    _part51 = value.f_target_vel_user
    if type(_part51) not in (list, tuple):
        raise TypeError("array value required")
    _count51 = len(_part51)
    if _count51 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count51):
        _element = _part51[_index]
        writer.f64(_element)
    _part52 = value.f_rotation_matrix_user
    if type(_part52) not in (list, tuple):
        raise TypeError("array value required")
    _count52 = len(_part52)
    if _count52 > 6:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count52, 4)
    for _index in range(_count52):
        _element = _part52[_index]
        _write_Ros2Std_msgsMsgFloat64MultiArray(writer, _element)
    _part53 = value.f_actual_analog_input
    if type(_part53) not in (list, tuple):
        raise TypeError("array value required")
    _count53 = len(_part53)
    if _count53 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count53):
        _element = _part53[_index]
        writer.f64(_element)
    _part54 = value.b_actual_switch_input
    if type(_part54) not in (list, tuple):
        raise TypeError("array value required")
    _count54 = len(_part54)
    if _count54 != 3:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count54):
        _element = _part54[_index]
        if type(_element) is not bool:
            raise TypeError("bool field required")
        writer.integer(int(_element), 1)
    _part55 = value.b_actual_safety_input
    if type(_part55) not in (list, tuple):
        raise TypeError("array value required")
    _count55 = len(_part55)
    if _count55 != 2:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count55):
        _element = _part55[_index]
        if type(_element) is not bool:
            raise TypeError("bool field required")
        writer.integer(int(_element), 1)
    _part56 = value.i_actual_analog_input_type
    if type(_part56) not in (list, tuple):
        raise TypeError("array value required")
    _count56 = len(_part56)
    if _count56 != 2:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count56):
        _element = _part56[_index]
        writer.integer(_element, 1, True)
    _part57 = value.f_target_analog_output
    if type(_part57) not in (list, tuple):
        raise TypeError("array value required")
    _count57 = len(_part57)
    if _count57 != 2:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count57):
        _element = _part57[_index]
        writer.f64(_element)
    _part58 = value.i_target_analog_output_type
    if type(_part58) not in (list, tuple):
        raise TypeError("array value required")
    _count58 = len(_part58)
    if _count58 != 2:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count58):
        _element = _part58[_index]
        writer.integer(_element, 1, True)
    _part59 = value.b_actual_encorder_strove_signal
    if type(_part59) not in (list, tuple):
        raise TypeError("array value required")
    _count59 = len(_part59)
    if _count59 != 2:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count59):
        _element = _part59[_index]
        if type(_element) is not bool:
            raise TypeError("bool field required")
        writer.integer(int(_element), 1)
    _part60 = value.i_actual_encorder_raw_data
    if type(_part60) not in (list, tuple):
        raise TypeError("array value required")
    _count60 = len(_part60)
    if _count60 != 2:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count60):
        _element = _part60[_index]
        writer.integer(_element, 1, True)
    _part61 = value.b_actual_encorder_reset_signal
    if type(_part61) not in (list, tuple):
        raise TypeError("array value required")
    _count61 = len(_part61)
    if _count61 != 2:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count61):
        _element = _part61[_index]
        if type(_element) is not bool:
            raise TypeError("bool field required")
        writer.integer(int(_element), 1)
    if not 1484 <= len(writer.data) - _start <= 17004:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2MsgRobotState(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2MsgRobotState()
    value.robot_state = reader.integer(4, True)
    value.robot_state_str = _read_text(reader, 256)
    value.actual_mode = reader.integer(1, True)
    value.actual_space = reader.integer(1, True)
    value.current_posj = [reader.f64() for _ in range(6)]
    value.current_velj = [reader.f64() for _ in range(6)]
    value.joint_abs = [reader.f64() for _ in range(6)]
    value.joint_err = [reader.f64() for _ in range(6)]
    value.target_posj = [reader.f64() for _ in range(6)]
    value.target_velj = [reader.f64() for _ in range(6)]
    value.current_posx = [reader.f64() for _ in range(6)]
    value.current_tool_posx = [reader.f64() for _ in range(6)]
    value.current_velx = [reader.f64() for _ in range(6)]
    value.task_err = [reader.f64() for _ in range(6)]
    value.target_velx = [reader.f64() for _ in range(6)]
    value.target_posx = [reader.f64() for _ in range(6)]
    value.dynamic_tor = [reader.f64() for _ in range(6)]
    value.actual_jts = [reader.f64() for _ in range(6)]
    value.actual_ejt = [reader.f64() for _ in range(6)]
    value.actual_ett = [reader.f64() for _ in range(6)]
    value.actual_bk = [reader.integer(1, True) for _ in range(6)]
    value.actual_mc = [reader.f64() for _ in range(6)]
    value.actual_mt = [reader.f64() for _ in range(6)]
    value.solution_space = reader.integer(1, True)
    value.sync_time = reader.f64()
    value.actual_bt = [reader.integer(1, True) for _ in range(5)]
    value.rotation_matrix = [
        _read_Ros2Std_msgsMsgFloat64MultiArray(reader) for _ in range(_read_count(reader, 6, 12))
    ]
    value.ctrlbox_digital_input = [reader.integer(1, True) for _ in range(16)]
    value.ctrlbox_digital_output = [reader.integer(1, True) for _ in range(16)]
    value.flange_digital_input = [reader.integer(1, True) for _ in range(6)]
    value.flange_digital_output = [reader.integer(1, True) for _ in range(6)]
    value.modbus_state = [
        _read_Ros2Dsr_msgs2MsgModbusState(reader) for _ in range(_read_count(reader, 16, 8))
    ]
    value.access_control = reader.integer(4, True)
    value.homming_completed = _read_bool(reader)
    value.tp_initialized = _read_bool(reader)
    value.mastering_need = reader.integer(1, True)
    value.drl_stopped = _read_bool(reader)
    value.disconnected = _read_bool(reader)
    value.f_actual_w2b = [reader.f64() for _ in range(6)]
    value.f_current_pos_world = [
        _read_Ros2Std_msgsMsgFloat64MultiArray(reader) for _ in range(_read_count(reader, 6, 12))
    ]
    value.f_current_vel_world = [reader.f64() for _ in range(6)]
    value.f_world_ext_target_torque = [reader.f64() for _ in range(6)]
    value.f_target_pos_world = [reader.f64() for _ in range(6)]
    value.f_target_vel_world = [reader.f64() for _ in range(6)]
    value.f_rotation_matrix_world = [
        _read_Ros2Std_msgsMsgFloat64MultiArray(reader) for _ in range(_read_count(reader, 6, 12))
    ]
    value.i_actual_user_coord_num = reader.integer(1, True)
    value.i_coord_ref = reader.integer(1, True)
    value.f_current_pos_user = [
        _read_Ros2Std_msgsMsgFloat64MultiArray(reader) for _ in range(_read_count(reader, 6, 12))
    ]
    value.f_current_vel_user = [reader.f64() for _ in range(6)]
    value.f_user_ext_task_torque = [reader.f64() for _ in range(6)]
    value.f_target_pos_user = [reader.f64() for _ in range(6)]
    value.f_target_vel_user = [reader.f64() for _ in range(6)]
    value.f_rotation_matrix_user = [
        _read_Ros2Std_msgsMsgFloat64MultiArray(reader) for _ in range(_read_count(reader, 6, 12))
    ]
    value.f_actual_analog_input = [reader.f64() for _ in range(6)]
    value.b_actual_switch_input = [_read_bool(reader) for _ in range(3)]
    value.b_actual_safety_input = [_read_bool(reader) for _ in range(2)]
    value.i_actual_analog_input_type = [reader.integer(1, True) for _ in range(2)]
    value.f_target_analog_output = [reader.f64() for _ in range(2)]
    value.i_target_analog_output_type = [reader.integer(1, True) for _ in range(2)]
    value.b_actual_encorder_strove_signal = [_read_bool(reader) for _ in range(2)]
    value.i_actual_encorder_raw_data = [reader.integer(1, True) for _ in range(2)]
    value.b_actual_encorder_reset_signal = [_read_bool(reader) for _ in range(2)]
    if not 1484 <= reader.position - _start <= 17004:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2MsgRobotStateRt:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/msg/RobotStateRt"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_13d507971439fe6ba5458b55545edfcf1ead10ce7e603365cffa5f894657be93"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1530
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 8154
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 8154
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    time_stamp: _py_float = 0.0
    actual_joint_position: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    actual_joint_position_abs: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    actual_joint_velocity: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    actual_joint_velocity_abs: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    actual_tcp_position: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    actual_tcp_velocity: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    actual_flange_position: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    actual_flange_velocity: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    actual_motor_torque: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    actual_joint_torque: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    raw_joint_torque: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    raw_force_torque: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    external_joint_torque: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    external_tcp_force: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    target_joint_position: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    target_joint_velocity: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    target_joint_acceleration: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    target_motor_torque: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    target_tcp_position: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    target_tcp_velocity: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    jacobian_matrix: _py_list[_record_Ros2Std_msgsMsgFloat64MultiArray] = _field(default_factory=lambda: [])
    gravity_torque: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    coriolis_matrix: _py_list[_record_Ros2Std_msgsMsgFloat64MultiArray] = _field(default_factory=lambda: [])
    mass_matrix: _py_list[_record_Ros2Std_msgsMsgFloat64MultiArray] = _field(default_factory=lambda: [])
    solution_space: _py_int = 0
    singularity: _py_float = 0.0
    operation_speed_rate: _py_float = 0.0
    joint_temperature: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    controller_digital_input: _py_int = 0
    controller_digital_output: _py_int = 0
    controller_analog_input_type: _py_list[_py_int] = _field(default_factory=lambda: [0 for _ in range(2)])
    controller_analog_input: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(2)])
    controller_analog_output_type: _py_list[_py_int] = _field(default_factory=lambda: [0 for _ in range(2)])
    controller_analog_output: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(2)])
    flange_digital_input: _py_int = 0
    flange_digital_output: _py_int = 0
    flange_analog_input: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(4)])
    external_encoder_strobe_count: _py_list[_py_int] = _field(default_factory=lambda: [0 for _ in range(2)])
    external_encoder_count: _py_list[_py_int] = _field(default_factory=lambda: [0 for _ in range(2)])
    goal_joint_position: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    goal_tcp_position: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    robot_mode: _py_int = 0
    robot_state: _py_int = 0
    control_mode: _py_int = 0
    reserved: _py_list[_py_int] = _field(default_factory=lambda: [0 for _ in range(256)])

    def encode(self):
        writer = _Writer(8154)
        _write_Ros2Dsr_msgs2MsgRobotStateRt(writer, self)
        wire = writer.finish()
        return _wire(wire, 1530, 8154)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2MsgRobotStateRt:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1530, 8154))
        value = _read_Ros2Dsr_msgs2MsgRobotStateRt(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2MsgRobotStateRt = Ros2Dsr_msgs2MsgRobotStateRt


def _write_Ros2Dsr_msgs2MsgRobotStateRt(writer, value):
    if type(value) is not Ros2Dsr_msgs2MsgRobotStateRt:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.time_stamp
    writer.f64(_part0)
    _part1 = value.actual_joint_position
    if type(_part1) not in (list, tuple):
        raise TypeError("array value required")
    _count1 = len(_part1)
    if _count1 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count1):
        _element = _part1[_index]
        writer.f64(_element)
    _part2 = value.actual_joint_position_abs
    if type(_part2) not in (list, tuple):
        raise TypeError("array value required")
    _count2 = len(_part2)
    if _count2 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count2):
        _element = _part2[_index]
        writer.f64(_element)
    _part3 = value.actual_joint_velocity
    if type(_part3) not in (list, tuple):
        raise TypeError("array value required")
    _count3 = len(_part3)
    if _count3 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count3):
        _element = _part3[_index]
        writer.f64(_element)
    _part4 = value.actual_joint_velocity_abs
    if type(_part4) not in (list, tuple):
        raise TypeError("array value required")
    _count4 = len(_part4)
    if _count4 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count4):
        _element = _part4[_index]
        writer.f64(_element)
    _part5 = value.actual_tcp_position
    if type(_part5) not in (list, tuple):
        raise TypeError("array value required")
    _count5 = len(_part5)
    if _count5 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count5):
        _element = _part5[_index]
        writer.f64(_element)
    _part6 = value.actual_tcp_velocity
    if type(_part6) not in (list, tuple):
        raise TypeError("array value required")
    _count6 = len(_part6)
    if _count6 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count6):
        _element = _part6[_index]
        writer.f64(_element)
    _part7 = value.actual_flange_position
    if type(_part7) not in (list, tuple):
        raise TypeError("array value required")
    _count7 = len(_part7)
    if _count7 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count7):
        _element = _part7[_index]
        writer.f64(_element)
    _part8 = value.actual_flange_velocity
    if type(_part8) not in (list, tuple):
        raise TypeError("array value required")
    _count8 = len(_part8)
    if _count8 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count8):
        _element = _part8[_index]
        writer.f64(_element)
    _part9 = value.actual_motor_torque
    if type(_part9) not in (list, tuple):
        raise TypeError("array value required")
    _count9 = len(_part9)
    if _count9 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count9):
        _element = _part9[_index]
        writer.f64(_element)
    _part10 = value.actual_joint_torque
    if type(_part10) not in (list, tuple):
        raise TypeError("array value required")
    _count10 = len(_part10)
    if _count10 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count10):
        _element = _part10[_index]
        writer.f64(_element)
    _part11 = value.raw_joint_torque
    if type(_part11) not in (list, tuple):
        raise TypeError("array value required")
    _count11 = len(_part11)
    if _count11 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count11):
        _element = _part11[_index]
        writer.f64(_element)
    _part12 = value.raw_force_torque
    if type(_part12) not in (list, tuple):
        raise TypeError("array value required")
    _count12 = len(_part12)
    if _count12 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count12):
        _element = _part12[_index]
        writer.f64(_element)
    _part13 = value.external_joint_torque
    if type(_part13) not in (list, tuple):
        raise TypeError("array value required")
    _count13 = len(_part13)
    if _count13 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count13):
        _element = _part13[_index]
        writer.f64(_element)
    _part14 = value.external_tcp_force
    if type(_part14) not in (list, tuple):
        raise TypeError("array value required")
    _count14 = len(_part14)
    if _count14 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count14):
        _element = _part14[_index]
        writer.f64(_element)
    _part15 = value.target_joint_position
    if type(_part15) not in (list, tuple):
        raise TypeError("array value required")
    _count15 = len(_part15)
    if _count15 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count15):
        _element = _part15[_index]
        writer.f64(_element)
    _part16 = value.target_joint_velocity
    if type(_part16) not in (list, tuple):
        raise TypeError("array value required")
    _count16 = len(_part16)
    if _count16 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count16):
        _element = _part16[_index]
        writer.f64(_element)
    _part17 = value.target_joint_acceleration
    if type(_part17) not in (list, tuple):
        raise TypeError("array value required")
    _count17 = len(_part17)
    if _count17 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count17):
        _element = _part17[_index]
        writer.f64(_element)
    _part18 = value.target_motor_torque
    if type(_part18) not in (list, tuple):
        raise TypeError("array value required")
    _count18 = len(_part18)
    if _count18 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count18):
        _element = _part18[_index]
        writer.f64(_element)
    _part19 = value.target_tcp_position
    if type(_part19) not in (list, tuple):
        raise TypeError("array value required")
    _count19 = len(_part19)
    if _count19 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count19):
        _element = _part19[_index]
        writer.f64(_element)
    _part20 = value.target_tcp_velocity
    if type(_part20) not in (list, tuple):
        raise TypeError("array value required")
    _count20 = len(_part20)
    if _count20 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count20):
        _element = _part20[_index]
        writer.f64(_element)
    _part21 = value.jacobian_matrix
    if type(_part21) not in (list, tuple):
        raise TypeError("array value required")
    _count21 = len(_part21)
    if _count21 > 6:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count21, 4)
    for _index in range(_count21):
        _element = _part21[_index]
        _write_Ros2Std_msgsMsgFloat64MultiArray(writer, _element)
    _part22 = value.gravity_torque
    if type(_part22) not in (list, tuple):
        raise TypeError("array value required")
    _count22 = len(_part22)
    if _count22 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count22):
        _element = _part22[_index]
        writer.f64(_element)
    _part23 = value.coriolis_matrix
    if type(_part23) not in (list, tuple):
        raise TypeError("array value required")
    _count23 = len(_part23)
    if _count23 > 6:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count23, 4)
    for _index in range(_count23):
        _element = _part23[_index]
        _write_Ros2Std_msgsMsgFloat64MultiArray(writer, _element)
    _part24 = value.mass_matrix
    if type(_part24) not in (list, tuple):
        raise TypeError("array value required")
    _count24 = len(_part24)
    if _count24 > 6:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count24, 4)
    for _index in range(_count24):
        _element = _part24[_index]
        _write_Ros2Std_msgsMsgFloat64MultiArray(writer, _element)
    _part25 = value.solution_space
    writer.integer(_part25, 2, False)
    _part26 = value.singularity
    writer.f64(_part26)
    _part27 = value.operation_speed_rate
    writer.f64(_part27)
    _part28 = value.joint_temperature
    if type(_part28) not in (list, tuple):
        raise TypeError("array value required")
    _count28 = len(_part28)
    if _count28 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count28):
        _element = _part28[_index]
        writer.f64(_element)
    _part29 = value.controller_digital_input
    writer.integer(_part29, 2, False)
    _part30 = value.controller_digital_output
    writer.integer(_part30, 2, False)
    _part31 = value.controller_analog_input_type
    if type(_part31) not in (list, tuple):
        raise TypeError("array value required")
    _count31 = len(_part31)
    if _count31 != 2:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count31):
        _element = _part31[_index]
        writer.integer(_element, 1, False)
    _part32 = value.controller_analog_input
    if type(_part32) not in (list, tuple):
        raise TypeError("array value required")
    _count32 = len(_part32)
    if _count32 != 2:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count32):
        _element = _part32[_index]
        writer.f64(_element)
    _part33 = value.controller_analog_output_type
    if type(_part33) not in (list, tuple):
        raise TypeError("array value required")
    _count33 = len(_part33)
    if _count33 != 2:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count33):
        _element = _part33[_index]
        writer.integer(_element, 1, False)
    _part34 = value.controller_analog_output
    if type(_part34) not in (list, tuple):
        raise TypeError("array value required")
    _count34 = len(_part34)
    if _count34 != 2:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count34):
        _element = _part34[_index]
        writer.f64(_element)
    _part35 = value.flange_digital_input
    writer.integer(_part35, 1, False)
    _part36 = value.flange_digital_output
    writer.integer(_part36, 1, False)
    _part37 = value.flange_analog_input
    if type(_part37) not in (list, tuple):
        raise TypeError("array value required")
    _count37 = len(_part37)
    if _count37 != 4:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count37):
        _element = _part37[_index]
        writer.f64(_element)
    _part38 = value.external_encoder_strobe_count
    if type(_part38) not in (list, tuple):
        raise TypeError("array value required")
    _count38 = len(_part38)
    if _count38 != 2:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count38):
        _element = _part38[_index]
        writer.integer(_element, 1, False)
    _part39 = value.external_encoder_count
    if type(_part39) not in (list, tuple):
        raise TypeError("array value required")
    _count39 = len(_part39)
    if _count39 != 2:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count39):
        _element = _part39[_index]
        writer.integer(_element, 2, False)
    _part40 = value.goal_joint_position
    if type(_part40) not in (list, tuple):
        raise TypeError("array value required")
    _count40 = len(_part40)
    if _count40 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count40):
        _element = _part40[_index]
        writer.f64(_element)
    _part41 = value.goal_tcp_position
    if type(_part41) not in (list, tuple):
        raise TypeError("array value required")
    _count41 = len(_part41)
    if _count41 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count41):
        _element = _part41[_index]
        writer.f64(_element)
    _part42 = value.robot_mode
    writer.integer(_part42, 1, False)
    _part43 = value.robot_state
    writer.integer(_part43, 1, False)
    _part44 = value.control_mode
    writer.integer(_part44, 2, False)
    _part45 = value.reserved
    if type(_part45) not in (list, tuple):
        raise TypeError("array value required")
    _count45 = len(_part45)
    if _count45 != 256:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count45):
        _element = _part45[_index]
        writer.integer(_element, 1, False)
    if not 1530 <= len(writer.data) - _start <= 8154:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2MsgRobotStateRt(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2MsgRobotStateRt()
    value.time_stamp = reader.f64()
    value.actual_joint_position = [reader.f64() for _ in range(6)]
    value.actual_joint_position_abs = [reader.f64() for _ in range(6)]
    value.actual_joint_velocity = [reader.f64() for _ in range(6)]
    value.actual_joint_velocity_abs = [reader.f64() for _ in range(6)]
    value.actual_tcp_position = [reader.f64() for _ in range(6)]
    value.actual_tcp_velocity = [reader.f64() for _ in range(6)]
    value.actual_flange_position = [reader.f64() for _ in range(6)]
    value.actual_flange_velocity = [reader.f64() for _ in range(6)]
    value.actual_motor_torque = [reader.f64() for _ in range(6)]
    value.actual_joint_torque = [reader.f64() for _ in range(6)]
    value.raw_joint_torque = [reader.f64() for _ in range(6)]
    value.raw_force_torque = [reader.f64() for _ in range(6)]
    value.external_joint_torque = [reader.f64() for _ in range(6)]
    value.external_tcp_force = [reader.f64() for _ in range(6)]
    value.target_joint_position = [reader.f64() for _ in range(6)]
    value.target_joint_velocity = [reader.f64() for _ in range(6)]
    value.target_joint_acceleration = [reader.f64() for _ in range(6)]
    value.target_motor_torque = [reader.f64() for _ in range(6)]
    value.target_tcp_position = [reader.f64() for _ in range(6)]
    value.target_tcp_velocity = [reader.f64() for _ in range(6)]
    value.jacobian_matrix = [
        _read_Ros2Std_msgsMsgFloat64MultiArray(reader) for _ in range(_read_count(reader, 6, 12))
    ]
    value.gravity_torque = [reader.f64() for _ in range(6)]
    value.coriolis_matrix = [
        _read_Ros2Std_msgsMsgFloat64MultiArray(reader) for _ in range(_read_count(reader, 6, 12))
    ]
    value.mass_matrix = [
        _read_Ros2Std_msgsMsgFloat64MultiArray(reader) for _ in range(_read_count(reader, 6, 12))
    ]
    value.solution_space = reader.integer(2, False)
    value.singularity = reader.f64()
    value.operation_speed_rate = reader.f64()
    value.joint_temperature = [reader.f64() for _ in range(6)]
    value.controller_digital_input = reader.integer(2, False)
    value.controller_digital_output = reader.integer(2, False)
    value.controller_analog_input_type = [reader.integer(1, False) for _ in range(2)]
    value.controller_analog_input = [reader.f64() for _ in range(2)]
    value.controller_analog_output_type = [reader.integer(1, False) for _ in range(2)]
    value.controller_analog_output = [reader.f64() for _ in range(2)]
    value.flange_digital_input = reader.integer(1, False)
    value.flange_digital_output = reader.integer(1, False)
    value.flange_analog_input = [reader.f64() for _ in range(4)]
    value.external_encoder_strobe_count = [reader.integer(1, False) for _ in range(2)]
    value.external_encoder_count = [reader.integer(2, False) for _ in range(2)]
    value.goal_joint_position = [reader.f64() for _ in range(6)]
    value.goal_tcp_position = [reader.f64() for _ in range(6)]
    value.robot_mode = reader.integer(1, False)
    value.robot_state = reader.integer(1, False)
    value.control_mode = reader.integer(2, False)
    value.reserved = [reader.integer(1, False) for _ in range(256)]
    if not 1530 <= reader.position - _start <= 8154:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2MsgRobotStop:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/msg/RobotStop"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_f3307dbbe0c0c842659c2db436d1c3d6f032157979c5b6178103319bb5eeda37"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 4
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 4
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    stop_mode: _py_int = 0

    def encode(self):
        writer = _Writer(4)
        _write_Ros2Dsr_msgs2MsgRobotStop(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 4)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2MsgRobotStop:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 4, 4))
        value = _read_Ros2Dsr_msgs2MsgRobotStop(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2MsgRobotStop = Ros2Dsr_msgs2MsgRobotStop


def _write_Ros2Dsr_msgs2MsgRobotStop(writer, value):
    if type(value) is not Ros2Dsr_msgs2MsgRobotStop:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.stop_mode
    writer.integer(_part0, 4, True)
    if not 4 <= len(writer.data) - _start <= 4:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2MsgRobotStop(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2MsgRobotStop()
    value.stop_mode = reader.integer(4, True)
    if not 4 <= reader.position - _start <= 4:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2MsgServojRtStream:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/msg/ServojRtStream"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_4321e707fa63a57b66eb3754deca45fe0c108c52565a0e0f62749deae95726a9"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 152
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 152
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 152
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    pos: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    vel: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    acc: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    time: _py_float = 0.0

    def encode(self):
        writer = _Writer(152)
        _write_Ros2Dsr_msgs2MsgServojRtStream(writer, self)
        wire = writer.finish()
        return _wire(wire, 152, 152)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2MsgServojRtStream:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 152, 152))
        value = _read_Ros2Dsr_msgs2MsgServojRtStream(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2MsgServojRtStream = Ros2Dsr_msgs2MsgServojRtStream


def _write_Ros2Dsr_msgs2MsgServojRtStream(writer, value):
    if type(value) is not Ros2Dsr_msgs2MsgServojRtStream:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.pos
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count0):
        _element = _part0[_index]
        writer.f64(_element)
    _part1 = value.vel
    if type(_part1) not in (list, tuple):
        raise TypeError("array value required")
    _count1 = len(_part1)
    if _count1 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count1):
        _element = _part1[_index]
        writer.f64(_element)
    _part2 = value.acc
    if type(_part2) not in (list, tuple):
        raise TypeError("array value required")
    _count2 = len(_part2)
    if _count2 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count2):
        _element = _part2[_index]
        writer.f64(_element)
    _part3 = value.time
    writer.f64(_part3)
    if not 152 <= len(writer.data) - _start <= 152:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2MsgServojRtStream(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2MsgServojRtStream()
    value.pos = [reader.f64() for _ in range(6)]
    value.vel = [reader.f64() for _ in range(6)]
    value.acc = [reader.f64() for _ in range(6)]
    value.time = reader.f64()
    if not 152 <= reader.position - _start <= 152:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2MsgServojStream:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/msg/ServojStream"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_bbd465cf407d444db1d536bf464b3e3939b18aa904c4ce99aac2fb2d918259a9"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 153
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 153
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 153
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    pos: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    vel: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    acc: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    time: _py_float = 0.0
    mode: _py_int = 0

    def encode(self):
        writer = _Writer(153)
        _write_Ros2Dsr_msgs2MsgServojStream(writer, self)
        wire = writer.finish()
        return _wire(wire, 153, 153)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2MsgServojStream:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 153, 153))
        value = _read_Ros2Dsr_msgs2MsgServojStream(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2MsgServojStream = Ros2Dsr_msgs2MsgServojStream


def _write_Ros2Dsr_msgs2MsgServojStream(writer, value):
    if type(value) is not Ros2Dsr_msgs2MsgServojStream:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.pos
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count0):
        _element = _part0[_index]
        writer.f64(_element)
    _part1 = value.vel
    if type(_part1) not in (list, tuple):
        raise TypeError("array value required")
    _count1 = len(_part1)
    if _count1 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count1):
        _element = _part1[_index]
        writer.f64(_element)
    _part2 = value.acc
    if type(_part2) not in (list, tuple):
        raise TypeError("array value required")
    _count2 = len(_part2)
    if _count2 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count2):
        _element = _part2[_index]
        writer.f64(_element)
    _part3 = value.time
    writer.f64(_part3)
    _part4 = value.mode
    writer.integer(_part4, 1, True)
    if not 153 <= len(writer.data) - _start <= 153:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2MsgServojStream(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2MsgServojStream()
    value.pos = [reader.f64() for _ in range(6)]
    value.vel = [reader.f64() for _ in range(6)]
    value.acc = [reader.f64() for _ in range(6)]
    value.time = reader.f64()
    value.mode = reader.integer(1, True)
    if not 153 <= reader.position - _start <= 153:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2MsgServolRtStream:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/msg/ServolRtStream"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_052d62a9865376150ca907ac85216a91f19dd81ed7bbe943ed53e74b6e511763"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 152
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 152
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 152
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    pos: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    vel: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    acc: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    time: _py_float = 0.0

    def encode(self):
        writer = _Writer(152)
        _write_Ros2Dsr_msgs2MsgServolRtStream(writer, self)
        wire = writer.finish()
        return _wire(wire, 152, 152)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2MsgServolRtStream:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 152, 152))
        value = _read_Ros2Dsr_msgs2MsgServolRtStream(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2MsgServolRtStream = Ros2Dsr_msgs2MsgServolRtStream


def _write_Ros2Dsr_msgs2MsgServolRtStream(writer, value):
    if type(value) is not Ros2Dsr_msgs2MsgServolRtStream:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.pos
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count0):
        _element = _part0[_index]
        writer.f64(_element)
    _part1 = value.vel
    if type(_part1) not in (list, tuple):
        raise TypeError("array value required")
    _count1 = len(_part1)
    if _count1 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count1):
        _element = _part1[_index]
        writer.f64(_element)
    _part2 = value.acc
    if type(_part2) not in (list, tuple):
        raise TypeError("array value required")
    _count2 = len(_part2)
    if _count2 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count2):
        _element = _part2[_index]
        writer.f64(_element)
    _part3 = value.time
    writer.f64(_part3)
    if not 152 <= len(writer.data) - _start <= 152:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2MsgServolRtStream(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2MsgServolRtStream()
    value.pos = [reader.f64() for _ in range(6)]
    value.vel = [reader.f64() for _ in range(6)]
    value.acc = [reader.f64() for _ in range(6)]
    value.time = reader.f64()
    if not 152 <= reader.position - _start <= 152:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2MsgServolStream:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/msg/ServolStream"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_7d3d948e15e7dcc96f21f17d0c6a1981859ea8002234ea93877919fa961c2a96"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 88
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 88
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 88
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    pos: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    vel: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(2)])
    acc: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(2)])
    time: _py_float = 0.0

    def encode(self):
        writer = _Writer(88)
        _write_Ros2Dsr_msgs2MsgServolStream(writer, self)
        wire = writer.finish()
        return _wire(wire, 88, 88)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2MsgServolStream:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 88, 88))
        value = _read_Ros2Dsr_msgs2MsgServolStream(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2MsgServolStream = Ros2Dsr_msgs2MsgServolStream


def _write_Ros2Dsr_msgs2MsgServolStream(writer, value):
    if type(value) is not Ros2Dsr_msgs2MsgServolStream:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.pos
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count0):
        _element = _part0[_index]
        writer.f64(_element)
    _part1 = value.vel
    if type(_part1) not in (list, tuple):
        raise TypeError("array value required")
    _count1 = len(_part1)
    if _count1 != 2:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count1):
        _element = _part1[_index]
        writer.f64(_element)
    _part2 = value.acc
    if type(_part2) not in (list, tuple):
        raise TypeError("array value required")
    _count2 = len(_part2)
    if _count2 != 2:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count2):
        _element = _part2[_index]
        writer.f64(_element)
    _part3 = value.time
    writer.f64(_part3)
    if not 88 <= len(writer.data) - _start <= 88:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2MsgServolStream(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2MsgServolStream()
    value.pos = [reader.f64() for _ in range(6)]
    value.vel = [reader.f64() for _ in range(2)]
    value.acc = [reader.f64() for _ in range(2)]
    value.time = reader.f64()
    if not 88 <= reader.position - _start <= 88:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2MsgSpeedjRtStream:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/msg/SpeedjRtStream"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_d6f75878c6dd397b261ede489ca0b3c2e7f26c44908a16d809303a77ca4791aa"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 104
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 104
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 104
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    vel: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    acc: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    time: _py_float = 0.0

    def encode(self):
        writer = _Writer(104)
        _write_Ros2Dsr_msgs2MsgSpeedjRtStream(writer, self)
        wire = writer.finish()
        return _wire(wire, 104, 104)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2MsgSpeedjRtStream:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 104, 104))
        value = _read_Ros2Dsr_msgs2MsgSpeedjRtStream(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2MsgSpeedjRtStream = Ros2Dsr_msgs2MsgSpeedjRtStream


def _write_Ros2Dsr_msgs2MsgSpeedjRtStream(writer, value):
    if type(value) is not Ros2Dsr_msgs2MsgSpeedjRtStream:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.vel
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count0):
        _element = _part0[_index]
        writer.f64(_element)
    _part1 = value.acc
    if type(_part1) not in (list, tuple):
        raise TypeError("array value required")
    _count1 = len(_part1)
    if _count1 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count1):
        _element = _part1[_index]
        writer.f64(_element)
    _part2 = value.time
    writer.f64(_part2)
    if not 104 <= len(writer.data) - _start <= 104:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2MsgSpeedjRtStream(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2MsgSpeedjRtStream()
    value.vel = [reader.f64() for _ in range(6)]
    value.acc = [reader.f64() for _ in range(6)]
    value.time = reader.f64()
    if not 104 <= reader.position - _start <= 104:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2MsgSpeedjStream:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/msg/SpeedjStream"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_c37473b30f0e49db847342eb9b0e27606010710a43de7b94c8589707bceacbf5"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 104
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 104
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 104
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    vel: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    acc: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    time: _py_float = 0.0

    def encode(self):
        writer = _Writer(104)
        _write_Ros2Dsr_msgs2MsgSpeedjStream(writer, self)
        wire = writer.finish()
        return _wire(wire, 104, 104)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2MsgSpeedjStream:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 104, 104))
        value = _read_Ros2Dsr_msgs2MsgSpeedjStream(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2MsgSpeedjStream = Ros2Dsr_msgs2MsgSpeedjStream


def _write_Ros2Dsr_msgs2MsgSpeedjStream(writer, value):
    if type(value) is not Ros2Dsr_msgs2MsgSpeedjStream:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.vel
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count0):
        _element = _part0[_index]
        writer.f64(_element)
    _part1 = value.acc
    if type(_part1) not in (list, tuple):
        raise TypeError("array value required")
    _count1 = len(_part1)
    if _count1 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count1):
        _element = _part1[_index]
        writer.f64(_element)
    _part2 = value.time
    writer.f64(_part2)
    if not 104 <= len(writer.data) - _start <= 104:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2MsgSpeedjStream(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2MsgSpeedjStream()
    value.vel = [reader.f64() for _ in range(6)]
    value.acc = [reader.f64() for _ in range(6)]
    value.time = reader.f64()
    if not 104 <= reader.position - _start <= 104:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2MsgSpeedlRtStream:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/msg/SpeedlRtStream"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_0e85422a682aef2c639f5e8a44b883e7c9b3491c95bf352c34ba23e9fb789b92"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 104
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 104
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 104
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    vel: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    acc: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    time: _py_float = 0.0

    def encode(self):
        writer = _Writer(104)
        _write_Ros2Dsr_msgs2MsgSpeedlRtStream(writer, self)
        wire = writer.finish()
        return _wire(wire, 104, 104)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2MsgSpeedlRtStream:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 104, 104))
        value = _read_Ros2Dsr_msgs2MsgSpeedlRtStream(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2MsgSpeedlRtStream = Ros2Dsr_msgs2MsgSpeedlRtStream


def _write_Ros2Dsr_msgs2MsgSpeedlRtStream(writer, value):
    if type(value) is not Ros2Dsr_msgs2MsgSpeedlRtStream:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.vel
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count0):
        _element = _part0[_index]
        writer.f64(_element)
    _part1 = value.acc
    if type(_part1) not in (list, tuple):
        raise TypeError("array value required")
    _count1 = len(_part1)
    if _count1 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count1):
        _element = _part1[_index]
        writer.f64(_element)
    _part2 = value.time
    writer.f64(_part2)
    if not 104 <= len(writer.data) - _start <= 104:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2MsgSpeedlRtStream(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2MsgSpeedlRtStream()
    value.vel = [reader.f64() for _ in range(6)]
    value.acc = [reader.f64() for _ in range(6)]
    value.time = reader.f64()
    if not 104 <= reader.position - _start <= 104:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2MsgSpeedlStream:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/msg/SpeedlStream"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_8ae5704395fff21a33153589b6a32a41e8687cee0607a7085156c42a2f087ef2"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 72
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 72
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 72
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    vel: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    acc: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(2)])
    time: _py_float = 0.0

    def encode(self):
        writer = _Writer(72)
        _write_Ros2Dsr_msgs2MsgSpeedlStream(writer, self)
        wire = writer.finish()
        return _wire(wire, 72, 72)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2MsgSpeedlStream:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 72, 72))
        value = _read_Ros2Dsr_msgs2MsgSpeedlStream(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2MsgSpeedlStream = Ros2Dsr_msgs2MsgSpeedlStream


def _write_Ros2Dsr_msgs2MsgSpeedlStream(writer, value):
    if type(value) is not Ros2Dsr_msgs2MsgSpeedlStream:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.vel
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count0):
        _element = _part0[_index]
        writer.f64(_element)
    _part1 = value.acc
    if type(_part1) not in (list, tuple):
        raise TypeError("array value required")
    _count1 = len(_part1)
    if _count1 != 2:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count1):
        _element = _part1[_index]
        writer.f64(_element)
    _part2 = value.time
    writer.f64(_part2)
    if not 72 <= len(writer.data) - _start <= 72:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2MsgSpeedlStream(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2MsgSpeedlStream()
    value.vel = [reader.f64() for _ in range(6)]
    value.acc = [reader.f64() for _ in range(2)]
    value.time = reader.f64()
    if not 72 <= reader.position - _start <= 72:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2MsgTorqueRtStream:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/msg/TorqueRtStream"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_81cb4c6d445c6869b94baca87ce997c96964b7e189598b0adfdcc227a295fd73"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 56
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 56
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 56
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    tor: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    time: _py_float = 0.0

    def encode(self):
        writer = _Writer(56)
        _write_Ros2Dsr_msgs2MsgTorqueRtStream(writer, self)
        wire = writer.finish()
        return _wire(wire, 56, 56)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2MsgTorqueRtStream:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 56, 56))
        value = _read_Ros2Dsr_msgs2MsgTorqueRtStream(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2MsgTorqueRtStream = Ros2Dsr_msgs2MsgTorqueRtStream


def _write_Ros2Dsr_msgs2MsgTorqueRtStream(writer, value):
    if type(value) is not Ros2Dsr_msgs2MsgTorqueRtStream:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.tor
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count0):
        _element = _part0[_index]
        writer.f64(_element)
    _part1 = value.time
    writer.f64(_part1)
    if not 56 <= len(writer.data) - _start <= 56:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2MsgTorqueRtStream(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2MsgTorqueRtStream()
    value.tor = [reader.f64() for _ in range(6)]
    value.time = reader.f64()
    if not 56 <= reader.position - _start <= 56:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvAlignAxis1_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/AlignAxis1_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_1ddf70ffd434db95044523b5778f518ec204aed4e315293ecb474e1ec1b1267d"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 170
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 170
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 170
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    x1: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    x2: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    x3: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    source_vect: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(3)])
    axis: _py_int = 0
    ref: _py_int = 0

    def encode(self):
        writer = _Writer(170)
        _write_Ros2Dsr_msgs2SrvAlignAxis1_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 170, 170)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvAlignAxis1_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 170, 170))
        value = _read_Ros2Dsr_msgs2SrvAlignAxis1_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvAlignAxis1_Request = Ros2Dsr_msgs2SrvAlignAxis1_Request


def _write_Ros2Dsr_msgs2SrvAlignAxis1_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvAlignAxis1_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.x1
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count0):
        _element = _part0[_index]
        writer.f64(_element)
    _part1 = value.x2
    if type(_part1) not in (list, tuple):
        raise TypeError("array value required")
    _count1 = len(_part1)
    if _count1 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count1):
        _element = _part1[_index]
        writer.f64(_element)
    _part2 = value.x3
    if type(_part2) not in (list, tuple):
        raise TypeError("array value required")
    _count2 = len(_part2)
    if _count2 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count2):
        _element = _part2[_index]
        writer.f64(_element)
    _part3 = value.source_vect
    if type(_part3) not in (list, tuple):
        raise TypeError("array value required")
    _count3 = len(_part3)
    if _count3 != 3:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count3):
        _element = _part3[_index]
        writer.f64(_element)
    _part4 = value.axis
    writer.integer(_part4, 1, True)
    _part5 = value.ref
    writer.integer(_part5, 1, True)
    if not 170 <= len(writer.data) - _start <= 170:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvAlignAxis1_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvAlignAxis1_Request()
    value.x1 = [reader.f64() for _ in range(6)]
    value.x2 = [reader.f64() for _ in range(6)]
    value.x3 = [reader.f64() for _ in range(6)]
    value.source_vect = [reader.f64() for _ in range(3)]
    value.axis = reader.integer(1, True)
    value.ref = reader.integer(1, True)
    if not 170 <= reader.position - _start <= 170:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvAlignAxis1_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/AlignAxis1_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_f767cbca9c94fc07d10cff7cdbc4125f6d657f4362335ce968dcbd560a75a537"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvAlignAxis1_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvAlignAxis1_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvAlignAxis1_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvAlignAxis1_Response = Ros2Dsr_msgs2SrvAlignAxis1_Response


def _write_Ros2Dsr_msgs2SrvAlignAxis1_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvAlignAxis1_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvAlignAxis1_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvAlignAxis1_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvAlignAxis2_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/AlignAxis2_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_102ba03a00114a9c5314e5f947050c88791c1abffcff3d9b3163f06557c9d1ca"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 50
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 50
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 50
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    target_vect: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(3)])
    source_vect: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(3)])
    axis: _py_int = 0
    ref: _py_int = 0

    def encode(self):
        writer = _Writer(50)
        _write_Ros2Dsr_msgs2SrvAlignAxis2_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 50, 50)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvAlignAxis2_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 50, 50))
        value = _read_Ros2Dsr_msgs2SrvAlignAxis2_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvAlignAxis2_Request = Ros2Dsr_msgs2SrvAlignAxis2_Request


def _write_Ros2Dsr_msgs2SrvAlignAxis2_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvAlignAxis2_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.target_vect
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 != 3:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count0):
        _element = _part0[_index]
        writer.f64(_element)
    _part1 = value.source_vect
    if type(_part1) not in (list, tuple):
        raise TypeError("array value required")
    _count1 = len(_part1)
    if _count1 != 3:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count1):
        _element = _part1[_index]
        writer.f64(_element)
    _part2 = value.axis
    writer.integer(_part2, 1, True)
    _part3 = value.ref
    writer.integer(_part3, 1, True)
    if not 50 <= len(writer.data) - _start <= 50:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvAlignAxis2_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvAlignAxis2_Request()
    value.target_vect = [reader.f64() for _ in range(3)]
    value.source_vect = [reader.f64() for _ in range(3)]
    value.axis = reader.integer(1, True)
    value.ref = reader.integer(1, True)
    if not 50 <= reader.position - _start <= 50:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvAlignAxis2_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/AlignAxis2_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_59a69f0d266c31bbd9ab278249d358fb0edb0cc2c5f57a684069653548b88400"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvAlignAxis2_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvAlignAxis2_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvAlignAxis2_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvAlignAxis2_Response = Ros2Dsr_msgs2SrvAlignAxis2_Response


def _write_Ros2Dsr_msgs2SrvAlignAxis2_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvAlignAxis2_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvAlignAxis2_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvAlignAxis2_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvAlterMotion_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/AlterMotion_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_ede1eb26161bfe42b29411347ef4752a6454baf86ba04afc5f2f11149895b000"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 48
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 48
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 48
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    pos: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])

    def encode(self):
        writer = _Writer(48)
        _write_Ros2Dsr_msgs2SrvAlterMotion_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 48, 48)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvAlterMotion_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 48, 48))
        value = _read_Ros2Dsr_msgs2SrvAlterMotion_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvAlterMotion_Request = Ros2Dsr_msgs2SrvAlterMotion_Request


def _write_Ros2Dsr_msgs2SrvAlterMotion_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvAlterMotion_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.pos
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count0):
        _element = _part0[_index]
        writer.f64(_element)
    if not 48 <= len(writer.data) - _start <= 48:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvAlterMotion_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvAlterMotion_Request()
    value.pos = [reader.f64() for _ in range(6)]
    if not 48 <= reader.position - _start <= 48:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvAlterMotion_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/AlterMotion_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_edd6fac42f9f148dc508948ebf7b7bfe09fda09ab6ba66df3a56505b10829557"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvAlterMotion_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvAlterMotion_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvAlterMotion_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvAlterMotion_Response = Ros2Dsr_msgs2SrvAlterMotion_Response


def _write_Ros2Dsr_msgs2SrvAlterMotion_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvAlterMotion_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvAlterMotion_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvAlterMotion_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvCalcCoord_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/CalcCoord_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_7fda8163d3f25429c387f6456df77bbfcf30c1aee93bb08ac27d50950a56ac7f"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 195
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 195
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 195
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    input_pos_cnt: _py_int = 0
    x1: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    x2: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    x3: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    x4: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    ref: _py_int = 0
    mod: _py_int = 0

    def encode(self):
        writer = _Writer(195)
        _write_Ros2Dsr_msgs2SrvCalcCoord_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 195, 195)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvCalcCoord_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 195, 195))
        value = _read_Ros2Dsr_msgs2SrvCalcCoord_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvCalcCoord_Request = Ros2Dsr_msgs2SrvCalcCoord_Request


def _write_Ros2Dsr_msgs2SrvCalcCoord_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvCalcCoord_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.input_pos_cnt
    writer.integer(_part0, 1, True)
    _part1 = value.x1
    if type(_part1) not in (list, tuple):
        raise TypeError("array value required")
    _count1 = len(_part1)
    if _count1 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count1):
        _element = _part1[_index]
        writer.f64(_element)
    _part2 = value.x2
    if type(_part2) not in (list, tuple):
        raise TypeError("array value required")
    _count2 = len(_part2)
    if _count2 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count2):
        _element = _part2[_index]
        writer.f64(_element)
    _part3 = value.x3
    if type(_part3) not in (list, tuple):
        raise TypeError("array value required")
    _count3 = len(_part3)
    if _count3 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count3):
        _element = _part3[_index]
        writer.f64(_element)
    _part4 = value.x4
    if type(_part4) not in (list, tuple):
        raise TypeError("array value required")
    _count4 = len(_part4)
    if _count4 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count4):
        _element = _part4[_index]
        writer.f64(_element)
    _part5 = value.ref
    writer.integer(_part5, 1, True)
    _part6 = value.mod
    writer.integer(_part6, 1, True)
    if not 195 <= len(writer.data) - _start <= 195:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvCalcCoord_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvCalcCoord_Request()
    value.input_pos_cnt = reader.integer(1, True)
    value.x1 = [reader.f64() for _ in range(6)]
    value.x2 = [reader.f64() for _ in range(6)]
    value.x3 = [reader.f64() for _ in range(6)]
    value.x4 = [reader.f64() for _ in range(6)]
    value.ref = reader.integer(1, True)
    value.mod = reader.integer(1, True)
    if not 195 <= reader.position - _start <= 195:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvCalcCoord_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/CalcCoord_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_d5d79d4593bf040421c1b8570c86d021db50de736ab114ec13623e4982168371"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 49
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 49
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 49
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    conv_posx: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    success: _py_bool = False

    def encode(self):
        writer = _Writer(49)
        _write_Ros2Dsr_msgs2SrvCalcCoord_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 49, 49)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvCalcCoord_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 49, 49))
        value = _read_Ros2Dsr_msgs2SrvCalcCoord_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvCalcCoord_Response = Ros2Dsr_msgs2SrvCalcCoord_Response


def _write_Ros2Dsr_msgs2SrvCalcCoord_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvCalcCoord_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.conv_posx
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count0):
        _element = _part0[_index]
        writer.f64(_element)
    _part1 = value.success
    if type(_part1) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part1), 1)
    if not 49 <= len(writer.data) - _start <= 49:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvCalcCoord_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvCalcCoord_Response()
    value.conv_posx = [reader.f64() for _ in range(6)]
    value.success = _read_bool(reader)
    if not 49 <= reader.position - _start <= 49:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/ChangeCollisionSensitivity_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_69c9183fb3a1a5e619cb2537da31e73aa9c490b2022db5281931d353676efc7f"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    sensitivity: _py_int = 0

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Request = (
    Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Request
)


def _write_Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.sensitivity
    writer.integer(_part0, 1, True)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Request()
    value.sensitivity = reader.integer(1, True)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/ChangeCollisionSensitivity_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_d0660dd8ed26aba09d9aaa3444daae0abca31e415b24a39ab05c012fb9909aa0"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Response = (
    Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Response
)


def _write_Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvChangeOperationSpeed_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/ChangeOperationSpeed_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_63eed536f4862ee6571ea76f40342def3598466057cc09aa45b0ea159c9a4fa7"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    speed: _py_int = 0

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvChangeOperationSpeed_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvChangeOperationSpeed_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvChangeOperationSpeed_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvChangeOperationSpeed_Request = Ros2Dsr_msgs2SrvChangeOperationSpeed_Request


def _write_Ros2Dsr_msgs2SrvChangeOperationSpeed_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvChangeOperationSpeed_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.speed
    writer.integer(_part0, 1, True)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvChangeOperationSpeed_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvChangeOperationSpeed_Request()
    value.speed = reader.integer(1, True)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvChangeOperationSpeed_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/ChangeOperationSpeed_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_6514284e5a0739b16cd9df8dab9939c8e3aa9b47567741389bcc3fe54e9f0cbf"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvChangeOperationSpeed_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvChangeOperationSpeed_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvChangeOperationSpeed_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvChangeOperationSpeed_Response = Ros2Dsr_msgs2SrvChangeOperationSpeed_Response


def _write_Ros2Dsr_msgs2SrvChangeOperationSpeed_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvChangeOperationSpeed_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvChangeOperationSpeed_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvChangeOperationSpeed_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvCheckForceCondition_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/CheckForceCondition_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_e996cea9f24a1967a4591fdb072ccb87fe1e684dfe19cdcbb5cf65afa22cd0e4"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 18
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 18
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 18
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    axis: _py_int = 0
    min: _py_float = 0.0
    max: _py_float = 0.0
    ref: _py_int = 0

    def encode(self):
        writer = _Writer(18)
        _write_Ros2Dsr_msgs2SrvCheckForceCondition_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 18, 18)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvCheckForceCondition_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 18, 18))
        value = _read_Ros2Dsr_msgs2SrvCheckForceCondition_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvCheckForceCondition_Request = Ros2Dsr_msgs2SrvCheckForceCondition_Request


def _write_Ros2Dsr_msgs2SrvCheckForceCondition_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvCheckForceCondition_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.axis
    writer.integer(_part0, 1, True)
    _part1 = value.min
    writer.f64(_part1)
    _part2 = value.max
    writer.f64(_part2)
    _part3 = value.ref
    writer.integer(_part3, 1, True)
    if not 18 <= len(writer.data) - _start <= 18:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvCheckForceCondition_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvCheckForceCondition_Request()
    value.axis = reader.integer(1, True)
    value.min = reader.f64()
    value.max = reader.f64()
    value.ref = reader.integer(1, True)
    if not 18 <= reader.position - _start <= 18:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvCheckForceCondition_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/CheckForceCondition_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_ed5a27b7b1daf8a668998d4da7f7ac5d1f7a71caea35a37c51db07058a373343"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvCheckForceCondition_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvCheckForceCondition_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvCheckForceCondition_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvCheckForceCondition_Response = Ros2Dsr_msgs2SrvCheckForceCondition_Response


def _write_Ros2Dsr_msgs2SrvCheckForceCondition_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvCheckForceCondition_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvCheckForceCondition_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvCheckForceCondition_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvCheckMotion_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/CheckMotion_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_64c44932b5afc38a3bd1cfb306c018616656793b0c6e5bf0e04f557a0b5f48a5"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros2Dsr_msgs2SrvCheckMotion_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvCheckMotion_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros2Dsr_msgs2SrvCheckMotion_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvCheckMotion_Request = Ros2Dsr_msgs2SrvCheckMotion_Request


def _write_Ros2Dsr_msgs2SrvCheckMotion_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvCheckMotion_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros2Dsr_msgs2SrvCheckMotion_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvCheckMotion_Request()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvCheckMotion_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/CheckMotion_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_9c8ac8ada140000e2bd6588a92871d699a924ce9b1011d3e98dec98e0aa84379"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 2
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 2
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 2
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    status: _py_int = 0
    success: _py_bool = False

    def encode(self):
        writer = _Writer(2)
        _write_Ros2Dsr_msgs2SrvCheckMotion_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 2, 2)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvCheckMotion_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 2, 2))
        value = _read_Ros2Dsr_msgs2SrvCheckMotion_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvCheckMotion_Response = Ros2Dsr_msgs2SrvCheckMotion_Response


def _write_Ros2Dsr_msgs2SrvCheckMotion_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvCheckMotion_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.status
    writer.integer(_part0, 1, True)
    _part1 = value.success
    if type(_part1) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part1), 1)
    if not 2 <= len(writer.data) - _start <= 2:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvCheckMotion_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvCheckMotion_Response()
    value.status = reader.integer(1, True)
    value.success = _read_bool(reader)
    if not 2 <= reader.position - _start <= 2:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvCheckOrientationCondition1_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/CheckOrientationCondition1_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_b70860c0e9fe5ae7904923bbf2ad9077a5009ae37a644118d5b8f4dc3383c1ef"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 99
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 99
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 99
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    axis: _py_int = 0
    min: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    max: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    ref: _py_int = 0
    mode: _py_int = 0

    def encode(self):
        writer = _Writer(99)
        _write_Ros2Dsr_msgs2SrvCheckOrientationCondition1_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 99, 99)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvCheckOrientationCondition1_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 99, 99))
        value = _read_Ros2Dsr_msgs2SrvCheckOrientationCondition1_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvCheckOrientationCondition1_Request = (
    Ros2Dsr_msgs2SrvCheckOrientationCondition1_Request
)


def _write_Ros2Dsr_msgs2SrvCheckOrientationCondition1_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvCheckOrientationCondition1_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.axis
    writer.integer(_part0, 1, True)
    _part1 = value.min
    if type(_part1) not in (list, tuple):
        raise TypeError("array value required")
    _count1 = len(_part1)
    if _count1 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count1):
        _element = _part1[_index]
        writer.f64(_element)
    _part2 = value.max
    if type(_part2) not in (list, tuple):
        raise TypeError("array value required")
    _count2 = len(_part2)
    if _count2 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count2):
        _element = _part2[_index]
        writer.f64(_element)
    _part3 = value.ref
    writer.integer(_part3, 1, True)
    _part4 = value.mode
    writer.integer(_part4, 1, True)
    if not 99 <= len(writer.data) - _start <= 99:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvCheckOrientationCondition1_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvCheckOrientationCondition1_Request()
    value.axis = reader.integer(1, True)
    value.min = [reader.f64() for _ in range(6)]
    value.max = [reader.f64() for _ in range(6)]
    value.ref = reader.integer(1, True)
    value.mode = reader.integer(1, True)
    if not 99 <= reader.position - _start <= 99:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvCheckOrientationCondition1_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/CheckOrientationCondition1_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_eff9abfb058f98ef8addce0c226a0c35bfc84f24d96b611cd151be384be24ee4"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvCheckOrientationCondition1_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvCheckOrientationCondition1_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvCheckOrientationCondition1_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvCheckOrientationCondition1_Response = (
    Ros2Dsr_msgs2SrvCheckOrientationCondition1_Response
)


def _write_Ros2Dsr_msgs2SrvCheckOrientationCondition1_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvCheckOrientationCondition1_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvCheckOrientationCondition1_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvCheckOrientationCondition1_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvCheckOrientationCondition2_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/CheckOrientationCondition2_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_af9ed5881dde0e06efb1c97e8c9571dd2de85b35188cbdcbed5a902ca30d5ddb"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 67
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 67
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 67
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    axis: _py_int = 0
    min: _py_float = 0.0
    max: _py_float = 0.0
    ref: _py_int = 0
    mode: _py_int = 0
    pos: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])

    def encode(self):
        writer = _Writer(67)
        _write_Ros2Dsr_msgs2SrvCheckOrientationCondition2_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 67, 67)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvCheckOrientationCondition2_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 67, 67))
        value = _read_Ros2Dsr_msgs2SrvCheckOrientationCondition2_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvCheckOrientationCondition2_Request = (
    Ros2Dsr_msgs2SrvCheckOrientationCondition2_Request
)


def _write_Ros2Dsr_msgs2SrvCheckOrientationCondition2_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvCheckOrientationCondition2_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.axis
    writer.integer(_part0, 1, True)
    _part1 = value.min
    writer.f64(_part1)
    _part2 = value.max
    writer.f64(_part2)
    _part3 = value.ref
    writer.integer(_part3, 1, True)
    _part4 = value.mode
    writer.integer(_part4, 1, True)
    _part5 = value.pos
    if type(_part5) not in (list, tuple):
        raise TypeError("array value required")
    _count5 = len(_part5)
    if _count5 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count5):
        _element = _part5[_index]
        writer.f64(_element)
    if not 67 <= len(writer.data) - _start <= 67:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvCheckOrientationCondition2_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvCheckOrientationCondition2_Request()
    value.axis = reader.integer(1, True)
    value.min = reader.f64()
    value.max = reader.f64()
    value.ref = reader.integer(1, True)
    value.mode = reader.integer(1, True)
    value.pos = [reader.f64() for _ in range(6)]
    if not 67 <= reader.position - _start <= 67:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvCheckOrientationCondition2_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/CheckOrientationCondition2_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_23b06042946d1e27459ce70b73d265a7fda95dc1bf688091c14b5330c76d6e90"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvCheckOrientationCondition2_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvCheckOrientationCondition2_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvCheckOrientationCondition2_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvCheckOrientationCondition2_Response = (
    Ros2Dsr_msgs2SrvCheckOrientationCondition2_Response
)


def _write_Ros2Dsr_msgs2SrvCheckOrientationCondition2_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvCheckOrientationCondition2_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvCheckOrientationCondition2_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvCheckOrientationCondition2_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvCheckPositionCondition_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/CheckPositionCondition_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_3844a1011d8c4dfcbe048e683d0b3c747ce2984c937c477c868b1d7d53a7b0cc"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 67
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 67
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 67
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    axis: _py_int = 0
    min: _py_float = 0.0
    max: _py_float = 0.0
    ref: _py_int = 0
    mode: _py_int = 0
    pos: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])

    def encode(self):
        writer = _Writer(67)
        _write_Ros2Dsr_msgs2SrvCheckPositionCondition_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 67, 67)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvCheckPositionCondition_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 67, 67))
        value = _read_Ros2Dsr_msgs2SrvCheckPositionCondition_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvCheckPositionCondition_Request = Ros2Dsr_msgs2SrvCheckPositionCondition_Request


def _write_Ros2Dsr_msgs2SrvCheckPositionCondition_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvCheckPositionCondition_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.axis
    writer.integer(_part0, 1, True)
    _part1 = value.min
    writer.f64(_part1)
    _part2 = value.max
    writer.f64(_part2)
    _part3 = value.ref
    writer.integer(_part3, 1, True)
    _part4 = value.mode
    writer.integer(_part4, 1, True)
    _part5 = value.pos
    if type(_part5) not in (list, tuple):
        raise TypeError("array value required")
    _count5 = len(_part5)
    if _count5 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count5):
        _element = _part5[_index]
        writer.f64(_element)
    if not 67 <= len(writer.data) - _start <= 67:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvCheckPositionCondition_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvCheckPositionCondition_Request()
    value.axis = reader.integer(1, True)
    value.min = reader.f64()
    value.max = reader.f64()
    value.ref = reader.integer(1, True)
    value.mode = reader.integer(1, True)
    value.pos = [reader.f64() for _ in range(6)]
    if not 67 <= reader.position - _start <= 67:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvCheckPositionCondition_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/CheckPositionCondition_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_aeac1f373359103389fae072461c92f810252c8abf63f31522582b7724d33334"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvCheckPositionCondition_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvCheckPositionCondition_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvCheckPositionCondition_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvCheckPositionCondition_Response = Ros2Dsr_msgs2SrvCheckPositionCondition_Response


def _write_Ros2Dsr_msgs2SrvCheckPositionCondition_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvCheckPositionCondition_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvCheckPositionCondition_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvCheckPositionCondition_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvConfigCreateModbus_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/ConfigCreateModbus_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_fa23c864844a6d81712b1c28261505a4dfce7e679a25e621bf80cef0a75ff1f5"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 19
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 531
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 531
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    name: _py_str = ""
    ip: _py_str = ""
    port: _py_int = 0
    reg_type: _py_int = 0
    index: _py_int = 0
    value: _py_int = 0
    slave_id: _py_int = 0

    def encode(self):
        writer = _Writer(531)
        _write_Ros2Dsr_msgs2SrvConfigCreateModbus_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 19, 531)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvConfigCreateModbus_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 19, 531))
        value = _read_Ros2Dsr_msgs2SrvConfigCreateModbus_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvConfigCreateModbus_Request = Ros2Dsr_msgs2SrvConfigCreateModbus_Request


def _write_Ros2Dsr_msgs2SrvConfigCreateModbus_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvConfigCreateModbus_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.name
    _write_text(writer, _part0, 256)
    _part1 = value.ip
    _write_text(writer, _part1, 256)
    _part2 = value.port
    writer.integer(_part2, 4, True)
    _part3 = value.reg_type
    writer.integer(_part3, 1, True)
    _part4 = value.index
    writer.integer(_part4, 1, True)
    _part5 = value.value
    writer.integer(_part5, 1, True)
    _part6 = value.slave_id
    writer.integer(_part6, 4, True)
    if not 19 <= len(writer.data) - _start <= 531:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvConfigCreateModbus_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvConfigCreateModbus_Request()
    value.name = _read_text(reader, 256)
    value.ip = _read_text(reader, 256)
    value.port = reader.integer(4, True)
    value.reg_type = reader.integer(1, True)
    value.index = reader.integer(1, True)
    value.value = reader.integer(1, True)
    value.slave_id = reader.integer(4, True)
    if not 19 <= reader.position - _start <= 531:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvConfigCreateModbus_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/ConfigCreateModbus_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_e3316b3da7d0c79293173a37fe9830de831cf1d4152999f56f7f5f01ff63215c"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvConfigCreateModbus_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvConfigCreateModbus_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvConfigCreateModbus_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvConfigCreateModbus_Response = Ros2Dsr_msgs2SrvConfigCreateModbus_Response


def _write_Ros2Dsr_msgs2SrvConfigCreateModbus_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvConfigCreateModbus_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvConfigCreateModbus_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvConfigCreateModbus_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvConfigCreateTcp_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/ConfigCreateTcp_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_e45840cd5a1966ba8cf7a7bf660ab0a467132b03cd69f00fb62043afb9b30c49"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 52
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 308
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 308
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    name: _py_str = ""
    pos: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])

    def encode(self):
        writer = _Writer(308)
        _write_Ros2Dsr_msgs2SrvConfigCreateTcp_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 52, 308)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvConfigCreateTcp_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 52, 308))
        value = _read_Ros2Dsr_msgs2SrvConfigCreateTcp_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvConfigCreateTcp_Request = Ros2Dsr_msgs2SrvConfigCreateTcp_Request


def _write_Ros2Dsr_msgs2SrvConfigCreateTcp_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvConfigCreateTcp_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.name
    _write_text(writer, _part0, 256)
    _part1 = value.pos
    if type(_part1) not in (list, tuple):
        raise TypeError("array value required")
    _count1 = len(_part1)
    if _count1 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count1):
        _element = _part1[_index]
        writer.f64(_element)
    if not 52 <= len(writer.data) - _start <= 308:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvConfigCreateTcp_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvConfigCreateTcp_Request()
    value.name = _read_text(reader, 256)
    value.pos = [reader.f64() for _ in range(6)]
    if not 52 <= reader.position - _start <= 308:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvConfigCreateTcp_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/ConfigCreateTcp_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_3091184aefaedc2fb8fd9b4f3c87769e8f87ebba4f14623355ef09fce4932f3b"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvConfigCreateTcp_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvConfigCreateTcp_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvConfigCreateTcp_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvConfigCreateTcp_Response = Ros2Dsr_msgs2SrvConfigCreateTcp_Response


def _write_Ros2Dsr_msgs2SrvConfigCreateTcp_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvConfigCreateTcp_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvConfigCreateTcp_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvConfigCreateTcp_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvConfigCreateTool_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/ConfigCreateTool_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_ca28549f6644d735882d0400c2635380dde1139d17c17818d49d023ec73566e2"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 84
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 340
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 340
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    name: _py_str = ""
    weight: _py_float = 0.0
    cog: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(3)])
    inertia: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])

    def encode(self):
        writer = _Writer(340)
        _write_Ros2Dsr_msgs2SrvConfigCreateTool_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 84, 340)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvConfigCreateTool_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 84, 340))
        value = _read_Ros2Dsr_msgs2SrvConfigCreateTool_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvConfigCreateTool_Request = Ros2Dsr_msgs2SrvConfigCreateTool_Request


def _write_Ros2Dsr_msgs2SrvConfigCreateTool_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvConfigCreateTool_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.name
    _write_text(writer, _part0, 256)
    _part1 = value.weight
    writer.f64(_part1)
    _part2 = value.cog
    if type(_part2) not in (list, tuple):
        raise TypeError("array value required")
    _count2 = len(_part2)
    if _count2 != 3:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count2):
        _element = _part2[_index]
        writer.f64(_element)
    _part3 = value.inertia
    if type(_part3) not in (list, tuple):
        raise TypeError("array value required")
    _count3 = len(_part3)
    if _count3 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count3):
        _element = _part3[_index]
        writer.f64(_element)
    if not 84 <= len(writer.data) - _start <= 340:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvConfigCreateTool_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvConfigCreateTool_Request()
    value.name = _read_text(reader, 256)
    value.weight = reader.f64()
    value.cog = [reader.f64() for _ in range(3)]
    value.inertia = [reader.f64() for _ in range(6)]
    if not 84 <= reader.position - _start <= 340:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvConfigCreateTool_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/ConfigCreateTool_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_105629d8e968ac2511b73b3fe21ed9529b1dab9365d992281a02d72e1b4a90d0"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvConfigCreateTool_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvConfigCreateTool_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvConfigCreateTool_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvConfigCreateTool_Response = Ros2Dsr_msgs2SrvConfigCreateTool_Response


def _write_Ros2Dsr_msgs2SrvConfigCreateTool_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvConfigCreateTool_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvConfigCreateTool_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvConfigCreateTool_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvConfigDeleteModbus_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/ConfigDeleteModbus_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_f16519f6118316f20a9ab9e76dc37704e0d464632d31ed383a8bb55af6b25369"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    name: _py_str = ""

    def encode(self):
        writer = _Writer(260)
        _write_Ros2Dsr_msgs2SrvConfigDeleteModbus_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 260)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvConfigDeleteModbus_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 4, 260))
        value = _read_Ros2Dsr_msgs2SrvConfigDeleteModbus_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvConfigDeleteModbus_Request = Ros2Dsr_msgs2SrvConfigDeleteModbus_Request


def _write_Ros2Dsr_msgs2SrvConfigDeleteModbus_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvConfigDeleteModbus_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.name
    _write_text(writer, _part0, 256)
    if not 4 <= len(writer.data) - _start <= 260:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvConfigDeleteModbus_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvConfigDeleteModbus_Request()
    value.name = _read_text(reader, 256)
    if not 4 <= reader.position - _start <= 260:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvConfigDeleteModbus_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/ConfigDeleteModbus_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_a0a28657707c302b7dbb87039a36951cc97a5335cb473523002884453125829f"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvConfigDeleteModbus_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvConfigDeleteModbus_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvConfigDeleteModbus_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvConfigDeleteModbus_Response = Ros2Dsr_msgs2SrvConfigDeleteModbus_Response


def _write_Ros2Dsr_msgs2SrvConfigDeleteModbus_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvConfigDeleteModbus_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvConfigDeleteModbus_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvConfigDeleteModbus_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvConfigDeleteTcp_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/ConfigDeleteTcp_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_a865fbd071a0e1717d54ab3523a5dd637f22745724ed41483991c2f58aa85abf"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    name: _py_str = ""

    def encode(self):
        writer = _Writer(260)
        _write_Ros2Dsr_msgs2SrvConfigDeleteTcp_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 260)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvConfigDeleteTcp_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 4, 260))
        value = _read_Ros2Dsr_msgs2SrvConfigDeleteTcp_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvConfigDeleteTcp_Request = Ros2Dsr_msgs2SrvConfigDeleteTcp_Request


def _write_Ros2Dsr_msgs2SrvConfigDeleteTcp_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvConfigDeleteTcp_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.name
    _write_text(writer, _part0, 256)
    if not 4 <= len(writer.data) - _start <= 260:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvConfigDeleteTcp_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvConfigDeleteTcp_Request()
    value.name = _read_text(reader, 256)
    if not 4 <= reader.position - _start <= 260:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvConfigDeleteTcp_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/ConfigDeleteTcp_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_c8285c592d6839812e366d8271a9020f2e6213f7d3194896306f55bf69bb83d2"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvConfigDeleteTcp_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvConfigDeleteTcp_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvConfigDeleteTcp_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvConfigDeleteTcp_Response = Ros2Dsr_msgs2SrvConfigDeleteTcp_Response


def _write_Ros2Dsr_msgs2SrvConfigDeleteTcp_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvConfigDeleteTcp_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvConfigDeleteTcp_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvConfigDeleteTcp_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvConfigDeleteTool_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/ConfigDeleteTool_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_7d6b749f7151dfc84e52fc39f3a32c88d5570efb2fb721c234c2d91405d9a37b"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    name: _py_str = ""

    def encode(self):
        writer = _Writer(260)
        _write_Ros2Dsr_msgs2SrvConfigDeleteTool_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 260)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvConfigDeleteTool_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 4, 260))
        value = _read_Ros2Dsr_msgs2SrvConfigDeleteTool_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvConfigDeleteTool_Request = Ros2Dsr_msgs2SrvConfigDeleteTool_Request


def _write_Ros2Dsr_msgs2SrvConfigDeleteTool_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvConfigDeleteTool_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.name
    _write_text(writer, _part0, 256)
    if not 4 <= len(writer.data) - _start <= 260:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvConfigDeleteTool_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvConfigDeleteTool_Request()
    value.name = _read_text(reader, 256)
    if not 4 <= reader.position - _start <= 260:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvConfigDeleteTool_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/ConfigDeleteTool_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_2618f58ba0b4e9f585b2635de087a5d203b019e3732ab579e94fcb44e2ee9a6e"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvConfigDeleteTool_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvConfigDeleteTool_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvConfigDeleteTool_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvConfigDeleteTool_Response = Ros2Dsr_msgs2SrvConfigDeleteTool_Response


def _write_Ros2Dsr_msgs2SrvConfigDeleteTool_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvConfigDeleteTool_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvConfigDeleteTool_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvConfigDeleteTool_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvConnectRtControl_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/ConnectRtControl_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_a207438503e0a6769dbdc07c87487b0435066ba9773c19f2874241c8c1b4d761"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 264
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 264
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    ip_address: _py_str = ""
    port: _py_int = 0

    def encode(self):
        writer = _Writer(264)
        _write_Ros2Dsr_msgs2SrvConnectRtControl_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 264)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvConnectRtControl_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 8, 264))
        value = _read_Ros2Dsr_msgs2SrvConnectRtControl_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvConnectRtControl_Request = Ros2Dsr_msgs2SrvConnectRtControl_Request


def _write_Ros2Dsr_msgs2SrvConnectRtControl_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvConnectRtControl_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.ip_address
    _write_text(writer, _part0, 256)
    _part1 = value.port
    writer.integer(_part1, 4, False)
    if not 8 <= len(writer.data) - _start <= 264:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvConnectRtControl_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvConnectRtControl_Request()
    value.ip_address = _read_text(reader, 256)
    value.port = reader.integer(4, False)
    if not 8 <= reader.position - _start <= 264:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvConnectRtControl_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/ConnectRtControl_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_6a7cce9aae60cdadc75425b22f7a8b429b95bc607e969605ab477c2eb1461815"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvConnectRtControl_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvConnectRtControl_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvConnectRtControl_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvConnectRtControl_Response = Ros2Dsr_msgs2SrvConnectRtControl_Response


def _write_Ros2Dsr_msgs2SrvConnectRtControl_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvConnectRtControl_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvConnectRtControl_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvConnectRtControl_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvCoordTransform_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/CoordTransform_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_a3996948d541acf82a920927a76293455965c48d4a2f1c3307854193104b2223"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 50
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 50
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 50
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    pos_in: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    ref_in: _py_int = 0
    ref_out: _py_int = 0

    def encode(self):
        writer = _Writer(50)
        _write_Ros2Dsr_msgs2SrvCoordTransform_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 50, 50)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvCoordTransform_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 50, 50))
        value = _read_Ros2Dsr_msgs2SrvCoordTransform_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvCoordTransform_Request = Ros2Dsr_msgs2SrvCoordTransform_Request


def _write_Ros2Dsr_msgs2SrvCoordTransform_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvCoordTransform_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.pos_in
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count0):
        _element = _part0[_index]
        writer.f64(_element)
    _part1 = value.ref_in
    writer.integer(_part1, 1, True)
    _part2 = value.ref_out
    writer.integer(_part2, 1, True)
    if not 50 <= len(writer.data) - _start <= 50:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvCoordTransform_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvCoordTransform_Request()
    value.pos_in = [reader.f64() for _ in range(6)]
    value.ref_in = reader.integer(1, True)
    value.ref_out = reader.integer(1, True)
    if not 50 <= reader.position - _start <= 50:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvCoordTransform_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/CoordTransform_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_8ab16c946ef4cce7da6ccb8b0d3b4940195d0b29841007de569d1ea503b6cc72"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 49
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 49
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 49
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    conv_posx: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    success: _py_bool = False

    def encode(self):
        writer = _Writer(49)
        _write_Ros2Dsr_msgs2SrvCoordTransform_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 49, 49)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvCoordTransform_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 49, 49))
        value = _read_Ros2Dsr_msgs2SrvCoordTransform_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvCoordTransform_Response = Ros2Dsr_msgs2SrvCoordTransform_Response


def _write_Ros2Dsr_msgs2SrvCoordTransform_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvCoordTransform_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.conv_posx
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count0):
        _element = _part0[_index]
        writer.f64(_element)
    _part1 = value.success
    if type(_part1) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part1), 1)
    if not 49 <= len(writer.data) - _start <= 49:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvCoordTransform_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvCoordTransform_Response()
    value.conv_posx = [reader.f64() for _ in range(6)]
    value.success = _read_bool(reader)
    if not 49 <= reader.position - _start <= 49:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvDisableAlterMotion_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/DisableAlterMotion_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_dc5d3ed630e183152040506dfe7dd28e5ff236a79ac75ec2d48d824446e97152"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros2Dsr_msgs2SrvDisableAlterMotion_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvDisableAlterMotion_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros2Dsr_msgs2SrvDisableAlterMotion_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvDisableAlterMotion_Request = Ros2Dsr_msgs2SrvDisableAlterMotion_Request


def _write_Ros2Dsr_msgs2SrvDisableAlterMotion_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvDisableAlterMotion_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros2Dsr_msgs2SrvDisableAlterMotion_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvDisableAlterMotion_Request()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvDisableAlterMotion_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/DisableAlterMotion_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_1bc0f75aa3e09ead2882ae862e0af520dd291c5d9f96414f98fa4a07f48a16e5"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvDisableAlterMotion_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvDisableAlterMotion_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvDisableAlterMotion_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvDisableAlterMotion_Response = Ros2Dsr_msgs2SrvDisableAlterMotion_Response


def _write_Ros2Dsr_msgs2SrvDisableAlterMotion_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvDisableAlterMotion_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvDisableAlterMotion_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvDisableAlterMotion_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvDisconnectRtControl_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/DisconnectRtControl_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_7745a5c8acbb39607c2eb275e9257608d928fb98a7a5a72c0a64d03980ba5524"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros2Dsr_msgs2SrvDisconnectRtControl_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvDisconnectRtControl_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros2Dsr_msgs2SrvDisconnectRtControl_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvDisconnectRtControl_Request = Ros2Dsr_msgs2SrvDisconnectRtControl_Request


def _write_Ros2Dsr_msgs2SrvDisconnectRtControl_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvDisconnectRtControl_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros2Dsr_msgs2SrvDisconnectRtControl_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvDisconnectRtControl_Request()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvDisconnectRtControl_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/DisconnectRtControl_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_e57ab63199570ab8d114a9f778cb307cedf0775f6ce96ae1edeade39f9a259a5"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvDisconnectRtControl_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvDisconnectRtControl_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvDisconnectRtControl_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvDisconnectRtControl_Response = Ros2Dsr_msgs2SrvDisconnectRtControl_Response


def _write_Ros2Dsr_msgs2SrvDisconnectRtControl_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvDisconnectRtControl_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvDisconnectRtControl_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvDisconnectRtControl_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvDrlPause_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/DrlPause_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_d3a522d19d07bf80ce8b3722d43c382b8d55693b9364d995f968b952335d35a6"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros2Dsr_msgs2SrvDrlPause_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvDrlPause_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros2Dsr_msgs2SrvDrlPause_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvDrlPause_Request = Ros2Dsr_msgs2SrvDrlPause_Request


def _write_Ros2Dsr_msgs2SrvDrlPause_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvDrlPause_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros2Dsr_msgs2SrvDrlPause_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvDrlPause_Request()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvDrlPause_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/DrlPause_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_43cc42f101181691ed6046767d35f623fd8c3b7ca2fff5244a2b832cd1906ab7"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvDrlPause_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvDrlPause_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvDrlPause_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvDrlPause_Response = Ros2Dsr_msgs2SrvDrlPause_Response


def _write_Ros2Dsr_msgs2SrvDrlPause_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvDrlPause_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvDrlPause_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvDrlPause_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvDrlResume_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/DrlResume_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_19bfb89dfedd6470fd3e2054556e20cdd15f430c93a563557d6240c81243eb05"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros2Dsr_msgs2SrvDrlResume_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvDrlResume_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros2Dsr_msgs2SrvDrlResume_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvDrlResume_Request = Ros2Dsr_msgs2SrvDrlResume_Request


def _write_Ros2Dsr_msgs2SrvDrlResume_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvDrlResume_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros2Dsr_msgs2SrvDrlResume_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvDrlResume_Request()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvDrlResume_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/DrlResume_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_a0447aaaaab43fe0287ff4aa85cc6d182320a036cf49f75e6552b9cf997de5ca"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvDrlResume_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvDrlResume_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvDrlResume_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvDrlResume_Response = Ros2Dsr_msgs2SrvDrlResume_Response


def _write_Ros2Dsr_msgs2SrvDrlResume_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvDrlResume_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvDrlResume_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvDrlResume_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvDrlStart_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/DrlStart_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_0bcd9b44a5bc387dd9fa6257a42d2cbdc0c0d5cc373e56abd50345520304395d"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 5
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 261
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 261
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    robot_system: _py_int = 0
    code: _py_str = ""

    def encode(self):
        writer = _Writer(261)
        _write_Ros2Dsr_msgs2SrvDrlStart_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 5, 261)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvDrlStart_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 5, 261))
        value = _read_Ros2Dsr_msgs2SrvDrlStart_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvDrlStart_Request = Ros2Dsr_msgs2SrvDrlStart_Request


def _write_Ros2Dsr_msgs2SrvDrlStart_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvDrlStart_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.robot_system
    writer.integer(_part0, 1, True)
    _part1 = value.code
    _write_text(writer, _part1, 256)
    if not 5 <= len(writer.data) - _start <= 261:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvDrlStart_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvDrlStart_Request()
    value.robot_system = reader.integer(1, True)
    value.code = _read_text(reader, 256)
    if not 5 <= reader.position - _start <= 261:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvDrlStart_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/DrlStart_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_c693ddb4d3cb430442fd669f4506d751a58c2f6aacd84b5f547bb498140f306f"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvDrlStart_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvDrlStart_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvDrlStart_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvDrlStart_Response = Ros2Dsr_msgs2SrvDrlStart_Response


def _write_Ros2Dsr_msgs2SrvDrlStart_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvDrlStart_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvDrlStart_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvDrlStart_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvDrlStop_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/DrlStop_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_a0b7682dc86c427b9b16a40a6d4e358bb3be307190bd02ae41d9e88af40ec6cd"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    stop_mode: _py_int = 0

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvDrlStop_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvDrlStop_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvDrlStop_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvDrlStop_Request = Ros2Dsr_msgs2SrvDrlStop_Request


def _write_Ros2Dsr_msgs2SrvDrlStop_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvDrlStop_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.stop_mode
    writer.integer(_part0, 1, True)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvDrlStop_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvDrlStop_Request()
    value.stop_mode = reader.integer(1, True)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvDrlStop_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/DrlStop_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_156eed5dd85047a2830dcfdeba5327f1836606bda78d45f379f6ec0542ff1c24"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvDrlStop_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvDrlStop_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvDrlStop_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvDrlStop_Response = Ros2Dsr_msgs2SrvDrlStop_Response


def _write_Ros2Dsr_msgs2SrvDrlStop_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvDrlStop_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvDrlStop_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvDrlStop_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvEnableAlterMotion_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/EnableAlterMotion_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_7615d1d9c40d8a6aed080f6185b80a7c6124db6aa979d7f670e81019c7633ffc"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 38
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 38
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 38
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    n: _py_int = 0
    mode: _py_int = 0
    ref: _py_int = 0
    limit_dpos: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(2)])
    limit_dpos_per: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(2)])

    def encode(self):
        writer = _Writer(38)
        _write_Ros2Dsr_msgs2SrvEnableAlterMotion_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 38, 38)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvEnableAlterMotion_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 38, 38))
        value = _read_Ros2Dsr_msgs2SrvEnableAlterMotion_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvEnableAlterMotion_Request = Ros2Dsr_msgs2SrvEnableAlterMotion_Request


def _write_Ros2Dsr_msgs2SrvEnableAlterMotion_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvEnableAlterMotion_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.n
    writer.integer(_part0, 4, True)
    _part1 = value.mode
    writer.integer(_part1, 1, True)
    _part2 = value.ref
    writer.integer(_part2, 1, True)
    _part3 = value.limit_dpos
    if type(_part3) not in (list, tuple):
        raise TypeError("array value required")
    _count3 = len(_part3)
    if _count3 != 2:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count3):
        _element = _part3[_index]
        writer.f64(_element)
    _part4 = value.limit_dpos_per
    if type(_part4) not in (list, tuple):
        raise TypeError("array value required")
    _count4 = len(_part4)
    if _count4 != 2:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count4):
        _element = _part4[_index]
        writer.f64(_element)
    if not 38 <= len(writer.data) - _start <= 38:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvEnableAlterMotion_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvEnableAlterMotion_Request()
    value.n = reader.integer(4, True)
    value.mode = reader.integer(1, True)
    value.ref = reader.integer(1, True)
    value.limit_dpos = [reader.f64() for _ in range(2)]
    value.limit_dpos_per = [reader.f64() for _ in range(2)]
    if not 38 <= reader.position - _start <= 38:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvEnableAlterMotion_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/EnableAlterMotion_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_5378b5727bd63d42483a26d7bf5df1aaad836ed6d0456806c7d6cb1f851e8f7f"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvEnableAlterMotion_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvEnableAlterMotion_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvEnableAlterMotion_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvEnableAlterMotion_Response = Ros2Dsr_msgs2SrvEnableAlterMotion_Response


def _write_Ros2Dsr_msgs2SrvEnableAlterMotion_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvEnableAlterMotion_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvEnableAlterMotion_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvEnableAlterMotion_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvFkin_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/Fkin_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_f068464c2b4970811378456c7d036a2697c43d38736447fbbdbf4b1fafe2625f"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 49
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 49
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 49
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    pos: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    ref: _py_int = 0

    def encode(self):
        writer = _Writer(49)
        _write_Ros2Dsr_msgs2SrvFkin_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 49, 49)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvFkin_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 49, 49))
        value = _read_Ros2Dsr_msgs2SrvFkin_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvFkin_Request = Ros2Dsr_msgs2SrvFkin_Request


def _write_Ros2Dsr_msgs2SrvFkin_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvFkin_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.pos
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count0):
        _element = _part0[_index]
        writer.f64(_element)
    _part1 = value.ref
    writer.integer(_part1, 1, True)
    if not 49 <= len(writer.data) - _start <= 49:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvFkin_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvFkin_Request()
    value.pos = [reader.f64() for _ in range(6)]
    value.ref = reader.integer(1, True)
    if not 49 <= reader.position - _start <= 49:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvFkin_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/Fkin_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_b373f093b247590ca30d22f0cc8bd5104267b03ac14301795a5aa8796b5e7d1b"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 49
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 49
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 49
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    conv_posx: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    success: _py_bool = False

    def encode(self):
        writer = _Writer(49)
        _write_Ros2Dsr_msgs2SrvFkin_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 49, 49)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvFkin_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 49, 49))
        value = _read_Ros2Dsr_msgs2SrvFkin_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvFkin_Response = Ros2Dsr_msgs2SrvFkin_Response


def _write_Ros2Dsr_msgs2SrvFkin_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvFkin_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.conv_posx
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count0):
        _element = _part0[_index]
        writer.f64(_element)
    _part1 = value.success
    if type(_part1) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part1), 1)
    if not 49 <= len(writer.data) - _start <= 49:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvFkin_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvFkin_Response()
    value.conv_posx = [reader.f64() for _ in range(6)]
    value.success = _read_bool(reader)
    if not 49 <= reader.position - _start <= 49:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetControlMode_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetControlMode_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_d80c98c4bc5b2426b9842f3dc9e9d282449cffd222efaacdc23a09205c3c69ea"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros2Dsr_msgs2SrvGetControlMode_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetControlMode_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros2Dsr_msgs2SrvGetControlMode_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetControlMode_Request = Ros2Dsr_msgs2SrvGetControlMode_Request


def _write_Ros2Dsr_msgs2SrvGetControlMode_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetControlMode_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros2Dsr_msgs2SrvGetControlMode_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetControlMode_Request()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetControlMode_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetControlMode_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_56a3a864dffea1761165081f90a8303246177905522e84e0f30a12526117e824"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 2
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 2
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 2
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    control_mode: _py_int = 0
    success: _py_bool = False

    def encode(self):
        writer = _Writer(2)
        _write_Ros2Dsr_msgs2SrvGetControlMode_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 2, 2)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetControlMode_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 2, 2))
        value = _read_Ros2Dsr_msgs2SrvGetControlMode_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetControlMode_Response = Ros2Dsr_msgs2SrvGetControlMode_Response


def _write_Ros2Dsr_msgs2SrvGetControlMode_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetControlMode_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.control_mode
    writer.integer(_part0, 1, True)
    _part1 = value.success
    if type(_part1) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part1), 1)
    if not 2 <= len(writer.data) - _start <= 2:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvGetControlMode_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetControlMode_Response()
    value.control_mode = reader.integer(1, True)
    value.success = _read_bool(reader)
    if not 2 <= reader.position - _start <= 2:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetControlSpace_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetControlSpace_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_ea6654e3794c2b36c3d10311e407b6d4e12bca59b9a9b763880917e762e6dfaa"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros2Dsr_msgs2SrvGetControlSpace_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetControlSpace_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros2Dsr_msgs2SrvGetControlSpace_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetControlSpace_Request = Ros2Dsr_msgs2SrvGetControlSpace_Request


def _write_Ros2Dsr_msgs2SrvGetControlSpace_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetControlSpace_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros2Dsr_msgs2SrvGetControlSpace_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetControlSpace_Request()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetControlSpace_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetControlSpace_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_546ae346425d48252237f4b3f129145e5190dda43e29bf4080bc17a489deef41"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 2
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 2
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 2
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    space: _py_int = 0
    success: _py_bool = False

    def encode(self):
        writer = _Writer(2)
        _write_Ros2Dsr_msgs2SrvGetControlSpace_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 2, 2)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetControlSpace_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 2, 2))
        value = _read_Ros2Dsr_msgs2SrvGetControlSpace_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetControlSpace_Response = Ros2Dsr_msgs2SrvGetControlSpace_Response


def _write_Ros2Dsr_msgs2SrvGetControlSpace_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetControlSpace_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.space
    writer.integer(_part0, 1, True)
    _part1 = value.success
    if type(_part1) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part1), 1)
    if not 2 <= len(writer.data) - _start <= 2:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvGetControlSpace_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetControlSpace_Response()
    value.space = reader.integer(1, True)
    value.success = _read_bool(reader)
    if not 2 <= reader.position - _start <= 2:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetCtrlBoxAnalogInput_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_08335af395bc5602dfc0ed599a45d1a0e315a404729bc430fcf1e2c8f7b815e7"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    channel: _py_int = 0

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Request = Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Request


def _write_Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.channel
    writer.integer(_part0, 1, True)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Request()
    value.channel = reader.integer(1, True)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetCtrlBoxAnalogInput_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_e6980a35668e6e96dc588b8e47aa0b5b33235f1e7f36aa9503378749ce707d09"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 9
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 9
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 9
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    value: _py_float = 0.0
    success: _py_bool = False

    def encode(self):
        writer = _Writer(9)
        _write_Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 9, 9)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 9, 9))
        value = _read_Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Response = Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Response


def _write_Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.value
    writer.f64(_part0)
    _part1 = value.success
    if type(_part1) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part1), 1)
    if not 9 <= len(writer.data) - _start <= 9:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Response()
    value.value = reader.f64()
    value.success = _read_bool(reader)
    if not 9 <= reader.position - _start <= 9:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetCtrlBoxDigitalInput_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_d4a390f79cd4ec51ae40899d9f2253f49a9d589029a03625f4078e7c5d511e4e"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    index: _py_int = 0

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Request = Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Request


def _write_Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.index
    writer.integer(_part0, 1, True)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Request()
    value.index = reader.integer(1, True)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetCtrlBoxDigitalInput_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_1ff53e438120200e50511d0ddbae9498084bb690292d45a46701e9efe915e03d"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 2
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 2
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 2
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    value: _py_int = 0
    success: _py_bool = False

    def encode(self):
        writer = _Writer(2)
        _write_Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 2, 2)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 2, 2))
        value = _read_Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Response = Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Response


def _write_Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.value
    writer.integer(_part0, 1, True)
    _part1 = value.success
    if type(_part1) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part1), 1)
    if not 2 <= len(writer.data) - _start <= 2:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Response()
    value.value = reader.integer(1, True)
    value.success = _read_bool(reader)
    if not 2 <= reader.position - _start <= 2:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetCtrlBoxDigitalOutput_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_ef4e865a9b5c7402332ec14ed19177cdb88503352a0a53b2746045dadac02e55"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    index: _py_int = 0

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Request = Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Request


def _write_Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.index
    writer.integer(_part0, 1, True)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Request()
    value.index = reader.integer(1, True)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetCtrlBoxDigitalOutput_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_d5048e8f272eda1d8c034f65d357ff49b5a0407f7ec0c6255b4919c7e41dce02"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 2
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 2
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 2
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    value: _py_int = 0
    success: _py_bool = False

    def encode(self):
        writer = _Writer(2)
        _write_Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 2, 2)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 2, 2))
        value = _read_Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Response = Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Response


def _write_Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.value
    writer.integer(_part0, 1, True)
    _part1 = value.success
    if type(_part1) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part1), 1)
    if not 2 <= len(writer.data) - _start <= 2:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Response()
    value.value = reader.integer(1, True)
    value.success = _read_bool(reader)
    if not 2 <= reader.position - _start <= 2:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetCurrentPose_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetCurrentPose_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_d5b0aeb2f72918c086d24e32685fb17be635849416d2dc9a440dd51b409af06c"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    space_type: _py_int = 0

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvGetCurrentPose_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetCurrentPose_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvGetCurrentPose_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetCurrentPose_Request = Ros2Dsr_msgs2SrvGetCurrentPose_Request


def _write_Ros2Dsr_msgs2SrvGetCurrentPose_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetCurrentPose_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.space_type
    writer.integer(_part0, 1, True)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvGetCurrentPose_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetCurrentPose_Request()
    value.space_type = reader.integer(1, True)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetCurrentPose_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetCurrentPose_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_296fc33e4b04d2c770600842339bd545bbe72b8ba700a2236c3983c80124dcf1"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 49
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 49
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 49
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    pos: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    success: _py_bool = False

    def encode(self):
        writer = _Writer(49)
        _write_Ros2Dsr_msgs2SrvGetCurrentPose_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 49, 49)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetCurrentPose_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 49, 49))
        value = _read_Ros2Dsr_msgs2SrvGetCurrentPose_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetCurrentPose_Response = Ros2Dsr_msgs2SrvGetCurrentPose_Response


def _write_Ros2Dsr_msgs2SrvGetCurrentPose_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetCurrentPose_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.pos
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count0):
        _element = _part0[_index]
        writer.f64(_element)
    _part1 = value.success
    if type(_part1) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part1), 1)
    if not 49 <= len(writer.data) - _start <= 49:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvGetCurrentPose_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetCurrentPose_Response()
    value.pos = [reader.f64() for _ in range(6)]
    value.success = _read_bool(reader)
    if not 49 <= reader.position - _start <= 49:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetCurrentPosj_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetCurrentPosj_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_1cf038d6627d1a5ddcf3ffbce7cfd1416e9d3e8c63dc13c38dfa139050544f44"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros2Dsr_msgs2SrvGetCurrentPosj_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetCurrentPosj_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros2Dsr_msgs2SrvGetCurrentPosj_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetCurrentPosj_Request = Ros2Dsr_msgs2SrvGetCurrentPosj_Request


def _write_Ros2Dsr_msgs2SrvGetCurrentPosj_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetCurrentPosj_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros2Dsr_msgs2SrvGetCurrentPosj_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetCurrentPosj_Request()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetCurrentPosj_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetCurrentPosj_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_f1b5d0285e81567ee77f3b688de5f6eb3c1340e2e99f6d5030d0ac77b7088e13"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 49
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 49
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 49
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    pos: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    success: _py_bool = False

    def encode(self):
        writer = _Writer(49)
        _write_Ros2Dsr_msgs2SrvGetCurrentPosj_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 49, 49)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetCurrentPosj_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 49, 49))
        value = _read_Ros2Dsr_msgs2SrvGetCurrentPosj_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetCurrentPosj_Response = Ros2Dsr_msgs2SrvGetCurrentPosj_Response


def _write_Ros2Dsr_msgs2SrvGetCurrentPosj_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetCurrentPosj_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.pos
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count0):
        _element = _part0[_index]
        writer.f64(_element)
    _part1 = value.success
    if type(_part1) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part1), 1)
    if not 49 <= len(writer.data) - _start <= 49:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvGetCurrentPosj_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetCurrentPosj_Response()
    value.pos = [reader.f64() for _ in range(6)]
    value.success = _read_bool(reader)
    if not 49 <= reader.position - _start <= 49:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetCurrentPosx_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetCurrentPosx_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_57fc5ddeafbed4d32ed4ba322abf43b4ffbe73c3b737f0529b3e60ef01ce9943"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    ref: _py_int = 0

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvGetCurrentPosx_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetCurrentPosx_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvGetCurrentPosx_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetCurrentPosx_Request = Ros2Dsr_msgs2SrvGetCurrentPosx_Request


def _write_Ros2Dsr_msgs2SrvGetCurrentPosx_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetCurrentPosx_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.ref
    writer.integer(_part0, 1, True)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvGetCurrentPosx_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetCurrentPosx_Request()
    value.ref = reader.integer(1, True)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetCurrentPosx_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetCurrentPosx_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_cb48d05f4193cfb0a70d674a2f4845edca145c1ec2df8f76e3776a75fa0254a8"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 5
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 2213
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 2213
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    task_pos_info: _py_list[_record_Ros2Std_msgsMsgFloat64MultiArray] = _field(default_factory=lambda: [])
    success: _py_bool = False

    def encode(self):
        writer = _Writer(2213)
        _write_Ros2Dsr_msgs2SrvGetCurrentPosx_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 5, 2213)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetCurrentPosx_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 5, 2213))
        value = _read_Ros2Dsr_msgs2SrvGetCurrentPosx_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetCurrentPosx_Response = Ros2Dsr_msgs2SrvGetCurrentPosx_Response


def _write_Ros2Dsr_msgs2SrvGetCurrentPosx_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetCurrentPosx_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.task_pos_info
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 > 6:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count0, 4)
    for _index in range(_count0):
        _element = _part0[_index]
        _write_Ros2Std_msgsMsgFloat64MultiArray(writer, _element)
    _part1 = value.success
    if type(_part1) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part1), 1)
    if not 5 <= len(writer.data) - _start <= 2213:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvGetCurrentPosx_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetCurrentPosx_Response()
    value.task_pos_info = [
        _read_Ros2Std_msgsMsgFloat64MultiArray(reader) for _ in range(_read_count(reader, 6, 12))
    ]
    value.success = _read_bool(reader)
    if not 5 <= reader.position - _start <= 2213:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetCurrentRotm_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetCurrentRotm_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_c691d82e22924caeb734c965ee15cf46ea206aabd4621b14bde07833b661971c"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    ref: _py_int = 0

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvGetCurrentRotm_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetCurrentRotm_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvGetCurrentRotm_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetCurrentRotm_Request = Ros2Dsr_msgs2SrvGetCurrentRotm_Request


def _write_Ros2Dsr_msgs2SrvGetCurrentRotm_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetCurrentRotm_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.ref
    writer.integer(_part0, 1, True)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvGetCurrentRotm_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetCurrentRotm_Request()
    value.ref = reader.integer(1, True)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetCurrentRotm_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetCurrentRotm_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_07665bca70c62297a983ff28a353b8dc3e25a55b938d1e8a7d00f7b99fe659ca"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 5
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 2213
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 2213
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    rot_matrix: _py_list[_record_Ros2Std_msgsMsgFloat64MultiArray] = _field(default_factory=lambda: [])
    success: _py_bool = False

    def encode(self):
        writer = _Writer(2213)
        _write_Ros2Dsr_msgs2SrvGetCurrentRotm_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 5, 2213)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetCurrentRotm_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 5, 2213))
        value = _read_Ros2Dsr_msgs2SrvGetCurrentRotm_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetCurrentRotm_Response = Ros2Dsr_msgs2SrvGetCurrentRotm_Response


def _write_Ros2Dsr_msgs2SrvGetCurrentRotm_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetCurrentRotm_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.rot_matrix
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 > 6:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count0, 4)
    for _index in range(_count0):
        _element = _part0[_index]
        _write_Ros2Std_msgsMsgFloat64MultiArray(writer, _element)
    _part1 = value.success
    if type(_part1) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part1), 1)
    if not 5 <= len(writer.data) - _start <= 2213:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvGetCurrentRotm_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetCurrentRotm_Response()
    value.rot_matrix = [
        _read_Ros2Std_msgsMsgFloat64MultiArray(reader) for _ in range(_read_count(reader, 6, 12))
    ]
    value.success = _read_bool(reader)
    if not 5 <= reader.position - _start <= 2213:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetCurrentSolutionSpace_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_7cd7c65658f1063c1ef9af93d72f1414d547179bd00310cb70301e6f93029a96"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Request = Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Request


def _write_Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Request()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetCurrentSolutionSpace_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_f414cb291de9891680fd80e6173f5026cc105fb4d0a84781a65a44f8104fa34a"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 2
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 2
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 2
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    sol_space: _py_int = 0
    success: _py_bool = False

    def encode(self):
        writer = _Writer(2)
        _write_Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 2, 2)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 2, 2))
        value = _read_Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Response = Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Response


def _write_Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.sol_space
    writer.integer(_part0, 1, True)
    _part1 = value.success
    if type(_part1) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part1), 1)
    if not 2 <= len(writer.data) - _start <= 2:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Response()
    value.sol_space = reader.integer(1, True)
    value.success = _read_bool(reader)
    if not 2 <= reader.position - _start <= 2:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetCurrentTcp_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetCurrentTcp_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_4324587d3246a8127cd50048c55cd3c472eed6d4c3af4aefa3216a8936a06ee4"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros2Dsr_msgs2SrvGetCurrentTcp_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetCurrentTcp_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros2Dsr_msgs2SrvGetCurrentTcp_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetCurrentTcp_Request = Ros2Dsr_msgs2SrvGetCurrentTcp_Request


def _write_Ros2Dsr_msgs2SrvGetCurrentTcp_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetCurrentTcp_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros2Dsr_msgs2SrvGetCurrentTcp_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetCurrentTcp_Request()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetCurrentTcp_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetCurrentTcp_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_f1cf522c9008d5c97f5fa8616d2baef9aef355350189c2ca77a22189a235c596"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 5
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 261
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 261
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    info: _py_str = ""
    success: _py_bool = False

    def encode(self):
        writer = _Writer(261)
        _write_Ros2Dsr_msgs2SrvGetCurrentTcp_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 5, 261)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetCurrentTcp_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 5, 261))
        value = _read_Ros2Dsr_msgs2SrvGetCurrentTcp_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetCurrentTcp_Response = Ros2Dsr_msgs2SrvGetCurrentTcp_Response


def _write_Ros2Dsr_msgs2SrvGetCurrentTcp_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetCurrentTcp_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.info
    _write_text(writer, _part0, 256)
    _part1 = value.success
    if type(_part1) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part1), 1)
    if not 5 <= len(writer.data) - _start <= 261:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvGetCurrentTcp_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetCurrentTcp_Response()
    value.info = _read_text(reader, 256)
    value.success = _read_bool(reader)
    if not 5 <= reader.position - _start <= 261:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetCurrentTool_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetCurrentTool_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_59737c01f8da615dc929190326bddd2d2e65b813f2407770c04b8d7afc915351"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros2Dsr_msgs2SrvGetCurrentTool_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetCurrentTool_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros2Dsr_msgs2SrvGetCurrentTool_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetCurrentTool_Request = Ros2Dsr_msgs2SrvGetCurrentTool_Request


def _write_Ros2Dsr_msgs2SrvGetCurrentTool_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetCurrentTool_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros2Dsr_msgs2SrvGetCurrentTool_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetCurrentTool_Request()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetCurrentTool_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetCurrentTool_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_6be3858c1b239a883173227e0b498af9123c7e23f76db6024275dbc7e1b5aa5b"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 5
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 261
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 261
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    info: _py_str = ""
    success: _py_bool = False

    def encode(self):
        writer = _Writer(261)
        _write_Ros2Dsr_msgs2SrvGetCurrentTool_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 5, 261)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetCurrentTool_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 5, 261))
        value = _read_Ros2Dsr_msgs2SrvGetCurrentTool_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetCurrentTool_Response = Ros2Dsr_msgs2SrvGetCurrentTool_Response


def _write_Ros2Dsr_msgs2SrvGetCurrentTool_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetCurrentTool_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.info
    _write_text(writer, _part0, 256)
    _part1 = value.success
    if type(_part1) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part1), 1)
    if not 5 <= len(writer.data) - _start <= 261:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvGetCurrentTool_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetCurrentTool_Response()
    value.info = _read_text(reader, 256)
    value.success = _read_bool(reader)
    if not 5 <= reader.position - _start <= 261:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetCurrentToolFlangePosx_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_e029ff9167245532d66a76380ba9ab1753d56b402ab1242ac13a91ede1350d02"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    ref: _py_int = 0

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Request = Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Request


def _write_Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.ref
    writer.integer(_part0, 1, True)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Request()
    value.ref = reader.integer(1, True)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetCurrentToolFlangePosx_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_be24b0c65aa81bdfa3b349ca08b207b8cbb9f8622dd97559c160c92ce93e16c6"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 49
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 49
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 49
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    pos: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    success: _py_bool = False

    def encode(self):
        writer = _Writer(49)
        _write_Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 49, 49)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 49, 49))
        value = _read_Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Response = Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Response


def _write_Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.pos
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count0):
        _element = _part0[_index]
        writer.f64(_element)
    _part1 = value.success
    if type(_part1) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part1), 1)
    if not 49 <= len(writer.data) - _start <= 49:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Response()
    value.pos = [reader.f64() for _ in range(6)]
    value.success = _read_bool(reader)
    if not 49 <= reader.position - _start <= 49:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetCurrentVelj_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetCurrentVelj_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_d4bef08af9d4ed3e0b44b015c85c70f8c687871846818a46b97db4351b8ad876"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros2Dsr_msgs2SrvGetCurrentVelj_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetCurrentVelj_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros2Dsr_msgs2SrvGetCurrentVelj_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetCurrentVelj_Request = Ros2Dsr_msgs2SrvGetCurrentVelj_Request


def _write_Ros2Dsr_msgs2SrvGetCurrentVelj_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetCurrentVelj_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros2Dsr_msgs2SrvGetCurrentVelj_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetCurrentVelj_Request()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetCurrentVelj_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetCurrentVelj_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_d07a760d106d768184e69426ef5e23d6ffd7569a0ae6c30fdc7e627ecdba494d"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 49
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 49
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 49
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    joint_speed: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    success: _py_bool = False

    def encode(self):
        writer = _Writer(49)
        _write_Ros2Dsr_msgs2SrvGetCurrentVelj_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 49, 49)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetCurrentVelj_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 49, 49))
        value = _read_Ros2Dsr_msgs2SrvGetCurrentVelj_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetCurrentVelj_Response = Ros2Dsr_msgs2SrvGetCurrentVelj_Response


def _write_Ros2Dsr_msgs2SrvGetCurrentVelj_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetCurrentVelj_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.joint_speed
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count0):
        _element = _part0[_index]
        writer.f64(_element)
    _part1 = value.success
    if type(_part1) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part1), 1)
    if not 49 <= len(writer.data) - _start <= 49:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvGetCurrentVelj_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetCurrentVelj_Response()
    value.joint_speed = [reader.f64() for _ in range(6)]
    value.success = _read_bool(reader)
    if not 49 <= reader.position - _start <= 49:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetCurrentVelx_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetCurrentVelx_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_f14760f7a2387ae587c28c05ec130e4728e85c38961813d9932adf037c353e83"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    ref: _py_int = 0

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvGetCurrentVelx_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetCurrentVelx_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvGetCurrentVelx_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetCurrentVelx_Request = Ros2Dsr_msgs2SrvGetCurrentVelx_Request


def _write_Ros2Dsr_msgs2SrvGetCurrentVelx_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetCurrentVelx_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.ref
    writer.integer(_part0, 1, True)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvGetCurrentVelx_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetCurrentVelx_Request()
    value.ref = reader.integer(1, True)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetCurrentVelx_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetCurrentVelx_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_2f9645de7b8fec40b7dbcf9d572404009d9ff7f96ef3692ca7bc8fbfc5188aef"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 49
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 49
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 49
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    vel: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    success: _py_bool = False

    def encode(self):
        writer = _Writer(49)
        _write_Ros2Dsr_msgs2SrvGetCurrentVelx_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 49, 49)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetCurrentVelx_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 49, 49))
        value = _read_Ros2Dsr_msgs2SrvGetCurrentVelx_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetCurrentVelx_Response = Ros2Dsr_msgs2SrvGetCurrentVelx_Response


def _write_Ros2Dsr_msgs2SrvGetCurrentVelx_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetCurrentVelx_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.vel
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count0):
        _element = _part0[_index]
        writer.f64(_element)
    _part1 = value.success
    if type(_part1) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part1), 1)
    if not 49 <= len(writer.data) - _start <= 49:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvGetCurrentVelx_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetCurrentVelx_Response()
    value.vel = [reader.f64() for _ in range(6)]
    value.success = _read_bool(reader)
    if not 49 <= reader.position - _start <= 49:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetDesiredPosj_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetDesiredPosj_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_9c8b229eb0bd52e826fdc03e6826b532897aae952e841e35b31c866edf0b3cd5"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros2Dsr_msgs2SrvGetDesiredPosj_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetDesiredPosj_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros2Dsr_msgs2SrvGetDesiredPosj_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetDesiredPosj_Request = Ros2Dsr_msgs2SrvGetDesiredPosj_Request


def _write_Ros2Dsr_msgs2SrvGetDesiredPosj_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetDesiredPosj_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros2Dsr_msgs2SrvGetDesiredPosj_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetDesiredPosj_Request()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetDesiredPosj_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetDesiredPosj_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_0a725b8def984030fb01a2847d7e792b77e7d49007bd996b990671ceaa5facc0"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 49
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 49
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 49
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    pos: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    success: _py_bool = False

    def encode(self):
        writer = _Writer(49)
        _write_Ros2Dsr_msgs2SrvGetDesiredPosj_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 49, 49)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetDesiredPosj_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 49, 49))
        value = _read_Ros2Dsr_msgs2SrvGetDesiredPosj_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetDesiredPosj_Response = Ros2Dsr_msgs2SrvGetDesiredPosj_Response


def _write_Ros2Dsr_msgs2SrvGetDesiredPosj_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetDesiredPosj_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.pos
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count0):
        _element = _part0[_index]
        writer.f64(_element)
    _part1 = value.success
    if type(_part1) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part1), 1)
    if not 49 <= len(writer.data) - _start <= 49:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvGetDesiredPosj_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetDesiredPosj_Response()
    value.pos = [reader.f64() for _ in range(6)]
    value.success = _read_bool(reader)
    if not 49 <= reader.position - _start <= 49:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetDesiredPosx_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetDesiredPosx_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_6f9016a247e3c8c489ffbf4fc16c4c457e21220294e6859496ec3015441dc069"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    ref: _py_int = 0

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvGetDesiredPosx_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetDesiredPosx_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvGetDesiredPosx_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetDesiredPosx_Request = Ros2Dsr_msgs2SrvGetDesiredPosx_Request


def _write_Ros2Dsr_msgs2SrvGetDesiredPosx_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetDesiredPosx_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.ref
    writer.integer(_part0, 1, True)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvGetDesiredPosx_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetDesiredPosx_Request()
    value.ref = reader.integer(1, True)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetDesiredPosx_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetDesiredPosx_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_cc1f5ad8fd61a77b2c0dbdb1f9e0c7b899b1bdfdbf535308bbd160d001ad1c09"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 49
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 49
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 49
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    pos: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    success: _py_bool = False

    def encode(self):
        writer = _Writer(49)
        _write_Ros2Dsr_msgs2SrvGetDesiredPosx_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 49, 49)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetDesiredPosx_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 49, 49))
        value = _read_Ros2Dsr_msgs2SrvGetDesiredPosx_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetDesiredPosx_Response = Ros2Dsr_msgs2SrvGetDesiredPosx_Response


def _write_Ros2Dsr_msgs2SrvGetDesiredPosx_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetDesiredPosx_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.pos
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count0):
        _element = _part0[_index]
        writer.f64(_element)
    _part1 = value.success
    if type(_part1) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part1), 1)
    if not 49 <= len(writer.data) - _start <= 49:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvGetDesiredPosx_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetDesiredPosx_Response()
    value.pos = [reader.f64() for _ in range(6)]
    value.success = _read_bool(reader)
    if not 49 <= reader.position - _start <= 49:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetDesiredVelj_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetDesiredVelj_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_56535748a42f6d003d24c5e176ca34bb960e9d112f209080178a55450e52d281"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros2Dsr_msgs2SrvGetDesiredVelj_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetDesiredVelj_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros2Dsr_msgs2SrvGetDesiredVelj_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetDesiredVelj_Request = Ros2Dsr_msgs2SrvGetDesiredVelj_Request


def _write_Ros2Dsr_msgs2SrvGetDesiredVelj_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetDesiredVelj_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros2Dsr_msgs2SrvGetDesiredVelj_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetDesiredVelj_Request()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetDesiredVelj_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetDesiredVelj_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_709f364917c007a6561766e576cdfb7c1e39e72b1852f83c9bec61721dd3b936"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 49
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 49
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 49
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    joint_vel: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    success: _py_bool = False

    def encode(self):
        writer = _Writer(49)
        _write_Ros2Dsr_msgs2SrvGetDesiredVelj_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 49, 49)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetDesiredVelj_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 49, 49))
        value = _read_Ros2Dsr_msgs2SrvGetDesiredVelj_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetDesiredVelj_Response = Ros2Dsr_msgs2SrvGetDesiredVelj_Response


def _write_Ros2Dsr_msgs2SrvGetDesiredVelj_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetDesiredVelj_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.joint_vel
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count0):
        _element = _part0[_index]
        writer.f64(_element)
    _part1 = value.success
    if type(_part1) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part1), 1)
    if not 49 <= len(writer.data) - _start <= 49:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvGetDesiredVelj_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetDesiredVelj_Response()
    value.joint_vel = [reader.f64() for _ in range(6)]
    value.success = _read_bool(reader)
    if not 49 <= reader.position - _start <= 49:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetDesiredVelx_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetDesiredVelx_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_754325c879930a58938d2acd7433605cc148cf57341fe9b0ef1870653a9fae12"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    ref: _py_int = 0

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvGetDesiredVelx_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetDesiredVelx_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvGetDesiredVelx_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetDesiredVelx_Request = Ros2Dsr_msgs2SrvGetDesiredVelx_Request


def _write_Ros2Dsr_msgs2SrvGetDesiredVelx_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetDesiredVelx_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.ref
    writer.integer(_part0, 1, True)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvGetDesiredVelx_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetDesiredVelx_Request()
    value.ref = reader.integer(1, True)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetDesiredVelx_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetDesiredVelx_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_55addb1448eb568ef90aa85cdeeee8044d9b37544a7ca4d208e91ba3aefe16bc"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 49
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 49
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 49
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    vel: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    success: _py_bool = False

    def encode(self):
        writer = _Writer(49)
        _write_Ros2Dsr_msgs2SrvGetDesiredVelx_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 49, 49)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetDesiredVelx_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 49, 49))
        value = _read_Ros2Dsr_msgs2SrvGetDesiredVelx_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetDesiredVelx_Response = Ros2Dsr_msgs2SrvGetDesiredVelx_Response


def _write_Ros2Dsr_msgs2SrvGetDesiredVelx_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetDesiredVelx_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.vel
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count0):
        _element = _part0[_index]
        writer.f64(_element)
    _part1 = value.success
    if type(_part1) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part1), 1)
    if not 49 <= len(writer.data) - _start <= 49:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvGetDesiredVelx_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetDesiredVelx_Response()
    value.vel = [reader.f64() for _ in range(6)]
    value.success = _read_bool(reader)
    if not 49 <= reader.position - _start <= 49:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetDrlState_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetDrlState_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_19a78a7cf9b010009bc481194271904a47cad587fa2e46fcc01e9e3f94c65e3e"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros2Dsr_msgs2SrvGetDrlState_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetDrlState_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros2Dsr_msgs2SrvGetDrlState_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetDrlState_Request = Ros2Dsr_msgs2SrvGetDrlState_Request


def _write_Ros2Dsr_msgs2SrvGetDrlState_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetDrlState_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros2Dsr_msgs2SrvGetDrlState_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetDrlState_Request()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetDrlState_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetDrlState_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_58b6574dd8d3006509e0e7c98a4d64f32fc1a3fa5e8a8efcb567e9c34b102699"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 2
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 2
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 2
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    drl_state: _py_int = 0
    success: _py_bool = False

    def encode(self):
        writer = _Writer(2)
        _write_Ros2Dsr_msgs2SrvGetDrlState_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 2, 2)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetDrlState_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 2, 2))
        value = _read_Ros2Dsr_msgs2SrvGetDrlState_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetDrlState_Response = Ros2Dsr_msgs2SrvGetDrlState_Response


def _write_Ros2Dsr_msgs2SrvGetDrlState_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetDrlState_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.drl_state
    writer.integer(_part0, 1, True)
    _part1 = value.success
    if type(_part1) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part1), 1)
    if not 2 <= len(writer.data) - _start <= 2:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvGetDrlState_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetDrlState_Response()
    value.drl_state = reader.integer(1, True)
    value.success = _read_bool(reader)
    if not 2 <= reader.position - _start <= 2:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetExternalTorque_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetExternalTorque_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_90ea09af03677cd42016abf4e88e4ef73e7aad43c5bf37804c7f50918ad71f3a"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros2Dsr_msgs2SrvGetExternalTorque_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetExternalTorque_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros2Dsr_msgs2SrvGetExternalTorque_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetExternalTorque_Request = Ros2Dsr_msgs2SrvGetExternalTorque_Request


def _write_Ros2Dsr_msgs2SrvGetExternalTorque_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetExternalTorque_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros2Dsr_msgs2SrvGetExternalTorque_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetExternalTorque_Request()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetExternalTorque_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetExternalTorque_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_617665ff9f0817f3426b8fb61409061d5f7cde6603c61993e1aec013b3021f6d"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 49
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 49
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 49
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    ext_torque: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    success: _py_bool = False

    def encode(self):
        writer = _Writer(49)
        _write_Ros2Dsr_msgs2SrvGetExternalTorque_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 49, 49)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetExternalTorque_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 49, 49))
        value = _read_Ros2Dsr_msgs2SrvGetExternalTorque_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetExternalTorque_Response = Ros2Dsr_msgs2SrvGetExternalTorque_Response


def _write_Ros2Dsr_msgs2SrvGetExternalTorque_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetExternalTorque_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.ext_torque
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count0):
        _element = _part0[_index]
        writer.f64(_element)
    _part1 = value.success
    if type(_part1) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part1), 1)
    if not 49 <= len(writer.data) - _start <= 49:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvGetExternalTorque_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetExternalTorque_Response()
    value.ext_torque = [reader.f64() for _ in range(6)]
    value.success = _read_bool(reader)
    if not 49 <= reader.position - _start <= 49:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetInputRegisterBit_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetInputRegisterBit_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_357c348741cb21e92bd0e4962361dd84ed11db8f6868d84e4cdfd535fc215cae"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 6
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 6
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 6
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    address: _py_int = 0
    timeout_ms: _py_int = 0

    def encode(self):
        writer = _Writer(6)
        _write_Ros2Dsr_msgs2SrvGetInputRegisterBit_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 6, 6)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetInputRegisterBit_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 6, 6))
        value = _read_Ros2Dsr_msgs2SrvGetInputRegisterBit_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetInputRegisterBit_Request = Ros2Dsr_msgs2SrvGetInputRegisterBit_Request


def _write_Ros2Dsr_msgs2SrvGetInputRegisterBit_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetInputRegisterBit_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.address
    writer.integer(_part0, 2, False)
    _part1 = value.timeout_ms
    writer.integer(_part1, 4, False)
    if not 6 <= len(writer.data) - _start <= 6:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvGetInputRegisterBit_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetInputRegisterBit_Request()
    value.address = reader.integer(2, False)
    value.timeout_ms = reader.integer(4, False)
    if not 6 <= reader.position - _start <= 6:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetInputRegisterBit_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetInputRegisterBit_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_a47c01d50519e552cfedf4ecaf6d52febaa0a4eb846ebc73256fe88219b647aa"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 5
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 5
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 5
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False
    value: _py_int = 0

    def encode(self):
        writer = _Writer(5)
        _write_Ros2Dsr_msgs2SrvGetInputRegisterBit_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 5, 5)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetInputRegisterBit_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 5, 5))
        value = _read_Ros2Dsr_msgs2SrvGetInputRegisterBit_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetInputRegisterBit_Response = Ros2Dsr_msgs2SrvGetInputRegisterBit_Response


def _write_Ros2Dsr_msgs2SrvGetInputRegisterBit_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetInputRegisterBit_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    _part1 = value.value
    writer.integer(_part1, 4, True)
    if not 5 <= len(writer.data) - _start <= 5:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvGetInputRegisterBit_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetInputRegisterBit_Response()
    value.success = _read_bool(reader)
    value.value = reader.integer(4, True)
    if not 5 <= reader.position - _start <= 5:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetInputRegisterFloat_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetInputRegisterFloat_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_88a6866efcf1e3620b98a77d2bc65cbf2dc9e3fb6e00b3e06fdc84ee8b5a2f3b"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 6
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 6
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 6
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    address: _py_int = 0
    timeout_ms: _py_int = 0

    def encode(self):
        writer = _Writer(6)
        _write_Ros2Dsr_msgs2SrvGetInputRegisterFloat_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 6, 6)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetInputRegisterFloat_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 6, 6))
        value = _read_Ros2Dsr_msgs2SrvGetInputRegisterFloat_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetInputRegisterFloat_Request = Ros2Dsr_msgs2SrvGetInputRegisterFloat_Request


def _write_Ros2Dsr_msgs2SrvGetInputRegisterFloat_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetInputRegisterFloat_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.address
    writer.integer(_part0, 2, False)
    _part1 = value.timeout_ms
    writer.integer(_part1, 4, False)
    if not 6 <= len(writer.data) - _start <= 6:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvGetInputRegisterFloat_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetInputRegisterFloat_Request()
    value.address = reader.integer(2, False)
    value.timeout_ms = reader.integer(4, False)
    if not 6 <= reader.position - _start <= 6:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetInputRegisterFloat_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetInputRegisterFloat_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_db86cc9f47469a5d595a6df3b10e546d227dca5dbad7a381ed600acc33e5d769"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 9
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 9
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 9
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False
    value: _py_float = 0.0

    def encode(self):
        writer = _Writer(9)
        _write_Ros2Dsr_msgs2SrvGetInputRegisterFloat_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 9, 9)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetInputRegisterFloat_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 9, 9))
        value = _read_Ros2Dsr_msgs2SrvGetInputRegisterFloat_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetInputRegisterFloat_Response = Ros2Dsr_msgs2SrvGetInputRegisterFloat_Response


def _write_Ros2Dsr_msgs2SrvGetInputRegisterFloat_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetInputRegisterFloat_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    _part1 = value.value
    writer.f64(_part1)
    if not 9 <= len(writer.data) - _start <= 9:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvGetInputRegisterFloat_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetInputRegisterFloat_Response()
    value.success = _read_bool(reader)
    value.value = reader.f64()
    if not 9 <= reader.position - _start <= 9:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetInputRegisterInt_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetInputRegisterInt_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_6fd37a43a6ff9f007ab73847710554a1a594bc14722c9d3223dbaae55a4c073e"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 6
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 6
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 6
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    address: _py_int = 0
    timeout_ms: _py_int = 0

    def encode(self):
        writer = _Writer(6)
        _write_Ros2Dsr_msgs2SrvGetInputRegisterInt_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 6, 6)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetInputRegisterInt_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 6, 6))
        value = _read_Ros2Dsr_msgs2SrvGetInputRegisterInt_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetInputRegisterInt_Request = Ros2Dsr_msgs2SrvGetInputRegisterInt_Request


def _write_Ros2Dsr_msgs2SrvGetInputRegisterInt_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetInputRegisterInt_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.address
    writer.integer(_part0, 2, False)
    _part1 = value.timeout_ms
    writer.integer(_part1, 4, False)
    if not 6 <= len(writer.data) - _start <= 6:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvGetInputRegisterInt_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetInputRegisterInt_Request()
    value.address = reader.integer(2, False)
    value.timeout_ms = reader.integer(4, False)
    if not 6 <= reader.position - _start <= 6:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetInputRegisterInt_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetInputRegisterInt_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_4a10e84cb1cc84e780ea1bf19a94fcf1e09e45da33805f631fa0e455447587f0"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 5
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 5
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 5
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False
    value: _py_int = 0

    def encode(self):
        writer = _Writer(5)
        _write_Ros2Dsr_msgs2SrvGetInputRegisterInt_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 5, 5)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetInputRegisterInt_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 5, 5))
        value = _read_Ros2Dsr_msgs2SrvGetInputRegisterInt_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetInputRegisterInt_Response = Ros2Dsr_msgs2SrvGetInputRegisterInt_Response


def _write_Ros2Dsr_msgs2SrvGetInputRegisterInt_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetInputRegisterInt_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    _part1 = value.value
    writer.integer(_part1, 4, True)
    if not 5 <= len(writer.data) - _start <= 5:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvGetInputRegisterInt_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetInputRegisterInt_Response()
    value.success = _read_bool(reader)
    value.value = reader.integer(4, True)
    if not 5 <= reader.position - _start <= 5:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetJointTorque_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetJointTorque_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_a64a36840ca8a9251b84fed17cea36d2f1ce027543af9ed22e05231e2765957a"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros2Dsr_msgs2SrvGetJointTorque_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetJointTorque_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros2Dsr_msgs2SrvGetJointTorque_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetJointTorque_Request = Ros2Dsr_msgs2SrvGetJointTorque_Request


def _write_Ros2Dsr_msgs2SrvGetJointTorque_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetJointTorque_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros2Dsr_msgs2SrvGetJointTorque_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetJointTorque_Request()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetJointTorque_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetJointTorque_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_7d229e0af82b76fe9f92601976226517ee3a47fd36bf251f6190527ec2e2dc2a"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 49
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 49
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 49
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    jts: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    success: _py_bool = False

    def encode(self):
        writer = _Writer(49)
        _write_Ros2Dsr_msgs2SrvGetJointTorque_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 49, 49)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetJointTorque_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 49, 49))
        value = _read_Ros2Dsr_msgs2SrvGetJointTorque_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetJointTorque_Response = Ros2Dsr_msgs2SrvGetJointTorque_Response


def _write_Ros2Dsr_msgs2SrvGetJointTorque_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetJointTorque_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.jts
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count0):
        _element = _part0[_index]
        writer.f64(_element)
    _part1 = value.success
    if type(_part1) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part1), 1)
    if not 49 <= len(writer.data) - _start <= 49:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvGetJointTorque_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetJointTorque_Response()
    value.jts = [reader.f64() for _ in range(6)]
    value.success = _read_bool(reader)
    if not 49 <= reader.position - _start <= 49:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetLastAlarm_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetLastAlarm_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_6569afb5dceb62e7ee95948c1140bdf5d9dcfe8532b75922722be2b02f016fcf"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros2Dsr_msgs2SrvGetLastAlarm_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetLastAlarm_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros2Dsr_msgs2SrvGetLastAlarm_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetLastAlarm_Request = Ros2Dsr_msgs2SrvGetLastAlarm_Request


def _write_Ros2Dsr_msgs2SrvGetLastAlarm_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetLastAlarm_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros2Dsr_msgs2SrvGetLastAlarm_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetLastAlarm_Request()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetLastAlarm_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetLastAlarm_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_fa52a4735e3553d57e209a9307e120bd1731375d7b6864bf9b0415241527ee75"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 25
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 793
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 793
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    log_alarm: _record_Ros2Dsr_msgs2MsgLogAlarm = _field(default_factory=lambda: Ros2Dsr_msgs2MsgLogAlarm())
    success: _py_bool = False

    def encode(self):
        writer = _Writer(793)
        _write_Ros2Dsr_msgs2SrvGetLastAlarm_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 25, 793)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetLastAlarm_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 25, 793))
        value = _read_Ros2Dsr_msgs2SrvGetLastAlarm_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetLastAlarm_Response = Ros2Dsr_msgs2SrvGetLastAlarm_Response


def _write_Ros2Dsr_msgs2SrvGetLastAlarm_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetLastAlarm_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.log_alarm
    _write_Ros2Dsr_msgs2MsgLogAlarm(writer, _part0)
    _part1 = value.success
    if type(_part1) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part1), 1)
    if not 25 <= len(writer.data) - _start <= 793:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvGetLastAlarm_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetLastAlarm_Response()
    value.log_alarm = _read_Ros2Dsr_msgs2MsgLogAlarm(reader)
    value.success = _read_bool(reader)
    if not 25 <= reader.position - _start <= 793:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetModbusInput_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetModbusInput_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_d2d8933898289af4b6c70b9ed412b435e3cbcfe3d2dd7675ff743a8f122fb32d"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    name: _py_str = ""

    def encode(self):
        writer = _Writer(260)
        _write_Ros2Dsr_msgs2SrvGetModbusInput_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 260)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetModbusInput_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 4, 260))
        value = _read_Ros2Dsr_msgs2SrvGetModbusInput_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetModbusInput_Request = Ros2Dsr_msgs2SrvGetModbusInput_Request


def _write_Ros2Dsr_msgs2SrvGetModbusInput_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetModbusInput_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.name
    _write_text(writer, _part0, 256)
    if not 4 <= len(writer.data) - _start <= 260:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvGetModbusInput_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetModbusInput_Request()
    value.name = _read_text(reader, 256)
    if not 4 <= reader.position - _start <= 260:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetModbusInput_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetModbusInput_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_de8c061ac9312f7d708a3419b0f191d2e11f1727c777b0eecf9b2c3d36253c4f"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 5
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 5
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 5
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    value: _py_int = 0
    success: _py_bool = False

    def encode(self):
        writer = _Writer(5)
        _write_Ros2Dsr_msgs2SrvGetModbusInput_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 5, 5)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetModbusInput_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 5, 5))
        value = _read_Ros2Dsr_msgs2SrvGetModbusInput_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetModbusInput_Response = Ros2Dsr_msgs2SrvGetModbusInput_Response


def _write_Ros2Dsr_msgs2SrvGetModbusInput_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetModbusInput_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.value
    writer.integer(_part0, 4, True)
    _part1 = value.success
    if type(_part1) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part1), 1)
    if not 5 <= len(writer.data) - _start <= 5:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvGetModbusInput_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetModbusInput_Response()
    value.value = reader.integer(4, True)
    value.success = _read_bool(reader)
    if not 5 <= reader.position - _start <= 5:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetOrientationError_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetOrientationError_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_ed52ab6a577110781d73a51700a5617cf94898921e5bab39cb64e66b84a6781f"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 97
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 97
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 97
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    xd: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    xc: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    axis: _py_int = 0

    def encode(self):
        writer = _Writer(97)
        _write_Ros2Dsr_msgs2SrvGetOrientationError_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 97, 97)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetOrientationError_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 97, 97))
        value = _read_Ros2Dsr_msgs2SrvGetOrientationError_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetOrientationError_Request = Ros2Dsr_msgs2SrvGetOrientationError_Request


def _write_Ros2Dsr_msgs2SrvGetOrientationError_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetOrientationError_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.xd
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count0):
        _element = _part0[_index]
        writer.f64(_element)
    _part1 = value.xc
    if type(_part1) not in (list, tuple):
        raise TypeError("array value required")
    _count1 = len(_part1)
    if _count1 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count1):
        _element = _part1[_index]
        writer.f64(_element)
    _part2 = value.axis
    writer.integer(_part2, 1, True)
    if not 97 <= len(writer.data) - _start <= 97:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvGetOrientationError_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetOrientationError_Request()
    value.xd = [reader.f64() for _ in range(6)]
    value.xc = [reader.f64() for _ in range(6)]
    value.axis = reader.integer(1, True)
    if not 97 <= reader.position - _start <= 97:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetOrientationError_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetOrientationError_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_ac13995c7c96b9dd8bc2c3ccc6eabfa4347c9e78872c16a6e6388f18d36c6983"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 5
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 5
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 5
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    ori_error: _py_float = 0.0
    success: _py_bool = False

    def encode(self):
        writer = _Writer(5)
        _write_Ros2Dsr_msgs2SrvGetOrientationError_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 5, 5)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetOrientationError_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 5, 5))
        value = _read_Ros2Dsr_msgs2SrvGetOrientationError_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetOrientationError_Response = Ros2Dsr_msgs2SrvGetOrientationError_Response


def _write_Ros2Dsr_msgs2SrvGetOrientationError_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetOrientationError_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.ori_error
    writer.f32(_part0)
    _part1 = value.success
    if type(_part1) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part1), 1)
    if not 5 <= len(writer.data) - _start <= 5:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvGetOrientationError_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetOrientationError_Response()
    value.ori_error = reader.f32()
    value.success = _read_bool(reader)
    if not 5 <= reader.position - _start <= 5:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetOutputRegisterBit_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetOutputRegisterBit_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_6cd40872bca1d3fa7d7b84ead3e343ca62d7a5b60cdbf963e77f6078d8c98083"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 6
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 6
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 6
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    address: _py_int = 0
    timeout_ms: _py_int = 0

    def encode(self):
        writer = _Writer(6)
        _write_Ros2Dsr_msgs2SrvGetOutputRegisterBit_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 6, 6)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetOutputRegisterBit_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 6, 6))
        value = _read_Ros2Dsr_msgs2SrvGetOutputRegisterBit_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetOutputRegisterBit_Request = Ros2Dsr_msgs2SrvGetOutputRegisterBit_Request


def _write_Ros2Dsr_msgs2SrvGetOutputRegisterBit_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetOutputRegisterBit_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.address
    writer.integer(_part0, 2, False)
    _part1 = value.timeout_ms
    writer.integer(_part1, 4, False)
    if not 6 <= len(writer.data) - _start <= 6:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvGetOutputRegisterBit_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetOutputRegisterBit_Request()
    value.address = reader.integer(2, False)
    value.timeout_ms = reader.integer(4, False)
    if not 6 <= reader.position - _start <= 6:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetOutputRegisterBit_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetOutputRegisterBit_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_b877098bff97ac0e198a657581e4a76da6c2f2eeb46969fcd26ad447f1e19efa"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 5
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 5
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 5
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False
    value: _py_int = 0

    def encode(self):
        writer = _Writer(5)
        _write_Ros2Dsr_msgs2SrvGetOutputRegisterBit_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 5, 5)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetOutputRegisterBit_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 5, 5))
        value = _read_Ros2Dsr_msgs2SrvGetOutputRegisterBit_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetOutputRegisterBit_Response = Ros2Dsr_msgs2SrvGetOutputRegisterBit_Response


def _write_Ros2Dsr_msgs2SrvGetOutputRegisterBit_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetOutputRegisterBit_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    _part1 = value.value
    writer.integer(_part1, 4, True)
    if not 5 <= len(writer.data) - _start <= 5:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvGetOutputRegisterBit_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetOutputRegisterBit_Response()
    value.success = _read_bool(reader)
    value.value = reader.integer(4, True)
    if not 5 <= reader.position - _start <= 5:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetOutputRegisterFloat_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_3f94d068d679b118d2b59fa33f60f189341c0ecd92bf11425d87807b2fde96d6"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 6
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 6
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 6
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    address: _py_int = 0
    timeout_ms: _py_int = 0

    def encode(self):
        writer = _Writer(6)
        _write_Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 6, 6)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 6, 6))
        value = _read_Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Request = Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Request


def _write_Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.address
    writer.integer(_part0, 2, False)
    _part1 = value.timeout_ms
    writer.integer(_part1, 4, False)
    if not 6 <= len(writer.data) - _start <= 6:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Request()
    value.address = reader.integer(2, False)
    value.timeout_ms = reader.integer(4, False)
    if not 6 <= reader.position - _start <= 6:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetOutputRegisterFloat_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_3000a283d591bd17a2303bdf11aea290c034c1fd7117988e66c88f592e721e68"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 9
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 9
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 9
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False
    value: _py_float = 0.0

    def encode(self):
        writer = _Writer(9)
        _write_Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 9, 9)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 9, 9))
        value = _read_Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Response = Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Response


def _write_Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    _part1 = value.value
    writer.f64(_part1)
    if not 9 <= len(writer.data) - _start <= 9:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Response()
    value.success = _read_bool(reader)
    value.value = reader.f64()
    if not 9 <= reader.position - _start <= 9:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetOutputRegisterInt_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetOutputRegisterInt_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_4607112e6d1de21f44ba61b1af7d51446414259a2ef365abdd37d4ff3bdff7f6"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 6
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 6
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 6
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    address: _py_int = 0
    timeout_ms: _py_int = 0

    def encode(self):
        writer = _Writer(6)
        _write_Ros2Dsr_msgs2SrvGetOutputRegisterInt_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 6, 6)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetOutputRegisterInt_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 6, 6))
        value = _read_Ros2Dsr_msgs2SrvGetOutputRegisterInt_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetOutputRegisterInt_Request = Ros2Dsr_msgs2SrvGetOutputRegisterInt_Request


def _write_Ros2Dsr_msgs2SrvGetOutputRegisterInt_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetOutputRegisterInt_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.address
    writer.integer(_part0, 2, False)
    _part1 = value.timeout_ms
    writer.integer(_part1, 4, False)
    if not 6 <= len(writer.data) - _start <= 6:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvGetOutputRegisterInt_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetOutputRegisterInt_Request()
    value.address = reader.integer(2, False)
    value.timeout_ms = reader.integer(4, False)
    if not 6 <= reader.position - _start <= 6:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetOutputRegisterInt_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetOutputRegisterInt_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_4d2643dccba189da62bfaf4103f670af774170b1c18e28a2ae112312df6ad691"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 5
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 5
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 5
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False
    value: _py_int = 0

    def encode(self):
        writer = _Writer(5)
        _write_Ros2Dsr_msgs2SrvGetOutputRegisterInt_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 5, 5)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetOutputRegisterInt_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 5, 5))
        value = _read_Ros2Dsr_msgs2SrvGetOutputRegisterInt_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetOutputRegisterInt_Response = Ros2Dsr_msgs2SrvGetOutputRegisterInt_Response


def _write_Ros2Dsr_msgs2SrvGetOutputRegisterInt_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetOutputRegisterInt_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    _part1 = value.value
    writer.integer(_part1, 4, True)
    if not 5 <= len(writer.data) - _start <= 5:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvGetOutputRegisterInt_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetOutputRegisterInt_Response()
    value.success = _read_bool(reader)
    value.value = reader.integer(4, True)
    if not 5 <= reader.position - _start <= 5:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetRobotLinkInfo_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetRobotLinkInfo_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_50bc4a4885829a821fa2a5bd1ad8b223f7b595344448fbdbb2fddf5ee75e17e1"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros2Dsr_msgs2SrvGetRobotLinkInfo_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetRobotLinkInfo_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros2Dsr_msgs2SrvGetRobotLinkInfo_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetRobotLinkInfo_Request = Ros2Dsr_msgs2SrvGetRobotLinkInfo_Request


def _write_Ros2Dsr_msgs2SrvGetRobotLinkInfo_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetRobotLinkInfo_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros2Dsr_msgs2SrvGetRobotLinkInfo_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetRobotLinkInfo_Request()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetRobotLinkInfo_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetRobotLinkInfo_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_aaf1a964ea2e5d6a049a074bd4b01538ef0b43b234da9de6b034a67524087641"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 129
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 129
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 129
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    d: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    a: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    alpha: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    theta: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    offset: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    gradient: _py_float = 0.0
    rotation: _py_float = 0.0
    success: _py_bool = False

    def encode(self):
        writer = _Writer(129)
        _write_Ros2Dsr_msgs2SrvGetRobotLinkInfo_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 129, 129)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetRobotLinkInfo_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 129, 129))
        value = _read_Ros2Dsr_msgs2SrvGetRobotLinkInfo_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetRobotLinkInfo_Response = Ros2Dsr_msgs2SrvGetRobotLinkInfo_Response


def _write_Ros2Dsr_msgs2SrvGetRobotLinkInfo_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetRobotLinkInfo_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.d
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count0):
        _element = _part0[_index]
        writer.f32(_element)
    _part1 = value.a
    if type(_part1) not in (list, tuple):
        raise TypeError("array value required")
    _count1 = len(_part1)
    if _count1 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count1):
        _element = _part1[_index]
        writer.f32(_element)
    _part2 = value.alpha
    if type(_part2) not in (list, tuple):
        raise TypeError("array value required")
    _count2 = len(_part2)
    if _count2 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count2):
        _element = _part2[_index]
        writer.f32(_element)
    _part3 = value.theta
    if type(_part3) not in (list, tuple):
        raise TypeError("array value required")
    _count3 = len(_part3)
    if _count3 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count3):
        _element = _part3[_index]
        writer.f32(_element)
    _part4 = value.offset
    if type(_part4) not in (list, tuple):
        raise TypeError("array value required")
    _count4 = len(_part4)
    if _count4 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count4):
        _element = _part4[_index]
        writer.f32(_element)
    _part5 = value.gradient
    writer.f32(_part5)
    _part6 = value.rotation
    writer.f32(_part6)
    _part7 = value.success
    if type(_part7) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part7), 1)
    if not 129 <= len(writer.data) - _start <= 129:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvGetRobotLinkInfo_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetRobotLinkInfo_Response()
    value.d = [reader.f32() for _ in range(6)]
    value.a = [reader.f32() for _ in range(6)]
    value.alpha = [reader.f32() for _ in range(6)]
    value.theta = [reader.f32() for _ in range(6)]
    value.offset = [reader.f32() for _ in range(6)]
    value.gradient = reader.f32()
    value.rotation = reader.f32()
    value.success = _read_bool(reader)
    if not 129 <= reader.position - _start <= 129:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetRobotMode_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetRobotMode_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_945dc18b9de1cec15d388179c6a4abf95a653770164dcac30828f15912ea0136"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros2Dsr_msgs2SrvGetRobotMode_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetRobotMode_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros2Dsr_msgs2SrvGetRobotMode_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetRobotMode_Request = Ros2Dsr_msgs2SrvGetRobotMode_Request


def _write_Ros2Dsr_msgs2SrvGetRobotMode_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetRobotMode_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros2Dsr_msgs2SrvGetRobotMode_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetRobotMode_Request()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetRobotMode_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetRobotMode_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_91dc6499a4e962f46b46fea554ae304a47ecb4095b47c6d480c866059850aa26"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 2
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 2
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 2
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    robot_mode: _py_int = 0
    success: _py_bool = False

    def encode(self):
        writer = _Writer(2)
        _write_Ros2Dsr_msgs2SrvGetRobotMode_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 2, 2)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetRobotMode_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 2, 2))
        value = _read_Ros2Dsr_msgs2SrvGetRobotMode_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetRobotMode_Response = Ros2Dsr_msgs2SrvGetRobotMode_Response


def _write_Ros2Dsr_msgs2SrvGetRobotMode_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetRobotMode_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.robot_mode
    writer.integer(_part0, 1, True)
    _part1 = value.success
    if type(_part1) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part1), 1)
    if not 2 <= len(writer.data) - _start <= 2:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvGetRobotMode_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetRobotMode_Response()
    value.robot_mode = reader.integer(1, True)
    value.success = _read_bool(reader)
    if not 2 <= reader.position - _start <= 2:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetRobotSpeedMode_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetRobotSpeedMode_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_1b6760ed64ce308e6189122e754bab03208f5e19a6e4704acf21952abdf37e7e"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros2Dsr_msgs2SrvGetRobotSpeedMode_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetRobotSpeedMode_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros2Dsr_msgs2SrvGetRobotSpeedMode_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetRobotSpeedMode_Request = Ros2Dsr_msgs2SrvGetRobotSpeedMode_Request


def _write_Ros2Dsr_msgs2SrvGetRobotSpeedMode_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetRobotSpeedMode_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros2Dsr_msgs2SrvGetRobotSpeedMode_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetRobotSpeedMode_Request()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetRobotSpeedMode_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetRobotSpeedMode_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_6eff9e2138055e3845f351abdba3189c47452903dadeaf6760f781a071543947"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 2
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 2
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 2
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    speed_mode: _py_int = 0
    success: _py_bool = False

    def encode(self):
        writer = _Writer(2)
        _write_Ros2Dsr_msgs2SrvGetRobotSpeedMode_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 2, 2)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetRobotSpeedMode_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 2, 2))
        value = _read_Ros2Dsr_msgs2SrvGetRobotSpeedMode_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetRobotSpeedMode_Response = Ros2Dsr_msgs2SrvGetRobotSpeedMode_Response


def _write_Ros2Dsr_msgs2SrvGetRobotSpeedMode_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetRobotSpeedMode_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.speed_mode
    writer.integer(_part0, 1, True)
    _part1 = value.success
    if type(_part1) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part1), 1)
    if not 2 <= len(writer.data) - _start <= 2:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvGetRobotSpeedMode_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetRobotSpeedMode_Response()
    value.speed_mode = reader.integer(1, True)
    value.success = _read_bool(reader)
    if not 2 <= reader.position - _start <= 2:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetRobotState_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetRobotState_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_b4e5f89f15b92b48be3a1282f4002b7abafeb141658eac1c0b804c9232062b50"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros2Dsr_msgs2SrvGetRobotState_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetRobotState_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros2Dsr_msgs2SrvGetRobotState_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetRobotState_Request = Ros2Dsr_msgs2SrvGetRobotState_Request


def _write_Ros2Dsr_msgs2SrvGetRobotState_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetRobotState_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros2Dsr_msgs2SrvGetRobotState_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetRobotState_Request()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetRobotState_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetRobotState_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_d5bf5bb656a0ac4a621e7e50f40b6fb41ae89cbb4d5b04bc1275815bbb0ab257"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 2
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 2
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 2
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    robot_state: _py_int = 0
    success: _py_bool = False

    def encode(self):
        writer = _Writer(2)
        _write_Ros2Dsr_msgs2SrvGetRobotState_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 2, 2)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetRobotState_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 2, 2))
        value = _read_Ros2Dsr_msgs2SrvGetRobotState_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetRobotState_Response = Ros2Dsr_msgs2SrvGetRobotState_Response


def _write_Ros2Dsr_msgs2SrvGetRobotState_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetRobotState_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.robot_state
    writer.integer(_part0, 1, True)
    _part1 = value.success
    if type(_part1) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part1), 1)
    if not 2 <= len(writer.data) - _start <= 2:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvGetRobotState_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetRobotState_Response()
    value.robot_state = reader.integer(1, True)
    value.success = _read_bool(reader)
    if not 2 <= reader.position - _start <= 2:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetRobotSystem_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetRobotSystem_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_6d6d5428b67062be616f12385ede2568624ac78d83a1b6e430763dc2f0710829"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros2Dsr_msgs2SrvGetRobotSystem_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetRobotSystem_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros2Dsr_msgs2SrvGetRobotSystem_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetRobotSystem_Request = Ros2Dsr_msgs2SrvGetRobotSystem_Request


def _write_Ros2Dsr_msgs2SrvGetRobotSystem_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetRobotSystem_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros2Dsr_msgs2SrvGetRobotSystem_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetRobotSystem_Request()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetRobotSystem_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetRobotSystem_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_faf6022901539dd3edd6b53d4a0c6d3eea0a210f2c795bf46a67e0243a0d8dd0"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 2
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 2
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 2
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    robot_system: _py_int = 0
    success: _py_bool = False

    def encode(self):
        writer = _Writer(2)
        _write_Ros2Dsr_msgs2SrvGetRobotSystem_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 2, 2)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetRobotSystem_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 2, 2))
        value = _read_Ros2Dsr_msgs2SrvGetRobotSystem_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetRobotSystem_Response = Ros2Dsr_msgs2SrvGetRobotSystem_Response


def _write_Ros2Dsr_msgs2SrvGetRobotSystem_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetRobotSystem_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.robot_system
    writer.integer(_part0, 1, True)
    _part1 = value.success
    if type(_part1) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part1), 1)
    if not 2 <= len(writer.data) - _start <= 2:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvGetRobotSystem_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetRobotSystem_Response()
    value.robot_system = reader.integer(1, True)
    value.success = _read_bool(reader)
    if not 2 <= reader.position - _start <= 2:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetRtControlInputDataList_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetRtControlInputDataList_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_016df21af56e6e0e76c5f9f24c851caee712b5af235bda04adde82eef33f6a60"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    version: _py_str = ""

    def encode(self):
        writer = _Writer(260)
        _write_Ros2Dsr_msgs2SrvGetRtControlInputDataList_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 260)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetRtControlInputDataList_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 4, 260))
        value = _read_Ros2Dsr_msgs2SrvGetRtControlInputDataList_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetRtControlInputDataList_Request = Ros2Dsr_msgs2SrvGetRtControlInputDataList_Request


def _write_Ros2Dsr_msgs2SrvGetRtControlInputDataList_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetRtControlInputDataList_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.version
    _write_text(writer, _part0, 256)
    if not 4 <= len(writer.data) - _start <= 260:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvGetRtControlInputDataList_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetRtControlInputDataList_Request()
    value.version = _read_text(reader, 256)
    if not 4 <= reader.position - _start <= 260:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetRtControlInputDataList_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetRtControlInputDataList_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_dad3b9ec5d048ea97669bd52fa94e60abd794f44150599c3b38179e7f3425831"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 5
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 261
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 261
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False
    data: _py_str = ""

    def encode(self):
        writer = _Writer(261)
        _write_Ros2Dsr_msgs2SrvGetRtControlInputDataList_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 5, 261)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetRtControlInputDataList_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 5, 261))
        value = _read_Ros2Dsr_msgs2SrvGetRtControlInputDataList_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetRtControlInputDataList_Response = (
    Ros2Dsr_msgs2SrvGetRtControlInputDataList_Response
)


def _write_Ros2Dsr_msgs2SrvGetRtControlInputDataList_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetRtControlInputDataList_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    _part1 = value.data
    _write_text(writer, _part1, 256)
    if not 5 <= len(writer.data) - _start <= 261:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvGetRtControlInputDataList_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetRtControlInputDataList_Response()
    value.success = _read_bool(reader)
    value.data = _read_text(reader, 256)
    if not 5 <= reader.position - _start <= 261:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetRtControlInputVersionList_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_e25f15b810ebadb6eceb8e90bd8aedc9f47b177f5ccd16a6d824cac69e612a96"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Request = (
    Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Request
)


def _write_Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Request()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetRtControlInputVersionList_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_39f873a075b2571286ea652cbbc47696b8636138362ba898ce1f06c8fa0a368b"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 5
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 261
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 261
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False
    version: _py_str = ""

    def encode(self):
        writer = _Writer(261)
        _write_Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 5, 261)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 5, 261))
        value = _read_Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Response = (
    Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Response
)


def _write_Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    _part1 = value.version
    _write_text(writer, _part1, 256)
    if not 5 <= len(writer.data) - _start <= 261:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Response()
    value.success = _read_bool(reader)
    value.version = _read_text(reader, 256)
    if not 5 <= reader.position - _start <= 261:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetRtControlOutputDataList_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_b7d3952dd7afa1da9b2a17959d25d20c570eb6195eab0fa4f181fd087555869c"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    version: _py_str = ""

    def encode(self):
        writer = _Writer(260)
        _write_Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 260)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 4, 260))
        value = _read_Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Request = (
    Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Request
)


def _write_Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.version
    _write_text(writer, _part0, 256)
    if not 4 <= len(writer.data) - _start <= 260:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Request()
    value.version = _read_text(reader, 256)
    if not 4 <= reader.position - _start <= 260:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetRtControlOutputDataList_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_a8663675cd68ff265c06580f16d46a9adaf36be969639c9df85110183eb7a14d"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 5
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 261
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 261
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False
    data: _py_str = ""

    def encode(self):
        writer = _Writer(261)
        _write_Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 5, 261)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 5, 261))
        value = _read_Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Response = (
    Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Response
)


def _write_Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    _part1 = value.data
    _write_text(writer, _part1, 256)
    if not 5 <= len(writer.data) - _start <= 261:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Response()
    value.success = _read_bool(reader)
    value.data = _read_text(reader, 256)
    if not 5 <= reader.position - _start <= 261:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetRtControlOutputVersionList_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_401ad45a4fa41515c9aef3432ec08cb280885d54582e8c1c81f9f079352cb5e6"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Request = (
    Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Request
)


def _write_Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Request()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetRtControlOutputVersionList_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_a87c62fbcee2779427d535be08b8b30ebeaecc4450ee18208def8c19fbdd42b8"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 5
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 261
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 261
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False
    version: _py_str = ""

    def encode(self):
        writer = _Writer(261)
        _write_Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 5, 261)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 5, 261))
        value = _read_Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Response = (
    Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Response
)


def _write_Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    _part1 = value.version
    _write_text(writer, _part1, 256)
    if not 5 <= len(writer.data) - _start <= 261:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Response()
    value.success = _read_bool(reader)
    value.version = _read_text(reader, 256)
    if not 5 <= reader.position - _start <= 261:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetSolutionSpace_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetSolutionSpace_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_7893e38212d85c4a6f9937711ca0209c069691b09616e08462b60253a0c75ef3"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 48
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 48
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 48
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    pos: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])

    def encode(self):
        writer = _Writer(48)
        _write_Ros2Dsr_msgs2SrvGetSolutionSpace_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 48, 48)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetSolutionSpace_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 48, 48))
        value = _read_Ros2Dsr_msgs2SrvGetSolutionSpace_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetSolutionSpace_Request = Ros2Dsr_msgs2SrvGetSolutionSpace_Request


def _write_Ros2Dsr_msgs2SrvGetSolutionSpace_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetSolutionSpace_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.pos
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count0):
        _element = _part0[_index]
        writer.f64(_element)
    if not 48 <= len(writer.data) - _start <= 48:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvGetSolutionSpace_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetSolutionSpace_Request()
    value.pos = [reader.f64() for _ in range(6)]
    if not 48 <= reader.position - _start <= 48:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetSolutionSpace_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetSolutionSpace_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_b112e71516effa144d0c8857a21a18fa0355208ea4980f8b941190c070c0243a"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 2
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 2
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 2
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    sol_space: _py_int = 0
    success: _py_bool = False

    def encode(self):
        writer = _Writer(2)
        _write_Ros2Dsr_msgs2SrvGetSolutionSpace_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 2, 2)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetSolutionSpace_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 2, 2))
        value = _read_Ros2Dsr_msgs2SrvGetSolutionSpace_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetSolutionSpace_Response = Ros2Dsr_msgs2SrvGetSolutionSpace_Response


def _write_Ros2Dsr_msgs2SrvGetSolutionSpace_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetSolutionSpace_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.sol_space
    writer.integer(_part0, 1, True)
    _part1 = value.success
    if type(_part1) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part1), 1)
    if not 2 <= len(writer.data) - _start <= 2:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvGetSolutionSpace_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetSolutionSpace_Response()
    value.sol_space = reader.integer(1, True)
    value.success = _read_bool(reader)
    if not 2 <= reader.position - _start <= 2:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetToolDigitalInput_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetToolDigitalInput_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_13280849feec7050bd6edcf5a966a42315524727ff31694af91fa240a9224603"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    index: _py_int = 0

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvGetToolDigitalInput_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetToolDigitalInput_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvGetToolDigitalInput_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetToolDigitalInput_Request = Ros2Dsr_msgs2SrvGetToolDigitalInput_Request


def _write_Ros2Dsr_msgs2SrvGetToolDigitalInput_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetToolDigitalInput_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.index
    writer.integer(_part0, 1, True)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvGetToolDigitalInput_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetToolDigitalInput_Request()
    value.index = reader.integer(1, True)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetToolDigitalInput_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetToolDigitalInput_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_109edb5c9f363f7ca1558958cde4c402e30ba4875d2845db5ae1f5c2b2c5356e"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 2
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 2
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 2
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    value: _py_int = 0
    success: _py_bool = False

    def encode(self):
        writer = _Writer(2)
        _write_Ros2Dsr_msgs2SrvGetToolDigitalInput_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 2, 2)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetToolDigitalInput_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 2, 2))
        value = _read_Ros2Dsr_msgs2SrvGetToolDigitalInput_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetToolDigitalInput_Response = Ros2Dsr_msgs2SrvGetToolDigitalInput_Response


def _write_Ros2Dsr_msgs2SrvGetToolDigitalInput_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetToolDigitalInput_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.value
    writer.integer(_part0, 1, True)
    _part1 = value.success
    if type(_part1) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part1), 1)
    if not 2 <= len(writer.data) - _start <= 2:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvGetToolDigitalInput_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetToolDigitalInput_Response()
    value.value = reader.integer(1, True)
    value.success = _read_bool(reader)
    if not 2 <= reader.position - _start <= 2:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetToolDigitalOutput_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetToolDigitalOutput_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_62cc891eb1bc8b7657996a2a9c5ff11a20a53bb1d38c83080936d0ec0a41c641"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    index: _py_int = 0

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvGetToolDigitalOutput_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetToolDigitalOutput_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvGetToolDigitalOutput_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetToolDigitalOutput_Request = Ros2Dsr_msgs2SrvGetToolDigitalOutput_Request


def _write_Ros2Dsr_msgs2SrvGetToolDigitalOutput_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetToolDigitalOutput_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.index
    writer.integer(_part0, 1, True)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvGetToolDigitalOutput_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetToolDigitalOutput_Request()
    value.index = reader.integer(1, True)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetToolDigitalOutput_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetToolDigitalOutput_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_7178715d835fca1f2f77ffed810b4f85ecd661168704df869a9ce4dffeb9c1a8"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 2
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 2
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 2
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    value: _py_int = 0
    success: _py_bool = False

    def encode(self):
        writer = _Writer(2)
        _write_Ros2Dsr_msgs2SrvGetToolDigitalOutput_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 2, 2)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetToolDigitalOutput_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 2, 2))
        value = _read_Ros2Dsr_msgs2SrvGetToolDigitalOutput_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetToolDigitalOutput_Response = Ros2Dsr_msgs2SrvGetToolDigitalOutput_Response


def _write_Ros2Dsr_msgs2SrvGetToolDigitalOutput_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetToolDigitalOutput_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.value
    writer.integer(_part0, 1, True)
    _part1 = value.success
    if type(_part1) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part1), 1)
    if not 2 <= len(writer.data) - _start <= 2:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvGetToolDigitalOutput_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetToolDigitalOutput_Response()
    value.value = reader.integer(1, True)
    value.success = _read_bool(reader)
    if not 2 <= reader.position - _start <= 2:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetToolForce_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetToolForce_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_278119e0f7e346752ee4ccc233b133a9700cf8d2e2454c72c876cf4415dccd30"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    ref: _py_int = 0

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvGetToolForce_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetToolForce_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvGetToolForce_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetToolForce_Request = Ros2Dsr_msgs2SrvGetToolForce_Request


def _write_Ros2Dsr_msgs2SrvGetToolForce_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetToolForce_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.ref
    writer.integer(_part0, 1, True)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvGetToolForce_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetToolForce_Request()
    value.ref = reader.integer(1, True)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetToolForce_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetToolForce_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_d8bb3201f41aa221981e773657e8fa4d02b37a0d9d7f6da557aa6027ffeec41e"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 49
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 49
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 49
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    tool_force: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    success: _py_bool = False

    def encode(self):
        writer = _Writer(49)
        _write_Ros2Dsr_msgs2SrvGetToolForce_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 49, 49)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetToolForce_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 49, 49))
        value = _read_Ros2Dsr_msgs2SrvGetToolForce_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetToolForce_Response = Ros2Dsr_msgs2SrvGetToolForce_Response


def _write_Ros2Dsr_msgs2SrvGetToolForce_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetToolForce_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.tool_force
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count0):
        _element = _part0[_index]
        writer.f64(_element)
    _part1 = value.success
    if type(_part1) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part1), 1)
    if not 49 <= len(writer.data) - _start <= 49:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvGetToolForce_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetToolForce_Response()
    value.tool_force = [reader.f64() for _ in range(6)]
    value.success = _read_bool(reader)
    if not 49 <= reader.position - _start <= 49:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetUserCartCoord_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetUserCartCoord_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_ab137f363d6067680f0f9e60e436eb9c104c2aa1d3b0f2b4db423303944fea9b"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    id: _py_int = 0

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvGetUserCartCoord_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetUserCartCoord_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvGetUserCartCoord_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetUserCartCoord_Request = Ros2Dsr_msgs2SrvGetUserCartCoord_Request


def _write_Ros2Dsr_msgs2SrvGetUserCartCoord_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetUserCartCoord_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.id
    writer.integer(_part0, 1, True)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvGetUserCartCoord_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetUserCartCoord_Request()
    value.id = reader.integer(1, True)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetUserCartCoord_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetUserCartCoord_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_41c0a3cb26e9456c439813e957d3ea539dddf492f00c601c101cf86f0589d6e0"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 50
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 50
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 50
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    conv_posx: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    ref: _py_int = 0
    success: _py_bool = False

    def encode(self):
        writer = _Writer(50)
        _write_Ros2Dsr_msgs2SrvGetUserCartCoord_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 50, 50)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetUserCartCoord_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 50, 50))
        value = _read_Ros2Dsr_msgs2SrvGetUserCartCoord_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetUserCartCoord_Response = Ros2Dsr_msgs2SrvGetUserCartCoord_Response


def _write_Ros2Dsr_msgs2SrvGetUserCartCoord_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetUserCartCoord_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.conv_posx
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count0):
        _element = _part0[_index]
        writer.f64(_element)
    _part1 = value.ref
    writer.integer(_part1, 1, True)
    _part2 = value.success
    if type(_part2) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part2), 1)
    if not 50 <= len(writer.data) - _start <= 50:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvGetUserCartCoord_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetUserCartCoord_Response()
    value.conv_posx = [reader.f64() for _ in range(6)]
    value.ref = reader.integer(1, True)
    value.success = _read_bool(reader)
    if not 50 <= reader.position - _start <= 50:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetWorkpieceWeight_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetWorkpieceWeight_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_e333d0d31ad7dd33a4eaf20b891e1c6a949e8518ca689b6aef5b14fbc050fde7"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros2Dsr_msgs2SrvGetWorkpieceWeight_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetWorkpieceWeight_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros2Dsr_msgs2SrvGetWorkpieceWeight_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetWorkpieceWeight_Request = Ros2Dsr_msgs2SrvGetWorkpieceWeight_Request


def _write_Ros2Dsr_msgs2SrvGetWorkpieceWeight_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetWorkpieceWeight_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros2Dsr_msgs2SrvGetWorkpieceWeight_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetWorkpieceWeight_Request()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvGetWorkpieceWeight_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/GetWorkpieceWeight_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_c7c33e15041c362b692a24f6462fd1838c92cb8a74410ab62eb0593290f2da15"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 5
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 5
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 5
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    weight: _py_float = 0.0
    success: _py_bool = False

    def encode(self):
        writer = _Writer(5)
        _write_Ros2Dsr_msgs2SrvGetWorkpieceWeight_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 5, 5)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvGetWorkpieceWeight_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 5, 5))
        value = _read_Ros2Dsr_msgs2SrvGetWorkpieceWeight_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvGetWorkpieceWeight_Response = Ros2Dsr_msgs2SrvGetWorkpieceWeight_Response


def _write_Ros2Dsr_msgs2SrvGetWorkpieceWeight_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvGetWorkpieceWeight_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.weight
    writer.f32(_part0)
    _part1 = value.success
    if type(_part1) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part1), 1)
    if not 5 <= len(writer.data) - _start <= 5:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvGetWorkpieceWeight_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvGetWorkpieceWeight_Response()
    value.weight = reader.f32()
    value.success = _read_bool(reader)
    if not 5 <= reader.position - _start <= 5:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvIkin_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/Ikin_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_a088cb4739b4e871d281ffd7ca30d2a6afcb7a2cd2ed536fe959ba3efc01a558"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 50
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 50
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 50
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    pos: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    sol_space: _py_int = 0
    ref: _py_int = 0

    def encode(self):
        writer = _Writer(50)
        _write_Ros2Dsr_msgs2SrvIkin_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 50, 50)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvIkin_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 50, 50))
        value = _read_Ros2Dsr_msgs2SrvIkin_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvIkin_Request = Ros2Dsr_msgs2SrvIkin_Request


def _write_Ros2Dsr_msgs2SrvIkin_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvIkin_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.pos
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count0):
        _element = _part0[_index]
        writer.f64(_element)
    _part1 = value.sol_space
    writer.integer(_part1, 1, True)
    _part2 = value.ref
    writer.integer(_part2, 1, True)
    if not 50 <= len(writer.data) - _start <= 50:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvIkin_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvIkin_Request()
    value.pos = [reader.f64() for _ in range(6)]
    value.sol_space = reader.integer(1, True)
    value.ref = reader.integer(1, True)
    if not 50 <= reader.position - _start <= 50:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvIkin_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/Ikin_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_fec5d910aaa9200c82c11887901062077572ce9d23f9e69114cbf395e469be6f"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 49
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 49
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 49
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    conv_posj: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    success: _py_bool = False

    def encode(self):
        writer = _Writer(49)
        _write_Ros2Dsr_msgs2SrvIkin_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 49, 49)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvIkin_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 49, 49))
        value = _read_Ros2Dsr_msgs2SrvIkin_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvIkin_Response = Ros2Dsr_msgs2SrvIkin_Response


def _write_Ros2Dsr_msgs2SrvIkin_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvIkin_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.conv_posj
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count0):
        _element = _part0[_index]
        writer.f64(_element)
    _part1 = value.success
    if type(_part1) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part1), 1)
    if not 49 <= len(writer.data) - _start <= 49:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvIkin_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvIkin_Response()
    value.conv_posj = [reader.f64() for _ in range(6)]
    value.success = _read_bool(reader)
    if not 49 <= reader.position - _start <= 49:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvIsDoneBoltTightening_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/IsDoneBoltTightening_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_021ebebd272f07623b139347486e9577a92febeec9ba2822ea42be99379365dc"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 17
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 17
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 17
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    m: _py_float = 0.0
    timeout: _py_float = 0.0
    axis: _py_int = 0

    def encode(self):
        writer = _Writer(17)
        _write_Ros2Dsr_msgs2SrvIsDoneBoltTightening_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 17, 17)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvIsDoneBoltTightening_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 17, 17))
        value = _read_Ros2Dsr_msgs2SrvIsDoneBoltTightening_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvIsDoneBoltTightening_Request = Ros2Dsr_msgs2SrvIsDoneBoltTightening_Request


def _write_Ros2Dsr_msgs2SrvIsDoneBoltTightening_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvIsDoneBoltTightening_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.m
    writer.f64(_part0)
    _part1 = value.timeout
    writer.f64(_part1)
    _part2 = value.axis
    writer.integer(_part2, 1, True)
    if not 17 <= len(writer.data) - _start <= 17:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvIsDoneBoltTightening_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvIsDoneBoltTightening_Request()
    value.m = reader.f64()
    value.timeout = reader.f64()
    value.axis = reader.integer(1, True)
    if not 17 <= reader.position - _start <= 17:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvIsDoneBoltTightening_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/IsDoneBoltTightening_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_facd1f150c53d2fa30991435796a03f28027ca54b1da367b259a3e9226c56d2d"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvIsDoneBoltTightening_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvIsDoneBoltTightening_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvIsDoneBoltTightening_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvIsDoneBoltTightening_Response = Ros2Dsr_msgs2SrvIsDoneBoltTightening_Response


def _write_Ros2Dsr_msgs2SrvIsDoneBoltTightening_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvIsDoneBoltTightening_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvIsDoneBoltTightening_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvIsDoneBoltTightening_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvJog_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/Jog_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_c8c738720a1def086dcb2bf4364e43b0bbeadf0bd104760ca4ddd629ec9faa72"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 10
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 10
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 10
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    jog_axis: _py_int = 0
    move_reference: _py_int = 0
    speed: _py_float = 0.0

    def encode(self):
        writer = _Writer(10)
        _write_Ros2Dsr_msgs2SrvJog_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 10, 10)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvJog_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 10, 10))
        value = _read_Ros2Dsr_msgs2SrvJog_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvJog_Request = Ros2Dsr_msgs2SrvJog_Request


def _write_Ros2Dsr_msgs2SrvJog_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvJog_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.jog_axis
    writer.integer(_part0, 1, True)
    _part1 = value.move_reference
    writer.integer(_part1, 1, True)
    _part2 = value.speed
    writer.f64(_part2)
    if not 10 <= len(writer.data) - _start <= 10:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvJog_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvJog_Request()
    value.jog_axis = reader.integer(1, True)
    value.move_reference = reader.integer(1, True)
    value.speed = reader.f64()
    if not 10 <= reader.position - _start <= 10:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvJog_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/Jog_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_feb4da140ea11a715abe3f3ee635bdc384cd12105c397c1fb0ce2cfdf631542c"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvJog_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvJog_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvJog_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvJog_Response = Ros2Dsr_msgs2SrvJog_Response


def _write_Ros2Dsr_msgs2SrvJog_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvJog_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvJog_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvJog_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvJogMulti_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/JogMulti_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_df4ba03cc80e22e4f9e384c38cd1994750a8c875798dc4887019745a26ee2f29"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 57
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 57
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 57
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    jog_axis: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    move_reference: _py_int = 0
    speed: _py_float = 0.0

    def encode(self):
        writer = _Writer(57)
        _write_Ros2Dsr_msgs2SrvJogMulti_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 57, 57)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvJogMulti_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 57, 57))
        value = _read_Ros2Dsr_msgs2SrvJogMulti_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvJogMulti_Request = Ros2Dsr_msgs2SrvJogMulti_Request


def _write_Ros2Dsr_msgs2SrvJogMulti_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvJogMulti_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.jog_axis
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count0):
        _element = _part0[_index]
        writer.f64(_element)
    _part1 = value.move_reference
    writer.integer(_part1, 1, True)
    _part2 = value.speed
    writer.f64(_part2)
    if not 57 <= len(writer.data) - _start <= 57:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvJogMulti_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvJogMulti_Request()
    value.jog_axis = [reader.f64() for _ in range(6)]
    value.move_reference = reader.integer(1, True)
    value.speed = reader.f64()
    if not 57 <= reader.position - _start <= 57:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvJogMulti_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/JogMulti_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_9cf76f60dbb1d7330297d5bacad15e29810ef7088ae83c3ad82c561c4e277d1a"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvJogMulti_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvJogMulti_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvJogMulti_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvJogMulti_Response = Ros2Dsr_msgs2SrvJogMulti_Response


def _write_Ros2Dsr_msgs2SrvJogMulti_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvJogMulti_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvJogMulti_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvJogMulti_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvMoveBlending_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/MoveBlending_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_74b4ab52745fa3028c9154c373850897fac7ecdaf986822e5dc2698580de1f20"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 48
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 2256
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 2256
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    segment: _py_list[_record_Ros2Std_msgsMsgFloat64MultiArray] = _field(default_factory=lambda: [])
    pos_cnt: _py_int = 0
    vel: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(2)])
    acc: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(2)])
    time: _py_float = 0.0
    ref: _py_int = 0
    mode: _py_int = 0
    sync_type: _py_int = 0

    def encode(self):
        writer = _Writer(2256)
        _write_Ros2Dsr_msgs2SrvMoveBlending_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 48, 2256)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvMoveBlending_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 48, 2256))
        value = _read_Ros2Dsr_msgs2SrvMoveBlending_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvMoveBlending_Request = Ros2Dsr_msgs2SrvMoveBlending_Request


def _write_Ros2Dsr_msgs2SrvMoveBlending_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvMoveBlending_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.segment
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 > 6:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count0, 4)
    for _index in range(_count0):
        _element = _part0[_index]
        _write_Ros2Std_msgsMsgFloat64MultiArray(writer, _element)
    _part1 = value.pos_cnt
    writer.integer(_part1, 1, True)
    _part2 = value.vel
    if type(_part2) not in (list, tuple):
        raise TypeError("array value required")
    _count2 = len(_part2)
    if _count2 != 2:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count2):
        _element = _part2[_index]
        writer.f64(_element)
    _part3 = value.acc
    if type(_part3) not in (list, tuple):
        raise TypeError("array value required")
    _count3 = len(_part3)
    if _count3 != 2:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count3):
        _element = _part3[_index]
        writer.f64(_element)
    _part4 = value.time
    writer.f64(_part4)
    _part5 = value.ref
    writer.integer(_part5, 1, True)
    _part6 = value.mode
    writer.integer(_part6, 1, True)
    _part7 = value.sync_type
    writer.integer(_part7, 1, True)
    if not 48 <= len(writer.data) - _start <= 2256:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvMoveBlending_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvMoveBlending_Request()
    value.segment = [
        _read_Ros2Std_msgsMsgFloat64MultiArray(reader) for _ in range(_read_count(reader, 6, 12))
    ]
    value.pos_cnt = reader.integer(1, True)
    value.vel = [reader.f64() for _ in range(2)]
    value.acc = [reader.f64() for _ in range(2)]
    value.time = reader.f64()
    value.ref = reader.integer(1, True)
    value.mode = reader.integer(1, True)
    value.sync_type = reader.integer(1, True)
    if not 48 <= reader.position - _start <= 2256:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvMoveBlending_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/MoveBlending_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_2c09a8f39ab887063b890f935bc4319f4c0566fc2ccb5f612e696728a2ea3805"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvMoveBlending_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvMoveBlending_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvMoveBlending_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvMoveBlending_Response = Ros2Dsr_msgs2SrvMoveBlending_Response


def _write_Ros2Dsr_msgs2SrvMoveBlending_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvMoveBlending_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvMoveBlending_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvMoveBlending_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvMoveCircle_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/MoveCircle_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_27ebd12c2a2c30f8e20b505923344b00f2d2ad097e04ee533093144dbc58a09e"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 72
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 2280
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 2280
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    pos: _py_list[_record_Ros2Std_msgsMsgFloat64MultiArray] = _field(default_factory=lambda: [])
    vel: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(2)])
    acc: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(2)])
    time: _py_float = 0.0
    radius: _py_float = 0.0
    ref: _py_int = 0
    mode: _py_int = 0
    angle1: _py_float = 0.0
    angle2: _py_float = 0.0
    blend_type: _py_int = 0
    sync_type: _py_int = 0

    def encode(self):
        writer = _Writer(2280)
        _write_Ros2Dsr_msgs2SrvMoveCircle_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 72, 2280)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvMoveCircle_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 72, 2280))
        value = _read_Ros2Dsr_msgs2SrvMoveCircle_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvMoveCircle_Request = Ros2Dsr_msgs2SrvMoveCircle_Request


def _write_Ros2Dsr_msgs2SrvMoveCircle_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvMoveCircle_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.pos
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 > 6:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count0, 4)
    for _index in range(_count0):
        _element = _part0[_index]
        _write_Ros2Std_msgsMsgFloat64MultiArray(writer, _element)
    _part1 = value.vel
    if type(_part1) not in (list, tuple):
        raise TypeError("array value required")
    _count1 = len(_part1)
    if _count1 != 2:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count1):
        _element = _part1[_index]
        writer.f64(_element)
    _part2 = value.acc
    if type(_part2) not in (list, tuple):
        raise TypeError("array value required")
    _count2 = len(_part2)
    if _count2 != 2:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count2):
        _element = _part2[_index]
        writer.f64(_element)
    _part3 = value.time
    writer.f64(_part3)
    _part4 = value.radius
    writer.f64(_part4)
    _part5 = value.ref
    writer.integer(_part5, 1, True)
    _part6 = value.mode
    writer.integer(_part6, 1, True)
    _part7 = value.angle1
    writer.f64(_part7)
    _part8 = value.angle2
    writer.f64(_part8)
    _part9 = value.blend_type
    writer.integer(_part9, 1, True)
    _part10 = value.sync_type
    writer.integer(_part10, 1, True)
    if not 72 <= len(writer.data) - _start <= 2280:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvMoveCircle_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvMoveCircle_Request()
    value.pos = [_read_Ros2Std_msgsMsgFloat64MultiArray(reader) for _ in range(_read_count(reader, 6, 12))]
    value.vel = [reader.f64() for _ in range(2)]
    value.acc = [reader.f64() for _ in range(2)]
    value.time = reader.f64()
    value.radius = reader.f64()
    value.ref = reader.integer(1, True)
    value.mode = reader.integer(1, True)
    value.angle1 = reader.f64()
    value.angle2 = reader.f64()
    value.blend_type = reader.integer(1, True)
    value.sync_type = reader.integer(1, True)
    if not 72 <= reader.position - _start <= 2280:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvMoveCircle_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/MoveCircle_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_4df4f4552161320d2b939e096b5ff54c102c668cab1efa1e59a8f12757ebe307"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvMoveCircle_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvMoveCircle_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvMoveCircle_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvMoveCircle_Response = Ros2Dsr_msgs2SrvMoveCircle_Response


def _write_Ros2Dsr_msgs2SrvMoveCircle_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvMoveCircle_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvMoveCircle_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvMoveCircle_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvMoveHome_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/MoveHome_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_9f36ef8e03e895db2b8c588ad52dcc370ce37532974879c3280da68202643a67"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    target: _py_int = 0

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvMoveHome_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvMoveHome_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvMoveHome_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvMoveHome_Request = Ros2Dsr_msgs2SrvMoveHome_Request


def _write_Ros2Dsr_msgs2SrvMoveHome_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvMoveHome_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.target
    writer.integer(_part0, 1, True)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvMoveHome_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvMoveHome_Request()
    value.target = reader.integer(1, True)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvMoveHome_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/MoveHome_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_d28c2d8d4dc2c97fbab5e531b235830d68fc46754fd7921993e05c8d33df0edf"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 2
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 2
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 2
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    res: _py_int = 0
    success: _py_bool = False

    def encode(self):
        writer = _Writer(2)
        _write_Ros2Dsr_msgs2SrvMoveHome_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 2, 2)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvMoveHome_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 2, 2))
        value = _read_Ros2Dsr_msgs2SrvMoveHome_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvMoveHome_Response = Ros2Dsr_msgs2SrvMoveHome_Response


def _write_Ros2Dsr_msgs2SrvMoveHome_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvMoveHome_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.res
    writer.integer(_part0, 1, True)
    _part1 = value.success
    if type(_part1) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part1), 1)
    if not 2 <= len(writer.data) - _start <= 2:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvMoveHome_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvMoveHome_Response()
    value.res = reader.integer(1, True)
    value.success = _read_bool(reader)
    if not 2 <= reader.position - _start <= 2:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvMoveJoint_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/MoveJoint_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_80e0a74b2781d091fc847f5f2d4a0a56bdd974e62f9a80cc7382118f5d6e4952"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 83
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 83
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 83
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    pos: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    vel: _py_float = 0.0
    acc: _py_float = 0.0
    time: _py_float = 0.0
    radius: _py_float = 0.0
    mode: _py_int = 0
    blend_type: _py_int = 0
    sync_type: _py_int = 0

    def encode(self):
        writer = _Writer(83)
        _write_Ros2Dsr_msgs2SrvMoveJoint_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 83, 83)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvMoveJoint_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 83, 83))
        value = _read_Ros2Dsr_msgs2SrvMoveJoint_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvMoveJoint_Request = Ros2Dsr_msgs2SrvMoveJoint_Request


def _write_Ros2Dsr_msgs2SrvMoveJoint_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvMoveJoint_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.pos
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count0):
        _element = _part0[_index]
        writer.f64(_element)
    _part1 = value.vel
    writer.f64(_part1)
    _part2 = value.acc
    writer.f64(_part2)
    _part3 = value.time
    writer.f64(_part3)
    _part4 = value.radius
    writer.f64(_part4)
    _part5 = value.mode
    writer.integer(_part5, 1, True)
    _part6 = value.blend_type
    writer.integer(_part6, 1, True)
    _part7 = value.sync_type
    writer.integer(_part7, 1, True)
    if not 83 <= len(writer.data) - _start <= 83:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvMoveJoint_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvMoveJoint_Request()
    value.pos = [reader.f64() for _ in range(6)]
    value.vel = reader.f64()
    value.acc = reader.f64()
    value.time = reader.f64()
    value.radius = reader.f64()
    value.mode = reader.integer(1, True)
    value.blend_type = reader.integer(1, True)
    value.sync_type = reader.integer(1, True)
    if not 83 <= reader.position - _start <= 83:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvMoveJoint_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/MoveJoint_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_57c54f467487b7b7f0966a484e6777b4cb48fedd5790ec8f0e3c88979ce4c238"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvMoveJoint_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvMoveJoint_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvMoveJoint_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvMoveJoint_Response = Ros2Dsr_msgs2SrvMoveJoint_Response


def _write_Ros2Dsr_msgs2SrvMoveJoint_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvMoveJoint_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvMoveJoint_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvMoveJoint_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvMoveJointx_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/MoveJointx_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_c63a6822f6b03a2380d740995b12b4889e38d46a48fa8f74a85c2eccde1712be"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 85
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 85
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 85
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    pos: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    vel: _py_float = 0.0
    acc: _py_float = 0.0
    time: _py_float = 0.0
    radius: _py_float = 0.0
    ref: _py_int = 0
    mode: _py_int = 0
    blend_type: _py_int = 0
    sol: _py_int = 0
    sync_type: _py_int = 0

    def encode(self):
        writer = _Writer(85)
        _write_Ros2Dsr_msgs2SrvMoveJointx_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 85, 85)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvMoveJointx_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 85, 85))
        value = _read_Ros2Dsr_msgs2SrvMoveJointx_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvMoveJointx_Request = Ros2Dsr_msgs2SrvMoveJointx_Request


def _write_Ros2Dsr_msgs2SrvMoveJointx_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvMoveJointx_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.pos
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count0):
        _element = _part0[_index]
        writer.f64(_element)
    _part1 = value.vel
    writer.f64(_part1)
    _part2 = value.acc
    writer.f64(_part2)
    _part3 = value.time
    writer.f64(_part3)
    _part4 = value.radius
    writer.f64(_part4)
    _part5 = value.ref
    writer.integer(_part5, 1, True)
    _part6 = value.mode
    writer.integer(_part6, 1, True)
    _part7 = value.blend_type
    writer.integer(_part7, 1, True)
    _part8 = value.sol
    writer.integer(_part8, 1, True)
    _part9 = value.sync_type
    writer.integer(_part9, 1, True)
    if not 85 <= len(writer.data) - _start <= 85:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvMoveJointx_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvMoveJointx_Request()
    value.pos = [reader.f64() for _ in range(6)]
    value.vel = reader.f64()
    value.acc = reader.f64()
    value.time = reader.f64()
    value.radius = reader.f64()
    value.ref = reader.integer(1, True)
    value.mode = reader.integer(1, True)
    value.blend_type = reader.integer(1, True)
    value.sol = reader.integer(1, True)
    value.sync_type = reader.integer(1, True)
    if not 85 <= reader.position - _start <= 85:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvMoveJointx_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/MoveJointx_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_4b04129715b754766e2971a38b170681e1055cc121bf56d7b542594ac9986d0a"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvMoveJointx_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvMoveJointx_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvMoveJointx_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvMoveJointx_Response = Ros2Dsr_msgs2SrvMoveJointx_Response


def _write_Ros2Dsr_msgs2SrvMoveJointx_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvMoveJointx_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvMoveJointx_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvMoveJointx_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvMoveLine_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/MoveLine_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_104cb9b617f4f5f9596aa648cd5d1cd55bad832e0709e46c2e19be17d94f384a"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 100
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 100
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 100
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    pos: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    vel: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(2)])
    acc: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(2)])
    time: _py_float = 0.0
    radius: _py_float = 0.0
    ref: _py_int = 0
    mode: _py_int = 0
    blend_type: _py_int = 0
    sync_type: _py_int = 0

    def encode(self):
        writer = _Writer(100)
        _write_Ros2Dsr_msgs2SrvMoveLine_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 100, 100)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvMoveLine_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 100, 100))
        value = _read_Ros2Dsr_msgs2SrvMoveLine_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvMoveLine_Request = Ros2Dsr_msgs2SrvMoveLine_Request


def _write_Ros2Dsr_msgs2SrvMoveLine_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvMoveLine_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.pos
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count0):
        _element = _part0[_index]
        writer.f64(_element)
    _part1 = value.vel
    if type(_part1) not in (list, tuple):
        raise TypeError("array value required")
    _count1 = len(_part1)
    if _count1 != 2:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count1):
        _element = _part1[_index]
        writer.f64(_element)
    _part2 = value.acc
    if type(_part2) not in (list, tuple):
        raise TypeError("array value required")
    _count2 = len(_part2)
    if _count2 != 2:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count2):
        _element = _part2[_index]
        writer.f64(_element)
    _part3 = value.time
    writer.f64(_part3)
    _part4 = value.radius
    writer.f64(_part4)
    _part5 = value.ref
    writer.integer(_part5, 1, True)
    _part6 = value.mode
    writer.integer(_part6, 1, True)
    _part7 = value.blend_type
    writer.integer(_part7, 1, True)
    _part8 = value.sync_type
    writer.integer(_part8, 1, True)
    if not 100 <= len(writer.data) - _start <= 100:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvMoveLine_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvMoveLine_Request()
    value.pos = [reader.f64() for _ in range(6)]
    value.vel = [reader.f64() for _ in range(2)]
    value.acc = [reader.f64() for _ in range(2)]
    value.time = reader.f64()
    value.radius = reader.f64()
    value.ref = reader.integer(1, True)
    value.mode = reader.integer(1, True)
    value.blend_type = reader.integer(1, True)
    value.sync_type = reader.integer(1, True)
    if not 100 <= reader.position - _start <= 100:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvMoveLine_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/MoveLine_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_6c0632d3a0aa1476b0cfc9adeb8eb5ef5e3b718eccdbb3f24d942315bd287ef6"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvMoveLine_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvMoveLine_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvMoveLine_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvMoveLine_Response = Ros2Dsr_msgs2SrvMoveLine_Response


def _write_Ros2Dsr_msgs2SrvMoveLine_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvMoveLine_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvMoveLine_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvMoveLine_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvMovePause_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/MovePause_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_89602d9445236b0796a0628a3eecd1d57cd298135759330f7c1927d451beac80"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros2Dsr_msgs2SrvMovePause_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvMovePause_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros2Dsr_msgs2SrvMovePause_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvMovePause_Request = Ros2Dsr_msgs2SrvMovePause_Request


def _write_Ros2Dsr_msgs2SrvMovePause_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvMovePause_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros2Dsr_msgs2SrvMovePause_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvMovePause_Request()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvMovePause_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/MovePause_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_9d8e0eabfff65e2d80132a9586cffd61f9989e2b39842cc3af2f7b77b01a0dd2"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvMovePause_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvMovePause_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvMovePause_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvMovePause_Response = Ros2Dsr_msgs2SrvMovePause_Response


def _write_Ros2Dsr_msgs2SrvMovePause_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvMovePause_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvMovePause_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvMovePause_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvMovePeriodic_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/MovePeriodic_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_f05e9629ebcf086ef97e02f28c9b97f4604d53e15b348e76556dc9eef7791f41"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 107
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 107
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 107
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    amp: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    periodic: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    acc: _py_float = 0.0
    repeat: _py_int = 0
    ref: _py_int = 0
    sync_type: _py_int = 0

    def encode(self):
        writer = _Writer(107)
        _write_Ros2Dsr_msgs2SrvMovePeriodic_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 107, 107)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvMovePeriodic_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 107, 107))
        value = _read_Ros2Dsr_msgs2SrvMovePeriodic_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvMovePeriodic_Request = Ros2Dsr_msgs2SrvMovePeriodic_Request


def _write_Ros2Dsr_msgs2SrvMovePeriodic_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvMovePeriodic_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.amp
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count0):
        _element = _part0[_index]
        writer.f64(_element)
    _part1 = value.periodic
    if type(_part1) not in (list, tuple):
        raise TypeError("array value required")
    _count1 = len(_part1)
    if _count1 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count1):
        _element = _part1[_index]
        writer.f64(_element)
    _part2 = value.acc
    writer.f64(_part2)
    _part3 = value.repeat
    writer.integer(_part3, 1, True)
    _part4 = value.ref
    writer.integer(_part4, 1, True)
    _part5 = value.sync_type
    writer.integer(_part5, 1, True)
    if not 107 <= len(writer.data) - _start <= 107:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvMovePeriodic_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvMovePeriodic_Request()
    value.amp = [reader.f64() for _ in range(6)]
    value.periodic = [reader.f64() for _ in range(6)]
    value.acc = reader.f64()
    value.repeat = reader.integer(1, True)
    value.ref = reader.integer(1, True)
    value.sync_type = reader.integer(1, True)
    if not 107 <= reader.position - _start <= 107:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvMovePeriodic_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/MovePeriodic_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_99a58c09b66846d82e1e50451c7663fc2f8bfb6564181a737c37a0296a8bf022"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvMovePeriodic_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvMovePeriodic_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvMovePeriodic_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvMovePeriodic_Response = Ros2Dsr_msgs2SrvMovePeriodic_Response


def _write_Ros2Dsr_msgs2SrvMovePeriodic_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvMovePeriodic_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvMovePeriodic_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvMovePeriodic_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvMoveResume_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/MoveResume_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_7cb93befc32b7fb62279f8be0e6aa9f0075274375304afa5a438dea13588879e"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros2Dsr_msgs2SrvMoveResume_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvMoveResume_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros2Dsr_msgs2SrvMoveResume_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvMoveResume_Request = Ros2Dsr_msgs2SrvMoveResume_Request


def _write_Ros2Dsr_msgs2SrvMoveResume_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvMoveResume_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros2Dsr_msgs2SrvMoveResume_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvMoveResume_Request()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvMoveResume_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/MoveResume_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_1b8d38ecbb26dc9311cd7dbc35e397eabae2f8fc308f7f3ada8afaeee15ec956"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvMoveResume_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvMoveResume_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvMoveResume_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvMoveResume_Response = Ros2Dsr_msgs2SrvMoveResume_Response


def _write_Ros2Dsr_msgs2SrvMoveResume_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvMoveResume_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvMoveResume_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvMoveResume_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvMoveSpiral_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/MoveSpiral_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_4720da9e9607f7a2df71d51cbc568ca08e85f9cf8b335f5ed3128844b3ab66a1"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 94
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 94
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 94
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    revolution: _py_float = 0.0
    max_radius: _py_float = 0.0
    max_length: _py_float = 0.0
    target_pos: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(3)])
    vel: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(2)])
    acc: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(2)])
    time: _py_float = 0.0
    task_axis: _py_int = 0
    ref: _py_int = 0
    mode: _py_int = 0
    spiral_dir: _py_int = 0
    rot_dir: _py_int = 0
    sync_type: _py_int = 0

    def encode(self):
        writer = _Writer(94)
        _write_Ros2Dsr_msgs2SrvMoveSpiral_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 94, 94)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvMoveSpiral_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 94, 94))
        value = _read_Ros2Dsr_msgs2SrvMoveSpiral_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvMoveSpiral_Request = Ros2Dsr_msgs2SrvMoveSpiral_Request


def _write_Ros2Dsr_msgs2SrvMoveSpiral_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvMoveSpiral_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.revolution
    writer.f64(_part0)
    _part1 = value.max_radius
    writer.f64(_part1)
    _part2 = value.max_length
    writer.f64(_part2)
    _part3 = value.target_pos
    if type(_part3) not in (list, tuple):
        raise TypeError("array value required")
    _count3 = len(_part3)
    if _count3 != 3:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count3):
        _element = _part3[_index]
        writer.f64(_element)
    _part4 = value.vel
    if type(_part4) not in (list, tuple):
        raise TypeError("array value required")
    _count4 = len(_part4)
    if _count4 != 2:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count4):
        _element = _part4[_index]
        writer.f64(_element)
    _part5 = value.acc
    if type(_part5) not in (list, tuple):
        raise TypeError("array value required")
    _count5 = len(_part5)
    if _count5 != 2:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count5):
        _element = _part5[_index]
        writer.f64(_element)
    _part6 = value.time
    writer.f64(_part6)
    _part7 = value.task_axis
    writer.integer(_part7, 1, True)
    _part8 = value.ref
    writer.integer(_part8, 1, True)
    _part9 = value.mode
    writer.integer(_part9, 1, True)
    _part10 = value.spiral_dir
    writer.integer(_part10, 1, True)
    _part11 = value.rot_dir
    writer.integer(_part11, 1, True)
    _part12 = value.sync_type
    writer.integer(_part12, 1, True)
    if not 94 <= len(writer.data) - _start <= 94:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvMoveSpiral_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvMoveSpiral_Request()
    value.revolution = reader.f64()
    value.max_radius = reader.f64()
    value.max_length = reader.f64()
    value.target_pos = [reader.f64() for _ in range(3)]
    value.vel = [reader.f64() for _ in range(2)]
    value.acc = [reader.f64() for _ in range(2)]
    value.time = reader.f64()
    value.task_axis = reader.integer(1, True)
    value.ref = reader.integer(1, True)
    value.mode = reader.integer(1, True)
    value.spiral_dir = reader.integer(1, True)
    value.rot_dir = reader.integer(1, True)
    value.sync_type = reader.integer(1, True)
    if not 94 <= reader.position - _start <= 94:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvMoveSpiral_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/MoveSpiral_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_8f8f8c5ebb9288d4414bd64ac2bbcaac7c459dd187c149a2424d2ca426dd51fc"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvMoveSpiral_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvMoveSpiral_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvMoveSpiral_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvMoveSpiral_Response = Ros2Dsr_msgs2SrvMoveSpiral_Response


def _write_Ros2Dsr_msgs2SrvMoveSpiral_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvMoveSpiral_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvMoveSpiral_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvMoveSpiral_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvMoveSplineJoint_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/MoveSplineJoint_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_3e37f3aa8318b9dffd0d72754d6f8f6db4c6af7fed79a20cba019e6dd3535fe2"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 111
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 2319
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 2319
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    pos: _py_list[_record_Ros2Std_msgsMsgFloat64MultiArray] = _field(default_factory=lambda: [])
    pos_cnt: _py_int = 0
    vel: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    acc: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    time: _py_float = 0.0
    mode: _py_int = 0
    sync_type: _py_int = 0

    def encode(self):
        writer = _Writer(2319)
        _write_Ros2Dsr_msgs2SrvMoveSplineJoint_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 111, 2319)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvMoveSplineJoint_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 111, 2319))
        value = _read_Ros2Dsr_msgs2SrvMoveSplineJoint_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvMoveSplineJoint_Request = Ros2Dsr_msgs2SrvMoveSplineJoint_Request


def _write_Ros2Dsr_msgs2SrvMoveSplineJoint_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvMoveSplineJoint_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.pos
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 > 6:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count0, 4)
    for _index in range(_count0):
        _element = _part0[_index]
        _write_Ros2Std_msgsMsgFloat64MultiArray(writer, _element)
    _part1 = value.pos_cnt
    writer.integer(_part1, 1, True)
    _part2 = value.vel
    if type(_part2) not in (list, tuple):
        raise TypeError("array value required")
    _count2 = len(_part2)
    if _count2 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count2):
        _element = _part2[_index]
        writer.f64(_element)
    _part3 = value.acc
    if type(_part3) not in (list, tuple):
        raise TypeError("array value required")
    _count3 = len(_part3)
    if _count3 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count3):
        _element = _part3[_index]
        writer.f64(_element)
    _part4 = value.time
    writer.f64(_part4)
    _part5 = value.mode
    writer.integer(_part5, 1, True)
    _part6 = value.sync_type
    writer.integer(_part6, 1, True)
    if not 111 <= len(writer.data) - _start <= 2319:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvMoveSplineJoint_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvMoveSplineJoint_Request()
    value.pos = [_read_Ros2Std_msgsMsgFloat64MultiArray(reader) for _ in range(_read_count(reader, 6, 12))]
    value.pos_cnt = reader.integer(1, True)
    value.vel = [reader.f64() for _ in range(6)]
    value.acc = [reader.f64() for _ in range(6)]
    value.time = reader.f64()
    value.mode = reader.integer(1, True)
    value.sync_type = reader.integer(1, True)
    if not 111 <= reader.position - _start <= 2319:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvMoveSplineJoint_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/MoveSplineJoint_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_90acb8d4656b1cd6c5be0eb0693e2718e1ad96d10cf8cbb53738a7efd2898444"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvMoveSplineJoint_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvMoveSplineJoint_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvMoveSplineJoint_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvMoveSplineJoint_Response = Ros2Dsr_msgs2SrvMoveSplineJoint_Response


def _write_Ros2Dsr_msgs2SrvMoveSplineJoint_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvMoveSplineJoint_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvMoveSplineJoint_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvMoveSplineJoint_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvMoveSplineTask_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/MoveSplineTask_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_9ec113186666b39b1c4a27b1a0f9e8c9a8d5e18e0d0d773103b37811d5c613ff"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 49
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 2257
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 2257
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    pos: _py_list[_record_Ros2Std_msgsMsgFloat64MultiArray] = _field(default_factory=lambda: [])
    pos_cnt: _py_int = 0
    vel: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(2)])
    acc: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(2)])
    time: _py_float = 0.0
    ref: _py_int = 0
    mode: _py_int = 0
    opt: _py_int = 0
    sync_type: _py_int = 0

    def encode(self):
        writer = _Writer(2257)
        _write_Ros2Dsr_msgs2SrvMoveSplineTask_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 49, 2257)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvMoveSplineTask_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 49, 2257))
        value = _read_Ros2Dsr_msgs2SrvMoveSplineTask_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvMoveSplineTask_Request = Ros2Dsr_msgs2SrvMoveSplineTask_Request


def _write_Ros2Dsr_msgs2SrvMoveSplineTask_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvMoveSplineTask_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.pos
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 > 6:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count0, 4)
    for _index in range(_count0):
        _element = _part0[_index]
        _write_Ros2Std_msgsMsgFloat64MultiArray(writer, _element)
    _part1 = value.pos_cnt
    writer.integer(_part1, 1, True)
    _part2 = value.vel
    if type(_part2) not in (list, tuple):
        raise TypeError("array value required")
    _count2 = len(_part2)
    if _count2 != 2:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count2):
        _element = _part2[_index]
        writer.f64(_element)
    _part3 = value.acc
    if type(_part3) not in (list, tuple):
        raise TypeError("array value required")
    _count3 = len(_part3)
    if _count3 != 2:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count3):
        _element = _part3[_index]
        writer.f64(_element)
    _part4 = value.time
    writer.f64(_part4)
    _part5 = value.ref
    writer.integer(_part5, 1, True)
    _part6 = value.mode
    writer.integer(_part6, 1, True)
    _part7 = value.opt
    writer.integer(_part7, 1, True)
    _part8 = value.sync_type
    writer.integer(_part8, 1, True)
    if not 49 <= len(writer.data) - _start <= 2257:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvMoveSplineTask_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvMoveSplineTask_Request()
    value.pos = [_read_Ros2Std_msgsMsgFloat64MultiArray(reader) for _ in range(_read_count(reader, 6, 12))]
    value.pos_cnt = reader.integer(1, True)
    value.vel = [reader.f64() for _ in range(2)]
    value.acc = [reader.f64() for _ in range(2)]
    value.time = reader.f64()
    value.ref = reader.integer(1, True)
    value.mode = reader.integer(1, True)
    value.opt = reader.integer(1, True)
    value.sync_type = reader.integer(1, True)
    if not 49 <= reader.position - _start <= 2257:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvMoveSplineTask_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/MoveSplineTask_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_e1991eb0d0b76ea783f3a410df208c432b09dd0bb5dc595c9aad74e5da147fb5"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvMoveSplineTask_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvMoveSplineTask_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvMoveSplineTask_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvMoveSplineTask_Response = Ros2Dsr_msgs2SrvMoveSplineTask_Response


def _write_Ros2Dsr_msgs2SrvMoveSplineTask_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvMoveSplineTask_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvMoveSplineTask_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvMoveSplineTask_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvMoveStop_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/MoveStop_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_51bb66de3739f7fc873f36d78fc6b3fe70f28e788f4b5b4359768491074d1efd"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 4
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 4
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    stop_mode: _py_int = 0

    def encode(self):
        writer = _Writer(4)
        _write_Ros2Dsr_msgs2SrvMoveStop_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 4)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvMoveStop_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 4, 4))
        value = _read_Ros2Dsr_msgs2SrvMoveStop_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvMoveStop_Request = Ros2Dsr_msgs2SrvMoveStop_Request


def _write_Ros2Dsr_msgs2SrvMoveStop_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvMoveStop_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.stop_mode
    writer.integer(_part0, 4, True)
    if not 4 <= len(writer.data) - _start <= 4:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvMoveStop_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvMoveStop_Request()
    value.stop_mode = reader.integer(4, True)
    if not 4 <= reader.position - _start <= 4:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvMoveStop_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/MoveStop_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_ce670f48f010badbcafa3e96d05af25a02a018b41e75544a6d183fe89ceafbeb"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvMoveStop_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvMoveStop_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvMoveStop_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvMoveStop_Response = Ros2Dsr_msgs2SrvMoveStop_Response


def _write_Ros2Dsr_msgs2SrvMoveStop_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvMoveStop_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvMoveStop_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvMoveStop_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvMoveWait_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/MoveWait_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_7c0de129d63ef3142044c481392ba437362245e6643ba1bd0f87f90b9b377d61"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros2Dsr_msgs2SrvMoveWait_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvMoveWait_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros2Dsr_msgs2SrvMoveWait_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvMoveWait_Request = Ros2Dsr_msgs2SrvMoveWait_Request


def _write_Ros2Dsr_msgs2SrvMoveWait_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvMoveWait_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros2Dsr_msgs2SrvMoveWait_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvMoveWait_Request()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvMoveWait_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/MoveWait_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_1e235c22c0e493e309e8f53be1043ce1b425c52910358c7b34496c1291d61486"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvMoveWait_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvMoveWait_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvMoveWait_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvMoveWait_Response = Ros2Dsr_msgs2SrvMoveWait_Response


def _write_Ros2Dsr_msgs2SrvMoveWait_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvMoveWait_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvMoveWait_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvMoveWait_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/OverwriteUserCartCoord_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_772207f58ed8dc8dbef23f5ab3161a4289f378eed9ae9b960e15e380c5efcb8d"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 50
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 50
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 50
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    id: _py_int = 0
    pos: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    ref: _py_int = 0

    def encode(self):
        writer = _Writer(50)
        _write_Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 50, 50)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 50, 50))
        value = _read_Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Request = Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Request


def _write_Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.id
    writer.integer(_part0, 1, True)
    _part1 = value.pos
    if type(_part1) not in (list, tuple):
        raise TypeError("array value required")
    _count1 = len(_part1)
    if _count1 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count1):
        _element = _part1[_index]
        writer.f64(_element)
    _part2 = value.ref
    writer.integer(_part2, 1, True)
    if not 50 <= len(writer.data) - _start <= 50:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Request()
    value.id = reader.integer(1, True)
    value.pos = [reader.f64() for _ in range(6)]
    value.ref = reader.integer(1, True)
    if not 50 <= reader.position - _start <= 50:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/OverwriteUserCartCoord_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_93cc941737dc373f7b97a044a9b675cf220a511bbbde19b6d98fb9ac8f33dc05"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 2
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 2
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 2
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    id: _py_int = 0
    success: _py_bool = False

    def encode(self):
        writer = _Writer(2)
        _write_Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 2, 2)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 2, 2))
        value = _read_Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Response = Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Response


def _write_Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.id
    writer.integer(_part0, 1, True)
    _part1 = value.success
    if type(_part1) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part1), 1)
    if not 2 <= len(writer.data) - _start <= 2:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Response()
    value.id = reader.integer(1, True)
    value.success = _read_bool(reader)
    if not 2 <= reader.position - _start <= 2:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvParallelAxis1_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/ParallelAxis1_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_97ed9f4649879d56a9bdabbb2040b1779be4ac7156292b27f6ca04a82290e1fd"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 146
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 146
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 146
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    x1: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    x2: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    x3: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    axis: _py_int = 0
    ref: _py_int = 0

    def encode(self):
        writer = _Writer(146)
        _write_Ros2Dsr_msgs2SrvParallelAxis1_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 146, 146)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvParallelAxis1_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 146, 146))
        value = _read_Ros2Dsr_msgs2SrvParallelAxis1_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvParallelAxis1_Request = Ros2Dsr_msgs2SrvParallelAxis1_Request


def _write_Ros2Dsr_msgs2SrvParallelAxis1_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvParallelAxis1_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.x1
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count0):
        _element = _part0[_index]
        writer.f64(_element)
    _part1 = value.x2
    if type(_part1) not in (list, tuple):
        raise TypeError("array value required")
    _count1 = len(_part1)
    if _count1 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count1):
        _element = _part1[_index]
        writer.f64(_element)
    _part2 = value.x3
    if type(_part2) not in (list, tuple):
        raise TypeError("array value required")
    _count2 = len(_part2)
    if _count2 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count2):
        _element = _part2[_index]
        writer.f64(_element)
    _part3 = value.axis
    writer.integer(_part3, 1, True)
    _part4 = value.ref
    writer.integer(_part4, 1, True)
    if not 146 <= len(writer.data) - _start <= 146:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvParallelAxis1_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvParallelAxis1_Request()
    value.x1 = [reader.f64() for _ in range(6)]
    value.x2 = [reader.f64() for _ in range(6)]
    value.x3 = [reader.f64() for _ in range(6)]
    value.axis = reader.integer(1, True)
    value.ref = reader.integer(1, True)
    if not 146 <= reader.position - _start <= 146:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvParallelAxis1_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/ParallelAxis1_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_f748471d4492dbd0db21a6417a12eedbbc1d23920abe712af5ac3099a1b4a37c"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvParallelAxis1_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvParallelAxis1_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvParallelAxis1_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvParallelAxis1_Response = Ros2Dsr_msgs2SrvParallelAxis1_Response


def _write_Ros2Dsr_msgs2SrvParallelAxis1_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvParallelAxis1_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvParallelAxis1_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvParallelAxis1_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvParallelAxis2_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/ParallelAxis2_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_742f664642630b1c2fa965d9ff442791edc7c1aa90c9238fc370d1fb8baf1450"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 26
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 26
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 26
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    vect: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(3)])
    axis: _py_int = 0
    ref: _py_int = 0

    def encode(self):
        writer = _Writer(26)
        _write_Ros2Dsr_msgs2SrvParallelAxis2_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 26, 26)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvParallelAxis2_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 26, 26))
        value = _read_Ros2Dsr_msgs2SrvParallelAxis2_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvParallelAxis2_Request = Ros2Dsr_msgs2SrvParallelAxis2_Request


def _write_Ros2Dsr_msgs2SrvParallelAxis2_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvParallelAxis2_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.vect
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 != 3:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count0):
        _element = _part0[_index]
        writer.f64(_element)
    _part1 = value.axis
    writer.integer(_part1, 1, True)
    _part2 = value.ref
    writer.integer(_part2, 1, True)
    if not 26 <= len(writer.data) - _start <= 26:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvParallelAxis2_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvParallelAxis2_Request()
    value.vect = [reader.f64() for _ in range(3)]
    value.axis = reader.integer(1, True)
    value.ref = reader.integer(1, True)
    if not 26 <= reader.position - _start <= 26:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvParallelAxis2_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/ParallelAxis2_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_7a2659d61e6a13d1f17986c311441ecc4bb72146978f209c976f218817fd146b"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvParallelAxis2_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvParallelAxis2_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvParallelAxis2_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvParallelAxis2_Response = Ros2Dsr_msgs2SrvParallelAxis2_Response


def _write_Ros2Dsr_msgs2SrvParallelAxis2_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvParallelAxis2_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvParallelAxis2_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvParallelAxis2_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvReadDataRt_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/ReadDataRt_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_9c21179a2561779bfcd2e6bc011ab9eb183517cc93de8dc6349f016bc7f3a418"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros2Dsr_msgs2SrvReadDataRt_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvReadDataRt_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros2Dsr_msgs2SrvReadDataRt_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvReadDataRt_Request = Ros2Dsr_msgs2SrvReadDataRt_Request


def _write_Ros2Dsr_msgs2SrvReadDataRt_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvReadDataRt_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros2Dsr_msgs2SrvReadDataRt_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvReadDataRt_Request()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvReadDataRt_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/ReadDataRt_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_4055ed8c5ea1414a21bb32aad8cd37a9d2317619840a7a5de1f563b512395093"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1530
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 8154
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 8154
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    data: _record_Ros2Dsr_msgs2MsgRobotStateRt = _field(
        default_factory=lambda: Ros2Dsr_msgs2MsgRobotStateRt()
    )

    def encode(self):
        writer = _Writer(8154)
        _write_Ros2Dsr_msgs2SrvReadDataRt_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1530, 8154)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvReadDataRt_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1530, 8154))
        value = _read_Ros2Dsr_msgs2SrvReadDataRt_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvReadDataRt_Response = Ros2Dsr_msgs2SrvReadDataRt_Response


def _write_Ros2Dsr_msgs2SrvReadDataRt_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvReadDataRt_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.data
    _write_Ros2Dsr_msgs2MsgRobotStateRt(writer, _part0)
    if not 1530 <= len(writer.data) - _start <= 8154:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvReadDataRt_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvReadDataRt_Response()
    value.data = _read_Ros2Dsr_msgs2MsgRobotStateRt(reader)
    if not 1530 <= reader.position - _start <= 8154:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/ReleaseComplianceCtrl_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_1b3e5187b8a5753f0703abb97a653bcbcd62f19dc912f0a70dd1cf3d0fab59df"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Request = Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Request


def _write_Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Request()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/ReleaseComplianceCtrl_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_d63a68f67aa608599d4a33a7081d157eafcf52928388b0bfb1dd5faf51a4fa40"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Response = Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Response


def _write_Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvReleaseForce_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/ReleaseForce_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_5346f6a634c61acc8d296e83cf96e007fe369765d291698063d80c5fa2e18a91"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    time: _py_float = 0.0

    def encode(self):
        writer = _Writer(8)
        _write_Ros2Dsr_msgs2SrvReleaseForce_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 8)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvReleaseForce_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 8, 8))
        value = _read_Ros2Dsr_msgs2SrvReleaseForce_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvReleaseForce_Request = Ros2Dsr_msgs2SrvReleaseForce_Request


def _write_Ros2Dsr_msgs2SrvReleaseForce_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvReleaseForce_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.time
    writer.f64(_part0)
    if not 8 <= len(writer.data) - _start <= 8:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvReleaseForce_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvReleaseForce_Request()
    value.time = reader.f64()
    if not 8 <= reader.position - _start <= 8:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvReleaseForce_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/ReleaseForce_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_4d74f7c2ca2f7b97f8222bc31ccef0450c045b2424efa6f9d6d550c6a824149c"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvReleaseForce_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvReleaseForce_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvReleaseForce_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvReleaseForce_Response = Ros2Dsr_msgs2SrvReleaseForce_Response


def _write_Ros2Dsr_msgs2SrvReleaseForce_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvReleaseForce_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvReleaseForce_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvReleaseForce_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvResetWorkpieceWeight_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/ResetWorkpieceWeight_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_53ac7a846a49f8200358455dbbe63580e90309b3c3166ad48ed87ea33c364179"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros2Dsr_msgs2SrvResetWorkpieceWeight_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvResetWorkpieceWeight_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros2Dsr_msgs2SrvResetWorkpieceWeight_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvResetWorkpieceWeight_Request = Ros2Dsr_msgs2SrvResetWorkpieceWeight_Request


def _write_Ros2Dsr_msgs2SrvResetWorkpieceWeight_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvResetWorkpieceWeight_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros2Dsr_msgs2SrvResetWorkpieceWeight_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvResetWorkpieceWeight_Request()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvResetWorkpieceWeight_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/ResetWorkpieceWeight_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_29d28e032dffe750b93e8207660af315687f3c2241a8a53f29fa7da7570b4abd"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvResetWorkpieceWeight_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvResetWorkpieceWeight_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvResetWorkpieceWeight_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvResetWorkpieceWeight_Response = Ros2Dsr_msgs2SrvResetWorkpieceWeight_Response


def _write_Ros2Dsr_msgs2SrvResetWorkpieceWeight_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvResetWorkpieceWeight_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvResetWorkpieceWeight_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvResetWorkpieceWeight_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvRobotiq2FClose_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/Robotiq2FClose_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_1bb8c6794458b545e6a117418c52ede9ba301787dcc80c346cdbeadb7072d974"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros2Dsr_msgs2SrvRobotiq2FClose_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvRobotiq2FClose_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros2Dsr_msgs2SrvRobotiq2FClose_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvRobotiq2FClose_Request = Ros2Dsr_msgs2SrvRobotiq2FClose_Request


def _write_Ros2Dsr_msgs2SrvRobotiq2FClose_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvRobotiq2FClose_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros2Dsr_msgs2SrvRobotiq2FClose_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvRobotiq2FClose_Request()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvRobotiq2FClose_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/Robotiq2FClose_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_93b3a91aedebf08ae74a53857c898ddda0493662d02df100bde32652042f593e"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvRobotiq2FClose_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvRobotiq2FClose_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvRobotiq2FClose_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvRobotiq2FClose_Response = Ros2Dsr_msgs2SrvRobotiq2FClose_Response


def _write_Ros2Dsr_msgs2SrvRobotiq2FClose_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvRobotiq2FClose_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvRobotiq2FClose_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvRobotiq2FClose_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvRobotiq2FMove_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/Robotiq2FMove_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_d9125f3ed3a008a9796249b2759ff3e1fb9b8cc206ae89165fd20f382e0407f2"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    width: _py_float = 0.0

    def encode(self):
        writer = _Writer(8)
        _write_Ros2Dsr_msgs2SrvRobotiq2FMove_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 8)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvRobotiq2FMove_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 8, 8))
        value = _read_Ros2Dsr_msgs2SrvRobotiq2FMove_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvRobotiq2FMove_Request = Ros2Dsr_msgs2SrvRobotiq2FMove_Request


def _write_Ros2Dsr_msgs2SrvRobotiq2FMove_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvRobotiq2FMove_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.width
    writer.f64(_part0)
    if not 8 <= len(writer.data) - _start <= 8:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvRobotiq2FMove_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvRobotiq2FMove_Request()
    value.width = reader.f64()
    if not 8 <= reader.position - _start <= 8:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvRobotiq2FMove_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/Robotiq2FMove_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_c7365e9517f2da81712616281451882cfedbe5cd0c771fbc93d3d155598fa41d"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvRobotiq2FMove_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvRobotiq2FMove_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvRobotiq2FMove_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvRobotiq2FMove_Response = Ros2Dsr_msgs2SrvRobotiq2FMove_Response


def _write_Ros2Dsr_msgs2SrvRobotiq2FMove_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvRobotiq2FMove_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvRobotiq2FMove_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvRobotiq2FMove_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvRobotiq2FOpen_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/Robotiq2FOpen_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_0d94a65ab5ad917af12e961dfddc1c3d722d0f9bf703a20f7c4e1b86d646889a"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros2Dsr_msgs2SrvRobotiq2FOpen_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvRobotiq2FOpen_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros2Dsr_msgs2SrvRobotiq2FOpen_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvRobotiq2FOpen_Request = Ros2Dsr_msgs2SrvRobotiq2FOpen_Request


def _write_Ros2Dsr_msgs2SrvRobotiq2FOpen_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvRobotiq2FOpen_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros2Dsr_msgs2SrvRobotiq2FOpen_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvRobotiq2FOpen_Request()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvRobotiq2FOpen_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/Robotiq2FOpen_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_0d7392466b804afe346333e6eab855aa2ac2d66c96ab417e7d96ec6917ec4f2c"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvRobotiq2FOpen_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvRobotiq2FOpen_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvRobotiq2FOpen_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvRobotiq2FOpen_Response = Ros2Dsr_msgs2SrvRobotiq2FOpen_Response


def _write_Ros2Dsr_msgs2SrvRobotiq2FOpen_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvRobotiq2FOpen_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvRobotiq2FOpen_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvRobotiq2FOpen_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvSerialSendData_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/SerialSendData_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_6a1da84ea13b36d9722b9c7779baa295bf13ee1e85266226659f5f077fb67ce8"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    data: _py_str = ""

    def encode(self):
        writer = _Writer(260)
        _write_Ros2Dsr_msgs2SrvSerialSendData_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 260)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvSerialSendData_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 4, 260))
        value = _read_Ros2Dsr_msgs2SrvSerialSendData_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvSerialSendData_Request = Ros2Dsr_msgs2SrvSerialSendData_Request


def _write_Ros2Dsr_msgs2SrvSerialSendData_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvSerialSendData_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.data
    _write_text(writer, _part0, 256)
    if not 4 <= len(writer.data) - _start <= 260:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvSerialSendData_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvSerialSendData_Request()
    value.data = _read_text(reader, 256)
    if not 4 <= reader.position - _start <= 260:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvSerialSendData_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/SerialSendData_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_a28dd2160987b004eb5ee91cc2e0e6a3fbdb54777e33df0044131811da1ac278"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvSerialSendData_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvSerialSendData_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvSerialSendData_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvSerialSendData_Response = Ros2Dsr_msgs2SrvSerialSendData_Response


def _write_Ros2Dsr_msgs2SrvSerialSendData_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvSerialSendData_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvSerialSendData_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvSerialSendData_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvServoOff_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/ServoOff_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_f7445b77379d9197bd64162af81c79f19b8eccfd65bb35a1c7ec1c6c90b0956c"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = [
        {"name": "STOP_TYPE_QUICK_STO", "type": "int8", "native_type": "int8", "literal": "0", "value": "0"},
        {"name": "STOP_TYPE_QUICK", "type": "int8", "native_type": "int8", "literal": "1", "value": "1"},
        {"name": "STOP_TYPE_SLOW", "type": "int8", "native_type": "int8", "literal": "2", "value": "2"},
        {"name": "STOP_TYPE_HOLD", "type": "int8", "native_type": "int8", "literal": "3", "value": "3"},
        {"name": "STOP_TYPE_EMERGENCY", "type": "int8", "native_type": "int8", "literal": "3", "value": "3"},
    ]
    STOP_TYPE_QUICK_STO: _ClassVar = 0
    STOP_TYPE_QUICK: _ClassVar = 1
    STOP_TYPE_SLOW: _ClassVar = 2
    STOP_TYPE_HOLD: _ClassVar = 3
    STOP_TYPE_EMERGENCY: _ClassVar = 3
    stop_type: _py_int = 0

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvServoOff_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvServoOff_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvServoOff_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvServoOff_Request = Ros2Dsr_msgs2SrvServoOff_Request


def _write_Ros2Dsr_msgs2SrvServoOff_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvServoOff_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.stop_type
    writer.integer(_part0, 1, True)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvServoOff_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvServoOff_Request()
    value.stop_type = reader.integer(1, True)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvServoOff_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/ServoOff_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_da341e498342ad932e3f5f9a037252ccd53402609abfaf5a20e0b2f452ac74db"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvServoOff_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvServoOff_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvServoOff_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvServoOff_Response = Ros2Dsr_msgs2SrvServoOff_Response


def _write_Ros2Dsr_msgs2SrvServoOff_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvServoOff_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvServoOff_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvServoOff_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvSetAccjRt_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/SetAccjRt_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_73ff05ee72605c8e3bec72ea56f962475a50db8afed07ca299a1b47e5a16f66f"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 48
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 48
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 48
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    acc: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])

    def encode(self):
        writer = _Writer(48)
        _write_Ros2Dsr_msgs2SrvSetAccjRt_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 48, 48)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvSetAccjRt_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 48, 48))
        value = _read_Ros2Dsr_msgs2SrvSetAccjRt_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvSetAccjRt_Request = Ros2Dsr_msgs2SrvSetAccjRt_Request


def _write_Ros2Dsr_msgs2SrvSetAccjRt_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvSetAccjRt_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.acc
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count0):
        _element = _part0[_index]
        writer.f64(_element)
    if not 48 <= len(writer.data) - _start <= 48:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvSetAccjRt_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvSetAccjRt_Request()
    value.acc = [reader.f64() for _ in range(6)]
    if not 48 <= reader.position - _start <= 48:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvSetAccjRt_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/SetAccjRt_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_a25cd5180e9812a012ce3337665b7a20a97e13ad99c9ca8accdcbbd644eb539c"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvSetAccjRt_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvSetAccjRt_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvSetAccjRt_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvSetAccjRt_Response = Ros2Dsr_msgs2SrvSetAccjRt_Response


def _write_Ros2Dsr_msgs2SrvSetAccjRt_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvSetAccjRt_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvSetAccjRt_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvSetAccjRt_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvSetAccxRt_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/SetAccxRt_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_55addee739e16839a0bedd135930ea3b9e1a09f80776346f7c71c1d4e64e5111"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 16
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 16
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 16
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    trans: _py_float = 0.0
    rotation: _py_float = 0.0

    def encode(self):
        writer = _Writer(16)
        _write_Ros2Dsr_msgs2SrvSetAccxRt_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 16, 16)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvSetAccxRt_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 16, 16))
        value = _read_Ros2Dsr_msgs2SrvSetAccxRt_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvSetAccxRt_Request = Ros2Dsr_msgs2SrvSetAccxRt_Request


def _write_Ros2Dsr_msgs2SrvSetAccxRt_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvSetAccxRt_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.trans
    writer.f64(_part0)
    _part1 = value.rotation
    writer.f64(_part1)
    if not 16 <= len(writer.data) - _start <= 16:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvSetAccxRt_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvSetAccxRt_Request()
    value.trans = reader.f64()
    value.rotation = reader.f64()
    if not 16 <= reader.position - _start <= 16:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvSetAccxRt_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/SetAccxRt_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_1277c73c96a872595079bdb1fbff9b99b4f2f7f62ad50339d7402a864610434c"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvSetAccxRt_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvSetAccxRt_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvSetAccxRt_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvSetAccxRt_Response = Ros2Dsr_msgs2SrvSetAccxRt_Response


def _write_Ros2Dsr_msgs2SrvSetAccxRt_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvSetAccxRt_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvSetAccxRt_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvSetAccxRt_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/SetCtrlBoxAnalogInputType_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_56cd6d0829be3eac45dfd15bd9693f53b72705481bb905c16dc0ab19843fc7d0"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 2
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 2
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 2
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    channel: _py_int = 0
    mode: _py_int = 0

    def encode(self):
        writer = _Writer(2)
        _write_Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 2, 2)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 2, 2))
        value = _read_Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Request = Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Request


def _write_Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.channel
    writer.integer(_part0, 1, True)
    _part1 = value.mode
    writer.integer(_part1, 1, True)
    if not 2 <= len(writer.data) - _start <= 2:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Request()
    value.channel = reader.integer(1, True)
    value.mode = reader.integer(1, True)
    if not 2 <= reader.position - _start <= 2:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/SetCtrlBoxAnalogInputType_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_dcbd1b140dca6119d2be2b2eea11efc394969f0bf16926c5758bd384e764eaf0"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Response = (
    Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Response
)


def _write_Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/SetCtrlBoxAnalogOutput_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_6da2558f6e5259eaf4573144414fd8e6a917a9a43d11b7a0036187158e97f34a"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 9
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 9
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 9
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    channel: _py_int = 0
    value: _py_float = 0.0

    def encode(self):
        writer = _Writer(9)
        _write_Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 9, 9)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 9, 9))
        value = _read_Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Request = Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Request


def _write_Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.channel
    writer.integer(_part0, 1, True)
    _part1 = value.value
    writer.f64(_part1)
    if not 9 <= len(writer.data) - _start <= 9:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Request()
    value.channel = reader.integer(1, True)
    value.value = reader.f64()
    if not 9 <= reader.position - _start <= 9:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/SetCtrlBoxAnalogOutput_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_258f0495c9eeacec7cf7221018fab5a99939f153c6a5cddb6f653ca71859e1e1"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Response = Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Response


def _write_Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/SetCtrlBoxAnalogOutputType_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_ee2b262d71056945ef50cd2cfd645f63220c63071ed28531e79740539b0b15f9"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 2
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 2
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 2
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    channel: _py_int = 0
    mode: _py_int = 0

    def encode(self):
        writer = _Writer(2)
        _write_Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 2, 2)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 2, 2))
        value = _read_Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Request = (
    Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Request
)


def _write_Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.channel
    writer.integer(_part0, 1, True)
    _part1 = value.mode
    writer.integer(_part1, 1, True)
    if not 2 <= len(writer.data) - _start <= 2:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Request()
    value.channel = reader.integer(1, True)
    value.mode = reader.integer(1, True)
    if not 2 <= reader.position - _start <= 2:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/SetCtrlBoxAnalogOutputType_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_47900b504bce4fd7546759c836a78d02e873630ecc79cfa989e3473a9f490359"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Response = (
    Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Response
)


def _write_Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/SetCtrlBoxDigitalOutput_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_ce45009eaf9382aa3bccc48526aa9e5a040847ad08deb9a37d574dd69a34258d"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 2
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 2
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 2
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    index: _py_int = 0
    value: _py_int = 0

    def encode(self):
        writer = _Writer(2)
        _write_Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 2, 2)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 2, 2))
        value = _read_Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Request = Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Request


def _write_Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.index
    writer.integer(_part0, 1, True)
    _part1 = value.value
    writer.integer(_part1, 1, True)
    if not 2 <= len(writer.data) - _start <= 2:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Request()
    value.index = reader.integer(1, True)
    value.value = reader.integer(1, True)
    if not 2 <= reader.position - _start <= 2:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/SetCtrlBoxDigitalOutput_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_fd9da818a998c786665a6849417511722de21391c4aaa92422eb7db061bb9330"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Response = Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Response


def _write_Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvSetCurrentTcp_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/SetCurrentTcp_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_1b9f1bd57a2dd82cc52ec59acc9967aea8948613ec68dd26e0a9a9897088d002"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    name: _py_str = ""

    def encode(self):
        writer = _Writer(260)
        _write_Ros2Dsr_msgs2SrvSetCurrentTcp_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 260)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvSetCurrentTcp_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 4, 260))
        value = _read_Ros2Dsr_msgs2SrvSetCurrentTcp_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvSetCurrentTcp_Request = Ros2Dsr_msgs2SrvSetCurrentTcp_Request


def _write_Ros2Dsr_msgs2SrvSetCurrentTcp_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvSetCurrentTcp_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.name
    _write_text(writer, _part0, 256)
    if not 4 <= len(writer.data) - _start <= 260:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvSetCurrentTcp_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvSetCurrentTcp_Request()
    value.name = _read_text(reader, 256)
    if not 4 <= reader.position - _start <= 260:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvSetCurrentTcp_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/SetCurrentTcp_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_9c66924cfd4931bae242c3d11dd0a9293b337defc82501719b179b622d9f342a"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvSetCurrentTcp_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvSetCurrentTcp_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvSetCurrentTcp_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvSetCurrentTcp_Response = Ros2Dsr_msgs2SrvSetCurrentTcp_Response


def _write_Ros2Dsr_msgs2SrvSetCurrentTcp_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvSetCurrentTcp_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvSetCurrentTcp_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvSetCurrentTcp_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvSetCurrentTool_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/SetCurrentTool_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_8d1254ad637afaeca980e00cb89c1a3219cea13e93a0c83641fcf3f7c8afd440"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    name: _py_str = ""

    def encode(self):
        writer = _Writer(260)
        _write_Ros2Dsr_msgs2SrvSetCurrentTool_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 260)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvSetCurrentTool_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 4, 260))
        value = _read_Ros2Dsr_msgs2SrvSetCurrentTool_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvSetCurrentTool_Request = Ros2Dsr_msgs2SrvSetCurrentTool_Request


def _write_Ros2Dsr_msgs2SrvSetCurrentTool_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvSetCurrentTool_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.name
    _write_text(writer, _part0, 256)
    if not 4 <= len(writer.data) - _start <= 260:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvSetCurrentTool_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvSetCurrentTool_Request()
    value.name = _read_text(reader, 256)
    if not 4 <= reader.position - _start <= 260:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvSetCurrentTool_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/SetCurrentTool_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_964448078ed08bb742a8077370c02f6b88d702244df67e4eb7d67828abfae932"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvSetCurrentTool_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvSetCurrentTool_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvSetCurrentTool_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvSetCurrentTool_Response = Ros2Dsr_msgs2SrvSetCurrentTool_Response


def _write_Ros2Dsr_msgs2SrvSetCurrentTool_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvSetCurrentTool_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvSetCurrentTool_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvSetCurrentTool_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvSetDesiredForce_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/SetDesiredForce_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_a49831bf62f8a697addd5be7521f861a307940be45d4a59d9777580801ba4b1a"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 64
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 64
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 64
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    fd: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    dir: _py_list[_py_int] = _field(default_factory=lambda: [0 for _ in range(6)])
    ref: _py_int = 0
    time: _py_float = 0.0
    mod: _py_int = 0

    def encode(self):
        writer = _Writer(64)
        _write_Ros2Dsr_msgs2SrvSetDesiredForce_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 64, 64)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvSetDesiredForce_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 64, 64))
        value = _read_Ros2Dsr_msgs2SrvSetDesiredForce_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvSetDesiredForce_Request = Ros2Dsr_msgs2SrvSetDesiredForce_Request


def _write_Ros2Dsr_msgs2SrvSetDesiredForce_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvSetDesiredForce_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.fd
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count0):
        _element = _part0[_index]
        writer.f64(_element)
    _part1 = value.dir
    if type(_part1) not in (list, tuple):
        raise TypeError("array value required")
    _count1 = len(_part1)
    if _count1 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count1):
        _element = _part1[_index]
        writer.integer(_element, 1, True)
    _part2 = value.ref
    writer.integer(_part2, 1, True)
    _part3 = value.time
    writer.f64(_part3)
    _part4 = value.mod
    writer.integer(_part4, 1, True)
    if not 64 <= len(writer.data) - _start <= 64:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvSetDesiredForce_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvSetDesiredForce_Request()
    value.fd = [reader.f64() for _ in range(6)]
    value.dir = [reader.integer(1, True) for _ in range(6)]
    value.ref = reader.integer(1, True)
    value.time = reader.f64()
    value.mod = reader.integer(1, True)
    if not 64 <= reader.position - _start <= 64:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvSetDesiredForce_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/SetDesiredForce_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_53ba3b5b57cca8d039ad6c148c20f0cff1e6c93ba4fe170bc7ccc5d0d3c056f9"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvSetDesiredForce_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvSetDesiredForce_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvSetDesiredForce_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvSetDesiredForce_Response = Ros2Dsr_msgs2SrvSetDesiredForce_Response


def _write_Ros2Dsr_msgs2SrvSetDesiredForce_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvSetDesiredForce_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvSetDesiredForce_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvSetDesiredForce_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvSetModbusOutput_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/SetModbusOutput_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_0653027d5adf9f01bda734d110232c55849f4b19ddaee78dd20b4aecf79096aa"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 264
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 264
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    name: _py_str = ""
    value: _py_int = 0

    def encode(self):
        writer = _Writer(264)
        _write_Ros2Dsr_msgs2SrvSetModbusOutput_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 264)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvSetModbusOutput_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 8, 264))
        value = _read_Ros2Dsr_msgs2SrvSetModbusOutput_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvSetModbusOutput_Request = Ros2Dsr_msgs2SrvSetModbusOutput_Request


def _write_Ros2Dsr_msgs2SrvSetModbusOutput_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvSetModbusOutput_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.name
    _write_text(writer, _part0, 256)
    _part1 = value.value
    writer.integer(_part1, 4, True)
    if not 8 <= len(writer.data) - _start <= 264:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvSetModbusOutput_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvSetModbusOutput_Request()
    value.name = _read_text(reader, 256)
    value.value = reader.integer(4, True)
    if not 8 <= reader.position - _start <= 264:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvSetModbusOutput_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/SetModbusOutput_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_8a8f0f0da4dc7a3235882cc2aef013d1722f17020535a4ddad5dceec5c533262"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvSetModbusOutput_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvSetModbusOutput_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvSetModbusOutput_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvSetModbusOutput_Response = Ros2Dsr_msgs2SrvSetModbusOutput_Response


def _write_Ros2Dsr_msgs2SrvSetModbusOutput_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvSetModbusOutput_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvSetModbusOutput_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvSetModbusOutput_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvSetOutputRegisterBit_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/SetOutputRegisterBit_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_309eebb54f359760a9c52635c1989d966c7b3998e34444dfccc4023ed43c1f88"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 6
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 6
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 6
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    address: _py_int = 0
    value: _py_int = 0

    def encode(self):
        writer = _Writer(6)
        _write_Ros2Dsr_msgs2SrvSetOutputRegisterBit_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 6, 6)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvSetOutputRegisterBit_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 6, 6))
        value = _read_Ros2Dsr_msgs2SrvSetOutputRegisterBit_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvSetOutputRegisterBit_Request = Ros2Dsr_msgs2SrvSetOutputRegisterBit_Request


def _write_Ros2Dsr_msgs2SrvSetOutputRegisterBit_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvSetOutputRegisterBit_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.address
    writer.integer(_part0, 2, False)
    _part1 = value.value
    writer.integer(_part1, 4, True)
    if not 6 <= len(writer.data) - _start <= 6:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvSetOutputRegisterBit_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvSetOutputRegisterBit_Request()
    value.address = reader.integer(2, False)
    value.value = reader.integer(4, True)
    if not 6 <= reader.position - _start <= 6:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvSetOutputRegisterBit_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/SetOutputRegisterBit_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_3358f20e8d47bdafe4406208878d8c28c320f9e53844eaacfaadfb1255f8a6e8"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvSetOutputRegisterBit_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvSetOutputRegisterBit_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvSetOutputRegisterBit_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvSetOutputRegisterBit_Response = Ros2Dsr_msgs2SrvSetOutputRegisterBit_Response


def _write_Ros2Dsr_msgs2SrvSetOutputRegisterBit_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvSetOutputRegisterBit_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvSetOutputRegisterBit_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvSetOutputRegisterBit_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/SetOutputRegisterFloat_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_7f0c5c355381aa45700641c3ba99b227fe6bbb5394f1e2cb01c4f2b899918c61"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 10
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 10
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 10
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    address: _py_int = 0
    value: _py_float = 0.0

    def encode(self):
        writer = _Writer(10)
        _write_Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 10, 10)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 10, 10))
        value = _read_Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Request = Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Request


def _write_Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.address
    writer.integer(_part0, 2, False)
    _part1 = value.value
    writer.f64(_part1)
    if not 10 <= len(writer.data) - _start <= 10:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Request()
    value.address = reader.integer(2, False)
    value.value = reader.f64()
    if not 10 <= reader.position - _start <= 10:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/SetOutputRegisterFloat_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_9c3d3799cc5622c88b54926353e730bf362a75c4a23e95c9543820d489f1b27f"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Response = Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Response


def _write_Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvSetOutputRegisterInt_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/SetOutputRegisterInt_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_1d250e3cfd00550fc55b69ac120c384e90573636d7a2adc8a5e8b122ec678364"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 6
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 6
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 6
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    address: _py_int = 0
    value: _py_int = 0

    def encode(self):
        writer = _Writer(6)
        _write_Ros2Dsr_msgs2SrvSetOutputRegisterInt_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 6, 6)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvSetOutputRegisterInt_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 6, 6))
        value = _read_Ros2Dsr_msgs2SrvSetOutputRegisterInt_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvSetOutputRegisterInt_Request = Ros2Dsr_msgs2SrvSetOutputRegisterInt_Request


def _write_Ros2Dsr_msgs2SrvSetOutputRegisterInt_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvSetOutputRegisterInt_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.address
    writer.integer(_part0, 2, False)
    _part1 = value.value
    writer.integer(_part1, 4, True)
    if not 6 <= len(writer.data) - _start <= 6:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvSetOutputRegisterInt_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvSetOutputRegisterInt_Request()
    value.address = reader.integer(2, False)
    value.value = reader.integer(4, True)
    if not 6 <= reader.position - _start <= 6:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvSetOutputRegisterInt_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/SetOutputRegisterInt_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_ec70602507eebbdca44703e487375d482510aaa684aa2dd93a5bdcd0ba8275f7"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvSetOutputRegisterInt_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvSetOutputRegisterInt_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvSetOutputRegisterInt_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvSetOutputRegisterInt_Response = Ros2Dsr_msgs2SrvSetOutputRegisterInt_Response


def _write_Ros2Dsr_msgs2SrvSetOutputRegisterInt_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvSetOutputRegisterInt_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvSetOutputRegisterInt_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvSetOutputRegisterInt_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvSetRefCoord_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/SetRefCoord_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_801f3fdd878bd7661db70ef37a8146e9c02f539c65d91a60a7589a1009bc9be5"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    coord: _py_int = 0

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvSetRefCoord_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvSetRefCoord_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvSetRefCoord_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvSetRefCoord_Request = Ros2Dsr_msgs2SrvSetRefCoord_Request


def _write_Ros2Dsr_msgs2SrvSetRefCoord_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvSetRefCoord_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.coord
    writer.integer(_part0, 1, True)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvSetRefCoord_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvSetRefCoord_Request()
    value.coord = reader.integer(1, True)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvSetRefCoord_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/SetRefCoord_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_733bfb338aa280d2475a6398264e26cf76e873c92e20e9e8496898c38f990bae"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvSetRefCoord_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvSetRefCoord_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvSetRefCoord_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvSetRefCoord_Response = Ros2Dsr_msgs2SrvSetRefCoord_Response


def _write_Ros2Dsr_msgs2SrvSetRefCoord_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvSetRefCoord_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvSetRefCoord_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvSetRefCoord_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvSetRobotControl_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/SetRobotControl_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_d39305d9d913933542cc89eba2c9b5abd68e25574c9f8096ad4bb16cebb2c97f"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    robot_control: _py_int = 0

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvSetRobotControl_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvSetRobotControl_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvSetRobotControl_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvSetRobotControl_Request = Ros2Dsr_msgs2SrvSetRobotControl_Request


def _write_Ros2Dsr_msgs2SrvSetRobotControl_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvSetRobotControl_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.robot_control
    writer.integer(_part0, 1, True)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvSetRobotControl_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvSetRobotControl_Request()
    value.robot_control = reader.integer(1, True)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvSetRobotControl_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/SetRobotControl_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_e4aad49231edc73256306d46bd537ffb24d61956146265a7f04d1eb1aafc684c"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvSetRobotControl_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvSetRobotControl_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvSetRobotControl_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvSetRobotControl_Response = Ros2Dsr_msgs2SrvSetRobotControl_Response


def _write_Ros2Dsr_msgs2SrvSetRobotControl_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvSetRobotControl_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvSetRobotControl_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvSetRobotControl_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvSetRobotMode_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/SetRobotMode_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_59506bb1284a069b41db932d11fcef986befe63b2d365b16ff6a09d1d4227a9b"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    robot_mode: _py_int = 0

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvSetRobotMode_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvSetRobotMode_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvSetRobotMode_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvSetRobotMode_Request = Ros2Dsr_msgs2SrvSetRobotMode_Request


def _write_Ros2Dsr_msgs2SrvSetRobotMode_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvSetRobotMode_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.robot_mode
    writer.integer(_part0, 1, True)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvSetRobotMode_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvSetRobotMode_Request()
    value.robot_mode = reader.integer(1, True)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvSetRobotMode_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/SetRobotMode_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_f1d0dad948e4a24471c406e08b79640f3846f0d96aaf63d84763066b54963dee"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvSetRobotMode_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvSetRobotMode_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvSetRobotMode_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvSetRobotMode_Response = Ros2Dsr_msgs2SrvSetRobotMode_Response


def _write_Ros2Dsr_msgs2SrvSetRobotMode_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvSetRobotMode_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvSetRobotMode_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvSetRobotMode_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvSetRobotSpeedMode_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/SetRobotSpeedMode_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_74f6d0c7e148619aa43ad375b529155bce79ff06295ca5612dee8b17c8f7399b"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    speed_mode: _py_int = 0

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvSetRobotSpeedMode_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvSetRobotSpeedMode_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvSetRobotSpeedMode_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvSetRobotSpeedMode_Request = Ros2Dsr_msgs2SrvSetRobotSpeedMode_Request


def _write_Ros2Dsr_msgs2SrvSetRobotSpeedMode_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvSetRobotSpeedMode_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.speed_mode
    writer.integer(_part0, 1, True)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvSetRobotSpeedMode_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvSetRobotSpeedMode_Request()
    value.speed_mode = reader.integer(1, True)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvSetRobotSpeedMode_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/SetRobotSpeedMode_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_f2b86ce2bbd498677537e77b069fda28c0c48c73d1d3b4a8b4f6d41460a2dde2"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvSetRobotSpeedMode_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvSetRobotSpeedMode_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvSetRobotSpeedMode_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvSetRobotSpeedMode_Response = Ros2Dsr_msgs2SrvSetRobotSpeedMode_Response


def _write_Ros2Dsr_msgs2SrvSetRobotSpeedMode_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvSetRobotSpeedMode_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvSetRobotSpeedMode_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvSetRobotSpeedMode_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvSetRobotSystem_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/SetRobotSystem_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_2cbe8cfcd2fbe89acc3310ec43e904bdad6e246bbda7c7225357d9478e591030"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    robot_system: _py_int = 0

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvSetRobotSystem_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvSetRobotSystem_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvSetRobotSystem_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvSetRobotSystem_Request = Ros2Dsr_msgs2SrvSetRobotSystem_Request


def _write_Ros2Dsr_msgs2SrvSetRobotSystem_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvSetRobotSystem_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.robot_system
    writer.integer(_part0, 1, True)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvSetRobotSystem_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvSetRobotSystem_Request()
    value.robot_system = reader.integer(1, True)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvSetRobotSystem_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/SetRobotSystem_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_93e95c1c768694abbfaa89bca4357085b9e6b67b031cedaf3ae064a0e5545872"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvSetRobotSystem_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvSetRobotSystem_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvSetRobotSystem_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvSetRobotSystem_Response = Ros2Dsr_msgs2SrvSetRobotSystem_Response


def _write_Ros2Dsr_msgs2SrvSetRobotSystem_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvSetRobotSystem_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvSetRobotSystem_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvSetRobotSystem_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvSetRtControlInput_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/SetRtControlInput_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_5d0d581d5874bb92ea5c67281c4414d4dcf2799ebeb13b12b60b58408b3854c7"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 16
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 272
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 272
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    version: _py_str = ""
    period: _py_float = 0.0
    loss: _py_int = 0

    def encode(self):
        writer = _Writer(272)
        _write_Ros2Dsr_msgs2SrvSetRtControlInput_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 16, 272)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvSetRtControlInput_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 16, 272))
        value = _read_Ros2Dsr_msgs2SrvSetRtControlInput_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvSetRtControlInput_Request = Ros2Dsr_msgs2SrvSetRtControlInput_Request


def _write_Ros2Dsr_msgs2SrvSetRtControlInput_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvSetRtControlInput_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.version
    _write_text(writer, _part0, 256)
    _part1 = value.period
    writer.f64(_part1)
    _part2 = value.loss
    writer.integer(_part2, 4, True)
    if not 16 <= len(writer.data) - _start <= 272:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvSetRtControlInput_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvSetRtControlInput_Request()
    value.version = _read_text(reader, 256)
    value.period = reader.f64()
    value.loss = reader.integer(4, True)
    if not 16 <= reader.position - _start <= 272:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvSetRtControlInput_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/SetRtControlInput_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_d4a506d56199fac9bd3decbdadce3a728df404854dfceea3f1365e25a031c2a8"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvSetRtControlInput_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvSetRtControlInput_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvSetRtControlInput_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvSetRtControlInput_Response = Ros2Dsr_msgs2SrvSetRtControlInput_Response


def _write_Ros2Dsr_msgs2SrvSetRtControlInput_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvSetRtControlInput_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvSetRtControlInput_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvSetRtControlInput_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvSetRtControlOutput_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/SetRtControlOutput_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_12dac5a038aa91a74240656b3d088e1fbee381de935a8b8aae7fb2a152bcaa47"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 16
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 272
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 272
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    version: _py_str = ""
    period: _py_float = 0.0
    loss: _py_int = 0

    def encode(self):
        writer = _Writer(272)
        _write_Ros2Dsr_msgs2SrvSetRtControlOutput_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 16, 272)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvSetRtControlOutput_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 16, 272))
        value = _read_Ros2Dsr_msgs2SrvSetRtControlOutput_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvSetRtControlOutput_Request = Ros2Dsr_msgs2SrvSetRtControlOutput_Request


def _write_Ros2Dsr_msgs2SrvSetRtControlOutput_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvSetRtControlOutput_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.version
    _write_text(writer, _part0, 256)
    _part1 = value.period
    writer.f64(_part1)
    _part2 = value.loss
    writer.integer(_part2, 4, True)
    if not 16 <= len(writer.data) - _start <= 272:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvSetRtControlOutput_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvSetRtControlOutput_Request()
    value.version = _read_text(reader, 256)
    value.period = reader.f64()
    value.loss = reader.integer(4, True)
    if not 16 <= reader.position - _start <= 272:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvSetRtControlOutput_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/SetRtControlOutput_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_25049366402ac5e192f2190b80e4576126929d8375fd1efefdc50154f473305b"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvSetRtControlOutput_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvSetRtControlOutput_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvSetRtControlOutput_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvSetRtControlOutput_Response = Ros2Dsr_msgs2SrvSetRtControlOutput_Response


def _write_Ros2Dsr_msgs2SrvSetRtControlOutput_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvSetRtControlOutput_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvSetRtControlOutput_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvSetRtControlOutput_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvSetSafeStopResetType_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/SetSafeStopResetType_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_4ab1dff4c9864a2e66d6c4ebd64032504098ca191284d027bc8021668412e7f3"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    reset_type: _py_int = 0

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvSetSafeStopResetType_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvSetSafeStopResetType_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvSetSafeStopResetType_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvSetSafeStopResetType_Request = Ros2Dsr_msgs2SrvSetSafeStopResetType_Request


def _write_Ros2Dsr_msgs2SrvSetSafeStopResetType_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvSetSafeStopResetType_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.reset_type
    writer.integer(_part0, 1, True)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvSetSafeStopResetType_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvSetSafeStopResetType_Request()
    value.reset_type = reader.integer(1, True)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvSetSafeStopResetType_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/SetSafeStopResetType_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_d1b868c2e694688a6bad4d4a93ae4032a650a0f99ae3cffeac1bfed3336762ae"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvSetSafeStopResetType_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvSetSafeStopResetType_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvSetSafeStopResetType_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvSetSafeStopResetType_Response = Ros2Dsr_msgs2SrvSetSafeStopResetType_Response


def _write_Ros2Dsr_msgs2SrvSetSafeStopResetType_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvSetSafeStopResetType_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvSetSafeStopResetType_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvSetSafeStopResetType_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvSetSafetyMode_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/SetSafetyMode_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_ea5c506bc7bcd868d8547643b82f902a595954f7487216e57b47491998e80713"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 2
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 2
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 2
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    safety_mode: _py_int = 0
    safety_event: _py_int = 0

    def encode(self):
        writer = _Writer(2)
        _write_Ros2Dsr_msgs2SrvSetSafetyMode_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 2, 2)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvSetSafetyMode_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 2, 2))
        value = _read_Ros2Dsr_msgs2SrvSetSafetyMode_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvSetSafetyMode_Request = Ros2Dsr_msgs2SrvSetSafetyMode_Request


def _write_Ros2Dsr_msgs2SrvSetSafetyMode_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvSetSafetyMode_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.safety_mode
    writer.integer(_part0, 1, True)
    _part1 = value.safety_event
    writer.integer(_part1, 1, True)
    if not 2 <= len(writer.data) - _start <= 2:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvSetSafetyMode_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvSetSafetyMode_Request()
    value.safety_mode = reader.integer(1, True)
    value.safety_event = reader.integer(1, True)
    if not 2 <= reader.position - _start <= 2:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvSetSafetyMode_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/SetSafetyMode_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_d7ce2c604f4a7abeccbf4514a05fe8abbcbdddcc047f4838d0fcc792bb5414b6"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvSetSafetyMode_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvSetSafetyMode_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvSetSafetyMode_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvSetSafetyMode_Response = Ros2Dsr_msgs2SrvSetSafetyMode_Response


def _write_Ros2Dsr_msgs2SrvSetSafetyMode_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvSetSafetyMode_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvSetSafetyMode_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvSetSafetyMode_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvSetSingularHandlingForce_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/SetSingularHandlingForce_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_785b7a837bf13aa7f6f7178818d470b970253761b389d2e5526a77090c765d17"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    mode: _py_int = 0

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvSetSingularHandlingForce_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvSetSingularHandlingForce_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvSetSingularHandlingForce_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvSetSingularHandlingForce_Request = Ros2Dsr_msgs2SrvSetSingularHandlingForce_Request


def _write_Ros2Dsr_msgs2SrvSetSingularHandlingForce_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvSetSingularHandlingForce_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.mode
    writer.integer(_part0, 1, True)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvSetSingularHandlingForce_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvSetSingularHandlingForce_Request()
    value.mode = reader.integer(1, True)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvSetSingularHandlingForce_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/SetSingularHandlingForce_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_5d0197a02dc22035522bdde1791a6e06ce31be284cb75d8d1edcbd97d382aa04"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvSetSingularHandlingForce_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvSetSingularHandlingForce_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvSetSingularHandlingForce_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvSetSingularHandlingForce_Response = Ros2Dsr_msgs2SrvSetSingularHandlingForce_Response


def _write_Ros2Dsr_msgs2SrvSetSingularHandlingForce_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvSetSingularHandlingForce_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvSetSingularHandlingForce_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvSetSingularHandlingForce_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvSetSingularityHandling_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/SetSingularityHandling_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_714198c67734535e609af75c076ccc5eaef14996ab2f6dc41fac5da7af168f10"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    mode: _py_int = 0

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvSetSingularityHandling_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvSetSingularityHandling_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvSetSingularityHandling_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvSetSingularityHandling_Request = Ros2Dsr_msgs2SrvSetSingularityHandling_Request


def _write_Ros2Dsr_msgs2SrvSetSingularityHandling_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvSetSingularityHandling_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.mode
    writer.integer(_part0, 1, True)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvSetSingularityHandling_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvSetSingularityHandling_Request()
    value.mode = reader.integer(1, True)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvSetSingularityHandling_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/SetSingularityHandling_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_2c1eb60c47dedf7a166dc51366a9748e21d2a64603591c9698a5c75bcfa0fd6b"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvSetSingularityHandling_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvSetSingularityHandling_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvSetSingularityHandling_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvSetSingularityHandling_Response = Ros2Dsr_msgs2SrvSetSingularityHandling_Response


def _write_Ros2Dsr_msgs2SrvSetSingularityHandling_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvSetSingularityHandling_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvSetSingularityHandling_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvSetSingularityHandling_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvSetStiffnessx_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/SetStiffnessx_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_e173ca626019669404706278ab035396e77f684b17181b7e181a8a73e7ec5101"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 57
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 57
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 57
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    stx: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    ref: _py_int = 0
    time: _py_float = 0.0

    def encode(self):
        writer = _Writer(57)
        _write_Ros2Dsr_msgs2SrvSetStiffnessx_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 57, 57)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvSetStiffnessx_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 57, 57))
        value = _read_Ros2Dsr_msgs2SrvSetStiffnessx_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvSetStiffnessx_Request = Ros2Dsr_msgs2SrvSetStiffnessx_Request


def _write_Ros2Dsr_msgs2SrvSetStiffnessx_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvSetStiffnessx_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.stx
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count0):
        _element = _part0[_index]
        writer.f64(_element)
    _part1 = value.ref
    writer.integer(_part1, 1, True)
    _part2 = value.time
    writer.f64(_part2)
    if not 57 <= len(writer.data) - _start <= 57:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvSetStiffnessx_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvSetStiffnessx_Request()
    value.stx = [reader.f64() for _ in range(6)]
    value.ref = reader.integer(1, True)
    value.time = reader.f64()
    if not 57 <= reader.position - _start <= 57:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvSetStiffnessx_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/SetStiffnessx_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_9f7b37d22a5d4cfd34e92df02aa3ef3bdd78e965877b30889cdbd85ad81b1f63"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvSetStiffnessx_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvSetStiffnessx_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvSetStiffnessx_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvSetStiffnessx_Response = Ros2Dsr_msgs2SrvSetStiffnessx_Response


def _write_Ros2Dsr_msgs2SrvSetStiffnessx_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvSetStiffnessx_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvSetStiffnessx_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvSetStiffnessx_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvSetToolDigitalOutput_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/SetToolDigitalOutput_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_fdc298f88b15ff1e7f9b99425f8909e584ffec665f5fdf49d0559aa4f1923675"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 2
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 2
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 2
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    index: _py_int = 0
    value: _py_int = 0

    def encode(self):
        writer = _Writer(2)
        _write_Ros2Dsr_msgs2SrvSetToolDigitalOutput_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 2, 2)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvSetToolDigitalOutput_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 2, 2))
        value = _read_Ros2Dsr_msgs2SrvSetToolDigitalOutput_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvSetToolDigitalOutput_Request = Ros2Dsr_msgs2SrvSetToolDigitalOutput_Request


def _write_Ros2Dsr_msgs2SrvSetToolDigitalOutput_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvSetToolDigitalOutput_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.index
    writer.integer(_part0, 1, True)
    _part1 = value.value
    writer.integer(_part1, 1, True)
    if not 2 <= len(writer.data) - _start <= 2:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvSetToolDigitalOutput_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvSetToolDigitalOutput_Request()
    value.index = reader.integer(1, True)
    value.value = reader.integer(1, True)
    if not 2 <= reader.position - _start <= 2:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvSetToolDigitalOutput_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/SetToolDigitalOutput_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_6dd380084f46879e224a01e8cb135cfa7909d7dd29c0f953fce3533115e0fb5c"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvSetToolDigitalOutput_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvSetToolDigitalOutput_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvSetToolDigitalOutput_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvSetToolDigitalOutput_Response = Ros2Dsr_msgs2SrvSetToolDigitalOutput_Response


def _write_Ros2Dsr_msgs2SrvSetToolDigitalOutput_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvSetToolDigitalOutput_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvSetToolDigitalOutput_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvSetToolDigitalOutput_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvSetToolShape_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/SetToolShape_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_18dece524fe8fe008a1ce848629aabcc4a91bb33f0c0b75a50c77464da886679"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    name: _py_str = ""

    def encode(self):
        writer = _Writer(260)
        _write_Ros2Dsr_msgs2SrvSetToolShape_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 260)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvSetToolShape_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 4, 260))
        value = _read_Ros2Dsr_msgs2SrvSetToolShape_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvSetToolShape_Request = Ros2Dsr_msgs2SrvSetToolShape_Request


def _write_Ros2Dsr_msgs2SrvSetToolShape_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvSetToolShape_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.name
    _write_text(writer, _part0, 256)
    if not 4 <= len(writer.data) - _start <= 260:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvSetToolShape_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvSetToolShape_Request()
    value.name = _read_text(reader, 256)
    if not 4 <= reader.position - _start <= 260:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvSetToolShape_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/SetToolShape_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_0cc4521218ab5151885efd7d818d63c3a80e792552282a776d9595ea3e220739"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvSetToolShape_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvSetToolShape_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvSetToolShape_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvSetToolShape_Response = Ros2Dsr_msgs2SrvSetToolShape_Response


def _write_Ros2Dsr_msgs2SrvSetToolShape_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvSetToolShape_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvSetToolShape_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvSetToolShape_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvSetUserCartCoord1_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/SetUserCartCoord1_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_497558c7b91c9f6a79afc784b1026e28a632e8234b178b96754eaebcfa4d01f2"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 49
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 49
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 49
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    pos: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    ref: _py_int = 0

    def encode(self):
        writer = _Writer(49)
        _write_Ros2Dsr_msgs2SrvSetUserCartCoord1_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 49, 49)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvSetUserCartCoord1_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 49, 49))
        value = _read_Ros2Dsr_msgs2SrvSetUserCartCoord1_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvSetUserCartCoord1_Request = Ros2Dsr_msgs2SrvSetUserCartCoord1_Request


def _write_Ros2Dsr_msgs2SrvSetUserCartCoord1_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvSetUserCartCoord1_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.pos
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count0):
        _element = _part0[_index]
        writer.f64(_element)
    _part1 = value.ref
    writer.integer(_part1, 1, True)
    if not 49 <= len(writer.data) - _start <= 49:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvSetUserCartCoord1_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvSetUserCartCoord1_Request()
    value.pos = [reader.f64() for _ in range(6)]
    value.ref = reader.integer(1, True)
    if not 49 <= reader.position - _start <= 49:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvSetUserCartCoord1_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/SetUserCartCoord1_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_6ccfd1c14bc6f8be1efa6fae4c6b33373fab3dc76976891e07e2340bc984c4cf"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 2
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 2
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 2
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    id: _py_int = 0
    success: _py_bool = False

    def encode(self):
        writer = _Writer(2)
        _write_Ros2Dsr_msgs2SrvSetUserCartCoord1_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 2, 2)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvSetUserCartCoord1_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 2, 2))
        value = _read_Ros2Dsr_msgs2SrvSetUserCartCoord1_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvSetUserCartCoord1_Response = Ros2Dsr_msgs2SrvSetUserCartCoord1_Response


def _write_Ros2Dsr_msgs2SrvSetUserCartCoord1_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvSetUserCartCoord1_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.id
    writer.integer(_part0, 1, True)
    _part1 = value.success
    if type(_part1) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part1), 1)
    if not 2 <= len(writer.data) - _start <= 2:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvSetUserCartCoord1_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvSetUserCartCoord1_Response()
    value.id = reader.integer(1, True)
    value.success = _read_bool(reader)
    if not 2 <= reader.position - _start <= 2:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvSetUserCartCoord2_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/SetUserCartCoord2_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_8ebe04baec0078b4f501712b9777f2f25f71cdb668e45aaadac9fd1f08c4d817"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 193
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 193
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 193
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    x1: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    x2: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    x3: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    pos: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    ref: _py_int = 0

    def encode(self):
        writer = _Writer(193)
        _write_Ros2Dsr_msgs2SrvSetUserCartCoord2_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 193, 193)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvSetUserCartCoord2_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 193, 193))
        value = _read_Ros2Dsr_msgs2SrvSetUserCartCoord2_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvSetUserCartCoord2_Request = Ros2Dsr_msgs2SrvSetUserCartCoord2_Request


def _write_Ros2Dsr_msgs2SrvSetUserCartCoord2_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvSetUserCartCoord2_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.x1
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count0):
        _element = _part0[_index]
        writer.f64(_element)
    _part1 = value.x2
    if type(_part1) not in (list, tuple):
        raise TypeError("array value required")
    _count1 = len(_part1)
    if _count1 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count1):
        _element = _part1[_index]
        writer.f64(_element)
    _part2 = value.x3
    if type(_part2) not in (list, tuple):
        raise TypeError("array value required")
    _count2 = len(_part2)
    if _count2 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count2):
        _element = _part2[_index]
        writer.f64(_element)
    _part3 = value.pos
    if type(_part3) not in (list, tuple):
        raise TypeError("array value required")
    _count3 = len(_part3)
    if _count3 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count3):
        _element = _part3[_index]
        writer.f64(_element)
    _part4 = value.ref
    writer.integer(_part4, 1, True)
    if not 193 <= len(writer.data) - _start <= 193:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvSetUserCartCoord2_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvSetUserCartCoord2_Request()
    value.x1 = [reader.f64() for _ in range(6)]
    value.x2 = [reader.f64() for _ in range(6)]
    value.x3 = [reader.f64() for _ in range(6)]
    value.pos = [reader.f64() for _ in range(6)]
    value.ref = reader.integer(1, True)
    if not 193 <= reader.position - _start <= 193:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvSetUserCartCoord2_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/SetUserCartCoord2_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_a607f151e7acf622b233805382b69ea22ab0b4c86067c06bcc2673e1f2a58b8f"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 2
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 2
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 2
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    id: _py_int = 0
    success: _py_bool = False

    def encode(self):
        writer = _Writer(2)
        _write_Ros2Dsr_msgs2SrvSetUserCartCoord2_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 2, 2)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvSetUserCartCoord2_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 2, 2))
        value = _read_Ros2Dsr_msgs2SrvSetUserCartCoord2_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvSetUserCartCoord2_Response = Ros2Dsr_msgs2SrvSetUserCartCoord2_Response


def _write_Ros2Dsr_msgs2SrvSetUserCartCoord2_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvSetUserCartCoord2_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.id
    writer.integer(_part0, 1, True)
    _part1 = value.success
    if type(_part1) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part1), 1)
    if not 2 <= len(writer.data) - _start <= 2:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvSetUserCartCoord2_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvSetUserCartCoord2_Response()
    value.id = reader.integer(1, True)
    value.success = _read_bool(reader)
    if not 2 <= reader.position - _start <= 2:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvSetUserCartCoord3_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/SetUserCartCoord3_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_251d326c5d179d4324c7e178e44a5857335efcbef19c0ede3a38e6b35bd03504"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 97
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 97
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 97
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    u1: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(3)])
    v1: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(3)])
    pos: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    ref: _py_int = 0

    def encode(self):
        writer = _Writer(97)
        _write_Ros2Dsr_msgs2SrvSetUserCartCoord3_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 97, 97)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvSetUserCartCoord3_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 97, 97))
        value = _read_Ros2Dsr_msgs2SrvSetUserCartCoord3_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvSetUserCartCoord3_Request = Ros2Dsr_msgs2SrvSetUserCartCoord3_Request


def _write_Ros2Dsr_msgs2SrvSetUserCartCoord3_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvSetUserCartCoord3_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.u1
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 != 3:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count0):
        _element = _part0[_index]
        writer.f64(_element)
    _part1 = value.v1
    if type(_part1) not in (list, tuple):
        raise TypeError("array value required")
    _count1 = len(_part1)
    if _count1 != 3:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count1):
        _element = _part1[_index]
        writer.f64(_element)
    _part2 = value.pos
    if type(_part2) not in (list, tuple):
        raise TypeError("array value required")
    _count2 = len(_part2)
    if _count2 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count2):
        _element = _part2[_index]
        writer.f64(_element)
    _part3 = value.ref
    writer.integer(_part3, 1, True)
    if not 97 <= len(writer.data) - _start <= 97:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvSetUserCartCoord3_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvSetUserCartCoord3_Request()
    value.u1 = [reader.f64() for _ in range(3)]
    value.v1 = [reader.f64() for _ in range(3)]
    value.pos = [reader.f64() for _ in range(6)]
    value.ref = reader.integer(1, True)
    if not 97 <= reader.position - _start <= 97:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvSetUserCartCoord3_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/SetUserCartCoord3_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_a4c23d5c3c9e3b8101991250879779acbbe592d2b9bb62b8b8629230eebfdd39"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 2
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 2
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 2
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    id: _py_int = 0
    success: _py_bool = False

    def encode(self):
        writer = _Writer(2)
        _write_Ros2Dsr_msgs2SrvSetUserCartCoord3_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 2, 2)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvSetUserCartCoord3_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 2, 2))
        value = _read_Ros2Dsr_msgs2SrvSetUserCartCoord3_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvSetUserCartCoord3_Response = Ros2Dsr_msgs2SrvSetUserCartCoord3_Response


def _write_Ros2Dsr_msgs2SrvSetUserCartCoord3_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvSetUserCartCoord3_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.id
    writer.integer(_part0, 1, True)
    _part1 = value.success
    if type(_part1) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part1), 1)
    if not 2 <= len(writer.data) - _start <= 2:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvSetUserCartCoord3_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvSetUserCartCoord3_Response()
    value.id = reader.integer(1, True)
    value.success = _read_bool(reader)
    if not 2 <= reader.position - _start <= 2:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvSetVeljRt_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/SetVeljRt_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_8e666417ee1ca845dc12a0c18e5a538070717ca943fe982b42af7eb66f801cf3"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 48
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 48
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 48
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    vel: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])

    def encode(self):
        writer = _Writer(48)
        _write_Ros2Dsr_msgs2SrvSetVeljRt_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 48, 48)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvSetVeljRt_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 48, 48))
        value = _read_Ros2Dsr_msgs2SrvSetVeljRt_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvSetVeljRt_Request = Ros2Dsr_msgs2SrvSetVeljRt_Request


def _write_Ros2Dsr_msgs2SrvSetVeljRt_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvSetVeljRt_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.vel
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count0):
        _element = _part0[_index]
        writer.f64(_element)
    if not 48 <= len(writer.data) - _start <= 48:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvSetVeljRt_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvSetVeljRt_Request()
    value.vel = [reader.f64() for _ in range(6)]
    if not 48 <= reader.position - _start <= 48:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvSetVeljRt_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/SetVeljRt_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_6b678e677badd0a4723fd1608058a72548fc7c446f48809552bccc9e890ec6bd"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvSetVeljRt_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvSetVeljRt_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvSetVeljRt_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvSetVeljRt_Response = Ros2Dsr_msgs2SrvSetVeljRt_Response


def _write_Ros2Dsr_msgs2SrvSetVeljRt_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvSetVeljRt_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvSetVeljRt_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvSetVeljRt_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvSetVelxRt_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/SetVelxRt_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_f9b3017cd73796a71ea9bacd871af523b391d9e5b06f1b050cfbeab163c83b9e"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 16
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 16
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 16
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    trans: _py_float = 0.0
    rotation: _py_float = 0.0

    def encode(self):
        writer = _Writer(16)
        _write_Ros2Dsr_msgs2SrvSetVelxRt_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 16, 16)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvSetVelxRt_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 16, 16))
        value = _read_Ros2Dsr_msgs2SrvSetVelxRt_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvSetVelxRt_Request = Ros2Dsr_msgs2SrvSetVelxRt_Request


def _write_Ros2Dsr_msgs2SrvSetVelxRt_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvSetVelxRt_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.trans
    writer.f64(_part0)
    _part1 = value.rotation
    writer.f64(_part1)
    if not 16 <= len(writer.data) - _start <= 16:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvSetVelxRt_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvSetVelxRt_Request()
    value.trans = reader.f64()
    value.rotation = reader.f64()
    if not 16 <= reader.position - _start <= 16:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvSetVelxRt_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/SetVelxRt_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_973acd53cbb327287c306ec5a54b7b756e031a6fb8acfc836852fdf19dc31f9d"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvSetVelxRt_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvSetVelxRt_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvSetVelxRt_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvSetVelxRt_Response = Ros2Dsr_msgs2SrvSetVelxRt_Response


def _write_Ros2Dsr_msgs2SrvSetVelxRt_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvSetVelxRt_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvSetVelxRt_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvSetVelxRt_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvStartRtControl_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/StartRtControl_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_a828a2ecc839bec2c3521779ed7927db6c7c47b48aa99d9ad6328e741a85e5b1"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros2Dsr_msgs2SrvStartRtControl_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvStartRtControl_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros2Dsr_msgs2SrvStartRtControl_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvStartRtControl_Request = Ros2Dsr_msgs2SrvStartRtControl_Request


def _write_Ros2Dsr_msgs2SrvStartRtControl_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvStartRtControl_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros2Dsr_msgs2SrvStartRtControl_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvStartRtControl_Request()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvStartRtControl_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/StartRtControl_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_ac6ba957fb8ea8ec816adbf89dfd041181d8fc4d7d6e399aae04ee6efd2c9533"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvStartRtControl_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvStartRtControl_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvStartRtControl_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvStartRtControl_Response = Ros2Dsr_msgs2SrvStartRtControl_Response


def _write_Ros2Dsr_msgs2SrvStartRtControl_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvStartRtControl_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvStartRtControl_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvStartRtControl_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvStopRtControl_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/StopRtControl_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_0f2a7b5fc3a8dcb9413a53410d3291d5148add2e64bf7654ed41ff2f626b7ef1"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros2Dsr_msgs2SrvStopRtControl_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvStopRtControl_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros2Dsr_msgs2SrvStopRtControl_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvStopRtControl_Request = Ros2Dsr_msgs2SrvStopRtControl_Request


def _write_Ros2Dsr_msgs2SrvStopRtControl_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvStopRtControl_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros2Dsr_msgs2SrvStopRtControl_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvStopRtControl_Request()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvStopRtControl_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/StopRtControl_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_a8754817156c23964f102f68eab7e19c603c8092334a239c669d4fce23cfcd89"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvStopRtControl_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvStopRtControl_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvStopRtControl_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvStopRtControl_Response = Ros2Dsr_msgs2SrvStopRtControl_Response


def _write_Ros2Dsr_msgs2SrvStopRtControl_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvStopRtControl_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvStopRtControl_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvStopRtControl_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvTaskComplianceCtrl_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/TaskComplianceCtrl_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_e1c8abe0594c9a4de2a8fa207cac4b898dad5c3148e4f5bd965a4acb1b0663e0"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 57
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 57
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 57
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    stx: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    ref: _py_int = 0
    time: _py_float = 0.0

    def encode(self):
        writer = _Writer(57)
        _write_Ros2Dsr_msgs2SrvTaskComplianceCtrl_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 57, 57)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvTaskComplianceCtrl_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 57, 57))
        value = _read_Ros2Dsr_msgs2SrvTaskComplianceCtrl_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvTaskComplianceCtrl_Request = Ros2Dsr_msgs2SrvTaskComplianceCtrl_Request


def _write_Ros2Dsr_msgs2SrvTaskComplianceCtrl_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvTaskComplianceCtrl_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.stx
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count0):
        _element = _part0[_index]
        writer.f64(_element)
    _part1 = value.ref
    writer.integer(_part1, 1, True)
    _part2 = value.time
    writer.f64(_part2)
    if not 57 <= len(writer.data) - _start <= 57:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvTaskComplianceCtrl_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvTaskComplianceCtrl_Request()
    value.stx = [reader.f64() for _ in range(6)]
    value.ref = reader.integer(1, True)
    value.time = reader.f64()
    if not 57 <= reader.position - _start <= 57:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvTaskComplianceCtrl_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/TaskComplianceCtrl_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_031919d7369a7e23da6eed0754cf7228ad0c6694b84651454d40dec76aff35bb"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvTaskComplianceCtrl_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvTaskComplianceCtrl_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvTaskComplianceCtrl_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvTaskComplianceCtrl_Response = Ros2Dsr_msgs2SrvTaskComplianceCtrl_Response


def _write_Ros2Dsr_msgs2SrvTaskComplianceCtrl_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvTaskComplianceCtrl_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvTaskComplianceCtrl_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvTaskComplianceCtrl_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvTrans_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/Trans_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_473706407758f61ca27a10aa6090859f97ffae55ad65abfd3dbf7a2bf31230f7"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 98
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 98
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 98
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    pos: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    delta: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    ref: _py_int = 0
    ref_out: _py_int = 0

    def encode(self):
        writer = _Writer(98)
        _write_Ros2Dsr_msgs2SrvTrans_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 98, 98)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvTrans_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 98, 98))
        value = _read_Ros2Dsr_msgs2SrvTrans_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvTrans_Request = Ros2Dsr_msgs2SrvTrans_Request


def _write_Ros2Dsr_msgs2SrvTrans_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvTrans_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.pos
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count0):
        _element = _part0[_index]
        writer.f64(_element)
    _part1 = value.delta
    if type(_part1) not in (list, tuple):
        raise TypeError("array value required")
    _count1 = len(_part1)
    if _count1 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count1):
        _element = _part1[_index]
        writer.f64(_element)
    _part2 = value.ref
    writer.integer(_part2, 1, True)
    _part3 = value.ref_out
    writer.integer(_part3, 1, True)
    if not 98 <= len(writer.data) - _start <= 98:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvTrans_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvTrans_Request()
    value.pos = [reader.f64() for _ in range(6)]
    value.delta = [reader.f64() for _ in range(6)]
    value.ref = reader.integer(1, True)
    value.ref_out = reader.integer(1, True)
    if not 98 <= reader.position - _start <= 98:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvTrans_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/Trans_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_0900d0c0cda3b1b164384313039be345f26d7cebfe3918ed6d3d10eb6c5a2913"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 49
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 49
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 49
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    trans_pos: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    success: _py_bool = False

    def encode(self):
        writer = _Writer(49)
        _write_Ros2Dsr_msgs2SrvTrans_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 49, 49)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvTrans_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 49, 49))
        value = _read_Ros2Dsr_msgs2SrvTrans_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvTrans_Response = Ros2Dsr_msgs2SrvTrans_Response


def _write_Ros2Dsr_msgs2SrvTrans_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvTrans_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.trans_pos
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count0):
        _element = _part0[_index]
        writer.f64(_element)
    _part1 = value.success
    if type(_part1) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part1), 1)
    if not 49 <= len(writer.data) - _start <= 49:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvTrans_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvTrans_Response()
    value.trans_pos = [reader.f64() for _ in range(6)]
    value.success = _read_bool(reader)
    if not 49 <= reader.position - _start <= 49:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvWriteDataRt_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/WriteDataRt_Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_6936ab81238d05ed11cd9a372c08723a506f424bef7682cbd627295bd5b31f41"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 152
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 152
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 152
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    external_force_torque: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    external_digital_input: _py_int = 0
    external_digital_output: _py_int = 0
    external_analog_input: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    external_analog_output: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])

    def encode(self):
        writer = _Writer(152)
        _write_Ros2Dsr_msgs2SrvWriteDataRt_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 152, 152)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvWriteDataRt_Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 152, 152))
        value = _read_Ros2Dsr_msgs2SrvWriteDataRt_Request(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvWriteDataRt_Request = Ros2Dsr_msgs2SrvWriteDataRt_Request


def _write_Ros2Dsr_msgs2SrvWriteDataRt_Request(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvWriteDataRt_Request:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.external_force_torque
    if type(_part0) not in (list, tuple):
        raise TypeError("array value required")
    _count0 = len(_part0)
    if _count0 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count0):
        _element = _part0[_index]
        writer.f64(_element)
    _part1 = value.external_digital_input
    writer.integer(_part1, 4, True)
    _part2 = value.external_digital_output
    writer.integer(_part2, 4, True)
    _part3 = value.external_analog_input
    if type(_part3) not in (list, tuple):
        raise TypeError("array value required")
    _count3 = len(_part3)
    if _count3 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count3):
        _element = _part3[_index]
        writer.f64(_element)
    _part4 = value.external_analog_output
    if type(_part4) not in (list, tuple):
        raise TypeError("array value required")
    _count4 = len(_part4)
    if _count4 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count4):
        _element = _part4[_index]
        writer.f64(_element)
    if not 152 <= len(writer.data) - _start <= 152:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvWriteDataRt_Request(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvWriteDataRt_Request()
    value.external_force_torque = [reader.f64() for _ in range(6)]
    value.external_digital_input = reader.integer(4, True)
    value.external_digital_output = reader.integer(4, True)
    value.external_analog_input = [reader.f64() for _ in range(6)]
    value.external_analog_output = [reader.f64() for _ in range(6)]
    if not 152 <= reader.position - _start <= 152:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros2Dsr_msgs2SrvWriteDataRt_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs2/srv/WriteDataRt_Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_a0c357cdc8525ce2c13210c5662fde3ff2bf89ac253a3ade7c0524af4879748e"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Dsr_msgs2SrvWriteDataRt_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Dsr_msgs2SrvWriteDataRt_Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Dsr_msgs2SrvWriteDataRt_Response(reader)
        reader.end()
        return value


_record_Ros2Dsr_msgs2SrvWriteDataRt_Response = Ros2Dsr_msgs2SrvWriteDataRt_Response


def _write_Ros2Dsr_msgs2SrvWriteDataRt_Response(writer, value):
    if type(value) is not Ros2Dsr_msgs2SrvWriteDataRt_Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros2Dsr_msgs2SrvWriteDataRt_Response(reader):
    _start = reader.position
    value = Ros2Dsr_msgs2SrvWriteDataRt_Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value
