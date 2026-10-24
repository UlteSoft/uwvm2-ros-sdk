# @file bounded_records.py
# @brief Full agibot py codecs and original record metadata.
# @details Complete agibot ros2_sdk_v1_1_0_rl values in py. 19 original records retain 71 fields and 19 interface
# descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native definitions. Encoding
# is local; compiler, guest and native ROS acceptance require separate receipts. See the profile API manual under
# document/platform/agibot/en_US/catalog/.
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
class Ros2Builtin_interfacesMsgTime:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'builtin_interfaces/msg/Time'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
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
    _part0 = value.sec
    writer.integer(_part0, 4, True)
    _part1 = value.nanosec
    writer.integer(_part1, 4, False)
    if not 0 <= _part1 < 1000000000:
        raise ValueError('normalized subsecond field required')

def _read_Ros2Builtin_interfacesMsgTime(reader):
    value = Ros2Builtin_interfacesMsgTime()
    value.sec = reader.integer(4, True)
    value.nanosec = reader.integer(4, False)
    if not 0 <= value.nanosec < 1000000000:
        raise ValueError('normalized subsecond field required')
    return value

@_dataclass
class Ros2Aimdk_msgsMsgRequestHeader:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/msg/RequestHeader'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_743efde912144cd1db5072b5a1d26b943c3fb882612b07c1883400784947b000'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    stamp: _record_Ros2Builtin_interfacesMsgTime = _field(default_factory=lambda: Ros2Builtin_interfacesMsgTime())

    def encode(self):
        writer = _Writer(8)
        _write_Ros2Aimdk_msgsMsgRequestHeader(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 8)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsMsgRequestHeader:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 8))
        value = _read_Ros2Aimdk_msgsMsgRequestHeader(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsMsgRequestHeader = Ros2Aimdk_msgsMsgRequestHeader

def _write_Ros2Aimdk_msgsMsgRequestHeader(writer, value):
    if type(value) is not Ros2Aimdk_msgsMsgRequestHeader:
        raise TypeError('exact generated record required')
    _part0 = value.stamp
    _write_Ros2Builtin_interfacesMsgTime(writer, _part0)

def _read_Ros2Aimdk_msgsMsgRequestHeader(reader):
    value = Ros2Aimdk_msgsMsgRequestHeader()
    value.stamp = _read_Ros2Builtin_interfacesMsgTime(reader)
    return value

@_dataclass
class Ros2Aimdk_msgsMsgCommonRequest:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/msg/CommonRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_d4dd21dc3b43faa42396e4c4aa0f1ad35a507b6bd313f5d197268e79d67dd9d7'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    header: _record_Ros2Aimdk_msgsMsgRequestHeader = _field(default_factory=lambda: Ros2Aimdk_msgsMsgRequestHeader())

    def encode(self):
        writer = _Writer(8)
        _write_Ros2Aimdk_msgsMsgCommonRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 8)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsMsgCommonRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 8))
        value = _read_Ros2Aimdk_msgsMsgCommonRequest(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsMsgCommonRequest = Ros2Aimdk_msgsMsgCommonRequest

def _write_Ros2Aimdk_msgsMsgCommonRequest(writer, value):
    if type(value) is not Ros2Aimdk_msgsMsgCommonRequest:
        raise TypeError('exact generated record required')
    _part0 = value.header
    _write_Ros2Aimdk_msgsMsgRequestHeader(writer, _part0)

def _read_Ros2Aimdk_msgsMsgCommonRequest(reader):
    value = Ros2Aimdk_msgsMsgCommonRequest()
    value.header = _read_Ros2Aimdk_msgsMsgRequestHeader(reader)
    return value

@_dataclass
class Ros2Aimdk_msgsMsgResponseHeader:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/msg/ResponseHeader'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_1aff5b9cfbca54f9091a6295e28034b45d22481e0dbd8a75b1759cda18b57b90'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 16
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 16
    stamp: _record_Ros2Builtin_interfacesMsgTime = _field(default_factory=lambda: Ros2Builtin_interfacesMsgTime())
    code: _py_int = 0

    def encode(self):
        writer = _Writer(16)
        _write_Ros2Aimdk_msgsMsgResponseHeader(writer, self)
        wire = writer.finish()
        return _wire(wire, 16, 16)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsMsgResponseHeader:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 16, 16))
        value = _read_Ros2Aimdk_msgsMsgResponseHeader(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsMsgResponseHeader = Ros2Aimdk_msgsMsgResponseHeader

def _write_Ros2Aimdk_msgsMsgResponseHeader(writer, value):
    if type(value) is not Ros2Aimdk_msgsMsgResponseHeader:
        raise TypeError('exact generated record required')
    _part0 = value.stamp
    _write_Ros2Builtin_interfacesMsgTime(writer, _part0)
    _part1 = value.code
    writer.integer(_part1, 8, True)

def _read_Ros2Aimdk_msgsMsgResponseHeader(reader):
    value = Ros2Aimdk_msgsMsgResponseHeader()
    value.stamp = _read_Ros2Builtin_interfacesMsgTime(reader)
    value.code = reader.integer(8, True)
    return value

@_dataclass
class Ros2Aimdk_msgsMsgCommonState:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/msg/CommonState'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_263f2829cf13b7b12ceda8109834fa333d2da5828cd7a302a1818c044be4699e'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 4
    value: _py_int = 0

    def encode(self):
        writer = _Writer(4)
        _write_Ros2Aimdk_msgsMsgCommonState(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 4)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsMsgCommonState:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 4, 4))
        value = _read_Ros2Aimdk_msgsMsgCommonState(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsMsgCommonState = Ros2Aimdk_msgsMsgCommonState

def _write_Ros2Aimdk_msgsMsgCommonState(writer, value):
    if type(value) is not Ros2Aimdk_msgsMsgCommonState:
        raise TypeError('exact generated record required')
    _part0 = value.value
    writer.integer(_part0, 4, True)

def _read_Ros2Aimdk_msgsMsgCommonState(reader):
    value = Ros2Aimdk_msgsMsgCommonState()
    value.value = reader.integer(4, True)
    return value

@_dataclass
class Ros2Aimdk_msgsMsgCommonResponse:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/msg/CommonResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_03f4cf42f82eef5064c9b0563dcfe07bb9e918e8a8d81e71c4d89490bf66afb6'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 24
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 152
    header: _record_Ros2Aimdk_msgsMsgResponseHeader = _field(default_factory=lambda: Ros2Aimdk_msgsMsgResponseHeader())
    status: _record_Ros2Aimdk_msgsMsgCommonState = _field(default_factory=lambda: Ros2Aimdk_msgsMsgCommonState())
    message: _py_str = ''

    def encode(self):
        writer = _Writer(152)
        _write_Ros2Aimdk_msgsMsgCommonResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 24, 152)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsMsgCommonResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 24, 152))
        value = _read_Ros2Aimdk_msgsMsgCommonResponse(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsMsgCommonResponse = Ros2Aimdk_msgsMsgCommonResponse

def _write_Ros2Aimdk_msgsMsgCommonResponse(writer, value):
    if type(value) is not Ros2Aimdk_msgsMsgCommonResponse:
        raise TypeError('exact generated record required')
    _part0 = value.header
    _write_Ros2Aimdk_msgsMsgResponseHeader(writer, _part0)
    _part1 = value.status
    _write_Ros2Aimdk_msgsMsgCommonState(writer, _part1)
    _part2 = value.message
    _write_text(writer, _part2, 128)

def _read_Ros2Aimdk_msgsMsgCommonResponse(reader):
    value = Ros2Aimdk_msgsMsgCommonResponse()
    value.header = _read_Ros2Aimdk_msgsMsgResponseHeader(reader)
    value.status = _read_Ros2Aimdk_msgsMsgCommonState(reader)
    value.message = _read_text(reader, 128)
    return value

@_dataclass
class Ros2Aimdk_msgsMsgCommonTaskResponse:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/msg/CommonTaskResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_6e0f13b88f5320fecc86125c92ef073379d31a439c1b8de3a87466c98f1b9ae2'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 28
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 28
    header: _record_Ros2Aimdk_msgsMsgResponseHeader = _field(default_factory=lambda: Ros2Aimdk_msgsMsgResponseHeader())
    task_id: _py_int = 0
    state: _record_Ros2Aimdk_msgsMsgCommonState = _field(default_factory=lambda: Ros2Aimdk_msgsMsgCommonState())

    def encode(self):
        writer = _Writer(28)
        _write_Ros2Aimdk_msgsMsgCommonTaskResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 28, 28)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsMsgCommonTaskResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 28, 28))
        value = _read_Ros2Aimdk_msgsMsgCommonTaskResponse(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsMsgCommonTaskResponse = Ros2Aimdk_msgsMsgCommonTaskResponse

def _write_Ros2Aimdk_msgsMsgCommonTaskResponse(writer, value):
    if type(value) is not Ros2Aimdk_msgsMsgCommonTaskResponse:
        raise TypeError('exact generated record required')
    _part0 = value.header
    _write_Ros2Aimdk_msgsMsgResponseHeader(writer, _part0)
    _part1 = value.task_id
    writer.integer(_part1, 8, False)
    _part2 = value.state
    _write_Ros2Aimdk_msgsMsgCommonState(writer, _part2)

def _read_Ros2Aimdk_msgsMsgCommonTaskResponse(reader):
    value = Ros2Aimdk_msgsMsgCommonTaskResponse()
    value.header = _read_Ros2Aimdk_msgsMsgResponseHeader(reader)
    value.task_id = reader.integer(8, False)
    value.state = _read_Ros2Aimdk_msgsMsgCommonState(reader)
    return value

@_dataclass
class Ros2Aimdk_msgsMsgDomainErrorState:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/msg/DomainErrorState'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_b8ba44e26d3df3c4c71f1ca9d4e91e967c8d8e1d95042ac7433a9a3294e9e231'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    value: _py_int = 0

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Aimdk_msgsMsgDomainErrorState(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsMsgDomainErrorState:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Aimdk_msgsMsgDomainErrorState(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsMsgDomainErrorState = Ros2Aimdk_msgsMsgDomainErrorState

def _write_Ros2Aimdk_msgsMsgDomainErrorState(writer, value):
    if type(value) is not Ros2Aimdk_msgsMsgDomainErrorState:
        raise TypeError('exact generated record required')
    _part0 = value.value
    writer.integer(_part0, 1, False)

def _read_Ros2Aimdk_msgsMsgDomainErrorState(reader):
    value = Ros2Aimdk_msgsMsgDomainErrorState()
    value.value = reader.integer(1, False)
    return value

@_dataclass
class Ros2Aimdk_msgsMsgJointCommand:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/msg/JointCommand'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_32c4e24dc7ea567136fc811efc68eea5b8d1072a5ed58e1c4b67b4d705a9fc3f'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 44
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 172
    name: _py_str = ''
    position: _py_float = 0.0
    velocity: _py_float = 0.0
    effort: _py_float = 0.0
    stiffness: _py_float = 0.0
    damping: _py_float = 0.0

    def encode(self):
        writer = _Writer(172)
        _write_Ros2Aimdk_msgsMsgJointCommand(writer, self)
        wire = writer.finish()
        return _wire(wire, 44, 172)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsMsgJointCommand:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 44, 172))
        value = _read_Ros2Aimdk_msgsMsgJointCommand(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsMsgJointCommand = Ros2Aimdk_msgsMsgJointCommand

def _write_Ros2Aimdk_msgsMsgJointCommand(writer, value):
    if type(value) is not Ros2Aimdk_msgsMsgJointCommand:
        raise TypeError('exact generated record required')
    _part0 = value.name
    _write_text(writer, _part0, 128)
    _part1 = value.position
    writer.f64(_part1)
    _part2 = value.velocity
    writer.f64(_part2)
    _part3 = value.effort
    writer.f64(_part3)
    _part4 = value.stiffness
    writer.f64(_part4)
    _part5 = value.damping
    writer.f64(_part5)

def _read_Ros2Aimdk_msgsMsgJointCommand(reader):
    value = Ros2Aimdk_msgsMsgJointCommand()
    value.name = _read_text(reader, 128)
    value.position = reader.f64()
    value.velocity = reader.f64()
    value.effort = reader.f64()
    value.stiffness = reader.f64()
    value.damping = reader.f64()
    return value

@_dataclass
class Ros2Aimdk_msgsMsgMessageHeader:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/msg/MessageHeader'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_6d8d9a27611d419d618f848c44ebe2c30d5393995d1f4fa7ecd70c34ded52496'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 24
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 152
    stamp: _record_Ros2Builtin_interfacesMsgTime = _field(default_factory=lambda: Ros2Builtin_interfacesMsgTime())
    frame_id: _py_str = ''
    sequence: _py_int = 0
    meas_stamp: _record_Ros2Builtin_interfacesMsgTime = _field(default_factory=lambda: Ros2Builtin_interfacesMsgTime())

    def encode(self):
        writer = _Writer(152)
        _write_Ros2Aimdk_msgsMsgMessageHeader(writer, self)
        wire = writer.finish()
        return _wire(wire, 24, 152)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsMsgMessageHeader:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 24, 152))
        value = _read_Ros2Aimdk_msgsMsgMessageHeader(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsMsgMessageHeader = Ros2Aimdk_msgsMsgMessageHeader

def _write_Ros2Aimdk_msgsMsgMessageHeader(writer, value):
    if type(value) is not Ros2Aimdk_msgsMsgMessageHeader:
        raise TypeError('exact generated record required')
    _part0 = value.stamp
    _write_Ros2Builtin_interfacesMsgTime(writer, _part0)
    _part1 = value.frame_id
    _write_text(writer, _part1, 128)
    _part2 = value.sequence
    writer.integer(_part2, 4, False)
    _part3 = value.meas_stamp
    _write_Ros2Builtin_interfacesMsgTime(writer, _part3)

def _read_Ros2Aimdk_msgsMsgMessageHeader(reader):
    value = Ros2Aimdk_msgsMsgMessageHeader()
    value.stamp = _read_Ros2Builtin_interfacesMsgTime(reader)
    value.frame_id = _read_text(reader, 128)
    value.sequence = reader.integer(4, False)
    value.meas_stamp = _read_Ros2Builtin_interfacesMsgTime(reader)
    return value

@_dataclass
class Ros2Aimdk_msgsMsgJointCommandArray:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/msg/JointCommandArray'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_b8f8d9b00f02524cfdd21f81d7e683290e92ba0b00d086d4506fd3600123d9d6'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 28
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 11164
    header: _record_Ros2Aimdk_msgsMsgMessageHeader = _field(default_factory=lambda: Ros2Aimdk_msgsMsgMessageHeader())
    joints: _py_list[_record_Ros2Aimdk_msgsMsgJointCommand] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(11164)
        _write_Ros2Aimdk_msgsMsgJointCommandArray(writer, self)
        wire = writer.finish()
        return _wire(wire, 28, 11164)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsMsgJointCommandArray:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 28, 11164))
        value = _read_Ros2Aimdk_msgsMsgJointCommandArray(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsMsgJointCommandArray = Ros2Aimdk_msgsMsgJointCommandArray

def _write_Ros2Aimdk_msgsMsgJointCommandArray(writer, value):
    if type(value) is not Ros2Aimdk_msgsMsgJointCommandArray:
        raise TypeError('exact generated record required')
    _part0 = value.header
    _write_Ros2Aimdk_msgsMsgMessageHeader(writer, _part0)
    _part1 = value.joints
    if type(_part1) not in (list, tuple):
        raise TypeError('array value required')
    _count1 = len(_part1)
    if _count1 > 64:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        _write_Ros2Aimdk_msgsMsgJointCommand(writer, _element)

def _read_Ros2Aimdk_msgsMsgJointCommandArray(reader):
    value = Ros2Aimdk_msgsMsgJointCommandArray()
    value.header = _read_Ros2Aimdk_msgsMsgMessageHeader(reader)
    value.joints = [_read_Ros2Aimdk_msgsMsgJointCommand(reader) for _ in range(_read_count(reader, 64, 44))]
    return value

@_dataclass
class Ros2Aimdk_msgsMsgJointState:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/msg/JointState'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_00a7d9637f691d224a78c967343dd16161b29e12ca6f9fafadc0af5d7e405a53'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 30
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 158
    name: _py_str = ''
    position: _py_float = 0.0
    velocity: _py_float = 0.0
    effort: _py_float = 0.0
    error_code: _py_int = 0

    def encode(self):
        writer = _Writer(158)
        _write_Ros2Aimdk_msgsMsgJointState(writer, self)
        wire = writer.finish()
        return _wire(wire, 30, 158)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsMsgJointState:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 30, 158))
        value = _read_Ros2Aimdk_msgsMsgJointState(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsMsgJointState = Ros2Aimdk_msgsMsgJointState

def _write_Ros2Aimdk_msgsMsgJointState(writer, value):
    if type(value) is not Ros2Aimdk_msgsMsgJointState:
        raise TypeError('exact generated record required')
    _part0 = value.name
    _write_text(writer, _part0, 128)
    _part1 = value.position
    writer.f64(_part1)
    _part2 = value.velocity
    writer.f64(_part2)
    _part3 = value.effort
    writer.f64(_part3)
    _part4 = value.error_code
    writer.integer(_part4, 2, False)

def _read_Ros2Aimdk_msgsMsgJointState(reader):
    value = Ros2Aimdk_msgsMsgJointState()
    value.name = _read_text(reader, 128)
    value.position = reader.f64()
    value.velocity = reader.f64()
    value.effort = reader.f64()
    value.error_code = reader.integer(2, False)
    return value

@_dataclass
class Ros2Aimdk_msgsMsgJointStateArray:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/msg/JointStateArray'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_4768076ae2f8c344f4030e7ca926d311e7706042187a2f9864a8a63f289f297e'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 29
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 10269
    header: _record_Ros2Aimdk_msgsMsgMessageHeader = _field(default_factory=lambda: Ros2Aimdk_msgsMsgMessageHeader())
    state: _record_Ros2Aimdk_msgsMsgDomainErrorState = _field(default_factory=lambda: Ros2Aimdk_msgsMsgDomainErrorState())
    joints: _py_list[_record_Ros2Aimdk_msgsMsgJointState] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(10269)
        _write_Ros2Aimdk_msgsMsgJointStateArray(writer, self)
        wire = writer.finish()
        return _wire(wire, 29, 10269)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsMsgJointStateArray:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 29, 10269))
        value = _read_Ros2Aimdk_msgsMsgJointStateArray(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsMsgJointStateArray = Ros2Aimdk_msgsMsgJointStateArray

def _write_Ros2Aimdk_msgsMsgJointStateArray(writer, value):
    if type(value) is not Ros2Aimdk_msgsMsgJointStateArray:
        raise TypeError('exact generated record required')
    _part0 = value.header
    _write_Ros2Aimdk_msgsMsgMessageHeader(writer, _part0)
    _part1 = value.state
    _write_Ros2Aimdk_msgsMsgDomainErrorState(writer, _part1)
    _part2 = value.joints
    if type(_part2) not in (list, tuple):
        raise TypeError('array value required')
    _count2 = len(_part2)
    if _count2 > 64:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        _write_Ros2Aimdk_msgsMsgJointState(writer, _element)

def _read_Ros2Aimdk_msgsMsgJointStateArray(reader):
    value = Ros2Aimdk_msgsMsgJointStateArray()
    value.header = _read_Ros2Aimdk_msgsMsgMessageHeader(reader)
    value.state = _read_Ros2Aimdk_msgsMsgDomainErrorState(reader)
    value.joints = [_read_Ros2Aimdk_msgsMsgJointState(reader) for _ in range(_read_count(reader, 64, 30))]
    return value

@_dataclass
class Ros2Aimdk_msgsMsgModuleChannelInfo:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/msg/ModuleChannelInfo'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_d6cfacaf7cd28f18d14ef270b868b354e896f937181c8d29279e1eac21990696'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 58
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 586
    name: _py_str = ''
    type: _py_str = ''
    frequency: _py_float = 0.0
    min_time_diff: _py_float = 0.0
    max_time_diff: _py_float = 0.0
    std_dev: _py_float = 0.0
    window_size: _py_int = 0
    timeout_threshold: _py_float = 0.0
    is_active: _py_bool = False
    is_timeout: _py_bool = False
    backends: _py_list[_py_str] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(586)
        _write_Ros2Aimdk_msgsMsgModuleChannelInfo(writer, self)
        wire = writer.finish()
        return _wire(wire, 58, 586)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsMsgModuleChannelInfo:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 58, 586))
        value = _read_Ros2Aimdk_msgsMsgModuleChannelInfo(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsMsgModuleChannelInfo = Ros2Aimdk_msgsMsgModuleChannelInfo

def _write_Ros2Aimdk_msgsMsgModuleChannelInfo(writer, value):
    if type(value) is not Ros2Aimdk_msgsMsgModuleChannelInfo:
        raise TypeError('exact generated record required')
    _part0 = value.name
    _write_text(writer, _part0, 128)
    _part1 = value.type
    _write_text(writer, _part1, 128)
    _part2 = value.frequency
    writer.f64(_part2)
    _part3 = value.min_time_diff
    writer.f64(_part3)
    _part4 = value.max_time_diff
    writer.f64(_part4)
    _part5 = value.std_dev
    writer.f64(_part5)
    _part6 = value.window_size
    writer.integer(_part6, 4, True)
    _part7 = value.timeout_threshold
    writer.f64(_part7)
    _part8 = value.is_active
    if type(_part8) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part8), 1)
    _part9 = value.is_timeout
    if type(_part9) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part9), 1)
    _part10 = value.backends
    if type(_part10) not in (list, tuple):
        raise TypeError('array value required')
    _count10 = len(_part10)
    if _count10 > 4:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count10, 4)
    for _index in range(_count10):
        _element = _part10[_index]
        _write_text(writer, _element, 64)

