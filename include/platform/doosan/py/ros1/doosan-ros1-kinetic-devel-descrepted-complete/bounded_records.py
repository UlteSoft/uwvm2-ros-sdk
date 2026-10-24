# @file bounded_records.py
# @brief Complete doosan values and adapters for the selected original interface catalog.
# @details Retain original field order, scalar widths, array capacities, string bounds, constants and declared
# defaults. Pure value access and canonical codecs create no native ROS allocation or resource grant. Transport
# roles require the separately admitted SDK owner.
# @see share/platform/doosan/domains/doosan-ros1-kinetic-devel-descrepted-complete.ir.json
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
class Ros1Dsr_msgsAlignAxis1Request:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/AlignAxis1Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_708643fa3a09d74f06ee9ba327c3fc05fb60dd73447ea95e43d9d96f7c5b6e54"
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
        _write_Ros1Dsr_msgsAlignAxis1Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 170, 170)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsAlignAxis1Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 170, 170))
        value = _read_Ros1Dsr_msgsAlignAxis1Request(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsAlignAxis1Request = Ros1Dsr_msgsAlignAxis1Request


def _write_Ros1Dsr_msgsAlignAxis1Request(writer, value):
    if type(value) is not Ros1Dsr_msgsAlignAxis1Request:
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


def _read_Ros1Dsr_msgsAlignAxis1Request(reader):
    _start = reader.position
    value = Ros1Dsr_msgsAlignAxis1Request()
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
class Ros1Dsr_msgsAlignAxis1Response:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/AlignAxis1Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_dda31d7d89f3f8b2bb3c68c0d685a30ccfc32a9c363ea5399a1777da80d2f33d"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsAlignAxis1Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsAlignAxis1Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsAlignAxis1Response(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsAlignAxis1Response = Ros1Dsr_msgsAlignAxis1Response


def _write_Ros1Dsr_msgsAlignAxis1Response(writer, value):
    if type(value) is not Ros1Dsr_msgsAlignAxis1Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsAlignAxis1Response(reader):
    _start = reader.position
    value = Ros1Dsr_msgsAlignAxis1Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsAlignAxis2Request:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/AlignAxis2Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_3e1c136bdfe0d97015a19c2fffc6b40460933a3ada556e57142d6309f99fe1ea"
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
        _write_Ros1Dsr_msgsAlignAxis2Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 50, 50)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsAlignAxis2Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 50, 50))
        value = _read_Ros1Dsr_msgsAlignAxis2Request(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsAlignAxis2Request = Ros1Dsr_msgsAlignAxis2Request


def _write_Ros1Dsr_msgsAlignAxis2Request(writer, value):
    if type(value) is not Ros1Dsr_msgsAlignAxis2Request:
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


def _read_Ros1Dsr_msgsAlignAxis2Request(reader):
    _start = reader.position
    value = Ros1Dsr_msgsAlignAxis2Request()
    value.target_vect = [reader.f64() for _ in range(3)]
    value.source_vect = [reader.f64() for _ in range(3)]
    value.axis = reader.integer(1, True)
    value.ref = reader.integer(1, True)
    if not 50 <= reader.position - _start <= 50:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsAlignAxis2Response:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/AlignAxis2Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_79618c7ede73decd7a8cb4f0cc013b95c463ca37126d49c0b54e17ad17224ade"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsAlignAxis2Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsAlignAxis2Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsAlignAxis2Response(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsAlignAxis2Response = Ros1Dsr_msgsAlignAxis2Response


def _write_Ros1Dsr_msgsAlignAxis2Response(writer, value):
    if type(value) is not Ros1Dsr_msgsAlignAxis2Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsAlignAxis2Response(reader):
    _start = reader.position
    value = Ros1Dsr_msgsAlignAxis2Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsAlterMotionRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/AlterMotionRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_2230e6b8bc09c902ab6ba9ed4e9fdb59a9e8d691cf614599e5f96fd8d2820787"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 48
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 48
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 48
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    pos: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])

    def encode(self):
        writer = _Writer(48)
        _write_Ros1Dsr_msgsAlterMotionRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 48, 48)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsAlterMotionRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 48, 48))
        value = _read_Ros1Dsr_msgsAlterMotionRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsAlterMotionRequest = Ros1Dsr_msgsAlterMotionRequest


def _write_Ros1Dsr_msgsAlterMotionRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsAlterMotionRequest:
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


def _read_Ros1Dsr_msgsAlterMotionRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsAlterMotionRequest()
    value.pos = [reader.f64() for _ in range(6)]
    if not 48 <= reader.position - _start <= 48:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsAlterMotionResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/AlterMotionResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_d27db25bae1cbb78fedfb24b96acbe023949948766ed856ad91e942fe367f716"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsAlterMotionResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsAlterMotionResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsAlterMotionResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsAlterMotionResponse = Ros1Dsr_msgsAlterMotionResponse


def _write_Ros1Dsr_msgsAlterMotionResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsAlterMotionResponse:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsAlterMotionResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsAlterMotionResponse()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsCalcCoordRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/CalcCoordRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_7124a7312fd476b49ef2fd9fb468ea19ce7ae644da5c8fffb3ddfc67c175c70d"
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
        _write_Ros1Dsr_msgsCalcCoordRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 195, 195)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsCalcCoordRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 195, 195))
        value = _read_Ros1Dsr_msgsCalcCoordRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsCalcCoordRequest = Ros1Dsr_msgsCalcCoordRequest


def _write_Ros1Dsr_msgsCalcCoordRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsCalcCoordRequest:
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


def _read_Ros1Dsr_msgsCalcCoordRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsCalcCoordRequest()
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
class Ros1Dsr_msgsCalcCoordResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/CalcCoordResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_c34ef9bfe05948a853305174e1084443e5358bc5877c0dd5d05ba6655dc6d993"
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
        _write_Ros1Dsr_msgsCalcCoordResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 49, 49)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsCalcCoordResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 49, 49))
        value = _read_Ros1Dsr_msgsCalcCoordResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsCalcCoordResponse = Ros1Dsr_msgsCalcCoordResponse


def _write_Ros1Dsr_msgsCalcCoordResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsCalcCoordResponse:
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


def _read_Ros1Dsr_msgsCalcCoordResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsCalcCoordResponse()
    value.conv_posx = [reader.f64() for _ in range(6)]
    value.success = _read_bool(reader)
    if not 49 <= reader.position - _start <= 49:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsChangeOperationSpeedRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/ChangeOperationSpeedRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_8d8beb40ab8ebd7d0f69509832bc71ac9e460ec01bdecc41a82f4eab28017616"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    speed: _py_int = 0

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsChangeOperationSpeedRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsChangeOperationSpeedRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsChangeOperationSpeedRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsChangeOperationSpeedRequest = Ros1Dsr_msgsChangeOperationSpeedRequest


def _write_Ros1Dsr_msgsChangeOperationSpeedRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsChangeOperationSpeedRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.speed
    writer.integer(_part0, 1, True)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsChangeOperationSpeedRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsChangeOperationSpeedRequest()
    value.speed = reader.integer(1, True)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsChangeOperationSpeedResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/ChangeOperationSpeedResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_bf8b7e30e18d38f6dde9b02576151cb57c4789cef7b7ea6c56fc8581eafc08f6"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsChangeOperationSpeedResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsChangeOperationSpeedResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsChangeOperationSpeedResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsChangeOperationSpeedResponse = Ros1Dsr_msgsChangeOperationSpeedResponse


def _write_Ros1Dsr_msgsChangeOperationSpeedResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsChangeOperationSpeedResponse:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsChangeOperationSpeedResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsChangeOperationSpeedResponse()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsCheckForceConditionRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/CheckForceConditionRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_590694ea44b90bb2aa6fa1f903d129e2a58a33af58fe26c9f67f9b0272b34673"
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
        _write_Ros1Dsr_msgsCheckForceConditionRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 18, 18)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsCheckForceConditionRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 18, 18))
        value = _read_Ros1Dsr_msgsCheckForceConditionRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsCheckForceConditionRequest = Ros1Dsr_msgsCheckForceConditionRequest


def _write_Ros1Dsr_msgsCheckForceConditionRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsCheckForceConditionRequest:
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


def _read_Ros1Dsr_msgsCheckForceConditionRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsCheckForceConditionRequest()
    value.axis = reader.integer(1, True)
    value.min = reader.f64()
    value.max = reader.f64()
    value.ref = reader.integer(1, True)
    if not 18 <= reader.position - _start <= 18:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsCheckForceConditionResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/CheckForceConditionResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_6d0cb8413b824c1a469f77cd592946e67dd0a0c15d5945b0ea908c0e0e7a3270"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsCheckForceConditionResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsCheckForceConditionResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsCheckForceConditionResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsCheckForceConditionResponse = Ros1Dsr_msgsCheckForceConditionResponse


def _write_Ros1Dsr_msgsCheckForceConditionResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsCheckForceConditionResponse:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsCheckForceConditionResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsCheckForceConditionResponse()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsCheckMotionRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/CheckMotionRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_f38bee5e76ececdf4868a092e4ee673da6bcd95db9baacd504ef31017b94b7d5"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Dsr_msgsCheckMotionRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsCheckMotionRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Dsr_msgsCheckMotionRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsCheckMotionRequest = Ros1Dsr_msgsCheckMotionRequest


def _write_Ros1Dsr_msgsCheckMotionRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsCheckMotionRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros1Dsr_msgsCheckMotionRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsCheckMotionRequest()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsCheckMotionResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/CheckMotionResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_2e11dbf1b2a447dd3b6f302f3839b2383f6c3e0c0408c138cb7acb12062df480"
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
        _write_Ros1Dsr_msgsCheckMotionResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 2, 2)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsCheckMotionResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 2, 2))
        value = _read_Ros1Dsr_msgsCheckMotionResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsCheckMotionResponse = Ros1Dsr_msgsCheckMotionResponse


def _write_Ros1Dsr_msgsCheckMotionResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsCheckMotionResponse:
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


def _read_Ros1Dsr_msgsCheckMotionResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsCheckMotionResponse()
    value.status = reader.integer(1, True)
    value.success = _read_bool(reader)
    if not 2 <= reader.position - _start <= 2:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsCheckOrientationCondition1Request:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/CheckOrientationCondition1Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_048532f02d47e889e7299755886812a454c0457d4c70fda58bd090c959a52c6e"
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
        _write_Ros1Dsr_msgsCheckOrientationCondition1Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 99, 99)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsCheckOrientationCondition1Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 99, 99))
        value = _read_Ros1Dsr_msgsCheckOrientationCondition1Request(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsCheckOrientationCondition1Request = Ros1Dsr_msgsCheckOrientationCondition1Request


def _write_Ros1Dsr_msgsCheckOrientationCondition1Request(writer, value):
    if type(value) is not Ros1Dsr_msgsCheckOrientationCondition1Request:
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


def _read_Ros1Dsr_msgsCheckOrientationCondition1Request(reader):
    _start = reader.position
    value = Ros1Dsr_msgsCheckOrientationCondition1Request()
    value.axis = reader.integer(1, True)
    value.min = [reader.f64() for _ in range(6)]
    value.max = [reader.f64() for _ in range(6)]
    value.ref = reader.integer(1, True)
    value.mode = reader.integer(1, True)
    if not 99 <= reader.position - _start <= 99:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsCheckOrientationCondition1Response:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/CheckOrientationCondition1Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_4b8359166eedb70a505b0d1829168618088cbedada2bc5d6f7d9e9a5dfa79b32"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsCheckOrientationCondition1Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsCheckOrientationCondition1Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsCheckOrientationCondition1Response(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsCheckOrientationCondition1Response = Ros1Dsr_msgsCheckOrientationCondition1Response


def _write_Ros1Dsr_msgsCheckOrientationCondition1Response(writer, value):
    if type(value) is not Ros1Dsr_msgsCheckOrientationCondition1Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsCheckOrientationCondition1Response(reader):
    _start = reader.position
    value = Ros1Dsr_msgsCheckOrientationCondition1Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsCheckOrientationCondition2Request:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/CheckOrientationCondition2Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_42287a8e7cef2b93a1bd5778de6ae4ef4d1aa484dd0c74fcd29c660b400b6ff0"
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
        _write_Ros1Dsr_msgsCheckOrientationCondition2Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 67, 67)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsCheckOrientationCondition2Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 67, 67))
        value = _read_Ros1Dsr_msgsCheckOrientationCondition2Request(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsCheckOrientationCondition2Request = Ros1Dsr_msgsCheckOrientationCondition2Request


def _write_Ros1Dsr_msgsCheckOrientationCondition2Request(writer, value):
    if type(value) is not Ros1Dsr_msgsCheckOrientationCondition2Request:
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


def _read_Ros1Dsr_msgsCheckOrientationCondition2Request(reader):
    _start = reader.position
    value = Ros1Dsr_msgsCheckOrientationCondition2Request()
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
class Ros1Dsr_msgsCheckOrientationCondition2Response:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/CheckOrientationCondition2Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_334774329557c04594f02ee344f0af39d250c482c3f9c4b2dd5f275e87880e83"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsCheckOrientationCondition2Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsCheckOrientationCondition2Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsCheckOrientationCondition2Response(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsCheckOrientationCondition2Response = Ros1Dsr_msgsCheckOrientationCondition2Response


def _write_Ros1Dsr_msgsCheckOrientationCondition2Response(writer, value):
    if type(value) is not Ros1Dsr_msgsCheckOrientationCondition2Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsCheckOrientationCondition2Response(reader):
    _start = reader.position
    value = Ros1Dsr_msgsCheckOrientationCondition2Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsCheckPositionConditionRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/CheckPositionConditionRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_973c397ac52f4eba5f5956bd25c6552749d14ebd070ea659cea7601bf2bfdbeb"
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
        _write_Ros1Dsr_msgsCheckPositionConditionRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 67, 67)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsCheckPositionConditionRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 67, 67))
        value = _read_Ros1Dsr_msgsCheckPositionConditionRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsCheckPositionConditionRequest = Ros1Dsr_msgsCheckPositionConditionRequest


def _write_Ros1Dsr_msgsCheckPositionConditionRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsCheckPositionConditionRequest:
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


def _read_Ros1Dsr_msgsCheckPositionConditionRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsCheckPositionConditionRequest()
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
class Ros1Dsr_msgsCheckPositionConditionResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/CheckPositionConditionResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_e809f6231e9bea172a7c00c6d32bb553e97026a607a6070e6fa82d007c3bf94a"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsCheckPositionConditionResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsCheckPositionConditionResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsCheckPositionConditionResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsCheckPositionConditionResponse = Ros1Dsr_msgsCheckPositionConditionResponse


def _write_Ros1Dsr_msgsCheckPositionConditionResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsCheckPositionConditionResponse:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsCheckPositionConditionResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsCheckPositionConditionResponse()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsConfigCreateModbusRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/ConfigCreateModbusRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_67fe218ec3ea51f74df38d696c95b24f4f64dcdeb6652b618ec327133a1fc29f"
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
        _write_Ros1Dsr_msgsConfigCreateModbusRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 19, 531)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsConfigCreateModbusRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 19, 531))
        value = _read_Ros1Dsr_msgsConfigCreateModbusRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsConfigCreateModbusRequest = Ros1Dsr_msgsConfigCreateModbusRequest


def _write_Ros1Dsr_msgsConfigCreateModbusRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsConfigCreateModbusRequest:
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


def _read_Ros1Dsr_msgsConfigCreateModbusRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsConfigCreateModbusRequest()
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
class Ros1Dsr_msgsConfigCreateModbusResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/ConfigCreateModbusResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_13243e4aeefdebf38671fc24f7059daf3597cdebcbc1a6ffd315d3edab3dfc2f"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsConfigCreateModbusResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsConfigCreateModbusResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsConfigCreateModbusResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsConfigCreateModbusResponse = Ros1Dsr_msgsConfigCreateModbusResponse


def _write_Ros1Dsr_msgsConfigCreateModbusResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsConfigCreateModbusResponse:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsConfigCreateModbusResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsConfigCreateModbusResponse()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsConfigCreateTcpRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/ConfigCreateTcpRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_afd19140176d214b18610297e53a7606a78cefd366dc01bb6baf05d72795e744"
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
        _write_Ros1Dsr_msgsConfigCreateTcpRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 52, 308)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsConfigCreateTcpRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 52, 308))
        value = _read_Ros1Dsr_msgsConfigCreateTcpRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsConfigCreateTcpRequest = Ros1Dsr_msgsConfigCreateTcpRequest


def _write_Ros1Dsr_msgsConfigCreateTcpRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsConfigCreateTcpRequest:
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


def _read_Ros1Dsr_msgsConfigCreateTcpRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsConfigCreateTcpRequest()
    value.name = _read_text(reader, 256)
    value.pos = [reader.f64() for _ in range(6)]
    if not 52 <= reader.position - _start <= 308:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsConfigCreateTcpResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/ConfigCreateTcpResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_768b2341613afaecf36342ebe26060e2c41ebd8fd4404d0394065c0d0ea6c948"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsConfigCreateTcpResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsConfigCreateTcpResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsConfigCreateTcpResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsConfigCreateTcpResponse = Ros1Dsr_msgsConfigCreateTcpResponse


def _write_Ros1Dsr_msgsConfigCreateTcpResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsConfigCreateTcpResponse:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsConfigCreateTcpResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsConfigCreateTcpResponse()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsConfigCreateToolRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/ConfigCreateToolRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_ade17ea7096f6309da57a5d9e0be362562551da27bbc1508aac8e2d3c3afcd44"
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
        _write_Ros1Dsr_msgsConfigCreateToolRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 84, 340)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsConfigCreateToolRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 84, 340))
        value = _read_Ros1Dsr_msgsConfigCreateToolRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsConfigCreateToolRequest = Ros1Dsr_msgsConfigCreateToolRequest


def _write_Ros1Dsr_msgsConfigCreateToolRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsConfigCreateToolRequest:
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


def _read_Ros1Dsr_msgsConfigCreateToolRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsConfigCreateToolRequest()
    value.name = _read_text(reader, 256)
    value.weight = reader.f64()
    value.cog = [reader.f64() for _ in range(3)]
    value.inertia = [reader.f64() for _ in range(6)]
    if not 84 <= reader.position - _start <= 340:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsConfigCreateToolResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/ConfigCreateToolResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_6ed584718ae8c0b9d3946007cfcc713e58f867d3b6b6bfdcabc7ffc126f98a9b"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsConfigCreateToolResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsConfigCreateToolResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsConfigCreateToolResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsConfigCreateToolResponse = Ros1Dsr_msgsConfigCreateToolResponse


def _write_Ros1Dsr_msgsConfigCreateToolResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsConfigCreateToolResponse:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsConfigCreateToolResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsConfigCreateToolResponse()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsConfigDeleteModbusRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/ConfigDeleteModbusRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_d2007f4aa533a46244a6924762b701f84c31f5c9d19495a745e35c6fdd55d96b"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    name: _py_str = ""

    def encode(self):
        writer = _Writer(260)
        _write_Ros1Dsr_msgsConfigDeleteModbusRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 260)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsConfigDeleteModbusRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 4, 260))
        value = _read_Ros1Dsr_msgsConfigDeleteModbusRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsConfigDeleteModbusRequest = Ros1Dsr_msgsConfigDeleteModbusRequest


def _write_Ros1Dsr_msgsConfigDeleteModbusRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsConfigDeleteModbusRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.name
    _write_text(writer, _part0, 256)
    if not 4 <= len(writer.data) - _start <= 260:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsConfigDeleteModbusRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsConfigDeleteModbusRequest()
    value.name = _read_text(reader, 256)
    if not 4 <= reader.position - _start <= 260:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsConfigDeleteModbusResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/ConfigDeleteModbusResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_e3f8b3da769c249f0064ee118d26d7154a31e2dd5e65417d01f1524baa317c4e"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsConfigDeleteModbusResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsConfigDeleteModbusResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsConfigDeleteModbusResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsConfigDeleteModbusResponse = Ros1Dsr_msgsConfigDeleteModbusResponse


def _write_Ros1Dsr_msgsConfigDeleteModbusResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsConfigDeleteModbusResponse:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsConfigDeleteModbusResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsConfigDeleteModbusResponse()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsConfigDeleteTcpRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/ConfigDeleteTcpRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_096510681530cdda07b413a426fcf0ad5ca98e657a5d7612c1f497893fa96de4"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    name: _py_str = ""

    def encode(self):
        writer = _Writer(260)
        _write_Ros1Dsr_msgsConfigDeleteTcpRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 260)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsConfigDeleteTcpRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 4, 260))
        value = _read_Ros1Dsr_msgsConfigDeleteTcpRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsConfigDeleteTcpRequest = Ros1Dsr_msgsConfigDeleteTcpRequest


def _write_Ros1Dsr_msgsConfigDeleteTcpRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsConfigDeleteTcpRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.name
    _write_text(writer, _part0, 256)
    if not 4 <= len(writer.data) - _start <= 260:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsConfigDeleteTcpRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsConfigDeleteTcpRequest()
    value.name = _read_text(reader, 256)
    if not 4 <= reader.position - _start <= 260:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsConfigDeleteTcpResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/ConfigDeleteTcpResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_5842def73643bf4621c17fbfa2ecd19cfec7a5c9c4ce9b954c72e0be846cebe5"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsConfigDeleteTcpResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsConfigDeleteTcpResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsConfigDeleteTcpResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsConfigDeleteTcpResponse = Ros1Dsr_msgsConfigDeleteTcpResponse


def _write_Ros1Dsr_msgsConfigDeleteTcpResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsConfigDeleteTcpResponse:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsConfigDeleteTcpResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsConfigDeleteTcpResponse()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsConfigDeleteToolRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/ConfigDeleteToolRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_be7ab4ae62ab38dd1c31f4cb96303edf98511e369ef64476f835e23b7b6168f3"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    name: _py_str = ""

    def encode(self):
        writer = _Writer(260)
        _write_Ros1Dsr_msgsConfigDeleteToolRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 260)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsConfigDeleteToolRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 4, 260))
        value = _read_Ros1Dsr_msgsConfigDeleteToolRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsConfigDeleteToolRequest = Ros1Dsr_msgsConfigDeleteToolRequest


