# @file bounded_records.py
# @brief Full fourier py codecs and original record metadata.
# @details Complete fourier ros2_aurora_bridge_v1 values in py. 51 original records retain 138 fields and 28
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
class Ros2Uwvm_fourier_bridgeMsgGroupState:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/msg/GroupState'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_f33e483ea4f7b9326e43f82c92f948ce6d47f16fb34e463ba25f3ec01d5e0bf4'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 20
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1684
    group: _py_str = ''
    position: _py_list[_py_float] = _field(default_factory=lambda: [])
    velocity: _py_list[_py_float] = _field(default_factory=lambda: [])
    effort: _py_list[_py_float] = _field(default_factory=lambda: [])
    motion_state: _py_int = 0

    def encode(self):
        writer = _Writer(1684)
        _write_Ros2Uwvm_fourier_bridgeMsgGroupState(writer, self)
        wire = writer.finish()
        return _wire(wire, 20, 1684)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Uwvm_fourier_bridgeMsgGroupState:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 20, 1684))
        value = _read_Ros2Uwvm_fourier_bridgeMsgGroupState(reader)
        reader.end()
        return value

_record_Ros2Uwvm_fourier_bridgeMsgGroupState = Ros2Uwvm_fourier_bridgeMsgGroupState

def _write_Ros2Uwvm_fourier_bridgeMsgGroupState(writer, value):
    if type(value) is not Ros2Uwvm_fourier_bridgeMsgGroupState:
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

def _read_Ros2Uwvm_fourier_bridgeMsgGroupState(reader):
    value = Ros2Uwvm_fourier_bridgeMsgGroupState()
    value.group = _read_text(reader, 128)
    value.position = [reader.f64() for _ in range(_read_count(reader, 64, 8))]
    value.velocity = [reader.f64() for _ in range(_read_count(reader, 64, 8))]
    value.effort = [reader.f64() for _ in range(_read_count(reader, 64, 8))]
    value.motion_state = reader.integer(4, True)
    return value

@_dataclass
class Ros2Uwvm_fourier_bridgeMsgGroupValues:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/msg/GroupValues'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_3c69f73f7b6d1d4a8a6b5006f6dbe9a74021b10a0d3b493251f0085cb06d57f3'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 648
    group: _py_str = ''
    values: _py_list[_py_float] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(648)
        _write_Ros2Uwvm_fourier_bridgeMsgGroupValues(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 648)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Uwvm_fourier_bridgeMsgGroupValues:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 648))
        value = _read_Ros2Uwvm_fourier_bridgeMsgGroupValues(reader)
        reader.end()
        return value

_record_Ros2Uwvm_fourier_bridgeMsgGroupValues = Ros2Uwvm_fourier_bridgeMsgGroupValues

def _write_Ros2Uwvm_fourier_bridgeMsgGroupValues(writer, value):
    if type(value) is not Ros2Uwvm_fourier_bridgeMsgGroupValues:
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

def _read_Ros2Uwvm_fourier_bridgeMsgGroupValues(reader):
    value = Ros2Uwvm_fourier_bridgeMsgGroupValues()
    value.group = _read_text(reader, 128)
    value.values = [reader.f64() for _ in range(_read_count(reader, 64, 8))]
    return value

@_dataclass
class Ros2Uwvm_fourier_bridgeMsgMotionRecipe:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/msg/MotionRecipe'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_bc50051a3fd81e146ad97200427b3b673081f817a20dbc38de1533dc0a9bee14'
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
        _write_Ros2Uwvm_fourier_bridgeMsgMotionRecipe(writer, self)
        wire = writer.finish()
        return _wire(wire, 18, 1170)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Uwvm_fourier_bridgeMsgMotionRecipe:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 18, 1170))
        value = _read_Ros2Uwvm_fourier_bridgeMsgMotionRecipe(reader)
        reader.end()
        return value

_record_Ros2Uwvm_fourier_bridgeMsgMotionRecipe = Ros2Uwvm_fourier_bridgeMsgMotionRecipe

def _write_Ros2Uwvm_fourier_bridgeMsgMotionRecipe(writer, value):
    if type(value) is not Ros2Uwvm_fourier_bridgeMsgMotionRecipe:
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

def _read_Ros2Uwvm_fourier_bridgeMsgMotionRecipe(reader):
    value = Ros2Uwvm_fourier_bridgeMsgMotionRecipe()
    value.move_type = reader.integer(1, False)
    value.group = _read_text(reader, 128)
    value.position = [reader.f64() for _ in range(_read_count(reader, 64, 8))]
    value.has_velocity = _read_bool(reader)
    value.velocity = [reader.f64() for _ in range(_read_count(reader, 64, 8))]
    value.expected_velocity = reader.integer(4, True)
    return value

@_dataclass
class Ros2Uwvm_fourier_bridgeMsgStatus:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/msg/Status'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_f251a6d2da8a35e9b49c1341ffda12f809186d845eb076d225ed274da7b4165e'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 32
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 14400
    fsm_state: _py_int = 0
    fsm_name: _py_str = ''
    upper_fsm_state: _py_int = 0
    upper_fsm_name: _py_str = ''
    velocity_source: _py_int = 0
    velocity_source_name: _py_str = ''
    stand_pose: _py_list[_py_float] = _field(default_factory=lambda: [])
    groups: _py_list[_record_Ros2Uwvm_fourier_bridgeMsgGroupState] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(14400)
        _write_Ros2Uwvm_fourier_bridgeMsgStatus(writer, self)
        wire = writer.finish()
        return _wire(wire, 32, 14400)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Uwvm_fourier_bridgeMsgStatus:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 32, 14400))
        value = _read_Ros2Uwvm_fourier_bridgeMsgStatus(reader)
        reader.end()
        return value

_record_Ros2Uwvm_fourier_bridgeMsgStatus = Ros2Uwvm_fourier_bridgeMsgStatus

def _write_Ros2Uwvm_fourier_bridgeMsgStatus(writer, value):
    if type(value) is not Ros2Uwvm_fourier_bridgeMsgStatus:
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
        _write_Ros2Uwvm_fourier_bridgeMsgGroupState(writer, _element)