def _read_Ros2Aimdk_msgsMsgModuleChannelInfo(reader):
    value = Ros2Aimdk_msgsMsgModuleChannelInfo()
    value.name = _read_text(reader, 128)
    value.type = _read_text(reader, 128)
    value.frequency = reader.f64()
    value.min_time_diff = reader.f64()
    value.max_time_diff = reader.f64()
    value.std_dev = reader.f64()
    value.window_size = reader.integer(4, True)
    value.timeout_threshold = reader.f64()
    value.is_active = _read_bool(reader)
    value.is_timeout = _read_bool(reader)
    value.backends = [_read_text(reader, 64) for _ in range(_read_count(reader, 4, 4))]
    return value

@_dataclass
class Ros2Aimdk_msgsMsgModuleRpcInfo:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/msg/ModuleRpcInfo'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_e06e5cd98eaa4f17cebd95db53f6aa175cdc3682f3912f365947f8f8950d02d8'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 16
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 672
    name: _py_str = ''
    req_type: _py_str = ''
    res_type: _py_str = ''
    backends: _py_list[_py_str] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(672)
        _write_Ros2Aimdk_msgsMsgModuleRpcInfo(writer, self)
        wire = writer.finish()
        return _wire(wire, 16, 672)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsMsgModuleRpcInfo:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 16, 672))
        value = _read_Ros2Aimdk_msgsMsgModuleRpcInfo(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsMsgModuleRpcInfo = Ros2Aimdk_msgsMsgModuleRpcInfo

def _write_Ros2Aimdk_msgsMsgModuleRpcInfo(writer, value):
    if type(value) is not Ros2Aimdk_msgsMsgModuleRpcInfo:
        raise TypeError('exact generated record required')
    _part0 = value.name
    _write_text(writer, _part0, 128)
    _part1 = value.req_type
    _write_text(writer, _part1, 128)
    _part2 = value.res_type
    _write_text(writer, _part2, 128)
    _part3 = value.backends
    if type(_part3) not in (list, tuple):
        raise TypeError('array value required')
    _count3 = len(_part3)
    if _count3 > 4:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count3, 4)
    for _index in range(_count3):
        _element = _part3[_index]
        _write_text(writer, _element, 64)

