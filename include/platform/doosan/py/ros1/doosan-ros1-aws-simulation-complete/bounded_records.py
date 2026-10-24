# @file bounded_records.py
# @brief Complete doosan values and adapters for the selected original interface catalog.
# @details Retain original field order, scalar widths, array capacities, string bounds, constants and declared
# defaults. Pure value access and canonical codecs create no native ROS allocation or resource grant. Transport
# roles require the separately admitted SDK owner.
# @see share/platform/doosan/domains/doosan-ros1-aws-simulation-complete.ir.json
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
        "UWVMROS1_53fc14db79f9c63ee04e5e055961e397d6ceefa553e0912c4c944f858376b4b2"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    value: _py_float = 0.0

    def encode(self):
        writer = _Writer(8)
        _write_Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 8)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 8, 8))
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
    if not 8 <= len(writer.data) - _start <= 8:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse()
    value.value = reader.f64()
    if not 8 <= reader.position - _start <= 8:
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
        "UWVMROS1_b24172ba7a1d82456b33bcbfccde50c1e0a40d4ce870dae704c00a553591a6a2"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    value: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse = Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse


def _write_Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.value
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse()
    value.value = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
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
        "UWVMROS1_cae2a551df6b2c548e171cdb181bbbe1fcbfe9fc3039b68f4edab2043ef8b9d6"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 48
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 48
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 48
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    pos: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])

    def encode(self):
        writer = _Writer(48)
        _write_Ros1Dsr_msgsGetCurrentPoseResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 48, 48)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetCurrentPoseResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 48, 48))
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
    if not 48 <= len(writer.data) - _start <= 48:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsGetCurrentPoseResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetCurrentPoseResponse()
    value.pos = [reader.f64() for _ in range(6)]
    if not 48 <= reader.position - _start <= 48:
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
        "UWVMROS1_57e390c7f039b26fc69fe35d07420ee94084ce9d9531e7e8c6d6a09729b5986f"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    solution_space: _py_int = 0

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsGetCurrentSolutionSpaceResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetCurrentSolutionSpaceResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsGetCurrentSolutionSpaceResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetCurrentSolutionSpaceResponse = Ros1Dsr_msgsGetCurrentSolutionSpaceResponse


def _write_Ros1Dsr_msgsGetCurrentSolutionSpaceResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsGetCurrentSolutionSpaceResponse:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.solution_space
    writer.integer(_part0, 1, True)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsGetCurrentSolutionSpaceResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetCurrentSolutionSpaceResponse()
    value.solution_space = reader.integer(1, True)
    if not 1 <= reader.position - _start <= 1:
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
        "UWVMROS1_8076cd565188d0adcda508a0637b240969a434a924daeed7cf3b7e442b901ee3"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    info: _py_str = ""

    def encode(self):
        writer = _Writer(260)
        _write_Ros1Dsr_msgsGetCurrentTcpResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 260)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetCurrentTcpResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 4, 260))
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
    if not 4 <= len(writer.data) - _start <= 260:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsGetCurrentTcpResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetCurrentTcpResponse()
    value.info = _read_text(reader, 256)
    if not 4 <= reader.position - _start <= 260:
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
        "UWVMROS1_8afef46263fd34fe71e4c33d9add7d71672cb9d95aa237a60e17c3c3cdd58e43"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    info: _py_str = ""

    def encode(self):
        writer = _Writer(260)
        _write_Ros1Dsr_msgsGetCurrentToolResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 260)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetCurrentToolResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 4, 260))
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
    if not 4 <= len(writer.data) - _start <= 260:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsGetCurrentToolResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetCurrentToolResponse()
    value.info = _read_text(reader, 256)
    if not 4 <= reader.position - _start <= 260:
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
        "UWVMROS1_d8238b34c53f1da07057059fadfc1bbc767be38453b0410a90bccb84d99d1a94"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    drl_state: _py_int = 0

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsGetDrlStateResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetDrlStateResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
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
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsGetDrlStateResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetDrlStateResponse()
    value.drl_state = reader.integer(1, True)
    if not 1 <= reader.position - _start <= 1:
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
        "UWVMROS1_52c063acee790649e0e439390ee3c8bd4e7ac2a124911093ba0fd00f06a07ff2"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 48
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 48
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 48
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    ext_torque: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])

    def encode(self):
        writer = _Writer(48)
        _write_Ros1Dsr_msgsGetExternalTorqueResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 48, 48)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetExternalTorqueResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 48, 48))
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
    if not 48 <= len(writer.data) - _start <= 48:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsGetExternalTorqueResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetExternalTorqueResponse()
    value.ext_torque = [reader.f64() for _ in range(6)]
    if not 48 <= reader.position - _start <= 48:
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
        "UWVMROS1_25bda80075428cb48858ba2ab3d38b52d4fe631596e919c001cf1a4f96391bf1"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 48
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 48
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 48
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    joint_torque: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])

    def encode(self):
        writer = _Writer(48)
        _write_Ros1Dsr_msgsGetJointTorqueResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 48, 48)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetJointTorqueResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 48, 48))
        value = _read_Ros1Dsr_msgsGetJointTorqueResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetJointTorqueResponse = Ros1Dsr_msgsGetJointTorqueResponse