def _write_Ros1Dsr_msgsConfigDeleteToolRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsConfigDeleteToolRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.name
    _write_text(writer, _part0, 256)
    if not 4 <= len(writer.data) - _start <= 260:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsConfigDeleteToolRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsConfigDeleteToolRequest()
    value.name = _read_text(reader, 256)
    if not 4 <= reader.position - _start <= 260:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsConfigDeleteToolResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/ConfigDeleteToolResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_0e0708c161ba1aeeb9c7e96e77434eb7ba7c9c77eba230e5488f59b34fd8f780"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsConfigDeleteToolResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsConfigDeleteToolResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsConfigDeleteToolResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsConfigDeleteToolResponse = Ros1Dsr_msgsConfigDeleteToolResponse


def _write_Ros1Dsr_msgsConfigDeleteToolResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsConfigDeleteToolResponse:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsConfigDeleteToolResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsConfigDeleteToolResponse()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsCoordTransformRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/CoordTransformRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_28b33cdb83f95f41982ccc99d276cc4efb34ff33707101e1d56cf63580095436"
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
        _write_Ros1Dsr_msgsCoordTransformRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 50, 50)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsCoordTransformRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 50, 50))
        value = _read_Ros1Dsr_msgsCoordTransformRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsCoordTransformRequest = Ros1Dsr_msgsCoordTransformRequest


def _write_Ros1Dsr_msgsCoordTransformRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsCoordTransformRequest:
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


def _read_Ros1Dsr_msgsCoordTransformRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsCoordTransformRequest()
    value.pos_in = [reader.f64() for _ in range(6)]
    value.ref_in = reader.integer(1, True)
    value.ref_out = reader.integer(1, True)
    if not 50 <= reader.position - _start <= 50:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsCoordTransformResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/CoordTransformResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_1b9492d45f096bfd2a53e1ed8a701d53698a7aebc525b70e95de70c6275035c9"
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
        _write_Ros1Dsr_msgsCoordTransformResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 49, 49)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsCoordTransformResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 49, 49))
        value = _read_Ros1Dsr_msgsCoordTransformResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsCoordTransformResponse = Ros1Dsr_msgsCoordTransformResponse


def _write_Ros1Dsr_msgsCoordTransformResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsCoordTransformResponse:
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


def _read_Ros1Dsr_msgsCoordTransformResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsCoordTransformResponse()
    value.conv_posx = [reader.f64() for _ in range(6)]
    value.success = _read_bool(reader)
    if not 49 <= reader.position - _start <= 49:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsDisableAlterMotionRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/DisableAlterMotionRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_4ff4905d3843c08022003c96abd4031a5438078e919e0b8e43554aae3229bbc1"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Dsr_msgsDisableAlterMotionRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsDisableAlterMotionRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Dsr_msgsDisableAlterMotionRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsDisableAlterMotionRequest = Ros1Dsr_msgsDisableAlterMotionRequest


def _write_Ros1Dsr_msgsDisableAlterMotionRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsDisableAlterMotionRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros1Dsr_msgsDisableAlterMotionRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsDisableAlterMotionRequest()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsDisableAlterMotionResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/DisableAlterMotionResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_feff25cf5412112d1ebc9fd4dd0aca62f1a9af7f63673a0633f6f32e915a27b1"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsDisableAlterMotionResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsDisableAlterMotionResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsDisableAlterMotionResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsDisableAlterMotionResponse = Ros1Dsr_msgsDisableAlterMotionResponse


def _write_Ros1Dsr_msgsDisableAlterMotionResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsDisableAlterMotionResponse:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsDisableAlterMotionResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsDisableAlterMotionResponse()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsDrlPauseRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/DrlPauseRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_e8e6c075432920d6650a5dddc31fd33f7a1688ce99264113be7d0675378eb120"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Dsr_msgsDrlPauseRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsDrlPauseRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Dsr_msgsDrlPauseRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsDrlPauseRequest = Ros1Dsr_msgsDrlPauseRequest


def _write_Ros1Dsr_msgsDrlPauseRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsDrlPauseRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros1Dsr_msgsDrlPauseRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsDrlPauseRequest()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsDrlPauseResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/DrlPauseResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_9a448d82cb77115d43abe062d8f1bbb904ab680a98cf4d95b025eedd3deca0bb"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsDrlPauseResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsDrlPauseResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsDrlPauseResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsDrlPauseResponse = Ros1Dsr_msgsDrlPauseResponse


def _write_Ros1Dsr_msgsDrlPauseResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsDrlPauseResponse:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsDrlPauseResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsDrlPauseResponse()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsDrlResumeRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/DrlResumeRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_11d5e8618dacde2d4f9ee2b9e7ee6306396e7495003bc31d9bd02a2438232713"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Dsr_msgsDrlResumeRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsDrlResumeRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Dsr_msgsDrlResumeRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsDrlResumeRequest = Ros1Dsr_msgsDrlResumeRequest


def _write_Ros1Dsr_msgsDrlResumeRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsDrlResumeRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros1Dsr_msgsDrlResumeRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsDrlResumeRequest()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsDrlResumeResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/DrlResumeResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_40fdc65739450e3c8e0af52f69623624dac33620feda55065587e8e8a1d9a05a"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsDrlResumeResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsDrlResumeResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsDrlResumeResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsDrlResumeResponse = Ros1Dsr_msgsDrlResumeResponse


def _write_Ros1Dsr_msgsDrlResumeResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsDrlResumeResponse:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsDrlResumeResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsDrlResumeResponse()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsDrlStartRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/DrlStartRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_1f5f908c63b09780c6b68ef280f87328590e5eec3be18d98916137c0d2c42a65"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 5
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 261
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 261
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    robotSystem: _py_int = 0
    code: _py_str = ""

    def encode(self):
        writer = _Writer(261)
        _write_Ros1Dsr_msgsDrlStartRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 5, 261)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsDrlStartRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 5, 261))
        value = _read_Ros1Dsr_msgsDrlStartRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsDrlStartRequest = Ros1Dsr_msgsDrlStartRequest


def _write_Ros1Dsr_msgsDrlStartRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsDrlStartRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.robotSystem
    writer.integer(_part0, 1, True)
    _part1 = value.code
    _write_text(writer, _part1, 256)
    if not 5 <= len(writer.data) - _start <= 261:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsDrlStartRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsDrlStartRequest()
    value.robotSystem = reader.integer(1, True)
    value.code = _read_text(reader, 256)
    if not 5 <= reader.position - _start <= 261:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsDrlStartResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/DrlStartResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_2e39df1817ac076c895b43f565515db035ba300f4433b8635976b20713d98d76"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsDrlStartResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsDrlStartResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsDrlStartResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsDrlStartResponse = Ros1Dsr_msgsDrlStartResponse


def _write_Ros1Dsr_msgsDrlStartResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsDrlStartResponse:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsDrlStartResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsDrlStartResponse()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsDrlStopRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/DrlStopRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_5be1c9f2284e5244660cfcb60632921bb5db1440536a5030e8d4c93c15704f9b"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    stop_mode: _py_int = 0

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsDrlStopRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsDrlStopRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsDrlStopRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsDrlStopRequest = Ros1Dsr_msgsDrlStopRequest


def _write_Ros1Dsr_msgsDrlStopRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsDrlStopRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.stop_mode
    writer.integer(_part0, 1, True)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsDrlStopRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsDrlStopRequest()
    value.stop_mode = reader.integer(1, True)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsDrlStopResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/DrlStopResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_0f2cf2aff2ce20b984c602673fdf51ec38ef81820171e1c08e8c9c07d536a988"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsDrlStopResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsDrlStopResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsDrlStopResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsDrlStopResponse = Ros1Dsr_msgsDrlStopResponse


def _write_Ros1Dsr_msgsDrlStopResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsDrlStopResponse:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsDrlStopResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsDrlStopResponse()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsEnableAlterMotionRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/EnableAlterMotionRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_fa62f478a04e6d92a170e62e1ea690f6e6827e3784388fab3ecc58966c25c99f"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 38
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 38
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 38
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    n: _py_int = 0
    mode: _py_int = 0
    ref: _py_int = 0
    limit_dPOS: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(2)])
    limit_dPOS_per: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(2)])

    def encode(self):
        writer = _Writer(38)
        _write_Ros1Dsr_msgsEnableAlterMotionRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 38, 38)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsEnableAlterMotionRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 38, 38))
        value = _read_Ros1Dsr_msgsEnableAlterMotionRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsEnableAlterMotionRequest = Ros1Dsr_msgsEnableAlterMotionRequest


def _write_Ros1Dsr_msgsEnableAlterMotionRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsEnableAlterMotionRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.n
    writer.integer(_part0, 4, True)
    _part1 = value.mode
    writer.integer(_part1, 1, True)
    _part2 = value.ref
    writer.integer(_part2, 1, True)
    _part3 = value.limit_dPOS
    if type(_part3) not in (list, tuple):
        raise TypeError("array value required")
    _count3 = len(_part3)
    if _count3 != 2:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count3):
        _element = _part3[_index]
        writer.f64(_element)
    _part4 = value.limit_dPOS_per
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


def _read_Ros1Dsr_msgsEnableAlterMotionRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsEnableAlterMotionRequest()
    value.n = reader.integer(4, True)
    value.mode = reader.integer(1, True)
    value.ref = reader.integer(1, True)
    value.limit_dPOS = [reader.f64() for _ in range(2)]
    value.limit_dPOS_per = [reader.f64() for _ in range(2)]
    if not 38 <= reader.position - _start <= 38:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsEnableAlterMotionResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/EnableAlterMotionResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_24f3d751a4b49ff5f3280893ecb2f896ae57a9a05309a8827c5ae8eb18daf885"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsEnableAlterMotionResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsEnableAlterMotionResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsEnableAlterMotionResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsEnableAlterMotionResponse = Ros1Dsr_msgsEnableAlterMotionResponse


def _write_Ros1Dsr_msgsEnableAlterMotionResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsEnableAlterMotionResponse:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsEnableAlterMotionResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsEnableAlterMotionResponse()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsFkinRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/FkinRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_6bbd7ead217dd4d6ed0f5d044df5a32d3be159fcc929a395396ec7c1208c325d"
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
        _write_Ros1Dsr_msgsFkinRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 49, 49)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsFkinRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 49, 49))
        value = _read_Ros1Dsr_msgsFkinRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsFkinRequest = Ros1Dsr_msgsFkinRequest


def _write_Ros1Dsr_msgsFkinRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsFkinRequest:
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


def _read_Ros1Dsr_msgsFkinRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsFkinRequest()
    value.pos = [reader.f64() for _ in range(6)]
    value.ref = reader.integer(1, True)
    if not 49 <= reader.position - _start <= 49:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsFkinResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/FkinResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_86e79e02833be0498aef75436df542063454b0e5b0a46fb153467afc5a492c94"
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
        _write_Ros1Dsr_msgsFkinResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 49, 49)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsFkinResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 49, 49))
        value = _read_Ros1Dsr_msgsFkinResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsFkinResponse = Ros1Dsr_msgsFkinResponse


def _write_Ros1Dsr_msgsFkinResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsFkinResponse:
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


def _read_Ros1Dsr_msgsFkinResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsFkinResponse()
    value.conv_posx = [reader.f64() for _ in range(6)]
    value.success = _read_bool(reader)
    if not 49 <= reader.position - _start <= 49:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsGetControlModeRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/GetControlModeRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_c7872f67adf097ccf8b60b910ea0c9ce8831a88b1ab82827b3789355b19fbaab"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Dsr_msgsGetControlModeRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetControlModeRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Dsr_msgsGetControlModeRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetControlModeRequest = Ros1Dsr_msgsGetControlModeRequest


def _write_Ros1Dsr_msgsGetControlModeRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsGetControlModeRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros1Dsr_msgsGetControlModeRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetControlModeRequest()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsGetControlModeResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/GetControlModeResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_29bcb7b65473a8e0c70660a270b9110c95d486358b6ccece3580214cb47d8f4f"
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
        _write_Ros1Dsr_msgsGetControlModeResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 2, 2)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetControlModeResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 2, 2))
        value = _read_Ros1Dsr_msgsGetControlModeResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetControlModeResponse = Ros1Dsr_msgsGetControlModeResponse


def _write_Ros1Dsr_msgsGetControlModeResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsGetControlModeResponse:
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


def _read_Ros1Dsr_msgsGetControlModeResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetControlModeResponse()
    value.control_mode = reader.integer(1, True)
    value.success = _read_bool(reader)
    if not 2 <= reader.position - _start <= 2:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsGetControlSpaceRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/GetControlSpaceRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_eaff6359de691c20936219f59c4c63b1a439ef1367afee1e554d22c013bf74cf"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Dsr_msgsGetControlSpaceRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetControlSpaceRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Dsr_msgsGetControlSpaceRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetControlSpaceRequest = Ros1Dsr_msgsGetControlSpaceRequest


def _write_Ros1Dsr_msgsGetControlSpaceRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsGetControlSpaceRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros1Dsr_msgsGetControlSpaceRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetControlSpaceRequest()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsGetControlSpaceResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/GetControlSpaceResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_4ef8cc2465e8d38e5d44fa83e907ea5658f14f5f4f95776f8044f791e8311dfb"
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
        _write_Ros1Dsr_msgsGetControlSpaceResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 2, 2)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetControlSpaceResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 2, 2))
        value = _read_Ros1Dsr_msgsGetControlSpaceResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetControlSpaceResponse = Ros1Dsr_msgsGetControlSpaceResponse


def _write_Ros1Dsr_msgsGetControlSpaceResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsGetControlSpaceResponse:
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


def _read_Ros1Dsr_msgsGetControlSpaceResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetControlSpaceResponse()
    value.space = reader.integer(1, True)
    value.success = _read_bool(reader)
    if not 2 <= reader.position - _start <= 2:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsGetCtrlBoxAnalogInputRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/GetCtrlBoxAnalogInputRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_0cfaa9f68b92deff18c68d7def4dda13dcd1082065218cc0af1ef8909a35898a"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    channel: _py_int = 0

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsGetCtrlBoxAnalogInputRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetCtrlBoxAnalogInputRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsGetCtrlBoxAnalogInputRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetCtrlBoxAnalogInputRequest = Ros1Dsr_msgsGetCtrlBoxAnalogInputRequest


def _write_Ros1Dsr_msgsGetCtrlBoxAnalogInputRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsGetCtrlBoxAnalogInputRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.channel
    writer.integer(_part0, 1, True)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsGetCtrlBoxAnalogInputRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetCtrlBoxAnalogInputRequest()
    value.channel = reader.integer(1, True)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/GetCtrlBoxAnalogInputResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_a23bcb46f249dc92a614e37a44ebb9e683921ee4104a22446855c8f3b35a6be7"
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
        _write_Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 9, 9)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 9, 9))
        value = _read_Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse = Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse


def _write_Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse:
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


def _read_Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse()
    value.value = reader.f64()
    value.success = _read_bool(reader)
    if not 9 <= reader.position - _start <= 9:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsGetCtrlBoxDigitalInputRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/GetCtrlBoxDigitalInputRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_43410710b24f4ef8aeb4533a0d45babb2adf93890d72c08ec45b1062e0d83f7e"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    index: _py_int = 0

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsGetCtrlBoxDigitalInputRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetCtrlBoxDigitalInputRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsGetCtrlBoxDigitalInputRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetCtrlBoxDigitalInputRequest = Ros1Dsr_msgsGetCtrlBoxDigitalInputRequest


def _write_Ros1Dsr_msgsGetCtrlBoxDigitalInputRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsGetCtrlBoxDigitalInputRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.index
    writer.integer(_part0, 1, True)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsGetCtrlBoxDigitalInputRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetCtrlBoxDigitalInputRequest()
    value.index = reader.integer(1, True)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/GetCtrlBoxDigitalInputResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_f838432468390d51d64a6d9bc714b503b168a9fedfabcfb96cce7a202a34613f"
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
        _write_Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 2, 2)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 2, 2))
        value = _read_Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse = Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse


def _write_Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse:
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


def _read_Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse()
    value.value = reader.integer(1, True)
    value.success = _read_bool(reader)
    if not 2 <= reader.position - _start <= 2:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/GetCtrlBoxDigitalOutputRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_a33419794c2431ab9d5b6c3a96becb14edca0d7b00953aa7a7ec1f11ea7bbdb5"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    index: _py_int = 0

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequest = Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequest


def _write_Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.index
    writer.integer(_part0, 1, True)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequest()
    value.index = reader.integer(1, True)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/GetCtrlBoxDigitalOutputResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_cf472a4ed84d8005ce6ea97ae3c2fd72aba049015924069ee16c79ad41c76534"
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
        _write_Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 2, 2)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 2, 2))
        value = _read_Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponse = Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponse


def _write_Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponse:
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


def _read_Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponse()
    value.value = reader.integer(1, True)
    value.success = _read_bool(reader)
    if not 2 <= reader.position - _start <= 2:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsGetCurrentPoseRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/GetCurrentPoseRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_674feef59812a37871c3022be9d588ffa67178430be01f47a4e3bca86766b72b"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    space_type: _py_int = 0

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsGetCurrentPoseRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetCurrentPoseRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsGetCurrentPoseRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetCurrentPoseRequest = Ros1Dsr_msgsGetCurrentPoseRequest


def _write_Ros1Dsr_msgsGetCurrentPoseRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsGetCurrentPoseRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.space_type
    writer.integer(_part0, 1, True)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsGetCurrentPoseRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetCurrentPoseRequest()
    value.space_type = reader.integer(1, True)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsGetCurrentPoseResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/GetCurrentPoseResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_8b57d2561b1a04d2ddb60c29f9a4ffb6ba6eeb2f73e8b7e704ee091b49861fe1"
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
        _write_Ros1Dsr_msgsGetCurrentPoseResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 49, 49)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetCurrentPoseResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 49, 49))
        value = _read_Ros1Dsr_msgsGetCurrentPoseResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetCurrentPoseResponse = Ros1Dsr_msgsGetCurrentPoseResponse


def _write_Ros1Dsr_msgsGetCurrentPoseResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsGetCurrentPoseResponse:
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


def _read_Ros1Dsr_msgsGetCurrentPoseResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetCurrentPoseResponse()
    value.pos = [reader.f64() for _ in range(6)]
    value.success = _read_bool(reader)
    if not 49 <= reader.position - _start <= 49:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsGetCurrentPosjRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/GetCurrentPosjRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_5a4d2e7f7304671d96e5ee9ff83ad957d6e74f49ac2562aea6e3dbfcc1726be7"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Dsr_msgsGetCurrentPosjRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetCurrentPosjRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Dsr_msgsGetCurrentPosjRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetCurrentPosjRequest = Ros1Dsr_msgsGetCurrentPosjRequest


def _write_Ros1Dsr_msgsGetCurrentPosjRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsGetCurrentPosjRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros1Dsr_msgsGetCurrentPosjRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetCurrentPosjRequest()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsGetCurrentPosjResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/GetCurrentPosjResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_6d9f277e82052e84ee2494991ffcca6b8cb8457c2d0fdeb805122f99ae583c29"
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
        _write_Ros1Dsr_msgsGetCurrentPosjResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 49, 49)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetCurrentPosjResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 49, 49))
        value = _read_Ros1Dsr_msgsGetCurrentPosjResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetCurrentPosjResponse = Ros1Dsr_msgsGetCurrentPosjResponse


def _write_Ros1Dsr_msgsGetCurrentPosjResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsGetCurrentPosjResponse:
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


def _read_Ros1Dsr_msgsGetCurrentPosjResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetCurrentPosjResponse()
    value.pos = [reader.f64() for _ in range(6)]
    value.success = _read_bool(reader)
    if not 49 <= reader.position - _start <= 49:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsGetCurrentPosxRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/GetCurrentPosxRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_e134a62a318034e8ab66c88085f8e9f0380500394b9d61bb2998a618fc7d3437"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    ref: _py_int = 0

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsGetCurrentPosxRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetCurrentPosxRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsGetCurrentPosxRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetCurrentPosxRequest = Ros1Dsr_msgsGetCurrentPosxRequest


def _write_Ros1Dsr_msgsGetCurrentPosxRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsGetCurrentPosxRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.ref
    writer.integer(_part0, 1, True)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsGetCurrentPosxRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetCurrentPosxRequest()
    value.ref = reader.integer(1, True)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Std_msgsMultiArrayDimension:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "std_msgs/MultiArrayDimension"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_0a279c83cc8c73db2472e3768c8e17d877bb15d72d41f4056568a279b5352444"
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
        _write_Ros1Std_msgsMultiArrayDimension(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 76)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Std_msgsMultiArrayDimension:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 12, 76))
        value = _read_Ros1Std_msgsMultiArrayDimension(reader)
        reader.end()
        return value


_record_Ros1Std_msgsMultiArrayDimension = Ros1Std_msgsMultiArrayDimension


def _write_Ros1Std_msgsMultiArrayDimension(writer, value):
    if type(value) is not Ros1Std_msgsMultiArrayDimension:
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


def _read_Ros1Std_msgsMultiArrayDimension(reader):
    _start = reader.position
    value = Ros1Std_msgsMultiArrayDimension()
    value.label = _read_text(reader, 64)
    value.size = reader.integer(4, False)
    value.stride = reader.integer(4, False)
    if not 12 <= reader.position - _start <= 76:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Std_msgsMultiArrayLayout:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "std_msgs/MultiArrayLayout"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_602f6ec018f567486b5ea052944a24b0d798fdad5910915337ab6a76c966603e"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 236
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 236
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    dim: _py_list[_record_Ros1Std_msgsMultiArrayDimension] = _field(default_factory=lambda: [])
    data_offset: _py_int = 0

    def encode(self):
        writer = _Writer(236)
        _write_Ros1Std_msgsMultiArrayLayout(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 236)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Std_msgsMultiArrayLayout:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 8, 236))
        value = _read_Ros1Std_msgsMultiArrayLayout(reader)
        reader.end()
        return value