def _read_Ros2Aimdk_msgsMsgModuleRpcInfo(reader):
    value = Ros2Aimdk_msgsMsgModuleRpcInfo()
    value.name = _read_text(reader, 128)
    value.req_type = _read_text(reader, 128)
    value.res_type = _read_text(reader, 128)
    value.backends = [_read_text(reader, 64) for _ in range(_read_count(reader, 4, 4))]
    return value

@_dataclass
class Ros2Aimdk_msgsMsgModuleResourceInfo:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/msg/ModuleResourceInfo'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_de2a3067e5bff40e7bd9949ce9923b6be34c8f822f74a036402a9253717aaa8f'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 20
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 5180
    module_name: _py_str = ''
    rpc_clients: _py_list[_record_Ros2Aimdk_msgsMsgModuleRpcInfo] = _field(default_factory=lambda: [])
    rpc_services: _py_list[_record_Ros2Aimdk_msgsMsgModuleRpcInfo] = _field(default_factory=lambda: [])
    pub_channels: _py_list[_record_Ros2Aimdk_msgsMsgModuleChannelInfo] = _field(default_factory=lambda: [])
    sub_channels: _py_list[_record_Ros2Aimdk_msgsMsgModuleChannelInfo] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(5180)
        _write_Ros2Aimdk_msgsMsgModuleResourceInfo(writer, self)
        wire = writer.finish()
        return _wire(wire, 20, 5180)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsMsgModuleResourceInfo:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 20, 5180))
        value = _read_Ros2Aimdk_msgsMsgModuleResourceInfo(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsMsgModuleResourceInfo = Ros2Aimdk_msgsMsgModuleResourceInfo

def _write_Ros2Aimdk_msgsMsgModuleResourceInfo(writer, value):
    if type(value) is not Ros2Aimdk_msgsMsgModuleResourceInfo:
        raise TypeError('exact generated record required')
    _part0 = value.module_name
    _write_text(writer, _part0, 128)
    _part1 = value.rpc_clients
    if type(_part1) not in (list, tuple):
        raise TypeError('array value required')
    _count1 = len(_part1)
    if _count1 > 2:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        _write_Ros2Aimdk_msgsMsgModuleRpcInfo(writer, _element)
    _part2 = value.rpc_services
    if type(_part2) not in (list, tuple):
        raise TypeError('array value required')
    _count2 = len(_part2)
    if _count2 > 2:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        _write_Ros2Aimdk_msgsMsgModuleRpcInfo(writer, _element)
    _part3 = value.pub_channels
    if type(_part3) not in (list, tuple):
        raise TypeError('array value required')
    _count3 = len(_part3)
    if _count3 > 2:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count3, 4)
    for _index in range(_count3):
        _element = _part3[_index]
        _write_Ros2Aimdk_msgsMsgModuleChannelInfo(writer, _element)
    _part4 = value.sub_channels
    if type(_part4) not in (list, tuple):
        raise TypeError('array value required')
    _count4 = len(_part4)
    if _count4 > 2:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count4, 4)
    for _index in range(_count4):
        _element = _part4[_index]
        _write_Ros2Aimdk_msgsMsgModuleChannelInfo(writer, _element)

