# @file bounded_records.py
# @brief Full fourier py codecs and original record metadata.
# @details Complete fourier ros1_aurora_bridge_v1 values in py. 51 original records retain 138 fields and 28
# interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
# definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
# profile API manual under document/platform/fourier/en_US/catalog/.
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
class Ros1Uwvm_fourier_bridgeMotionRecipe:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/MotionRecipe'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_f154f5af7297a77af5c7ab98bc78c54cb0163760dfe7b1eadedb02318cfbfd8a'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 18
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1170
    move_type: _py_int = 0
    group: _py_str = ''
    position: _py_list[_py_float] = _field(default_factory=lambda: [])
    has_velocity: _py_bool = False
    velocity: _py_list[_py_float] = _field(default_factory=lambda: [])
    expected_velocity: _py_int = 0

    def encode(self):
        writer = _Writer(1170)
        _write_Ros1Uwvm_fourier_bridgeMotionRecipe(writer, self)
        wire = writer.finish()
        return _wire(wire, 18, 1170)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Uwvm_fourier_bridgeMotionRecipe:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 18, 1170))
        value = _read_Ros1Uwvm_fourier_bridgeMotionRecipe(reader)
        reader.end()
        return value

_record_Ros1Uwvm_fourier_bridgeMotionRecipe = Ros1Uwvm_fourier_bridgeMotionRecipe

def _write_Ros1Uwvm_fourier_bridgeMotionRecipe(writer, value):
    if type(value) is not Ros1Uwvm_fourier_bridgeMotionRecipe:
        raise TypeError('exact generated record required')
    _part0 = value.move_type
    writer.integer(_part0, 1, False)
    _part1 = value.group
    _write_text(writer, _part1, 128)
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
    _part3 = value.has_velocity
    if type(_part3) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part3), 1)
    _part4 = value.velocity
    if type(_part4) not in (list, tuple):
        raise TypeError('array value required')
    _count4 = len(_part4)
    if _count4 > 64:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count4, 4)
    for _index in range(_count4):
        _element = _part4[_index]
        writer.f64(_element)
    _part5 = value.expected_velocity
    writer.integer(_part5, 4, True)

def _read_Ros1Uwvm_fourier_bridgeMotionRecipe(reader):
    value = Ros1Uwvm_fourier_bridgeMotionRecipe()
    value.move_type = reader.integer(1, False)
    value.group = _read_text(reader, 128)
    value.position = [reader.f64() for _ in range(_read_count(reader, 64, 8))]
    value.has_velocity = _read_bool(reader)
    value.velocity = [reader.f64() for _ in range(_read_count(reader, 64, 8))]
    value.expected_velocity = reader.integer(4, True)
    return value

@_dataclass
class Ros1Uwvm_fourier_bridgeExecuteMoveRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/ExecuteMoveRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_25e369f6b32bdc9983664fd4d857000a6a664364cb8bd0ff3d123cbc3c87e61b'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 9372
    sequence: _py_int = 0
    moves: _py_list[_record_Ros1Uwvm_fourier_bridgeMotionRecipe] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(9372)
        _write_Ros1Uwvm_fourier_bridgeExecuteMoveRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 9372)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Uwvm_fourier_bridgeExecuteMoveRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 12, 9372))
        value = _read_Ros1Uwvm_fourier_bridgeExecuteMoveRequest(reader)
        reader.end()
        return value

_record_Ros1Uwvm_fourier_bridgeExecuteMoveRequest = Ros1Uwvm_fourier_bridgeExecuteMoveRequest

def _write_Ros1Uwvm_fourier_bridgeExecuteMoveRequest(writer, value):
    if type(value) is not Ros1Uwvm_fourier_bridgeExecuteMoveRequest:
        raise TypeError('exact generated record required')
    _part0 = value.sequence
    writer.integer(_part0, 8, False)
    _part1 = value.moves
    if type(_part1) not in (list, tuple):
        raise TypeError('array value required')
    _count1 = len(_part1)
    if _count1 > 8:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        _write_Ros1Uwvm_fourier_bridgeMotionRecipe(writer, _element)

def _read_Ros1Uwvm_fourier_bridgeExecuteMoveRequest(reader):
    value = Ros1Uwvm_fourier_bridgeExecuteMoveRequest()
    value.sequence = reader.integer(8, False)
    value.moves = [_read_Ros1Uwvm_fourier_bridgeMotionRecipe(reader) for _ in range(_read_count(reader, 8, 18))]
    return value

@_dataclass
class Ros1Uwvm_fourier_bridgeExecuteMoveResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/ExecuteMoveResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_9a801e77130d12c30d67a874cb1e8c5a7cc912a2968af304d1cfd263e6242115'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 136
    status: _py_int = 0
    error: _py_str = ''

    def encode(self):
        writer = _Writer(136)
        _write_Ros1Uwvm_fourier_bridgeExecuteMoveResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 136)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Uwvm_fourier_bridgeExecuteMoveResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 136))
        value = _read_Ros1Uwvm_fourier_bridgeExecuteMoveResponse(reader)
        reader.end()
        return value

_record_Ros1Uwvm_fourier_bridgeExecuteMoveResponse = Ros1Uwvm_fourier_bridgeExecuteMoveResponse

def _write_Ros1Uwvm_fourier_bridgeExecuteMoveResponse(writer, value):
    if type(value) is not Ros1Uwvm_fourier_bridgeExecuteMoveResponse:
        raise TypeError('exact generated record required')
    _part0 = value.status
    writer.integer(_part0, 4, False)
    _part1 = value.error
    _write_text(writer, _part1, 128)

def _read_Ros1Uwvm_fourier_bridgeExecuteMoveResponse(reader):
    value = Ros1Uwvm_fourier_bridgeExecuteMoveResponse()
    value.status = reader.integer(4, False)
    value.error = _read_text(reader, 128)
    return value

@_dataclass
class Ros1Uwvm_fourier_bridgeGetBaseDataRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/GetBaseDataRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_17883b19f1dcc3d68263b6196eb5ec7afb8c902b8ab4f9b7eb66a58ef5e78528'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 140
    sequence: _py_int = 0
    key: _py_str = ''

    def encode(self):
        writer = _Writer(140)
        _write_Ros1Uwvm_fourier_bridgeGetBaseDataRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 140)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Uwvm_fourier_bridgeGetBaseDataRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 12, 140))
        value = _read_Ros1Uwvm_fourier_bridgeGetBaseDataRequest(reader)
        reader.end()
        return value

_record_Ros1Uwvm_fourier_bridgeGetBaseDataRequest = Ros1Uwvm_fourier_bridgeGetBaseDataRequest

def _write_Ros1Uwvm_fourier_bridgeGetBaseDataRequest(writer, value):
    if type(value) is not Ros1Uwvm_fourier_bridgeGetBaseDataRequest:
        raise TypeError('exact generated record required')
    _part0 = value.sequence
    writer.integer(_part0, 8, False)
    _part1 = value.key
    _write_text(writer, _part1, 128)

def _read_Ros1Uwvm_fourier_bridgeGetBaseDataRequest(reader):
    value = Ros1Uwvm_fourier_bridgeGetBaseDataRequest()
    value.sequence = reader.integer(8, False)
    value.key = _read_text(reader, 128)
    return value

@_dataclass
class Ros1Uwvm_fourier_bridgeGetBaseDataResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/GetBaseDataResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_e8928e07d6dd18cfa8a7031e0a947fa6b2f36bb608f5d2178ec01b92bb78b79a'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 652
    status: _py_int = 0
    error: _py_str = ''
    values: _py_list[_py_float] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(652)
        _write_Ros1Uwvm_fourier_bridgeGetBaseDataResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 652)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Uwvm_fourier_bridgeGetBaseDataResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 12, 652))
        value = _read_Ros1Uwvm_fourier_bridgeGetBaseDataResponse(reader)
        reader.end()
        return value

_record_Ros1Uwvm_fourier_bridgeGetBaseDataResponse = Ros1Uwvm_fourier_bridgeGetBaseDataResponse

def _write_Ros1Uwvm_fourier_bridgeGetBaseDataResponse(writer, value):
    if type(value) is not Ros1Uwvm_fourier_bridgeGetBaseDataResponse:
        raise TypeError('exact generated record required')
    _part0 = value.status
    writer.integer(_part0, 4, False)
    _part1 = value.error
    _write_text(writer, _part1, 128)
    _part2 = value.values
    if type(_part2) not in (list, tuple):
        raise TypeError('array value required')
    _count2 = len(_part2)
    if _count2 > 64:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        writer.f64(_element)

