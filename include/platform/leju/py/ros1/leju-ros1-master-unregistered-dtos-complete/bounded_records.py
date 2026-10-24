# @file bounded_records.py
# @brief Full leju py codecs and original record metadata.
# @details Complete leju ros1_master_unregistered_dtos values in py. 2 original records retain 5 fields and 2
# interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
# definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
# profile API manual under document/platform/leju/en_US/catalog/.
# Generated complete canonical records; source-only until actually tested.
from __future__ import annotations
from dataclasses import dataclass as _dataclass, field as _field
from builtins import (classmethod as _classmethod, bool as _py_bool,
    float as _py_float, int as _py_int, str as _py_str, list as _py_list)
from typing import ClassVar as _ClassVar
from roswasm.codecs import Writer as _Writer, Reader as _Reader

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
class Ros1Kuavo_sdkQv:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'kuavo_sdk/qv'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_99d76f2c912c99d52786d5e2aa42bb256e1a6c997d3cf9daa2a6918697563e32'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 132
    value: _py_list[_py_float] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(132)
        _write_Ros1Kuavo_sdkQv(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 132)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Kuavo_sdkQv:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 4, 132))
        value = _read_Ros1Kuavo_sdkQv(reader)
        reader.end()
        return value

_record_Ros1Kuavo_sdkQv = Ros1Kuavo_sdkQv

def _write_Ros1Kuavo_sdkQv(writer, value):
    if type(value) is not Ros1Kuavo_sdkQv:
        raise TypeError('exact generated record required')
    _part0 = value.value
    if type(_part0) not in (list, tuple):
        raise TypeError('array value required')
    _count0 = len(_part0)
    if _count0 > 16:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count0, 4)
    for _index in range(_count0):
        _element = _part0[_index]
        writer.f64(_element)

def _read_Ros1Kuavo_sdkQv(reader):
    value = Ros1Kuavo_sdkQv()
    value.value = [reader.f64() for _ in range(_read_count(reader, 16, 8))]
    return value

@_dataclass
class Ros1Kuavo_sdkFullBodyTargetTrajectories:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'kuavo_sdk/fullBodyTargetTrajectories'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_670fdba890f7bf41db3f446366ef88d583de4966c54a58646b74ebdd07bbfb32'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 16
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 2320
    timeTrajectory: _py_list[_py_float] = _field(default_factory=lambda: [])
    footIndexTrajectory: _py_list[_py_int] = _field(default_factory=lambda: [])
    fullBodyQTrajectory: _py_list[_record_Ros1Kuavo_sdkQv] = _field(default_factory=lambda: [])
    fullBodyVTrajectory: _py_list[_record_Ros1Kuavo_sdkQv] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(2320)
        _write_Ros1Kuavo_sdkFullBodyTargetTrajectories(writer, self)
        wire = writer.finish()
        return _wire(wire, 16, 2320)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Kuavo_sdkFullBodyTargetTrajectories:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 16, 2320))
        value = _read_Ros1Kuavo_sdkFullBodyTargetTrajectories(reader)
        reader.end()
        return value

_record_Ros1Kuavo_sdkFullBodyTargetTrajectories = Ros1Kuavo_sdkFullBodyTargetTrajectories

def _write_Ros1Kuavo_sdkFullBodyTargetTrajectories(writer, value):
    if type(value) is not Ros1Kuavo_sdkFullBodyTargetTrajectories:
        raise TypeError('exact generated record required')
    _part0 = value.timeTrajectory
    if type(_part0) not in (list, tuple):
        raise TypeError('array value required')
    _count0 = len(_part0)
    if _count0 > 16:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count0, 4)
    for _index in range(_count0):
        _element = _part0[_index]
        writer.f64(_element)
    _part1 = value.footIndexTrajectory
    if type(_part1) not in (list, tuple):
        raise TypeError('array value required')
    _count1 = len(_part1)
    if _count1 > 16:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        writer.integer(_element, 4, True)
    _part2 = value.fullBodyQTrajectory
    if type(_part2) not in (list, tuple):
        raise TypeError('array value required')
    _count2 = len(_part2)
    if _count2 > 8:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        _write_Ros1Kuavo_sdkQv(writer, _element)
    _part3 = value.fullBodyVTrajectory
    if type(_part3) not in (list, tuple):
        raise TypeError('array value required')
    _count3 = len(_part3)
    if _count3 > 8:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count3, 4)
    for _index in range(_count3):
        _element = _part3[_index]
        _write_Ros1Kuavo_sdkQv(writer, _element)

def _read_Ros1Kuavo_sdkFullBodyTargetTrajectories(reader):
    value = Ros1Kuavo_sdkFullBodyTargetTrajectories()
    value.timeTrajectory = [reader.f64() for _ in range(_read_count(reader, 16, 8))]
    value.footIndexTrajectory = [reader.integer(4, True) for _ in range(_read_count(reader, 16, 4))]
    value.fullBodyQTrajectory = [_read_Ros1Kuavo_sdkQv(reader) for _ in range(_read_count(reader, 8, 4))]
    value.fullBodyVTrajectory = [_read_Ros1Kuavo_sdkQv(reader) for _ in range(_read_count(reader, 8, 4))]
    return value