_record_Ros1Std_msgsMultiArrayLayout = Ros1Std_msgsMultiArrayLayout


def _write_Ros1Std_msgsMultiArrayLayout(writer, value):
    if type(value) is not Ros1Std_msgsMultiArrayLayout:
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
        _write_Ros1Std_msgsMultiArrayDimension(writer, _element)
    _part1 = value.data_offset
    writer.integer(_part1, 4, False)
    if not 8 <= len(writer.data) - _start <= 236:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Std_msgsMultiArrayLayout(reader):
    _start = reader.position
    value = Ros1Std_msgsMultiArrayLayout()
    value.dim = [_read_Ros1Std_msgsMultiArrayDimension(reader) for _ in range(_read_count(reader, 3, 12))]
    value.data_offset = reader.integer(4, False)
    if not 8 <= reader.position - _start <= 236:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Std_msgsFloat64MultiArray:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "std_msgs/Float64MultiArray"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_e75045efb9b80cdc278940f799d16f3b6f49ca4eeb67b4c095d1df4db133bdf8"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 368
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 368
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    layout: _record_Ros1Std_msgsMultiArrayLayout = _field(
        default_factory=lambda: Ros1Std_msgsMultiArrayLayout()
    )
    data: _py_list[_py_float] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(368)
        _write_Ros1Std_msgsFloat64MultiArray(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 368)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Std_msgsFloat64MultiArray:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 12, 368))
        value = _read_Ros1Std_msgsFloat64MultiArray(reader)
        reader.end()
        return value


_record_Ros1Std_msgsFloat64MultiArray = Ros1Std_msgsFloat64MultiArray


def _write_Ros1Std_msgsFloat64MultiArray(writer, value):
    if type(value) is not Ros1Std_msgsFloat64MultiArray:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.layout
    _write_Ros1Std_msgsMultiArrayLayout(writer, _part0)
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


def _read_Ros1Std_msgsFloat64MultiArray(reader):
    _start = reader.position
    value = Ros1Std_msgsFloat64MultiArray()
    value.layout = _read_Ros1Std_msgsMultiArrayLayout(reader)
    value.data = [reader.f64() for _ in range(_read_count(reader, 16, 8))]
    if not 12 <= reader.position - _start <= 368:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsGetCurrentPosxResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/GetCurrentPosxResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_2fb411b9e660dddd17fcd65507bd6437db63aa41b3d1eeecd5c0048405828bf4"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 5
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 2213
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 2213
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    task_pos_info: _py_list[_record_Ros1Std_msgsFloat64MultiArray] = _field(default_factory=lambda: [])
    success: _py_bool = False

    def encode(self):
        writer = _Writer(2213)
        _write_Ros1Dsr_msgsGetCurrentPosxResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 5, 2213)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetCurrentPosxResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 5, 2213))
        value = _read_Ros1Dsr_msgsGetCurrentPosxResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetCurrentPosxResponse = Ros1Dsr_msgsGetCurrentPosxResponse


def _write_Ros1Dsr_msgsGetCurrentPosxResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsGetCurrentPosxResponse:
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
        _write_Ros1Std_msgsFloat64MultiArray(writer, _element)
    _part1 = value.success
    if type(_part1) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part1), 1)
    if not 5 <= len(writer.data) - _start <= 2213:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsGetCurrentPosxResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetCurrentPosxResponse()
    value.task_pos_info = [
        _read_Ros1Std_msgsFloat64MultiArray(reader) for _ in range(_read_count(reader, 6, 12))
    ]
    value.success = _read_bool(reader)
    if not 5 <= reader.position - _start <= 2213:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsGetCurrentRotmRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/GetCurrentRotmRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_e0f4ee3e0c208a87004cca9771a0696f4acfa8a09ab6a861b8a83bd28ccfb436"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    ref: _py_int = 0

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsGetCurrentRotmRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetCurrentRotmRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsGetCurrentRotmRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetCurrentRotmRequest = Ros1Dsr_msgsGetCurrentRotmRequest


def _write_Ros1Dsr_msgsGetCurrentRotmRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsGetCurrentRotmRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.ref
    writer.integer(_part0, 1, True)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsGetCurrentRotmRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetCurrentRotmRequest()
    value.ref = reader.integer(1, True)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsGetCurrentRotmResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/GetCurrentRotmResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_6cfa5fffb8e5c1575cb821b9330dd9e1f60ab3b325d54ff4d00bc8859e7535d1"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 5
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 2213
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 2213
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    rot_matrix: _py_list[_record_Ros1Std_msgsFloat64MultiArray] = _field(default_factory=lambda: [])
    success: _py_bool = False

    def encode(self):
        writer = _Writer(2213)
        _write_Ros1Dsr_msgsGetCurrentRotmResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 5, 2213)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetCurrentRotmResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 5, 2213))
        value = _read_Ros1Dsr_msgsGetCurrentRotmResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetCurrentRotmResponse = Ros1Dsr_msgsGetCurrentRotmResponse


def _write_Ros1Dsr_msgsGetCurrentRotmResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsGetCurrentRotmResponse:
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
        _write_Ros1Std_msgsFloat64MultiArray(writer, _element)
    _part1 = value.success
    if type(_part1) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part1), 1)
    if not 5 <= len(writer.data) - _start <= 2213:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsGetCurrentRotmResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetCurrentRotmResponse()
    value.rot_matrix = [
        _read_Ros1Std_msgsFloat64MultiArray(reader) for _ in range(_read_count(reader, 6, 12))
    ]
    value.success = _read_bool(reader)
    if not 5 <= reader.position - _start <= 2213:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsGetCurrentSolutionSpaceRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/GetCurrentSolutionSpaceRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_303fe75ff690897d18296dfb34aad4b0482e372656ed5c85bf9d60bb1832af78"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Dsr_msgsGetCurrentSolutionSpaceRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetCurrentSolutionSpaceRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Dsr_msgsGetCurrentSolutionSpaceRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetCurrentSolutionSpaceRequest = Ros1Dsr_msgsGetCurrentSolutionSpaceRequest


def _write_Ros1Dsr_msgsGetCurrentSolutionSpaceRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsGetCurrentSolutionSpaceRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros1Dsr_msgsGetCurrentSolutionSpaceRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetCurrentSolutionSpaceRequest()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsGetCurrentSolutionSpaceResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/GetCurrentSolutionSpaceResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_e7ef22b6516c92acb76e6173e0d14f0b7c25a7ec669ef18060b4f1158e877c68"
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
        _write_Ros1Dsr_msgsGetCurrentSolutionSpaceResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 2, 2)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetCurrentSolutionSpaceResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 2, 2))
        value = _read_Ros1Dsr_msgsGetCurrentSolutionSpaceResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetCurrentSolutionSpaceResponse = Ros1Dsr_msgsGetCurrentSolutionSpaceResponse


def _write_Ros1Dsr_msgsGetCurrentSolutionSpaceResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsGetCurrentSolutionSpaceResponse:
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


def _read_Ros1Dsr_msgsGetCurrentSolutionSpaceResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetCurrentSolutionSpaceResponse()
    value.sol_space = reader.integer(1, True)
    value.success = _read_bool(reader)
    if not 2 <= reader.position - _start <= 2:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsGetCurrentTcpRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/GetCurrentTcpRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_f2a902cbf141335bb559f739861860de93f07d3ed3200ba91833b831389eb3b8"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Dsr_msgsGetCurrentTcpRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetCurrentTcpRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Dsr_msgsGetCurrentTcpRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetCurrentTcpRequest = Ros1Dsr_msgsGetCurrentTcpRequest


def _write_Ros1Dsr_msgsGetCurrentTcpRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsGetCurrentTcpRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros1Dsr_msgsGetCurrentTcpRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetCurrentTcpRequest()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsGetCurrentTcpResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/GetCurrentTcpResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_e0041507b5cdc970e31a6df40a0af22a4115724b1e4c4f615b54c788cf2f27b6"
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
        _write_Ros1Dsr_msgsGetCurrentTcpResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 5, 261)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetCurrentTcpResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 5, 261))
        value = _read_Ros1Dsr_msgsGetCurrentTcpResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetCurrentTcpResponse = Ros1Dsr_msgsGetCurrentTcpResponse


def _write_Ros1Dsr_msgsGetCurrentTcpResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsGetCurrentTcpResponse:
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


def _read_Ros1Dsr_msgsGetCurrentTcpResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetCurrentTcpResponse()
    value.info = _read_text(reader, 256)
    value.success = _read_bool(reader)
    if not 5 <= reader.position - _start <= 261:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsGetCurrentToolRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/GetCurrentToolRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_0d86dff574728cebfb33a873845e9563665d4173267adbc6fd7f542d26b15970"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Dsr_msgsGetCurrentToolRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetCurrentToolRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Dsr_msgsGetCurrentToolRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetCurrentToolRequest = Ros1Dsr_msgsGetCurrentToolRequest


def _write_Ros1Dsr_msgsGetCurrentToolRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsGetCurrentToolRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros1Dsr_msgsGetCurrentToolRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetCurrentToolRequest()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsGetCurrentToolResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/GetCurrentToolResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_ab0de7b251e53fe03818ec0169e428bf70c27bdef187c792c54e65e37b2e717b"
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
        _write_Ros1Dsr_msgsGetCurrentToolResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 5, 261)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetCurrentToolResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 5, 261))
        value = _read_Ros1Dsr_msgsGetCurrentToolResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetCurrentToolResponse = Ros1Dsr_msgsGetCurrentToolResponse


def _write_Ros1Dsr_msgsGetCurrentToolResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsGetCurrentToolResponse:
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


def _read_Ros1Dsr_msgsGetCurrentToolResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetCurrentToolResponse()
    value.info = _read_text(reader, 256)
    value.success = _read_bool(reader)
    if not 5 <= reader.position - _start <= 261:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsGetCurrentToolFlangePosxRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/GetCurrentToolFlangePosxRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_c5377881231716926a6e0abeff2b115eaf5292f0d7e41478a7f1b4ccf7896d53"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    ref: _py_int = 0

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsGetCurrentToolFlangePosxRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetCurrentToolFlangePosxRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsGetCurrentToolFlangePosxRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetCurrentToolFlangePosxRequest = Ros1Dsr_msgsGetCurrentToolFlangePosxRequest


def _write_Ros1Dsr_msgsGetCurrentToolFlangePosxRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsGetCurrentToolFlangePosxRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.ref
    writer.integer(_part0, 1, True)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsGetCurrentToolFlangePosxRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetCurrentToolFlangePosxRequest()
    value.ref = reader.integer(1, True)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsGetCurrentToolFlangePosxResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/GetCurrentToolFlangePosxResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_0de91ced161ef1b14003e0e248887f641fd366500674aae15cbbb0f7d915caac"
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
        _write_Ros1Dsr_msgsGetCurrentToolFlangePosxResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 49, 49)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetCurrentToolFlangePosxResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 49, 49))
        value = _read_Ros1Dsr_msgsGetCurrentToolFlangePosxResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetCurrentToolFlangePosxResponse = Ros1Dsr_msgsGetCurrentToolFlangePosxResponse


def _write_Ros1Dsr_msgsGetCurrentToolFlangePosxResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsGetCurrentToolFlangePosxResponse:
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


def _read_Ros1Dsr_msgsGetCurrentToolFlangePosxResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetCurrentToolFlangePosxResponse()
    value.pos = [reader.f64() for _ in range(6)]
    value.success = _read_bool(reader)
    if not 49 <= reader.position - _start <= 49:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsGetCurrentVeljRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/GetCurrentVeljRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_ee4ef9a4e0b65ed58844e3b545094c569113b23d2478717306a14edb399242fa"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Dsr_msgsGetCurrentVeljRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetCurrentVeljRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Dsr_msgsGetCurrentVeljRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetCurrentVeljRequest = Ros1Dsr_msgsGetCurrentVeljRequest


def _write_Ros1Dsr_msgsGetCurrentVeljRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsGetCurrentVeljRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros1Dsr_msgsGetCurrentVeljRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetCurrentVeljRequest()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsGetCurrentVeljResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/GetCurrentVeljResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_000fed042d8de5fd8a1d95fe6b45cec5e4ad20ea2833199d7836ebb9e3ae5b2c"
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
        _write_Ros1Dsr_msgsGetCurrentVeljResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 49, 49)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetCurrentVeljResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 49, 49))
        value = _read_Ros1Dsr_msgsGetCurrentVeljResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetCurrentVeljResponse = Ros1Dsr_msgsGetCurrentVeljResponse


def _write_Ros1Dsr_msgsGetCurrentVeljResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsGetCurrentVeljResponse:
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


def _read_Ros1Dsr_msgsGetCurrentVeljResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetCurrentVeljResponse()
    value.joint_speed = [reader.f64() for _ in range(6)]
    value.success = _read_bool(reader)
    if not 49 <= reader.position - _start <= 49:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsGetCurrentVelxRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/GetCurrentVelxRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_6f37a0ffd22a29a6b7812d551680cacb146192c25b234806ff16686992c34efb"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    ref: _py_int = 0

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsGetCurrentVelxRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetCurrentVelxRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsGetCurrentVelxRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetCurrentVelxRequest = Ros1Dsr_msgsGetCurrentVelxRequest


def _write_Ros1Dsr_msgsGetCurrentVelxRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsGetCurrentVelxRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.ref
    writer.integer(_part0, 1, True)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsGetCurrentVelxRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetCurrentVelxRequest()
    value.ref = reader.integer(1, True)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsGetCurrentVelxResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/GetCurrentVelxResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_98c1cd7ae5663063ce12ea61d9be3dbfd37e9e0b10b6a7f4cc1c212419392f40"
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
        _write_Ros1Dsr_msgsGetCurrentVelxResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 49, 49)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetCurrentVelxResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 49, 49))
        value = _read_Ros1Dsr_msgsGetCurrentVelxResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetCurrentVelxResponse = Ros1Dsr_msgsGetCurrentVelxResponse


def _write_Ros1Dsr_msgsGetCurrentVelxResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsGetCurrentVelxResponse:
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


def _read_Ros1Dsr_msgsGetCurrentVelxResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetCurrentVelxResponse()
    value.vel = [reader.f64() for _ in range(6)]
    value.success = _read_bool(reader)
    if not 49 <= reader.position - _start <= 49:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsGetDesiredPosjRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/GetDesiredPosjRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_2937a5625d07a7681c80c13557018978107abc537a22ee85ff562f15925caf1e"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Dsr_msgsGetDesiredPosjRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetDesiredPosjRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Dsr_msgsGetDesiredPosjRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetDesiredPosjRequest = Ros1Dsr_msgsGetDesiredPosjRequest


def _write_Ros1Dsr_msgsGetDesiredPosjRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsGetDesiredPosjRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros1Dsr_msgsGetDesiredPosjRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetDesiredPosjRequest()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsGetDesiredPosjResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/GetDesiredPosjResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_11ac4a05e65b0142f18a152904020780179fadfe540fbff7d5c53e4f177bc833"
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
        _write_Ros1Dsr_msgsGetDesiredPosjResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 49, 49)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetDesiredPosjResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 49, 49))
        value = _read_Ros1Dsr_msgsGetDesiredPosjResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetDesiredPosjResponse = Ros1Dsr_msgsGetDesiredPosjResponse


def _write_Ros1Dsr_msgsGetDesiredPosjResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsGetDesiredPosjResponse:
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


def _read_Ros1Dsr_msgsGetDesiredPosjResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetDesiredPosjResponse()
    value.pos = [reader.f64() for _ in range(6)]
    value.success = _read_bool(reader)
    if not 49 <= reader.position - _start <= 49:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsGetDesiredPosxRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/GetDesiredPosxRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_812744777c143dfb5c4b60f71ab9461b3e95ead9e599473f87f88ba4f21d3563"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    ref: _py_int = 0

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsGetDesiredPosxRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetDesiredPosxRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsGetDesiredPosxRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetDesiredPosxRequest = Ros1Dsr_msgsGetDesiredPosxRequest


def _write_Ros1Dsr_msgsGetDesiredPosxRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsGetDesiredPosxRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.ref
    writer.integer(_part0, 1, True)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsGetDesiredPosxRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetDesiredPosxRequest()
    value.ref = reader.integer(1, True)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsGetDesiredPosxResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/GetDesiredPosxResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_2cf88bb8a14a1c2083a659a509fc1d29531aed1a1f9eb18590ad4381ff00a10a"
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
        _write_Ros1Dsr_msgsGetDesiredPosxResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 49, 49)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetDesiredPosxResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 49, 49))
        value = _read_Ros1Dsr_msgsGetDesiredPosxResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetDesiredPosxResponse = Ros1Dsr_msgsGetDesiredPosxResponse


def _write_Ros1Dsr_msgsGetDesiredPosxResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsGetDesiredPosxResponse:
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


def _read_Ros1Dsr_msgsGetDesiredPosxResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetDesiredPosxResponse()
    value.pos = [reader.f64() for _ in range(6)]
    value.success = _read_bool(reader)
    if not 49 <= reader.position - _start <= 49:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsGetDesiredVeljRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/GetDesiredVeljRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_0b93381c0f1e5f57e086d316056912ecb10e3697346e5f250fa5efa612d76e99"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Dsr_msgsGetDesiredVeljRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetDesiredVeljRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Dsr_msgsGetDesiredVeljRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetDesiredVeljRequest = Ros1Dsr_msgsGetDesiredVeljRequest


def _write_Ros1Dsr_msgsGetDesiredVeljRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsGetDesiredVeljRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros1Dsr_msgsGetDesiredVeljRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetDesiredVeljRequest()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsGetDesiredVeljResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/GetDesiredVeljResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_753747a45767aad1a06f610e11bfd405d07aa365ff1ede44c4b78de99ef6ef22"
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
        _write_Ros1Dsr_msgsGetDesiredVeljResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 49, 49)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetDesiredVeljResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 49, 49))
        value = _read_Ros1Dsr_msgsGetDesiredVeljResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetDesiredVeljResponse = Ros1Dsr_msgsGetDesiredVeljResponse


def _write_Ros1Dsr_msgsGetDesiredVeljResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsGetDesiredVeljResponse:
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


def _read_Ros1Dsr_msgsGetDesiredVeljResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetDesiredVeljResponse()
    value.joint_vel = [reader.f64() for _ in range(6)]
    value.success = _read_bool(reader)
    if not 49 <= reader.position - _start <= 49:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsGetDesiredVelxRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/GetDesiredVelxRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_f26e4ab51d82b3afdaf0f628f62346c740e2bb331d7f482001662884fd6d8aff"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    ref: _py_int = 0

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsGetDesiredVelxRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetDesiredVelxRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsGetDesiredVelxRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetDesiredVelxRequest = Ros1Dsr_msgsGetDesiredVelxRequest


def _write_Ros1Dsr_msgsGetDesiredVelxRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsGetDesiredVelxRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.ref
    writer.integer(_part0, 1, True)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsGetDesiredVelxRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetDesiredVelxRequest()
    value.ref = reader.integer(1, True)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsGetDesiredVelxResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/GetDesiredVelxResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_30fd91ceb67fa5a2cdaf78fc9b537befc89bac4e3db1203f1da10181fb7d9e51"
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
        _write_Ros1Dsr_msgsGetDesiredVelxResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 49, 49)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetDesiredVelxResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 49, 49))
        value = _read_Ros1Dsr_msgsGetDesiredVelxResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetDesiredVelxResponse = Ros1Dsr_msgsGetDesiredVelxResponse


def _write_Ros1Dsr_msgsGetDesiredVelxResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsGetDesiredVelxResponse:
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


def _read_Ros1Dsr_msgsGetDesiredVelxResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetDesiredVelxResponse()
    value.vel = [reader.f64() for _ in range(6)]
    value.success = _read_bool(reader)
    if not 49 <= reader.position - _start <= 49:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsGetDrlStateRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/GetDrlStateRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_425ce8ba966c52337c8d06a8436d593e8333a33cdb21ecdb983df3db9980d51f"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Dsr_msgsGetDrlStateRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetDrlStateRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Dsr_msgsGetDrlStateRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetDrlStateRequest = Ros1Dsr_msgsGetDrlStateRequest


def _write_Ros1Dsr_msgsGetDrlStateRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsGetDrlStateRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros1Dsr_msgsGetDrlStateRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetDrlStateRequest()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsGetDrlStateResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/GetDrlStateResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_2d0e1a81d0a1b5cda2cc3c4a9a5e627878324c67a0843e8a47583d4d86c149c9"
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
        _write_Ros1Dsr_msgsGetDrlStateResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 2, 2)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetDrlStateResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 2, 2))
        value = _read_Ros1Dsr_msgsGetDrlStateResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetDrlStateResponse = Ros1Dsr_msgsGetDrlStateResponse


def _write_Ros1Dsr_msgsGetDrlStateResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsGetDrlStateResponse:
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


def _read_Ros1Dsr_msgsGetDrlStateResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetDrlStateResponse()
    value.drl_state = reader.integer(1, True)
    value.success = _read_bool(reader)
    if not 2 <= reader.position - _start <= 2:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsGetExternalTorqueRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/GetExternalTorqueRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_601bfc2f1283520f2dd76e3f0eee05c02e584873e22b2188f6206cc22d96ee11"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Dsr_msgsGetExternalTorqueRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetExternalTorqueRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Dsr_msgsGetExternalTorqueRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetExternalTorqueRequest = Ros1Dsr_msgsGetExternalTorqueRequest