def _read_Ros2Uwvm_fourier_bridgeMsgStatus(reader):
    value = Ros2Uwvm_fourier_bridgeMsgStatus()
    value.fsm_state = reader.integer(4, True)
    value.fsm_name = _read_text(reader, 128)
    value.upper_fsm_state = reader.integer(4, True)
    value.upper_fsm_name = _read_text(reader, 128)
    value.velocity_source = reader.integer(4, True)
    value.velocity_source_name = _read_text(reader, 128)
    value.stand_pose = [reader.f64() for _ in range(_read_count(reader, 64, 8))]
    value.groups = [_read_Ros2Uwvm_fourier_bridgeMsgGroupState(reader) for _ in range(_read_count(reader, 8, 20))]
    return value

@_dataclass
class Ros2Uwvm_fourier_bridgeMsgVelocityCommand:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/msg/VelocityCommand'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_9b0a6facfb591afb82a34bb01b058f340626eba26619b8b686a52c6319e11d3d'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 40
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 40
    sequence: _py_int = 0
    vx: _py_float = 0.0
    vy: _py_float = 0.0
    yaw: _py_float = 0.0
    duration: _py_float = 0.0

    def encode(self):
        writer = _Writer(40)
        _write_Ros2Uwvm_fourier_bridgeMsgVelocityCommand(writer, self)
        wire = writer.finish()
        return _wire(wire, 40, 40)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Uwvm_fourier_bridgeMsgVelocityCommand:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 40, 40))
        value = _read_Ros2Uwvm_fourier_bridgeMsgVelocityCommand(reader)
        reader.end()
        return value

_record_Ros2Uwvm_fourier_bridgeMsgVelocityCommand = Ros2Uwvm_fourier_bridgeMsgVelocityCommand

def _write_Ros2Uwvm_fourier_bridgeMsgVelocityCommand(writer, value):
    if type(value) is not Ros2Uwvm_fourier_bridgeMsgVelocityCommand:
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

def _read_Ros2Uwvm_fourier_bridgeMsgVelocityCommand(reader):
    value = Ros2Uwvm_fourier_bridgeMsgVelocityCommand()
    value.sequence = reader.integer(8, False)
    value.vx = reader.f64()
    value.vy = reader.f64()
    value.yaw = reader.f64()
    value.duration = reader.f64()
    return value

@_dataclass
class Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/srv/ExecuteMove_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_4f306d8dc39d1aec7cb634df8a1b3573996440cbdd390ad7447edfd93e0d626b'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 9372
    sequence: _py_int = 0
    moves: _py_list[_record_Ros2Uwvm_fourier_bridgeMsgMotionRecipe] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(9372)
        _write_Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 9372)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 12, 9372))
        value = _read_Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request(reader)
        reader.end()
        return value

_record_Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request = Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request

def _write_Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request(writer, value):
    if type(value) is not Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request:
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
        _write_Ros2Uwvm_fourier_bridgeMsgMotionRecipe(writer, _element)

def _read_Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request(reader):
    value = Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request()
    value.sequence = reader.integer(8, False)
    value.moves = [_read_Ros2Uwvm_fourier_bridgeMsgMotionRecipe(reader) for _ in range(_read_count(reader, 8, 18))]
    return value

@_dataclass
class Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/srv/ExecuteMove_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_16cd03eb2e730dcd9eda47be3a506298f9369f0f61bcddd634a06295f902dcab'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 136
    status: _py_int = 0
    error: _py_str = ''

    def encode(self):
        writer = _Writer(136)
        _write_Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 136)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 136))
        value = _read_Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response(reader)
        reader.end()
        return value

_record_Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response = Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response

def _write_Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response(writer, value):
    if type(value) is not Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response:
        raise TypeError('exact generated record required')
    _part0 = value.status
    writer.integer(_part0, 4, False)
    _part1 = value.error
    _write_text(writer, _part1, 128)

def _read_Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response(reader):
    value = Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response()
    value.status = reader.integer(4, False)
    value.error = _read_text(reader, 128)
    return value

@_dataclass
class Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/srv/GetBaseData_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_19cfad0a79a7703b8dd5d9215a705026eaff78ef1794bda704f52a1e70d2dd5f'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 140
    sequence: _py_int = 0
    key: _py_str = ''

    def encode(self):
        writer = _Writer(140)
        _write_Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 140)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 12, 140))
        value = _read_Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request(reader)
        reader.end()
        return value

_record_Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request = Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request

def _write_Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request(writer, value):
    if type(value) is not Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request:
        raise TypeError('exact generated record required')
    _part0 = value.sequence
    writer.integer(_part0, 8, False)
    _part1 = value.key
    _write_text(writer, _part1, 128)

def _read_Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request(reader):
    value = Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request()
    value.sequence = reader.integer(8, False)
    value.key = _read_text(reader, 128)
    return value

@_dataclass
class Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/srv/GetBaseData_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_4c632e4c71f87f82064078b2936c9af2be87f56e44014e029470748c14614804'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 652
    status: _py_int = 0
    error: _py_str = ''
    values: _py_list[_py_float] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(652)
        _write_Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 652)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 12, 652))
        value = _read_Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response(reader)
        reader.end()
        return value

_record_Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response = Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response

def _write_Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response(writer, value):
    if type(value) is not Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response:
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

def _read_Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response(reader):
    value = Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response()
    value.status = reader.integer(4, False)
    value.error = _read_text(reader, 128)
    value.values = [reader.f64() for _ in range(_read_count(reader, 64, 8))]
    return value

@_dataclass
class Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/srv/GetCartesianState_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_2255ca1da45c891d1a3f8c8f77f1f6c5b9380d5ac5250a5d522ab581c4df7eee'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 16
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 272
    sequence: _py_int = 0
    group: _py_str = ''
    key: _py_str = ''

    def encode(self):
        writer = _Writer(272)
        _write_Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 16, 272)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 16, 272))
        value = _read_Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request(reader)
        reader.end()
        return value

_record_Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request = Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request