def _read_Ros2Aimdk_msgsMsgModuleResourceInfo(reader):
    value = Ros2Aimdk_msgsMsgModuleResourceInfo()
    value.module_name = _read_text(reader, 128)
    value.rpc_clients = [_read_Ros2Aimdk_msgsMsgModuleRpcInfo(reader) for _ in range(_read_count(reader, 2, 16))]
    value.rpc_services = [_read_Ros2Aimdk_msgsMsgModuleRpcInfo(reader) for _ in range(_read_count(reader, 2, 16))]
    value.pub_channels = [_read_Ros2Aimdk_msgsMsgModuleChannelInfo(reader) for _ in range(_read_count(reader, 2, 58))]
    value.sub_channels = [_read_Ros2Aimdk_msgsMsgModuleChannelInfo(reader) for _ in range(_read_count(reader, 2, 58))]
    return value

@_dataclass
class Ros2Aimdk_msgsMsgThreadResourceInfo:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/msg/ThreadResourceInfo'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_7232a79e41b62d823fd87d761df60759839543aedbe5fa338fb46816687a0a15'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 32
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 352
    thread_id: _py_int = 0
    thread_name: _py_str = ''
    cpu_usage_ratio: _py_float = 0.0
    cpu_sched_policy: _py_str = ''
    cpu_sched_priority: _py_int = 0
    bounding_cpus: _py_list[_py_int] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(352)
        _write_Ros2Aimdk_msgsMsgThreadResourceInfo(writer, self)
        wire = writer.finish()
        return _wire(wire, 32, 352)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsMsgThreadResourceInfo:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 32, 352))
        value = _read_Ros2Aimdk_msgsMsgThreadResourceInfo(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsMsgThreadResourceInfo = Ros2Aimdk_msgsMsgThreadResourceInfo

def _write_Ros2Aimdk_msgsMsgThreadResourceInfo(writer, value):
    if type(value) is not Ros2Aimdk_msgsMsgThreadResourceInfo:
        raise TypeError('exact generated record required')
    _part0 = value.thread_id
    writer.integer(_part0, 8, False)
    _part1 = value.thread_name
    _write_text(writer, _part1, 128)
    _part2 = value.cpu_usage_ratio
    writer.f64(_part2)
    _part3 = value.cpu_sched_policy
    _write_text(writer, _part3, 128)
    _part4 = value.cpu_sched_priority
    writer.integer(_part4, 4, True)
    _part5 = value.bounding_cpus
    if type(_part5) not in (list, tuple):
        raise TypeError('array value required')
    _count5 = len(_part5)
    if _count5 > 16:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count5, 4)
    for _index in range(_count5):
        _element = _part5[_index]
        writer.integer(_element, 4, True)

