# @file bounded_records.py
# @brief Represent complete typed values and their bounded wire layout for nvidia-groot.
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
class Ros2Uwvm_groot_bridgeMsgRGBFrame:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_groot_bridge/msg/RGBFrame'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_db7172fe7a7f0672c907f31ca0b1cb6286b804246d62e0414ac4313ae1096364'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 28
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 860
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 860
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = (
        []
    )
    key: _py_str = ''
    shape: _py_list[_py_int] = _field(default_factory=lambda: [0 for _ in range(5)])
    pixels: _py_list[_py_int] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(860)
        _write_Ros2Uwvm_groot_bridgeMsgRGBFrame(writer, self)
        wire = writer.finish()
        return _wire(wire, 28, 860)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Uwvm_groot_bridgeMsgRGBFrame:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 28, 860))
        value = _read_Ros2Uwvm_groot_bridgeMsgRGBFrame(reader)
        reader.end()
        return value

_record_Ros2Uwvm_groot_bridgeMsgRGBFrame = Ros2Uwvm_groot_bridgeMsgRGBFrame

def _write_Ros2Uwvm_groot_bridgeMsgRGBFrame(writer, value):
    if type(value) is not Ros2Uwvm_groot_bridgeMsgRGBFrame:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.key
    _write_text(writer, _part0, 64)
    _part1 = value.shape
    if type(_part1) not in (list, tuple):
        raise TypeError('array value required')
    _count1 = len(_part1)
    if _count1 != 5:
        raise ValueError('fixed/sequence count bound')
    for _index in range(_count1):
        _element = _part1[_index]
        writer.integer(_element, 4, False)
    _part2 = value.pixels
    if type(_part2) not in (list, tuple):
        raise TypeError('array value required')
    _count2 = len(_part2)
    if _count2 > 768:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        writer.integer(_element, 1, False)
    if not 28 <= len(writer.data) - _start <= 860:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Uwvm_groot_bridgeMsgRGBFrame(reader):
    _start = reader.position
    value = Ros2Uwvm_groot_bridgeMsgRGBFrame()
    value.key = _read_text(reader, 64)
    value.shape = [reader.integer(4, False) for _ in range(5)]
    value.pixels = [reader.integer(1, False) for _ in range(_read_count(reader, 768, 1))]
    if not 28 <= reader.position - _start <= 860:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Uwvm_groot_bridgeMsgFloatTensor:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_groot_bridge/msg/FloatTensor'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_a091d322ab737d2a9415f889fb78a18df7aec6ce74cfab0dcd5bb2a61ae3abae'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 20
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1364
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1364
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = (
        []
    )
    key: _py_str = ''
    shape: _py_list[_py_int] = _field(default_factory=lambda: [0 for _ in range(3)])
    values: _py_list[_py_float] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(1364)
        _write_Ros2Uwvm_groot_bridgeMsgFloatTensor(writer, self)
        wire = writer.finish()
        return _wire(wire, 20, 1364)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Uwvm_groot_bridgeMsgFloatTensor:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 20, 1364))
        value = _read_Ros2Uwvm_groot_bridgeMsgFloatTensor(reader)
        reader.end()
        return value

_record_Ros2Uwvm_groot_bridgeMsgFloatTensor = Ros2Uwvm_groot_bridgeMsgFloatTensor