def _write_Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request(writer, value):
    if type(value) is not Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request:
        raise TypeError('exact generated record required')
    _part0 = value.sequence
    writer.integer(_part0, 8, False)
    _part1 = value.group
    _write_text(writer, _part1, 128)
    _part2 = value.key
    _write_text(writer, _part2, 128)

def _read_Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request(reader):
    value = Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request()
    value.sequence = reader.integer(8, False)
    value.group = _read_text(reader, 128)
    value.key = _read_text(reader, 128)
    return value

@_dataclass
class Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/srv/GetCartesianState_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_8adfef323b2635fd716d7121496c091656bc76bce2b320479345ef94bdc62a40'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 652
    status: _py_int = 0
    error: _py_str = ''
    values: _py_list[_py_float] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(652)
        _write_Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 652)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 12, 652))
        value = _read_Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response(reader)
        reader.end()
        return value

_record_Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response = Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response

def _write_Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response(writer, value):
    if type(value) is not Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response:
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

def _read_Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response(reader):
    value = Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response()
    value.status = reader.integer(4, False)
    value.error = _read_text(reader, 128)
    value.values = [reader.f64() for _ in range(_read_count(reader, 64, 8))]
    return value

@_dataclass
class Ros2Uwvm_fourier_bridgeSrvGetContactData_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/srv/GetContactData_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_52cf1fcf2036a4aa97ec902842838707ee1c96c63f6466165af5d1f3cde5f4e0'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 140
    sequence: _py_int = 0
    key: _py_str = ''

    def encode(self):
        writer = _Writer(140)
        _write_Ros2Uwvm_fourier_bridgeSrvGetContactData_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 140)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Uwvm_fourier_bridgeSrvGetContactData_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 12, 140))
        value = _read_Ros2Uwvm_fourier_bridgeSrvGetContactData_Request(reader)
        reader.end()
        return value

_record_Ros2Uwvm_fourier_bridgeSrvGetContactData_Request = Ros2Uwvm_fourier_bridgeSrvGetContactData_Request

def _write_Ros2Uwvm_fourier_bridgeSrvGetContactData_Request(writer, value):
    if type(value) is not Ros2Uwvm_fourier_bridgeSrvGetContactData_Request:
        raise TypeError('exact generated record required')
    _part0 = value.sequence
    writer.integer(_part0, 8, False)
    _part1 = value.key
    _write_text(writer, _part1, 128)

def _read_Ros2Uwvm_fourier_bridgeSrvGetContactData_Request(reader):
    value = Ros2Uwvm_fourier_bridgeSrvGetContactData_Request()
    value.sequence = reader.integer(8, False)
    value.key = _read_text(reader, 128)
    return value

@_dataclass
class Ros2Uwvm_fourier_bridgeSrvGetContactData_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/srv/GetContactData_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_504e7cc1bcb1c9a649cda204bbfbf8c6735fc5d71466b8a72d0536f0d3746b2e'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 652
    status: _py_int = 0
    error: _py_str = ''
    values: _py_list[_py_float] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(652)
        _write_Ros2Uwvm_fourier_bridgeSrvGetContactData_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 652)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Uwvm_fourier_bridgeSrvGetContactData_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 12, 652))
        value = _read_Ros2Uwvm_fourier_bridgeSrvGetContactData_Response(reader)
        reader.end()
        return value

_record_Ros2Uwvm_fourier_bridgeSrvGetContactData_Response = Ros2Uwvm_fourier_bridgeSrvGetContactData_Response

def _write_Ros2Uwvm_fourier_bridgeSrvGetContactData_Response(writer, value):
    if type(value) is not Ros2Uwvm_fourier_bridgeSrvGetContactData_Response:
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

def _read_Ros2Uwvm_fourier_bridgeSrvGetContactData_Response(reader):
    value = Ros2Uwvm_fourier_bridgeSrvGetContactData_Response()
    value.status = reader.integer(4, False)
    value.error = _read_text(reader, 128)
    value.values = [reader.f64() for _ in range(_read_count(reader, 64, 8))]
    return value

@_dataclass
class Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/srv/GetFsmName_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_d8a11bb7eee1af0c138ec4f934610c4b88d817be25992cb854100cb61d8d6100'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    sequence: _py_int = 0

    def encode(self):
        writer = _Writer(8)
        _write_Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 8)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 8))
        value = _read_Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request(reader)
        reader.end()
        return value

_record_Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request = Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request

def _write_Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request(writer, value):
    if type(value) is not Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request:
        raise TypeError('exact generated record required')
    _part0 = value.sequence
    writer.integer(_part0, 8, False)

def _read_Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request(reader):
    value = Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request()
    value.sequence = reader.integer(8, False)
    return value

@_dataclass
class Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/srv/GetFsmName_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_6ac4c78b17f0a366274f7fc74e981e95e605040937a78b3e328836f781c6886e'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 268
    status: _py_int = 0
    error: _py_str = ''
    value: _py_str = ''

    def encode(self):
        writer = _Writer(268)
        _write_Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 268)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 12, 268))
        value = _read_Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response(reader)
        reader.end()
        return value

_record_Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response = Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response

def _write_Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response(writer, value):
    if type(value) is not Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response:
        raise TypeError('exact generated record required')
    _part0 = value.status
    writer.integer(_part0, 4, False)
    _part1 = value.error
    _write_text(writer, _part1, 128)
    _part2 = value.value
    _write_text(writer, _part2, 128)

def _read_Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response(reader):
    value = Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response()
    value.status = reader.integer(4, False)
    value.error = _read_text(reader, 128)
    value.value = _read_text(reader, 128)
    return value

@_dataclass
class Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/srv/GetFsmState_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_061098411a7d26f31dd31957b34190e798305289bad558d351ee81df810e3bd0'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    sequence: _py_int = 0

    def encode(self):
        writer = _Writer(8)
        _write_Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 8)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 8))
        value = _read_Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request(reader)
        reader.end()
        return value

_record_Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request = Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request

def _write_Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request(writer, value):
    if type(value) is not Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request:
        raise TypeError('exact generated record required')
    _part0 = value.sequence
    writer.integer(_part0, 8, False)

def _read_Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request(reader):
    value = Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request()
    value.sequence = reader.integer(8, False)
    return value