def _read_Ros2Aimdk_msgsMsgThreadResourceInfo(reader):
    value = Ros2Aimdk_msgsMsgThreadResourceInfo()
    value.thread_id = reader.integer(8, False)
    value.thread_name = _read_text(reader, 128)
    value.cpu_usage_ratio = reader.f64()
    value.cpu_sched_policy = _read_text(reader, 128)
    value.cpu_sched_priority = reader.integer(4, True)
    value.bounding_cpus = [reader.integer(4, True) for _ in range(_read_count(reader, 16, 4))]
    return value

@_dataclass
class Ros2Aimdk_msgsMsgProcessResourceInfo:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/msg/ProcessResourceInfo'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_90b5f60525abc33814dfc7e3f7e6af23c7f43a232d74a904bd06f20d27ef9550'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 48
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1584
    process_id: _py_int = 0
    process_name: _py_str = ''
    process_mem_usage: _py_int = 0
    process_mem_usage_ratio: _py_float = 0.0
    process_cpu_usage_ratio: _py_float = 0.0
    thread_count: _py_int = 0
    threads: _py_list[_record_Ros2Aimdk_msgsMsgThreadResourceInfo] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(1584)
        _write_Ros2Aimdk_msgsMsgProcessResourceInfo(writer, self)
        wire = writer.finish()
        return _wire(wire, 48, 1584)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsMsgProcessResourceInfo:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 48, 1584))
        value = _read_Ros2Aimdk_msgsMsgProcessResourceInfo(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsMsgProcessResourceInfo = Ros2Aimdk_msgsMsgProcessResourceInfo

def _write_Ros2Aimdk_msgsMsgProcessResourceInfo(writer, value):
    if type(value) is not Ros2Aimdk_msgsMsgProcessResourceInfo:
        raise TypeError('exact generated record required')
    _part0 = value.process_id
    writer.integer(_part0, 8, False)
    _part1 = value.process_name
    _write_text(writer, _part1, 128)
    _part2 = value.process_mem_usage
    writer.integer(_part2, 8, False)
    _part3 = value.process_mem_usage_ratio
    writer.f64(_part3)
    _part4 = value.process_cpu_usage_ratio
    writer.f64(_part4)
    _part5 = value.thread_count
    writer.integer(_part5, 8, False)
    _part6 = value.threads
    if type(_part6) not in (list, tuple):
        raise TypeError('array value required')
    _count6 = len(_part6)
    if _count6 > 4:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count6, 4)
    for _index in range(_count6):
        _element = _part6[_index]
        _write_Ros2Aimdk_msgsMsgThreadResourceInfo(writer, _element)