def _read_Ros1Uwvm_fourier_bridgeGetBaseDataResponse(reader):
    value = Ros1Uwvm_fourier_bridgeGetBaseDataResponse()
    value.status = reader.integer(4, False)
    value.error = _read_text(reader, 128)
    value.values = [reader.f64() for _ in range(_read_count(reader, 64, 8))]
    return value

@_dataclass
class Ros1Uwvm_fourier_bridgeGetCartesianStateRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/GetCartesianStateRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_658626f7fbd0f788149208230f03cef299bcb2a6ca4cf96d4e3af807d9b336ae'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 16
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 272
    sequence: _py_int = 0
    group: _py_str = ''
    key: _py_str = ''

    def encode(self):
        writer = _Writer(272)
        _write_Ros1Uwvm_fourier_bridgeGetCartesianStateRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 16, 272)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Uwvm_fourier_bridgeGetCartesianStateRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 16, 272))
        value = _read_Ros1Uwvm_fourier_bridgeGetCartesianStateRequest(reader)
        reader.end()
        return value

_record_Ros1Uwvm_fourier_bridgeGetCartesianStateRequest = Ros1Uwvm_fourier_bridgeGetCartesianStateRequest

def _write_Ros1Uwvm_fourier_bridgeGetCartesianStateRequest(writer, value):
    if type(value) is not Ros1Uwvm_fourier_bridgeGetCartesianStateRequest:
        raise TypeError('exact generated record required')
    _part0 = value.sequence
    writer.integer(_part0, 8, False)
    _part1 = value.group
    _write_text(writer, _part1, 128)
    _part2 = value.key
    _write_text(writer, _part2, 128)

def _read_Ros1Uwvm_fourier_bridgeGetCartesianStateRequest(reader):
    value = Ros1Uwvm_fourier_bridgeGetCartesianStateRequest()
    value.sequence = reader.integer(8, False)
    value.group = _read_text(reader, 128)
    value.key = _read_text(reader, 128)
    return value

@_dataclass
class Ros1Uwvm_fourier_bridgeGetCartesianStateResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/GetCartesianStateResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_a4fcd5f01a992b9aed4089b2c77ecda4656fe9aeb11c40777603805af964f671'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 652
    status: _py_int = 0
    error: _py_str = ''
    values: _py_list[_py_float] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(652)
        _write_Ros1Uwvm_fourier_bridgeGetCartesianStateResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 652)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Uwvm_fourier_bridgeGetCartesianStateResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 12, 652))
        value = _read_Ros1Uwvm_fourier_bridgeGetCartesianStateResponse(reader)
        reader.end()
        return value

_record_Ros1Uwvm_fourier_bridgeGetCartesianStateResponse = Ros1Uwvm_fourier_bridgeGetCartesianStateResponse

def _write_Ros1Uwvm_fourier_bridgeGetCartesianStateResponse(writer, value):
    if type(value) is not Ros1Uwvm_fourier_bridgeGetCartesianStateResponse:
        raise TypeError('exact generated record required')
    _part0 = value.status
    writer.integer(_part0, 4, False)
    _part1 = value.error
    _write_text(writer, _part1, 128)
    _part2 = value.values
    if type(_part2) not in (list, tuple):
        raise TypeError('array value required')
    _count2 = len(_part2)
    if _count2 > 64:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        writer.f64(_element)

def _read_Ros1Uwvm_fourier_bridgeGetCartesianStateResponse(reader):
    value = Ros1Uwvm_fourier_bridgeGetCartesianStateResponse()
    value.status = reader.integer(4, False)
    value.error = _read_text(reader, 128)
    value.values = [reader.f64() for _ in range(_read_count(reader, 64, 8))]
    return value

@_dataclass
class Ros1Uwvm_fourier_bridgeGetContactDataRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/GetContactDataRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_38d1fa3409948748e19fdff39259fbb51503a98e03e996addb560cb404931787'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 140
    sequence: _py_int = 0
    key: _py_str = ''

    def encode(self):
        writer = _Writer(140)
        _write_Ros1Uwvm_fourier_bridgeGetContactDataRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 140)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Uwvm_fourier_bridgeGetContactDataRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 12, 140))
        value = _read_Ros1Uwvm_fourier_bridgeGetContactDataRequest(reader)
        reader.end()
        return value

_record_Ros1Uwvm_fourier_bridgeGetContactDataRequest = Ros1Uwvm_fourier_bridgeGetContactDataRequest

def _write_Ros1Uwvm_fourier_bridgeGetContactDataRequest(writer, value):
    if type(value) is not Ros1Uwvm_fourier_bridgeGetContactDataRequest:
        raise TypeError('exact generated record required')
    _part0 = value.sequence
    writer.integer(_part0, 8, False)
    _part1 = value.key
    _write_text(writer, _part1, 128)

def _read_Ros1Uwvm_fourier_bridgeGetContactDataRequest(reader):
    value = Ros1Uwvm_fourier_bridgeGetContactDataRequest()
    value.sequence = reader.integer(8, False)
    value.key = _read_text(reader, 128)
    return value

@_dataclass
class Ros1Uwvm_fourier_bridgeGetContactDataResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/GetContactDataResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_c4381d31ad73640e2f4302bd200d4507cd5a1a4ca4ee180ad009589864f3f293'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 652
    status: _py_int = 0
    error: _py_str = ''
    values: _py_list[_py_float] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(652)
        _write_Ros1Uwvm_fourier_bridgeGetContactDataResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 652)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Uwvm_fourier_bridgeGetContactDataResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 12, 652))
        value = _read_Ros1Uwvm_fourier_bridgeGetContactDataResponse(reader)
        reader.end()
        return value

_record_Ros1Uwvm_fourier_bridgeGetContactDataResponse = Ros1Uwvm_fourier_bridgeGetContactDataResponse

def _write_Ros1Uwvm_fourier_bridgeGetContactDataResponse(writer, value):
    if type(value) is not Ros1Uwvm_fourier_bridgeGetContactDataResponse:
        raise TypeError('exact generated record required')
    _part0 = value.status
    writer.integer(_part0, 4, False)
    _part1 = value.error
    _write_text(writer, _part1, 128)
    _part2 = value.values
    if type(_part2) not in (list, tuple):
        raise TypeError('array value required')
    _count2 = len(_part2)
    if _count2 > 64:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        writer.f64(_element)

def _read_Ros1Uwvm_fourier_bridgeGetContactDataResponse(reader):
    value = Ros1Uwvm_fourier_bridgeGetContactDataResponse()
    value.status = reader.integer(4, False)
    value.error = _read_text(reader, 128)
    value.values = [reader.f64() for _ in range(_read_count(reader, 64, 8))]
    return value

@_dataclass
class Ros1Uwvm_fourier_bridgeGetFsmNameRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/GetFsmNameRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_4257279fd241dee60ef24d1d5ebdcadbc84701b2e8709a6e269d2259b9293b33'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    sequence: _py_int = 0

    def encode(self):
        writer = _Writer(8)
        _write_Ros1Uwvm_fourier_bridgeGetFsmNameRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 8)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Uwvm_fourier_bridgeGetFsmNameRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 8))
        value = _read_Ros1Uwvm_fourier_bridgeGetFsmNameRequest(reader)
        reader.end()
        return value

_record_Ros1Uwvm_fourier_bridgeGetFsmNameRequest = Ros1Uwvm_fourier_bridgeGetFsmNameRequest

def _write_Ros1Uwvm_fourier_bridgeGetFsmNameRequest(writer, value):
    if type(value) is not Ros1Uwvm_fourier_bridgeGetFsmNameRequest:
        raise TypeError('exact generated record required')
    _part0 = value.sequence
    writer.integer(_part0, 8, False)

def _read_Ros1Uwvm_fourier_bridgeGetFsmNameRequest(reader):
    value = Ros1Uwvm_fourier_bridgeGetFsmNameRequest()
    value.sequence = reader.integer(8, False)
    return value

@_dataclass
class Ros1Uwvm_fourier_bridgeGetFsmNameResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/GetFsmNameResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_9016d706e2afed027dd150f1534e615e551c3f26d581313bb3d36a279e1d7c55'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 268
    status: _py_int = 0
    error: _py_str = ''
    value: _py_str = ''

    def encode(self):
        writer = _Writer(268)
        _write_Ros1Uwvm_fourier_bridgeGetFsmNameResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 268)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Uwvm_fourier_bridgeGetFsmNameResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 12, 268))
        value = _read_Ros1Uwvm_fourier_bridgeGetFsmNameResponse(reader)
        reader.end()
        return value

_record_Ros1Uwvm_fourier_bridgeGetFsmNameResponse = Ros1Uwvm_fourier_bridgeGetFsmNameResponse