@_dataclass
class Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/srv/GetFsmState_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_1ac3b816f0e4aa4e769bd74d67274b85a8d9bf5ca7f8a359179280970b7e19e4'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 140
    status: _py_int = 0
    error: _py_str = ''
    value: _py_int = 0

    def encode(self):
        writer = _Writer(140)
        _write_Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 140)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 12, 140))
        value = _read_Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response(reader)
        reader.end()
        return value

_record_Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response = Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response

def _write_Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response(writer, value):
    if type(value) is not Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response:
        raise TypeError('exact generated record required')
    _part0 = value.status
    writer.integer(_part0, 4, False)
    _part1 = value.error
    _write_text(writer, _part1, 128)
    _part2 = value.value
    writer.integer(_part2, 4, True)

def _read_Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response(reader):
    value = Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response()
    value.status = reader.integer(4, False)
    value.error = _read_text(reader, 128)
    value.value = reader.integer(4, True)
    return value

@_dataclass
class Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/srv/GetGroupMotionState_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_32606cb0ba540db0ce680716059ef3a7b4ad1277216fab4254521071cc0ea9ae'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 140
    sequence: _py_int = 0
    group: _py_str = ''

    def encode(self):
        writer = _Writer(140)
        _write_Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 140)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 12, 140))
        value = _read_Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request(reader)
        reader.end()
        return value

_record_Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request = Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request

def _write_Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request(writer, value):
    if type(value) is not Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request:
        raise TypeError('exact generated record required')
    _part0 = value.sequence
    writer.integer(_part0, 8, False)
    _part1 = value.group
    _write_text(writer, _part1, 128)

def _read_Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request(reader):
    value = Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request()
    value.sequence = reader.integer(8, False)
    value.group = _read_text(reader, 128)
    return value

@_dataclass
class Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/srv/GetGroupMotionState_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_192bd0770ca8e95e171fdbf9ef393bfc5e845a38d2a0c48f7846f3e080e219d7'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 140
    status: _py_int = 0
    error: _py_str = ''
    value: _py_int = 0

    def encode(self):
        writer = _Writer(140)
        _write_Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 140)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 12, 140))
        value = _read_Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response(reader)
        reader.end()
        return value

_record_Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response = Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response

def _write_Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response(writer, value):
    if type(value) is not Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response:
        raise TypeError('exact generated record required')
    _part0 = value.status
    writer.integer(_part0, 4, False)
    _part1 = value.error
    _write_text(writer, _part1, 128)
    _part2 = value.value
    writer.integer(_part2, 4, True)

def _read_Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response(reader):
    value = Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response()
    value.status = reader.integer(4, False)
    value.error = _read_text(reader, 128)
    value.value = reader.integer(4, True)
    return value

@_dataclass
class Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/srv/GetGroupMotorCfg_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_7edceab07d5c5c571bce51ea7f82f0695df7e07ad8584d7219b7db36b697959a'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 16
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 272
    sequence: _py_int = 0
    group: _py_str = ''
    key: _py_str = ''

    def encode(self):
        writer = _Writer(272)
        _write_Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 16, 272)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 16, 272))
        value = _read_Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request(reader)
        reader.end()
        return value

_record_Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request = Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request

def _write_Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request(writer, value):
    if type(value) is not Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request:
        raise TypeError('exact generated record required')
    _part0 = value.sequence
    writer.integer(_part0, 8, False)
    _part1 = value.group
    _write_text(writer, _part1, 128)
    _part2 = value.key
    _write_text(writer, _part2, 128)

def _read_Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request(reader):
    value = Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request()
    value.sequence = reader.integer(8, False)
    value.group = _read_text(reader, 128)
    value.key = _read_text(reader, 128)
    return value

@_dataclass
class Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/srv/GetGroupMotorCfg_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_783f925c3b1030dec4d4a0172b4916c1cdbf72ec5e0da29167064ae754929868'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 652
    status: _py_int = 0
    error: _py_str = ''
    values: _py_list[_py_float] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(652)
        _write_Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 652)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 12, 652))
        value = _read_Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response(reader)
        reader.end()
        return value

_record_Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response = Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response

def _write_Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response(writer, value):
    if type(value) is not Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response:
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

def _read_Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response(reader):
    value = Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response()
    value.status = reader.integer(4, False)
    value.error = _read_text(reader, 128)
    value.values = [reader.f64() for _ in range(_read_count(reader, 64, 8))]
    return value

@_dataclass
class Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/srv/GetGroupState_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_8ad802cc56a28a603ea0b4e705a80aafeda7657757a36e1bbe452b85b5035fa9'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 16
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 272
    sequence: _py_int = 0
    group: _py_str = ''
    key: _py_str = ''

    def encode(self):
        writer = _Writer(272)
        _write_Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 16, 272)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 16, 272))
        value = _read_Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request(reader)
        reader.end()
        return value

_record_Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request = Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request

def _write_Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request(writer, value):
    if type(value) is not Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request:
        raise TypeError('exact generated record required')
    _part0 = value.sequence
    writer.integer(_part0, 8, False)
    _part1 = value.group
    _write_text(writer, _part1, 128)
    _part2 = value.key
    _write_text(writer, _part2, 128)

def _read_Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request(reader):
    value = Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request()
    value.sequence = reader.integer(8, False)
    value.group = _read_text(reader, 128)
    value.key = _read_text(reader, 128)
    return value

@_dataclass
class Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/srv/GetGroupState_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_22b934422928c57570784ac2100bf5fd5ca941ea59aea72b442ec7205ed2c96d'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 652
    status: _py_int = 0
    error: _py_str = ''
    values: _py_list[_py_float] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(652)
        _write_Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 652)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 12, 652))
        value = _read_Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response(reader)
        reader.end()
        return value

_record_Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response = Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response

def _write_Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response(writer, value):
    if type(value) is not Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response:
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

def _read_Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response(reader):
    value = Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response()
    value.status = reader.integer(4, False)
    value.error = _read_text(reader, 128)
    value.values = [reader.f64() for _ in range(_read_count(reader, 64, 8))]
    return value

