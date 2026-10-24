# @file bounded_records.py
# @brief Represent complete typed values and their bounded wire layout for nvidia-isaac-sim.
# @details Field widths, defaults and sequence limits follow the selected catalog. Keep backing storage alive
# while borrowed values are in use; preserve all decode failures before invoking a ROS operation.

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
class Ros2Builtin_interfacesMsgTime:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'builtin_interfaces/msg/Time'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = (
        []
    )
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
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_afba9e74be3c5e3321750c1c4c30ba2925269f75b9da43a6d5c1e93d293d7396'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 76
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 76
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = (
        []
    )
    stamp: _record_Ros2Builtin_interfacesMsgTime = _field(default_factory=lambda: Ros2Builtin_interfacesMsgTime())
    frame_id: _py_str = ''

    def encode(self):
        writer = _Writer(76)
        _write_Ros2Std_msgsMsgHeader(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 76)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Std_msgsMsgHeader:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 12, 76))
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
    _write_text(writer, _part1, 64)
    if not 12 <= len(writer.data) - _start <= 76:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Std_msgsMsgHeader(reader):
    _start = reader.position
    value = Ros2Std_msgsMsgHeader()
    value.stamp = _read_Ros2Builtin_interfacesMsgTime(reader)
    value.frame_id = _read_text(reader, 64)
    if not 12 <= reader.position - _start <= 76:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Sensor_msgsMsgJointState:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'sensor_msgs/msg/JointState'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_2fe8e1de38676a3880ca61266fb575e3625198e66a1da1708cf8c103cb829cac'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 28
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 5980
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 5980
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = (
        []
    )
    header: _record_Ros2Std_msgsMsgHeader = _field(default_factory=lambda: Ros2Std_msgsMsgHeader())
    name: _py_list[_py_str] = _field(default_factory=lambda: [])
    position: _py_list[_py_float] = _field(default_factory=lambda: [])
    velocity: _py_list[_py_float] = _field(default_factory=lambda: [])
    effort: _py_list[_py_float] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(5980)
        _write_Ros2Sensor_msgsMsgJointState(writer, self)
        wire = writer.finish()
        return _wire(wire, 28, 5980)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Sensor_msgsMsgJointState:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 28, 5980))
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
    if _count1 > 64:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        _write_text(writer, _element, 64)
    _part2 = value.position
    if type(_part2) not in (list, tuple):
        raise TypeError('array value required')
    _count2 = len(_part2)
    if _count2 > 64:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        writer.f64(_element)
    _part3 = value.velocity
    if type(_part3) not in (list, tuple):
        raise TypeError('array value required')
    _count3 = len(_part3)
    if _count3 > 64:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count3, 4)
    for _index in range(_count3):
        _element = _part3[_index]
        writer.f64(_element)
    _part4 = value.effort
    if type(_part4) not in (list, tuple):
        raise TypeError('array value required')
    _count4 = len(_part4)
    if _count4 > 64:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count4, 4)
    for _index in range(_count4):
        _element = _part4[_index]
        writer.f64(_element)
    _sizes = [_count1, _count2, _count3, _count4]
    if len({n for n in _sizes if n}) > 1:
        raise ValueError('nonempty JointState arrays must have equal length')
    if not 28 <= len(writer.data) - _start <= 5980:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Sensor_msgsMsgJointState(reader):
    _start = reader.position
    value = Ros2Sensor_msgsMsgJointState()
    value.header = _read_Ros2Std_msgsMsgHeader(reader)
    value.name = [_read_text(reader, 64) for _ in range(_read_count(reader, 64, 4))]
    value.position = [reader.f64() for _ in range(_read_count(reader, 64, 8))]
    value.velocity = [reader.f64() for _ in range(_read_count(reader, 64, 8))]
    value.effort = [reader.f64() for _ in range(_read_count(reader, 64, 8))]
    _sizes = [len(value.name), len(value.position), len(value.velocity), len(value.effort)]
    if len({n for n in _sizes if n}) > 1:
        raise ValueError('nonempty JointState arrays must have equal length')
    if not 28 <= reader.position - _start <= 5980:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Uwvm_isaac_sim_bridgeMsgClockEvent:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_isaac_sim_bridge/msg/ClockEvent'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_78b31f4b219f55bd576134f1b561194cb09c8ec0ac8dedafddd9b03ba6a198d6'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 14
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 14
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 14
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = (
        [   {   'name': 'AUTOMATIC',
                'type': 'uint8',
                'native_type': 'uint8',
                'literal': '1',
                'value': '1'},
            {'name': 'MANUAL', 'type': 'uint8', 'native_type': 'uint8', 'literal': '2', 'value': '2'}]
    )
    AUTOMATIC: _ClassVar = 1
    MANUAL: _ClassVar = 2
    kind: _py_int = 0
    phase: _py_int = 0
    frame: _py_int = 0
    sec: _py_int = 0
    nanosec: _py_int = 0

    def encode(self):
        writer = _Writer(14)
        _write_Ros2Uwvm_isaac_sim_bridgeMsgClockEvent(writer, self)
        wire = writer.finish()
        return _wire(wire, 14, 14)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Uwvm_isaac_sim_bridgeMsgClockEvent:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 14, 14))
        value = _read_Ros2Uwvm_isaac_sim_bridgeMsgClockEvent(reader)
        reader.end()
        return value

_record_Ros2Uwvm_isaac_sim_bridgeMsgClockEvent = Ros2Uwvm_isaac_sim_bridgeMsgClockEvent