def _write_Ros1Dsr_msgsGetJointTorqueResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsGetJointTorqueResponse:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.joint_torque
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


def _read_Ros1Dsr_msgsGetJointTorqueResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetJointTorqueResponse()
    value.joint_torque = [reader.f64() for _ in range(6)]
    if not 48 <= reader.position - _start <= 48:
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
        "UWVMROS1_cbf970486efc6fc6dbda7ecfd673f3642f228b27e1a406156d2592d71467995c"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 24
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 792
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 792
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    log_alarm: _record_Ros1Dsr_msgsLogAlarm = _field(default_factory=lambda: Ros1Dsr_msgsLogAlarm())

    def encode(self):
        writer = _Writer(792)
        _write_Ros1Dsr_msgsGetLastAlarmResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 24, 792)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetLastAlarmResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 24, 792))
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
    if not 24 <= len(writer.data) - _start <= 792:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsGetLastAlarmResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetLastAlarmResponse()
    value.log_alarm = _read_Ros1Dsr_msgsLogAlarm(reader)
    if not 24 <= reader.position - _start <= 792:
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
        "UWVMROS1_5a9baa85959370b7562c32510a9ebe6bd48ccb01b5d71d3898126e69fe60afb3"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 4
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 4
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    value: _py_int = 0

    def encode(self):
        writer = _Writer(4)
        _write_Ros1Dsr_msgsGetModbusInputResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 4)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetModbusInputResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 4, 4))
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
    if not 4 <= len(writer.data) - _start <= 4:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsGetModbusInputResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetModbusInputResponse()
    value.value = reader.integer(4, True)
    if not 4 <= reader.position - _start <= 4:
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
        "UWVMROS1_3049e13cf2157e75860253953231b258ac495b2fc424aa2c6343fcf0f91044b5"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    robot_mode: _py_int = 0

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsGetRobotModeResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetRobotModeResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
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
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsGetRobotModeResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetRobotModeResponse()
    value.robot_mode = reader.integer(1, True)
    if not 1 <= reader.position - _start <= 1:
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
        "UWVMROS1_e67a5a94c55ea30657ecdf83201cac431e89c11817bb12831d31023d4fd2cec1"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    speed_mode: _py_int = 0

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsGetRobotSpeedModeResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetRobotSpeedModeResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
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
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsGetRobotSpeedModeResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetRobotSpeedModeResponse()
    value.speed_mode = reader.integer(1, True)
    if not 1 <= reader.position - _start <= 1:
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
        "UWVMROS1_2fdea6418150a77db99b9e1bcecb11a9a10f826690b18853d6adfbdc2b6f8d4d"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    robot_state: _py_int = 0

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsGetRobotStateResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetRobotStateResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
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
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsGetRobotStateResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetRobotStateResponse()
    value.robot_state = reader.integer(1, True)
    if not 1 <= reader.position - _start <= 1:
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
        "UWVMROS1_ecdbadad1fa8a9e22bf20bbb5c7aa489b739a6d0ef725ea20e37d50feb92a570"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    robot_system: _py_int = 0

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsGetRobotSystemResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetRobotSystemResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
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
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsGetRobotSystemResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetRobotSystemResponse()
    value.robot_system = reader.integer(1, True)
    if not 1 <= reader.position - _start <= 1:
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
        "UWVMROS1_ee2a97dbab5eb6f818d5165e68ebc9077f8ebae391f79445f35205158e0d7f92"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    value: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Dsr_msgsGetToolDigitalInputResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetToolDigitalInputResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Dsr_msgsGetToolDigitalInputResponse(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetToolDigitalInputResponse = Ros1Dsr_msgsGetToolDigitalInputResponse


def _write_Ros1Dsr_msgsGetToolDigitalInputResponse(writer, value):
    if type(value) is not Ros1Dsr_msgsGetToolDigitalInputResponse:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    _part0 = value.value
    if type(_part0) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part0), 1)
    if not 1 <= len(writer.data) - _start <= 1:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsGetToolDigitalInputResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetToolDigitalInputResponse()
    value.value = _read_bool(reader)
    if not 1 <= reader.position - _start <= 1:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsGetToolForceRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/GetToolForceRequest"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_27ccf47d48432cce678c6dad5ecff2aac258f4b17e4172556fa05183bc5111b7"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Dsr_msgsGetToolForceRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetToolForceRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Dsr_msgsGetToolForceRequest(reader)
        reader.end()
        return value