@_dataclass
class Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/srv/GetSnapshot_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_4c3003f85c4bc3c17e2e4bd4fd965fe52099a0a4a9f2c0320d165ec3db51bb58'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    sequence: _py_int = 0

    def encode(self):
        writer = _Writer(8)
        _write_Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 8)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 8))
        value = _read_Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request(reader)
        reader.end()
        return value

_record_Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request = Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request

def _write_Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request(writer, value):
    if type(value) is not Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request:
        raise TypeError('exact generated record required')
    _part0 = value.sequence
    writer.integer(_part0, 8, False)

def _read_Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request(reader):
    value = Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request()
    value.sequence = reader.integer(8, False)
    return value

@_dataclass
class Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/srv/GetSnapshot_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_bf4456397ae5115bf88b49c5568b8f289d6aefe3266f5e4d12b86d0f992de6a3'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 40
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 14536
    status: _py_int = 0
    error: _py_str = ''
    value: _record_Ros2Uwvm_fourier_bridgeMsgStatus = _field(default_factory=lambda: Ros2Uwvm_fourier_bridgeMsgStatus())

    def encode(self):
        writer = _Writer(14536)
        _write_Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 40, 14536)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 40, 14536))
        value = _read_Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response(reader)
        reader.end()
        return value

_record_Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response = Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response

def _write_Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response(writer, value):
    if type(value) is not Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response:
        raise TypeError('exact generated record required')
    _part0 = value.status
    writer.integer(_part0, 4, False)
    _part1 = value.error
    _write_text(writer, _part1, 128)
    _part2 = value.value
    _write_Ros2Uwvm_fourier_bridgeMsgStatus(writer, _part2)

def _read_Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response(reader):
    value = Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response()
    value.status = reader.integer(4, False)
    value.error = _read_text(reader, 128)
    value.value = _read_Ros2Uwvm_fourier_bridgeMsgStatus(reader)
    return value

@_dataclass
class Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/srv/GetStandPose_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_22c044b91db36a82bb825a556c41f9ae0139fb652ade47ac10aedf701ba0e044'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    sequence: _py_int = 0

    def encode(self):
        writer = _Writer(8)
        _write_Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 8)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 8))
        value = _read_Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request(reader)
        reader.end()
        return value

_record_Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request = Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request

def _write_Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request(writer, value):
    if type(value) is not Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request:
        raise TypeError('exact generated record required')
    _part0 = value.sequence
    writer.integer(_part0, 8, False)

def _read_Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request(reader):
    value = Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request()
    value.sequence = reader.integer(8, False)
    return value

@_dataclass
class Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/srv/GetStandPose_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_b25c3c0cf5fa810e367b46ad2d20d7446ffc4f67b8fb77493060ca62017ef4e2'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 652
    status: _py_int = 0
    error: _py_str = ''
    values: _py_list[_py_float] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(652)
        _write_Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 652)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 12, 652))
        value = _read_Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response(reader)
        reader.end()
        return value

_record_Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response = Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response

def _write_Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response(writer, value):
    if type(value) is not Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response:
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

def _read_Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response(reader):
    value = Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response()
    value.status = reader.integer(4, False)
    value.error = _read_text(reader, 128)
    value.values = [reader.f64() for _ in range(_read_count(reader, 64, 8))]
    return value

@_dataclass
class Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/srv/GetUpperFsmName_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_83187e2bc41361d7a7aef57d1458f4017a3ca4235b82c290dd80c1f58611e412'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    sequence: _py_int = 0

    def encode(self):
        writer = _Writer(8)
        _write_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 8)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 8))
        value = _read_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request(reader)
        reader.end()
        return value

_record_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request = Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request

def _write_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request(writer, value):
    if type(value) is not Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request:
        raise TypeError('exact generated record required')
    _part0 = value.sequence
    writer.integer(_part0, 8, False)

def _read_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request(reader):
    value = Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request()
    value.sequence = reader.integer(8, False)
    return value

@_dataclass
class Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/srv/GetUpperFsmName_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_ad6e25b9363bcadb517e96e5a1615c5ce36719542b2b32c4fb16f69ab102daed'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 268
    status: _py_int = 0
    error: _py_str = ''
    value: _py_str = ''

    def encode(self):
        writer = _Writer(268)
        _write_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 268)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 12, 268))
        value = _read_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response(reader)
        reader.end()
        return value

_record_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response = Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response

def _write_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response(writer, value):
    if type(value) is not Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response:
        raise TypeError('exact generated record required')
    _part0 = value.status
    writer.integer(_part0, 4, False)
    _part1 = value.error
    _write_text(writer, _part1, 128)
    _part2 = value.value
    _write_text(writer, _part2, 128)

def _read_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response(reader):
    value = Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response()
    value.status = reader.integer(4, False)
    value.error = _read_text(reader, 128)
    value.value = _read_text(reader, 128)
    return value

@_dataclass
class Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/srv/GetUpperFsmState_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_9981500b7a9dacf167baf5d8dce45820a1424a7b7fbe960c0d1b37751d1dda98'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    sequence: _py_int = 0

    def encode(self):
        writer = _Writer(8)
        _write_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 8)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 8))
        value = _read_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request(reader)
        reader.end()
        return value

_record_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request = Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request

def _write_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request(writer, value):
    if type(value) is not Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request:
        raise TypeError('exact generated record required')
    _part0 = value.sequence
    writer.integer(_part0, 8, False)

def _read_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request(reader):
    value = Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request()
    value.sequence = reader.integer(8, False)
    return value

@_dataclass
class Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/srv/GetUpperFsmState_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_dc699f01c04f01c7ad2e71daea02ffd80f368d4d066d5d280fcf0a2abfa126a9'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 140
    status: _py_int = 0
    error: _py_str = ''
    value: _py_int = 0

    def encode(self):
        writer = _Writer(140)
        _write_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 140)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 12, 140))
        value = _read_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response(reader)
        reader.end()
        return value

_record_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response = Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response

def _write_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response(writer, value):
    if type(value) is not Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response:
        raise TypeError('exact generated record required')
    _part0 = value.status
    writer.integer(_part0, 4, False)
    _part1 = value.error
    _write_text(writer, _part1, 128)
    _part2 = value.value
    writer.integer(_part2, 4, True)

def _read_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response(reader):
    value = Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response()
    value.status = reader.integer(4, False)
    value.error = _read_text(reader, 128)
    value.value = reader.integer(4, True)
    return value