def _write_Ros1Uwvm_fourier_bridgeGetFsmNameResponse(writer, value):
    if type(value) is not Ros1Uwvm_fourier_bridgeGetFsmNameResponse:
        raise TypeError('exact generated record required')
    _part0 = value.status
    writer.integer(_part0, 4, False)
    _part1 = value.error
    _write_text(writer, _part1, 128)
    _part2 = value.value
    _write_text(writer, _part2, 128)

def _read_Ros1Uwvm_fourier_bridgeGetFsmNameResponse(reader):
    value = Ros1Uwvm_fourier_bridgeGetFsmNameResponse()
    value.status = reader.integer(4, False)
    value.error = _read_text(reader, 128)
    value.value = _read_text(reader, 128)
    return value

@_dataclass
class Ros1Uwvm_fourier_bridgeGetFsmStateRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/GetFsmStateRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_573f497168578dce3680e1d423f64993e9fccf7774cc2fc0db38ccce8286ee3e'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    sequence: _py_int = 0

    def encode(self):
        writer = _Writer(8)
        _write_Ros1Uwvm_fourier_bridgeGetFsmStateRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 8)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Uwvm_fourier_bridgeGetFsmStateRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 8))
        value = _read_Ros1Uwvm_fourier_bridgeGetFsmStateRequest(reader)
        reader.end()
        return value

_record_Ros1Uwvm_fourier_bridgeGetFsmStateRequest = Ros1Uwvm_fourier_bridgeGetFsmStateRequest

def _write_Ros1Uwvm_fourier_bridgeGetFsmStateRequest(writer, value):
    if type(value) is not Ros1Uwvm_fourier_bridgeGetFsmStateRequest:
        raise TypeError('exact generated record required')
    _part0 = value.sequence
    writer.integer(_part0, 8, False)

def _read_Ros1Uwvm_fourier_bridgeGetFsmStateRequest(reader):
    value = Ros1Uwvm_fourier_bridgeGetFsmStateRequest()
    value.sequence = reader.integer(8, False)
    return value

@_dataclass
class Ros1Uwvm_fourier_bridgeGetFsmStateResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/GetFsmStateResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_1d25f46d335312a766f3c0a7f410a45f283515396c8c6bfc4a49bcf6bc37a812'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 140
    status: _py_int = 0
    error: _py_str = ''
    value: _py_int = 0

    def encode(self):
        writer = _Writer(140)
        _write_Ros1Uwvm_fourier_bridgeGetFsmStateResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 140)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Uwvm_fourier_bridgeGetFsmStateResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 12, 140))
        value = _read_Ros1Uwvm_fourier_bridgeGetFsmStateResponse(reader)
        reader.end()
        return value

_record_Ros1Uwvm_fourier_bridgeGetFsmStateResponse = Ros1Uwvm_fourier_bridgeGetFsmStateResponse

def _write_Ros1Uwvm_fourier_bridgeGetFsmStateResponse(writer, value):
    if type(value) is not Ros1Uwvm_fourier_bridgeGetFsmStateResponse:
        raise TypeError('exact generated record required')
    _part0 = value.status
    writer.integer(_part0, 4, False)
    _part1 = value.error
    _write_text(writer, _part1, 128)
    _part2 = value.value
    writer.integer(_part2, 4, True)

def _read_Ros1Uwvm_fourier_bridgeGetFsmStateResponse(reader):
    value = Ros1Uwvm_fourier_bridgeGetFsmStateResponse()
    value.status = reader.integer(4, False)
    value.error = _read_text(reader, 128)
    value.value = reader.integer(4, True)
    return value

@_dataclass
class Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/GetGroupMotionStateRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_a2b6c77c903d5d4dc5ca20805e1ed2fa7dfa0852bc3f590638a577cec9d7248f'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 140
    sequence: _py_int = 0
    group: _py_str = ''

    def encode(self):
        writer = _Writer(140)
        _write_Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 140)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 12, 140))
        value = _read_Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest(reader)
        reader.end()
        return value

_record_Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest = Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest

def _write_Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest(writer, value):
    if type(value) is not Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest:
        raise TypeError('exact generated record required')
    _part0 = value.sequence
    writer.integer(_part0, 8, False)
    _part1 = value.group
    _write_text(writer, _part1, 128)

def _read_Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest(reader):
    value = Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest()
    value.sequence = reader.integer(8, False)
    value.group = _read_text(reader, 128)
    return value

@_dataclass
class Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/GetGroupMotionStateResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_e41b911990c306e8f264f1f9d961b822fb6669ad1ca5ee8f81609ba13a0fc8a2'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 140
    status: _py_int = 0
    error: _py_str = ''
    value: _py_int = 0

    def encode(self):
        writer = _Writer(140)
        _write_Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 140)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 12, 140))
        value = _read_Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse(reader)
        reader.end()
        return value

_record_Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse = Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse

def _write_Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse(writer, value):
    if type(value) is not Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse:
        raise TypeError('exact generated record required')
    _part0 = value.status
    writer.integer(_part0, 4, False)
    _part1 = value.error
    _write_text(writer, _part1, 128)
    _part2 = value.value
    writer.integer(_part2, 4, True)

def _read_Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse(reader):
    value = Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse()
    value.status = reader.integer(4, False)
    value.error = _read_text(reader, 128)
    value.value = reader.integer(4, True)
    return value

@_dataclass
class Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/GetGroupMotorCfgRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_bbcfb5561a970d7d086aa5a3a832dfbd8c3e2c2a9b4c5e9bea8224c6c7fc0576'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 16
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 272
    sequence: _py_int = 0
    group: _py_str = ''
    key: _py_str = ''

    def encode(self):
        writer = _Writer(272)
        _write_Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 16, 272)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 16, 272))
        value = _read_Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest(reader)
        reader.end()
        return value

_record_Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest = Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest

def _write_Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest(writer, value):
    if type(value) is not Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest:
        raise TypeError('exact generated record required')
    _part0 = value.sequence
    writer.integer(_part0, 8, False)
    _part1 = value.group
    _write_text(writer, _part1, 128)
    _part2 = value.key
    _write_text(writer, _part2, 128)

def _read_Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest(reader):
    value = Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest()
    value.sequence = reader.integer(8, False)
    value.group = _read_text(reader, 128)
    value.key = _read_text(reader, 128)
    return value

@_dataclass
class Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/GetGroupMotorCfgResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_cf7f2a81246842d851104edb7d422ff5342fc65dc56e573d552b10d02c81ad72'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 652
    status: _py_int = 0
    error: _py_str = ''
    values: _py_list[_py_float] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(652)
        _write_Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 652)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 12, 652))
        value = _read_Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse(reader)
        reader.end()
        return value

_record_Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse = Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse

def _write_Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse(writer, value):
    if type(value) is not Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse:
        raise TypeError('exact generated record required')
    _part0 = value.status
    writer.integer(_part0, 4, False)
    _part1 = value.error
    _write_text(writer, _part1, 128)
    _part2 = value.values
    if type(_part2) not in (list, tuple):
        raise TypeError('array value required')
    _count2 = len(_part2)
    if _count2 > 64:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        writer.f64(_element)

def _read_Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse(reader):
    value = Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse()
    value.status = reader.integer(4, False)
    value.error = _read_text(reader, 128)
    value.values = [reader.f64() for _ in range(_read_count(reader, 64, 8))]
    return value

@_dataclass
class Ros1Uwvm_fourier_bridgeGetGroupStateRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/GetGroupStateRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_d24ebea89b1c6e7963c8058109704033c9e1f1f74673732093412c5ac453b8fc'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 16
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 272
    sequence: _py_int = 0
    group: _py_str = ''
    key: _py_str = ''

    def encode(self):
        writer = _Writer(272)
        _write_Ros1Uwvm_fourier_bridgeGetGroupStateRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 16, 272)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Uwvm_fourier_bridgeGetGroupStateRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 16, 272))
        value = _read_Ros1Uwvm_fourier_bridgeGetGroupStateRequest(reader)
        reader.end()
        return value

_record_Ros1Uwvm_fourier_bridgeGetGroupStateRequest = Ros1Uwvm_fourier_bridgeGetGroupStateRequest

def _write_Ros1Uwvm_fourier_bridgeGetGroupStateRequest(writer, value):
    if type(value) is not Ros1Uwvm_fourier_bridgeGetGroupStateRequest:
        raise TypeError('exact generated record required')
    _part0 = value.sequence
    writer.integer(_part0, 8, False)
    _part1 = value.group
    _write_text(writer, _part1, 128)
    _part2 = value.key
    _write_text(writer, _part2, 128)

def _read_Ros1Uwvm_fourier_bridgeGetGroupStateRequest(reader):
    value = Ros1Uwvm_fourier_bridgeGetGroupStateRequest()
    value.sequence = reader.integer(8, False)
    value.group = _read_text(reader, 128)
    value.key = _read_text(reader, 128)
    return value