def _write_Ros1Dsr_msgsGetExternalTorqueRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsGetExternalTorqueRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros1Dsr_msgsGetExternalTorqueRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetExternalTorqueRequest()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsGetExternalTorqueResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/GetExternalTorqueResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_bdcda8b96e5a22a9143c70f5af6ea56deabe1c68fbf03eb176689c14cc2f50e4"
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
        _write_Ros1Dsr_msgsGetExternalTorqueResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 49, 49)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetExternalTorqueResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 49, 49))
        value = _read_Ros1Dsr_msgsGetExternalTorqueResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetExternalTorqueResponse = Ros1Dsr_msgsGetExternalTorqueResponse


def _write_Ros1Dsr_msgsGetExternalTorqueResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsGetExternalTorqueResponse:
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


def _read_Ros1Dsr_msgsGetExternalTorqueResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetExternalTorqueResponse()
    value.ext_torque = [reader.f64() for _ in range(6)]
    value.success = _read_bool(reader)
    if not 49 <= reader.position - _start <= 49:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsGetJointTorqueRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/GetJointTorqueRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_63dee3592e81bf9c2442ba8f01660710ef80c01c3ab55a73c35404da2d6da149"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Dsr_msgsGetJointTorqueRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetJointTorqueRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Dsr_msgsGetJointTorqueRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetJointTorqueRequest = Ros1Dsr_msgsGetJointTorqueRequest


def _write_Ros1Dsr_msgsGetJointTorqueRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsGetJointTorqueRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros1Dsr_msgsGetJointTorqueRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetJointTorqueRequest()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsGetJointTorqueResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/GetJointTorqueResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_da41dbdbac4580eaab3ad355caaa9e0075b87894256722521303559c698b9962"
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
        _write_Ros1Dsr_msgsGetJointTorqueResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 49, 49)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetJointTorqueResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 49, 49))
        value = _read_Ros1Dsr_msgsGetJointTorqueResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetJointTorqueResponse = Ros1Dsr_msgsGetJointTorqueResponse


def _write_Ros1Dsr_msgsGetJointTorqueResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsGetJointTorqueResponse:
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


def _read_Ros1Dsr_msgsGetJointTorqueResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetJointTorqueResponse()
    value.jts = [reader.f64() for _ in range(6)]
    value.success = _read_bool(reader)
    if not 49 <= reader.position - _start <= 49:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsGetLastAlarmRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/GetLastAlarmRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_4ff39c1f6b320245fd73e84755fe876eb12177c4a7b3ac3888d870ec5a761bdf"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Dsr_msgsGetLastAlarmRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetLastAlarmRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Dsr_msgsGetLastAlarmRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetLastAlarmRequest = Ros1Dsr_msgsGetLastAlarmRequest


def _write_Ros1Dsr_msgsGetLastAlarmRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsGetLastAlarmRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros1Dsr_msgsGetLastAlarmRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetLastAlarmRequest()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsLogAlarm:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/LogAlarm"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_39a6ecc178ed79ab41cd3948b6efb9666f66b0c33b6abe7845b1d16a17f9700f"
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
        _write_Ros1Dsr_msgsLogAlarm(writer, self)
        wire = writer.finish()
        return _wire(wire, 24, 792)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsLogAlarm:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 24, 792))
        value = _read_Ros1Dsr_msgsLogAlarm(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsLogAlarm = Ros1Dsr_msgsLogAlarm


def _write_Ros1Dsr_msgsLogAlarm(writer, value):
    if type(value) is not Ros1Dsr_msgsLogAlarm:
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


def _read_Ros1Dsr_msgsLogAlarm(reader):
    _start = reader.position
    value = Ros1Dsr_msgsLogAlarm()
    value.level = reader.integer(4, True)
    value.group = reader.integer(4, True)
    value.index = reader.integer(4, True)
    value.param = [_read_text(reader, 256) for _ in range(3)]
    if not 24 <= reader.position - _start <= 792:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsGetLastAlarmResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/GetLastAlarmResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_477c434da50cd9b26e93b02ca9072542afc22b62084cf5a9eb785cd43cb4d61e"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 25
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 793
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 793
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    log_alarm: _record_Ros1Dsr_msgsLogAlarm = _field(default_factory=lambda: Ros1Dsr_msgsLogAlarm())
    success: _py_bool = False

    def encode(self):
        writer = _Writer(793)
        _write_Ros1Dsr_msgsGetLastAlarmResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 25, 793)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetLastAlarmResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 25, 793))
        value = _read_Ros1Dsr_msgsGetLastAlarmResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetLastAlarmResponse = Ros1Dsr_msgsGetLastAlarmResponse


def _write_Ros1Dsr_msgsGetLastAlarmResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsGetLastAlarmResponse:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.log_alarm
    _write_Ros1Dsr_msgsLogAlarm(writer, _part0)
    _part1 = value.success
    if type(_part1) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part1), 1)
    if not 25 <= len(writer.data) - _start <= 793:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsGetLastAlarmResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetLastAlarmResponse()
    value.log_alarm = _read_Ros1Dsr_msgsLogAlarm(reader)
    value.success = _read_bool(reader)
    if not 25 <= reader.position - _start <= 793:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsGetModbusInputRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/GetModbusInputRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_812e7d2d259db6a466dd304239aee910848a1fb9059c431f3495825d8ebe800c"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    name: _py_str = ""

    def encode(self):
        writer = _Writer(260)
        _write_Ros1Dsr_msgsGetModbusInputRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 260)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetModbusInputRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 4, 260))
        value = _read_Ros1Dsr_msgsGetModbusInputRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetModbusInputRequest = Ros1Dsr_msgsGetModbusInputRequest


def _write_Ros1Dsr_msgsGetModbusInputRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsGetModbusInputRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.name
    _write_text(writer, _part0, 256)
    if not 4 <= len(writer.data) - _start <= 260:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsGetModbusInputRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetModbusInputRequest()
    value.name = _read_text(reader, 256)
    if not 4 <= reader.position - _start <= 260:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsGetModbusInputResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/GetModbusInputResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_29360b7702eec80f1dd7915cc8bb58fb5126d93b545cb921b7eb9c3ffa0b49d5"
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
        _write_Ros1Dsr_msgsGetModbusInputResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 5, 5)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetModbusInputResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 5, 5))
        value = _read_Ros1Dsr_msgsGetModbusInputResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetModbusInputResponse = Ros1Dsr_msgsGetModbusInputResponse


def _write_Ros1Dsr_msgsGetModbusInputResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsGetModbusInputResponse:
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


def _read_Ros1Dsr_msgsGetModbusInputResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetModbusInputResponse()
    value.value = reader.integer(4, True)
    value.success = _read_bool(reader)
    if not 5 <= reader.position - _start <= 5:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsGetOrientationErrorRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/GetOrientationErrorRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_db1e637c2f187602b5c3aaa2b3e33fb1b7636b28281832d393d3516984e9e01e"
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
        _write_Ros1Dsr_msgsGetOrientationErrorRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 97, 97)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetOrientationErrorRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 97, 97))
        value = _read_Ros1Dsr_msgsGetOrientationErrorRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetOrientationErrorRequest = Ros1Dsr_msgsGetOrientationErrorRequest


def _write_Ros1Dsr_msgsGetOrientationErrorRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsGetOrientationErrorRequest:
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


def _read_Ros1Dsr_msgsGetOrientationErrorRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetOrientationErrorRequest()
    value.xd = [reader.f64() for _ in range(6)]
    value.xc = [reader.f64() for _ in range(6)]
    value.axis = reader.integer(1, True)
    if not 97 <= reader.position - _start <= 97:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsGetOrientationErrorResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/GetOrientationErrorResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_909be18b65c95198ce5c5a7b2a11ae97cfad9509c360aec833bbfd239497b9e6"
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
        _write_Ros1Dsr_msgsGetOrientationErrorResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 5, 5)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetOrientationErrorResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 5, 5))
        value = _read_Ros1Dsr_msgsGetOrientationErrorResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetOrientationErrorResponse = Ros1Dsr_msgsGetOrientationErrorResponse


def _write_Ros1Dsr_msgsGetOrientationErrorResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsGetOrientationErrorResponse:
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


def _read_Ros1Dsr_msgsGetOrientationErrorResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetOrientationErrorResponse()
    value.ori_error = reader.f32()
    value.success = _read_bool(reader)
    if not 5 <= reader.position - _start <= 5:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsGetRobotModeRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/GetRobotModeRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_228237c16ea308e25d1a5fb7f74713a31a67e6e1e6b0a94f06c30264ed90af90"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Dsr_msgsGetRobotModeRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetRobotModeRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Dsr_msgsGetRobotModeRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetRobotModeRequest = Ros1Dsr_msgsGetRobotModeRequest


def _write_Ros1Dsr_msgsGetRobotModeRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsGetRobotModeRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros1Dsr_msgsGetRobotModeRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetRobotModeRequest()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsGetRobotModeResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/GetRobotModeResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_559f9328cba413aa572f66818aace6061020777c2cbb6bea475adf3cbca1a88c"
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
        _write_Ros1Dsr_msgsGetRobotModeResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 2, 2)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetRobotModeResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 2, 2))
        value = _read_Ros1Dsr_msgsGetRobotModeResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetRobotModeResponse = Ros1Dsr_msgsGetRobotModeResponse


def _write_Ros1Dsr_msgsGetRobotModeResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsGetRobotModeResponse:
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


def _read_Ros1Dsr_msgsGetRobotModeResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetRobotModeResponse()
    value.robot_mode = reader.integer(1, True)
    value.success = _read_bool(reader)
    if not 2 <= reader.position - _start <= 2:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsGetRobotSpeedModeRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/GetRobotSpeedModeRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_ff02ad740851d4dc6955206ffa3556f6564854bd6edd6a8190ce44f8ba9709d4"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Dsr_msgsGetRobotSpeedModeRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetRobotSpeedModeRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Dsr_msgsGetRobotSpeedModeRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetRobotSpeedModeRequest = Ros1Dsr_msgsGetRobotSpeedModeRequest


def _write_Ros1Dsr_msgsGetRobotSpeedModeRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsGetRobotSpeedModeRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros1Dsr_msgsGetRobotSpeedModeRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetRobotSpeedModeRequest()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsGetRobotSpeedModeResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/GetRobotSpeedModeResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_eaef45ce098108c89a49b2ed3e0cfeba901d7a9e8e4fee86d7c646e181cfe3c4"
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
        _write_Ros1Dsr_msgsGetRobotSpeedModeResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 2, 2)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetRobotSpeedModeResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 2, 2))
        value = _read_Ros1Dsr_msgsGetRobotSpeedModeResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetRobotSpeedModeResponse = Ros1Dsr_msgsGetRobotSpeedModeResponse


def _write_Ros1Dsr_msgsGetRobotSpeedModeResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsGetRobotSpeedModeResponse:
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


def _read_Ros1Dsr_msgsGetRobotSpeedModeResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetRobotSpeedModeResponse()
    value.speed_mode = reader.integer(1, True)
    value.success = _read_bool(reader)
    if not 2 <= reader.position - _start <= 2:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsGetRobotStateRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/GetRobotStateRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_b773b6fe4f08ade05cc0bac7e0d70cb7edcfa763f83608d944bf072da4ad08bc"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Dsr_msgsGetRobotStateRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetRobotStateRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Dsr_msgsGetRobotStateRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetRobotStateRequest = Ros1Dsr_msgsGetRobotStateRequest


def _write_Ros1Dsr_msgsGetRobotStateRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsGetRobotStateRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros1Dsr_msgsGetRobotStateRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetRobotStateRequest()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsGetRobotStateResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/GetRobotStateResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_1e210aa1fd0a833b8d8dedbbda759f12b860c7cbe161f2bed50b41015451ba51"
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
        _write_Ros1Dsr_msgsGetRobotStateResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 2, 2)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetRobotStateResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 2, 2))
        value = _read_Ros1Dsr_msgsGetRobotStateResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetRobotStateResponse = Ros1Dsr_msgsGetRobotStateResponse


def _write_Ros1Dsr_msgsGetRobotStateResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsGetRobotStateResponse:
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


def _read_Ros1Dsr_msgsGetRobotStateResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetRobotStateResponse()
    value.robot_state = reader.integer(1, True)
    value.success = _read_bool(reader)
    if not 2 <= reader.position - _start <= 2:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsGetRobotSystemRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/GetRobotSystemRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_43cc52a8d4b5e36ace679eb3f5bad943b3052bb0dec9f8af6f58f2d5c7deb203"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Dsr_msgsGetRobotSystemRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetRobotSystemRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Dsr_msgsGetRobotSystemRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetRobotSystemRequest = Ros1Dsr_msgsGetRobotSystemRequest


def _write_Ros1Dsr_msgsGetRobotSystemRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsGetRobotSystemRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros1Dsr_msgsGetRobotSystemRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetRobotSystemRequest()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsGetRobotSystemResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/GetRobotSystemResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_b7f7ec9a3e0bf607295bc5d0af1d82d192bc35103401c913c4ed8a8c77811c7f"
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
        _write_Ros1Dsr_msgsGetRobotSystemResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 2, 2)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetRobotSystemResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 2, 2))
        value = _read_Ros1Dsr_msgsGetRobotSystemResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetRobotSystemResponse = Ros1Dsr_msgsGetRobotSystemResponse


def _write_Ros1Dsr_msgsGetRobotSystemResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsGetRobotSystemResponse:
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


def _read_Ros1Dsr_msgsGetRobotSystemResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetRobotSystemResponse()
    value.robot_system = reader.integer(1, True)
    value.success = _read_bool(reader)
    if not 2 <= reader.position - _start <= 2:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsGetSolutionSpaceRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/GetSolutionSpaceRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_416c6623add6fed0900f585292905890932f326162a1431b481b28aac52c7bf3"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 48
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 48
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 48
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    pos: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])

    def encode(self):
        writer = _Writer(48)
        _write_Ros1Dsr_msgsGetSolutionSpaceRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 48, 48)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetSolutionSpaceRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 48, 48))
        value = _read_Ros1Dsr_msgsGetSolutionSpaceRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetSolutionSpaceRequest = Ros1Dsr_msgsGetSolutionSpaceRequest


def _write_Ros1Dsr_msgsGetSolutionSpaceRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsGetSolutionSpaceRequest:
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


def _read_Ros1Dsr_msgsGetSolutionSpaceRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetSolutionSpaceRequest()
    value.pos = [reader.f64() for _ in range(6)]
    if not 48 <= reader.position - _start <= 48:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsGetSolutionSpaceResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/GetSolutionSpaceResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_d6cf69fb571a6947cabc01a594e84d1eed7a581511e755db9dde5452f1230511"
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
        _write_Ros1Dsr_msgsGetSolutionSpaceResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 2, 2)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetSolutionSpaceResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 2, 2))
        value = _read_Ros1Dsr_msgsGetSolutionSpaceResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetSolutionSpaceResponse = Ros1Dsr_msgsGetSolutionSpaceResponse


def _write_Ros1Dsr_msgsGetSolutionSpaceResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsGetSolutionSpaceResponse:
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


def _read_Ros1Dsr_msgsGetSolutionSpaceResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetSolutionSpaceResponse()
    value.sol_space = reader.integer(1, True)
    value.success = _read_bool(reader)
    if not 2 <= reader.position - _start <= 2:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsGetToolDigitalInputRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/GetToolDigitalInputRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_a8fa1714fc6c5d9082f6909ad8562c87e1bd95e40168701c1dc670e614b5dd70"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    index: _py_int = 0

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsGetToolDigitalInputRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetToolDigitalInputRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsGetToolDigitalInputRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetToolDigitalInputRequest = Ros1Dsr_msgsGetToolDigitalInputRequest


def _write_Ros1Dsr_msgsGetToolDigitalInputRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsGetToolDigitalInputRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.index
    writer.integer(_part0, 1, True)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsGetToolDigitalInputRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetToolDigitalInputRequest()
    value.index = reader.integer(1, True)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsGetToolDigitalInputResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/GetToolDigitalInputResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_ba289ccf352c0560a70d99ec99a95c01b84ab7436f5638874ae4e1d89364a8b6"
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
        _write_Ros1Dsr_msgsGetToolDigitalInputResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 2, 2)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetToolDigitalInputResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 2, 2))
        value = _read_Ros1Dsr_msgsGetToolDigitalInputResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetToolDigitalInputResponse = Ros1Dsr_msgsGetToolDigitalInputResponse


def _write_Ros1Dsr_msgsGetToolDigitalInputResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsGetToolDigitalInputResponse:
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


def _read_Ros1Dsr_msgsGetToolDigitalInputResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetToolDigitalInputResponse()
    value.value = reader.integer(1, True)
    value.success = _read_bool(reader)
    if not 2 <= reader.position - _start <= 2:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsGetToolDigitalOutputRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/GetToolDigitalOutputRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_bfed701bd5b788685802e15709a594b065dff57f5c6706b14ad41bc6f80736ce"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    index: _py_int = 0

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsGetToolDigitalOutputRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetToolDigitalOutputRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsGetToolDigitalOutputRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetToolDigitalOutputRequest = Ros1Dsr_msgsGetToolDigitalOutputRequest


def _write_Ros1Dsr_msgsGetToolDigitalOutputRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsGetToolDigitalOutputRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.index
    writer.integer(_part0, 1, True)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsGetToolDigitalOutputRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetToolDigitalOutputRequest()
    value.index = reader.integer(1, True)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsGetToolDigitalOutputResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/GetToolDigitalOutputResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_0873d83b7b79d0270af4d61d86fd77bb248a75ebfe91177e4acc9299c46a309d"
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
        _write_Ros1Dsr_msgsGetToolDigitalOutputResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 2, 2)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetToolDigitalOutputResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 2, 2))
        value = _read_Ros1Dsr_msgsGetToolDigitalOutputResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetToolDigitalOutputResponse = Ros1Dsr_msgsGetToolDigitalOutputResponse


def _write_Ros1Dsr_msgsGetToolDigitalOutputResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsGetToolDigitalOutputResponse:
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


def _read_Ros1Dsr_msgsGetToolDigitalOutputResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetToolDigitalOutputResponse()
    value.value = reader.integer(1, True)
    value.success = _read_bool(reader)
    if not 2 <= reader.position - _start <= 2:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsGetToolForceRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/GetToolForceRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_2df77a1075113a1c8febd77c89e13417c596c6d1d4abd26454a4439620e397b4"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    ref: _py_int = 0

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsGetToolForceRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetToolForceRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsGetToolForceRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetToolForceRequest = Ros1Dsr_msgsGetToolForceRequest


def _write_Ros1Dsr_msgsGetToolForceRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsGetToolForceRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.ref
    writer.integer(_part0, 1, True)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsGetToolForceRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetToolForceRequest()
    value.ref = reader.integer(1, True)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsGetToolForceResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/GetToolForceResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_11dfdda93d1818dbcb331bba86cf08815f24bb8adb34e70792a730ce27d95ed9"
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
        _write_Ros1Dsr_msgsGetToolForceResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 49, 49)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetToolForceResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 49, 49))
        value = _read_Ros1Dsr_msgsGetToolForceResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetToolForceResponse = Ros1Dsr_msgsGetToolForceResponse


def _write_Ros1Dsr_msgsGetToolForceResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsGetToolForceResponse:
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


def _read_Ros1Dsr_msgsGetToolForceResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetToolForceResponse()
    value.tool_force = [reader.f64() for _ in range(6)]
    value.success = _read_bool(reader)
    if not 49 <= reader.position - _start <= 49:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsGetUserCartCoordRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/GetUserCartCoordRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_07824b4c8403d59fad8e8a33c615fcf96a0556bd8de1c1639a16d3aa28db0637"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    id: _py_int = 0

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsGetUserCartCoordRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetUserCartCoordRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsGetUserCartCoordRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetUserCartCoordRequest = Ros1Dsr_msgsGetUserCartCoordRequest


def _write_Ros1Dsr_msgsGetUserCartCoordRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsGetUserCartCoordRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.id
    writer.integer(_part0, 1, True)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsGetUserCartCoordRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetUserCartCoordRequest()
    value.id = reader.integer(1, True)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsGetUserCartCoordResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/GetUserCartCoordResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_2fea411082260a3dbaf3fb3f4c1314f74dda9fb864222fe5837e1d5f62502a22"
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
        _write_Ros1Dsr_msgsGetUserCartCoordResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 50, 50)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetUserCartCoordResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 50, 50))
        value = _read_Ros1Dsr_msgsGetUserCartCoordResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetUserCartCoordResponse = Ros1Dsr_msgsGetUserCartCoordResponse


def _write_Ros1Dsr_msgsGetUserCartCoordResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsGetUserCartCoordResponse:
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


def _read_Ros1Dsr_msgsGetUserCartCoordResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetUserCartCoordResponse()
    value.conv_posx = [reader.f64() for _ in range(6)]
    value.ref = reader.integer(1, True)
    value.success = _read_bool(reader)
    if not 50 <= reader.position - _start <= 50:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsGetWorkpieceWeightRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/GetWorkpieceWeightRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_fa987920bd5c89882bd52b444bec319c5b83c3fdf6086c065c87e924d40890ec"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Dsr_msgsGetWorkpieceWeightRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetWorkpieceWeightRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Dsr_msgsGetWorkpieceWeightRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetWorkpieceWeightRequest = Ros1Dsr_msgsGetWorkpieceWeightRequest