def _write_Ros2Uwvm_groot_bridgeMsgFloatTensor(writer, value):
    if type(value) is not Ros2Uwvm_groot_bridgeMsgFloatTensor:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.key
    _write_text(writer, _part0, 64)
    _part1 = value.shape
    if type(_part1) not in (list, tuple):
        raise TypeError('array value required')
    _count1 = len(_part1)
    if _count1 != 3:
        raise ValueError('fixed/sequence count bound')
    for _index in range(_count1):
        _element = _part1[_index]
        writer.integer(_element, 4, False)
    _part2 = value.values
    if type(_part2) not in (list, tuple):
        raise TypeError('array value required')
    _count2 = len(_part2)
    if _count2 > 320:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        writer.f32(_element)
    if not 20 <= len(writer.data) - _start <= 1364:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Uwvm_groot_bridgeMsgFloatTensor(reader):
    _start = reader.position
    value = Ros2Uwvm_groot_bridgeMsgFloatTensor()
    value.key = _read_text(reader, 64)
    value.shape = [reader.integer(4, False) for _ in range(3)]
    value.values = [reader.f32() for _ in range(_read_count(reader, 320, 4))]
    if not 20 <= reader.position - _start <= 1364:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Uwvm_groot_bridgeMsgTextSequence:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_groot_bridge/msg/TextSequence'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_895be974f2560f0afff7614f5400ff7205e013cda269825a8443628621c8e80d'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 16
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1120
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 1120
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = (
        []
    )
    key: _py_str = ''
    shape: _py_list[_py_int] = _field(default_factory=lambda: [0 for _ in range(2)])
    texts: _py_list[_py_str] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(1120)
        _write_Ros2Uwvm_groot_bridgeMsgTextSequence(writer, self)
        wire = writer.finish()
        return _wire(wire, 16, 1120)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Uwvm_groot_bridgeMsgTextSequence:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 16, 1120))
        value = _read_Ros2Uwvm_groot_bridgeMsgTextSequence(reader)
        reader.end()
        return value

_record_Ros2Uwvm_groot_bridgeMsgTextSequence = Ros2Uwvm_groot_bridgeMsgTextSequence

def _write_Ros2Uwvm_groot_bridgeMsgTextSequence(writer, value):
    if type(value) is not Ros2Uwvm_groot_bridgeMsgTextSequence:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.key
    _write_text(writer, _part0, 64)
    _part1 = value.shape
    if type(_part1) not in (list, tuple):
        raise TypeError('array value required')
    _count1 = len(_part1)
    if _count1 != 2:
        raise ValueError('fixed/sequence count bound')
    for _index in range(_count1):
        _element = _part1[_index]
        writer.integer(_element, 4, False)
    _part2 = value.texts
    if type(_part2) not in (list, tuple):
        raise TypeError('array value required')
    _count2 = len(_part2)
    if _count2 > 4:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        _write_text(writer, _element, 256)
    if not 16 <= len(writer.data) - _start <= 1120:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Uwvm_groot_bridgeMsgTextSequence(reader):
    _start = reader.position
    value = Ros2Uwvm_groot_bridgeMsgTextSequence()
    value.key = _read_text(reader, 64)
    value.shape = [reader.integer(4, False) for _ in range(2)]
    value.texts = [_read_text(reader, 256) for _ in range(_read_count(reader, 4, 4))]
    if not 16 <= reader.position - _start <= 1120:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Uwvm_groot_bridgeSrvInferAction_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_groot_bridge/srv/InferAction_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_78f85929fb8646e9a92f17cafa3e8296fde42aaf49a56b271531ebad869a0fa6'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 20
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 10296
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 10296
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = (
        []
    )
    application_nonce: _py_int = 0
    video: _py_list[_record_Ros2Uwvm_groot_bridgeMsgRGBFrame] = _field(default_factory=lambda: [])
    state: _py_list[_record_Ros2Uwvm_groot_bridgeMsgFloatTensor] = _field(default_factory=lambda: [])
    language: _py_list[_record_Ros2Uwvm_groot_bridgeMsgTextSequence] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(10296)
        _write_Ros2Uwvm_groot_bridgeSrvInferAction_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 20, 10296)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Uwvm_groot_bridgeSrvInferAction_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 20, 10296))
        value = _read_Ros2Uwvm_groot_bridgeSrvInferAction_Request(reader)
        reader.end()
        return value

_record_Ros2Uwvm_groot_bridgeSrvInferAction_Request = Ros2Uwvm_groot_bridgeSrvInferAction_Request