@_dataclass
class Ros1Uwvm_fourier_bridgeGetGroupStateResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/GetGroupStateResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_e21f17f91821b5a3154e108d0bcdb027a320b948d32e5637d20745c85edb0acb'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 652
    status: _py_int = 0
    error: _py_str = ''
    values: _py_list[_py_float] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(652)
        _write_Ros1Uwvm_fourier_bridgeGetGroupStateResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 652)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Uwvm_fourier_bridgeGetGroupStateResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 12, 652))
        value = _read_Ros1Uwvm_fourier_bridgeGetGroupStateResponse(reader)
        reader.end()
        return value

_record_Ros1Uwvm_fourier_bridgeGetGroupStateResponse = Ros1Uwvm_fourier_bridgeGetGroupStateResponse

def _write_Ros1Uwvm_fourier_bridgeGetGroupStateResponse(writer, value):
    if type(value) is not Ros1Uwvm_fourier_bridgeGetGroupStateResponse:
        raise TypeError('exact generated record required')
    _part0 = value.status
    writer.integer(_part0, 4, False)
    _part1 = value.error
    _write_text(writer, _part1, 128)
    _part2 = value.values
    if type(_part2) not in (list, tuple):
        raise TypeError('array value required')
    _count2 = len(_part2)
    if _count2 > 64:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        writer.f64(_element)

def _read_Ros1Uwvm_fourier_bridgeGetGroupStateResponse(reader):
    value = Ros1Uwvm_fourier_bridgeGetGroupStateResponse()
    value.status = reader.integer(4, False)
    value.error = _read_text(reader, 128)
    value.values = [reader.f64() for _ in range(_read_count(reader, 64, 8))]
    return value

@_dataclass
class Ros1Uwvm_fourier_bridgeGetSnapshotRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/GetSnapshotRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_384b9be938d41321afe3ef0765bdd442baa4f0c10049efd656c52d5ac1c89d4c'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    sequence: _py_int = 0

    def encode(self):
        writer = _Writer(8)
        _write_Ros1Uwvm_fourier_bridgeGetSnapshotRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 8)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Uwvm_fourier_bridgeGetSnapshotRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 8))
        value = _read_Ros1Uwvm_fourier_bridgeGetSnapshotRequest(reader)
        reader.end()
        return value

_record_Ros1Uwvm_fourier_bridgeGetSnapshotRequest = Ros1Uwvm_fourier_bridgeGetSnapshotRequest

def _write_Ros1Uwvm_fourier_bridgeGetSnapshotRequest(writer, value):
    if type(value) is not Ros1Uwvm_fourier_bridgeGetSnapshotRequest:
        raise TypeError('exact generated record required')
    _part0 = value.sequence
    writer.integer(_part0, 8, False)

def _read_Ros1Uwvm_fourier_bridgeGetSnapshotRequest(reader):
    value = Ros1Uwvm_fourier_bridgeGetSnapshotRequest()
    value.sequence = reader.integer(8, False)
    return value

@_dataclass
class Ros1Uwvm_fourier_bridgeGroupState:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/GroupState'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_473838de7c48b3719be265fd7c7554bb35a8a1a111e2e9290953d6a660650855'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 20
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1684
    group: _py_str = ''
    position: _py_list[_py_float] = _field(default_factory=lambda: [])
    velocity: _py_list[_py_float] = _field(default_factory=lambda: [])
    effort: _py_list[_py_float] = _field(default_factory=lambda: [])
    motion_state: _py_int = 0

    def encode(self):
        writer = _Writer(1684)
        _write_Ros1Uwvm_fourier_bridgeGroupState(writer, self)
        wire = writer.finish()
        return _wire(wire, 20, 1684)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Uwvm_fourier_bridgeGroupState:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 20, 1684))
        value = _read_Ros1Uwvm_fourier_bridgeGroupState(reader)
        reader.end()
        return value

_record_Ros1Uwvm_fourier_bridgeGroupState = Ros1Uwvm_fourier_bridgeGroupState

def _write_Ros1Uwvm_fourier_bridgeGroupState(writer, value):
    if type(value) is not Ros1Uwvm_fourier_bridgeGroupState:
        raise TypeError('exact generated record required')
    _part0 = value.group
    _write_text(writer, _part0, 128)
    _part1 = value.position
    if type(_part1) not in (list, tuple):
        raise TypeError('array value required')
    _count1 = len(_part1)
    if _count1 > 64:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        writer.f64(_element)
    _part2 = value.velocity
    if type(_part2) not in (list, tuple):
        raise TypeError('array value required')
    _count2 = len(_part2)
    if _count2 > 64:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        writer.f64(_element)
    _part3 = value.effort
    if type(_part3) not in (list, tuple):
        raise TypeError('array value required')
    _count3 = len(_part3)
    if _count3 > 64:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count3, 4)
    for _index in range(_count3):
        _element = _part3[_index]
        writer.f64(_element)
    _part4 = value.motion_state
    writer.integer(_part4, 4, True)

def _read_Ros1Uwvm_fourier_bridgeGroupState(reader):
    value = Ros1Uwvm_fourier_bridgeGroupState()
    value.group = _read_text(reader, 128)
    value.position = [reader.f64() for _ in range(_read_count(reader, 64, 8))]
    value.velocity = [reader.f64() for _ in range(_read_count(reader, 64, 8))]
    value.effort = [reader.f64() for _ in range(_read_count(reader, 64, 8))]
    value.motion_state = reader.integer(4, True)
    return value

@_dataclass
class Ros1Uwvm_fourier_bridgeStatus:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/Status'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_b08737c90dd86078c8ef968fc86b5b77562148b569cd8c271195c7b758190e3e'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 32
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 14400
    fsm_state: _py_int = 0
    fsm_name: _py_str = ''
    upper_fsm_state: _py_int = 0
    upper_fsm_name: _py_str = ''
    velocity_source: _py_int = 0
    velocity_source_name: _py_str = ''
    stand_pose: _py_list[_py_float] = _field(default_factory=lambda: [])
    groups: _py_list[_record_Ros1Uwvm_fourier_bridgeGroupState] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(14400)
        _write_Ros1Uwvm_fourier_bridgeStatus(writer, self)
        wire = writer.finish()
        return _wire(wire, 32, 14400)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Uwvm_fourier_bridgeStatus:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 32, 14400))
        value = _read_Ros1Uwvm_fourier_bridgeStatus(reader)
        reader.end()
        return value

_record_Ros1Uwvm_fourier_bridgeStatus = Ros1Uwvm_fourier_bridgeStatus

def _write_Ros1Uwvm_fourier_bridgeStatus(writer, value):
    if type(value) is not Ros1Uwvm_fourier_bridgeStatus:
        raise TypeError('exact generated record required')
    _part0 = value.fsm_state
    writer.integer(_part0, 4, True)
    _part1 = value.fsm_name
    _write_text(writer, _part1, 128)
    _part2 = value.upper_fsm_state
    writer.integer(_part2, 4, True)
    _part3 = value.upper_fsm_name
    _write_text(writer, _part3, 128)
    _part4 = value.velocity_source
    writer.integer(_part4, 4, True)
    _part5 = value.velocity_source_name
    _write_text(writer, _part5, 128)
    _part6 = value.stand_pose
    if type(_part6) not in (list, tuple):
        raise TypeError('array value required')
    _count6 = len(_part6)
    if _count6 > 64:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count6, 4)
    for _index in range(_count6):
        _element = _part6[_index]
        writer.f64(_element)
    _part7 = value.groups
    if type(_part7) not in (list, tuple):
        raise TypeError('array value required')
    _count7 = len(_part7)
    if _count7 > 8:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count7, 4)
    for _index in range(_count7):
        _element = _part7[_index]
        _write_Ros1Uwvm_fourier_bridgeGroupState(writer, _element)

def _read_Ros1Uwvm_fourier_bridgeStatus(reader):
    value = Ros1Uwvm_fourier_bridgeStatus()
    value.fsm_state = reader.integer(4, True)
    value.fsm_name = _read_text(reader, 128)
    value.upper_fsm_state = reader.integer(4, True)
    value.upper_fsm_name = _read_text(reader, 128)
    value.velocity_source = reader.integer(4, True)
    value.velocity_source_name = _read_text(reader, 128)
    value.stand_pose = [reader.f64() for _ in range(_read_count(reader, 64, 8))]
    value.groups = [_read_Ros1Uwvm_fourier_bridgeGroupState(reader) for _ in range(_read_count(reader, 8, 20))]
    return value