def _write_Ros1Dsr_msgsGetWorkpieceWeightRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsGetWorkpieceWeightRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros1Dsr_msgsGetWorkpieceWeightRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetWorkpieceWeightRequest()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsGetWorkpieceWeightResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/GetWorkpieceWeightResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_687f2eaa565bbbb878ff0018ad4fa9bc1596316cbbb83c07df85df5cd81887ca"
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
        _write_Ros1Dsr_msgsGetWorkpieceWeightResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 5, 5)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetWorkpieceWeightResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 5, 5))
        value = _read_Ros1Dsr_msgsGetWorkpieceWeightResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetWorkpieceWeightResponse = Ros1Dsr_msgsGetWorkpieceWeightResponse


def _write_Ros1Dsr_msgsGetWorkpieceWeightResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsGetWorkpieceWeightResponse:
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


def _read_Ros1Dsr_msgsGetWorkpieceWeightResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetWorkpieceWeightResponse()
    value.weight = reader.f32()
    value.success = _read_bool(reader)
    if not 5 <= reader.position - _start <= 5:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsIkinRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/IkinRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_64192c8fc182151b11fe48b99d05e142994a0724cbde8572058378e843fe7f27"
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
        _write_Ros1Dsr_msgsIkinRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 50, 50)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsIkinRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 50, 50))
        value = _read_Ros1Dsr_msgsIkinRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsIkinRequest = Ros1Dsr_msgsIkinRequest


def _write_Ros1Dsr_msgsIkinRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsIkinRequest:
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


def _read_Ros1Dsr_msgsIkinRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsIkinRequest()
    value.pos = [reader.f64() for _ in range(6)]
    value.sol_space = reader.integer(1, True)
    value.ref = reader.integer(1, True)
    if not 50 <= reader.position - _start <= 50:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsIkinResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/IkinResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_fa64a9417d777219d7142d600391a80c0001464e3777174bef040ecd80df1e23"
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
        _write_Ros1Dsr_msgsIkinResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 49, 49)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsIkinResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 49, 49))
        value = _read_Ros1Dsr_msgsIkinResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsIkinResponse = Ros1Dsr_msgsIkinResponse


def _write_Ros1Dsr_msgsIkinResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsIkinResponse:
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


def _read_Ros1Dsr_msgsIkinResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsIkinResponse()
    value.conv_posj = [reader.f64() for _ in range(6)]
    value.success = _read_bool(reader)
    if not 49 <= reader.position - _start <= 49:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsIsDoneBoltTighteningRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/IsDoneBoltTighteningRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_40ab245e2e736f9171f7ab55ff340717ef3f1ec89614730f4f9e3811ba6afa9e"
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
        _write_Ros1Dsr_msgsIsDoneBoltTighteningRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 17, 17)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsIsDoneBoltTighteningRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 17, 17))
        value = _read_Ros1Dsr_msgsIsDoneBoltTighteningRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsIsDoneBoltTighteningRequest = Ros1Dsr_msgsIsDoneBoltTighteningRequest


def _write_Ros1Dsr_msgsIsDoneBoltTighteningRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsIsDoneBoltTighteningRequest:
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


def _read_Ros1Dsr_msgsIsDoneBoltTighteningRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsIsDoneBoltTighteningRequest()
    value.m = reader.f64()
    value.timeout = reader.f64()
    value.axis = reader.integer(1, True)
    if not 17 <= reader.position - _start <= 17:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsIsDoneBoltTighteningResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/IsDoneBoltTighteningResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_86e7eb378e84a1feec9b2abfb3b8af889b9cf986c7455e0d74bb8832af6ff611"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsIsDoneBoltTighteningResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsIsDoneBoltTighteningResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsIsDoneBoltTighteningResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsIsDoneBoltTighteningResponse = Ros1Dsr_msgsIsDoneBoltTighteningResponse


def _write_Ros1Dsr_msgsIsDoneBoltTighteningResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsIsDoneBoltTighteningResponse:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsIsDoneBoltTighteningResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsIsDoneBoltTighteningResponse()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsJogRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/JogRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_28c6930998059030e74613930bd86066b3a37a490f7f438395eed15570617f7a"
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
        _write_Ros1Dsr_msgsJogRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 10, 10)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsJogRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 10, 10))
        value = _read_Ros1Dsr_msgsJogRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsJogRequest = Ros1Dsr_msgsJogRequest


def _write_Ros1Dsr_msgsJogRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsJogRequest:
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


def _read_Ros1Dsr_msgsJogRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsJogRequest()
    value.jog_axis = reader.integer(1, True)
    value.move_reference = reader.integer(1, True)
    value.speed = reader.f64()
    if not 10 <= reader.position - _start <= 10:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsJogResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/JogResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_f87fba5fb96bd9ae52d16a519b20ca7ea2c17560b15bd8543a9484282e1967d7"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsJogResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsJogResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsJogResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsJogResponse = Ros1Dsr_msgsJogResponse


def _write_Ros1Dsr_msgsJogResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsJogResponse:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsJogResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsJogResponse()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsJogMultiRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/JogMultiRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_f24271474302516dfce0dde848b2420490c35800b12d2fbdf5250ebbffc25cea"
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
        _write_Ros1Dsr_msgsJogMultiRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 57, 57)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsJogMultiRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 57, 57))
        value = _read_Ros1Dsr_msgsJogMultiRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsJogMultiRequest = Ros1Dsr_msgsJogMultiRequest


def _write_Ros1Dsr_msgsJogMultiRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsJogMultiRequest:
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


def _read_Ros1Dsr_msgsJogMultiRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsJogMultiRequest()
    value.jog_axis = [reader.f64() for _ in range(6)]
    value.move_reference = reader.integer(1, True)
    value.speed = reader.f64()
    if not 57 <= reader.position - _start <= 57:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsJogMultiResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/JogMultiResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_fecf5222e690c35fe0503c56d12e06b375d55ffab9ea0bbef96270729305a64a"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsJogMultiResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsJogMultiResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsJogMultiResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsJogMultiResponse = Ros1Dsr_msgsJogMultiResponse


def _write_Ros1Dsr_msgsJogMultiResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsJogMultiResponse:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsJogMultiResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsJogMultiResponse()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsJogMultiAxis:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/JogMultiAxis"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_ee64c6ccdfa3726ebbfc0b3779f878cbbece6fe878cbfbc14fa45eed4486de02"
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
        _write_Ros1Dsr_msgsJogMultiAxis(writer, self)
        wire = writer.finish()
        return _wire(wire, 57, 57)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsJogMultiAxis:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 57, 57))
        value = _read_Ros1Dsr_msgsJogMultiAxis(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsJogMultiAxis = Ros1Dsr_msgsJogMultiAxis


def _write_Ros1Dsr_msgsJogMultiAxis(writer, value):
    if type(value) is not Ros1Dsr_msgsJogMultiAxis:
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


def _read_Ros1Dsr_msgsJogMultiAxis(reader):
    _start = reader.position
    value = Ros1Dsr_msgsJogMultiAxis()
    value.jog_axis = [reader.f64() for _ in range(6)]
    value.move_reference = reader.integer(1, True)
    value.speed = reader.f64()
    if not 57 <= reader.position - _start <= 57:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsModbusState:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/ModbusState"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_e107e7ff86b98e9c58565f3a2889ac50ea49ecc6efb9c982d29b075086fe3ae9"
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
        _write_Ros1Dsr_msgsModbusState(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 264)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsModbusState:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 8, 264))
        value = _read_Ros1Dsr_msgsModbusState(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsModbusState = Ros1Dsr_msgsModbusState


def _write_Ros1Dsr_msgsModbusState(writer, value):
    if type(value) is not Ros1Dsr_msgsModbusState:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.modbus_symbol
    _write_text(writer, _part0, 256)
    _part1 = value.modbus_value
    writer.integer(_part1, 4, True)
    if not 8 <= len(writer.data) - _start <= 264:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsModbusState(reader):
    _start = reader.position
    value = Ros1Dsr_msgsModbusState()
    value.modbus_symbol = _read_text(reader, 256)
    value.modbus_value = reader.integer(4, True)
    if not 8 <= reader.position - _start <= 264:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsMoveBlendingRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/MoveBlendingRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_70b7fb3501e9677b76ed8f893883090e500be36ff8175edce8fd6d6d4f23e4e6"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 48
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 2256
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 2256
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    segment: _py_list[_record_Ros1Std_msgsFloat64MultiArray] = _field(default_factory=lambda: [])
    posCnt: _py_int = 0
    vel: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(2)])
    acc: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(2)])
    time: _py_float = 0.0
    ref: _py_int = 0
    mode: _py_int = 0
    syncType: _py_int = 0

    def encode(self):
        writer = _Writer(2256)
        _write_Ros1Dsr_msgsMoveBlendingRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 48, 2256)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsMoveBlendingRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 48, 2256))
        value = _read_Ros1Dsr_msgsMoveBlendingRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsMoveBlendingRequest = Ros1Dsr_msgsMoveBlendingRequest


def _write_Ros1Dsr_msgsMoveBlendingRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsMoveBlendingRequest:
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
        _write_Ros1Std_msgsFloat64MultiArray(writer, _element)
    _part1 = value.posCnt
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
    _part7 = value.syncType
    writer.integer(_part7, 1, True)
    if not 48 <= len(writer.data) - _start <= 2256:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsMoveBlendingRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsMoveBlendingRequest()
    value.segment = [_read_Ros1Std_msgsFloat64MultiArray(reader) for _ in range(_read_count(reader, 6, 12))]
    value.posCnt = reader.integer(1, True)
    value.vel = [reader.f64() for _ in range(2)]
    value.acc = [reader.f64() for _ in range(2)]
    value.time = reader.f64()
    value.ref = reader.integer(1, True)
    value.mode = reader.integer(1, True)
    value.syncType = reader.integer(1, True)
    if not 48 <= reader.position - _start <= 2256:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsMoveBlendingResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/MoveBlendingResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_9c5697b77eaad084e9870d5ca1a1a960e22bd87137f2a1035daa9f014cc28eb6"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsMoveBlendingResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsMoveBlendingResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsMoveBlendingResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsMoveBlendingResponse = Ros1Dsr_msgsMoveBlendingResponse


def _write_Ros1Dsr_msgsMoveBlendingResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsMoveBlendingResponse:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsMoveBlendingResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsMoveBlendingResponse()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsMoveCircleRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/MoveCircleRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_39c6ea4c3b15ae9866db805863a5c5c542bbf7b104adcd81a13425719fd994f4"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 72
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 2280
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 2280
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    pos: _py_list[_record_Ros1Std_msgsFloat64MultiArray] = _field(default_factory=lambda: [])
    vel: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(2)])
    acc: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(2)])
    time: _py_float = 0.0
    radius: _py_float = 0.0
    ref: _py_int = 0
    mode: _py_int = 0
    angle1: _py_float = 0.0
    angle2: _py_float = 0.0
    blendType: _py_int = 0
    syncType: _py_int = 0

    def encode(self):
        writer = _Writer(2280)
        _write_Ros1Dsr_msgsMoveCircleRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 72, 2280)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsMoveCircleRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 72, 2280))
        value = _read_Ros1Dsr_msgsMoveCircleRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsMoveCircleRequest = Ros1Dsr_msgsMoveCircleRequest


def _write_Ros1Dsr_msgsMoveCircleRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsMoveCircleRequest:
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
        _write_Ros1Std_msgsFloat64MultiArray(writer, _element)
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
    _part9 = value.blendType
    writer.integer(_part9, 1, True)
    _part10 = value.syncType
    writer.integer(_part10, 1, True)
    if not 72 <= len(writer.data) - _start <= 2280:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsMoveCircleRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsMoveCircleRequest()
    value.pos = [_read_Ros1Std_msgsFloat64MultiArray(reader) for _ in range(_read_count(reader, 6, 12))]
    value.vel = [reader.f64() for _ in range(2)]
    value.acc = [reader.f64() for _ in range(2)]
    value.time = reader.f64()
    value.radius = reader.f64()
    value.ref = reader.integer(1, True)
    value.mode = reader.integer(1, True)
    value.angle1 = reader.f64()
    value.angle2 = reader.f64()
    value.blendType = reader.integer(1, True)
    value.syncType = reader.integer(1, True)
    if not 72 <= reader.position - _start <= 2280:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsMoveCircleResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/MoveCircleResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_a5950bd2e98ce04a5b2261eec3c95f65613f3fb60d8d1779c6a8bcbb28fa42f3"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsMoveCircleResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsMoveCircleResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsMoveCircleResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsMoveCircleResponse = Ros1Dsr_msgsMoveCircleResponse


def _write_Ros1Dsr_msgsMoveCircleResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsMoveCircleResponse:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsMoveCircleResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsMoveCircleResponse()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsMoveHomeRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/MoveHomeRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_99b3fe492438ffc71627412077f7b0ced950e0f6038722ecfb34191093e0308f"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    target: _py_int = 0

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsMoveHomeRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsMoveHomeRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsMoveHomeRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsMoveHomeRequest = Ros1Dsr_msgsMoveHomeRequest


def _write_Ros1Dsr_msgsMoveHomeRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsMoveHomeRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.target
    writer.integer(_part0, 1, True)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsMoveHomeRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsMoveHomeRequest()
    value.target = reader.integer(1, True)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsMoveHomeResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/MoveHomeResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_9906457df2f7eccd40564fb7ba76fe7245ad943f20461bf23192cfbcba3a596f"
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
        _write_Ros1Dsr_msgsMoveHomeResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 2, 2)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsMoveHomeResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 2, 2))
        value = _read_Ros1Dsr_msgsMoveHomeResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsMoveHomeResponse = Ros1Dsr_msgsMoveHomeResponse


def _write_Ros1Dsr_msgsMoveHomeResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsMoveHomeResponse:
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


def _read_Ros1Dsr_msgsMoveHomeResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsMoveHomeResponse()
    value.res = reader.integer(1, True)
    value.success = _read_bool(reader)
    if not 2 <= reader.position - _start <= 2:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsMoveJointRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/MoveJointRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_b244b9d86649987111dd94846a98260a464ac54b9074025689028be9a1ed6a03"
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
    blendType: _py_int = 0
    syncType: _py_int = 0

    def encode(self):
        writer = _Writer(83)
        _write_Ros1Dsr_msgsMoveJointRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 83, 83)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsMoveJointRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 83, 83))
        value = _read_Ros1Dsr_msgsMoveJointRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsMoveJointRequest = Ros1Dsr_msgsMoveJointRequest


def _write_Ros1Dsr_msgsMoveJointRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsMoveJointRequest:
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
    _part6 = value.blendType
    writer.integer(_part6, 1, True)
    _part7 = value.syncType
    writer.integer(_part7, 1, True)
    if not 83 <= len(writer.data) - _start <= 83:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsMoveJointRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsMoveJointRequest()
    value.pos = [reader.f64() for _ in range(6)]
    value.vel = reader.f64()
    value.acc = reader.f64()
    value.time = reader.f64()
    value.radius = reader.f64()
    value.mode = reader.integer(1, True)
    value.blendType = reader.integer(1, True)
    value.syncType = reader.integer(1, True)
    if not 83 <= reader.position - _start <= 83:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsMoveJointResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/MoveJointResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_66e1e0f7cf2043211218cd9d1c58bfb89ffaf7480a4adddb375c002321a3fcc4"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsMoveJointResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsMoveJointResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsMoveJointResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsMoveJointResponse = Ros1Dsr_msgsMoveJointResponse


def _write_Ros1Dsr_msgsMoveJointResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsMoveJointResponse:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsMoveJointResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsMoveJointResponse()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsMoveJointxRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/MoveJointxRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_d3a91ad268c65b3f4967c281c53301ec61b6aebdc4a55324103aac4d3ed392db"
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
    blendType: _py_int = 0
    sol: _py_int = 0
    syncType: _py_int = 0

    def encode(self):
        writer = _Writer(85)
        _write_Ros1Dsr_msgsMoveJointxRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 85, 85)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsMoveJointxRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 85, 85))
        value = _read_Ros1Dsr_msgsMoveJointxRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsMoveJointxRequest = Ros1Dsr_msgsMoveJointxRequest


def _write_Ros1Dsr_msgsMoveJointxRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsMoveJointxRequest:
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
    _part7 = value.blendType
    writer.integer(_part7, 1, True)
    _part8 = value.sol
    writer.integer(_part8, 1, True)
    _part9 = value.syncType
    writer.integer(_part9, 1, True)
    if not 85 <= len(writer.data) - _start <= 85:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsMoveJointxRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsMoveJointxRequest()
    value.pos = [reader.f64() for _ in range(6)]
    value.vel = reader.f64()
    value.acc = reader.f64()
    value.time = reader.f64()
    value.radius = reader.f64()
    value.ref = reader.integer(1, True)
    value.mode = reader.integer(1, True)
    value.blendType = reader.integer(1, True)
    value.sol = reader.integer(1, True)
    value.syncType = reader.integer(1, True)
    if not 85 <= reader.position - _start <= 85:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsMoveJointxResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/MoveJointxResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_9286ce396d98df17fa6cab04cd10ab449be09a07134799f09ae19082921103cc"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsMoveJointxResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsMoveJointxResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsMoveJointxResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsMoveJointxResponse = Ros1Dsr_msgsMoveJointxResponse


def _write_Ros1Dsr_msgsMoveJointxResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsMoveJointxResponse:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsMoveJointxResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsMoveJointxResponse()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsMoveLineRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/MoveLineRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_ef69f202700bbcfb829e8eedbb7189489f4c30a6f08702f368c5e7f9493b206e"
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
    blendType: _py_int = 0
    syncType: _py_int = 0

    def encode(self):
        writer = _Writer(100)
        _write_Ros1Dsr_msgsMoveLineRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 100, 100)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsMoveLineRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 100, 100))
        value = _read_Ros1Dsr_msgsMoveLineRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsMoveLineRequest = Ros1Dsr_msgsMoveLineRequest


def _write_Ros1Dsr_msgsMoveLineRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsMoveLineRequest:
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
    _part7 = value.blendType
    writer.integer(_part7, 1, True)
    _part8 = value.syncType
    writer.integer(_part8, 1, True)
    if not 100 <= len(writer.data) - _start <= 100:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsMoveLineRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsMoveLineRequest()
    value.pos = [reader.f64() for _ in range(6)]
    value.vel = [reader.f64() for _ in range(2)]
    value.acc = [reader.f64() for _ in range(2)]
    value.time = reader.f64()
    value.radius = reader.f64()
    value.ref = reader.integer(1, True)
    value.mode = reader.integer(1, True)
    value.blendType = reader.integer(1, True)
    value.syncType = reader.integer(1, True)
    if not 100 <= reader.position - _start <= 100:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsMoveLineResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/MoveLineResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_0d316d575a341637b3cbe5a2ee68734670ca6f3f9f5035b383194b8457afe82c"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsMoveLineResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsMoveLineResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsMoveLineResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsMoveLineResponse = Ros1Dsr_msgsMoveLineResponse


def _write_Ros1Dsr_msgsMoveLineResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsMoveLineResponse:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsMoveLineResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsMoveLineResponse()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsMovePauseRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/MovePauseRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_a25b42c1e8819548bfff8d108ec661b4a1137eeafd19d8805cfecdc4d14c5f19"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Dsr_msgsMovePauseRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsMovePauseRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Dsr_msgsMovePauseRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsMovePauseRequest = Ros1Dsr_msgsMovePauseRequest


def _write_Ros1Dsr_msgsMovePauseRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsMovePauseRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros1Dsr_msgsMovePauseRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsMovePauseRequest()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsMovePauseResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/MovePauseResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_148a3cc895846afa55520af770f76bc6118c313b5cfbf4d83d0f161b22171aed"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsMovePauseResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsMovePauseResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsMovePauseResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsMovePauseResponse = Ros1Dsr_msgsMovePauseResponse


def _write_Ros1Dsr_msgsMovePauseResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsMovePauseResponse:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsMovePauseResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsMovePauseResponse()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsMovePeriodicRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/MovePeriodicRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_73ffac70af9558b1be99d969ee99cf992816cf84ce97f29ef81036963fbd2d69"
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
    syncType: _py_int = 0

    def encode(self):
        writer = _Writer(107)
        _write_Ros1Dsr_msgsMovePeriodicRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 107, 107)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsMovePeriodicRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 107, 107))
        value = _read_Ros1Dsr_msgsMovePeriodicRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsMovePeriodicRequest = Ros1Dsr_msgsMovePeriodicRequest


def _write_Ros1Dsr_msgsMovePeriodicRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsMovePeriodicRequest:
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
    _part5 = value.syncType
    writer.integer(_part5, 1, True)
    if not 107 <= len(writer.data) - _start <= 107:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsMovePeriodicRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsMovePeriodicRequest()
    value.amp = [reader.f64() for _ in range(6)]
    value.periodic = [reader.f64() for _ in range(6)]
    value.acc = reader.f64()
    value.repeat = reader.integer(1, True)
    value.ref = reader.integer(1, True)
    value.syncType = reader.integer(1, True)
    if not 107 <= reader.position - _start <= 107:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsMovePeriodicResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/MovePeriodicResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_97f5baff448319a629f79ea38696662bfca6960af28150b8dfa07902cd7393b3"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsMovePeriodicResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsMovePeriodicResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsMovePeriodicResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsMovePeriodicResponse = Ros1Dsr_msgsMovePeriodicResponse


def _write_Ros1Dsr_msgsMovePeriodicResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsMovePeriodicResponse:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsMovePeriodicResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsMovePeriodicResponse()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsMoveResumeRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/MoveResumeRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_313ed9fb87f75b7a010a658e734390145b46050b1f554f863cf6c2afb7e60f1f"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Dsr_msgsMoveResumeRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsMoveResumeRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Dsr_msgsMoveResumeRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsMoveResumeRequest = Ros1Dsr_msgsMoveResumeRequest