@_dataclass
class Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/srv/GetVelocitySource_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_c11f2de346de2adac1cdf07c795d7746436851322e591a33d75c8226f75d5d4c'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    sequence: _py_int = 0

    def encode(self):
        writer = _Writer(8)
        _write_Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 8)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 8))
        value = _read_Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request(reader)
        reader.end()
        return value

_record_Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request = Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request

def _write_Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request(writer, value):
    if type(value) is not Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request:
        raise TypeError('exact generated record required')
    _part0 = value.sequence
    writer.integer(_part0, 8, False)

def _read_Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request(reader):
    value = Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request()
    value.sequence = reader.integer(8, False)
    return value

@_dataclass
class Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/srv/GetVelocitySource_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_dedb7a6119ec7ed97a0924ff58585da8569acf3026bf0c21bbb0a43bd2094e53'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 140
    status: _py_int = 0
    error: _py_str = ''
    value: _py_int = 0

    def encode(self):
        writer = _Writer(140)
        _write_Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 140)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 12, 140))
        value = _read_Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response(reader)
        reader.end()
        return value

_record_Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response = Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response

def _write_Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response(writer, value):
    if type(value) is not Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response:
        raise TypeError('exact generated record required')
    _part0 = value.status
    writer.integer(_part0, 4, False)
    _part1 = value.error
    _write_text(writer, _part1, 128)
    _part2 = value.value
    writer.integer(_part2, 4, True)

def _read_Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response(reader):
    value = Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response()
    value.status = reader.integer(4, False)
    value.error = _read_text(reader, 128)
    value.value = reader.integer(4, True)
    return value

@_dataclass
class Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/srv/GetVelocitySourceName_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_e1bc07b31243e938bd0fe61b1a8a7c788be7442ee978bdc0e0f3da128f1986d1'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    sequence: _py_int = 0

    def encode(self):
        writer = _Writer(8)
        _write_Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 8)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 8))
        value = _read_Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request(reader)
        reader.end()
        return value

_record_Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request = Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request

def _write_Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request(writer, value):
    if type(value) is not Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request:
        raise TypeError('exact generated record required')
    _part0 = value.sequence
    writer.integer(_part0, 8, False)

def _read_Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request(reader):
    value = Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request()
    value.sequence = reader.integer(8, False)
    return value

@_dataclass
class Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/srv/GetVelocitySourceName_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_a79939894c6e446a7ee1b4af1270aa7bb72a8d54f543e82299a869b0a317ab40'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 268
    status: _py_int = 0
    error: _py_str = ''
    value: _py_str = ''

    def encode(self):
        writer = _Writer(268)
        _write_Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 268)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 12, 268))
        value = _read_Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response(reader)
        reader.end()
        return value

_record_Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response = Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response

def _write_Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response(writer, value):
    if type(value) is not Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response:
        raise TypeError('exact generated record required')
    _part0 = value.status
    writer.integer(_part0, 4, False)
    _part1 = value.error
    _write_text(writer, _part1, 128)
    _part2 = value.value
    _write_text(writer, _part2, 128)

def _read_Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response(reader):
    value = Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response()
    value.status = reader.integer(4, False)
    value.error = _read_text(reader, 128)
    value.value = _read_text(reader, 128)
    return value

@_dataclass
class Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/srv/SetFsmState_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_a479783bb0f94bf69a62333235049ee7692f618ae255edbefaa9cf9f110e090d'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 12
    sequence: _py_int = 0
    state: _py_int = 0

    def encode(self):
        writer = _Writer(12)
        _write_Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 12)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 12, 12))
        value = _read_Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request(reader)
        reader.end()
        return value

_record_Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request = Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request

def _write_Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request(writer, value):
    if type(value) is not Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request:
        raise TypeError('exact generated record required')
    _part0 = value.sequence
    writer.integer(_part0, 8, False)
    _part1 = value.state
    writer.integer(_part1, 4, True)

def _read_Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request(reader):
    value = Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request()
    value.sequence = reader.integer(8, False)
    value.state = reader.integer(4, True)
    return value

@_dataclass
class Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/srv/SetFsmState_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_35161a47d290454d74849c87e6333379e93454fe070c21a4ad6175c5da715e70'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 136
    status: _py_int = 0
    error: _py_str = ''

    def encode(self):
        writer = _Writer(136)
        _write_Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 136)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 136))
        value = _read_Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response(reader)
        reader.end()
        return value

_record_Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response = Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response

def _write_Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response(writer, value):
    if type(value) is not Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response:
        raise TypeError('exact generated record required')
    _part0 = value.status
    writer.integer(_part0, 4, False)
    _part1 = value.error
    _write_text(writer, _part1, 128)

def _read_Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response(reader):
    value = Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response()
    value.status = reader.integer(4, False)
    value.error = _read_text(reader, 128)
    return value

@_dataclass
class Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/srv/SetGroupCommand_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_b0b7d59e3985faf7a7c3e186e0556059b479e624c799f20dafb973e774ae3be9'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 20
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 15572
    sequence: _py_int = 0
    position: _py_list[_record_Ros2Uwvm_fourier_bridgeMsgGroupValues] = _field(default_factory=lambda: [])
    velocity: _py_list[_record_Ros2Uwvm_fourier_bridgeMsgGroupValues] = _field(default_factory=lambda: [])
    torque: _py_list[_record_Ros2Uwvm_fourier_bridgeMsgGroupValues] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(15572)
        _write_Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 20, 15572)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 20, 15572))
        value = _read_Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request(reader)
        reader.end()
        return value

_record_Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request = Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request

def _write_Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request(writer, value):
    if type(value) is not Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request:
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
        _write_Ros2Uwvm_fourier_bridgeMsgGroupValues(writer, _element)
    _part2 = value.velocity
    if type(_part2) not in (list, tuple):
        raise TypeError('array value required')
    _count2 = len(_part2)
    if _count2 > 8:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        _write_Ros2Uwvm_fourier_bridgeMsgGroupValues(writer, _element)
    _part3 = value.torque
    if type(_part3) not in (list, tuple):
        raise TypeError('array value required')
    _count3 = len(_part3)
    if _count3 > 8:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count3, 4)
    for _index in range(_count3):
        _element = _part3[_index]
        _write_Ros2Uwvm_fourier_bridgeMsgGroupValues(writer, _element)