@_dataclass
class Ros1Uwvm_fourier_bridgeGetSnapshotResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/GetSnapshotResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_3b8b79195d53d3e0d22ac318e8f0898cb774cfaed35bebbc5210288273137c6a'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 40
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 14536
    status: _py_int = 0
    error: _py_str = ''
    value: _record_Ros1Uwvm_fourier_bridgeStatus = _field(default_factory=lambda: Ros1Uwvm_fourier_bridgeStatus())

    def encode(self):
        writer = _Writer(14536)
        _write_Ros1Uwvm_fourier_bridgeGetSnapshotResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 40, 14536)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Uwvm_fourier_bridgeGetSnapshotResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 40, 14536))
        value = _read_Ros1Uwvm_fourier_bridgeGetSnapshotResponse(reader)
        reader.end()
        return value

_record_Ros1Uwvm_fourier_bridgeGetSnapshotResponse = Ros1Uwvm_fourier_bridgeGetSnapshotResponse

def _write_Ros1Uwvm_fourier_bridgeGetSnapshotResponse(writer, value):
    if type(value) is not Ros1Uwvm_fourier_bridgeGetSnapshotResponse:
        raise TypeError('exact generated record required')
    _part0 = value.status
    writer.integer(_part0, 4, False)
    _part1 = value.error
    _write_text(writer, _part1, 128)
    _part2 = value.value
    _write_Ros1Uwvm_fourier_bridgeStatus(writer, _part2)

def _read_Ros1Uwvm_fourier_bridgeGetSnapshotResponse(reader):
    value = Ros1Uwvm_fourier_bridgeGetSnapshotResponse()
    value.status = reader.integer(4, False)
    value.error = _read_text(reader, 128)
    value.value = _read_Ros1Uwvm_fourier_bridgeStatus(reader)
    return value

@_dataclass
class Ros1Uwvm_fourier_bridgeGetStandPoseRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/GetStandPoseRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_5c3b18c383a9a9a162bf3b656007f56e791c26125e0dc59fd8dc87bd3ef54738'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    sequence: _py_int = 0

    def encode(self):
        writer = _Writer(8)
        _write_Ros1Uwvm_fourier_bridgeGetStandPoseRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 8)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Uwvm_fourier_bridgeGetStandPoseRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 8))
        value = _read_Ros1Uwvm_fourier_bridgeGetStandPoseRequest(reader)
        reader.end()
        return value

_record_Ros1Uwvm_fourier_bridgeGetStandPoseRequest = Ros1Uwvm_fourier_bridgeGetStandPoseRequest

def _write_Ros1Uwvm_fourier_bridgeGetStandPoseRequest(writer, value):
    if type(value) is not Ros1Uwvm_fourier_bridgeGetStandPoseRequest:
        raise TypeError('exact generated record required')
    _part0 = value.sequence
    writer.integer(_part0, 8, False)

def _read_Ros1Uwvm_fourier_bridgeGetStandPoseRequest(reader):
    value = Ros1Uwvm_fourier_bridgeGetStandPoseRequest()
    value.sequence = reader.integer(8, False)
    return value

@_dataclass
class Ros1Uwvm_fourier_bridgeGetStandPoseResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/GetStandPoseResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_302692ae2e86c23efb3edf132e0b7a6e48fc2072a34bb941039db459f99cd15d'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 652
    status: _py_int = 0
    error: _py_str = ''
    values: _py_list[_py_float] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(652)
        _write_Ros1Uwvm_fourier_bridgeGetStandPoseResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 652)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Uwvm_fourier_bridgeGetStandPoseResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 12, 652))
        value = _read_Ros1Uwvm_fourier_bridgeGetStandPoseResponse(reader)
        reader.end()
        return value

_record_Ros1Uwvm_fourier_bridgeGetStandPoseResponse = Ros1Uwvm_fourier_bridgeGetStandPoseResponse

def _write_Ros1Uwvm_fourier_bridgeGetStandPoseResponse(writer, value):
    if type(value) is not Ros1Uwvm_fourier_bridgeGetStandPoseResponse:
        raise TypeError('exact generated record required')
    _part0 = value.status
    writer.integer(_part0, 4, False)
    _part1 = value.error
    _write_text(writer, _part1, 128)
    _part2 = value.values
    if type(_part2) not in (list, tuple):
        raise TypeError('array value required')
    _count2 = len(_part2)
    if _count2 > 64:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        writer.f64(_element)

def _read_Ros1Uwvm_fourier_bridgeGetStandPoseResponse(reader):
    value = Ros1Uwvm_fourier_bridgeGetStandPoseResponse()
    value.status = reader.integer(4, False)
    value.error = _read_text(reader, 128)
    value.values = [reader.f64() for _ in range(_read_count(reader, 64, 8))]
    return value

@_dataclass
class Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/GetUpperFsmNameRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_57fbba93abe5e136ae1522ad47155377e8a55ddaa3f02793e8a605e3b596115a'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    sequence: _py_int = 0

    def encode(self):
        writer = _Writer(8)
        _write_Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 8)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 8))
        value = _read_Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest(reader)
        reader.end()
        return value

_record_Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest = Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest

def _write_Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest(writer, value):
    if type(value) is not Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest:
        raise TypeError('exact generated record required')
    _part0 = value.sequence
    writer.integer(_part0, 8, False)

def _read_Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest(reader):
    value = Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest()
    value.sequence = reader.integer(8, False)
    return value

@_dataclass
class Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/GetUpperFsmNameResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_e98befbd1c290a3cb2c99facb33334ac0d908db39247d869d0715c024e75c7fe'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 268
    status: _py_int = 0
    error: _py_str = ''
    value: _py_str = ''

    def encode(self):
        writer = _Writer(268)
        _write_Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 268)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 12, 268))
        value = _read_Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse(reader)
        reader.end()
        return value

_record_Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse = Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse

def _write_Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse(writer, value):
    if type(value) is not Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse:
        raise TypeError('exact generated record required')
    _part0 = value.status
    writer.integer(_part0, 4, False)
    _part1 = value.error
    _write_text(writer, _part1, 128)
    _part2 = value.value
    _write_text(writer, _part2, 128)

def _read_Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse(reader):
    value = Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse()
    value.status = reader.integer(4, False)
    value.error = _read_text(reader, 128)
    value.value = _read_text(reader, 128)
    return value

@_dataclass
class Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/GetUpperFsmStateRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_d38f791d76cec09de5bfa0b32d88d987ec3b077408682519f4c23940c4af0d12'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    sequence: _py_int = 0

    def encode(self):
        writer = _Writer(8)
        _write_Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 8)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 8))
        value = _read_Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest(reader)
        reader.end()
        return value

_record_Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest = Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest

def _write_Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest(writer, value):
    if type(value) is not Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest:
        raise TypeError('exact generated record required')
    _part0 = value.sequence
    writer.integer(_part0, 8, False)

def _read_Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest(reader):
    value = Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest()
    value.sequence = reader.integer(8, False)
    return value

@_dataclass
class Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/GetUpperFsmStateResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_3864ff479fa6b85dffd39e772e3260f9e5094cf8179f98c2184a09971d577e71'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 140
    status: _py_int = 0
    error: _py_str = ''
    value: _py_int = 0

    def encode(self):
        writer = _Writer(140)
        _write_Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 140)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 12, 140))
        value = _read_Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse(reader)
        reader.end()
        return value

_record_Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse = Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse

def _write_Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse(writer, value):
    if type(value) is not Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse:
        raise TypeError('exact generated record required')
    _part0 = value.status
    writer.integer(_part0, 4, False)
    _part1 = value.error
    _write_text(writer, _part1, 128)
    _part2 = value.value
    writer.integer(_part2, 4, True)

def _read_Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse(reader):
    value = Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse()
    value.status = reader.integer(4, False)
    value.error = _read_text(reader, 128)
    value.value = reader.integer(4, True)
    return value

@_dataclass
class Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/GetVelocitySourceRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_e38af8b3fc5b65c6f364f5949b42d694d7012d32d900f55e08b87d08bcf83042'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    sequence: _py_int = 0

    def encode(self):
        writer = _Writer(8)
        _write_Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 8)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 8))
        value = _read_Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest(reader)
        reader.end()
        return value

_record_Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest = Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest

def _write_Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest(writer, value):
    if type(value) is not Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest:
        raise TypeError('exact generated record required')
    _part0 = value.sequence
    writer.integer(_part0, 8, False)

def _read_Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest(reader):
    value = Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest()
    value.sequence = reader.integer(8, False)
    return value

@_dataclass
class Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/GetVelocitySourceResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_5bf809b889573acff549030cda017455303b009379d495aa7c3ab4399c862f60'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 140
    status: _py_int = 0
    error: _py_str = ''
    value: _py_int = 0

    def encode(self):
        writer = _Writer(140)
        _write_Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 140)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 12, 140))
        value = _read_Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse(reader)
        reader.end()
        return value

_record_Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse = Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse

def _write_Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse(writer, value):
    if type(value) is not Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse:
        raise TypeError('exact generated record required')
    _part0 = value.status
    writer.integer(_part0, 4, False)
    _part1 = value.error
    _write_text(writer, _part1, 128)
    _part2 = value.value
    writer.integer(_part2, 4, True)