def _write_Ros1Dsr_msgsMoveResumeRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsMoveResumeRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros1Dsr_msgsMoveResumeRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsMoveResumeRequest()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsMoveResumeResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/MoveResumeResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_072287041c0e4462d8994d15ad03c5c36db00c754565d99cf9d30a215100937a"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsMoveResumeResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsMoveResumeResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsMoveResumeResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsMoveResumeResponse = Ros1Dsr_msgsMoveResumeResponse


def _write_Ros1Dsr_msgsMoveResumeResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsMoveResumeResponse:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsMoveResumeResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsMoveResumeResponse()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsMoveSpiralRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/MoveSpiralRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_5b5a4a14ecc3021b9f98e44891c3c87011ba825fb6399e1ae5ef179257a4565c"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 67
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 67
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 67
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    revolution: _py_float = 0.0
    maxRadius: _py_float = 0.0
    maxLength: _py_float = 0.0
    vel: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(2)])
    acc: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(2)])
    time: _py_float = 0.0
    taskAxis: _py_int = 0
    ref: _py_int = 0
    syncType: _py_int = 0

    def encode(self):
        writer = _Writer(67)
        _write_Ros1Dsr_msgsMoveSpiralRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 67, 67)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsMoveSpiralRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 67, 67))
        value = _read_Ros1Dsr_msgsMoveSpiralRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsMoveSpiralRequest = Ros1Dsr_msgsMoveSpiralRequest


def _write_Ros1Dsr_msgsMoveSpiralRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsMoveSpiralRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.revolution
    writer.f64(_part0)
    _part1 = value.maxRadius
    writer.f64(_part1)
    _part2 = value.maxLength
    writer.f64(_part2)
    _part3 = value.vel
    if type(_part3) not in (list, tuple):
        raise TypeError("array value required")
    _count3 = len(_part3)
    if _count3 != 2:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count3):
        _element = _part3[_index]
        writer.f64(_element)
    _part4 = value.acc
    if type(_part4) not in (list, tuple):
        raise TypeError("array value required")
    _count4 = len(_part4)
    if _count4 != 2:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count4):
        _element = _part4[_index]
        writer.f64(_element)
    _part5 = value.time
    writer.f64(_part5)
    _part6 = value.taskAxis
    writer.integer(_part6, 1, True)
    _part7 = value.ref
    writer.integer(_part7, 1, True)
    _part8 = value.syncType
    writer.integer(_part8, 1, True)
    if not 67 <= len(writer.data) - _start <= 67:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsMoveSpiralRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsMoveSpiralRequest()
    value.revolution = reader.f64()
    value.maxRadius = reader.f64()
    value.maxLength = reader.f64()
    value.vel = [reader.f64() for _ in range(2)]
    value.acc = [reader.f64() for _ in range(2)]
    value.time = reader.f64()
    value.taskAxis = reader.integer(1, True)
    value.ref = reader.integer(1, True)
    value.syncType = reader.integer(1, True)
    if not 67 <= reader.position - _start <= 67:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsMoveSpiralResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/MoveSpiralResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_be420ead496b05aafd3aa152a89bd04cc6dc1e584e700019a568f0dcae3a7691"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsMoveSpiralResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsMoveSpiralResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsMoveSpiralResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsMoveSpiralResponse = Ros1Dsr_msgsMoveSpiralResponse


def _write_Ros1Dsr_msgsMoveSpiralResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsMoveSpiralResponse:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsMoveSpiralResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsMoveSpiralResponse()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsMoveSplineJointRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/MoveSplineJointRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_f5ccf9a5eade1a2f7f11c741c26e3b045fa11d81d8f03587e4a527b0256e2a8a"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 111
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 2319
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 2319
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    pos: _py_list[_record_Ros1Std_msgsFloat64MultiArray] = _field(default_factory=lambda: [])
    posCnt: _py_int = 0
    vel: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    acc: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    time: _py_float = 0.0
    mode: _py_int = 0
    syncType: _py_int = 0

    def encode(self):
        writer = _Writer(2319)
        _write_Ros1Dsr_msgsMoveSplineJointRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 111, 2319)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsMoveSplineJointRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 111, 2319))
        value = _read_Ros1Dsr_msgsMoveSplineJointRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsMoveSplineJointRequest = Ros1Dsr_msgsMoveSplineJointRequest


def _write_Ros1Dsr_msgsMoveSplineJointRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsMoveSplineJointRequest:
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
        _write_Ros1Std_msgsFloat64MultiArray(writer, _element)
    _part1 = value.posCnt
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
    _part6 = value.syncType
    writer.integer(_part6, 1, True)
    if not 111 <= len(writer.data) - _start <= 2319:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsMoveSplineJointRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsMoveSplineJointRequest()
    value.pos = [_read_Ros1Std_msgsFloat64MultiArray(reader) for _ in range(_read_count(reader, 6, 12))]
    value.posCnt = reader.integer(1, True)
    value.vel = [reader.f64() for _ in range(6)]
    value.acc = [reader.f64() for _ in range(6)]
    value.time = reader.f64()
    value.mode = reader.integer(1, True)
    value.syncType = reader.integer(1, True)
    if not 111 <= reader.position - _start <= 2319:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsMoveSplineJointResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/MoveSplineJointResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_b6fe363893f83066cfbf079aedf9fd6161316fe698b1a02713761aa46adb6e68"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsMoveSplineJointResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsMoveSplineJointResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsMoveSplineJointResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsMoveSplineJointResponse = Ros1Dsr_msgsMoveSplineJointResponse


def _write_Ros1Dsr_msgsMoveSplineJointResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsMoveSplineJointResponse:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsMoveSplineJointResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsMoveSplineJointResponse()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsMoveSplineTaskRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/MoveSplineTaskRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_fa8ee3b180d331309471cb20a1dbe4b46a3493cc0c7298222017200d2ff65e5a"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 49
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 2257
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 2257
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    pos: _py_list[_record_Ros1Std_msgsFloat64MultiArray] = _field(default_factory=lambda: [])
    posCnt: _py_int = 0
    vel: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(2)])
    acc: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(2)])
    time: _py_float = 0.0
    ref: _py_int = 0
    mode: _py_int = 0
    opt: _py_int = 0
    syncType: _py_int = 0

    def encode(self):
        writer = _Writer(2257)
        _write_Ros1Dsr_msgsMoveSplineTaskRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 49, 2257)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsMoveSplineTaskRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 49, 2257))
        value = _read_Ros1Dsr_msgsMoveSplineTaskRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsMoveSplineTaskRequest = Ros1Dsr_msgsMoveSplineTaskRequest


def _write_Ros1Dsr_msgsMoveSplineTaskRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsMoveSplineTaskRequest:
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
        _write_Ros1Std_msgsFloat64MultiArray(writer, _element)
    _part1 = value.posCnt
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
    _part8 = value.syncType
    writer.integer(_part8, 1, True)
    if not 49 <= len(writer.data) - _start <= 2257:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsMoveSplineTaskRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsMoveSplineTaskRequest()
    value.pos = [_read_Ros1Std_msgsFloat64MultiArray(reader) for _ in range(_read_count(reader, 6, 12))]
    value.posCnt = reader.integer(1, True)
    value.vel = [reader.f64() for _ in range(2)]
    value.acc = [reader.f64() for _ in range(2)]
    value.time = reader.f64()
    value.ref = reader.integer(1, True)
    value.mode = reader.integer(1, True)
    value.opt = reader.integer(1, True)
    value.syncType = reader.integer(1, True)
    if not 49 <= reader.position - _start <= 2257:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsMoveSplineTaskResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/MoveSplineTaskResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_3d19b8f693f665703fc8b8ee151ee49ed94100de85668164f953095f718cdb7a"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsMoveSplineTaskResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsMoveSplineTaskResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsMoveSplineTaskResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsMoveSplineTaskResponse = Ros1Dsr_msgsMoveSplineTaskResponse


def _write_Ros1Dsr_msgsMoveSplineTaskResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsMoveSplineTaskResponse:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsMoveSplineTaskResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsMoveSplineTaskResponse()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsMoveStopRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/MoveStopRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_8591a7188be1a528bbbb4b62f134825e0bf0f41517709604ac06c537f01423e4"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 4
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 4
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    stop_mode: _py_int = 0

    def encode(self):
        writer = _Writer(4)
        _write_Ros1Dsr_msgsMoveStopRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 4)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsMoveStopRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 4, 4))
        value = _read_Ros1Dsr_msgsMoveStopRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsMoveStopRequest = Ros1Dsr_msgsMoveStopRequest


def _write_Ros1Dsr_msgsMoveStopRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsMoveStopRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.stop_mode
    writer.integer(_part0, 4, True)
    if not 4 <= len(writer.data) - _start <= 4:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsMoveStopRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsMoveStopRequest()
    value.stop_mode = reader.integer(4, True)
    if not 4 <= reader.position - _start <= 4:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsMoveStopResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/MoveStopResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_25580dd85be376dcb588ebe62a49394f0f9c92abd7b094c2552df86b64f87427"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsMoveStopResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsMoveStopResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsMoveStopResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsMoveStopResponse = Ros1Dsr_msgsMoveStopResponse


def _write_Ros1Dsr_msgsMoveStopResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsMoveStopResponse:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsMoveStopResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsMoveStopResponse()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsMoveWaitRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/MoveWaitRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_ca59fcddb15dd63fcf0481cb2e81be6a338d63167a15ad66585335eee1922a39"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Dsr_msgsMoveWaitRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsMoveWaitRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Dsr_msgsMoveWaitRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsMoveWaitRequest = Ros1Dsr_msgsMoveWaitRequest


def _write_Ros1Dsr_msgsMoveWaitRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsMoveWaitRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros1Dsr_msgsMoveWaitRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsMoveWaitRequest()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsMoveWaitResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/MoveWaitResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_764dd1fba59b88d4baae818b06b9c735f62f156e67842013d95d55381d32f232"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsMoveWaitResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsMoveWaitResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsMoveWaitResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsMoveWaitResponse = Ros1Dsr_msgsMoveWaitResponse


def _write_Ros1Dsr_msgsMoveWaitResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsMoveWaitResponse:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsMoveWaitResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsMoveWaitResponse()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsOverwriteUserCartCoordRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/OverwriteUserCartCoordRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_b89858cf40ee4ae756c90e048fb0cffd362dd2477ca23ba1172749353eb63721"
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
        _write_Ros1Dsr_msgsOverwriteUserCartCoordRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 50, 50)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsOverwriteUserCartCoordRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 50, 50))
        value = _read_Ros1Dsr_msgsOverwriteUserCartCoordRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsOverwriteUserCartCoordRequest = Ros1Dsr_msgsOverwriteUserCartCoordRequest


def _write_Ros1Dsr_msgsOverwriteUserCartCoordRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsOverwriteUserCartCoordRequest:
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


def _read_Ros1Dsr_msgsOverwriteUserCartCoordRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsOverwriteUserCartCoordRequest()
    value.id = reader.integer(1, True)
    value.pos = [reader.f64() for _ in range(6)]
    value.ref = reader.integer(1, True)
    if not 50 <= reader.position - _start <= 50:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsOverwriteUserCartCoordResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/OverwriteUserCartCoordResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_953c73d75e0381b067612ea733d58faf95919f5f20f940b6827396fc9d363833"
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
        _write_Ros1Dsr_msgsOverwriteUserCartCoordResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 2, 2)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsOverwriteUserCartCoordResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 2, 2))
        value = _read_Ros1Dsr_msgsOverwriteUserCartCoordResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsOverwriteUserCartCoordResponse = Ros1Dsr_msgsOverwriteUserCartCoordResponse


def _write_Ros1Dsr_msgsOverwriteUserCartCoordResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsOverwriteUserCartCoordResponse:
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


def _read_Ros1Dsr_msgsOverwriteUserCartCoordResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsOverwriteUserCartCoordResponse()
    value.id = reader.integer(1, True)
    value.success = _read_bool(reader)
    if not 2 <= reader.position - _start <= 2:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsParallelAxis1Request:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/ParallelAxis1Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_d032b8ab9d71b7f30b395c0f7ecf376e7ca056fa893479754780a90c8db7f7fe"
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
        _write_Ros1Dsr_msgsParallelAxis1Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 146, 146)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsParallelAxis1Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 146, 146))
        value = _read_Ros1Dsr_msgsParallelAxis1Request(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsParallelAxis1Request = Ros1Dsr_msgsParallelAxis1Request


def _write_Ros1Dsr_msgsParallelAxis1Request(writer, value):
    if type(value) is not Ros1Dsr_msgsParallelAxis1Request:
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


def _read_Ros1Dsr_msgsParallelAxis1Request(reader):
    _start = reader.position
    value = Ros1Dsr_msgsParallelAxis1Request()
    value.x1 = [reader.f64() for _ in range(6)]
    value.x2 = [reader.f64() for _ in range(6)]
    value.x3 = [reader.f64() for _ in range(6)]
    value.axis = reader.integer(1, True)
    value.ref = reader.integer(1, True)
    if not 146 <= reader.position - _start <= 146:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsParallelAxis1Response:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/ParallelAxis1Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_f7ba09a96d450b53ef9b2fb77b6de6a6e760de65fc8dce42dcbc7dace8fef543"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsParallelAxis1Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsParallelAxis1Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsParallelAxis1Response(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsParallelAxis1Response = Ros1Dsr_msgsParallelAxis1Response


def _write_Ros1Dsr_msgsParallelAxis1Response(writer, value):
    if type(value) is not Ros1Dsr_msgsParallelAxis1Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsParallelAxis1Response(reader):
    _start = reader.position
    value = Ros1Dsr_msgsParallelAxis1Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsParallelAxis2Request:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/ParallelAxis2Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_11dcf871306958211993961d60c607836696edf5c825bb7a109ec5efd885f191"
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
        _write_Ros1Dsr_msgsParallelAxis2Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 26, 26)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsParallelAxis2Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 26, 26))
        value = _read_Ros1Dsr_msgsParallelAxis2Request(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsParallelAxis2Request = Ros1Dsr_msgsParallelAxis2Request


def _write_Ros1Dsr_msgsParallelAxis2Request(writer, value):
    if type(value) is not Ros1Dsr_msgsParallelAxis2Request:
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


def _read_Ros1Dsr_msgsParallelAxis2Request(reader):
    _start = reader.position
    value = Ros1Dsr_msgsParallelAxis2Request()
    value.vect = [reader.f64() for _ in range(3)]
    value.axis = reader.integer(1, True)
    value.ref = reader.integer(1, True)
    if not 26 <= reader.position - _start <= 26:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsParallelAxis2Response:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/ParallelAxis2Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_41ca262ffdbabdde6ee4bbb0521813cc08cb56a86eb59335be8af82aa5d629c4"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsParallelAxis2Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsParallelAxis2Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsParallelAxis2Response(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsParallelAxis2Response = Ros1Dsr_msgsParallelAxis2Response


def _write_Ros1Dsr_msgsParallelAxis2Response(writer, value):
    if type(value) is not Ros1Dsr_msgsParallelAxis2Response:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsParallelAxis2Response(reader):
    _start = reader.position
    value = Ros1Dsr_msgsParallelAxis2Response()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsReleaseComplianceCtrlRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/ReleaseComplianceCtrlRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_963f201a73d6cb461e28bf94dc6223bf0c8e603adb96142cde94a764349ccdd2"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Dsr_msgsReleaseComplianceCtrlRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsReleaseComplianceCtrlRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Dsr_msgsReleaseComplianceCtrlRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsReleaseComplianceCtrlRequest = Ros1Dsr_msgsReleaseComplianceCtrlRequest


def _write_Ros1Dsr_msgsReleaseComplianceCtrlRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsReleaseComplianceCtrlRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros1Dsr_msgsReleaseComplianceCtrlRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsReleaseComplianceCtrlRequest()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsReleaseComplianceCtrlResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/ReleaseComplianceCtrlResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_5c5e9252fd9e8c346e8317f600fa46eb18c8e53be3447eddf3fb5f474a44682d"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsReleaseComplianceCtrlResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsReleaseComplianceCtrlResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsReleaseComplianceCtrlResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsReleaseComplianceCtrlResponse = Ros1Dsr_msgsReleaseComplianceCtrlResponse


def _write_Ros1Dsr_msgsReleaseComplianceCtrlResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsReleaseComplianceCtrlResponse:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsReleaseComplianceCtrlResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsReleaseComplianceCtrlResponse()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsReleaseForceRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/ReleaseForceRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_5809993bacca15147eaf819181a6c1d187512d169539b6125e112b56bc0d2bc2"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    time: _py_float = 0.0

    def encode(self):
        writer = _Writer(8)
        _write_Ros1Dsr_msgsReleaseForceRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 8)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsReleaseForceRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 8, 8))
        value = _read_Ros1Dsr_msgsReleaseForceRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsReleaseForceRequest = Ros1Dsr_msgsReleaseForceRequest


def _write_Ros1Dsr_msgsReleaseForceRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsReleaseForceRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.time
    writer.f64(_part0)
    if not 8 <= len(writer.data) - _start <= 8:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsReleaseForceRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsReleaseForceRequest()
    value.time = reader.f64()
    if not 8 <= reader.position - _start <= 8:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsReleaseForceResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/ReleaseForceResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_59e8fed1895c6e1664d689126a2df57918728f4006b20e50c1bc0055e76cc2d5"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsReleaseForceResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsReleaseForceResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsReleaseForceResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsReleaseForceResponse = Ros1Dsr_msgsReleaseForceResponse


def _write_Ros1Dsr_msgsReleaseForceResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsReleaseForceResponse:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsReleaseForceResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsReleaseForceResponse()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsResetWorkpieceWeightRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/ResetWorkpieceWeightRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_b2cf228390cc1aa473c6e1a9025d7ea7e789acb3f7dd6a0a4178402b6d843ed6"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Dsr_msgsResetWorkpieceWeightRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsResetWorkpieceWeightRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Dsr_msgsResetWorkpieceWeightRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsResetWorkpieceWeightRequest = Ros1Dsr_msgsResetWorkpieceWeightRequest


def _write_Ros1Dsr_msgsResetWorkpieceWeightRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsResetWorkpieceWeightRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros1Dsr_msgsResetWorkpieceWeightRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsResetWorkpieceWeightRequest()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsResetWorkpieceWeightResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/ResetWorkpieceWeightResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_f11776348fcebca43e64f7a635e2a080642a29c32762704029bd1429055cc025"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsResetWorkpieceWeightResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsResetWorkpieceWeightResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsResetWorkpieceWeightResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsResetWorkpieceWeightResponse = Ros1Dsr_msgsResetWorkpieceWeightResponse