def _read_Ros2Aimdk_msgsMsgProcessResourceInfo(reader):
    value = Ros2Aimdk_msgsMsgProcessResourceInfo()
    value.process_id = reader.integer(8, False)
    value.process_name = _read_text(reader, 128)
    value.process_mem_usage = reader.integer(8, False)
    value.process_mem_usage_ratio = reader.f64()
    value.process_cpu_usage_ratio = reader.f64()
    value.thread_count = reader.integer(8, False)
    value.threads = [_read_Ros2Aimdk_msgsMsgThreadResourceInfo(reader) for _ in range(_read_count(reader, 4, 32))]
    return value

@_dataclass
class Ros2Aimdk_msgsMsgProcessInfo:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/msg/ProcessInfo'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_190d10dc74d66eecf65495e2795525b4f6016bb3efde2f16310e54287e703996'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 80
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 12232
    header: _record_Ros2Aimdk_msgsMsgMessageHeader = _field(default_factory=lambda: Ros2Aimdk_msgsMsgMessageHeader())
    app_name: _py_str = ''
    resource: _record_Ros2Aimdk_msgsMsgProcessResourceInfo = _field(default_factory=lambda: Ros2Aimdk_msgsMsgProcessResourceInfo())
    modules: _py_list[_record_Ros2Aimdk_msgsMsgModuleResourceInfo] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(12232)
        _write_Ros2Aimdk_msgsMsgProcessInfo(writer, self)
        wire = writer.finish()
        return _wire(wire, 80, 12232)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsMsgProcessInfo:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 80, 12232))
        value = _read_Ros2Aimdk_msgsMsgProcessInfo(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsMsgProcessInfo = Ros2Aimdk_msgsMsgProcessInfo

def _write_Ros2Aimdk_msgsMsgProcessInfo(writer, value):
    if type(value) is not Ros2Aimdk_msgsMsgProcessInfo:
        raise TypeError('exact generated record required')
    _part0 = value.header
    _write_Ros2Aimdk_msgsMsgMessageHeader(writer, _part0)
    _part1 = value.app_name
    _write_text(writer, _part1, 128)
    _part2 = value.resource
    _write_Ros2Aimdk_msgsMsgProcessResourceInfo(writer, _part2)
    _part3 = value.modules
    if type(_part3) not in (list, tuple):
        raise TypeError('array value required')
    _count3 = len(_part3)
    if _count3 > 2:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count3, 4)
    for _index in range(_count3):
        _element = _part3[_index]
        _write_Ros2Aimdk_msgsMsgModuleResourceInfo(writer, _element)

def _read_Ros2Aimdk_msgsMsgProcessInfo(reader):
    value = Ros2Aimdk_msgsMsgProcessInfo()
    value.header = _read_Ros2Aimdk_msgsMsgMessageHeader(reader)
    value.app_name = _read_text(reader, 128)
    value.resource = _read_Ros2Aimdk_msgsMsgProcessResourceInfo(reader)
    value.modules = [_read_Ros2Aimdk_msgsMsgModuleResourceInfo(reader) for _ in range(_read_count(reader, 2, 20))]
    return value