def _write_Ros2Uwvm_groot_bridgeSrvInferAction_Request(writer, value):
    if type(value) is not Ros2Uwvm_groot_bridgeSrvInferAction_Request:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.application_nonce
    writer.integer(_part0, 8, False)
    _part1 = value.video
    if type(_part1) not in (list, tuple):
        raise TypeError('array value required')
    _count1 = len(_part1)
    if _count1 > 3:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        _write_Ros2Uwvm_groot_bridgeMsgRGBFrame(writer, _element)
    _part2 = value.state
    if type(_part2) not in (list, tuple):
        raise TypeError('array value required')
    _count2 = len(_part2)
    if _count2 > 4:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        _write_Ros2Uwvm_groot_bridgeMsgFloatTensor(writer, _element)
    _part3 = value.language
    if type(_part3) not in (list, tuple):
        raise TypeError('array value required')
    _count3 = len(_part3)
    if _count3 > 2:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count3, 4)
    for _index in range(_count3):
        _element = _part3[_index]
        _write_Ros2Uwvm_groot_bridgeMsgTextSequence(writer, _element)
    if not 20 <= len(writer.data) - _start <= 10296:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Uwvm_groot_bridgeSrvInferAction_Request(reader):
    _start = reader.position
    value = Ros2Uwvm_groot_bridgeSrvInferAction_Request()
    value.application_nonce = reader.integer(8, False)
    value.video = [_read_Ros2Uwvm_groot_bridgeMsgRGBFrame(reader) for _ in range(_read_count(reader, 3, 28))]
    value.state = [_read_Ros2Uwvm_groot_bridgeMsgFloatTensor(reader) for _ in range(_read_count(reader, 4, 20))]
    value.language = [_read_Ros2Uwvm_groot_bridgeMsgTextSequence(reader) for _ in range(_read_count(reader, 2, 16))]
    if not 20 <= reader.position - _start <= 10296:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Uwvm_groot_bridgeSrvInferAction_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_groot_bridge/srv/InferAction_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_787281a2adea187ae43ff951a414dd7563b3e08318414e5199e1950b8143a3ce'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 17
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 10929
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 10929
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = (
        []
    )
    status: _py_int = 0
    application_nonce: _py_int = 0
    action: _py_list[_record_Ros2Uwvm_groot_bridgeMsgFloatTensor] = _field(default_factory=lambda: [])
    info_is_empty: _py_bool = False

    def encode(self):
        writer = _Writer(10929)
        _write_Ros2Uwvm_groot_bridgeSrvInferAction_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 17, 10929)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Uwvm_groot_bridgeSrvInferAction_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 17, 10929))
        value = _read_Ros2Uwvm_groot_bridgeSrvInferAction_Response(reader)
        reader.end()
        return value

_record_Ros2Uwvm_groot_bridgeSrvInferAction_Response = Ros2Uwvm_groot_bridgeSrvInferAction_Response

def _write_Ros2Uwvm_groot_bridgeSrvInferAction_Response(writer, value):
    if type(value) is not Ros2Uwvm_groot_bridgeSrvInferAction_Response:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.status
    writer.integer(_part0, 4, False)
    _part1 = value.application_nonce
    writer.integer(_part1, 8, False)
    _part2 = value.action
    if type(_part2) not in (list, tuple):
        raise TypeError('array value required')
    _count2 = len(_part2)
    if _count2 > 8:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        _write_Ros2Uwvm_groot_bridgeMsgFloatTensor(writer, _element)
    _part3 = value.info_is_empty
    if type(_part3) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part3), 1)
    if not 17 <= len(writer.data) - _start <= 10929:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Uwvm_groot_bridgeSrvInferAction_Response(reader):
    _start = reader.position
    value = Ros2Uwvm_groot_bridgeSrvInferAction_Response()
    value.status = reader.integer(4, False)
    value.application_nonce = reader.integer(8, False)
    value.action = [_read_Ros2Uwvm_groot_bridgeMsgFloatTensor(reader) for _ in range(_read_count(reader, 8, 20))]
    value.info_is_empty = _read_bool(reader)
    if not 17 <= reader.position - _start <= 10929:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Uwvm_groot_bridgeMsgRGBDescriptor:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_groot_bridge/msg/RGBDescriptor'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_6daaa392f15643aa3afe5c101c6b649dc2e63f38b61d0332309a280fa9b48e40'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 24
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 88
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 88
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = (
        []
    )
    key: _py_str = ''
    shape: _py_list[_py_int] = _field(default_factory=lambda: [0 for _ in range(5)])

    def encode(self):
        writer = _Writer(88)
        _write_Ros2Uwvm_groot_bridgeMsgRGBDescriptor(writer, self)
        wire = writer.finish()
        return _wire(wire, 24, 88)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Uwvm_groot_bridgeMsgRGBDescriptor:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 24, 88))
        value = _read_Ros2Uwvm_groot_bridgeMsgRGBDescriptor(reader)
        reader.end()
        return value