def _write_Ros1Dsr_msgsResetWorkpieceWeightResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsResetWorkpieceWeightResponse:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsResetWorkpieceWeightResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsResetWorkpieceWeightResponse()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsRobotError:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/RobotError"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_86d4b7b2d131374e05e7fe9d53988f0ed6713deb337a37182ac4998951ca5641"
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
        _write_Ros1Dsr_msgsRobotError(writer, self)
        wire = writer.finish()
        return _wire(wire, 24, 792)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsRobotError:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 24, 792))
        value = _read_Ros1Dsr_msgsRobotError(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsRobotError = Ros1Dsr_msgsRobotError


def _write_Ros1Dsr_msgsRobotError(writer, value):
    if type(value) is not Ros1Dsr_msgsRobotError:
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


def _read_Ros1Dsr_msgsRobotError(reader):
    _start = reader.position
    value = Ros1Dsr_msgsRobotError()
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
class Ros1Dsr_msgsRobotState:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/RobotState"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_3f34278ee2cdceff51b3bb665ce314cc4a0d4e164b110969102a04c96e374456"
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
    rotation_matrix: _py_list[_record_Ros1Std_msgsFloat64MultiArray] = _field(default_factory=lambda: [])
    ctrlbox_digital_input: _py_list[_py_int] = _field(default_factory=lambda: [0 for _ in range(16)])
    ctrlbox_digital_output: _py_list[_py_int] = _field(default_factory=lambda: [0 for _ in range(16)])
    flange_digital_input: _py_list[_py_int] = _field(default_factory=lambda: [0 for _ in range(6)])
    flange_digital_output: _py_list[_py_int] = _field(default_factory=lambda: [0 for _ in range(6)])
    modbus_state: _py_list[_record_Ros1Dsr_msgsModbusState] = _field(default_factory=lambda: [])
    access_control: _py_int = 0
    homming_completed: _py_bool = False
    tp_initialized: _py_bool = False
    mastering_need: _py_int = 0
    drl_stopped: _py_bool = False
    disconnected: _py_bool = False
    fActualW2B: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    fCurrentPosW: _py_list[_record_Ros1Std_msgsFloat64MultiArray] = _field(default_factory=lambda: [])
    fCurrentVelW: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    fWorldETT: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    fTargetPosW: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    fTargetVelW: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    fRotationMatrixWorld: _py_list[_record_Ros1Std_msgsFloat64MultiArray] = _field(default_factory=lambda: [])
    iActualUCN: _py_int = 0
    iParent: _py_int = 0
    fCurrentPosU: _py_list[_record_Ros1Std_msgsFloat64MultiArray] = _field(default_factory=lambda: [])
    fCurrentVelU: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    fUserETT: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    fTargetPosU: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    fTargetVelU: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    fRotationMatrixUser: _py_list[_record_Ros1Std_msgsFloat64MultiArray] = _field(default_factory=lambda: [])
    fActualAI: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    bActualSW: _py_list[_py_bool] = _field(default_factory=lambda: [False for _ in range(3)])
    bActualSI: _py_list[_py_bool] = _field(default_factory=lambda: [False for _ in range(2)])
    iActualAT: _py_list[_py_int] = _field(default_factory=lambda: [0 for _ in range(2)])
    fTargetAO: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(2)])
    iTargetAT: _py_list[_py_int] = _field(default_factory=lambda: [0 for _ in range(2)])
    bActualES: _py_list[_py_bool] = _field(default_factory=lambda: [False for _ in range(2)])
    iActualED: _py_list[_py_int] = _field(default_factory=lambda: [0 for _ in range(2)])
    bActualER: _py_list[_py_bool] = _field(default_factory=lambda: [False for _ in range(2)])

    def encode(self):
        writer = _Writer(17004)
        _write_Ros1Dsr_msgsRobotState(writer, self)
        wire = writer.finish()
        return _wire(wire, 1484, 17004)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsRobotState:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1484, 17004))
        value = _read_Ros1Dsr_msgsRobotState(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsRobotState = Ros1Dsr_msgsRobotState


def _write_Ros1Dsr_msgsRobotState(writer, value):
    if type(value) is not Ros1Dsr_msgsRobotState:
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
        _write_Ros1Std_msgsFloat64MultiArray(writer, _element)
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
        _write_Ros1Dsr_msgsModbusState(writer, _element)
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
    _part38 = value.fActualW2B
    if type(_part38) not in (list, tuple):
        raise TypeError("array value required")
    _count38 = len(_part38)
    if _count38 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count38):
        _element = _part38[_index]
        writer.f64(_element)
    _part39 = value.fCurrentPosW
    if type(_part39) not in (list, tuple):
        raise TypeError("array value required")
    _count39 = len(_part39)
    if _count39 > 6:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count39, 4)
    for _index in range(_count39):
        _element = _part39[_index]
        _write_Ros1Std_msgsFloat64MultiArray(writer, _element)
    _part40 = value.fCurrentVelW
    if type(_part40) not in (list, tuple):
        raise TypeError("array value required")
    _count40 = len(_part40)
    if _count40 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count40):
        _element = _part40[_index]
        writer.f64(_element)
    _part41 = value.fWorldETT
    if type(_part41) not in (list, tuple):
        raise TypeError("array value required")
    _count41 = len(_part41)
    if _count41 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count41):
        _element = _part41[_index]
        writer.f64(_element)
    _part42 = value.fTargetPosW
    if type(_part42) not in (list, tuple):
        raise TypeError("array value required")
    _count42 = len(_part42)
    if _count42 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count42):
        _element = _part42[_index]
        writer.f64(_element)
    _part43 = value.fTargetVelW
    if type(_part43) not in (list, tuple):
        raise TypeError("array value required")
    _count43 = len(_part43)
    if _count43 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count43):
        _element = _part43[_index]
        writer.f64(_element)
    _part44 = value.fRotationMatrixWorld
    if type(_part44) not in (list, tuple):
        raise TypeError("array value required")
    _count44 = len(_part44)
    if _count44 > 6:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count44, 4)
    for _index in range(_count44):
        _element = _part44[_index]
        _write_Ros1Std_msgsFloat64MultiArray(writer, _element)
    _part45 = value.iActualUCN
    writer.integer(_part45, 1, True)
    _part46 = value.iParent
    writer.integer(_part46, 1, True)
    _part47 = value.fCurrentPosU
    if type(_part47) not in (list, tuple):
        raise TypeError("array value required")
    _count47 = len(_part47)
    if _count47 > 6:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count47, 4)
    for _index in range(_count47):
        _element = _part47[_index]
        _write_Ros1Std_msgsFloat64MultiArray(writer, _element)
    _part48 = value.fCurrentVelU
    if type(_part48) not in (list, tuple):
        raise TypeError("array value required")
    _count48 = len(_part48)
    if _count48 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count48):
        _element = _part48[_index]
        writer.f64(_element)
    _part49 = value.fUserETT
    if type(_part49) not in (list, tuple):
        raise TypeError("array value required")
    _count49 = len(_part49)
    if _count49 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count49):
        _element = _part49[_index]
        writer.f64(_element)
    _part50 = value.fTargetPosU
    if type(_part50) not in (list, tuple):
        raise TypeError("array value required")
    _count50 = len(_part50)
    if _count50 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count50):
        _element = _part50[_index]
        writer.f64(_element)
    _part51 = value.fTargetVelU
    if type(_part51) not in (list, tuple):
        raise TypeError("array value required")
    _count51 = len(_part51)
    if _count51 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count51):
        _element = _part51[_index]
        writer.f64(_element)
    _part52 = value.fRotationMatrixUser
    if type(_part52) not in (list, tuple):
        raise TypeError("array value required")
    _count52 = len(_part52)
    if _count52 > 6:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count52, 4)
    for _index in range(_count52):
        _element = _part52[_index]
        _write_Ros1Std_msgsFloat64MultiArray(writer, _element)
    _part53 = value.fActualAI
    if type(_part53) not in (list, tuple):
        raise TypeError("array value required")
    _count53 = len(_part53)
    if _count53 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count53):
        _element = _part53[_index]
        writer.f64(_element)
    _part54 = value.bActualSW
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
    _part55 = value.bActualSI
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
    _part56 = value.iActualAT
    if type(_part56) not in (list, tuple):
        raise TypeError("array value required")
    _count56 = len(_part56)
    if _count56 != 2:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count56):
        _element = _part56[_index]
        writer.integer(_element, 1, True)
    _part57 = value.fTargetAO
    if type(_part57) not in (list, tuple):
        raise TypeError("array value required")
    _count57 = len(_part57)
    if _count57 != 2:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count57):
        _element = _part57[_index]
        writer.f64(_element)
    _part58 = value.iTargetAT
    if type(_part58) not in (list, tuple):
        raise TypeError("array value required")
    _count58 = len(_part58)
    if _count58 != 2:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count58):
        _element = _part58[_index]
        writer.integer(_element, 1, True)
    _part59 = value.bActualES
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
    _part60 = value.iActualED
    if type(_part60) not in (list, tuple):
        raise TypeError("array value required")
    _count60 = len(_part60)
    if _count60 != 2:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count60):
        _element = _part60[_index]
        writer.integer(_element, 1, True)
    _part61 = value.bActualER
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


def _read_Ros1Dsr_msgsRobotState(reader):
    _start = reader.position
    value = Ros1Dsr_msgsRobotState()
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
        _read_Ros1Std_msgsFloat64MultiArray(reader) for _ in range(_read_count(reader, 6, 12))
    ]
    value.ctrlbox_digital_input = [reader.integer(1, True) for _ in range(16)]
    value.ctrlbox_digital_output = [reader.integer(1, True) for _ in range(16)]
    value.flange_digital_input = [reader.integer(1, True) for _ in range(6)]
    value.flange_digital_output = [reader.integer(1, True) for _ in range(6)]
    value.modbus_state = [_read_Ros1Dsr_msgsModbusState(reader) for _ in range(_read_count(reader, 16, 8))]
    value.access_control = reader.integer(4, True)
    value.homming_completed = _read_bool(reader)
    value.tp_initialized = _read_bool(reader)
    value.mastering_need = reader.integer(1, True)
    value.drl_stopped = _read_bool(reader)
    value.disconnected = _read_bool(reader)
    value.fActualW2B = [reader.f64() for _ in range(6)]
    value.fCurrentPosW = [
        _read_Ros1Std_msgsFloat64MultiArray(reader) for _ in range(_read_count(reader, 6, 12))
    ]
    value.fCurrentVelW = [reader.f64() for _ in range(6)]
    value.fWorldETT = [reader.f64() for _ in range(6)]
    value.fTargetPosW = [reader.f64() for _ in range(6)]
    value.fTargetVelW = [reader.f64() for _ in range(6)]
    value.fRotationMatrixWorld = [
        _read_Ros1Std_msgsFloat64MultiArray(reader) for _ in range(_read_count(reader, 6, 12))
    ]
    value.iActualUCN = reader.integer(1, True)
    value.iParent = reader.integer(1, True)
    value.fCurrentPosU = [
        _read_Ros1Std_msgsFloat64MultiArray(reader) for _ in range(_read_count(reader, 6, 12))
    ]
    value.fCurrentVelU = [reader.f64() for _ in range(6)]
    value.fUserETT = [reader.f64() for _ in range(6)]
    value.fTargetPosU = [reader.f64() for _ in range(6)]
    value.fTargetVelU = [reader.f64() for _ in range(6)]
    value.fRotationMatrixUser = [
        _read_Ros1Std_msgsFloat64MultiArray(reader) for _ in range(_read_count(reader, 6, 12))
    ]
    value.fActualAI = [reader.f64() for _ in range(6)]
    value.bActualSW = [_read_bool(reader) for _ in range(3)]
    value.bActualSI = [_read_bool(reader) for _ in range(2)]
    value.iActualAT = [reader.integer(1, True) for _ in range(2)]
    value.fTargetAO = [reader.f64() for _ in range(2)]
    value.iTargetAT = [reader.integer(1, True) for _ in range(2)]
    value.bActualES = [_read_bool(reader) for _ in range(2)]
    value.iActualED = [reader.integer(1, True) for _ in range(2)]
    value.bActualER = [_read_bool(reader) for _ in range(2)]
    if not 1484 <= reader.position - _start <= 17004:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsRobotStop:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/RobotStop"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_fd77182b171cc0c4eea28c26c78310584b38e47a3c7d987783648a9f230b6323"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 4
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 4
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    stop_mode: _py_int = 0

    def encode(self):
        writer = _Writer(4)
        _write_Ros1Dsr_msgsRobotStop(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 4)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsRobotStop:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 4, 4))
        value = _read_Ros1Dsr_msgsRobotStop(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsRobotStop = Ros1Dsr_msgsRobotStop


def _write_Ros1Dsr_msgsRobotStop(writer, value):
    if type(value) is not Ros1Dsr_msgsRobotStop:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.stop_mode
    writer.integer(_part0, 4, True)
    if not 4 <= len(writer.data) - _start <= 4:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsRobotStop(reader):
    _start = reader.position
    value = Ros1Dsr_msgsRobotStop()
    value.stop_mode = reader.integer(4, True)
    if not 4 <= reader.position - _start <= 4:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsRobotiq2FCloseRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/Robotiq2FCloseRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_208edddefb1fee08c3ba285600357951edca6b0328a14ea3cca56ec5b2c4d3b4"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Dsr_msgsRobotiq2FCloseRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsRobotiq2FCloseRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Dsr_msgsRobotiq2FCloseRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsRobotiq2FCloseRequest = Ros1Dsr_msgsRobotiq2FCloseRequest


def _write_Ros1Dsr_msgsRobotiq2FCloseRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsRobotiq2FCloseRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros1Dsr_msgsRobotiq2FCloseRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsRobotiq2FCloseRequest()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsRobotiq2FCloseResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/Robotiq2FCloseResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_21a215db4729d55b86ae1f56d932984a38c5c7093f09623a5a5cee1e5647a09d"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsRobotiq2FCloseResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsRobotiq2FCloseResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsRobotiq2FCloseResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsRobotiq2FCloseResponse = Ros1Dsr_msgsRobotiq2FCloseResponse


def _write_Ros1Dsr_msgsRobotiq2FCloseResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsRobotiq2FCloseResponse:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsRobotiq2FCloseResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsRobotiq2FCloseResponse()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsRobotiq2FMoveRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/Robotiq2FMoveRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_81cbba3bf5cd634b8c30fe914123d67da1294352a6e1a70a5c8a58259a79d6a2"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    width: _py_float = 0.0

    def encode(self):
        writer = _Writer(8)
        _write_Ros1Dsr_msgsRobotiq2FMoveRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 8)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsRobotiq2FMoveRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 8, 8))
        value = _read_Ros1Dsr_msgsRobotiq2FMoveRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsRobotiq2FMoveRequest = Ros1Dsr_msgsRobotiq2FMoveRequest


def _write_Ros1Dsr_msgsRobotiq2FMoveRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsRobotiq2FMoveRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.width
    writer.f64(_part0)
    if not 8 <= len(writer.data) - _start <= 8:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsRobotiq2FMoveRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsRobotiq2FMoveRequest()
    value.width = reader.f64()
    if not 8 <= reader.position - _start <= 8:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsRobotiq2FMoveResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/Robotiq2FMoveResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_90f90a7486c727afb08f0e09f76f0bfa7f5b0d057be653258b6bdf1e935e7183"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsRobotiq2FMoveResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsRobotiq2FMoveResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsRobotiq2FMoveResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsRobotiq2FMoveResponse = Ros1Dsr_msgsRobotiq2FMoveResponse


def _write_Ros1Dsr_msgsRobotiq2FMoveResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsRobotiq2FMoveResponse:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsRobotiq2FMoveResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsRobotiq2FMoveResponse()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsRobotiq2FOpenRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/Robotiq2FOpenRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_64576393afca9ec6bd2e76eaf57324b5e625e62f5899d77762dc041dc1fbdda2"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Dsr_msgsRobotiq2FOpenRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsRobotiq2FOpenRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Dsr_msgsRobotiq2FOpenRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsRobotiq2FOpenRequest = Ros1Dsr_msgsRobotiq2FOpenRequest


def _write_Ros1Dsr_msgsRobotiq2FOpenRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsRobotiq2FOpenRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros1Dsr_msgsRobotiq2FOpenRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsRobotiq2FOpenRequest()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsRobotiq2FOpenResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/Robotiq2FOpenResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_83448b0daee950113e41814fe398efbb5624568e812f5989dd26cec24f24742a"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsRobotiq2FOpenResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsRobotiq2FOpenResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsRobotiq2FOpenResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsRobotiq2FOpenResponse = Ros1Dsr_msgsRobotiq2FOpenResponse


def _write_Ros1Dsr_msgsRobotiq2FOpenResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsRobotiq2FOpenResponse:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsRobotiq2FOpenResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsRobotiq2FOpenResponse()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsSerialSendDataRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/SerialSendDataRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_19253624f5870830126073f19daa4e4f42dcdd10c4d3154989aa619ce2749498"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    data: _py_str = ""

    def encode(self):
        writer = _Writer(260)
        _write_Ros1Dsr_msgsSerialSendDataRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 260)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsSerialSendDataRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 4, 260))
        value = _read_Ros1Dsr_msgsSerialSendDataRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsSerialSendDataRequest = Ros1Dsr_msgsSerialSendDataRequest


def _write_Ros1Dsr_msgsSerialSendDataRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsSerialSendDataRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.data
    _write_text(writer, _part0, 256)
    if not 4 <= len(writer.data) - _start <= 260:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsSerialSendDataRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsSerialSendDataRequest()
    value.data = _read_text(reader, 256)
    if not 4 <= reader.position - _start <= 260:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsSerialSendDataResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/SerialSendDataResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_0bb4f5a2bfcf02e9febe7846d2616c99141a8860f62d83b59ebb56da6c89dc43"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsSerialSendDataResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsSerialSendDataResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsSerialSendDataResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsSerialSendDataResponse = Ros1Dsr_msgsSerialSendDataResponse


def _write_Ros1Dsr_msgsSerialSendDataResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsSerialSendDataResponse:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsSerialSendDataResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsSerialSendDataResponse()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/SetCtrlBoxAnalogInputTypeRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_934735469130eef5a4e4599d3033242f0dacf467b2d413d607f733bcdebb7f5b"
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
        _write_Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 2, 2)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 2, 2))
        value = _read_Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest = Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest


def _write_Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.channel
    writer.integer(_part0, 1, True)
    _part1 = value.mode
    writer.integer(_part1, 1, True)
    if not 2 <= len(writer.data) - _start <= 2:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest()
    value.channel = reader.integer(1, True)
    value.mode = reader.integer(1, True)
    if not 2 <= reader.position - _start <= 2:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/SetCtrlBoxAnalogInputTypeResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_a1e73687962235470a5f55d1fa4abd910001dfae2b05aa7779fce0ad93137400"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse = Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse


def _write_Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/SetCtrlBoxAnalogOutputRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_1ea5fd673a691bc7a51cf3c65c9a3b30352539155e6d7007181990c9a227efb4"
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
        _write_Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 9, 9)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 9, 9))
        value = _read_Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequest = Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequest


def _write_Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.channel
    writer.integer(_part0, 1, True)
    _part1 = value.value
    writer.f64(_part1)
    if not 9 <= len(writer.data) - _start <= 9:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequest()
    value.channel = reader.integer(1, True)
    value.value = reader.f64()
    if not 9 <= reader.position - _start <= 9:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/SetCtrlBoxAnalogOutputResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_f0df03f3603b7ec2c0ef5f1e5d126b718ad8ca432130e32184dc87497bf707a5"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponse = Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponse


def _write_Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponse:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponse()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/SetCtrlBoxAnalogOutputTypeRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_71aaf5f279052ba620d9cd13fa1751f96629c19d60e4030086b51e316ceab14f"
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
        _write_Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 2, 2)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 2, 2))
        value = _read_Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest = Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest


def _write_Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.channel
    writer.integer(_part0, 1, True)
    _part1 = value.mode
    writer.integer(_part1, 1, True)
    if not 2 <= len(writer.data) - _start <= 2:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest()
    value.channel = reader.integer(1, True)
    value.mode = reader.integer(1, True)
    if not 2 <= reader.position - _start <= 2:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/SetCtrlBoxAnalogOutputTypeResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_a175ae12517731f2c2e4de021b1921920bd543d9c81469876b50b51b62ad8cc2"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse = Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse


def _write_Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/SetCtrlBoxDigitalOutputRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_82a2c083195f7adc4fd3104cb05039cf109e9779920e36b4d3966edb819f83db"
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
        _write_Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 2, 2)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 2, 2))
        value = _read_Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequest = Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequest


def _write_Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.index
    writer.integer(_part0, 1, True)
    _part1 = value.value
    writer.integer(_part1, 1, True)
    if not 2 <= len(writer.data) - _start <= 2:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequest()
    value.index = reader.integer(1, True)
    value.value = reader.integer(1, True)
    if not 2 <= reader.position - _start <= 2:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/SetCtrlBoxDigitalOutputResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_dc0411c903a4350c81130d3343615212c4e3a9c259f7b193bff92c95b7039657"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponse = Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponse


def _write_Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponse:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponse()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsSetCurrentTcpRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/SetCurrentTcpRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_6a403e6eb4e86aab4d76913e5dd679425f68c6e4c9b38c82af1eaa180dc65f00"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    name: _py_str = ""

    def encode(self):
        writer = _Writer(260)
        _write_Ros1Dsr_msgsSetCurrentTcpRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 260)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsSetCurrentTcpRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 4, 260))
        value = _read_Ros1Dsr_msgsSetCurrentTcpRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsSetCurrentTcpRequest = Ros1Dsr_msgsSetCurrentTcpRequest


def _write_Ros1Dsr_msgsSetCurrentTcpRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsSetCurrentTcpRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.name
    _write_text(writer, _part0, 256)
    if not 4 <= len(writer.data) - _start <= 260:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsSetCurrentTcpRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsSetCurrentTcpRequest()
    value.name = _read_text(reader, 256)
    if not 4 <= reader.position - _start <= 260:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsSetCurrentTcpResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/SetCurrentTcpResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_29c09f17453ac9fa413922b023f1a54ae253cecbbdea211202da551187bbf7ab"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsSetCurrentTcpResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsSetCurrentTcpResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsSetCurrentTcpResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsSetCurrentTcpResponse = Ros1Dsr_msgsSetCurrentTcpResponse


def _write_Ros1Dsr_msgsSetCurrentTcpResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsSetCurrentTcpResponse:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsSetCurrentTcpResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsSetCurrentTcpResponse()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsSetCurrentToolRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/SetCurrentToolRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_d5d71101193ff28fe86d6ba22de9922fda0c806bbd8cd5bfdb8ef3688f5bacb4"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    name: _py_str = ""

    def encode(self):
        writer = _Writer(260)
        _write_Ros1Dsr_msgsSetCurrentToolRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 260)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsSetCurrentToolRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 4, 260))
        value = _read_Ros1Dsr_msgsSetCurrentToolRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsSetCurrentToolRequest = Ros1Dsr_msgsSetCurrentToolRequest


def _write_Ros1Dsr_msgsSetCurrentToolRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsSetCurrentToolRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.name
    _write_text(writer, _part0, 256)
    if not 4 <= len(writer.data) - _start <= 260:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsSetCurrentToolRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsSetCurrentToolRequest()
    value.name = _read_text(reader, 256)
    if not 4 <= reader.position - _start <= 260:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsSetCurrentToolResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/SetCurrentToolResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_89937411059cec969c42c90bdb4c81fa15dc645b627d10d376dc5ded2c56e1de"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsSetCurrentToolResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsSetCurrentToolResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsSetCurrentToolResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsSetCurrentToolResponse = Ros1Dsr_msgsSetCurrentToolResponse


def _write_Ros1Dsr_msgsSetCurrentToolResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsSetCurrentToolResponse:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsSetCurrentToolResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsSetCurrentToolResponse()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsSetDesiredForceRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/SetDesiredForceRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_1020073d308553e7eb01e3fdd76a8a29cd169131d95516ae8c07a54b29f01b1a"
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
        _write_Ros1Dsr_msgsSetDesiredForceRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 64, 64)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsSetDesiredForceRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 64, 64))
        value = _read_Ros1Dsr_msgsSetDesiredForceRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsSetDesiredForceRequest = Ros1Dsr_msgsSetDesiredForceRequest


def _write_Ros1Dsr_msgsSetDesiredForceRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsSetDesiredForceRequest:
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


def _read_Ros1Dsr_msgsSetDesiredForceRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsSetDesiredForceRequest()
    value.fd = [reader.f64() for _ in range(6)]
    value.dir = [reader.integer(1, True) for _ in range(6)]
    value.ref = reader.integer(1, True)
    value.time = reader.f64()
    value.mod = reader.integer(1, True)
    if not 64 <= reader.position - _start <= 64:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsSetDesiredForceResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/SetDesiredForceResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_fb07701ce7c215300e155c1d46e345f6467fe43bba3fc71bed94943459ce1928"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsSetDesiredForceResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsSetDesiredForceResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsSetDesiredForceResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsSetDesiredForceResponse = Ros1Dsr_msgsSetDesiredForceResponse