def _read_Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request(reader):
    value = Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request()
    value.sequence = reader.integer(8, False)
    value.position = [_read_Ros2Uwvm_fourier_bridgeMsgGroupValues(reader) for _ in range(_read_count(reader, 8, 8))]
    value.velocity = [_read_Ros2Uwvm_fourier_bridgeMsgGroupValues(reader) for _ in range(_read_count(reader, 8, 8))]
    value.torque = [_read_Ros2Uwvm_fourier_bridgeMsgGroupValues(reader) for _ in range(_read_count(reader, 8, 8))]
    return value

@_dataclass
class Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/srv/SetGroupCommand_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_53dc9e28bf3c95b193748d49c2796f5a936815f654863d326b6536a44077d290'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 136
    status: _py_int = 0
    error: _py_str = ''

    def encode(self):
        writer = _Writer(136)
        _write_Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 136)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 136))
        value = _read_Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response(reader)
        reader.end()
        return value

_record_Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response = Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response

def _write_Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response(writer, value):
    if type(value) is not Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response:
        raise TypeError('exact generated record required')
    _part0 = value.status
    writer.integer(_part0, 4, False)
    _part1 = value.error
    _write_text(writer, _part1, 128)

def _read_Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response(reader):
    value = Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response()
    value.status = reader.integer(4, False)
    value.error = _read_text(reader, 128)
    return value

@_dataclass
class Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/srv/SetMotorCfgPd_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_0e5ee74f7eaed206d45a883b2fe8ddeda407edf921aa31c4f2d04462479324de'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 16
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 10384
    sequence: _py_int = 0
    kp: _py_list[_record_Ros2Uwvm_fourier_bridgeMsgGroupValues] = _field(default_factory=lambda: [])
    kd: _py_list[_record_Ros2Uwvm_fourier_bridgeMsgGroupValues] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(10384)
        _write_Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 16, 10384)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 16, 10384))
        value = _read_Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request(reader)
        reader.end()
        return value

_record_Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request = Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request

def _write_Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request(writer, value):
    if type(value) is not Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request:
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
        _write_Ros2Uwvm_fourier_bridgeMsgGroupValues(writer, _element)
    _part2 = value.kd
    if type(_part2) not in (list, tuple):
        raise TypeError('array value required')
    _count2 = len(_part2)
    if _count2 > 8:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        _write_Ros2Uwvm_fourier_bridgeMsgGroupValues(writer, _element)

def _read_Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request(reader):
    value = Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request()
    value.sequence = reader.integer(8, False)
    value.kp = [_read_Ros2Uwvm_fourier_bridgeMsgGroupValues(reader) for _ in range(_read_count(reader, 8, 8))]
    value.kd = [_read_Ros2Uwvm_fourier_bridgeMsgGroupValues(reader) for _ in range(_read_count(reader, 8, 8))]
    return value

@_dataclass
class Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/srv/SetMotorCfgPd_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_dc86ac23016dc2d81dd5a69d3a6bcd96db09e1012f8f86e9fe4adcb38dabc804'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 136
    status: _py_int = 0
    error: _py_str = ''

    def encode(self):
        writer = _Writer(136)
        _write_Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 136)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 136))
        value = _read_Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response(reader)
        reader.end()
        return value

_record_Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response = Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response

def _write_Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response(writer, value):
    if type(value) is not Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response:
        raise TypeError('exact generated record required')
    _part0 = value.status
    writer.integer(_part0, 4, False)
    _part1 = value.error
    _write_text(writer, _part1, 128)

def _read_Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response(reader):
    value = Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response()
    value.status = reader.integer(4, False)
    value.error = _read_text(reader, 128)
    return value

@_dataclass
class Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/srv/SetStandPose_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_21e410d17dac9b44b02507adc3752236def8ad2bc9e251b64114a7f757577211'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 32
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 32
    sequence: _py_int = 0
    delta_z: _py_float = 0.0
    delta_pitch: _py_float = 0.0
    delta_yaw: _py_float = 0.0

    def encode(self):
        writer = _Writer(32)
        _write_Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 32, 32)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 32, 32))
        value = _read_Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request(reader)
        reader.end()
        return value

_record_Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request = Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request

def _write_Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request(writer, value):
    if type(value) is not Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request:
        raise TypeError('exact generated record required')
    _part0 = value.sequence
    writer.integer(_part0, 8, False)
    _part1 = value.delta_z
    writer.f64(_part1)
    _part2 = value.delta_pitch
    writer.f64(_part2)
    _part3 = value.delta_yaw
    writer.f64(_part3)

def _read_Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request(reader):
    value = Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request()
    value.sequence = reader.integer(8, False)
    value.delta_z = reader.f64()
    value.delta_pitch = reader.f64()
    value.delta_yaw = reader.f64()
    return value

@_dataclass
class Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/srv/SetStandPose_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_9b3ea0a1868a4672f1ca95ac2cd43e31eeaa9f059c4194a2205b5df1cf09291f'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 136
    status: _py_int = 0
    error: _py_str = ''

    def encode(self):
        writer = _Writer(136)
        _write_Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 136)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 136))
        value = _read_Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response(reader)
        reader.end()
        return value

_record_Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response = Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response

def _write_Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response(writer, value):
    if type(value) is not Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response:
        raise TypeError('exact generated record required')
    _part0 = value.status
    writer.integer(_part0, 4, False)
    _part1 = value.error
    _write_text(writer, _part1, 128)

def _read_Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response(reader):
    value = Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response()
    value.status = reader.integer(4, False)
    value.error = _read_text(reader, 128)
    return value

@_dataclass
class Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/srv/SetUpperFsmState_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_9742535e908c4d9640af2c7432a91e65e76f3a442c265ef9255df599227a4182'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 12
    sequence: _py_int = 0
    state: _py_int = 0

    def encode(self):
        writer = _Writer(12)
        _write_Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 12)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 12, 12))
        value = _read_Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request(reader)
        reader.end()
        return value

_record_Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request = Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request