_record_Ros2Uwvm_groot_bridgeMsgRGBDescriptor = Ros2Uwvm_groot_bridgeMsgRGBDescriptor

def _write_Ros2Uwvm_groot_bridgeMsgRGBDescriptor(writer, value):
    if type(value) is not Ros2Uwvm_groot_bridgeMsgRGBDescriptor:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.key
    _write_text(writer, _part0, 64)
    _part1 = value.shape
    if type(_part1) not in (list, tuple):
        raise TypeError('array value required')
    _count1 = len(_part1)
    if _count1 != 5:
        raise ValueError('fixed/sequence count bound')
    for _index in range(_count1):
        _element = _part1[_index]
        writer.integer(_element, 4, False)
    if not 24 <= len(writer.data) - _start <= 88:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Uwvm_groot_bridgeMsgRGBDescriptor(reader):
    _start = reader.position
    value = Ros2Uwvm_groot_bridgeMsgRGBDescriptor()
    value.key = _read_text(reader, 64)
    value.shape = [reader.integer(4, False) for _ in range(5)]
    if not 24 <= reader.position - _start <= 88:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Uwvm_groot_bridgeSrvBeginObservation_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_groot_bridge/srv/BeginObservation_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_76a3b103328e39f46ea2c1cf47dcc417c110771c2253c4defad577906d6d7ba2'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 276
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 276
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = (
        []
    )
    observation_nonce: _py_int = 0
    video: _py_list[_record_Ros2Uwvm_groot_bridgeMsgRGBDescriptor] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(276)
        _write_Ros2Uwvm_groot_bridgeSrvBeginObservation_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 276)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Uwvm_groot_bridgeSrvBeginObservation_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 12, 276))
        value = _read_Ros2Uwvm_groot_bridgeSrvBeginObservation_Request(reader)
        reader.end()
        return value

_record_Ros2Uwvm_groot_bridgeSrvBeginObservation_Request = Ros2Uwvm_groot_bridgeSrvBeginObservation_Request

def _write_Ros2Uwvm_groot_bridgeSrvBeginObservation_Request(writer, value):
    if type(value) is not Ros2Uwvm_groot_bridgeSrvBeginObservation_Request:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.observation_nonce
    writer.integer(_part0, 8, False)
    _part1 = value.video
    if type(_part1) not in (list, tuple):
        raise TypeError('array value required')
    _count1 = len(_part1)
    if _count1 > 3:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        _write_Ros2Uwvm_groot_bridgeMsgRGBDescriptor(writer, _element)
    if not 12 <= len(writer.data) - _start <= 276:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Uwvm_groot_bridgeSrvBeginObservation_Request(reader):
    _start = reader.position
    value = Ros2Uwvm_groot_bridgeSrvBeginObservation_Request()
    value.observation_nonce = reader.integer(8, False)
    value.video = [_read_Ros2Uwvm_groot_bridgeMsgRGBDescriptor(reader) for _ in range(_read_count(reader, 3, 24))]
    if not 12 <= reader.position - _start <= 276:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Uwvm_groot_bridgeSrvBeginObservation_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_groot_bridge/srv/BeginObservation_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_53141471de18d5d46601139c6ef67c2381f4274030bb05559354f2aa07def049'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 12
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 12
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = (
        []
    )
    status: _py_int = 0
    observation_nonce: _py_int = 0

    def encode(self):
        writer = _Writer(12)
        _write_Ros2Uwvm_groot_bridgeSrvBeginObservation_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 12)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Uwvm_groot_bridgeSrvBeginObservation_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 12, 12))
        value = _read_Ros2Uwvm_groot_bridgeSrvBeginObservation_Response(reader)
        reader.end()
        return value

_record_Ros2Uwvm_groot_bridgeSrvBeginObservation_Response = Ros2Uwvm_groot_bridgeSrvBeginObservation_Response