def _write_Ros1Dsr_msgsSetDesiredForceResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsSetDesiredForceResponse:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsSetDesiredForceResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsSetDesiredForceResponse()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsSetModbusOutputRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/SetModbusOutputRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_3482041cfb90233b59433f4749d9e8f422fc73cdb26525bdbc60370e73c7827f"
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
        _write_Ros1Dsr_msgsSetModbusOutputRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 264)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsSetModbusOutputRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 8, 264))
        value = _read_Ros1Dsr_msgsSetModbusOutputRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsSetModbusOutputRequest = Ros1Dsr_msgsSetModbusOutputRequest


def _write_Ros1Dsr_msgsSetModbusOutputRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsSetModbusOutputRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.name
    _write_text(writer, _part0, 256)
    _part1 = value.value
    writer.integer(_part1, 4, True)
    if not 8 <= len(writer.data) - _start <= 264:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsSetModbusOutputRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsSetModbusOutputRequest()
    value.name = _read_text(reader, 256)
    value.value = reader.integer(4, True)
    if not 8 <= reader.position - _start <= 264:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsSetModbusOutputResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/SetModbusOutputResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_763789f569991b2ba44844586d51b20f2c439e9b22ace4bc72b1bce7b23e0491"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsSetModbusOutputResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsSetModbusOutputResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsSetModbusOutputResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsSetModbusOutputResponse = Ros1Dsr_msgsSetModbusOutputResponse


def _write_Ros1Dsr_msgsSetModbusOutputResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsSetModbusOutputResponse:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsSetModbusOutputResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsSetModbusOutputResponse()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsSetRefCoordRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/SetRefCoordRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_269accc3ced8dd5c86b93c8a412301e47f0084be7f5294d19866868eb5858144"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    coord: _py_int = 0

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsSetRefCoordRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsSetRefCoordRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsSetRefCoordRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsSetRefCoordRequest = Ros1Dsr_msgsSetRefCoordRequest


def _write_Ros1Dsr_msgsSetRefCoordRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsSetRefCoordRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.coord
    writer.integer(_part0, 1, True)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsSetRefCoordRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsSetRefCoordRequest()
    value.coord = reader.integer(1, True)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsSetRefCoordResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/SetRefCoordResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_d33d88ff3985821ce2b9773f2d80ebf3394d89647e760dea55b9303c9e3b3562"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsSetRefCoordResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsSetRefCoordResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsSetRefCoordResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsSetRefCoordResponse = Ros1Dsr_msgsSetRefCoordResponse


def _write_Ros1Dsr_msgsSetRefCoordResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsSetRefCoordResponse:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsSetRefCoordResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsSetRefCoordResponse()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsSetRobotModeRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/SetRobotModeRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_295575a2df0f007254f9aa7eac220e99fcae85ecb085181d5a3ca4e4e86f23fe"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    robot_mode: _py_int = 0

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsSetRobotModeRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsSetRobotModeRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsSetRobotModeRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsSetRobotModeRequest = Ros1Dsr_msgsSetRobotModeRequest


def _write_Ros1Dsr_msgsSetRobotModeRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsSetRobotModeRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.robot_mode
    writer.integer(_part0, 1, True)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsSetRobotModeRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsSetRobotModeRequest()
    value.robot_mode = reader.integer(1, True)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsSetRobotModeResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/SetRobotModeResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_bbf3bda8cd2e9afbda89023639013686ecd7612a9323a6d4180b8ac092caaad1"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsSetRobotModeResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsSetRobotModeResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsSetRobotModeResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsSetRobotModeResponse = Ros1Dsr_msgsSetRobotModeResponse


def _write_Ros1Dsr_msgsSetRobotModeResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsSetRobotModeResponse:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsSetRobotModeResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsSetRobotModeResponse()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsSetRobotSpeedModeRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/SetRobotSpeedModeRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_68f9a7f019ddfa1015de6c7e3115d632eb44ec794f364e6a0617fed34f70531c"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    speed_mode: _py_int = 0

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsSetRobotSpeedModeRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsSetRobotSpeedModeRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsSetRobotSpeedModeRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsSetRobotSpeedModeRequest = Ros1Dsr_msgsSetRobotSpeedModeRequest


def _write_Ros1Dsr_msgsSetRobotSpeedModeRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsSetRobotSpeedModeRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.speed_mode
    writer.integer(_part0, 1, True)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsSetRobotSpeedModeRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsSetRobotSpeedModeRequest()
    value.speed_mode = reader.integer(1, True)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsSetRobotSpeedModeResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/SetRobotSpeedModeResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_6434538e8bf60b1b900aba530ed3e027eb13d854591eab5e0e93cc407e90c94b"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsSetRobotSpeedModeResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsSetRobotSpeedModeResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsSetRobotSpeedModeResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsSetRobotSpeedModeResponse = Ros1Dsr_msgsSetRobotSpeedModeResponse


def _write_Ros1Dsr_msgsSetRobotSpeedModeResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsSetRobotSpeedModeResponse:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsSetRobotSpeedModeResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsSetRobotSpeedModeResponse()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsSetRobotSystemRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/SetRobotSystemRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_75ffa8e1e77ea59a3b7a27151404682cfdef7226d32d3b78b6d67e562536eeee"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    robot_system: _py_int = 0

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsSetRobotSystemRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsSetRobotSystemRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsSetRobotSystemRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsSetRobotSystemRequest = Ros1Dsr_msgsSetRobotSystemRequest


def _write_Ros1Dsr_msgsSetRobotSystemRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsSetRobotSystemRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.robot_system
    writer.integer(_part0, 1, True)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsSetRobotSystemRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsSetRobotSystemRequest()
    value.robot_system = reader.integer(1, True)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsSetRobotSystemResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/SetRobotSystemResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_38f3915ccf71872a966f2f511e73782a79df1923c76e6134ea8d72f0b96f6c27"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsSetRobotSystemResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsSetRobotSystemResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsSetRobotSystemResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsSetRobotSystemResponse = Ros1Dsr_msgsSetRobotSystemResponse


def _write_Ros1Dsr_msgsSetRobotSystemResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsSetRobotSystemResponse:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsSetRobotSystemResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsSetRobotSystemResponse()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsSetSafeStopResetTypeRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/SetSafeStopResetTypeRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_8a9961395d960217a4f867ee0d2994ea40afe83c4a33a7dcc5b348a85a7fff42"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    reset_type: _py_int = 0

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsSetSafeStopResetTypeRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsSetSafeStopResetTypeRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsSetSafeStopResetTypeRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsSetSafeStopResetTypeRequest = Ros1Dsr_msgsSetSafeStopResetTypeRequest


def _write_Ros1Dsr_msgsSetSafeStopResetTypeRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsSetSafeStopResetTypeRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.reset_type
    writer.integer(_part0, 1, True)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsSetSafeStopResetTypeRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsSetSafeStopResetTypeRequest()
    value.reset_type = reader.integer(1, True)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsSetSafeStopResetTypeResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/SetSafeStopResetTypeResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_2227553731ecf10a55eda31cd8735f90bd4539777661e3723f712a7a456cd4db"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsSetSafeStopResetTypeResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsSetSafeStopResetTypeResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsSetSafeStopResetTypeResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsSetSafeStopResetTypeResponse = Ros1Dsr_msgsSetSafeStopResetTypeResponse


def _write_Ros1Dsr_msgsSetSafeStopResetTypeResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsSetSafeStopResetTypeResponse:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsSetSafeStopResetTypeResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsSetSafeStopResetTypeResponse()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsSetSingularityHandlingRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/SetSingularityHandlingRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_44dd4695620a3cf3f95504b73ad6978c9073ab3703f73f4a6449c7763f31cb7b"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    mode: _py_int = 0

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsSetSingularityHandlingRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsSetSingularityHandlingRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsSetSingularityHandlingRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsSetSingularityHandlingRequest = Ros1Dsr_msgsSetSingularityHandlingRequest


def _write_Ros1Dsr_msgsSetSingularityHandlingRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsSetSingularityHandlingRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.mode
    writer.integer(_part0, 1, True)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsSetSingularityHandlingRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsSetSingularityHandlingRequest()
    value.mode = reader.integer(1, True)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsSetSingularityHandlingResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/SetSingularityHandlingResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_a022bf9d809ac39a4dfe0487fdbc83f3b4ef81f179a6b3dd7d8fb1854aba1aa2"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsSetSingularityHandlingResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsSetSingularityHandlingResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsSetSingularityHandlingResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsSetSingularityHandlingResponse = Ros1Dsr_msgsSetSingularityHandlingResponse


def _write_Ros1Dsr_msgsSetSingularityHandlingResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsSetSingularityHandlingResponse:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsSetSingularityHandlingResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsSetSingularityHandlingResponse()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsSetStiffnessxRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/SetStiffnessxRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_7cf0721d0f9cd45422a4277a63834f75572ead2833ca4100752d51abc2b4e3d3"
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
        _write_Ros1Dsr_msgsSetStiffnessxRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 57, 57)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsSetStiffnessxRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 57, 57))
        value = _read_Ros1Dsr_msgsSetStiffnessxRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsSetStiffnessxRequest = Ros1Dsr_msgsSetStiffnessxRequest


def _write_Ros1Dsr_msgsSetStiffnessxRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsSetStiffnessxRequest:
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


def _read_Ros1Dsr_msgsSetStiffnessxRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsSetStiffnessxRequest()
    value.stx = [reader.f64() for _ in range(6)]
    value.ref = reader.integer(1, True)
    value.time = reader.f64()
    if not 57 <= reader.position - _start <= 57:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsSetStiffnessxResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/SetStiffnessxResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_41ae59cb41184a6c167db14ac58ef80966c500fb31417b21900e42d1cb9a4549"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsSetStiffnessxResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsSetStiffnessxResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsSetStiffnessxResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsSetStiffnessxResponse = Ros1Dsr_msgsSetStiffnessxResponse


def _write_Ros1Dsr_msgsSetStiffnessxResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsSetStiffnessxResponse:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsSetStiffnessxResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsSetStiffnessxResponse()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsSetToolDigitalOutputRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/SetToolDigitalOutputRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_6b384924cefbae3dfe50e02b8fb26ed9e228d2ada5c63070feb0375c125a2123"
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
        _write_Ros1Dsr_msgsSetToolDigitalOutputRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 2, 2)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsSetToolDigitalOutputRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 2, 2))
        value = _read_Ros1Dsr_msgsSetToolDigitalOutputRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsSetToolDigitalOutputRequest = Ros1Dsr_msgsSetToolDigitalOutputRequest


def _write_Ros1Dsr_msgsSetToolDigitalOutputRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsSetToolDigitalOutputRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.index
    writer.integer(_part0, 1, True)
    _part1 = value.value
    writer.integer(_part1, 1, True)
    if not 2 <= len(writer.data) - _start <= 2:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsSetToolDigitalOutputRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsSetToolDigitalOutputRequest()
    value.index = reader.integer(1, True)
    value.value = reader.integer(1, True)
    if not 2 <= reader.position - _start <= 2:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsSetToolDigitalOutputResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/SetToolDigitalOutputResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_4e0acd035740d1e47b42128818528aa3aa33736d979f46ada511ad0e6230ae94"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsSetToolDigitalOutputResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsSetToolDigitalOutputResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsSetToolDigitalOutputResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsSetToolDigitalOutputResponse = Ros1Dsr_msgsSetToolDigitalOutputResponse


def _write_Ros1Dsr_msgsSetToolDigitalOutputResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsSetToolDigitalOutputResponse:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsSetToolDigitalOutputResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsSetToolDigitalOutputResponse()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsSetToolShapeRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/SetToolShapeRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_1eb4f1d4e9fea4e9f5324fc50acd744365940912055fbc359ecc4748b1ddeeea"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    name: _py_str = ""

    def encode(self):
        writer = _Writer(260)
        _write_Ros1Dsr_msgsSetToolShapeRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 260)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsSetToolShapeRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 4, 260))
        value = _read_Ros1Dsr_msgsSetToolShapeRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsSetToolShapeRequest = Ros1Dsr_msgsSetToolShapeRequest


def _write_Ros1Dsr_msgsSetToolShapeRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsSetToolShapeRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.name
    _write_text(writer, _part0, 256)
    if not 4 <= len(writer.data) - _start <= 260:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsSetToolShapeRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsSetToolShapeRequest()
    value.name = _read_text(reader, 256)
    if not 4 <= reader.position - _start <= 260:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsSetToolShapeResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/SetToolShapeResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_7d18f475fd4230c7f15ddc10401373d296cfaef1d525a26e983cda4c8b2b5e70"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsSetToolShapeResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsSetToolShapeResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsSetToolShapeResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsSetToolShapeResponse = Ros1Dsr_msgsSetToolShapeResponse


def _write_Ros1Dsr_msgsSetToolShapeResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsSetToolShapeResponse:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsSetToolShapeResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsSetToolShapeResponse()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsSetUserCartCoord1Request:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/SetUserCartCoord1Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_f54a10c9fd4687670111ba2b3d0a6bceea638fc71da62d59b81a01c59dd457b3"
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
        _write_Ros1Dsr_msgsSetUserCartCoord1Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 49, 49)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsSetUserCartCoord1Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 49, 49))
        value = _read_Ros1Dsr_msgsSetUserCartCoord1Request(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsSetUserCartCoord1Request = Ros1Dsr_msgsSetUserCartCoord1Request


def _write_Ros1Dsr_msgsSetUserCartCoord1Request(writer, value):
    if type(value) is not Ros1Dsr_msgsSetUserCartCoord1Request:
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


def _read_Ros1Dsr_msgsSetUserCartCoord1Request(reader):
    _start = reader.position
    value = Ros1Dsr_msgsSetUserCartCoord1Request()
    value.pos = [reader.f64() for _ in range(6)]
    value.ref = reader.integer(1, True)
    if not 49 <= reader.position - _start <= 49:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsSetUserCartCoord1Response:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/SetUserCartCoord1Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_c8749fa152e4396e977e110a901dfc791a26b54d1f282752039a20c0c4531f53"
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
        _write_Ros1Dsr_msgsSetUserCartCoord1Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 2, 2)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsSetUserCartCoord1Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 2, 2))
        value = _read_Ros1Dsr_msgsSetUserCartCoord1Response(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsSetUserCartCoord1Response = Ros1Dsr_msgsSetUserCartCoord1Response


def _write_Ros1Dsr_msgsSetUserCartCoord1Response(writer, value):
    if type(value) is not Ros1Dsr_msgsSetUserCartCoord1Response:
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


def _read_Ros1Dsr_msgsSetUserCartCoord1Response(reader):
    _start = reader.position
    value = Ros1Dsr_msgsSetUserCartCoord1Response()
    value.id = reader.integer(1, True)
    value.success = _read_bool(reader)
    if not 2 <= reader.position - _start <= 2:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsSetUserCartCoord2Request:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/SetUserCartCoord2Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_581a8164d6593be7422364300fabd854bc3b438726a3182cd388be5c629dc235"
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
        _write_Ros1Dsr_msgsSetUserCartCoord2Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 193, 193)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsSetUserCartCoord2Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 193, 193))
        value = _read_Ros1Dsr_msgsSetUserCartCoord2Request(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsSetUserCartCoord2Request = Ros1Dsr_msgsSetUserCartCoord2Request


def _write_Ros1Dsr_msgsSetUserCartCoord2Request(writer, value):
    if type(value) is not Ros1Dsr_msgsSetUserCartCoord2Request:
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


def _read_Ros1Dsr_msgsSetUserCartCoord2Request(reader):
    _start = reader.position
    value = Ros1Dsr_msgsSetUserCartCoord2Request()
    value.x1 = [reader.f64() for _ in range(6)]
    value.x2 = [reader.f64() for _ in range(6)]
    value.x3 = [reader.f64() for _ in range(6)]
    value.pos = [reader.f64() for _ in range(6)]
    value.ref = reader.integer(1, True)
    if not 193 <= reader.position - _start <= 193:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsSetUserCartCoord2Response:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/SetUserCartCoord2Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_01ce185d3b4585bfdb9187c7b3cf628874da91fdd8c289a5b72d7bcb0e84880d"
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
        _write_Ros1Dsr_msgsSetUserCartCoord2Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 2, 2)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsSetUserCartCoord2Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 2, 2))
        value = _read_Ros1Dsr_msgsSetUserCartCoord2Response(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsSetUserCartCoord2Response = Ros1Dsr_msgsSetUserCartCoord2Response


def _write_Ros1Dsr_msgsSetUserCartCoord2Response(writer, value):
    if type(value) is not Ros1Dsr_msgsSetUserCartCoord2Response:
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


def _read_Ros1Dsr_msgsSetUserCartCoord2Response(reader):
    _start = reader.position
    value = Ros1Dsr_msgsSetUserCartCoord2Response()
    value.id = reader.integer(1, True)
    value.success = _read_bool(reader)
    if not 2 <= reader.position - _start <= 2:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsSetUserCartCoord3Request:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/SetUserCartCoord3Request"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_a8a9aa12ff690f1a26223248b0c84537b7fe23ffa0af33be0ef0c99092f78c3c"
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
        _write_Ros1Dsr_msgsSetUserCartCoord3Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 97, 97)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsSetUserCartCoord3Request:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 97, 97))
        value = _read_Ros1Dsr_msgsSetUserCartCoord3Request(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsSetUserCartCoord3Request = Ros1Dsr_msgsSetUserCartCoord3Request


def _write_Ros1Dsr_msgsSetUserCartCoord3Request(writer, value):
    if type(value) is not Ros1Dsr_msgsSetUserCartCoord3Request:
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


def _read_Ros1Dsr_msgsSetUserCartCoord3Request(reader):
    _start = reader.position
    value = Ros1Dsr_msgsSetUserCartCoord3Request()
    value.u1 = [reader.f64() for _ in range(3)]
    value.v1 = [reader.f64() for _ in range(3)]
    value.pos = [reader.f64() for _ in range(6)]
    value.ref = reader.integer(1, True)
    if not 97 <= reader.position - _start <= 97:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsSetUserCartCoord3Response:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/SetUserCartCoord3Response"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_9409ea43f5b28fc6aa7c1089c69e828edda3440a50e1c35b5f8b8ca600d11fd1"
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
        _write_Ros1Dsr_msgsSetUserCartCoord3Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 2, 2)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsSetUserCartCoord3Response:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 2, 2))
        value = _read_Ros1Dsr_msgsSetUserCartCoord3Response(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsSetUserCartCoord3Response = Ros1Dsr_msgsSetUserCartCoord3Response


def _write_Ros1Dsr_msgsSetUserCartCoord3Response(writer, value):
    if type(value) is not Ros1Dsr_msgsSetUserCartCoord3Response:
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


def _read_Ros1Dsr_msgsSetUserCartCoord3Response(reader):
    _start = reader.position
    value = Ros1Dsr_msgsSetUserCartCoord3Response()
    value.id = reader.integer(1, True)
    value.success = _read_bool(reader)
    if not 2 <= reader.position - _start <= 2:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsTaskComplianceCtrlRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/TaskComplianceCtrlRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_05fa479a787001504e982b77fd61e6a3e6bb2a7cbc34ff900fa12634d8842671"
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
        _write_Ros1Dsr_msgsTaskComplianceCtrlRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 57, 57)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsTaskComplianceCtrlRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 57, 57))
        value = _read_Ros1Dsr_msgsTaskComplianceCtrlRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsTaskComplianceCtrlRequest = Ros1Dsr_msgsTaskComplianceCtrlRequest


def _write_Ros1Dsr_msgsTaskComplianceCtrlRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsTaskComplianceCtrlRequest:
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


def _read_Ros1Dsr_msgsTaskComplianceCtrlRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsTaskComplianceCtrlRequest()
    value.stx = [reader.f64() for _ in range(6)]
    value.ref = reader.integer(1, True)
    value.time = reader.f64()
    if not 57 <= reader.position - _start <= 57:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsTaskComplianceCtrlResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/TaskComplianceCtrlResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_29c513521ec8c6ac5c39bf1cb12d8db19a025a2036fb0398633b544d53c39625"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsTaskComplianceCtrlResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsTaskComplianceCtrlResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsTaskComplianceCtrlResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsTaskComplianceCtrlResponse = Ros1Dsr_msgsTaskComplianceCtrlResponse


def _write_Ros1Dsr_msgsTaskComplianceCtrlResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsTaskComplianceCtrlResponse:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsTaskComplianceCtrlResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsTaskComplianceCtrlResponse()
    value.success = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsTransRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/TransRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_6724ac7a62b77d6d6e52145306c4ac5a0e05221a636fb5cd0048e185ddcee273"
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
        _write_Ros1Dsr_msgsTransRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 98, 98)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsTransRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 98, 98))
        value = _read_Ros1Dsr_msgsTransRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsTransRequest = Ros1Dsr_msgsTransRequest


def _write_Ros1Dsr_msgsTransRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsTransRequest:
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


def _read_Ros1Dsr_msgsTransRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsTransRequest()
    value.pos = [reader.f64() for _ in range(6)]
    value.delta = [reader.f64() for _ in range(6)]
    value.ref = reader.integer(1, True)
    value.ref_out = reader.integer(1, True)
    if not 98 <= reader.position - _start <= 98:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsTransResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/TransResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_a36593de3d68fc991b3cf230f98c28f1f1d9fa0fc72e3160a5f005d9cb6105e5"
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
        _write_Ros1Dsr_msgsTransResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 49, 49)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsTransResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 49, 49))
        value = _read_Ros1Dsr_msgsTransResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsTransResponse = Ros1Dsr_msgsTransResponse


def _write_Ros1Dsr_msgsTransResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsTransResponse:
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


def _read_Ros1Dsr_msgsTransResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsTransResponse()
    value.trans_pos = [reader.f64() for _ in range(6)]
    value.success = _read_bool(reader)
    if not 49 <= reader.position - _start <= 49:
        raise ValueError("nested complete record aggregate extent")
    return value