def _read_Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse(reader):
    value = Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse()
    value.status = reader.integer(4, False)
    value.error = _read_text(reader, 128)
    value.value = reader.integer(4, True)
    return value

@_dataclass
class Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/GetVelocitySourceNameRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_a880cea6f506d0670df709e9e86726272e242bd969b5917a9698efa2f6dd897b'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    sequence: _py_int = 0

    def encode(self):
        writer = _Writer(8)
        _write_Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 8)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 8))
        value = _read_Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest(reader)
        reader.end()
        return value

_record_Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest = Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest

def _write_Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest(writer, value):
    if type(value) is not Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest:
        raise TypeError('exact generated record required')
    _part0 = value.sequence
    writer.integer(_part0, 8, False)

def _read_Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest(reader):
    value = Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest()
    value.sequence = reader.integer(8, False)
    return value

@_dataclass
class Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/GetVelocitySourceNameResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_4b746944429d7c07719da06a13b9a396dff3b51167894309e8cf46f64f049a9b'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 268
    status: _py_int = 0
    error: _py_str = ''
    value: _py_str = ''

    def encode(self):
        writer = _Writer(268)
        _write_Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 268)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 12, 268))
        value = _read_Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse(reader)
        reader.end()
        return value

_record_Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse = Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse

def _write_Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse(writer, value):
    if type(value) is not Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse:
        raise TypeError('exact generated record required')
    _part0 = value.status
    writer.integer(_part0, 4, False)
    _part1 = value.error
    _write_text(writer, _part1, 128)
    _part2 = value.value
    _write_text(writer, _part2, 128)

def _read_Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse(reader):
    value = Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse()
    value.status = reader.integer(4, False)
    value.error = _read_text(reader, 128)
    value.value = _read_text(reader, 128)
    return value

@_dataclass
class Ros1Uwvm_fourier_bridgeGroupValues:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/GroupValues'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_899fb75506245b34c004d1ad1392f79434612d04c73d80a3329f27ec8ff5244c'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 648
    group: _py_str = ''
    values: _py_list[_py_float] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(648)
        _write_Ros1Uwvm_fourier_bridgeGroupValues(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 648)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Uwvm_fourier_bridgeGroupValues:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 648))
        value = _read_Ros1Uwvm_fourier_bridgeGroupValues(reader)
        reader.end()
        return value

_record_Ros1Uwvm_fourier_bridgeGroupValues = Ros1Uwvm_fourier_bridgeGroupValues

def _write_Ros1Uwvm_fourier_bridgeGroupValues(writer, value):
    if type(value) is not Ros1Uwvm_fourier_bridgeGroupValues:
        raise TypeError('exact generated record required')
    _part0 = value.group
    _write_text(writer, _part0, 128)
    _part1 = value.values
    if type(_part1) not in (list, tuple):
        raise TypeError('array value required')
    _count1 = len(_part1)
    if _count1 > 64:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        writer.f64(_element)

def _read_Ros1Uwvm_fourier_bridgeGroupValues(reader):
    value = Ros1Uwvm_fourier_bridgeGroupValues()
    value.group = _read_text(reader, 128)
    value.values = [reader.f64() for _ in range(_read_count(reader, 64, 8))]
    return value

@_dataclass
class Ros1Uwvm_fourier_bridgeSetFsmStateRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/SetFsmStateRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_303406629d56a2b60a273488cd1e12081e7541374653bac04e2ca073d8c20885'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 12
    sequence: _py_int = 0
    state: _py_int = 0

    def encode(self):
        writer = _Writer(12)
        _write_Ros1Uwvm_fourier_bridgeSetFsmStateRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 12)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Uwvm_fourier_bridgeSetFsmStateRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 12, 12))
        value = _read_Ros1Uwvm_fourier_bridgeSetFsmStateRequest(reader)
        reader.end()
        return value

_record_Ros1Uwvm_fourier_bridgeSetFsmStateRequest = Ros1Uwvm_fourier_bridgeSetFsmStateRequest

def _write_Ros1Uwvm_fourier_bridgeSetFsmStateRequest(writer, value):
    if type(value) is not Ros1Uwvm_fourier_bridgeSetFsmStateRequest:
        raise TypeError('exact generated record required')
    _part0 = value.sequence
    writer.integer(_part0, 8, False)
    _part1 = value.state
    writer.integer(_part1, 4, True)

def _read_Ros1Uwvm_fourier_bridgeSetFsmStateRequest(reader):
    value = Ros1Uwvm_fourier_bridgeSetFsmStateRequest()
    value.sequence = reader.integer(8, False)
    value.state = reader.integer(4, True)
    return value

@_dataclass
class Ros1Uwvm_fourier_bridgeSetFsmStateResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/SetFsmStateResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_cffc820dc64a954aa94912941d3678a59a839b3dde4a6ebafdaf7d4367c22bd1'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 136
    status: _py_int = 0
    error: _py_str = ''

    def encode(self):
        writer = _Writer(136)
        _write_Ros1Uwvm_fourier_bridgeSetFsmStateResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 136)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Uwvm_fourier_bridgeSetFsmStateResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 136))
        value = _read_Ros1Uwvm_fourier_bridgeSetFsmStateResponse(reader)
        reader.end()
        return value

_record_Ros1Uwvm_fourier_bridgeSetFsmStateResponse = Ros1Uwvm_fourier_bridgeSetFsmStateResponse

def _write_Ros1Uwvm_fourier_bridgeSetFsmStateResponse(writer, value):
    if type(value) is not Ros1Uwvm_fourier_bridgeSetFsmStateResponse:
        raise TypeError('exact generated record required')
    _part0 = value.status
    writer.integer(_part0, 4, False)
    _part1 = value.error
    _write_text(writer, _part1, 128)

def _read_Ros1Uwvm_fourier_bridgeSetFsmStateResponse(reader):
    value = Ros1Uwvm_fourier_bridgeSetFsmStateResponse()
    value.status = reader.integer(4, False)
    value.error = _read_text(reader, 128)
    return value

@_dataclass
class Ros1Uwvm_fourier_bridgeSetGroupCommandRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/SetGroupCommandRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_b313435600ece44507300ad1ea5e375244387cde33301484ffda0390ca523220'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 20
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 15572
    sequence: _py_int = 0
    position: _py_list[_record_Ros1Uwvm_fourier_bridgeGroupValues] = _field(default_factory=lambda: [])
    velocity: _py_list[_record_Ros1Uwvm_fourier_bridgeGroupValues] = _field(default_factory=lambda: [])
    torque: _py_list[_record_Ros1Uwvm_fourier_bridgeGroupValues] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(15572)
        _write_Ros1Uwvm_fourier_bridgeSetGroupCommandRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 20, 15572)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Uwvm_fourier_bridgeSetGroupCommandRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 20, 15572))
        value = _read_Ros1Uwvm_fourier_bridgeSetGroupCommandRequest(reader)
        reader.end()
        return value

_record_Ros1Uwvm_fourier_bridgeSetGroupCommandRequest = Ros1Uwvm_fourier_bridgeSetGroupCommandRequest

def _write_Ros1Uwvm_fourier_bridgeSetGroupCommandRequest(writer, value):
    if type(value) is not Ros1Uwvm_fourier_bridgeSetGroupCommandRequest:
        raise TypeError('exact generated record required')
    _part0 = value.sequence
    writer.integer(_part0, 8, False)
    _part1 = value.position
    if type(_part1) not in (list, tuple):
        raise TypeError('array value required')
    _count1 = len(_part1)
    if _count1 > 8:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        _write_Ros1Uwvm_fourier_bridgeGroupValues(writer, _element)
    _part2 = value.velocity
    if type(_part2) not in (list, tuple):
        raise TypeError('array value required')
    _count2 = len(_part2)
    if _count2 > 8:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        _write_Ros1Uwvm_fourier_bridgeGroupValues(writer, _element)
    _part3 = value.torque
    if type(_part3) not in (list, tuple):
        raise TypeError('array value required')
    _count3 = len(_part3)
    if _count3 > 8:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count3, 4)
    for _index in range(_count3):
        _element = _part3[_index]
        _write_Ros1Uwvm_fourier_bridgeGroupValues(writer, _element)

def _read_Ros1Uwvm_fourier_bridgeSetGroupCommandRequest(reader):
    value = Ros1Uwvm_fourier_bridgeSetGroupCommandRequest()
    value.sequence = reader.integer(8, False)
    value.position = [_read_Ros1Uwvm_fourier_bridgeGroupValues(reader) for _ in range(_read_count(reader, 8, 8))]
    value.velocity = [_read_Ros1Uwvm_fourier_bridgeGroupValues(reader) for _ in range(_read_count(reader, 8, 8))]
    value.torque = [_read_Ros1Uwvm_fourier_bridgeGroupValues(reader) for _ in range(_read_count(reader, 8, 8))]
    return value