def _write_Ros2Uwvm_groot_bridgeSrvBeginObservation_Response(writer, value):
    if type(value) is not Ros2Uwvm_groot_bridgeSrvBeginObservation_Response:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.status
    writer.integer(_part0, 4, False)
    _part1 = value.observation_nonce
    writer.integer(_part1, 8, False)
    if not 12 <= len(writer.data) - _start <= 12:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Uwvm_groot_bridgeSrvBeginObservation_Response(reader):
    _start = reader.position
    value = Ros2Uwvm_groot_bridgeSrvBeginObservation_Response()
    value.status = reader.integer(4, False)
    value.observation_nonce = reader.integer(8, False)
    if not 12 <= reader.position - _start <= 12:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_groot_bridge/srv/WriteRGBChunk_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_c7fe45f5da3c73a4d556ad72e0ce5c40d70c531714f0ac841a791404b1048f2c'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 20
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 852
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 852
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = (
        []
    )
    observation_nonce: _py_int = 0
    key: _py_str = ''
    offset: _py_int = 0
    pixels: _py_list[_py_int] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(852)
        _write_Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 20, 852)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 20, 852))
        value = _read_Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request(reader)
        reader.end()
        return value

_record_Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request = Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request

def _write_Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request(writer, value):
    if type(value) is not Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.observation_nonce
    writer.integer(_part0, 8, False)
    _part1 = value.key
    _write_text(writer, _part1, 64)
    _part2 = value.offset
    writer.integer(_part2, 4, False)
    _part3 = value.pixels
    if type(_part3) not in (list, tuple):
        raise TypeError('array value required')
    _count3 = len(_part3)
    if _count3 > 768:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count3, 4)
    for _index in range(_count3):
        _element = _part3[_index]
        writer.integer(_element, 1, False)
    if not 20 <= len(writer.data) - _start <= 852:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request(reader):
    _start = reader.position
    value = Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request()
    value.observation_nonce = reader.integer(8, False)
    value.key = _read_text(reader, 64)
    value.offset = reader.integer(4, False)
    value.pixels = [reader.integer(1, False) for _ in range(_read_count(reader, 768, 1))]
    if not 20 <= reader.position - _start <= 852:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_groot_bridge/srv/WriteRGBChunk_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_4c279e0701b59c05f0eb185c1990b4e6a0bb1550ca638b04b60b31143e11efba'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 16
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 16
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 16
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = (
        []
    )
    status: _py_int = 0
    observation_nonce: _py_int = 0
    accepted_bytes: _py_int = 0

    def encode(self):
        writer = _Writer(16)
        _write_Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 16, 16)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 16, 16))
        value = _read_Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response(reader)
        reader.end()
        return value

_record_Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response = Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response

def _write_Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response(writer, value):
    if type(value) is not Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.status
    writer.integer(_part0, 4, False)
    _part1 = value.observation_nonce
    writer.integer(_part1, 8, False)
    _part2 = value.accepted_bytes
    writer.integer(_part2, 4, False)
    if not 16 <= len(writer.data) - _start <= 16:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response(reader):
    _start = reader.position
    value = Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response()
    value.status = reader.integer(4, False)
    value.observation_nonce = reader.integer(8, False)
    value.accepted_bytes = reader.integer(4, False)
    if not 16 <= reader.position - _start <= 16:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_groot_bridge/srv/ReleaseObservation_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_dae7e73133b73414ed9d85bf3bf3bbc699f84976dbce9b12f68a5d710b3190c5'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = (
        []
    )
    observation_nonce: _py_int = 0

    def encode(self):
        writer = _Writer(8)
        _write_Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 8)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 8))
        value = _read_Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request(reader)
        reader.end()
        return value

_record_Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request = Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request

def _write_Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request(writer, value):
    if type(value) is not Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.observation_nonce
    writer.integer(_part0, 8, False)
    if not 8 <= len(writer.data) - _start <= 8:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request(reader):
    _start = reader.position
    value = Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request()
    value.observation_nonce = reader.integer(8, False)
    if not 8 <= reader.position - _start <= 8:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_groot_bridge/srv/ReleaseObservation_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_776da57c3952c647fc2c3f18855cb889747d84d6824222c3b8be267db1688d69'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 12
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 12
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = (
        []
    )
    status: _py_int = 0
    observation_nonce: _py_int = 0

    def encode(self):
        writer = _Writer(12)
        _write_Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 12)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 12, 12))
        value = _read_Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response(reader)
        reader.end()
        return value

_record_Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response = Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response