def _write_Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request(writer, value):
    if type(value) is not Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request:
        raise TypeError('exact generated record required')
    _part0 = value.sequence
    writer.integer(_part0, 8, False)
    _part1 = value.state
    writer.integer(_part1, 4, True)

def _read_Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request(reader):
    value = Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request()
    value.sequence = reader.integer(8, False)
    value.state = reader.integer(4, True)
    return value

@_dataclass
class Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/srv/SetUpperFsmState_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_8247b198b8a857c16d15f248da2ac705ff2fd6b596f8c148c316025cd917c9f8'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 136
    status: _py_int = 0
    error: _py_str = ''

    def encode(self):
        writer = _Writer(136)
        _write_Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 136)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 136))
        value = _read_Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response(reader)
        reader.end()
        return value

_record_Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response = Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response

def _write_Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response(writer, value):
    if type(value) is not Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response:
        raise TypeError('exact generated record required')
    _part0 = value.status
    writer.integer(_part0, 4, False)
    _part1 = value.error
    _write_text(writer, _part1, 128)

def _read_Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response(reader):
    value = Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response()
    value.status = reader.integer(4, False)
    value.error = _read_text(reader, 128)
    return value

@_dataclass
class Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/srv/SetVelocity_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_7d81116c1df184dc948db4bcba368ae3ea118f3c27418ee44bd0ceb6347cee44'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 40
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 40
    sequence: _py_int = 0
    vx: _py_float = 0.0
    vy: _py_float = 0.0
    yaw: _py_float = 0.0
    duration: _py_float = 0.0

    def encode(self):
        writer = _Writer(40)
        _write_Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 40, 40)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 40, 40))
        value = _read_Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request(reader)
        reader.end()
        return value

_record_Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request = Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request

def _write_Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request(writer, value):
    if type(value) is not Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request:
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

def _read_Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request(reader):
    value = Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request()
    value.sequence = reader.integer(8, False)
    value.vx = reader.f64()
    value.vy = reader.f64()
    value.yaw = reader.f64()
    value.duration = reader.f64()
    return value

@_dataclass
class Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/srv/SetVelocity_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_fa76b58061fed9672c09c5a110ebd3dc3dcdfde38da662338a48c0cf00250307'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 136
    status: _py_int = 0
    error: _py_str = ''

    def encode(self):
        writer = _Writer(136)
        _write_Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 136)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 136))
        value = _read_Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response(reader)
        reader.end()
        return value

_record_Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response = Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response

def _write_Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response(writer, value):
    if type(value) is not Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response:
        raise TypeError('exact generated record required')
    _part0 = value.status
    writer.integer(_part0, 4, False)
    _part1 = value.error
    _write_text(writer, _part1, 128)

def _read_Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response(reader):
    value = Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response()
    value.status = reader.integer(4, False)
    value.error = _read_text(reader, 128)
    return value

@_dataclass
class Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/srv/SetVelocitySource_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_5e31cdd231ecbb30ece49edc211860b6be67c9e74839a328f37a46231e41271c'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 12
    sequence: _py_int = 0
    source: _py_int = 0

    def encode(self):
        writer = _Writer(12)
        _write_Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 12)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 12, 12))
        value = _read_Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request(reader)
        reader.end()
        return value

_record_Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request = Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request

def _write_Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request(writer, value):
    if type(value) is not Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request:
        raise TypeError('exact generated record required')
    _part0 = value.sequence
    writer.integer(_part0, 8, False)
    _part1 = value.source
    writer.integer(_part1, 4, True)

def _read_Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request(reader):
    value = Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request()
    value.sequence = reader.integer(8, False)
    value.source = reader.integer(4, True)
    return value

@_dataclass
class Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/srv/SetVelocitySource_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_9eb723e979b56e4a2dff53e026a3cab3cd0ddd4752c85e9b3ca08332e7a0eea7'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 136
    status: _py_int = 0
    error: _py_str = ''

    def encode(self):
        writer = _Writer(136)
        _write_Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 136)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 136))
        value = _read_Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response(reader)
        reader.end()
        return value

_record_Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response = Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response

def _write_Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response(writer, value):
    if type(value) is not Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response:
        raise TypeError('exact generated record required')
    _part0 = value.status
    writer.integer(_part0, 4, False)
    _part1 = value.error
    _write_text(writer, _part1, 128)

def _read_Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response(reader):
    value = Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response()
    value.status = reader.integer(4, False)
    value.error = _read_text(reader, 128)
    return value

@_dataclass
class Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_c6abe539be15088e34d76cb243ddd814fd6781baa7bf623949f1fb03651ef202'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 28
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1084
    sequence: _py_int = 0
    groups: _py_list[_py_str] = _field(default_factory=lambda: [])
    timeout_seconds: _py_float = 0.0
    poll_seconds: _py_float = 0.0

    def encode(self):
        writer = _Writer(1084)
        _write_Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 28, 1084)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 28, 1084))
        value = _read_Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request(reader)
        reader.end()
        return value

_record_Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request = Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request

def _write_Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request(writer, value):
    if type(value) is not Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request:
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

def _read_Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request(reader):
    value = Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request()
    value.sequence = reader.integer(8, False)
    value.groups = [_read_text(reader, 128) for _ in range(_read_count(reader, 8, 4))]
    value.timeout_seconds = reader.f64()
    value.poll_seconds = reader.f64()
    return value

@_dataclass
class Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_19184faa294d8dae790908044ff067851cde1074e1228a32b19320b6cc94a74f'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 9
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 137
    status: _py_int = 0
    error: _py_str = ''
    complete: _py_bool = False

    def encode(self):
        writer = _Writer(137)
        _write_Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 9, 137)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 9, 137))
        value = _read_Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response(reader)
        reader.end()
        return value

_record_Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response = Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response

def _write_Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response(writer, value):
    if type(value) is not Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response:
        raise TypeError('exact generated record required')
    _part0 = value.status
    writer.integer(_part0, 4, False)
    _part1 = value.error
    _write_text(writer, _part1, 128)
    _part2 = value.complete
    if type(_part2) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part2), 1)

def _read_Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response(reader):
    value = Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response()
    value.status = reader.integer(4, False)
    value.error = _read_text(reader, 128)
    value.complete = _read_bool(reader)
    return value