@_dataclass
class Ros1Uwvm_fourier_bridgeSetGroupCommandResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/SetGroupCommandResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_d4c199515080deccf6a7bbd7101c84f45d7b280a7ed618c2165231343aae558b'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 136
    status: _py_int = 0
    error: _py_str = ''

    def encode(self):
        writer = _Writer(136)
        _write_Ros1Uwvm_fourier_bridgeSetGroupCommandResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 136)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Uwvm_fourier_bridgeSetGroupCommandResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 136))
        value = _read_Ros1Uwvm_fourier_bridgeSetGroupCommandResponse(reader)
        reader.end()
        return value

_record_Ros1Uwvm_fourier_bridgeSetGroupCommandResponse = Ros1Uwvm_fourier_bridgeSetGroupCommandResponse

def _write_Ros1Uwvm_fourier_bridgeSetGroupCommandResponse(writer, value):
    if type(value) is not Ros1Uwvm_fourier_bridgeSetGroupCommandResponse:
        raise TypeError('exact generated record required')
    _part0 = value.status
    writer.integer(_part0, 4, False)
    _part1 = value.error
    _write_text(writer, _part1, 128)

def _read_Ros1Uwvm_fourier_bridgeSetGroupCommandResponse(reader):
    value = Ros1Uwvm_fourier_bridgeSetGroupCommandResponse()
    value.status = reader.integer(4, False)
    value.error = _read_text(reader, 128)
    return value

@_dataclass
class Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/SetMotorCfgPdRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_b6dc93532397dc9016b751bf29f651e5cbb0823b5a03a3f8473823bb234bc51d'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 16
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 10384
    sequence: _py_int = 0
    kp: _py_list[_record_Ros1Uwvm_fourier_bridgeGroupValues] = _field(default_factory=lambda: [])
    kd: _py_list[_record_Ros1Uwvm_fourier_bridgeGroupValues] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(10384)
        _write_Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 16, 10384)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 16, 10384))
        value = _read_Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest(reader)
        reader.end()
        return value

_record_Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest = Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest

def _write_Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest(writer, value):
    if type(value) is not Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest:
        raise TypeError('exact generated record required')
    _part0 = value.sequence
    writer.integer(_part0, 8, False)
    _part1 = value.kp
    if type(_part1) not in (list, tuple):
        raise TypeError('array value required')
    _count1 = len(_part1)
    if _count1 > 8:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        _write_Ros1Uwvm_fourier_bridgeGroupValues(writer, _element)
    _part2 = value.kd
    if type(_part2) not in (list, tuple):
        raise TypeError('array value required')
    _count2 = len(_part2)
    if _count2 > 8:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        _write_Ros1Uwvm_fourier_bridgeGroupValues(writer, _element)

def _read_Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest(reader):
    value = Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest()
    value.sequence = reader.integer(8, False)
    value.kp = [_read_Ros1Uwvm_fourier_bridgeGroupValues(reader) for _ in range(_read_count(reader, 8, 8))]
    value.kd = [_read_Ros1Uwvm_fourier_bridgeGroupValues(reader) for _ in range(_read_count(reader, 8, 8))]
    return value

@_dataclass
class Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/SetMotorCfgPdResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_c1a69a2c03c6cee9b43484b29a800a5f82be4b9188e3b199eb2db8babd205bdc'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 136
    status: _py_int = 0
    error: _py_str = ''

    def encode(self):
        writer = _Writer(136)
        _write_Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 136)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 136))
        value = _read_Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse(reader)
        reader.end()
        return value

_record_Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse = Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse

def _write_Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse(writer, value):
    if type(value) is not Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse:
        raise TypeError('exact generated record required')
    _part0 = value.status
    writer.integer(_part0, 4, False)
    _part1 = value.error
    _write_text(writer, _part1, 128)

def _read_Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse(reader):
    value = Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse()
    value.status = reader.integer(4, False)
    value.error = _read_text(reader, 128)
    return value

@_dataclass
class Ros1Uwvm_fourier_bridgeSetStandPoseRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/SetStandPoseRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_75a21fe3986a90ff45b9e7ef023a93be9852d1174b5724b77b82b87e002492ed'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 32
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 32
    sequence: _py_int = 0
    delta_z: _py_float = 0.0
    delta_pitch: _py_float = 0.0
    delta_yaw: _py_float = 0.0

    def encode(self):
        writer = _Writer(32)
        _write_Ros1Uwvm_fourier_bridgeSetStandPoseRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 32, 32)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Uwvm_fourier_bridgeSetStandPoseRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 32, 32))
        value = _read_Ros1Uwvm_fourier_bridgeSetStandPoseRequest(reader)
        reader.end()
        return value

_record_Ros1Uwvm_fourier_bridgeSetStandPoseRequest = Ros1Uwvm_fourier_bridgeSetStandPoseRequest

def _write_Ros1Uwvm_fourier_bridgeSetStandPoseRequest(writer, value):
    if type(value) is not Ros1Uwvm_fourier_bridgeSetStandPoseRequest:
        raise TypeError('exact generated record required')
    _part0 = value.sequence
    writer.integer(_part0, 8, False)
    _part1 = value.delta_z
    writer.f64(_part1)
    _part2 = value.delta_pitch
    writer.f64(_part2)
    _part3 = value.delta_yaw
    writer.f64(_part3)

def _read_Ros1Uwvm_fourier_bridgeSetStandPoseRequest(reader):
    value = Ros1Uwvm_fourier_bridgeSetStandPoseRequest()
    value.sequence = reader.integer(8, False)
    value.delta_z = reader.f64()
    value.delta_pitch = reader.f64()
    value.delta_yaw = reader.f64()
    return value

@_dataclass
class Ros1Uwvm_fourier_bridgeSetStandPoseResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/SetStandPoseResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_257da5b52ebfca54b067ced2acfab01e3aa3187c77751a5f82f9fda25885fe7e'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 136
    status: _py_int = 0
    error: _py_str = ''

    def encode(self):
        writer = _Writer(136)
        _write_Ros1Uwvm_fourier_bridgeSetStandPoseResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 136)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Uwvm_fourier_bridgeSetStandPoseResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 136))
        value = _read_Ros1Uwvm_fourier_bridgeSetStandPoseResponse(reader)
        reader.end()
        return value

_record_Ros1Uwvm_fourier_bridgeSetStandPoseResponse = Ros1Uwvm_fourier_bridgeSetStandPoseResponse

def _write_Ros1Uwvm_fourier_bridgeSetStandPoseResponse(writer, value):
    if type(value) is not Ros1Uwvm_fourier_bridgeSetStandPoseResponse:
        raise TypeError('exact generated record required')
    _part0 = value.status
    writer.integer(_part0, 4, False)
    _part1 = value.error
    _write_text(writer, _part1, 128)

def _read_Ros1Uwvm_fourier_bridgeSetStandPoseResponse(reader):
    value = Ros1Uwvm_fourier_bridgeSetStandPoseResponse()
    value.status = reader.integer(4, False)
    value.error = _read_text(reader, 128)
    return value

@_dataclass
class Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/SetUpperFsmStateRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_cc12b01c002d9e3662f16595a55df6abebdea2fe06e350b7e81f33bee0d47758'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 12
    sequence: _py_int = 0
    state: _py_int = 0

    def encode(self):
        writer = _Writer(12)
        _write_Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 12)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 12, 12))
        value = _read_Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest(reader)
        reader.end()
        return value

_record_Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest = Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest

def _write_Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest(writer, value):
    if type(value) is not Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest:
        raise TypeError('exact generated record required')
    _part0 = value.sequence
    writer.integer(_part0, 8, False)
    _part1 = value.state
    writer.integer(_part1, 4, True)

def _read_Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest(reader):
    value = Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest()
    value.sequence = reader.integer(8, False)
    value.state = reader.integer(4, True)
    return value

@_dataclass
class Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/SetUpperFsmStateResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_27ee9830ebf52c3cfcdd8691bf1be9a1a63f7cd12c43cd30531b73501cd423c1'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 136
    status: _py_int = 0
    error: _py_str = ''

    def encode(self):
        writer = _Writer(136)
        _write_Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 136)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 136))
        value = _read_Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse(reader)
        reader.end()
        return value

_record_Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse = Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse

def _write_Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse(writer, value):
    if type(value) is not Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse:
        raise TypeError('exact generated record required')
    _part0 = value.status
    writer.integer(_part0, 4, False)
    _part1 = value.error
    _write_text(writer, _part1, 128)

def _read_Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse(reader):
    value = Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse()
    value.status = reader.integer(4, False)
    value.error = _read_text(reader, 128)
    return value