_record_Ros1Dsr_msgsGetToolForceRequest = Ros1Dsr_msgsGetToolForceRequest


def _write_Ros1Dsr_msgsGetToolForceRequest(writer, value):
    if type(value) is not Ros1Dsr_msgsGetToolForceRequest:
        raise TypeError("exact generated record required")
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError("nested encoded record aggregate extent")
    pass


def _read_Ros1Dsr_msgsGetToolForceRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetToolForceRequest()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError("nested complete record aggregate extent")
    return value


@_dataclass
class Ros1Dsr_msgsGetToolForceResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = "dsr_msgs/GetToolForceResponse"
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = (
        "UWVMROS1_752d1690a4d3b7b6842ce45d1ae599de4cbfdde9bf7da96193cbf3a9e4205026"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 48
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 48
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 48
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    tool_force: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])

    def encode(self):
        writer = _Writer(48)
        _write_Ros1Dsr_msgsGetToolForceResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 48, 48)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsGetToolForceResponse:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 48, 48))
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
    if not 48 <= len(writer.data) - _start <= 48:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsGetToolForceResponse(reader):
    _start = reader.position
    value = Ros1Dsr_msgsGetToolForceResponse()
    value.tool_force = [reader.f64() for _ in range(6)]
    if not 48 <= reader.position - _start <= 48:
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
        "UWVMROS1_6e386632864f2315ba8737001727f9c03bb17a0e70b8eb990ce39fed669aac33"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 31
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 2239
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 2239
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    pos: _py_list[_record_Ros1Std_msgsFloat64MultiArray] = _field(default_factory=lambda: [])
    posCnt: _py_int = 0
    vel: _py_float = 0.0
    acc: _py_float = 0.0
    time: _py_float = 0.0
    mode: _py_int = 0
    syncType: _py_int = 0

    def encode(self):
        writer = _Writer(2239)
        _write_Ros1Dsr_msgsMoveSplineJointRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 31, 2239)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsMoveSplineJointRequest:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 31, 2239))
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
    writer.f64(_part2)
    _part3 = value.acc
    writer.f64(_part3)
    _part4 = value.time
    writer.f64(_part4)
    _part5 = value.mode
    writer.integer(_part5, 1, True)
    _part6 = value.syncType
    writer.integer(_part6, 1, True)
    if not 31 <= len(writer.data) - _start <= 2239:
        raise ValueError("nested encoded record aggregate extent")