def _write_Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response(writer, value):
    if type(value) is not Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.status
    writer.integer(_part0, 4, False)
    _part1 = value.observation_nonce
    writer.integer(_part1, 8, False)
    if not 12 <= len(writer.data) - _start <= 12:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response(reader):
    _start = reader.position
    value = Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response()
    value.status = reader.integer(4, False)
    value.observation_nonce = reader.integer(8, False)
    if not 12 <= reader.position - _start <= 12:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_groot_bridge/srv/InferUploadedAction_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_fab202af4445441157f6ac5249ed0eeb3035f5c88c467fb363a2ef024a5c524d'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 24
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 7720
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 7720
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = (
        []
    )
    application_nonce: _py_int = 0
    observation_nonce: _py_int = 0
    state: _py_list[_record_Ros2Uwvm_groot_bridgeMsgFloatTensor] = _field(default_factory=lambda: [])
    language: _py_list[_record_Ros2Uwvm_groot_bridgeMsgTextSequence] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(7720)
        _write_Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 24, 7720)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 24, 7720))
        value = _read_Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request(reader)
        reader.end()
        return value

_record_Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request = Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request

def _write_Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request(writer, value):
    if type(value) is not Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.application_nonce
    writer.integer(_part0, 8, False)
    _part1 = value.observation_nonce
    writer.integer(_part1, 8, False)
    _part2 = value.state
    if type(_part2) not in (list, tuple):
        raise TypeError('array value required')
    _count2 = len(_part2)
    if _count2 > 4:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        _write_Ros2Uwvm_groot_bridgeMsgFloatTensor(writer, _element)
    _part3 = value.language
    if type(_part3) not in (list, tuple):
        raise TypeError('array value required')
    _count3 = len(_part3)
    if _count3 > 2:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count3, 4)
    for _index in range(_count3):
        _element = _part3[_index]
        _write_Ros2Uwvm_groot_bridgeMsgTextSequence(writer, _element)
    if not 24 <= len(writer.data) - _start <= 7720:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request(reader):
    _start = reader.position
    value = Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request()
    value.application_nonce = reader.integer(8, False)
    value.observation_nonce = reader.integer(8, False)
    value.state = [_read_Ros2Uwvm_groot_bridgeMsgFloatTensor(reader) for _ in range(_read_count(reader, 4, 20))]
    value.language = [_read_Ros2Uwvm_groot_bridgeMsgTextSequence(reader) for _ in range(_read_count(reader, 2, 16))]
    if not 24 <= reader.position - _start <= 7720:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_groot_bridge/srv/InferUploadedAction_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_b8ae8113a9cd0e2d51ffc78d81f45e047cc03282bb9e4b82dd3a2571be29d93e'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 17
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 10929
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 10929
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = (
        []
    )
    status: _py_int = 0
    application_nonce: _py_int = 0
    action: _py_list[_record_Ros2Uwvm_groot_bridgeMsgFloatTensor] = _field(default_factory=lambda: [])
    info_is_empty: _py_bool = False

    def encode(self):
        writer = _Writer(10929)
        _write_Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 17, 10929)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 17, 10929))
        value = _read_Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response(reader)
        reader.end()
        return value

_record_Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response = Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response

def _write_Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response(writer, value):
    if type(value) is not Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.status
    writer.integer(_part0, 4, False)
    _part1 = value.application_nonce
    writer.integer(_part1, 8, False)
    _part2 = value.action
    if type(_part2) not in (list, tuple):
        raise TypeError('array value required')
    _count2 = len(_part2)
    if _count2 > 8:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        _write_Ros2Uwvm_groot_bridgeMsgFloatTensor(writer, _element)
    _part3 = value.info_is_empty
    if type(_part3) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part3), 1)
    if not 17 <= len(writer.data) - _start <= 10929:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response(reader):
    _start = reader.position
    value = Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response()
    value.status = reader.integer(4, False)
    value.application_nonce = reader.integer(8, False)
    value.action = [_read_Ros2Uwvm_groot_bridgeMsgFloatTensor(reader) for _ in range(_read_count(reader, 8, 20))]
    value.info_is_empty = _read_bool(reader)
    if not 17 <= reader.position - _start <= 10929:
        raise ValueError('nested complete record aggregate extent')
    return value