@_dataclass
class Ros1Uwvm_fourier_bridgeSetVelocityRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/SetVelocityRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_33eb9021c19ed28c9aabc0076b8e5cc9f36b1fcaebbb93ebfa3dc38e9691ed2d'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 40
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 40
    sequence: _py_int = 0
    vx: _py_float = 0.0
    vy: _py_float = 0.0
    yaw: _py_float = 0.0
    duration: _py_float = 0.0

    def encode(self):
        writer = _Writer(40)
        _write_Ros1Uwvm_fourier_bridgeSetVelocityRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 40, 40)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Uwvm_fourier_bridgeSetVelocityRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 40, 40))
        value = _read_Ros1Uwvm_fourier_bridgeSetVelocityRequest(reader)
        reader.end()
        return value

_record_Ros1Uwvm_fourier_bridgeSetVelocityRequest = Ros1Uwvm_fourier_bridgeSetVelocityRequest

def _write_Ros1Uwvm_fourier_bridgeSetVelocityRequest(writer, value):
    if type(value) is not Ros1Uwvm_fourier_bridgeSetVelocityRequest:
        raise TypeError('exact generated record required')
    _part0 = value.sequence
    writer.integer(_part0, 8, False)
    _part1 = value.vx
    writer.f64(_part1)
    _part2 = value.vy
    writer.f64(_part2)
    _part3 = value.yaw
    writer.f64(_part3)
    _part4 = value.duration
    writer.f64(_part4)

def _read_Ros1Uwvm_fourier_bridgeSetVelocityRequest(reader):
    value = Ros1Uwvm_fourier_bridgeSetVelocityRequest()
    value.sequence = reader.integer(8, False)
    value.vx = reader.f64()
    value.vy = reader.f64()
    value.yaw = reader.f64()
    value.duration = reader.f64()
    return value

@_dataclass
class Ros1Uwvm_fourier_bridgeSetVelocityResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/SetVelocityResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_3325d6b620d3481b6976cd4579f197ed19d6a5074618f700273ca89e0eba762a'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 136
    status: _py_int = 0
    error: _py_str = ''

    def encode(self):
        writer = _Writer(136)
        _write_Ros1Uwvm_fourier_bridgeSetVelocityResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 136)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Uwvm_fourier_bridgeSetVelocityResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 136))
        value = _read_Ros1Uwvm_fourier_bridgeSetVelocityResponse(reader)
        reader.end()
        return value

_record_Ros1Uwvm_fourier_bridgeSetVelocityResponse = Ros1Uwvm_fourier_bridgeSetVelocityResponse

def _write_Ros1Uwvm_fourier_bridgeSetVelocityResponse(writer, value):
    if type(value) is not Ros1Uwvm_fourier_bridgeSetVelocityResponse:
        raise TypeError('exact generated record required')
    _part0 = value.status
    writer.integer(_part0, 4, False)
    _part1 = value.error
    _write_text(writer, _part1, 128)

def _read_Ros1Uwvm_fourier_bridgeSetVelocityResponse(reader):
    value = Ros1Uwvm_fourier_bridgeSetVelocityResponse()
    value.status = reader.integer(4, False)
    value.error = _read_text(reader, 128)
    return value

@_dataclass
class Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/SetVelocitySourceRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_769c68344260812d775718b441b2a0e5e26422995c946031b919707994e295eb'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 12
    sequence: _py_int = 0
    source: _py_int = 0

    def encode(self):
        writer = _Writer(12)
        _write_Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 12)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 12, 12))
        value = _read_Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest(reader)
        reader.end()
        return value

_record_Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest = Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest

def _write_Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest(writer, value):
    if type(value) is not Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest:
        raise TypeError('exact generated record required')
    _part0 = value.sequence
    writer.integer(_part0, 8, False)
    _part1 = value.source
    writer.integer(_part1, 4, True)

def _read_Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest(reader):
    value = Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest()
    value.sequence = reader.integer(8, False)
    value.source = reader.integer(4, True)
    return value

@_dataclass
class Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/SetVelocitySourceResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_d791bd1ff7d8219a98a9ad475cdf0274fa87638452ce0359de57abc05ff0c3be'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 136
    status: _py_int = 0
    error: _py_str = ''

    def encode(self):
        writer = _Writer(136)
        _write_Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 136)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 136))
        value = _read_Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse(reader)
        reader.end()
        return value

_record_Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse = Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse

def _write_Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse(writer, value):
    if type(value) is not Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse:
        raise TypeError('exact generated record required')
    _part0 = value.status
    writer.integer(_part0, 4, False)
    _part1 = value.error
    _write_text(writer, _part1, 128)

def _read_Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse(reader):
    value = Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse()
    value.status = reader.integer(4, False)
    value.error = _read_text(reader, 128)
    return value

@_dataclass
class Ros1Uwvm_fourier_bridgeVelocityCommand:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/VelocityCommand'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_befc41dabd1a7359d32aa3dd4a0197e607fa84346f14fd79f8bc04d328b6ad54'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 40
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 40
    sequence: _py_int = 0
    vx: _py_float = 0.0
    vy: _py_float = 0.0
    yaw: _py_float = 0.0
    duration: _py_float = 0.0

    def encode(self):
        writer = _Writer(40)
        _write_Ros1Uwvm_fourier_bridgeVelocityCommand(writer, self)
        wire = writer.finish()
        return _wire(wire, 40, 40)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Uwvm_fourier_bridgeVelocityCommand:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 40, 40))
        value = _read_Ros1Uwvm_fourier_bridgeVelocityCommand(reader)
        reader.end()
        return value

_record_Ros1Uwvm_fourier_bridgeVelocityCommand = Ros1Uwvm_fourier_bridgeVelocityCommand

def _write_Ros1Uwvm_fourier_bridgeVelocityCommand(writer, value):
    if type(value) is not Ros1Uwvm_fourier_bridgeVelocityCommand:
        raise TypeError('exact generated record required')
    _part0 = value.sequence
    writer.integer(_part0, 8, False)
    _part1 = value.vx
    writer.f64(_part1)
    _part2 = value.vy
    writer.f64(_part2)
    _part3 = value.yaw
    writer.f64(_part3)
    _part4 = value.duration
    writer.f64(_part4)

def _read_Ros1Uwvm_fourier_bridgeVelocityCommand(reader):
    value = Ros1Uwvm_fourier_bridgeVelocityCommand()
    value.sequence = reader.integer(8, False)
    value.vx = reader.f64()
    value.vy = reader.f64()
    value.yaw = reader.f64()
    value.duration = reader.f64()
    return value

@_dataclass
class Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/WaitGroupsMotionCompleteRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_27bdd6aa7689099eb40b3bdf96a1c3939677b016c685bd6fb6a275233b933b33'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 28
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1084
    sequence: _py_int = 0
    groups: _py_list[_py_str] = _field(default_factory=lambda: [])
    timeout_seconds: _py_float = 0.0
    poll_seconds: _py_float = 0.0

    def encode(self):
        writer = _Writer(1084)
        _write_Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 28, 1084)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 28, 1084))
        value = _read_Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest(reader)
        reader.end()
        return value

_record_Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest = Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest

def _write_Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest(writer, value):
    if type(value) is not Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest:
        raise TypeError('exact generated record required')
    _part0 = value.sequence
    writer.integer(_part0, 8, False)
    _part1 = value.groups
    if type(_part1) not in (list, tuple):
        raise TypeError('array value required')
    _count1 = len(_part1)
    if _count1 > 8:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        _write_text(writer, _element, 128)
    _part2 = value.timeout_seconds
    writer.f64(_part2)
    _part3 = value.poll_seconds
    writer.f64(_part3)

def _read_Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest(reader):
    value = Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest()
    value.sequence = reader.integer(8, False)
    value.groups = [_read_text(reader, 128) for _ in range(_read_count(reader, 8, 4))]
    value.timeout_seconds = reader.f64()
    value.poll_seconds = reader.f64()
    return value

@_dataclass
class Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/WaitGroupsMotionCompleteResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_7d0a1faabf2934ec1a75981a5ed4251017a666975174efca8be48c152a15fee8'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 9
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 137
    status: _py_int = 0
    error: _py_str = ''
    complete: _py_bool = False

    def encode(self):
        writer = _Writer(137)
        _write_Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 9, 137)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 9, 137))
        value = _read_Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse(reader)
        reader.end()
        return value

_record_Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse = Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse

def _write_Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse(writer, value):
    if type(value) is not Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse:
        raise TypeError('exact generated record required')
    _part0 = value.status
    writer.integer(_part0, 4, False)
    _part1 = value.error
    _write_text(writer, _part1, 128)
    _part2 = value.complete
    if type(_part2) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part2), 1)

def _read_Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse(reader):
    value = Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse()
    value.status = reader.integer(4, False)
    value.error = _read_text(reader, 128)
    value.complete = _read_bool(reader)
    return value