def _write_Ros2Uwvm_isaac_sim_bridgeMsgClockEvent(writer, value):
    if type(value) is not Ros2Uwvm_isaac_sim_bridgeMsgClockEvent:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.kind
    writer.integer(_part0, 1, False)
    _part1 = value.phase
    writer.integer(_part1, 1, False)
    _part2 = value.frame
    writer.integer(_part2, 4, False)
    _part3 = value.sec
    writer.integer(_part3, 4, True)
    _part4 = value.nanosec
    writer.integer(_part4, 4, False)
    if not 14 <= len(writer.data) - _start <= 14:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Uwvm_isaac_sim_bridgeMsgClockEvent(reader):
    _start = reader.position
    value = Ros2Uwvm_isaac_sim_bridgeMsgClockEvent()
    value.kind = reader.integer(1, False)
    value.phase = reader.integer(1, False)
    value.frame = reader.integer(4, False)
    value.sec = reader.integer(4, True)
    value.nanosec = reader.integer(4, False)
    if not 14 <= reader.position - _start <= 14:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_isaac_sim_bridge/srv/ClockControl_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_8957fd758c2793d355e7356df436ea644a5d5da7ad7e2d179ed4d09936351b19'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 22
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 22
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 22
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = (
        [   {'name': 'START', 'type': 'uint8', 'native_type': 'uint8', 'literal': '1', 'value': '1'},
            {'name': 'STEP', 'type': 'uint8', 'native_type': 'uint8', 'literal': '2', 'value': '2'},
            {'name': 'FINISH', 'type': 'uint8', 'native_type': 'uint8', 'literal': '3', 'value': '3'},
            {'name': 'CANCEL', 'type': 'uint8', 'native_type': 'uint8', 'literal': '4', 'value': '4'}]
    )
    START: _ClassVar = 1
    STEP: _ClassVar = 2
    FINISH: _ClassVar = 3
    CANCEL: _ClassVar = 4
    operation: _py_int = 0
    session_nonce: _py_int = 0
    request_sequence: _py_int = 0
    phase: _py_int = 0
    frame: _py_int = 0
    impulse: _py_bool = False
    extra_update: _py_bool = False
    pacing_milliseconds: _py_int = 0

    def encode(self):
        writer = _Writer(22)
        _write_Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 22, 22)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 22, 22))
        value = _read_Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request(reader)
        reader.end()
        return value

_record_Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request = Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request

def _write_Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request(writer, value):
    if type(value) is not Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.operation
    writer.integer(_part0, 1, False)
    _part1 = value.session_nonce
    writer.integer(_part1, 8, False)
    _part2 = value.request_sequence
    writer.integer(_part2, 4, False)
    _part3 = value.phase
    writer.integer(_part3, 1, False)
    _part4 = value.frame
    writer.integer(_part4, 4, False)
    _part5 = value.impulse
    if type(_part5) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part5), 1)
    _part6 = value.extra_update
    if type(_part6) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part6), 1)
    _part7 = value.pacing_milliseconds
    writer.integer(_part7, 2, False)
    if not 22 <= len(writer.data) - _start <= 22:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request(reader):
    _start = reader.position
    value = Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request()
    value.operation = reader.integer(1, False)
    value.session_nonce = reader.integer(8, False)
    value.request_sequence = reader.integer(4, False)
    value.phase = reader.integer(1, False)
    value.frame = reader.integer(4, False)
    value.impulse = _read_bool(reader)
    value.extra_update = _read_bool(reader)
    value.pacing_milliseconds = reader.integer(2, False)
    if not 22 <= reader.position - _start <= 22:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_isaac_sim_bridge/srv/ClockControl_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_3b7763445df65d2a26fb54bfe6d41984008b33253cd7a614f5f057832d909502'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 48
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 48
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 48
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = (
        []
    )
    status: _py_int = 0
    session_nonce: _py_int = 0
    request_sequence: _py_int = 0
    state: _py_int = 0
    actual_app_updates: _py_int = 0
    completed_steps: _py_int = 0
    has_event: _py_bool = False
    event: _record_Ros2Uwvm_isaac_sim_bridgeMsgClockEvent = _field(default_factory=lambda: Ros2Uwvm_isaac_sim_bridgeMsgClockEvent())
    cleanup_status: _py_int = 0

    def encode(self):
        writer = _Writer(48)
        _write_Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 48, 48)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 48, 48))
        value = _read_Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response(reader)
        reader.end()
        return value

_record_Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response = Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response

def _write_Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response(writer, value):
    if type(value) is not Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.status
    writer.integer(_part0, 4, False)
    _part1 = value.session_nonce
    writer.integer(_part1, 8, False)
    _part2 = value.request_sequence
    writer.integer(_part2, 4, False)
    _part3 = value.state
    writer.integer(_part3, 1, False)
    _part4 = value.actual_app_updates
    writer.integer(_part4, 8, False)
    _part5 = value.completed_steps
    writer.integer(_part5, 4, False)
    _part6 = value.has_event
    if type(_part6) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part6), 1)
    _part7 = value.event
    _write_Ros2Uwvm_isaac_sim_bridgeMsgClockEvent(writer, _part7)
    _part8 = value.cleanup_status
    writer.integer(_part8, 4, False)
    if not 48 <= len(writer.data) - _start <= 48:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response(reader):
    _start = reader.position
    value = Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response()
    value.status = reader.integer(4, False)
    value.session_nonce = reader.integer(8, False)
    value.request_sequence = reader.integer(4, False)
    value.state = reader.integer(1, False)
    value.actual_app_updates = reader.integer(8, False)
    value.completed_steps = reader.integer(4, False)
    value.has_event = _read_bool(reader)
    value.event = _read_Ros2Uwvm_isaac_sim_bridgeMsgClockEvent(reader)
    value.cleanup_status = reader.integer(4, False)
    if not 48 <= reader.position - _start <= 48:
        raise ValueError('nested complete record aggregate extent')
    return value