def _read_Ros1Dsr_msgsMoveSplineJointRequest(reader):
    _start = reader.position
    value = Ros1Dsr_msgsMoveSplineJointRequest()
    value.pos = [_read_Ros1Std_msgsFloat64MultiArray(reader) for _ in range(_read_count(reader, 6, 12))]
    value.posCnt = reader.integer(1, True)
    value.vel = reader.f64()
    value.acc = reader.f64()
    value.time = reader.f64()
    value.mode = reader.integer(1, True)
    value.syncType = reader.integer(1, True)
    if not 31 <= reader.position - _start <= 2239:
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
        "UWVMROS1_67691d32d7b73ab123439c6f14dca8f626ad9e9a6f09f9ecb0e631b5f63d2574"
    )
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 907
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 7595
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 7595
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
    current_velx: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    task_err: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    target_velx: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    target_posx: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    solution_space: _py_int = 0
    rotation_matrix: _py_list[_record_Ros1Std_msgsFloat64MultiArray] = _field(default_factory=lambda: [])
    dynamic_tor: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    actual_jts: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    actual_ejt: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    actual_ett: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    sync_time: _py_float = 0.0
    actual_bk: _py_list[_py_int] = _field(default_factory=lambda: [0 for _ in range(6)])
    actual_bt: _py_list[_py_int] = _field(default_factory=lambda: [0 for _ in range(5)])
    actual_mc: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    actual_mt: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
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

    def encode(self):
        writer = _Writer(7595)
        _write_Ros1Dsr_msgsRobotState(writer, self)
        wire = writer.finish()
        return _wire(wire, 907, 7595)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Dsr_msgsRobotState:
            raise TypeError("exact generated codec class required")
        reader = _Reader(_wire(wire, 907, 7595))
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
    _part11 = value.current_velx
    if type(_part11) not in (list, tuple):
        raise TypeError("array value required")
    _count11 = len(_part11)
    if _count11 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count11):
        _element = _part11[_index]
        writer.f64(_element)
    _part12 = value.task_err
    if type(_part12) not in (list, tuple):
        raise TypeError("array value required")
    _count12 = len(_part12)
    if _count12 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count12):
        _element = _part12[_index]
        writer.f64(_element)
    _part13 = value.target_velx
    if type(_part13) not in (list, tuple):
        raise TypeError("array value required")
    _count13 = len(_part13)
    if _count13 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count13):
        _element = _part13[_index]
        writer.f64(_element)
    _part14 = value.target_posx
    if type(_part14) not in (list, tuple):
        raise TypeError("array value required")
    _count14 = len(_part14)
    if _count14 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count14):
        _element = _part14[_index]
        writer.f64(_element)
    _part15 = value.solution_space
    writer.integer(_part15, 1, True)
    _part16 = value.rotation_matrix
    if type(_part16) not in (list, tuple):
        raise TypeError("array value required")
    _count16 = len(_part16)
    if _count16 > 6:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count16, 4)
    for _index in range(_count16):
        _element = _part16[_index]
        _write_Ros1Std_msgsFloat64MultiArray(writer, _element)
    _part17 = value.dynamic_tor
    if type(_part17) not in (list, tuple):
        raise TypeError("array value required")
    _count17 = len(_part17)
    if _count17 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count17):
        _element = _part17[_index]
        writer.f64(_element)
    _part18 = value.actual_jts
    if type(_part18) not in (list, tuple):
        raise TypeError("array value required")
    _count18 = len(_part18)
    if _count18 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count18):
        _element = _part18[_index]
        writer.f64(_element)
    _part19 = value.actual_ejt
    if type(_part19) not in (list, tuple):
        raise TypeError("array value required")
    _count19 = len(_part19)
    if _count19 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count19):
        _element = _part19[_index]
        writer.f64(_element)
    _part20 = value.actual_ett
    if type(_part20) not in (list, tuple):
        raise TypeError("array value required")
    _count20 = len(_part20)
    if _count20 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count20):
        _element = _part20[_index]
        writer.f64(_element)
    _part21 = value.sync_time
    writer.f64(_part21)
    _part22 = value.actual_bk
    if type(_part22) not in (list, tuple):
        raise TypeError("array value required")
    _count22 = len(_part22)
    if _count22 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count22):
        _element = _part22[_index]
        writer.integer(_element, 1, True)
    _part23 = value.actual_bt
    if type(_part23) not in (list, tuple):
        raise TypeError("array value required")
    _count23 = len(_part23)
    if _count23 != 5:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count23):
        _element = _part23[_index]
        writer.integer(_element, 1, True)
    _part24 = value.actual_mc
    if type(_part24) not in (list, tuple):
        raise TypeError("array value required")
    _count24 = len(_part24)
    if _count24 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count24):
        _element = _part24[_index]
        writer.f64(_element)
    _part25 = value.actual_mt
    if type(_part25) not in (list, tuple):
        raise TypeError("array value required")
    _count25 = len(_part25)
    if _count25 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count25):
        _element = _part25[_index]
        writer.f64(_element)
    _part26 = value.ctrlbox_digital_input
    if type(_part26) not in (list, tuple):
        raise TypeError("array value required")
    _count26 = len(_part26)
    if _count26 != 16:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count26):
        _element = _part26[_index]
        writer.integer(_element, 1, True)
    _part27 = value.ctrlbox_digital_output
    if type(_part27) not in (list, tuple):
        raise TypeError("array value required")
    _count27 = len(_part27)
    if _count27 != 16:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count27):
        _element = _part27[_index]
        writer.integer(_element, 1, True)
    _part28 = value.flange_digital_input
    if type(_part28) not in (list, tuple):
        raise TypeError("array value required")
    _count28 = len(_part28)
    if _count28 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count28):
        _element = _part28[_index]
        writer.integer(_element, 1, True)
    _part29 = value.flange_digital_output
    if type(_part29) not in (list, tuple):
        raise TypeError("array value required")
    _count29 = len(_part29)
    if _count29 != 6:
        raise ValueError("fixed/sequence count bound")
    for _index in range(_count29):
        _element = _part29[_index]
        writer.integer(_element, 1, True)
    _part30 = value.modbus_state
    if type(_part30) not in (list, tuple):
        raise TypeError("array value required")
    _count30 = len(_part30)
    if _count30 > 16:
        raise ValueError("fixed/sequence count bound")
    writer.integer(_count30, 4)
    for _index in range(_count30):
        _element = _part30[_index]
        _write_Ros1Dsr_msgsModbusState(writer, _element)
    _part31 = value.access_control
    writer.integer(_part31, 4, True)
    _part32 = value.homming_completed
    if type(_part32) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part32), 1)
    _part33 = value.tp_initialized
    if type(_part33) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part33), 1)
    _part34 = value.mastering_need
    writer.integer(_part34, 1, True)
    _part35 = value.drl_stopped
    if type(_part35) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part35), 1)
    _part36 = value.disconnected
    if type(_part36) is not bool:
        raise TypeError("bool field required")
    writer.integer(int(_part36), 1)
    if not 907 <= len(writer.data) - _start <= 7595:
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
    value.current_velx = [reader.f64() for _ in range(6)]
    value.task_err = [reader.f64() for _ in range(6)]
    value.target_velx = [reader.f64() for _ in range(6)]
    value.target_posx = [reader.f64() for _ in range(6)]
    value.solution_space = reader.integer(1, True)
    value.rotation_matrix = [
        _read_Ros1Std_msgsFloat64MultiArray(reader) for _ in range(_read_count(reader, 6, 12))
    ]
    value.dynamic_tor = [reader.f64() for _ in range(6)]
    value.actual_jts = [reader.f64() for _ in range(6)]
    value.actual_ejt = [reader.f64() for _ in range(6)]
    value.actual_ett = [reader.f64() for _ in range(6)]
    value.sync_time = reader.f64()
    value.actual_bk = [reader.integer(1, True) for _ in range(6)]
    value.actual_bt = [reader.integer(1, True) for _ in range(5)]
    value.actual_mc = [reader.f64() for _ in range(6)]
    value.actual_mt = [reader.f64() for _ in range(6)]
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
    if not 907 <= reader.position - _start <= 7595:
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
