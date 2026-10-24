# @file bounded_records.py
# @brief Full agibot py codecs and original record metadata.
# @details Complete agibot ros2_sdk_v1_0_0_main values in py. 120 original records retain 366 fields and 93
# interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
# definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
# profile API manual under document/platform/agibot/en_US/catalog/.
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
class Ros2Aimdk_msgsMsgAgentPropertyIdType:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/msg/AgentPropertyIdType'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_d46b7979d687f30a04b2d96d2cfde9efeedb18a3b311e43fd3af362d7323102c'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    value: _py_int = 0

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Aimdk_msgsMsgAgentPropertyIdType(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsMsgAgentPropertyIdType:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Aimdk_msgsMsgAgentPropertyIdType(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsMsgAgentPropertyIdType = Ros2Aimdk_msgsMsgAgentPropertyIdType

def _write_Ros2Aimdk_msgsMsgAgentPropertyIdType(writer, value):
    if type(value) is not Ros2Aimdk_msgsMsgAgentPropertyIdType:
        raise TypeError('exact generated record required')
    _part0 = value.value
    writer.integer(_part0, 1, False)

def _read_Ros2Aimdk_msgsMsgAgentPropertyIdType(reader):
    value = Ros2Aimdk_msgsMsgAgentPropertyIdType()
    value.value = reader.integer(1, False)
    return value

@_dataclass
class Ros2Aimdk_msgsMsgAgentPropertiesValue:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/msg/AgentPropertiesValue'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_f5886bcdffa17bde1622e0441b0e05562826ea27c5e393a85e255d4dd6ac32bb'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 5
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 133
    key: _record_Ros2Aimdk_msgsMsgAgentPropertyIdType = _field(default_factory=lambda: Ros2Aimdk_msgsMsgAgentPropertyIdType())
    value: _py_str = ''

    def encode(self):
        writer = _Writer(133)
        _write_Ros2Aimdk_msgsMsgAgentPropertiesValue(writer, self)
        wire = writer.finish()
        return _wire(wire, 5, 133)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsMsgAgentPropertiesValue:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 5, 133))
        value = _read_Ros2Aimdk_msgsMsgAgentPropertiesValue(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsMsgAgentPropertiesValue = Ros2Aimdk_msgsMsgAgentPropertiesValue

def _write_Ros2Aimdk_msgsMsgAgentPropertiesValue(writer, value):
    if type(value) is not Ros2Aimdk_msgsMsgAgentPropertiesValue:
        raise TypeError('exact generated record required')
    _part0 = value.key
    _write_Ros2Aimdk_msgsMsgAgentPropertyIdType(writer, _part0)
    _part1 = value.value
    _write_text(writer, _part1, 128)

def _read_Ros2Aimdk_msgsMsgAgentPropertiesValue(reader):
    value = Ros2Aimdk_msgsMsgAgentPropertiesValue()
    value.key = _read_Ros2Aimdk_msgsMsgAgentPropertyIdType(reader)
    value.value = _read_text(reader, 128)
    return value

@_dataclass
class Ros2Aimdk_msgsMsgAgentProperties:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/msg/AgentProperties'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_5c1d34cab6d73c22fa0c9555ff67309d3ad05002b19d814ea03e576a1298f4aa'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 536
    properties: _py_list[_record_Ros2Aimdk_msgsMsgAgentPropertiesValue] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(536)
        _write_Ros2Aimdk_msgsMsgAgentProperties(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 536)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsMsgAgentProperties:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 4, 536))
        value = _read_Ros2Aimdk_msgsMsgAgentProperties(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsMsgAgentProperties = Ros2Aimdk_msgsMsgAgentProperties

def _write_Ros2Aimdk_msgsMsgAgentProperties(writer, value):
    if type(value) is not Ros2Aimdk_msgsMsgAgentProperties:
        raise TypeError('exact generated record required')
    _part0 = value.properties
    if type(_part0) not in (list, tuple):
        raise TypeError('array value required')
    _count0 = len(_part0)
    if _count0 > 4:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count0, 4)
    for _index in range(_count0):
        _element = _part0[_index]
        _write_Ros2Aimdk_msgsMsgAgentPropertiesValue(writer, _element)

def _read_Ros2Aimdk_msgsMsgAgentProperties(reader):
    value = Ros2Aimdk_msgsMsgAgentProperties()
    value.properties = [_read_Ros2Aimdk_msgsMsgAgentPropertiesValue(reader) for _ in range(_read_count(reader, 4, 5))]
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
class Ros2Aimdk_msgsMsgAudioInfo:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/msg/AudioInfo'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_c58c89e03376e7f8beb8df02fe189fb1f6059825c5ff6924c4199b24fdb440be'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 17
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 273
    channels: _py_int = 0
    sample_rate: _py_int = 0
    size: _py_int = 0
    sample_format: _py_str = ''
    coding_format: _py_str = ''

    def encode(self):
        writer = _Writer(273)
        _write_Ros2Aimdk_msgsMsgAudioInfo(writer, self)
        wire = writer.finish()
        return _wire(wire, 17, 273)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsMsgAudioInfo:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 17, 273))
        value = _read_Ros2Aimdk_msgsMsgAudioInfo(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsMsgAudioInfo = Ros2Aimdk_msgsMsgAudioInfo

def _write_Ros2Aimdk_msgsMsgAudioInfo(writer, value):
    if type(value) is not Ros2Aimdk_msgsMsgAudioInfo:
        raise TypeError('exact generated record required')
    _part0 = value.channels
    writer.integer(_part0, 1, False)
    _part1 = value.sample_rate
    writer.integer(_part1, 4, False)
    _part2 = value.size
    writer.integer(_part2, 4, False)
    _part3 = value.sample_format
    _write_text(writer, _part3, 128)
    _part4 = value.coding_format
    _write_text(writer, _part4, 128)

def _read_Ros2Aimdk_msgsMsgAudioInfo(reader):
    value = Ros2Aimdk_msgsMsgAudioInfo()
    value.channels = reader.integer(1, False)
    value.sample_rate = reader.integer(4, False)
    value.size = reader.integer(4, False)
    value.sample_format = _read_text(reader, 128)
    value.coding_format = _read_text(reader, 128)
    return value

@_dataclass
class Ros2Aimdk_msgsMsgAudioData:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/msg/AudioData'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_547da1b39105416d63222ff082398cfeec0804a7c7ad28199168f1107c6844e8'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 260
    data: _py_list[_py_int] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(260)
        _write_Ros2Aimdk_msgsMsgAudioData(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 260)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsMsgAudioData:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 4, 260))
        value = _read_Ros2Aimdk_msgsMsgAudioData(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsMsgAudioData = Ros2Aimdk_msgsMsgAudioData

def _write_Ros2Aimdk_msgsMsgAudioData(writer, value):
    if type(value) is not Ros2Aimdk_msgsMsgAudioData:
        raise TypeError('exact generated record required')
    _part0 = value.data
    if type(_part0) not in (list, tuple):
        raise TypeError('array value required')
    _count0 = len(_part0)
    if _count0 > 256:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count0, 4)
    for _index in range(_count0):
        _element = _part0[_index]
        writer.integer(_element, 1, False)

def _read_Ros2Aimdk_msgsMsgAudioData(reader):
    value = Ros2Aimdk_msgsMsgAudioData()
    value.data = [reader.integer(1, False) for _ in range(_read_count(reader, 256, 1))]
    return value

@_dataclass
class Ros2Aimdk_msgsMsgAudioCapture:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/msg/AudioCapture'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_de7db19093964d4783811019e6cc12c952a58364561be2a0a81ae874766e937c'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 35
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 675
    stamps: _record_Ros2Builtin_interfacesMsgTime = _field(default_factory=lambda: Ros2Builtin_interfacesMsgTime())
    mic_channels: _py_int = 0
    ref_channels: _py_int = 0
    info: _record_Ros2Aimdk_msgsMsgAudioInfo = _field(default_factory=lambda: Ros2Aimdk_msgsMsgAudioInfo())
    data: _record_Ros2Aimdk_msgsMsgAudioData = _field(default_factory=lambda: Ros2Aimdk_msgsMsgAudioData())
    pkg_name: _py_str = ''

    def encode(self):
        writer = _Writer(675)
        _write_Ros2Aimdk_msgsMsgAudioCapture(writer, self)
        wire = writer.finish()
        return _wire(wire, 35, 675)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsMsgAudioCapture:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 35, 675))
        value = _read_Ros2Aimdk_msgsMsgAudioCapture(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsMsgAudioCapture = Ros2Aimdk_msgsMsgAudioCapture

def _write_Ros2Aimdk_msgsMsgAudioCapture(writer, value):
    if type(value) is not Ros2Aimdk_msgsMsgAudioCapture:
        raise TypeError('exact generated record required')
    _part0 = value.stamps
    _write_Ros2Builtin_interfacesMsgTime(writer, _part0)
    _part1 = value.mic_channels
    writer.integer(_part1, 1, False)
    _part2 = value.ref_channels
    writer.integer(_part2, 1, False)
    _part3 = value.info
    _write_Ros2Aimdk_msgsMsgAudioInfo(writer, _part3)
    _part4 = value.data
    _write_Ros2Aimdk_msgsMsgAudioData(writer, _part4)
    _part5 = value.pkg_name
    _write_text(writer, _part5, 128)

def _read_Ros2Aimdk_msgsMsgAudioCapture(reader):
    value = Ros2Aimdk_msgsMsgAudioCapture()
    value.stamps = _read_Ros2Builtin_interfacesMsgTime(reader)
    value.mic_channels = reader.integer(1, False)
    value.ref_channels = reader.integer(1, False)
    value.info = _read_Ros2Aimdk_msgsMsgAudioInfo(reader)
    value.data = _read_Ros2Aimdk_msgsMsgAudioData(reader)
    value.pkg_name = _read_text(reader, 128)
    return value

@_dataclass
class Ros2Aimdk_msgsMsgAudioFile:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/msg/AudioFile'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_ed9aeffc24c98e014fe431b9e5e814bf21a474a777f70cf3ac989537b431995d'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 37
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 677
    pkg_name: _py_str = ''
    file_name: _py_str = ''
    file_path: _py_str = ''
    info: _record_Ros2Aimdk_msgsMsgAudioInfo = _field(default_factory=lambda: Ros2Aimdk_msgsMsgAudioInfo())
    priority: _py_int = 0
    priority_weight: _py_int = 0

    def encode(self):
        writer = _Writer(677)
        _write_Ros2Aimdk_msgsMsgAudioFile(writer, self)
        wire = writer.finish()
        return _wire(wire, 37, 677)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsMsgAudioFile:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 37, 677))
        value = _read_Ros2Aimdk_msgsMsgAudioFile(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsMsgAudioFile = Ros2Aimdk_msgsMsgAudioFile

def _write_Ros2Aimdk_msgsMsgAudioFile(writer, value):
    if type(value) is not Ros2Aimdk_msgsMsgAudioFile:
        raise TypeError('exact generated record required')
    _part0 = value.pkg_name
    _write_text(writer, _part0, 128)
    _part1 = value.file_name
    _write_text(writer, _part1, 128)
    _part2 = value.file_path
    _write_text(writer, _part2, 128)
    _part3 = value.info
    _write_Ros2Aimdk_msgsMsgAudioInfo(writer, _part3)
    _part4 = value.priority
    writer.integer(_part4, 4, False)
    _part5 = value.priority_weight
    writer.integer(_part5, 4, False)

def _read_Ros2Aimdk_msgsMsgAudioFile(reader):
    value = Ros2Aimdk_msgsMsgAudioFile()
    value.pkg_name = _read_text(reader, 128)
    value.file_name = _read_text(reader, 128)
    value.file_path = _read_text(reader, 128)
    value.info = _read_Ros2Aimdk_msgsMsgAudioInfo(reader)
    value.priority = reader.integer(4, False)
    value.priority_weight = reader.integer(4, False)
    return value

@_dataclass
class Ros2Aimdk_msgsMsgAudioPlayback:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/msg/AudioPlayback'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_1262b4dd07b332e6d10c5968292f29928e43fd6f6ea2faa2be1f48482e2dc499'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 37
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 805
    stamps: _record_Ros2Builtin_interfacesMsgTime = _field(default_factory=lambda: Ros2Builtin_interfacesMsgTime())
    info: _record_Ros2Aimdk_msgsMsgAudioInfo = _field(default_factory=lambda: Ros2Aimdk_msgsMsgAudioInfo())
    data: _record_Ros2Aimdk_msgsMsgAudioData = _field(default_factory=lambda: Ros2Aimdk_msgsMsgAudioData())
    pkg_name: _py_str = ''
    token_id: _py_str = ''

    def encode(self):
        writer = _Writer(805)
        _write_Ros2Aimdk_msgsMsgAudioPlayback(writer, self)
        wire = writer.finish()
        return _wire(wire, 37, 805)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsMsgAudioPlayback:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 37, 805))
        value = _read_Ros2Aimdk_msgsMsgAudioPlayback(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsMsgAudioPlayback = Ros2Aimdk_msgsMsgAudioPlayback

def _write_Ros2Aimdk_msgsMsgAudioPlayback(writer, value):
    if type(value) is not Ros2Aimdk_msgsMsgAudioPlayback:
        raise TypeError('exact generated record required')
    _part0 = value.stamps
    _write_Ros2Builtin_interfacesMsgTime(writer, _part0)
    _part1 = value.info
    _write_Ros2Aimdk_msgsMsgAudioInfo(writer, _part1)
    _part2 = value.data
    _write_Ros2Aimdk_msgsMsgAudioData(writer, _part2)
    _part3 = value.pkg_name
    _write_text(writer, _part3, 128)
    _part4 = value.token_id
    _write_text(writer, _part4, 128)

def _read_Ros2Aimdk_msgsMsgAudioPlayback(reader):
    value = Ros2Aimdk_msgsMsgAudioPlayback()
    value.stamps = _read_Ros2Builtin_interfacesMsgTime(reader)
    value.info = _read_Ros2Aimdk_msgsMsgAudioInfo(reader)
    value.data = _read_Ros2Aimdk_msgsMsgAudioData(reader)
    value.pkg_name = _read_text(reader, 128)
    value.token_id = _read_text(reader, 128)
    return value

@_dataclass
class Ros2Aimdk_msgsMsgAudioVadStateType:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/msg/AudioVadStateType'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_edd7a6f6ad81c2c6479d3331d9e87a2fc66eedfb73f789caf0b888eeb9480526'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    value: _py_int = 0

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Aimdk_msgsMsgAudioVadStateType(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsMsgAudioVadStateType:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Aimdk_msgsMsgAudioVadStateType(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsMsgAudioVadStateType = Ros2Aimdk_msgsMsgAudioVadStateType

def _write_Ros2Aimdk_msgsMsgAudioVadStateType(writer, value):
    if type(value) is not Ros2Aimdk_msgsMsgAudioVadStateType:
        raise TypeError('exact generated record required')
    _part0 = value.value
    writer.integer(_part0, 1, False)

def _read_Ros2Aimdk_msgsMsgAudioVadStateType(reader):
    value = Ros2Aimdk_msgsMsgAudioVadStateType()
    value.value = reader.integer(1, False)
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
class Ros2Aimdk_msgsMsgCurrentVersion:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/msg/CurrentVersion'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_0a8226d6e3af0a098ee88498274e2a166f40df85162a67d38ebcb1fcba5e87cd'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 20
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 2388
    version: _py_str = ''
    name: _py_str = ''
    files: _py_list[_py_str] = _field(default_factory=lambda: [])
    download_timestamp_seconds: _py_int = 0

    def encode(self):
        writer = _Writer(2388)
        _write_Ros2Aimdk_msgsMsgCurrentVersion(writer, self)
        wire = writer.finish()
        return _wire(wire, 20, 2388)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsMsgCurrentVersion:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 20, 2388))
        value = _read_Ros2Aimdk_msgsMsgCurrentVersion(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsMsgCurrentVersion = Ros2Aimdk_msgsMsgCurrentVersion

def _write_Ros2Aimdk_msgsMsgCurrentVersion(writer, value):
    if type(value) is not Ros2Aimdk_msgsMsgCurrentVersion:
        raise TypeError('exact generated record required')
    _part0 = value.version
    _write_text(writer, _part0, 128)
    _part1 = value.name
    _write_text(writer, _part1, 128)
    _part2 = value.files
    if type(_part2) not in (list, tuple):
        raise TypeError('array value required')
    _count2 = len(_part2)
    if _count2 > 16:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        _write_text(writer, _element, 128)
    _part3 = value.download_timestamp_seconds
    writer.integer(_part3, 8, False)

def _read_Ros2Aimdk_msgsMsgCurrentVersion(reader):
    value = Ros2Aimdk_msgsMsgCurrentVersion()
    value.version = _read_text(reader, 128)
    value.name = _read_text(reader, 128)
    value.files = [_read_text(reader, 128) for _ in range(_read_count(reader, 16, 4))]
    value.download_timestamp_seconds = reader.integer(8, False)
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
class Ros2Aimdk_msgsMsgFaceEmojiStatus:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/msg/FaceEmojiStatus'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_3200d2686ea5f26668f00d0249e774572668b4a36b3f8067dae4f93182af89f7'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 47
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 2415
    header: _record_Ros2Aimdk_msgsMsgMessageHeader = _field(default_factory=lambda: Ros2Aimdk_msgsMsgMessageHeader())
    e_path: _py_str = ''
    e_path_list: _py_list[_py_str] = _field(default_factory=lambda: [])
    e_id: _py_int = 0
    mode: _py_int = 0
    priority: _py_int = 0
    status: _py_int = 0
    time_to_end_ms: _py_float = 0.0

    def encode(self):
        writer = _Writer(2415)
        _write_Ros2Aimdk_msgsMsgFaceEmojiStatus(writer, self)
        wire = writer.finish()
        return _wire(wire, 47, 2415)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsMsgFaceEmojiStatus:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 47, 2415))
        value = _read_Ros2Aimdk_msgsMsgFaceEmojiStatus(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsMsgFaceEmojiStatus = Ros2Aimdk_msgsMsgFaceEmojiStatus

def _write_Ros2Aimdk_msgsMsgFaceEmojiStatus(writer, value):
    if type(value) is not Ros2Aimdk_msgsMsgFaceEmojiStatus:
        raise TypeError('exact generated record required')
    _part0 = value.header
    _write_Ros2Aimdk_msgsMsgMessageHeader(writer, _part0)
    _part1 = value.e_path
    _write_text(writer, _part1, 128)
    _part2 = value.e_path_list
    if type(_part2) not in (list, tuple):
        raise TypeError('array value required')
    _count2 = len(_part2)
    if _count2 > 16:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        _write_text(writer, _element, 128)
    _part3 = value.e_id
    writer.integer(_part3, 1, False)
    _part4 = value.mode
    writer.integer(_part4, 1, False)
    _part5 = value.priority
    writer.integer(_part5, 4, True)
    _part6 = value.status
    writer.integer(_part6, 1, False)
    _part7 = value.time_to_end_ms
    writer.f64(_part7)

def _read_Ros2Aimdk_msgsMsgFaceEmojiStatus(reader):
    value = Ros2Aimdk_msgsMsgFaceEmojiStatus()
    value.header = _read_Ros2Aimdk_msgsMsgMessageHeader(reader)
    value.e_path = _read_text(reader, 128)
    value.e_path_list = [_read_text(reader, 128) for _ in range(_read_count(reader, 16, 4))]
    value.e_id = reader.integer(1, False)
    value.mode = reader.integer(1, False)
    value.priority = reader.integer(4, True)
    value.status = reader.integer(1, False)
    value.time_to_end_ms = reader.f64()
    return value

@_dataclass
class Ros2Aimdk_msgsMsgFocusRequester:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/msg/FocusRequester'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_9b41f0b3a3cafa6b190ede3107f8cf802c1cbacf1eb81e075a376ceaf37fa186'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 140
    pkg_name: _py_str = ''
    priority: _py_int = 0
    priority_weight: _py_int = 0

    def encode(self):
        writer = _Writer(140)
        _write_Ros2Aimdk_msgsMsgFocusRequester(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 140)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsMsgFocusRequester:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 12, 140))
        value = _read_Ros2Aimdk_msgsMsgFocusRequester(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsMsgFocusRequester = Ros2Aimdk_msgsMsgFocusRequester

def _write_Ros2Aimdk_msgsMsgFocusRequester(writer, value):
    if type(value) is not Ros2Aimdk_msgsMsgFocusRequester:
        raise TypeError('exact generated record required')
    _part0 = value.pkg_name
    _write_text(writer, _part0, 128)
    _part1 = value.priority
    writer.integer(_part1, 4, False)
    _part2 = value.priority_weight
    writer.integer(_part2, 4, False)

def _read_Ros2Aimdk_msgsMsgFocusRequester(reader):
    value = Ros2Aimdk_msgsMsgFocusRequester()
    value.pkg_name = _read_text(reader, 128)
    value.priority = reader.integer(4, False)
    value.priority_weight = reader.integer(4, False)
    return value

@_dataclass
class Ros2Aimdk_msgsMsgFocusResponse:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/msg/FocusResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_16047b8b9e9f131f8aa44fc4e0960ce81446788d557b055be1f6b2542db3a87c'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 5
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 133
    pkg_name: _py_str = ''
    focus_gain: _py_bool = False

    def encode(self):
        writer = _Writer(133)
        _write_Ros2Aimdk_msgsMsgFocusResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 5, 133)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsMsgFocusResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 5, 133))
        value = _read_Ros2Aimdk_msgsMsgFocusResponse(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsMsgFocusResponse = Ros2Aimdk_msgsMsgFocusResponse

def _write_Ros2Aimdk_msgsMsgFocusResponse(writer, value):
    if type(value) is not Ros2Aimdk_msgsMsgFocusResponse:
        raise TypeError('exact generated record required')
    _part0 = value.pkg_name
    _write_text(writer, _part0, 128)
    _part1 = value.focus_gain
    if type(_part1) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part1), 1)

def _read_Ros2Aimdk_msgsMsgFocusResponse(reader):
    value = Ros2Aimdk_msgsMsgFocusResponse()
    value.pkg_name = _read_text(reader, 128)
    value.focus_gain = _read_bool(reader)
    return value

@_dataclass
class Ros2Geometry_msgsMsgPoint:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'geometry_msgs/msg/Point'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 24
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 24
    x: _py_float = 0.0
    y: _py_float = 0.0
    z: _py_float = 0.0

    def encode(self):
        writer = _Writer(24)
        _write_Ros2Geometry_msgsMsgPoint(writer, self)
        wire = writer.finish()
        return _wire(wire, 24, 24)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Geometry_msgsMsgPoint:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 24, 24))
        value = _read_Ros2Geometry_msgsMsgPoint(reader)
        reader.end()
        return value

_record_Ros2Geometry_msgsMsgPoint = Ros2Geometry_msgsMsgPoint

def _write_Ros2Geometry_msgsMsgPoint(writer, value):
    if type(value) is not Ros2Geometry_msgsMsgPoint:
        raise TypeError('exact generated record required')
    _part0 = value.x
    writer.f64(_part0)
    _part1 = value.y
    writer.f64(_part1)
    _part2 = value.z
    writer.f64(_part2)

def _read_Ros2Geometry_msgsMsgPoint(reader):
    value = Ros2Geometry_msgsMsgPoint()
    value.x = reader.f64()
    value.y = reader.f64()
    value.z = reader.f64()
    return value

@_dataclass
class Ros2Geometry_msgsMsgQuaternion:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'geometry_msgs/msg/Quaternion'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 32
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 32
    x: _py_float = 0.0
    y: _py_float = 0.0
    z: _py_float = 0.0
    w: _py_float = 1.0

    def encode(self):
        writer = _Writer(32)
        _write_Ros2Geometry_msgsMsgQuaternion(writer, self)
        wire = writer.finish()
        return _wire(wire, 32, 32)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Geometry_msgsMsgQuaternion:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 32, 32))
        value = _read_Ros2Geometry_msgsMsgQuaternion(reader)
        reader.end()
        return value

_record_Ros2Geometry_msgsMsgQuaternion = Ros2Geometry_msgsMsgQuaternion

def _write_Ros2Geometry_msgsMsgQuaternion(writer, value):
    if type(value) is not Ros2Geometry_msgsMsgQuaternion:
        raise TypeError('exact generated record required')
    _part0 = value.x
    writer.f64(_part0)
    _part1 = value.y
    writer.f64(_part1)
    _part2 = value.z
    writer.f64(_part2)
    _part3 = value.w
    writer.f64(_part3)

def _read_Ros2Geometry_msgsMsgQuaternion(reader):
    value = Ros2Geometry_msgsMsgQuaternion()
    value.x = reader.f64()
    value.y = reader.f64()
    value.z = reader.f64()
    value.w = reader.f64()
    return value

@_dataclass
class Ros2Geometry_msgsMsgPose:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'geometry_msgs/msg/Pose'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 56
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 56
    position: _record_Ros2Geometry_msgsMsgPoint = _field(default_factory=lambda: Ros2Geometry_msgsMsgPoint())
    orientation: _record_Ros2Geometry_msgsMsgQuaternion = _field(default_factory=lambda: Ros2Geometry_msgsMsgQuaternion())

    def encode(self):
        writer = _Writer(56)
        _write_Ros2Geometry_msgsMsgPose(writer, self)
        wire = writer.finish()
        return _wire(wire, 56, 56)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Geometry_msgsMsgPose:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 56, 56))
        value = _read_Ros2Geometry_msgsMsgPose(reader)
        reader.end()
        return value

_record_Ros2Geometry_msgsMsgPose = Ros2Geometry_msgsMsgPose

def _write_Ros2Geometry_msgsMsgPose(writer, value):
    if type(value) is not Ros2Geometry_msgsMsgPose:
        raise TypeError('exact generated record required')
    _part0 = value.position
    _write_Ros2Geometry_msgsMsgPoint(writer, _part0)
    _part1 = value.orientation
    _write_Ros2Geometry_msgsMsgQuaternion(writer, _part1)

def _read_Ros2Geometry_msgsMsgPose(reader):
    value = Ros2Geometry_msgsMsgPose()
    value.position = _read_Ros2Geometry_msgsMsgPoint(reader)
    value.orientation = _read_Ros2Geometry_msgsMsgQuaternion(reader)
    return value

@_dataclass
class Ros2Aimdk_msgsMsgQRCode:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/msg/QRCode'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_51293e3c7ee25b1a265c4a57539a11060563e89005ceaf4aaa0891481ab803cd'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 60
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 60
    code: _py_int = 0
    pose: _record_Ros2Geometry_msgsMsgPose = _field(default_factory=lambda: Ros2Geometry_msgsMsgPose())

    def encode(self):
        writer = _Writer(60)
        _write_Ros2Aimdk_msgsMsgQRCode(writer, self)
        wire = writer.finish()
        return _wire(wire, 60, 60)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsMsgQRCode:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 60, 60))
        value = _read_Ros2Aimdk_msgsMsgQRCode(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsMsgQRCode = Ros2Aimdk_msgsMsgQRCode

def _write_Ros2Aimdk_msgsMsgQRCode(writer, value):
    if type(value) is not Ros2Aimdk_msgsMsgQRCode:
        raise TypeError('exact generated record required')
    _part0 = value.code
    writer.integer(_part0, 4, True)
    _part1 = value.pose
    _write_Ros2Geometry_msgsMsgPose(writer, _part1)

def _read_Ros2Aimdk_msgsMsgQRCode(reader):
    value = Ros2Aimdk_msgsMsgQRCode()
    value.code = reader.integer(4, True)
    value.pose = _read_Ros2Geometry_msgsMsgPose(reader)
    return value

@_dataclass
class Ros2Aimdk_msgsMsgHRPoint:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/msg/HRPoint'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_070874f4fea77298b6d66d02ee40026e86b4f48ee03e6d9acffcaddb387b3645'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 65
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 305
    point_id: _py_int = 0
    pose: _record_Ros2Geometry_msgsMsgPose = _field(default_factory=lambda: Ros2Geometry_msgsMsgPose())
    qr_list: _py_list[_record_Ros2Aimdk_msgsMsgQRCode] = _field(default_factory=lambda: [])
    use_head: _py_bool = False

    def encode(self):
        writer = _Writer(305)
        _write_Ros2Aimdk_msgsMsgHRPoint(writer, self)
        wire = writer.finish()
        return _wire(wire, 65, 305)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsMsgHRPoint:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 65, 305))
        value = _read_Ros2Aimdk_msgsMsgHRPoint(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsMsgHRPoint = Ros2Aimdk_msgsMsgHRPoint

def _write_Ros2Aimdk_msgsMsgHRPoint(writer, value):
    if type(value) is not Ros2Aimdk_msgsMsgHRPoint:
        raise TypeError('exact generated record required')
    _part0 = value.point_id
    writer.integer(_part0, 4, True)
    _part1 = value.pose
    _write_Ros2Geometry_msgsMsgPose(writer, _part1)
    _part2 = value.qr_list
    if type(_part2) not in (list, tuple):
        raise TypeError('array value required')
    _count2 = len(_part2)
    if _count2 > 4:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        _write_Ros2Aimdk_msgsMsgQRCode(writer, _element)
    _part3 = value.use_head
    if type(_part3) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part3), 1)

def _read_Ros2Aimdk_msgsMsgHRPoint(reader):
    value = Ros2Aimdk_msgsMsgHRPoint()
    value.point_id = reader.integer(4, True)
    value.pose = _read_Ros2Geometry_msgsMsgPose(reader)
    value.qr_list = [_read_Ros2Aimdk_msgsMsgQRCode(reader) for _ in range(_read_count(reader, 4, 60))]
    value.use_head = _read_bool(reader)
    return value

@_dataclass
class Ros2Aimdk_msgsMsgHandCommand:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/msg/HandCommand'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_910f3d9c0907c60b2613097cc4c1426727987e2ab83f8bcc41787feb472dc4e8'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 44
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 172
    name: _py_str = ''
    position: _py_float = 0.0
    velocity: _py_float = 0.0
    acceleration: _py_float = 0.0
    deceleration: _py_float = 0.0
    effort: _py_float = 0.0

    def encode(self):
        writer = _Writer(172)
        _write_Ros2Aimdk_msgsMsgHandCommand(writer, self)
        wire = writer.finish()
        return _wire(wire, 44, 172)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsMsgHandCommand:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 44, 172))
        value = _read_Ros2Aimdk_msgsMsgHandCommand(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsMsgHandCommand = Ros2Aimdk_msgsMsgHandCommand

def _write_Ros2Aimdk_msgsMsgHandCommand(writer, value):
    if type(value) is not Ros2Aimdk_msgsMsgHandCommand:
        raise TypeError('exact generated record required')
    _part0 = value.name
    _write_text(writer, _part0, 128)
    _part1 = value.position
    writer.f64(_part1)
    _part2 = value.velocity
    writer.f64(_part2)
    _part3 = value.acceleration
    writer.f64(_part3)
    _part4 = value.deceleration
    writer.f64(_part4)
    _part5 = value.effort
    writer.f64(_part5)

def _read_Ros2Aimdk_msgsMsgHandCommand(reader):
    value = Ros2Aimdk_msgsMsgHandCommand()
    value.name = _read_text(reader, 128)
    value.position = reader.f64()
    value.velocity = reader.f64()
    value.acceleration = reader.f64()
    value.deceleration = reader.f64()
    value.effort = reader.f64()
    return value

@_dataclass
class Ros2Aimdk_msgsMsgHandType:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/msg/HandType'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_be593e2d647a922b02f6f81e52fbfaa805837d6ef6a156de500d4dc40f1fc5bb'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    value: _py_int = 0

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Aimdk_msgsMsgHandType(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsMsgHandType:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Aimdk_msgsMsgHandType(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsMsgHandType = Ros2Aimdk_msgsMsgHandType

def _write_Ros2Aimdk_msgsMsgHandType(writer, value):
    if type(value) is not Ros2Aimdk_msgsMsgHandType:
        raise TypeError('exact generated record required')
    _part0 = value.value
    writer.integer(_part0, 1, False)

def _read_Ros2Aimdk_msgsMsgHandType(reader):
    value = Ros2Aimdk_msgsMsgHandType()
    value.value = reader.integer(1, False)
    return value

@_dataclass
class Ros2Aimdk_msgsMsgHandCommandArray:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/msg/HandCommandArray'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_d7f46a8aa55d6ef296aa86d6522b7add84f4c8e7e3009d1454d573a8af1d17d5'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 34
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1538
    header: _record_Ros2Aimdk_msgsMsgMessageHeader = _field(default_factory=lambda: Ros2Aimdk_msgsMsgMessageHeader())
    left_hand_type: _record_Ros2Aimdk_msgsMsgHandType = _field(default_factory=lambda: Ros2Aimdk_msgsMsgHandType())
    left_hands: _py_list[_record_Ros2Aimdk_msgsMsgHandCommand] = _field(default_factory=lambda: [])
    right_hand_type: _record_Ros2Aimdk_msgsMsgHandType = _field(default_factory=lambda: Ros2Aimdk_msgsMsgHandType())
    right_hands: _py_list[_record_Ros2Aimdk_msgsMsgHandCommand] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(1538)
        _write_Ros2Aimdk_msgsMsgHandCommandArray(writer, self)
        wire = writer.finish()
        return _wire(wire, 34, 1538)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsMsgHandCommandArray:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 34, 1538))
        value = _read_Ros2Aimdk_msgsMsgHandCommandArray(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsMsgHandCommandArray = Ros2Aimdk_msgsMsgHandCommandArray

def _write_Ros2Aimdk_msgsMsgHandCommandArray(writer, value):
    if type(value) is not Ros2Aimdk_msgsMsgHandCommandArray:
        raise TypeError('exact generated record required')
    _part0 = value.header
    _write_Ros2Aimdk_msgsMsgMessageHeader(writer, _part0)
    _part1 = value.left_hand_type
    _write_Ros2Aimdk_msgsMsgHandType(writer, _part1)
    _part2 = value.left_hands
    if type(_part2) not in (list, tuple):
        raise TypeError('array value required')
    _count2 = len(_part2)
    if _count2 > 4:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        _write_Ros2Aimdk_msgsMsgHandCommand(writer, _element)
    _part3 = value.right_hand_type
    _write_Ros2Aimdk_msgsMsgHandType(writer, _part3)
    _part4 = value.right_hands
    if type(_part4) not in (list, tuple):
        raise TypeError('array value required')
    _count4 = len(_part4)
    if _count4 > 4:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count4, 4)
    for _index in range(_count4):
        _element = _part4[_index]
        _write_Ros2Aimdk_msgsMsgHandCommand(writer, _element)

def _read_Ros2Aimdk_msgsMsgHandCommandArray(reader):
    value = Ros2Aimdk_msgsMsgHandCommandArray()
    value.header = _read_Ros2Aimdk_msgsMsgMessageHeader(reader)
    value.left_hand_type = _read_Ros2Aimdk_msgsMsgHandType(reader)
    value.left_hands = [_read_Ros2Aimdk_msgsMsgHandCommand(reader) for _ in range(_read_count(reader, 4, 44))]
    value.right_hand_type = _read_Ros2Aimdk_msgsMsgHandType(reader)
    value.right_hands = [_read_Ros2Aimdk_msgsMsgHandCommand(reader) for _ in range(_read_count(reader, 4, 44))]
    return value

@_dataclass
class Ros2Aimdk_msgsMsgHandState:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/msg/HandState'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_9cfb695f97c9e314103a224bcb6b321de5f279cdae85d5eef7bec0c7968a875c'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 36
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 164
    name: _py_str = ''
    position: _py_float = 0.0
    velocity: _py_float = 0.0
    effort: _py_float = 0.0
    state: _py_int = 0
    faultcode: _py_int = 0

    def encode(self):
        writer = _Writer(164)
        _write_Ros2Aimdk_msgsMsgHandState(writer, self)
        wire = writer.finish()
        return _wire(wire, 36, 164)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsMsgHandState:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 36, 164))
        value = _read_Ros2Aimdk_msgsMsgHandState(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsMsgHandState = Ros2Aimdk_msgsMsgHandState

def _write_Ros2Aimdk_msgsMsgHandState(writer, value):
    if type(value) is not Ros2Aimdk_msgsMsgHandState:
        raise TypeError('exact generated record required')
    _part0 = value.name
    _write_text(writer, _part0, 128)
    _part1 = value.position
    writer.f64(_part1)
    _part2 = value.velocity
    writer.f64(_part2)
    _part3 = value.effort
    writer.f64(_part3)
    _part4 = value.state
    writer.integer(_part4, 4, True)
    _part5 = value.faultcode
    writer.integer(_part5, 4, True)

def _read_Ros2Aimdk_msgsMsgHandState(reader):
    value = Ros2Aimdk_msgsMsgHandState()
    value.name = _read_text(reader, 128)
    value.position = reader.f64()
    value.velocity = reader.f64()
    value.effort = reader.f64()
    value.state = reader.integer(4, True)
    value.faultcode = reader.integer(4, True)
    return value

@_dataclass
class Ros2Aimdk_msgsMsgHandTouchSensorData:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/msg/HandTouchSensorData'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_573ab7611c65bde831172350c3cf49dd73cf4bfcbefabff7aa874845b828e4a0'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 152
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 152
    palm_touch_data: _py_list[_py_int] = _field(default_factory=lambda: [0 for _ in range(36)])
    back_of_hand_touch_data: _py_list[_py_int] = _field(default_factory=lambda: [0 for _ in range(36)])
    thumb_touch_data: _py_list[_py_int] = _field(default_factory=lambda: [0 for _ in range(16)])
    index_finger_touch_data: _py_list[_py_int] = _field(default_factory=lambda: [0 for _ in range(16)])
    middle_finger_touch_data: _py_list[_py_int] = _field(default_factory=lambda: [0 for _ in range(16)])
    ring_finger_touch_data: _py_list[_py_int] = _field(default_factory=lambda: [0 for _ in range(16)])
    little_finger_touch_data: _py_list[_py_int] = _field(default_factory=lambda: [0 for _ in range(16)])

    def encode(self):
        writer = _Writer(152)
        _write_Ros2Aimdk_msgsMsgHandTouchSensorData(writer, self)
        wire = writer.finish()
        return _wire(wire, 152, 152)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsMsgHandTouchSensorData:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 152, 152))
        value = _read_Ros2Aimdk_msgsMsgHandTouchSensorData(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsMsgHandTouchSensorData = Ros2Aimdk_msgsMsgHandTouchSensorData

def _write_Ros2Aimdk_msgsMsgHandTouchSensorData(writer, value):
    if type(value) is not Ros2Aimdk_msgsMsgHandTouchSensorData:
        raise TypeError('exact generated record required')
    _part0 = value.palm_touch_data
    if type(_part0) not in (list, tuple):
        raise TypeError('array value required')
    _count0 = len(_part0)
    if _count0 != 36:
        raise ValueError('fixed/sequence count bound')
    for _index in range(_count0):
        _element = _part0[_index]
        writer.integer(_element, 1, False)
    _part1 = value.back_of_hand_touch_data
    if type(_part1) not in (list, tuple):
        raise TypeError('array value required')
    _count1 = len(_part1)
    if _count1 != 36:
        raise ValueError('fixed/sequence count bound')
    for _index in range(_count1):
        _element = _part1[_index]
        writer.integer(_element, 1, False)
    _part2 = value.thumb_touch_data
    if type(_part2) not in (list, tuple):
        raise TypeError('array value required')
    _count2 = len(_part2)
    if _count2 != 16:
        raise ValueError('fixed/sequence count bound')
    for _index in range(_count2):
        _element = _part2[_index]
        writer.integer(_element, 1, False)
    _part3 = value.index_finger_touch_data
    if type(_part3) not in (list, tuple):
        raise TypeError('array value required')
    _count3 = len(_part3)
    if _count3 != 16:
        raise ValueError('fixed/sequence count bound')
    for _index in range(_count3):
        _element = _part3[_index]
        writer.integer(_element, 1, False)
    _part4 = value.middle_finger_touch_data
    if type(_part4) not in (list, tuple):
        raise TypeError('array value required')
    _count4 = len(_part4)
    if _count4 != 16:
        raise ValueError('fixed/sequence count bound')
    for _index in range(_count4):
        _element = _part4[_index]
        writer.integer(_element, 1, False)
    _part5 = value.ring_finger_touch_data
    if type(_part5) not in (list, tuple):
        raise TypeError('array value required')
    _count5 = len(_part5)
    if _count5 != 16:
        raise ValueError('fixed/sequence count bound')
    for _index in range(_count5):
        _element = _part5[_index]
        writer.integer(_element, 1, False)
    _part6 = value.little_finger_touch_data
    if type(_part6) not in (list, tuple):
        raise TypeError('array value required')
    _count6 = len(_part6)
    if _count6 != 16:
        raise ValueError('fixed/sequence count bound')
    for _index in range(_count6):
        _element = _part6[_index]
        writer.integer(_element, 1, False)

def _read_Ros2Aimdk_msgsMsgHandTouchSensorData(reader):
    value = Ros2Aimdk_msgsMsgHandTouchSensorData()
    value.palm_touch_data = [reader.integer(1, False) for _ in range(36)]
    value.back_of_hand_touch_data = [reader.integer(1, False) for _ in range(36)]
    value.thumb_touch_data = [reader.integer(1, False) for _ in range(16)]
    value.index_finger_touch_data = [reader.integer(1, False) for _ in range(16)]
    value.middle_finger_touch_data = [reader.integer(1, False) for _ in range(16)]
    value.ring_finger_touch_data = [reader.integer(1, False) for _ in range(16)]
    value.little_finger_touch_data = [reader.integer(1, False) for _ in range(16)]
    return value

@_dataclass
class Ros2Aimdk_msgsMsgHandStateArray:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/msg/HandStateArray'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_0ea5f872d42818af468d20b20670067c07631691b5988e45dc5e87caf137efb3'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 338
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1778
    header: _record_Ros2Aimdk_msgsMsgMessageHeader = _field(default_factory=lambda: Ros2Aimdk_msgsMsgMessageHeader())
    left_hand_type: _record_Ros2Aimdk_msgsMsgHandType = _field(default_factory=lambda: Ros2Aimdk_msgsMsgHandType())
    left_hands: _py_list[_record_Ros2Aimdk_msgsMsgHandState] = _field(default_factory=lambda: [])
    left_touch_sensors: _record_Ros2Aimdk_msgsMsgHandTouchSensorData = _field(default_factory=lambda: Ros2Aimdk_msgsMsgHandTouchSensorData())
    right_hand_type: _record_Ros2Aimdk_msgsMsgHandType = _field(default_factory=lambda: Ros2Aimdk_msgsMsgHandType())
    right_hands: _py_list[_record_Ros2Aimdk_msgsMsgHandState] = _field(default_factory=lambda: [])
    right_touch_sensors: _record_Ros2Aimdk_msgsMsgHandTouchSensorData = _field(default_factory=lambda: Ros2Aimdk_msgsMsgHandTouchSensorData())

    def encode(self):
        writer = _Writer(1778)
        _write_Ros2Aimdk_msgsMsgHandStateArray(writer, self)
        wire = writer.finish()
        return _wire(wire, 338, 1778)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsMsgHandStateArray:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 338, 1778))
        value = _read_Ros2Aimdk_msgsMsgHandStateArray(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsMsgHandStateArray = Ros2Aimdk_msgsMsgHandStateArray

def _write_Ros2Aimdk_msgsMsgHandStateArray(writer, value):
    if type(value) is not Ros2Aimdk_msgsMsgHandStateArray:
        raise TypeError('exact generated record required')
    _part0 = value.header
    _write_Ros2Aimdk_msgsMsgMessageHeader(writer, _part0)
    _part1 = value.left_hand_type
    _write_Ros2Aimdk_msgsMsgHandType(writer, _part1)
    _part2 = value.left_hands
    if type(_part2) not in (list, tuple):
        raise TypeError('array value required')
    _count2 = len(_part2)
    if _count2 > 4:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        _write_Ros2Aimdk_msgsMsgHandState(writer, _element)
    _part3 = value.left_touch_sensors
    _write_Ros2Aimdk_msgsMsgHandTouchSensorData(writer, _part3)
    _part4 = value.right_hand_type
    _write_Ros2Aimdk_msgsMsgHandType(writer, _part4)
    _part5 = value.right_hands
    if type(_part5) not in (list, tuple):
        raise TypeError('array value required')
    _count5 = len(_part5)
    if _count5 > 4:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count5, 4)
    for _index in range(_count5):
        _element = _part5[_index]
        _write_Ros2Aimdk_msgsMsgHandState(writer, _element)
    _part6 = value.right_touch_sensors
    _write_Ros2Aimdk_msgsMsgHandTouchSensorData(writer, _part6)

def _read_Ros2Aimdk_msgsMsgHandStateArray(reader):
    value = Ros2Aimdk_msgsMsgHandStateArray()
    value.header = _read_Ros2Aimdk_msgsMsgMessageHeader(reader)
    value.left_hand_type = _read_Ros2Aimdk_msgsMsgHandType(reader)
    value.left_hands = [_read_Ros2Aimdk_msgsMsgHandState(reader) for _ in range(_read_count(reader, 4, 36))]
    value.left_touch_sensors = _read_Ros2Aimdk_msgsMsgHandTouchSensorData(reader)
    value.right_hand_type = _read_Ros2Aimdk_msgsMsgHandType(reader)
    value.right_hands = [_read_Ros2Aimdk_msgsMsgHandState(reader) for _ in range(_read_count(reader, 4, 36))]
    value.right_touch_sensors = _read_Ros2Aimdk_msgsMsgHandTouchSensorData(reader)
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
class Ros2Aimdk_msgsMsgMcAction:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/msg/McAction'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_a43927486ae637ff4e5b8d60e1f45c91a9e3cf07b4505ea00550c6dc58e9354b'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 4
    value: _py_int = 0

    def encode(self):
        writer = _Writer(4)
        _write_Ros2Aimdk_msgsMsgMcAction(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 4)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsMsgMcAction:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 4, 4))
        value = _read_Ros2Aimdk_msgsMsgMcAction(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsMsgMcAction = Ros2Aimdk_msgsMsgMcAction

def _write_Ros2Aimdk_msgsMsgMcAction(writer, value):
    if type(value) is not Ros2Aimdk_msgsMsgMcAction:
        raise TypeError('exact generated record required')
    _part0 = value.value
    writer.integer(_part0, 4, True)

def _read_Ros2Aimdk_msgsMsgMcAction(reader):
    value = Ros2Aimdk_msgsMsgMcAction()
    value.value = reader.integer(4, True)
    return value

@_dataclass
class Ros2Aimdk_msgsMsgMcActionCommand:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/msg/McActionCommand'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_9a529c7988535cbc65c36425ffb0935b210a806906598baa3a2f1f717df4f648'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 136
    action: _record_Ros2Aimdk_msgsMsgMcAction = _field(default_factory=lambda: Ros2Aimdk_msgsMsgMcAction())
    action_desc: _py_str = ''

    def encode(self):
        writer = _Writer(136)
        _write_Ros2Aimdk_msgsMsgMcActionCommand(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 136)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsMsgMcActionCommand:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 136))
        value = _read_Ros2Aimdk_msgsMsgMcActionCommand(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsMsgMcActionCommand = Ros2Aimdk_msgsMsgMcActionCommand

def _write_Ros2Aimdk_msgsMsgMcActionCommand(writer, value):
    if type(value) is not Ros2Aimdk_msgsMsgMcActionCommand:
        raise TypeError('exact generated record required')
    _part0 = value.action
    _write_Ros2Aimdk_msgsMsgMcAction(writer, _part0)
    _part1 = value.action_desc
    _write_text(writer, _part1, 128)

def _read_Ros2Aimdk_msgsMsgMcActionCommand(reader):
    value = Ros2Aimdk_msgsMsgMcActionCommand()
    value.action = _read_Ros2Aimdk_msgsMsgMcAction(reader)
    value.action_desc = _read_text(reader, 128)
    return value

@_dataclass
class Ros2Aimdk_msgsMsgMcActionStatus:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/msg/McActionStatus'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_8c05e9540004b968b042b32ed0164af4857574186776f311be9b3ecde209ad48'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 4
    value: _py_int = 0

    def encode(self):
        writer = _Writer(4)
        _write_Ros2Aimdk_msgsMsgMcActionStatus(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 4)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsMsgMcActionStatus:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 4, 4))
        value = _read_Ros2Aimdk_msgsMsgMcActionStatus(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsMsgMcActionStatus = Ros2Aimdk_msgsMsgMcActionStatus

def _write_Ros2Aimdk_msgsMsgMcActionStatus(writer, value):
    if type(value) is not Ros2Aimdk_msgsMsgMcActionStatus:
        raise TypeError('exact generated record required')
    _part0 = value.value
    writer.integer(_part0, 4, True)

def _read_Ros2Aimdk_msgsMsgMcActionStatus(reader):
    value = Ros2Aimdk_msgsMsgMcActionStatus()
    value.value = reader.integer(4, True)
    return value

@_dataclass
class Ros2Aimdk_msgsMsgMcActionInfo:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/msg/McActionInfo'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_9c3c209060709befea26f340e6a607f4c6ddb00c638d1dedf5dd0cfa23f2e5e9'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 140
    current_action: _record_Ros2Aimdk_msgsMsgMcAction = _field(default_factory=lambda: Ros2Aimdk_msgsMsgMcAction())
    action_desc: _py_str = ''
    status: _record_Ros2Aimdk_msgsMsgMcActionStatus = _field(default_factory=lambda: Ros2Aimdk_msgsMsgMcActionStatus())

    def encode(self):
        writer = _Writer(140)
        _write_Ros2Aimdk_msgsMsgMcActionInfo(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 140)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsMsgMcActionInfo:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 12, 140))
        value = _read_Ros2Aimdk_msgsMsgMcActionInfo(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsMsgMcActionInfo = Ros2Aimdk_msgsMsgMcActionInfo

def _write_Ros2Aimdk_msgsMsgMcActionInfo(writer, value):
    if type(value) is not Ros2Aimdk_msgsMsgMcActionInfo:
        raise TypeError('exact generated record required')
    _part0 = value.current_action
    _write_Ros2Aimdk_msgsMsgMcAction(writer, _part0)
    _part1 = value.action_desc
    _write_text(writer, _part1, 128)
    _part2 = value.status
    _write_Ros2Aimdk_msgsMsgMcActionStatus(writer, _part2)

def _read_Ros2Aimdk_msgsMsgMcActionInfo(reader):
    value = Ros2Aimdk_msgsMsgMcActionInfo()
    value.current_action = _read_Ros2Aimdk_msgsMsgMcAction(reader)
    value.action_desc = _read_text(reader, 128)
    value.status = _read_Ros2Aimdk_msgsMsgMcActionStatus(reader)
    return value

@_dataclass
class Ros2Aimdk_msgsMsgMcControlArea:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/msg/McControlArea'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_ca241b8a191674136f0eeb0deee84b5e284de71f384038c9a5d6083eb4fc75c9'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 4
    value: _py_int = 0

    def encode(self):
        writer = _Writer(4)
        _write_Ros2Aimdk_msgsMsgMcControlArea(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 4)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsMsgMcControlArea:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 4, 4))
        value = _read_Ros2Aimdk_msgsMsgMcControlArea(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsMsgMcControlArea = Ros2Aimdk_msgsMsgMcControlArea

def _write_Ros2Aimdk_msgsMsgMcControlArea(writer, value):
    if type(value) is not Ros2Aimdk_msgsMsgMcControlArea:
        raise TypeError('exact generated record required')
    _part0 = value.value
    writer.integer(_part0, 4, True)

def _read_Ros2Aimdk_msgsMsgMcControlArea(reader):
    value = Ros2Aimdk_msgsMsgMcControlArea()
    value.value = reader.integer(4, True)
    return value

@_dataclass
class Ros2Aimdk_msgsMsgMcInputAction:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/msg/McInputAction'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_7016737845145fd03a104665957b475c512400775b93981573a40d0da30e15d9'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 4
    value: _py_int = 0

    def encode(self):
        writer = _Writer(4)
        _write_Ros2Aimdk_msgsMsgMcInputAction(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 4)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsMsgMcInputAction:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 4, 4))
        value = _read_Ros2Aimdk_msgsMsgMcInputAction(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsMsgMcInputAction = Ros2Aimdk_msgsMsgMcInputAction

def _write_Ros2Aimdk_msgsMsgMcInputAction(writer, value):
    if type(value) is not Ros2Aimdk_msgsMsgMcInputAction:
        raise TypeError('exact generated record required')
    _part0 = value.value
    writer.integer(_part0, 4, True)

def _read_Ros2Aimdk_msgsMsgMcInputAction(reader):
    value = Ros2Aimdk_msgsMsgMcInputAction()
    value.value = reader.integer(4, True)
    return value

@_dataclass
class Ros2Aimdk_msgsMsgMcInputSource:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/msg/McInputSource'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_4909fe165c71d1104207b393ba76d55347aa02836ebac251f6b57259ced1d1dd'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 140
    name: _py_str = ''
    priority: _py_int = 0
    timeout: _py_int = 0

    def encode(self):
        writer = _Writer(140)
        _write_Ros2Aimdk_msgsMsgMcInputSource(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 140)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsMsgMcInputSource:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 12, 140))
        value = _read_Ros2Aimdk_msgsMsgMcInputSource(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsMsgMcInputSource = Ros2Aimdk_msgsMsgMcInputSource

def _write_Ros2Aimdk_msgsMsgMcInputSource(writer, value):
    if type(value) is not Ros2Aimdk_msgsMsgMcInputSource:
        raise TypeError('exact generated record required')
    _part0 = value.name
    _write_text(writer, _part0, 128)
    _part1 = value.priority
    writer.integer(_part1, 4, True)
    _part2 = value.timeout
    writer.integer(_part2, 4, True)

def _read_Ros2Aimdk_msgsMsgMcInputSource(reader):
    value = Ros2Aimdk_msgsMsgMcInputSource()
    value.name = _read_text(reader, 128)
    value.priority = reader.integer(4, True)
    value.timeout = reader.integer(4, True)
    return value

@_dataclass
class Ros2Aimdk_msgsMsgMcLocomotionVelocity:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/msg/McLocomotionVelocity'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_a3c45cd56bc3098af00eefba2b2fc5c34c6439228d3429ab077d80b60ef8ca00'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 52
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 308
    header: _record_Ros2Aimdk_msgsMsgMessageHeader = _field(default_factory=lambda: Ros2Aimdk_msgsMsgMessageHeader())
    source: _py_str = ''
    forward_velocity: _py_float = 0.0
    lateral_velocity: _py_float = 0.0
    angular_velocity: _py_float = 0.0

    def encode(self):
        writer = _Writer(308)
        _write_Ros2Aimdk_msgsMsgMcLocomotionVelocity(writer, self)
        wire = writer.finish()
        return _wire(wire, 52, 308)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsMsgMcLocomotionVelocity:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 52, 308))
        value = _read_Ros2Aimdk_msgsMsgMcLocomotionVelocity(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsMsgMcLocomotionVelocity = Ros2Aimdk_msgsMsgMcLocomotionVelocity

def _write_Ros2Aimdk_msgsMsgMcLocomotionVelocity(writer, value):
    if type(value) is not Ros2Aimdk_msgsMsgMcLocomotionVelocity:
        raise TypeError('exact generated record required')
    _part0 = value.header
    _write_Ros2Aimdk_msgsMsgMessageHeader(writer, _part0)
    _part1 = value.source
    _write_text(writer, _part1, 128)
    _part2 = value.forward_velocity
    writer.f64(_part2)
    _part3 = value.lateral_velocity
    writer.f64(_part3)
    _part4 = value.angular_velocity
    writer.f64(_part4)

def _read_Ros2Aimdk_msgsMsgMcLocomotionVelocity(reader):
    value = Ros2Aimdk_msgsMsgMcLocomotionVelocity()
    value.header = _read_Ros2Aimdk_msgsMsgMessageHeader(reader)
    value.source = _read_text(reader, 128)
    value.forward_velocity = reader.f64()
    value.lateral_velocity = reader.f64()
    value.angular_velocity = reader.f64()
    return value

@_dataclass
class Ros2Aimdk_msgsMsgMcPresetMotion:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/msg/McPresetMotion'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_7421ee5b50a30799907e6f521dd97874158a945019f09cecf168a8f3130c9153'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 4
    value: _py_int = 0

    def encode(self):
        writer = _Writer(4)
        _write_Ros2Aimdk_msgsMsgMcPresetMotion(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 4)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsMsgMcPresetMotion:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 4, 4))
        value = _read_Ros2Aimdk_msgsMsgMcPresetMotion(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsMsgMcPresetMotion = Ros2Aimdk_msgsMsgMcPresetMotion

def _write_Ros2Aimdk_msgsMsgMcPresetMotion(writer, value):
    if type(value) is not Ros2Aimdk_msgsMsgMcPresetMotion:
        raise TypeError('exact generated record required')
    _part0 = value.value
    writer.integer(_part0, 4, True)

def _read_Ros2Aimdk_msgsMsgMcPresetMotion(reader):
    value = Ros2Aimdk_msgsMsgMcPresetMotion()
    value.value = reader.integer(4, True)
    return value

@_dataclass
class Ros2Geometry_msgsMsgPose2D:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'geometry_msgs/msg/Pose2D'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_5926ccd43f868ca13520625e24e283abe2e6f6418dacaa136eed5951064d8bce'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 24
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 24
    x: _py_float = 0.0
    y: _py_float = 0.0
    theta: _py_float = 0.0

    def encode(self):
        writer = _Writer(24)
        _write_Ros2Geometry_msgsMsgPose2D(writer, self)
        wire = writer.finish()
        return _wire(wire, 24, 24)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Geometry_msgsMsgPose2D:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 24, 24))
        value = _read_Ros2Geometry_msgsMsgPose2D(reader)
        reader.end()
        return value

_record_Ros2Geometry_msgsMsgPose2D = Ros2Geometry_msgsMsgPose2D

def _write_Ros2Geometry_msgsMsgPose2D(writer, value):
    if type(value) is not Ros2Geometry_msgsMsgPose2D:
        raise TypeError('exact generated record required')
    _part0 = value.x
    writer.f64(_part0)
    _part1 = value.y
    writer.f64(_part1)
    _part2 = value.theta
    writer.f64(_part2)

def _read_Ros2Geometry_msgsMsgPose2D(reader):
    value = Ros2Geometry_msgsMsgPose2D()
    value.x = reader.f64()
    value.y = reader.f64()
    value.theta = reader.f64()
    return value

@_dataclass
class Ros2Aimdk_msgsMsgNaviPoint:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/msg/NaviPoint'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_e1613f1cc3f2e23dffba8c4b2414f5eaba7ef8909aa4d032f13f6f514484694e'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 28
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 28
    point_id: _py_int = 0
    navi_point: _record_Ros2Geometry_msgsMsgPose2D = _field(default_factory=lambda: Ros2Geometry_msgsMsgPose2D())

    def encode(self):
        writer = _Writer(28)
        _write_Ros2Aimdk_msgsMsgNaviPoint(writer, self)
        wire = writer.finish()
        return _wire(wire, 28, 28)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsMsgNaviPoint:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 28, 28))
        value = _read_Ros2Aimdk_msgsMsgNaviPoint(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsMsgNaviPoint = Ros2Aimdk_msgsMsgNaviPoint

def _write_Ros2Aimdk_msgsMsgNaviPoint(writer, value):
    if type(value) is not Ros2Aimdk_msgsMsgNaviPoint:
        raise TypeError('exact generated record required')
    _part0 = value.point_id
    writer.integer(_part0, 4, True)
    _part1 = value.navi_point
    _write_Ros2Geometry_msgsMsgPose2D(writer, _part1)

def _read_Ros2Aimdk_msgsMsgNaviPoint(reader):
    value = Ros2Aimdk_msgsMsgNaviPoint()
    value.point_id = reader.integer(4, True)
    value.navi_point = _read_Ros2Geometry_msgsMsgPose2D(reader)
    return value

@_dataclass
class Ros2Aimdk_msgsMsgPath:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/msg/Path'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_88efeee6a105a4a88d155242fcd6f5be0866f4c0eadfc0b90243ca0eb020f27d'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 104
    path_id: _py_int = 0
    points: _py_list[_record_Ros2Geometry_msgsMsgPose2D] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(104)
        _write_Ros2Aimdk_msgsMsgPath(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 104)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsMsgPath:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 104))
        value = _read_Ros2Aimdk_msgsMsgPath(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsMsgPath = Ros2Aimdk_msgsMsgPath

def _write_Ros2Aimdk_msgsMsgPath(writer, value):
    if type(value) is not Ros2Aimdk_msgsMsgPath:
        raise TypeError('exact generated record required')
    _part0 = value.path_id
    writer.integer(_part0, 4, True)
    _part1 = value.points
    if type(_part1) not in (list, tuple):
        raise TypeError('array value required')
    _count1 = len(_part1)
    if _count1 > 4:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        _write_Ros2Geometry_msgsMsgPose2D(writer, _element)

def _read_Ros2Aimdk_msgsMsgPath(reader):
    value = Ros2Aimdk_msgsMsgPath()
    value.path_id = reader.integer(4, True)
    value.points = [_read_Ros2Geometry_msgsMsgPose2D(reader) for _ in range(_read_count(reader, 4, 24))]
    return value

@_dataclass
class Ros2Aimdk_msgsMsgPlayStateType:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/msg/PlayStateType'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_a103f60f1b75030272dea3bcf7da76ac8fdc214c3a38721fa2b09c507cc47946'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    value: _py_int = 0

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Aimdk_msgsMsgPlayStateType(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsMsgPlayStateType:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Aimdk_msgsMsgPlayStateType(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsMsgPlayStateType = Ros2Aimdk_msgsMsgPlayStateType

def _write_Ros2Aimdk_msgsMsgPlayStateType(writer, value):
    if type(value) is not Ros2Aimdk_msgsMsgPlayStateType:
        raise TypeError('exact generated record required')
    _part0 = value.value
    writer.integer(_part0, 1, False)

def _read_Ros2Aimdk_msgsMsgPlayStateType(reader):
    value = Ros2Aimdk_msgsMsgPlayStateType()
    value.value = reader.integer(1, False)
    return value

@_dataclass
class Ros2Aimdk_msgsMsgPlayStateChange:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/msg/PlayStateChange'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_62c2a232fb57ebab6a0fce42a84e12d8a25dc21e40fb5420201ef6337894f41c'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 5
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 133
    pkg_name: _py_str = ''
    state: _record_Ros2Aimdk_msgsMsgPlayStateType = _field(default_factory=lambda: Ros2Aimdk_msgsMsgPlayStateType())

    def encode(self):
        writer = _Writer(133)
        _write_Ros2Aimdk_msgsMsgPlayStateChange(writer, self)
        wire = writer.finish()
        return _wire(wire, 5, 133)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsMsgPlayStateChange:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 5, 133))
        value = _read_Ros2Aimdk_msgsMsgPlayStateChange(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsMsgPlayStateChange = Ros2Aimdk_msgsMsgPlayStateChange

def _write_Ros2Aimdk_msgsMsgPlayStateChange(writer, value):
    if type(value) is not Ros2Aimdk_msgsMsgPlayStateChange:
        raise TypeError('exact generated record required')
    _part0 = value.pkg_name
    _write_text(writer, _part0, 128)
    _part1 = value.state
    _write_Ros2Aimdk_msgsMsgPlayStateType(writer, _part1)

def _read_Ros2Aimdk_msgsMsgPlayStateChange(reader):
    value = Ros2Aimdk_msgsMsgPlayStateChange()
    value.pkg_name = _read_text(reader, 128)
    value.state = _read_Ros2Aimdk_msgsMsgPlayStateType(reader)
    return value

@_dataclass
class Ros2Aimdk_msgsMsgTtsPriorityLevel:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/msg/TtsPriorityLevel'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_6e19302f3df2152dabda478d48e0506d483427f946a552d364a206fee9687507'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    value: _py_int = 0

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Aimdk_msgsMsgTtsPriorityLevel(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsMsgTtsPriorityLevel:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Aimdk_msgsMsgTtsPriorityLevel(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsMsgTtsPriorityLevel = Ros2Aimdk_msgsMsgTtsPriorityLevel

def _write_Ros2Aimdk_msgsMsgTtsPriorityLevel(writer, value):
    if type(value) is not Ros2Aimdk_msgsMsgTtsPriorityLevel:
        raise TypeError('exact generated record required')
    _part0 = value.value
    writer.integer(_part0, 1, False)

def _read_Ros2Aimdk_msgsMsgTtsPriorityLevel(reader):
    value = Ros2Aimdk_msgsMsgTtsPriorityLevel()
    value.value = reader.integer(1, False)
    return value

@_dataclass
class Ros2Aimdk_msgsMsgPlayTtsRequest:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/msg/PlayTtsRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_f5c7b9646cefc4c4d7a3a2ddac3e1ebed6d6aa789c03be06d89ffdf6fd023b72'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 18
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 402
    text: _py_str = ''
    priority_level: _record_Ros2Aimdk_msgsMsgTtsPriorityLevel = _field(default_factory=lambda: Ros2Aimdk_msgsMsgTtsPriorityLevel())
    priority_weight: _py_int = 0
    domain: _py_str = ''
    trace_id: _py_str = ''
    is_interrupted: _py_bool = False

    def encode(self):
        writer = _Writer(402)
        _write_Ros2Aimdk_msgsMsgPlayTtsRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 18, 402)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsMsgPlayTtsRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 18, 402))
        value = _read_Ros2Aimdk_msgsMsgPlayTtsRequest(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsMsgPlayTtsRequest = Ros2Aimdk_msgsMsgPlayTtsRequest

def _write_Ros2Aimdk_msgsMsgPlayTtsRequest(writer, value):
    if type(value) is not Ros2Aimdk_msgsMsgPlayTtsRequest:
        raise TypeError('exact generated record required')
    _part0 = value.text
    _write_text(writer, _part0, 128)
    _part1 = value.priority_level
    _write_Ros2Aimdk_msgsMsgTtsPriorityLevel(writer, _part1)
    _part2 = value.priority_weight
    writer.integer(_part2, 4, False)
    _part3 = value.domain
    _write_text(writer, _part3, 128)
    _part4 = value.trace_id
    _write_text(writer, _part4, 128)
    _part5 = value.is_interrupted
    if type(_part5) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part5), 1)

def _read_Ros2Aimdk_msgsMsgPlayTtsRequest(reader):
    value = Ros2Aimdk_msgsMsgPlayTtsRequest()
    value.text = _read_text(reader, 128)
    value.priority_level = _read_Ros2Aimdk_msgsMsgTtsPriorityLevel(reader)
    value.priority_weight = reader.integer(4, False)
    value.domain = _read_text(reader, 128)
    value.trace_id = _read_text(reader, 128)
    value.is_interrupted = _read_bool(reader)
    return value

@_dataclass
class Ros2Aimdk_msgsMsgPlayTtsResponse:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/msg/PlayTtsResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_ace6fc9356d764c1f456687c3a05c24f514167cc2b48787bda62413353b8ec82'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 26
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 538
    text: _py_str = ''
    priority_level: _record_Ros2Aimdk_msgsMsgTtsPriorityLevel = _field(default_factory=lambda: Ros2Aimdk_msgsMsgTtsPriorityLevel())
    priority_weight: _py_int = 0
    domain: _py_str = ''
    trace_id: _py_str = ''
    is_success: _py_bool = False
    error_message: _py_str = ''
    estimated_duration: _py_int = 0

    def encode(self):
        writer = _Writer(538)
        _write_Ros2Aimdk_msgsMsgPlayTtsResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 26, 538)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsMsgPlayTtsResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 26, 538))
        value = _read_Ros2Aimdk_msgsMsgPlayTtsResponse(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsMsgPlayTtsResponse = Ros2Aimdk_msgsMsgPlayTtsResponse

def _write_Ros2Aimdk_msgsMsgPlayTtsResponse(writer, value):
    if type(value) is not Ros2Aimdk_msgsMsgPlayTtsResponse:
        raise TypeError('exact generated record required')
    _part0 = value.text
    _write_text(writer, _part0, 128)
    _part1 = value.priority_level
    _write_Ros2Aimdk_msgsMsgTtsPriorityLevel(writer, _part1)
    _part2 = value.priority_weight
    writer.integer(_part2, 4, False)
    _part3 = value.domain
    _write_text(writer, _part3, 128)
    _part4 = value.trace_id
    _write_text(writer, _part4, 128)
    _part5 = value.is_success
    if type(_part5) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part5), 1)
    _part6 = value.error_message
    _write_text(writer, _part6, 128)
    _part7 = value.estimated_duration
    writer.integer(_part7, 4, False)

def _read_Ros2Aimdk_msgsMsgPlayTtsResponse(reader):
    value = Ros2Aimdk_msgsMsgPlayTtsResponse()
    value.text = _read_text(reader, 128)
    value.priority_level = _read_Ros2Aimdk_msgsMsgTtsPriorityLevel(reader)
    value.priority_weight = reader.integer(4, False)
    value.domain = _read_text(reader, 128)
    value.trace_id = _read_text(reader, 128)
    value.is_success = _read_bool(reader)
    value.error_message = _read_text(reader, 128)
    value.estimated_duration = reader.integer(4, False)
    return value

@_dataclass
class Ros2Aimdk_msgsMsgPmuState:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/msg/PmuState'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_bb828bf3667ae8a8909a7e98b20e789d9dfc6b954fe2ab7fc3adbc306c9ebbbd'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 218
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1114
    pmu_software_version: _py_str = ''
    pmu_hardware_version: _py_str = ''
    pmu_protocol_version: _py_str = ''
    pmu_bool_status: _py_int = 0
    head_power_current: _py_float = 0.0
    output_48v_current: _py_float = 0.0
    rk3588_current: _py_float = 0.0
    output_12v_current: _py_float = 0.0
    bus_48v_current: _py_float = 0.0
    orin_current: _py_float = 0.0
    bus_48v_pmos_voltage: _py_float = 0.0
    battery_voltage: _py_float = 0.0
    fan_voltage: _py_float = 0.0
    output_12v_voltage: _py_float = 0.0
    output_48v_voltage: _py_float = 0.0
    bus_48v_voltage: _py_float = 0.0
    head_power_voltage: _py_float = 0.0
    orin_voltage: _py_float = 0.0
    rk3588_voltage: _py_float = 0.0
    fan_speed: _py_float = 0.0
    fan_pecentage: _py_int = 0
    pmu_temperature: _py_float = 0.0
    bms_manufacturer: _py_str = ''
    bms_serial_number: _py_str = ''
    bms_hardware_version: _py_str = ''
    bms_software_version: _py_str = ''
    bms_status_bits: _py_int = 0
    battery_balance_line_resistance: _py_int = 0
    battery_pack_voltage: _py_float = 0.0
    battery_current: _py_float = 0.0
    battery_output_power: _py_float = 0.0
    battery_temperature: _py_float = 0.0
    battery_remaining_capacity: _py_int = 0
    battery_remaining_capacity_percentage: _py_int = 0
    battery_cycle_count: _py_int = 0
    battery_cycle_total_capacity: _py_int = 0

    def encode(self):
        writer = _Writer(1114)
        _write_Ros2Aimdk_msgsMsgPmuState(writer, self)
        wire = writer.finish()
        return _wire(wire, 218, 1114)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsMsgPmuState:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 218, 1114))
        value = _read_Ros2Aimdk_msgsMsgPmuState(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsMsgPmuState = Ros2Aimdk_msgsMsgPmuState

def _write_Ros2Aimdk_msgsMsgPmuState(writer, value):
    if type(value) is not Ros2Aimdk_msgsMsgPmuState:
        raise TypeError('exact generated record required')
    _part0 = value.pmu_software_version
    _write_text(writer, _part0, 128)
    _part1 = value.pmu_hardware_version
    _write_text(writer, _part1, 128)
    _part2 = value.pmu_protocol_version
    _write_text(writer, _part2, 128)
    _part3 = value.pmu_bool_status
    writer.integer(_part3, 4, False)
    _part4 = value.head_power_current
    writer.f64(_part4)
    _part5 = value.output_48v_current
    writer.f64(_part5)
    _part6 = value.rk3588_current
    writer.f64(_part6)
    _part7 = value.output_12v_current
    writer.f64(_part7)
    _part8 = value.bus_48v_current
    writer.f64(_part8)
    _part9 = value.orin_current
    writer.f64(_part9)
    _part10 = value.bus_48v_pmos_voltage
    writer.f64(_part10)
    _part11 = value.battery_voltage
    writer.f64(_part11)
    _part12 = value.fan_voltage
    writer.f64(_part12)
    _part13 = value.output_12v_voltage
    writer.f64(_part13)
    _part14 = value.output_48v_voltage
    writer.f64(_part14)
    _part15 = value.bus_48v_voltage
    writer.f64(_part15)
    _part16 = value.head_power_voltage
    writer.f64(_part16)
    _part17 = value.orin_voltage
    writer.f64(_part17)
    _part18 = value.rk3588_voltage
    writer.f64(_part18)
    _part19 = value.fan_speed
    writer.f64(_part19)
    _part20 = value.fan_pecentage
    writer.integer(_part20, 1, False)
    _part21 = value.pmu_temperature
    writer.f64(_part21)
    _part22 = value.bms_manufacturer
    _write_text(writer, _part22, 128)
    _part23 = value.bms_serial_number
    _write_text(writer, _part23, 128)
    _part24 = value.bms_hardware_version
    _write_text(writer, _part24, 128)
    _part25 = value.bms_software_version
    _write_text(writer, _part25, 128)
    _part26 = value.bms_status_bits
    writer.integer(_part26, 4, False)
    _part27 = value.battery_balance_line_resistance
    writer.integer(_part27, 2, False)
    _part28 = value.battery_pack_voltage
    writer.f64(_part28)
    _part29 = value.battery_current
    writer.f64(_part29)
    _part30 = value.battery_output_power
    writer.f64(_part30)
    _part31 = value.battery_temperature
    writer.f64(_part31)
    _part32 = value.battery_remaining_capacity
    writer.integer(_part32, 4, False)
    _part33 = value.battery_remaining_capacity_percentage
    writer.integer(_part33, 1, False)
    _part34 = value.battery_cycle_count
    writer.integer(_part34, 2, False)
    _part35 = value.battery_cycle_total_capacity
    writer.integer(_part35, 4, False)

def _read_Ros2Aimdk_msgsMsgPmuState(reader):
    value = Ros2Aimdk_msgsMsgPmuState()
    value.pmu_software_version = _read_text(reader, 128)
    value.pmu_hardware_version = _read_text(reader, 128)
    value.pmu_protocol_version = _read_text(reader, 128)
    value.pmu_bool_status = reader.integer(4, False)
    value.head_power_current = reader.f64()
    value.output_48v_current = reader.f64()
    value.rk3588_current = reader.f64()
    value.output_12v_current = reader.f64()
    value.bus_48v_current = reader.f64()
    value.orin_current = reader.f64()
    value.bus_48v_pmos_voltage = reader.f64()
    value.battery_voltage = reader.f64()
    value.fan_voltage = reader.f64()
    value.output_12v_voltage = reader.f64()
    value.output_48v_voltage = reader.f64()
    value.bus_48v_voltage = reader.f64()
    value.head_power_voltage = reader.f64()
    value.orin_voltage = reader.f64()
    value.rk3588_voltage = reader.f64()
    value.fan_speed = reader.f64()
    value.fan_pecentage = reader.integer(1, False)
    value.pmu_temperature = reader.f64()
    value.bms_manufacturer = _read_text(reader, 128)
    value.bms_serial_number = _read_text(reader, 128)
    value.bms_hardware_version = _read_text(reader, 128)
    value.bms_software_version = _read_text(reader, 128)
    value.bms_status_bits = reader.integer(4, False)
    value.battery_balance_line_resistance = reader.integer(2, False)
    value.battery_pack_voltage = reader.f64()
    value.battery_current = reader.f64()
    value.battery_output_power = reader.f64()
    value.battery_temperature = reader.f64()
    value.battery_remaining_capacity = reader.integer(4, False)
    value.battery_remaining_capacity_percentage = reader.integer(1, False)
    value.battery_cycle_count = reader.integer(2, False)
    value.battery_cycle_total_capacity = reader.integer(4, False)
    return value

@_dataclass
class Ros2Aimdk_msgsMsgProcessedAudioOutput:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/msg/ProcessedAudioOutput'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_8b0ea5b4fc3db2efe41730f74a261ee6ea94ad34ee35ff42ae5288ddf501cc30'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 33
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 417
    header: _record_Ros2Aimdk_msgsMsgMessageHeader = _field(default_factory=lambda: Ros2Aimdk_msgsMsgMessageHeader())
    stream_id: _py_int = 0
    audio_vad_state: _record_Ros2Aimdk_msgsMsgAudioVadStateType = _field(default_factory=lambda: Ros2Aimdk_msgsMsgAudioVadStateType())
    audio_data: _py_list[_py_int] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(417)
        _write_Ros2Aimdk_msgsMsgProcessedAudioOutput(writer, self)
        wire = writer.finish()
        return _wire(wire, 33, 417)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsMsgProcessedAudioOutput:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 33, 417))
        value = _read_Ros2Aimdk_msgsMsgProcessedAudioOutput(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsMsgProcessedAudioOutput = Ros2Aimdk_msgsMsgProcessedAudioOutput

def _write_Ros2Aimdk_msgsMsgProcessedAudioOutput(writer, value):
    if type(value) is not Ros2Aimdk_msgsMsgProcessedAudioOutput:
        raise TypeError('exact generated record required')
    _part0 = value.header
    _write_Ros2Aimdk_msgsMsgMessageHeader(writer, _part0)
    _part1 = value.stream_id
    writer.integer(_part1, 4, False)
    _part2 = value.audio_vad_state
    _write_Ros2Aimdk_msgsMsgAudioVadStateType(writer, _part2)
    _part3 = value.audio_data
    if type(_part3) not in (list, tuple):
        raise TypeError('array value required')
    _count3 = len(_part3)
    if _count3 > 256:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count3, 4)
    for _index in range(_count3):
        _element = _part3[_index]
        writer.integer(_element, 1, False)

def _read_Ros2Aimdk_msgsMsgProcessedAudioOutput(reader):
    value = Ros2Aimdk_msgsMsgProcessedAudioOutput()
    value.header = _read_Ros2Aimdk_msgsMsgMessageHeader(reader)
    value.stream_id = reader.integer(4, False)
    value.audio_vad_state = _read_Ros2Aimdk_msgsMsgAudioVadStateType(reader)
    value.audio_data = [reader.integer(1, False) for _ in range(_read_count(reader, 256, 1))]
    return value

@_dataclass
class Ros2Aimdk_msgsMsgQRPoint:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/msg/QRPoint'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_b158d016b9e3607a1345df207459476cf88c9817dfd3ee7560b5635c7a81863e'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 64
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 64
    point_id: _py_int = 0
    qr_code: _record_Ros2Aimdk_msgsMsgQRCode = _field(default_factory=lambda: Ros2Aimdk_msgsMsgQRCode())

    def encode(self):
        writer = _Writer(64)
        _write_Ros2Aimdk_msgsMsgQRPoint(writer, self)
        wire = writer.finish()
        return _wire(wire, 64, 64)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsMsgQRPoint:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 64, 64))
        value = _read_Ros2Aimdk_msgsMsgQRPoint(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsMsgQRPoint = Ros2Aimdk_msgsMsgQRPoint

def _write_Ros2Aimdk_msgsMsgQRPoint(writer, value):
    if type(value) is not Ros2Aimdk_msgsMsgQRPoint:
        raise TypeError('exact generated record required')
    _part0 = value.point_id
    writer.integer(_part0, 4, True)
    _part1 = value.qr_code
    _write_Ros2Aimdk_msgsMsgQRCode(writer, _part1)

def _read_Ros2Aimdk_msgsMsgQRPoint(reader):
    value = Ros2Aimdk_msgsMsgQRPoint()
    value.point_id = reader.integer(4, True)
    value.qr_code = _read_Ros2Aimdk_msgsMsgQRCode(reader)
    return value

@_dataclass
class Ros2Geometry_msgsMsgPoint32:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'geometry_msgs/msg/Point32'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_8ca11f8b9c00af9c95e3eebbeb6073227af8dee04b57f84e120a024e7f8539f9'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 12
    x: _py_float = 0.0
    y: _py_float = 0.0
    z: _py_float = 0.0

    def encode(self):
        writer = _Writer(12)
        _write_Ros2Geometry_msgsMsgPoint32(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 12)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Geometry_msgsMsgPoint32:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 12, 12))
        value = _read_Ros2Geometry_msgsMsgPoint32(reader)
        reader.end()
        return value

_record_Ros2Geometry_msgsMsgPoint32 = Ros2Geometry_msgsMsgPoint32

def _write_Ros2Geometry_msgsMsgPoint32(writer, value):
    if type(value) is not Ros2Geometry_msgsMsgPoint32:
        raise TypeError('exact generated record required')
    _part0 = value.x
    writer.f32(_part0)
    _part1 = value.y
    writer.f32(_part1)
    _part2 = value.z
    writer.f32(_part2)

def _read_Ros2Geometry_msgsMsgPoint32(reader):
    value = Ros2Geometry_msgsMsgPoint32()
    value.x = reader.f32()
    value.y = reader.f32()
    value.z = reader.f32()
    return value

@_dataclass
class Ros2Geometry_msgsMsgPolygon:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'geometry_msgs/msg/Polygon'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_b5492d33b802b68eea062a74ffe7f336b1f392161b183e67c3bf24bb0a7d0aa8'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 52
    points: _py_list[_record_Ros2Geometry_msgsMsgPoint32] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(52)
        _write_Ros2Geometry_msgsMsgPolygon(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 52)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Geometry_msgsMsgPolygon:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 4, 52))
        value = _read_Ros2Geometry_msgsMsgPolygon(reader)
        reader.end()
        return value

_record_Ros2Geometry_msgsMsgPolygon = Ros2Geometry_msgsMsgPolygon

def _write_Ros2Geometry_msgsMsgPolygon(writer, value):
    if type(value) is not Ros2Geometry_msgsMsgPolygon:
        raise TypeError('exact generated record required')
    _part0 = value.points
    if type(_part0) not in (list, tuple):
        raise TypeError('array value required')
    _count0 = len(_part0)
    if _count0 > 4:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count0, 4)
    for _index in range(_count0):
        _element = _part0[_index]
        _write_Ros2Geometry_msgsMsgPoint32(writer, _element)

def _read_Ros2Geometry_msgsMsgPolygon(reader):
    value = Ros2Geometry_msgsMsgPolygon()
    value.points = [_read_Ros2Geometry_msgsMsgPoint32(reader) for _ in range(_read_count(reader, 4, 12))]
    return value

@_dataclass
class Ros2Aimdk_msgsMsgRegion:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/msg/Region'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_161bb9787ae2df5a45015946bc386a2c4cf310701fa4970cf447c6445c85f1ce'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 10
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 186
    type: _py_int = 0
    drawing_type: _py_int = 0
    name: _py_str = ''
    polygon: _record_Ros2Geometry_msgsMsgPolygon = _field(default_factory=lambda: Ros2Geometry_msgsMsgPolygon())

    def encode(self):
        writer = _Writer(186)
        _write_Ros2Aimdk_msgsMsgRegion(writer, self)
        wire = writer.finish()
        return _wire(wire, 10, 186)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsMsgRegion:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 10, 186))
        value = _read_Ros2Aimdk_msgsMsgRegion(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsMsgRegion = Ros2Aimdk_msgsMsgRegion

def _write_Ros2Aimdk_msgsMsgRegion(writer, value):
    if type(value) is not Ros2Aimdk_msgsMsgRegion:
        raise TypeError('exact generated record required')
    _part0 = value.type
    writer.integer(_part0, 1, False)
    _part1 = value.drawing_type
    writer.integer(_part1, 1, False)
    _part2 = value.name
    _write_text(writer, _part2, 128)
    _part3 = value.polygon
    _write_Ros2Geometry_msgsMsgPolygon(writer, _part3)

def _read_Ros2Aimdk_msgsMsgRegion(reader):
    value = Ros2Aimdk_msgsMsgRegion()
    value.type = reader.integer(1, False)
    value.drawing_type = reader.integer(1, False)
    value.name = _read_text(reader, 128)
    value.polygon = _read_Ros2Geometry_msgsMsgPolygon(reader)
    return value

@_dataclass
class Ros2Aimdk_msgsMsgRobotResource:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/msg/RobotResource'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_abc49dc6dd4cc0b0c59cd0ddb01d19897a51018752e3d9eb39aa6bcc684ad34d'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 24
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 2520
    resource_key: _py_str = ''
    current_version: _record_Ros2Aimdk_msgsMsgCurrentVersion = _field(default_factory=lambda: Ros2Aimdk_msgsMsgCurrentVersion())

    def encode(self):
        writer = _Writer(2520)
        _write_Ros2Aimdk_msgsMsgRobotResource(writer, self)
        wire = writer.finish()
        return _wire(wire, 24, 2520)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsMsgRobotResource:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 24, 2520))
        value = _read_Ros2Aimdk_msgsMsgRobotResource(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsMsgRobotResource = Ros2Aimdk_msgsMsgRobotResource

def _write_Ros2Aimdk_msgsMsgRobotResource(writer, value):
    if type(value) is not Ros2Aimdk_msgsMsgRobotResource:
        raise TypeError('exact generated record required')
    _part0 = value.resource_key
    _write_text(writer, _part0, 128)
    _part1 = value.current_version
    _write_Ros2Aimdk_msgsMsgCurrentVersion(writer, _part1)

def _read_Ros2Aimdk_msgsMsgRobotResource(reader):
    value = Ros2Aimdk_msgsMsgRobotResource()
    value.resource_key = _read_text(reader, 128)
    value.current_version = _read_Ros2Aimdk_msgsMsgCurrentVersion(reader)
    return value

@_dataclass
class Ros2Aimdk_msgsMsgSlaveDevice:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/msg/SlaveDevice'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_36af580c9887ea808824106a14966193c9a639f6825a2cb3f94cbde369bd3255'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 132
    ip: _py_str = ''

    def encode(self):
        writer = _Writer(132)
        _write_Ros2Aimdk_msgsMsgSlaveDevice(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 132)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsMsgSlaveDevice:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 4, 132))
        value = _read_Ros2Aimdk_msgsMsgSlaveDevice(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsMsgSlaveDevice = Ros2Aimdk_msgsMsgSlaveDevice

def _write_Ros2Aimdk_msgsMsgSlaveDevice(writer, value):
    if type(value) is not Ros2Aimdk_msgsMsgSlaveDevice:
        raise TypeError('exact generated record required')
    _part0 = value.ip
    _write_text(writer, _part0, 128)

def _read_Ros2Aimdk_msgsMsgSlaveDevice(reader):
    value = Ros2Aimdk_msgsMsgSlaveDevice()
    value.ip = _read_text(reader, 128)
    return value

@_dataclass
class Ros2Aimdk_msgsMsgSystemStatus:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/msg/SystemStatus'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_94275d3d0a1e83e4cc8e45b166b2cb111c9eccd4eabfe7410795b9c1fd69c6f1'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    value: _py_int = 0

    def encode(self):
        writer = _Writer(1)
        _write_Ros2Aimdk_msgsMsgSystemStatus(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsMsgSystemStatus:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros2Aimdk_msgsMsgSystemStatus(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsMsgSystemStatus = Ros2Aimdk_msgsMsgSystemStatus

def _write_Ros2Aimdk_msgsMsgSystemStatus(writer, value):
    if type(value) is not Ros2Aimdk_msgsMsgSystemStatus:
        raise TypeError('exact generated record required')
    _part0 = value.value
    writer.integer(_part0, 1, False)

def _read_Ros2Aimdk_msgsMsgSystemStatus(reader):
    value = Ros2Aimdk_msgsMsgSystemStatus()
    value.value = reader.integer(1, False)
    return value

@_dataclass
class Ros2Aimdk_msgsMsgTouchState:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/msg/TouchState'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_90d5626f09f2254a102224e74c1f8a4d8db63910b7e5eeafa519afd79c7b1564'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 97
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 225
    header: _record_Ros2Aimdk_msgsMsgMessageHeader = _field(default_factory=lambda: Ros2Aimdk_msgsMsgMessageHeader())
    event_type: _py_int = 0
    data: _py_list[_py_int] = _field(default_factory=lambda: [0 for _ in range(8)])
    threshold: _py_list[_py_int] = _field(default_factory=lambda: [0 for _ in range(8)])
    is_touched: _py_list[_py_bool] = _field(default_factory=lambda: [False for _ in range(8)])

    def encode(self):
        writer = _Writer(225)
        _write_Ros2Aimdk_msgsMsgTouchState(writer, self)
        wire = writer.finish()
        return _wire(wire, 97, 225)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsMsgTouchState:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 97, 225))
        value = _read_Ros2Aimdk_msgsMsgTouchState(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsMsgTouchState = Ros2Aimdk_msgsMsgTouchState

def _write_Ros2Aimdk_msgsMsgTouchState(writer, value):
    if type(value) is not Ros2Aimdk_msgsMsgTouchState:
        raise TypeError('exact generated record required')
    _part0 = value.header
    _write_Ros2Aimdk_msgsMsgMessageHeader(writer, _part0)
    _part1 = value.event_type
    writer.integer(_part1, 1, False)
    _part2 = value.data
    if type(_part2) not in (list, tuple):
        raise TypeError('array value required')
    _count2 = len(_part2)
    if _count2 != 8:
        raise ValueError('fixed/sequence count bound')
    for _index in range(_count2):
        _element = _part2[_index]
        writer.integer(_element, 4, False)
    _part3 = value.threshold
    if type(_part3) not in (list, tuple):
        raise TypeError('array value required')
    _count3 = len(_part3)
    if _count3 != 8:
        raise ValueError('fixed/sequence count bound')
    for _index in range(_count3):
        _element = _part3[_index]
        writer.integer(_element, 4, False)
    _part4 = value.is_touched
    if type(_part4) not in (list, tuple):
        raise TypeError('array value required')
    _count4 = len(_part4)
    if _count4 != 8:
        raise ValueError('fixed/sequence count bound')
    for _index in range(_count4):
        _element = _part4[_index]
        if type(_element) is not bool:
            raise TypeError('bool field required')
        writer.integer(int(_element), 1)

def _read_Ros2Aimdk_msgsMsgTouchState(reader):
    value = Ros2Aimdk_msgsMsgTouchState()
    value.header = _read_Ros2Aimdk_msgsMsgMessageHeader(reader)
    value.event_type = reader.integer(1, False)
    value.data = [reader.integer(4, False) for _ in range(8)]
    value.threshold = [reader.integer(4, False) for _ in range(8)]
    value.is_touched = [_read_bool(reader) for _ in range(8)]
    return value

@_dataclass
class Ros2Aimdk_msgsSrvAbandonAudioFocus_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/srv/AbandonAudioFocus_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_c49f508915d7e28b09d6b4e21da757ec4457f96f7bced6861caecf00b5e68ce5'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 20
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 148
    request: _record_Ros2Aimdk_msgsMsgCommonRequest = _field(default_factory=lambda: Ros2Aimdk_msgsMsgCommonRequest())
    focus_requester: _record_Ros2Aimdk_msgsMsgFocusRequester = _field(default_factory=lambda: Ros2Aimdk_msgsMsgFocusRequester())

    def encode(self):
        writer = _Writer(148)
        _write_Ros2Aimdk_msgsSrvAbandonAudioFocus_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 20, 148)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsSrvAbandonAudioFocus_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 20, 148))
        value = _read_Ros2Aimdk_msgsSrvAbandonAudioFocus_Request(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsSrvAbandonAudioFocus_Request = Ros2Aimdk_msgsSrvAbandonAudioFocus_Request

def _write_Ros2Aimdk_msgsSrvAbandonAudioFocus_Request(writer, value):
    if type(value) is not Ros2Aimdk_msgsSrvAbandonAudioFocus_Request:
        raise TypeError('exact generated record required')
    _part0 = value.request
    _write_Ros2Aimdk_msgsMsgCommonRequest(writer, _part0)
    _part1 = value.focus_requester
    _write_Ros2Aimdk_msgsMsgFocusRequester(writer, _part1)

def _read_Ros2Aimdk_msgsSrvAbandonAudioFocus_Request(reader):
    value = Ros2Aimdk_msgsSrvAbandonAudioFocus_Request()
    value.request = _read_Ros2Aimdk_msgsMsgCommonRequest(reader)
    value.focus_requester = _read_Ros2Aimdk_msgsMsgFocusRequester(reader)
    return value

@_dataclass
class Ros2Aimdk_msgsSrvAbandonAudioFocus_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/srv/AbandonAudioFocus_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_6a26581d66d35c5e6d04720935a163a6f527c036cb9c774e130bce242e47f376'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 29
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 285
    reponse: _record_Ros2Aimdk_msgsMsgCommonResponse = _field(default_factory=lambda: Ros2Aimdk_msgsMsgCommonResponse())
    focus_response: _record_Ros2Aimdk_msgsMsgFocusResponse = _field(default_factory=lambda: Ros2Aimdk_msgsMsgFocusResponse())

    def encode(self):
        writer = _Writer(285)
        _write_Ros2Aimdk_msgsSrvAbandonAudioFocus_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 29, 285)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsSrvAbandonAudioFocus_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 29, 285))
        value = _read_Ros2Aimdk_msgsSrvAbandonAudioFocus_Response(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsSrvAbandonAudioFocus_Response = Ros2Aimdk_msgsSrvAbandonAudioFocus_Response

def _write_Ros2Aimdk_msgsSrvAbandonAudioFocus_Response(writer, value):
    if type(value) is not Ros2Aimdk_msgsSrvAbandonAudioFocus_Response:
        raise TypeError('exact generated record required')
    _part0 = value.reponse
    _write_Ros2Aimdk_msgsMsgCommonResponse(writer, _part0)
    _part1 = value.focus_response
    _write_Ros2Aimdk_msgsMsgFocusResponse(writer, _part1)

def _read_Ros2Aimdk_msgsSrvAbandonAudioFocus_Response(reader):
    value = Ros2Aimdk_msgsSrvAbandonAudioFocus_Response()
    value.reponse = _read_Ros2Aimdk_msgsMsgCommonResponse(reader)
    value.focus_response = _read_Ros2Aimdk_msgsMsgFocusResponse(reader)
    return value

@_dataclass
class Ros2Aimdk_msgsSrvExecuteActionResource_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/srv/ExecuteActionResource_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_4fa82b039bfd5804bf1591c04cf4c874c78a8f2b25d2a39cd55e8ce877f6ce56'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 24
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 936
    header: _record_Ros2Aimdk_msgsMsgCommonRequest = _field(default_factory=lambda: Ros2Aimdk_msgsMsgCommonRequest())
    resource_key: _py_str = ''
    resource_version: _py_str = ''
    slaves: _py_list[_record_Ros2Aimdk_msgsMsgSlaveDevice] = _field(default_factory=lambda: [])
    meta: _py_str = ''

    def encode(self):
        writer = _Writer(936)
        _write_Ros2Aimdk_msgsSrvExecuteActionResource_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 24, 936)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsSrvExecuteActionResource_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 24, 936))
        value = _read_Ros2Aimdk_msgsSrvExecuteActionResource_Request(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsSrvExecuteActionResource_Request = Ros2Aimdk_msgsSrvExecuteActionResource_Request

def _write_Ros2Aimdk_msgsSrvExecuteActionResource_Request(writer, value):
    if type(value) is not Ros2Aimdk_msgsSrvExecuteActionResource_Request:
        raise TypeError('exact generated record required')
    _part0 = value.header
    _write_Ros2Aimdk_msgsMsgCommonRequest(writer, _part0)
    _part1 = value.resource_key
    _write_text(writer, _part1, 128)
    _part2 = value.resource_version
    _write_text(writer, _part2, 128)
    _part3 = value.slaves
    if type(_part3) not in (list, tuple):
        raise TypeError('array value required')
    _count3 = len(_part3)
    if _count3 > 4:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count3, 4)
    for _index in range(_count3):
        _element = _part3[_index]
        _write_Ros2Aimdk_msgsMsgSlaveDevice(writer, _element)
    _part4 = value.meta
    _write_text(writer, _part4, 128)

def _read_Ros2Aimdk_msgsSrvExecuteActionResource_Request(reader):
    value = Ros2Aimdk_msgsSrvExecuteActionResource_Request()
    value.header = _read_Ros2Aimdk_msgsMsgCommonRequest(reader)
    value.resource_key = _read_text(reader, 128)
    value.resource_version = _read_text(reader, 128)
    value.slaves = [_read_Ros2Aimdk_msgsMsgSlaveDevice(reader) for _ in range(_read_count(reader, 4, 4))]
    value.meta = _read_text(reader, 128)
    return value

@_dataclass
class Ros2Aimdk_msgsSrvExecuteActionResource_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/srv/ExecuteActionResource_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_40e147ad6f1534415f232269043f52e6566a1023f728ad31851bbd6aa8651011'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 24
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 152
    header: _record_Ros2Aimdk_msgsMsgCommonResponse = _field(default_factory=lambda: Ros2Aimdk_msgsMsgCommonResponse())

    def encode(self):
        writer = _Writer(152)
        _write_Ros2Aimdk_msgsSrvExecuteActionResource_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 24, 152)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsSrvExecuteActionResource_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 24, 152))
        value = _read_Ros2Aimdk_msgsSrvExecuteActionResource_Response(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsSrvExecuteActionResource_Response = Ros2Aimdk_msgsSrvExecuteActionResource_Response

def _write_Ros2Aimdk_msgsSrvExecuteActionResource_Response(writer, value):
    if type(value) is not Ros2Aimdk_msgsSrvExecuteActionResource_Response:
        raise TypeError('exact generated record required')
    _part0 = value.header
    _write_Ros2Aimdk_msgsMsgCommonResponse(writer, _part0)

def _read_Ros2Aimdk_msgsSrvExecuteActionResource_Response(reader):
    value = Ros2Aimdk_msgsSrvExecuteActionResource_Response()
    value.header = _read_Ros2Aimdk_msgsMsgCommonResponse(reader)
    return value

@_dataclass
class Ros2Aimdk_msgsSrvGetAllJointState_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/srv/GetAllJointState_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_6ebdd4b2a15c8d5f3089fa93003d73adb818d92b51ecb65ea817b72e0ee90260'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    request: _record_Ros2Aimdk_msgsMsgCommonRequest = _field(default_factory=lambda: Ros2Aimdk_msgsMsgCommonRequest())

    def encode(self):
        writer = _Writer(8)
        _write_Ros2Aimdk_msgsSrvGetAllJointState_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 8)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsSrvGetAllJointState_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 8))
        value = _read_Ros2Aimdk_msgsSrvGetAllJointState_Request(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsSrvGetAllJointState_Request = Ros2Aimdk_msgsSrvGetAllJointState_Request

def _write_Ros2Aimdk_msgsSrvGetAllJointState_Request(writer, value):
    if type(value) is not Ros2Aimdk_msgsSrvGetAllJointState_Request:
        raise TypeError('exact generated record required')
    _part0 = value.request
    _write_Ros2Aimdk_msgsMsgCommonRequest(writer, _part0)

def _read_Ros2Aimdk_msgsSrvGetAllJointState_Request(reader):
    value = Ros2Aimdk_msgsSrvGetAllJointState_Request()
    value.request = _read_Ros2Aimdk_msgsMsgCommonRequest(reader)
    return value

@_dataclass
class Ros2Aimdk_msgsSrvGetAllJointState_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/srv/GetAllJointState_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_7b5d2c7e0d8c1f9a7beb98289b933a2f4466c4d08e9340a816e9e65d7a8151f2'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 40
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 2696
    reponse: _record_Ros2Aimdk_msgsMsgCommonResponse = _field(default_factory=lambda: Ros2Aimdk_msgsMsgCommonResponse())
    head_joints: _py_list[_record_Ros2Aimdk_msgsMsgJointState] = _field(default_factory=lambda: [])
    arm_joints: _py_list[_record_Ros2Aimdk_msgsMsgJointState] = _field(default_factory=lambda: [])
    waist_joints: _py_list[_record_Ros2Aimdk_msgsMsgJointState] = _field(default_factory=lambda: [])
    leg_joints: _py_list[_record_Ros2Aimdk_msgsMsgJointState] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(2696)
        _write_Ros2Aimdk_msgsSrvGetAllJointState_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 40, 2696)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsSrvGetAllJointState_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 40, 2696))
        value = _read_Ros2Aimdk_msgsSrvGetAllJointState_Response(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsSrvGetAllJointState_Response = Ros2Aimdk_msgsSrvGetAllJointState_Response

def _write_Ros2Aimdk_msgsSrvGetAllJointState_Response(writer, value):
    if type(value) is not Ros2Aimdk_msgsSrvGetAllJointState_Response:
        raise TypeError('exact generated record required')
    _part0 = value.reponse
    _write_Ros2Aimdk_msgsMsgCommonResponse(writer, _part0)
    _part1 = value.head_joints
    if type(_part1) not in (list, tuple):
        raise TypeError('array value required')
    _count1 = len(_part1)
    if _count1 > 4:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        _write_Ros2Aimdk_msgsMsgJointState(writer, _element)
    _part2 = value.arm_joints
    if type(_part2) not in (list, tuple):
        raise TypeError('array value required')
    _count2 = len(_part2)
    if _count2 > 4:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        _write_Ros2Aimdk_msgsMsgJointState(writer, _element)
    _part3 = value.waist_joints
    if type(_part3) not in (list, tuple):
        raise TypeError('array value required')
    _count3 = len(_part3)
    if _count3 > 4:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count3, 4)
    for _index in range(_count3):
        _element = _part3[_index]
        _write_Ros2Aimdk_msgsMsgJointState(writer, _element)
    _part4 = value.leg_joints
    if type(_part4) not in (list, tuple):
        raise TypeError('array value required')
    _count4 = len(_part4)
    if _count4 > 4:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count4, 4)
    for _index in range(_count4):
        _element = _part4[_index]
        _write_Ros2Aimdk_msgsMsgJointState(writer, _element)

def _read_Ros2Aimdk_msgsSrvGetAllJointState_Response(reader):
    value = Ros2Aimdk_msgsSrvGetAllJointState_Response()
    value.reponse = _read_Ros2Aimdk_msgsMsgCommonResponse(reader)
    value.head_joints = [_read_Ros2Aimdk_msgsMsgJointState(reader) for _ in range(_read_count(reader, 4, 30))]
    value.arm_joints = [_read_Ros2Aimdk_msgsMsgJointState(reader) for _ in range(_read_count(reader, 4, 30))]
    value.waist_joints = [_read_Ros2Aimdk_msgsMsgJointState(reader) for _ in range(_read_count(reader, 4, 30))]
    value.leg_joints = [_read_Ros2Aimdk_msgsMsgJointState(reader) for _ in range(_read_count(reader, 4, 30))]
    return value

@_dataclass
class Ros2Aimdk_msgsSrvGetCurrentInputSource_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/srv/GetCurrentInputSource_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_d5b73ba9bc2ea2f864884a0e278e2a3e327e0af405594a5e7aac7d3884e7143a'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    request: _record_Ros2Aimdk_msgsMsgCommonRequest = _field(default_factory=lambda: Ros2Aimdk_msgsMsgCommonRequest())

    def encode(self):
        writer = _Writer(8)
        _write_Ros2Aimdk_msgsSrvGetCurrentInputSource_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 8)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsSrvGetCurrentInputSource_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 8))
        value = _read_Ros2Aimdk_msgsSrvGetCurrentInputSource_Request(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsSrvGetCurrentInputSource_Request = Ros2Aimdk_msgsSrvGetCurrentInputSource_Request

def _write_Ros2Aimdk_msgsSrvGetCurrentInputSource_Request(writer, value):
    if type(value) is not Ros2Aimdk_msgsSrvGetCurrentInputSource_Request:
        raise TypeError('exact generated record required')
    _part0 = value.request
    _write_Ros2Aimdk_msgsMsgCommonRequest(writer, _part0)

def _read_Ros2Aimdk_msgsSrvGetCurrentInputSource_Request(reader):
    value = Ros2Aimdk_msgsSrvGetCurrentInputSource_Request()
    value.request = _read_Ros2Aimdk_msgsMsgCommonRequest(reader)
    return value

@_dataclass
class Ros2Aimdk_msgsSrvGetCurrentInputSource_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/srv/GetCurrentInputSource_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_74952e748930b62ef98f8837c39e3925425b6f3a715fadb0d01339104bafbe5e'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 40
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 168
    response: _record_Ros2Aimdk_msgsMsgCommonTaskResponse = _field(default_factory=lambda: Ros2Aimdk_msgsMsgCommonTaskResponse())
    input_source: _record_Ros2Aimdk_msgsMsgMcInputSource = _field(default_factory=lambda: Ros2Aimdk_msgsMsgMcInputSource())

    def encode(self):
        writer = _Writer(168)
        _write_Ros2Aimdk_msgsSrvGetCurrentInputSource_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 40, 168)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsSrvGetCurrentInputSource_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 40, 168))
        value = _read_Ros2Aimdk_msgsSrvGetCurrentInputSource_Response(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsSrvGetCurrentInputSource_Response = Ros2Aimdk_msgsSrvGetCurrentInputSource_Response

def _write_Ros2Aimdk_msgsSrvGetCurrentInputSource_Response(writer, value):
    if type(value) is not Ros2Aimdk_msgsSrvGetCurrentInputSource_Response:
        raise TypeError('exact generated record required')
    _part0 = value.response
    _write_Ros2Aimdk_msgsMsgCommonTaskResponse(writer, _part0)
    _part1 = value.input_source
    _write_Ros2Aimdk_msgsMsgMcInputSource(writer, _part1)

def _read_Ros2Aimdk_msgsSrvGetCurrentInputSource_Response(reader):
    value = Ros2Aimdk_msgsSrvGetCurrentInputSource_Response()
    value.response = _read_Ros2Aimdk_msgsMsgCommonTaskResponse(reader)
    value.input_source = _read_Ros2Aimdk_msgsMsgMcInputSource(reader)
    return value

@_dataclass
class Ros2Aimdk_msgsSrvGetHandType_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/srv/GetHandType_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_d286d9ff63fa2191490e6aa526330d2a448b37fc47231d9e42d61a3b4ddca470'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    request: _record_Ros2Aimdk_msgsMsgCommonRequest = _field(default_factory=lambda: Ros2Aimdk_msgsMsgCommonRequest())

    def encode(self):
        writer = _Writer(8)
        _write_Ros2Aimdk_msgsSrvGetHandType_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 8)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsSrvGetHandType_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 8))
        value = _read_Ros2Aimdk_msgsSrvGetHandType_Request(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsSrvGetHandType_Request = Ros2Aimdk_msgsSrvGetHandType_Request

def _write_Ros2Aimdk_msgsSrvGetHandType_Request(writer, value):
    if type(value) is not Ros2Aimdk_msgsSrvGetHandType_Request:
        raise TypeError('exact generated record required')
    _part0 = value.request
    _write_Ros2Aimdk_msgsMsgCommonRequest(writer, _part0)

def _read_Ros2Aimdk_msgsSrvGetHandType_Request(reader):
    value = Ros2Aimdk_msgsSrvGetHandType_Request()
    value.request = _read_Ros2Aimdk_msgsMsgCommonRequest(reader)
    return value

@_dataclass
class Ros2Aimdk_msgsSrvGetHandType_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/srv/GetHandType_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_23332f9f7853b7c67f0263a4cbfc9e6f3df2aa4a7c540906f0cf304e06ec9555'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 26
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 154
    reponse: _record_Ros2Aimdk_msgsMsgCommonResponse = _field(default_factory=lambda: Ros2Aimdk_msgsMsgCommonResponse())
    left_hands_type: _record_Ros2Aimdk_msgsMsgHandType = _field(default_factory=lambda: Ros2Aimdk_msgsMsgHandType())
    right_hands_type: _record_Ros2Aimdk_msgsMsgHandType = _field(default_factory=lambda: Ros2Aimdk_msgsMsgHandType())

    def encode(self):
        writer = _Writer(154)
        _write_Ros2Aimdk_msgsSrvGetHandType_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 26, 154)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsSrvGetHandType_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 26, 154))
        value = _read_Ros2Aimdk_msgsSrvGetHandType_Response(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsSrvGetHandType_Response = Ros2Aimdk_msgsSrvGetHandType_Response

def _write_Ros2Aimdk_msgsSrvGetHandType_Response(writer, value):
    if type(value) is not Ros2Aimdk_msgsSrvGetHandType_Response:
        raise TypeError('exact generated record required')
    _part0 = value.reponse
    _write_Ros2Aimdk_msgsMsgCommonResponse(writer, _part0)
    _part1 = value.left_hands_type
    _write_Ros2Aimdk_msgsMsgHandType(writer, _part1)
    _part2 = value.right_hands_type
    _write_Ros2Aimdk_msgsMsgHandType(writer, _part2)

def _read_Ros2Aimdk_msgsSrvGetHandType_Response(reader):
    value = Ros2Aimdk_msgsSrvGetHandType_Response()
    value.reponse = _read_Ros2Aimdk_msgsMsgCommonResponse(reader)
    value.left_hands_type = _read_Ros2Aimdk_msgsMsgHandType(reader)
    value.right_hands_type = _read_Ros2Aimdk_msgsMsgHandType(reader)
    return value

@_dataclass
class Ros2Aimdk_msgsSrvGetMcAction_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/srv/GetMcAction_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_f6dc5b72271fc51bfb1950b67d671619b65dfabc7931e12889a237fe47d18cfe'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    request: _record_Ros2Aimdk_msgsMsgCommonRequest = _field(default_factory=lambda: Ros2Aimdk_msgsMsgCommonRequest())

    def encode(self):
        writer = _Writer(8)
        _write_Ros2Aimdk_msgsSrvGetMcAction_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 8)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsSrvGetMcAction_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 8))
        value = _read_Ros2Aimdk_msgsSrvGetMcAction_Request(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsSrvGetMcAction_Request = Ros2Aimdk_msgsSrvGetMcAction_Request

def _write_Ros2Aimdk_msgsSrvGetMcAction_Request(writer, value):
    if type(value) is not Ros2Aimdk_msgsSrvGetMcAction_Request:
        raise TypeError('exact generated record required')
    _part0 = value.request
    _write_Ros2Aimdk_msgsMsgCommonRequest(writer, _part0)

def _read_Ros2Aimdk_msgsSrvGetMcAction_Request(reader):
    value = Ros2Aimdk_msgsSrvGetMcAction_Request()
    value.request = _read_Ros2Aimdk_msgsMsgCommonRequest(reader)
    return value

@_dataclass
class Ros2Aimdk_msgsSrvGetMcAction_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/srv/GetMcAction_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_e2518bce930bc6f8e195b638d9eb5c132dffa93449c94b6f044e6192843df18f'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 28
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 156
    header: _record_Ros2Aimdk_msgsMsgResponseHeader = _field(default_factory=lambda: Ros2Aimdk_msgsMsgResponseHeader())
    info: _record_Ros2Aimdk_msgsMsgMcActionInfo = _field(default_factory=lambda: Ros2Aimdk_msgsMsgMcActionInfo())

    def encode(self):
        writer = _Writer(156)
        _write_Ros2Aimdk_msgsSrvGetMcAction_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 28, 156)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsSrvGetMcAction_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 28, 156))
        value = _read_Ros2Aimdk_msgsSrvGetMcAction_Response(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsSrvGetMcAction_Response = Ros2Aimdk_msgsSrvGetMcAction_Response

def _write_Ros2Aimdk_msgsSrvGetMcAction_Response(writer, value):
    if type(value) is not Ros2Aimdk_msgsSrvGetMcAction_Response:
        raise TypeError('exact generated record required')
    _part0 = value.header
    _write_Ros2Aimdk_msgsMsgResponseHeader(writer, _part0)
    _part1 = value.info
    _write_Ros2Aimdk_msgsMsgMcActionInfo(writer, _part1)

def _read_Ros2Aimdk_msgsSrvGetMcAction_Response(reader):
    value = Ros2Aimdk_msgsSrvGetMcAction_Response()
    value.header = _read_Ros2Aimdk_msgsMsgResponseHeader(reader)
    value.info = _read_Ros2Aimdk_msgsMsgMcActionInfo(reader)
    return value

@_dataclass
class Ros2Aimdk_msgsSrvGetMicSourceRequest_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/srv/GetMicSourceRequest_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_da81fa95ff0da422aaabb2412f11371452bac4c9b658682884b91fece94171cc'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    header: _record_Ros2Aimdk_msgsMsgCommonRequest = _field(default_factory=lambda: Ros2Aimdk_msgsMsgCommonRequest())

    def encode(self):
        writer = _Writer(8)
        _write_Ros2Aimdk_msgsSrvGetMicSourceRequest_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 8)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsSrvGetMicSourceRequest_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 8))
        value = _read_Ros2Aimdk_msgsSrvGetMicSourceRequest_Request(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsSrvGetMicSourceRequest_Request = Ros2Aimdk_msgsSrvGetMicSourceRequest_Request

def _write_Ros2Aimdk_msgsSrvGetMicSourceRequest_Request(writer, value):
    if type(value) is not Ros2Aimdk_msgsSrvGetMicSourceRequest_Request:
        raise TypeError('exact generated record required')
    _part0 = value.header
    _write_Ros2Aimdk_msgsMsgCommonRequest(writer, _part0)

def _read_Ros2Aimdk_msgsSrvGetMicSourceRequest_Request(reader):
    value = Ros2Aimdk_msgsSrvGetMicSourceRequest_Request()
    value.header = _read_Ros2Aimdk_msgsMsgCommonRequest(reader)
    return value

@_dataclass
class Ros2Aimdk_msgsSrvGetMicSourceRequest_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/srv/GetMicSourceRequest_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_86637a091357add483c69aa331eb4305632f3701ff9d77dc8e00e8bc19b6f1f6'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 28
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 156
    header: _record_Ros2Aimdk_msgsMsgCommonResponse = _field(default_factory=lambda: Ros2Aimdk_msgsMsgCommonResponse())
    mic_source: _py_int = 0

    def encode(self):
        writer = _Writer(156)
        _write_Ros2Aimdk_msgsSrvGetMicSourceRequest_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 28, 156)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsSrvGetMicSourceRequest_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 28, 156))
        value = _read_Ros2Aimdk_msgsSrvGetMicSourceRequest_Response(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsSrvGetMicSourceRequest_Response = Ros2Aimdk_msgsSrvGetMicSourceRequest_Response

def _write_Ros2Aimdk_msgsSrvGetMicSourceRequest_Response(writer, value):
    if type(value) is not Ros2Aimdk_msgsSrvGetMicSourceRequest_Response:
        raise TypeError('exact generated record required')
    _part0 = value.header
    _write_Ros2Aimdk_msgsMsgCommonResponse(writer, _part0)
    _part1 = value.mic_source
    writer.integer(_part1, 4, False)

def _read_Ros2Aimdk_msgsSrvGetMicSourceRequest_Response(reader):
    value = Ros2Aimdk_msgsSrvGetMicSourceRequest_Response()
    value.header = _read_Ros2Aimdk_msgsMsgCommonResponse(reader)
    value.mic_source = reader.integer(4, False)
    return value

@_dataclass
class Ros2Aimdk_msgsSrvGetMute_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/srv/GetMute_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_0f3d2a1679b2af2dca96bcdba69e8f076e9a333d4166a53501de40594c723ca5'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    request: _record_Ros2Aimdk_msgsMsgCommonRequest = _field(default_factory=lambda: Ros2Aimdk_msgsMsgCommonRequest())

    def encode(self):
        writer = _Writer(8)
        _write_Ros2Aimdk_msgsSrvGetMute_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 8)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsSrvGetMute_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 8))
        value = _read_Ros2Aimdk_msgsSrvGetMute_Request(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsSrvGetMute_Request = Ros2Aimdk_msgsSrvGetMute_Request

def _write_Ros2Aimdk_msgsSrvGetMute_Request(writer, value):
    if type(value) is not Ros2Aimdk_msgsSrvGetMute_Request:
        raise TypeError('exact generated record required')
    _part0 = value.request
    _write_Ros2Aimdk_msgsMsgCommonRequest(writer, _part0)

def _read_Ros2Aimdk_msgsSrvGetMute_Request(reader):
    value = Ros2Aimdk_msgsSrvGetMute_Request()
    value.request = _read_Ros2Aimdk_msgsMsgCommonRequest(reader)
    return value

@_dataclass
class Ros2Aimdk_msgsSrvGetMute_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/srv/GetMute_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_c1beb5c0c269083a0be2c3a4718043ec92639b6ac58cf1d74bae051bec2d8a42'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 25
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 153
    reponse: _record_Ros2Aimdk_msgsMsgCommonResponse = _field(default_factory=lambda: Ros2Aimdk_msgsMsgCommonResponse())
    is_mute: _py_bool = False

    def encode(self):
        writer = _Writer(153)
        _write_Ros2Aimdk_msgsSrvGetMute_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 25, 153)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsSrvGetMute_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 25, 153))
        value = _read_Ros2Aimdk_msgsSrvGetMute_Response(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsSrvGetMute_Response = Ros2Aimdk_msgsSrvGetMute_Response

def _write_Ros2Aimdk_msgsSrvGetMute_Response(writer, value):
    if type(value) is not Ros2Aimdk_msgsSrvGetMute_Response:
        raise TypeError('exact generated record required')
    _part0 = value.reponse
    _write_Ros2Aimdk_msgsMsgCommonResponse(writer, _part0)
    _part1 = value.is_mute
    if type(_part1) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part1), 1)

def _read_Ros2Aimdk_msgsSrvGetMute_Response(reader):
    value = Ros2Aimdk_msgsSrvGetMute_Response()
    value.reponse = _read_Ros2Aimdk_msgsMsgCommonResponse(reader)
    value.is_mute = _read_bool(reader)
    return value

@_dataclass
class Ros2Aimdk_msgsSrvGetRobotResources_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/srv/GetRobotResources_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_0d086d105a54d7feea306182350c962ecebe145b8f9c45ca1216a88e6aaec86b'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    header: _record_Ros2Aimdk_msgsMsgCommonRequest = _field(default_factory=lambda: Ros2Aimdk_msgsMsgCommonRequest())

    def encode(self):
        writer = _Writer(8)
        _write_Ros2Aimdk_msgsSrvGetRobotResources_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 8)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsSrvGetRobotResources_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 8))
        value = _read_Ros2Aimdk_msgsSrvGetRobotResources_Request(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsSrvGetRobotResources_Request = Ros2Aimdk_msgsSrvGetRobotResources_Request

def _write_Ros2Aimdk_msgsSrvGetRobotResources_Request(writer, value):
    if type(value) is not Ros2Aimdk_msgsSrvGetRobotResources_Request:
        raise TypeError('exact generated record required')
    _part0 = value.header
    _write_Ros2Aimdk_msgsMsgCommonRequest(writer, _part0)

def _read_Ros2Aimdk_msgsSrvGetRobotResources_Request(reader):
    value = Ros2Aimdk_msgsSrvGetRobotResources_Request()
    value.header = _read_Ros2Aimdk_msgsMsgCommonRequest(reader)
    return value

@_dataclass
class Ros2Aimdk_msgsSrvGetRobotResources_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/srv/GetRobotResources_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_ec4e3d0e6c502b60e70a3ba18f41d885e108fd4fe530ef2a9136ca0b32edda91'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 28
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 10236
    header: _record_Ros2Aimdk_msgsMsgCommonResponse = _field(default_factory=lambda: Ros2Aimdk_msgsMsgCommonResponse())
    robot_resources: _py_list[_record_Ros2Aimdk_msgsMsgRobotResource] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(10236)
        _write_Ros2Aimdk_msgsSrvGetRobotResources_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 28, 10236)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsSrvGetRobotResources_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 28, 10236))
        value = _read_Ros2Aimdk_msgsSrvGetRobotResources_Response(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsSrvGetRobotResources_Response = Ros2Aimdk_msgsSrvGetRobotResources_Response

def _write_Ros2Aimdk_msgsSrvGetRobotResources_Response(writer, value):
    if type(value) is not Ros2Aimdk_msgsSrvGetRobotResources_Response:
        raise TypeError('exact generated record required')
    _part0 = value.header
    _write_Ros2Aimdk_msgsMsgCommonResponse(writer, _part0)
    _part1 = value.robot_resources
    if type(_part1) not in (list, tuple):
        raise TypeError('array value required')
    _count1 = len(_part1)
    if _count1 > 4:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        _write_Ros2Aimdk_msgsMsgRobotResource(writer, _element)

def _read_Ros2Aimdk_msgsSrvGetRobotResources_Response(reader):
    value = Ros2Aimdk_msgsSrvGetRobotResources_Response()
    value.header = _read_Ros2Aimdk_msgsMsgCommonResponse(reader)
    value.robot_resources = [_read_Ros2Aimdk_msgsMsgRobotResource(reader) for _ in range(_read_count(reader, 4, 24))]
    return value

@_dataclass
class Ros2Std_msgsMsgHeader:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'std_msgs/msg/Header'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 140
    stamp: _record_Ros2Builtin_interfacesMsgTime = _field(default_factory=lambda: Ros2Builtin_interfacesMsgTime())
    frame_id: _py_str = ''

    def encode(self):
        writer = _Writer(140)
        _write_Ros2Std_msgsMsgHeader(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 140)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Std_msgsMsgHeader:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 12, 140))
        value = _read_Ros2Std_msgsMsgHeader(reader)
        reader.end()
        return value

_record_Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader

def _write_Ros2Std_msgsMsgHeader(writer, value):
    if type(value) is not Ros2Std_msgsMsgHeader:
        raise TypeError('exact generated record required')
    _part0 = value.stamp
    _write_Ros2Builtin_interfacesMsgTime(writer, _part0)
    _part1 = value.frame_id
    _write_text(writer, _part1, 128)

def _read_Ros2Std_msgsMsgHeader(reader):
    value = Ros2Std_msgsMsgHeader()
    value.stamp = _read_Ros2Builtin_interfacesMsgTime(reader)
    value.frame_id = _read_text(reader, 128)
    return value

@_dataclass
class Ros2Aimdk_msgsSrvGetStoredMapByName_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/srv/GetStoredMapByName_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_4c33fbe7dbfe4cb2c06345046eb36d470530ff775ae5eee9b89f69fa5ec2fbc3'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 16
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 272
    header: _record_Ros2Std_msgsMsgHeader = _field(default_factory=lambda: Ros2Std_msgsMsgHeader())
    map_name: _py_str = ''

    def encode(self):
        writer = _Writer(272)
        _write_Ros2Aimdk_msgsSrvGetStoredMapByName_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 16, 272)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsSrvGetStoredMapByName_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 16, 272))
        value = _read_Ros2Aimdk_msgsSrvGetStoredMapByName_Request(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsSrvGetStoredMapByName_Request = Ros2Aimdk_msgsSrvGetStoredMapByName_Request

def _write_Ros2Aimdk_msgsSrvGetStoredMapByName_Request(writer, value):
    if type(value) is not Ros2Aimdk_msgsSrvGetStoredMapByName_Request:
        raise TypeError('exact generated record required')
    _part0 = value.header
    _write_Ros2Std_msgsMsgHeader(writer, _part0)
    _part1 = value.map_name
    _write_text(writer, _part1, 128)

def _read_Ros2Aimdk_msgsSrvGetStoredMapByName_Request(reader):
    value = Ros2Aimdk_msgsSrvGetStoredMapByName_Request()
    value.header = _read_Ros2Std_msgsMsgHeader(reader)
    value.map_name = _read_text(reader, 128)
    return value

@_dataclass
class Ros2Nav_msgsMsgMapMetaData:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'nav_msgs/msg/MapMetaData'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_494874ea5dbbb03876e0405f6d06b5d7cc5b1727e61dcb8ff9e449735b800009'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 76
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 76
    map_load_time: _record_Ros2Builtin_interfacesMsgTime = _field(default_factory=lambda: Ros2Builtin_interfacesMsgTime())
    resolution: _py_float = 0.0
    width: _py_int = 0
    height: _py_int = 0
    origin: _record_Ros2Geometry_msgsMsgPose = _field(default_factory=lambda: Ros2Geometry_msgsMsgPose())

    def encode(self):
        writer = _Writer(76)
        _write_Ros2Nav_msgsMsgMapMetaData(writer, self)
        wire = writer.finish()
        return _wire(wire, 76, 76)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Nav_msgsMsgMapMetaData:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 76, 76))
        value = _read_Ros2Nav_msgsMsgMapMetaData(reader)
        reader.end()
        return value

_record_Ros2Nav_msgsMsgMapMetaData = Ros2Nav_msgsMsgMapMetaData

def _write_Ros2Nav_msgsMsgMapMetaData(writer, value):
    if type(value) is not Ros2Nav_msgsMsgMapMetaData:
        raise TypeError('exact generated record required')
    _part0 = value.map_load_time
    _write_Ros2Builtin_interfacesMsgTime(writer, _part0)
    _part1 = value.resolution
    writer.f32(_part1)
    _part2 = value.width
    writer.integer(_part2, 4, False)
    _part3 = value.height
    writer.integer(_part3, 4, False)
    _part4 = value.origin
    _write_Ros2Geometry_msgsMsgPose(writer, _part4)

def _read_Ros2Nav_msgsMsgMapMetaData(reader):
    value = Ros2Nav_msgsMsgMapMetaData()
    value.map_load_time = _read_Ros2Builtin_interfacesMsgTime(reader)
    value.resolution = reader.f32()
    value.width = reader.integer(4, False)
    value.height = reader.integer(4, False)
    value.origin = _read_Ros2Geometry_msgsMsgPose(reader)
    return value

@_dataclass
class Ros2Aimdk_msgsSrvGetStoredMapByName_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/srv/GetStoredMapByName_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_66ba1fb25a02dc55b4c5f46bdb5e090d134ea5fa9ff2a47f4934b0af382c61fb'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 140
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 3400
    code: _py_int = 0
    header: _record_Ros2Std_msgsMsgHeader = _field(default_factory=lambda: Ros2Std_msgsMsgHeader())
    map_info: _record_Ros2Nav_msgsMsgMapMetaData = _field(default_factory=lambda: Ros2Nav_msgsMsgMapMetaData())
    map_version: _py_int = 0
    map_path: _py_str = ''
    data: _py_list[_py_int] = _field(default_factory=lambda: [])
    navi_points: _py_list[_record_Ros2Aimdk_msgsMsgNaviPoint] = _field(default_factory=lambda: [])
    qr_points: _py_list[_record_Ros2Aimdk_msgsMsgQRPoint] = _field(default_factory=lambda: [])
    hr_points: _py_list[_record_Ros2Aimdk_msgsMsgHRPoint] = _field(default_factory=lambda: [])
    paths: _py_list[_record_Ros2Aimdk_msgsMsgPath] = _field(default_factory=lambda: [])
    regions: _py_list[_record_Ros2Aimdk_msgsMsgRegion] = _field(default_factory=lambda: [])
    map_id: _py_int = 0

    def encode(self):
        writer = _Writer(3400)
        _write_Ros2Aimdk_msgsSrvGetStoredMapByName_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 140, 3400)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsSrvGetStoredMapByName_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 140, 3400))
        value = _read_Ros2Aimdk_msgsSrvGetStoredMapByName_Response(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsSrvGetStoredMapByName_Response = Ros2Aimdk_msgsSrvGetStoredMapByName_Response

def _write_Ros2Aimdk_msgsSrvGetStoredMapByName_Response(writer, value):
    if type(value) is not Ros2Aimdk_msgsSrvGetStoredMapByName_Response:
        raise TypeError('exact generated record required')
    _part0 = value.code
    writer.integer(_part0, 8, False)
    _part1 = value.header
    _write_Ros2Std_msgsMsgHeader(writer, _part1)
    _part2 = value.map_info
    _write_Ros2Nav_msgsMsgMapMetaData(writer, _part2)
    _part3 = value.map_version
    writer.integer(_part3, 8, False)
    _part4 = value.map_path
    _write_text(writer, _part4, 128)
    _part5 = value.data
    if type(_part5) not in (list, tuple):
        raise TypeError('array value required')
    _count5 = len(_part5)
    if _count5 > 256:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count5, 4)
    for _index in range(_count5):
        _element = _part5[_index]
        writer.integer(_element, 1, True)
    _part6 = value.navi_points
    if type(_part6) not in (list, tuple):
        raise TypeError('array value required')
    _count6 = len(_part6)
    if _count6 > 4:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count6, 4)
    for _index in range(_count6):
        _element = _part6[_index]
        _write_Ros2Aimdk_msgsMsgNaviPoint(writer, _element)
    _part7 = value.qr_points
    if type(_part7) not in (list, tuple):
        raise TypeError('array value required')
    _count7 = len(_part7)
    if _count7 > 4:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count7, 4)
    for _index in range(_count7):
        _element = _part7[_index]
        _write_Ros2Aimdk_msgsMsgQRPoint(writer, _element)
    _part8 = value.hr_points
    if type(_part8) not in (list, tuple):
        raise TypeError('array value required')
    _count8 = len(_part8)
    if _count8 > 4:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count8, 4)
    for _index in range(_count8):
        _element = _part8[_index]
        _write_Ros2Aimdk_msgsMsgHRPoint(writer, _element)
    _part9 = value.paths
    if type(_part9) not in (list, tuple):
        raise TypeError('array value required')
    _count9 = len(_part9)
    if _count9 > 4:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count9, 4)
    for _index in range(_count9):
        _element = _part9[_index]
        _write_Ros2Aimdk_msgsMsgPath(writer, _element)
    _part10 = value.regions
    if type(_part10) not in (list, tuple):
        raise TypeError('array value required')
    _count10 = len(_part10)
    if _count10 > 4:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count10, 4)
    for _index in range(_count10):
        _element = _part10[_index]
        _write_Ros2Aimdk_msgsMsgRegion(writer, _element)
    _part11 = value.map_id
    writer.integer(_part11, 8, False)

def _read_Ros2Aimdk_msgsSrvGetStoredMapByName_Response(reader):
    value = Ros2Aimdk_msgsSrvGetStoredMapByName_Response()
    value.code = reader.integer(8, False)
    value.header = _read_Ros2Std_msgsMsgHeader(reader)
    value.map_info = _read_Ros2Nav_msgsMsgMapMetaData(reader)
    value.map_version = reader.integer(8, False)
    value.map_path = _read_text(reader, 128)
    value.data = [reader.integer(1, True) for _ in range(_read_count(reader, 256, 1))]
    value.navi_points = [_read_Ros2Aimdk_msgsMsgNaviPoint(reader) for _ in range(_read_count(reader, 4, 28))]
    value.qr_points = [_read_Ros2Aimdk_msgsMsgQRPoint(reader) for _ in range(_read_count(reader, 4, 64))]
    value.hr_points = [_read_Ros2Aimdk_msgsMsgHRPoint(reader) for _ in range(_read_count(reader, 4, 65))]
    value.paths = [_read_Ros2Aimdk_msgsMsgPath(reader) for _ in range(_read_count(reader, 4, 8))]
    value.regions = [_read_Ros2Aimdk_msgsMsgRegion(reader) for _ in range(_read_count(reader, 4, 10))]
    value.map_id = reader.integer(8, False)
    return value

@_dataclass
class Ros2Aimdk_msgsSrvGetSystemState_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/srv/GetSystemState_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_abc62c31fea241d08d99a5a726199b29b995c0cadb688e5aa480ab70d173bf1f'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    header: _record_Ros2Aimdk_msgsMsgCommonRequest = _field(default_factory=lambda: Ros2Aimdk_msgsMsgCommonRequest())

    def encode(self):
        writer = _Writer(8)
        _write_Ros2Aimdk_msgsSrvGetSystemState_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 8)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsSrvGetSystemState_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 8))
        value = _read_Ros2Aimdk_msgsSrvGetSystemState_Request(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsSrvGetSystemState_Request = Ros2Aimdk_msgsSrvGetSystemState_Request

def _write_Ros2Aimdk_msgsSrvGetSystemState_Request(writer, value):
    if type(value) is not Ros2Aimdk_msgsSrvGetSystemState_Request:
        raise TypeError('exact generated record required')
    _part0 = value.header
    _write_Ros2Aimdk_msgsMsgCommonRequest(writer, _part0)

def _read_Ros2Aimdk_msgsSrvGetSystemState_Request(reader):
    value = Ros2Aimdk_msgsSrvGetSystemState_Request()
    value.header = _read_Ros2Aimdk_msgsMsgCommonRequest(reader)
    return value

@_dataclass
class Ros2Aimdk_msgsSrvGetSystemState_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/srv/GetSystemState_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_8ea41f1383183b566d3c4457bee27191c9ac986a7c42e0b98aab05ab500c9039'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 29
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 285
    header: _record_Ros2Aimdk_msgsMsgCommonResponse = _field(default_factory=lambda: Ros2Aimdk_msgsMsgCommonResponse())
    cur_state: _py_str = ''
    curr_status: _record_Ros2Aimdk_msgsMsgSystemStatus = _field(default_factory=lambda: Ros2Aimdk_msgsMsgSystemStatus())

    def encode(self):
        writer = _Writer(285)
        _write_Ros2Aimdk_msgsSrvGetSystemState_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 29, 285)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsSrvGetSystemState_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 29, 285))
        value = _read_Ros2Aimdk_msgsSrvGetSystemState_Response(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsSrvGetSystemState_Response = Ros2Aimdk_msgsSrvGetSystemState_Response

def _write_Ros2Aimdk_msgsSrvGetSystemState_Response(writer, value):
    if type(value) is not Ros2Aimdk_msgsSrvGetSystemState_Response:
        raise TypeError('exact generated record required')
    _part0 = value.header
    _write_Ros2Aimdk_msgsMsgCommonResponse(writer, _part0)
    _part1 = value.cur_state
    _write_text(writer, _part1, 128)
    _part2 = value.curr_status
    _write_Ros2Aimdk_msgsMsgSystemStatus(writer, _part2)

def _read_Ros2Aimdk_msgsSrvGetSystemState_Response(reader):
    value = Ros2Aimdk_msgsSrvGetSystemState_Response()
    value.header = _read_Ros2Aimdk_msgsMsgCommonResponse(reader)
    value.cur_state = _read_text(reader, 128)
    value.curr_status = _read_Ros2Aimdk_msgsMsgSystemStatus(reader)
    return value

@_dataclass
class Ros2Aimdk_msgsSrvGetVolume_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/srv/GetVolume_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_6e0d1472098c746f350535d30a3281758480e8e7c7b8ef54485310dae16dfc2b'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    request: _record_Ros2Aimdk_msgsMsgCommonRequest = _field(default_factory=lambda: Ros2Aimdk_msgsMsgCommonRequest())

    def encode(self):
        writer = _Writer(8)
        _write_Ros2Aimdk_msgsSrvGetVolume_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 8)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsSrvGetVolume_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 8))
        value = _read_Ros2Aimdk_msgsSrvGetVolume_Request(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsSrvGetVolume_Request = Ros2Aimdk_msgsSrvGetVolume_Request

def _write_Ros2Aimdk_msgsSrvGetVolume_Request(writer, value):
    if type(value) is not Ros2Aimdk_msgsSrvGetVolume_Request:
        raise TypeError('exact generated record required')
    _part0 = value.request
    _write_Ros2Aimdk_msgsMsgCommonRequest(writer, _part0)

def _read_Ros2Aimdk_msgsSrvGetVolume_Request(reader):
    value = Ros2Aimdk_msgsSrvGetVolume_Request()
    value.request = _read_Ros2Aimdk_msgsMsgCommonRequest(reader)
    return value

@_dataclass
class Ros2Aimdk_msgsSrvGetVolume_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/srv/GetVolume_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_24a04a12d640be4e17e24d372b0bbb2f65a89bd56e4ee1448e252db2c833c266'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 28
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 156
    reponse: _record_Ros2Aimdk_msgsMsgCommonResponse = _field(default_factory=lambda: Ros2Aimdk_msgsMsgCommonResponse())
    audio_volume: _py_int = 0

    def encode(self):
        writer = _Writer(156)
        _write_Ros2Aimdk_msgsSrvGetVolume_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 28, 156)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsSrvGetVolume_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 28, 156))
        value = _read_Ros2Aimdk_msgsSrvGetVolume_Response(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsSrvGetVolume_Response = Ros2Aimdk_msgsSrvGetVolume_Response

def _write_Ros2Aimdk_msgsSrvGetVolume_Response(writer, value):
    if type(value) is not Ros2Aimdk_msgsSrvGetVolume_Response:
        raise TypeError('exact generated record required')
    _part0 = value.reponse
    _write_Ros2Aimdk_msgsMsgCommonResponse(writer, _part0)
    _part1 = value.audio_volume
    writer.integer(_part1, 4, False)

def _read_Ros2Aimdk_msgsSrvGetVolume_Response(reader):
    value = Ros2Aimdk_msgsSrvGetVolume_Response()
    value.reponse = _read_Ros2Aimdk_msgsMsgCommonResponse(reader)
    value.audio_volume = reader.integer(4, False)
    return value

@_dataclass
class Ros2Aimdk_msgsSrvMigrateSystemState_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/srv/MigrateSystemState_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_02131f85cee3462c507bef0c8f54e75adbb1c8318551cfaef8efc59d693a415b'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 140
    header: _record_Ros2Aimdk_msgsMsgCommonRequest = _field(default_factory=lambda: Ros2Aimdk_msgsMsgCommonRequest())
    state: _py_str = ''

    def encode(self):
        writer = _Writer(140)
        _write_Ros2Aimdk_msgsSrvMigrateSystemState_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 140)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsSrvMigrateSystemState_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 12, 140))
        value = _read_Ros2Aimdk_msgsSrvMigrateSystemState_Request(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsSrvMigrateSystemState_Request = Ros2Aimdk_msgsSrvMigrateSystemState_Request

def _write_Ros2Aimdk_msgsSrvMigrateSystemState_Request(writer, value):
    if type(value) is not Ros2Aimdk_msgsSrvMigrateSystemState_Request:
        raise TypeError('exact generated record required')
    _part0 = value.header
    _write_Ros2Aimdk_msgsMsgCommonRequest(writer, _part0)
    _part1 = value.state
    _write_text(writer, _part1, 128)

def _read_Ros2Aimdk_msgsSrvMigrateSystemState_Request(reader):
    value = Ros2Aimdk_msgsSrvMigrateSystemState_Request()
    value.header = _read_Ros2Aimdk_msgsMsgCommonRequest(reader)
    value.state = _read_text(reader, 128)
    return value

@_dataclass
class Ros2Aimdk_msgsSrvMigrateSystemState_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/srv/MigrateSystemState_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_7d4901fe8d9ab86c9f42b643604809a73e07ea77877b955764b4311d6f585802'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 24
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 152
    header: _record_Ros2Aimdk_msgsMsgCommonResponse = _field(default_factory=lambda: Ros2Aimdk_msgsMsgCommonResponse())

    def encode(self):
        writer = _Writer(152)
        _write_Ros2Aimdk_msgsSrvMigrateSystemState_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 24, 152)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsSrvMigrateSystemState_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 24, 152))
        value = _read_Ros2Aimdk_msgsSrvMigrateSystemState_Response(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsSrvMigrateSystemState_Response = Ros2Aimdk_msgsSrvMigrateSystemState_Response

def _write_Ros2Aimdk_msgsSrvMigrateSystemState_Response(writer, value):
    if type(value) is not Ros2Aimdk_msgsSrvMigrateSystemState_Response:
        raise TypeError('exact generated record required')
    _part0 = value.header
    _write_Ros2Aimdk_msgsMsgCommonResponse(writer, _part0)

def _read_Ros2Aimdk_msgsSrvMigrateSystemState_Response(reader):
    value = Ros2Aimdk_msgsSrvMigrateSystemState_Response()
    value.header = _read_Ros2Aimdk_msgsMsgCommonResponse(reader)
    return value

@_dataclass
class Ros2Aimdk_msgsSrvPlayAudioFile_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/srv/PlayAudioFile_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_710a4db7c9c3792601fd958615acbd3e413ed1b1ca98aec0a7b04aff79c59cb1'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 53
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 693
    request: _record_Ros2Aimdk_msgsMsgCommonRequest = _field(default_factory=lambda: Ros2Aimdk_msgsMsgCommonRequest())
    file: _record_Ros2Aimdk_msgsMsgAudioFile = _field(default_factory=lambda: Ros2Aimdk_msgsMsgAudioFile())
    play_stamps: _record_Ros2Builtin_interfacesMsgTime = _field(default_factory=lambda: Ros2Builtin_interfacesMsgTime())

    def encode(self):
        writer = _Writer(693)
        _write_Ros2Aimdk_msgsSrvPlayAudioFile_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 53, 693)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsSrvPlayAudioFile_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 53, 693))
        value = _read_Ros2Aimdk_msgsSrvPlayAudioFile_Request(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsSrvPlayAudioFile_Request = Ros2Aimdk_msgsSrvPlayAudioFile_Request

def _write_Ros2Aimdk_msgsSrvPlayAudioFile_Request(writer, value):
    if type(value) is not Ros2Aimdk_msgsSrvPlayAudioFile_Request:
        raise TypeError('exact generated record required')
    _part0 = value.request
    _write_Ros2Aimdk_msgsMsgCommonRequest(writer, _part0)
    _part1 = value.file
    _write_Ros2Aimdk_msgsMsgAudioFile(writer, _part1)
    _part2 = value.play_stamps
    _write_Ros2Builtin_interfacesMsgTime(writer, _part2)

def _read_Ros2Aimdk_msgsSrvPlayAudioFile_Request(reader):
    value = Ros2Aimdk_msgsSrvPlayAudioFile_Request()
    value.request = _read_Ros2Aimdk_msgsMsgCommonRequest(reader)
    value.file = _read_Ros2Aimdk_msgsMsgAudioFile(reader)
    value.play_stamps = _read_Ros2Builtin_interfacesMsgTime(reader)
    return value

@_dataclass
class Ros2Aimdk_msgsSrvPlayAudioFile_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/srv/PlayAudioFile_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_988d360e84f041bc5a53a6d085709ba31e7e3836115e40d890534f44e62b0b85'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 24
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 152
    reponse: _record_Ros2Aimdk_msgsMsgCommonResponse = _field(default_factory=lambda: Ros2Aimdk_msgsMsgCommonResponse())

    def encode(self):
        writer = _Writer(152)
        _write_Ros2Aimdk_msgsSrvPlayAudioFile_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 24, 152)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsSrvPlayAudioFile_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 24, 152))
        value = _read_Ros2Aimdk_msgsSrvPlayAudioFile_Response(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsSrvPlayAudioFile_Response = Ros2Aimdk_msgsSrvPlayAudioFile_Response

def _write_Ros2Aimdk_msgsSrvPlayAudioFile_Response(writer, value):
    if type(value) is not Ros2Aimdk_msgsSrvPlayAudioFile_Response:
        raise TypeError('exact generated record required')
    _part0 = value.reponse
    _write_Ros2Aimdk_msgsMsgCommonResponse(writer, _part0)

def _read_Ros2Aimdk_msgsSrvPlayAudioFile_Response(reader):
    value = Ros2Aimdk_msgsSrvPlayAudioFile_Response()
    value.reponse = _read_Ros2Aimdk_msgsMsgCommonResponse(reader)
    return value

@_dataclass
class Ros2Aimdk_msgsSrvPlayEmoji_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/srv/PlayEmoji_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_ba31bdc232369e170ee9fb00ac8e51639d81a657de8f6e61f9acfccc2a083d43'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 14
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 14
    header: _record_Ros2Aimdk_msgsMsgCommonRequest = _field(default_factory=lambda: Ros2Aimdk_msgsMsgCommonRequest())
    emotion_id: _py_int = 0
    mode: _py_int = 0
    priority: _py_int = 0

    def encode(self):
        writer = _Writer(14)
        _write_Ros2Aimdk_msgsSrvPlayEmoji_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 14, 14)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsSrvPlayEmoji_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 14, 14))
        value = _read_Ros2Aimdk_msgsSrvPlayEmoji_Request(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsSrvPlayEmoji_Request = Ros2Aimdk_msgsSrvPlayEmoji_Request

def _write_Ros2Aimdk_msgsSrvPlayEmoji_Request(writer, value):
    if type(value) is not Ros2Aimdk_msgsSrvPlayEmoji_Request:
        raise TypeError('exact generated record required')
    _part0 = value.header
    _write_Ros2Aimdk_msgsMsgCommonRequest(writer, _part0)
    _part1 = value.emotion_id
    writer.integer(_part1, 1, False)
    _part2 = value.mode
    writer.integer(_part2, 1, False)
    _part3 = value.priority
    writer.integer(_part3, 4, True)

def _read_Ros2Aimdk_msgsSrvPlayEmoji_Request(reader):
    value = Ros2Aimdk_msgsSrvPlayEmoji_Request()
    value.header = _read_Ros2Aimdk_msgsMsgCommonRequest(reader)
    value.emotion_id = reader.integer(1, False)
    value.mode = reader.integer(1, False)
    value.priority = reader.integer(4, True)
    return value

@_dataclass
class Ros2Aimdk_msgsSrvPlayEmoji_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/srv/PlayEmoji_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_5e5ba0082cf9bf5d9b9c7eae034efd76bd44503306bb4994e06862a802cfb6b9'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 29
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 285
    header: _record_Ros2Aimdk_msgsMsgCommonResponse = _field(default_factory=lambda: Ros2Aimdk_msgsMsgCommonResponse())
    success: _py_bool = False
    message: _py_str = ''

    def encode(self):
        writer = _Writer(285)
        _write_Ros2Aimdk_msgsSrvPlayEmoji_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 29, 285)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsSrvPlayEmoji_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 29, 285))
        value = _read_Ros2Aimdk_msgsSrvPlayEmoji_Response(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsSrvPlayEmoji_Response = Ros2Aimdk_msgsSrvPlayEmoji_Response

def _write_Ros2Aimdk_msgsSrvPlayEmoji_Response(writer, value):
    if type(value) is not Ros2Aimdk_msgsSrvPlayEmoji_Response:
        raise TypeError('exact generated record required')
    _part0 = value.header
    _write_Ros2Aimdk_msgsMsgCommonResponse(writer, _part0)
    _part1 = value.success
    if type(_part1) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part1), 1)
    _part2 = value.message
    _write_text(writer, _part2, 128)

def _read_Ros2Aimdk_msgsSrvPlayEmoji_Response(reader):
    value = Ros2Aimdk_msgsSrvPlayEmoji_Response()
    value.header = _read_Ros2Aimdk_msgsMsgCommonResponse(reader)
    value.success = _read_bool(reader)
    value.message = _read_text(reader, 128)
    return value

@_dataclass
class Ros2Aimdk_msgsSrvPlayTts_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/srv/PlayTts_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_33f223039d43b52c64efebade4db48eb23c734f57094ed9f354a624927326989'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 26
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 410
    header: _record_Ros2Aimdk_msgsMsgCommonRequest = _field(default_factory=lambda: Ros2Aimdk_msgsMsgCommonRequest())
    tts_req: _record_Ros2Aimdk_msgsMsgPlayTtsRequest = _field(default_factory=lambda: Ros2Aimdk_msgsMsgPlayTtsRequest())

    def encode(self):
        writer = _Writer(410)
        _write_Ros2Aimdk_msgsSrvPlayTts_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 26, 410)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsSrvPlayTts_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 26, 410))
        value = _read_Ros2Aimdk_msgsSrvPlayTts_Request(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsSrvPlayTts_Request = Ros2Aimdk_msgsSrvPlayTts_Request

def _write_Ros2Aimdk_msgsSrvPlayTts_Request(writer, value):
    if type(value) is not Ros2Aimdk_msgsSrvPlayTts_Request:
        raise TypeError('exact generated record required')
    _part0 = value.header
    _write_Ros2Aimdk_msgsMsgCommonRequest(writer, _part0)
    _part1 = value.tts_req
    _write_Ros2Aimdk_msgsMsgPlayTtsRequest(writer, _part1)

def _read_Ros2Aimdk_msgsSrvPlayTts_Request(reader):
    value = Ros2Aimdk_msgsSrvPlayTts_Request()
    value.header = _read_Ros2Aimdk_msgsMsgCommonRequest(reader)
    value.tts_req = _read_Ros2Aimdk_msgsMsgPlayTtsRequest(reader)
    return value

@_dataclass
class Ros2Aimdk_msgsSrvPlayTts_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/srv/PlayTts_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_80d6f75ec35cccce215b1ab1321eabeae2e6668eb29a7249c8f8fad77e59bcc6'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 50
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 690
    header: _record_Ros2Aimdk_msgsMsgCommonResponse = _field(default_factory=lambda: Ros2Aimdk_msgsMsgCommonResponse())
    tts_resp: _record_Ros2Aimdk_msgsMsgPlayTtsResponse = _field(default_factory=lambda: Ros2Aimdk_msgsMsgPlayTtsResponse())

    def encode(self):
        writer = _Writer(690)
        _write_Ros2Aimdk_msgsSrvPlayTts_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 50, 690)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsSrvPlayTts_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 50, 690))
        value = _read_Ros2Aimdk_msgsSrvPlayTts_Response(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsSrvPlayTts_Response = Ros2Aimdk_msgsSrvPlayTts_Response

def _write_Ros2Aimdk_msgsSrvPlayTts_Response(writer, value):
    if type(value) is not Ros2Aimdk_msgsSrvPlayTts_Response:
        raise TypeError('exact generated record required')
    _part0 = value.header
    _write_Ros2Aimdk_msgsMsgCommonResponse(writer, _part0)
    _part1 = value.tts_resp
    _write_Ros2Aimdk_msgsMsgPlayTtsResponse(writer, _part1)

def _read_Ros2Aimdk_msgsSrvPlayTts_Response(reader):
    value = Ros2Aimdk_msgsSrvPlayTts_Response()
    value.header = _read_Ros2Aimdk_msgsMsgCommonResponse(reader)
    value.tts_resp = _read_Ros2Aimdk_msgsMsgPlayTtsResponse(reader)
    return value

@_dataclass
class Ros2Aimdk_msgsSrvPlayVideo_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/srv/PlayVideo_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_a42348160bfed67c90f9ddc96beaca7b37e6099ba67c8c025d6ac0f95e6bc878'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 17
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 145
    header: _record_Ros2Aimdk_msgsMsgCommonRequest = _field(default_factory=lambda: Ros2Aimdk_msgsMsgCommonRequest())
    video_path: _py_str = ''
    mode: _py_int = 0
    priority: _py_int = 0

    def encode(self):
        writer = _Writer(145)
        _write_Ros2Aimdk_msgsSrvPlayVideo_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 17, 145)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsSrvPlayVideo_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 17, 145))
        value = _read_Ros2Aimdk_msgsSrvPlayVideo_Request(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsSrvPlayVideo_Request = Ros2Aimdk_msgsSrvPlayVideo_Request

def _write_Ros2Aimdk_msgsSrvPlayVideo_Request(writer, value):
    if type(value) is not Ros2Aimdk_msgsSrvPlayVideo_Request:
        raise TypeError('exact generated record required')
    _part0 = value.header
    _write_Ros2Aimdk_msgsMsgCommonRequest(writer, _part0)
    _part1 = value.video_path
    _write_text(writer, _part1, 128)
    _part2 = value.mode
    writer.integer(_part2, 1, False)
    _part3 = value.priority
    writer.integer(_part3, 4, True)

def _read_Ros2Aimdk_msgsSrvPlayVideo_Request(reader):
    value = Ros2Aimdk_msgsSrvPlayVideo_Request()
    value.header = _read_Ros2Aimdk_msgsMsgCommonRequest(reader)
    value.video_path = _read_text(reader, 128)
    value.mode = reader.integer(1, False)
    value.priority = reader.integer(4, True)
    return value

@_dataclass
class Ros2Aimdk_msgsSrvPlayVideo_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/srv/PlayVideo_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_f714873f193ca3ee0d02c822dbc3262033a2fe7913748ba177136a24d5b7f627'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 29
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 285
    header: _record_Ros2Aimdk_msgsMsgCommonResponse = _field(default_factory=lambda: Ros2Aimdk_msgsMsgCommonResponse())
    success: _py_bool = False
    message: _py_str = ''

    def encode(self):
        writer = _Writer(285)
        _write_Ros2Aimdk_msgsSrvPlayVideo_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 29, 285)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsSrvPlayVideo_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 29, 285))
        value = _read_Ros2Aimdk_msgsSrvPlayVideo_Response(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsSrvPlayVideo_Response = Ros2Aimdk_msgsSrvPlayVideo_Response

def _write_Ros2Aimdk_msgsSrvPlayVideo_Response(writer, value):
    if type(value) is not Ros2Aimdk_msgsSrvPlayVideo_Response:
        raise TypeError('exact generated record required')
    _part0 = value.header
    _write_Ros2Aimdk_msgsMsgCommonResponse(writer, _part0)
    _part1 = value.success
    if type(_part1) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part1), 1)
    _part2 = value.message
    _write_text(writer, _part2, 128)

def _read_Ros2Aimdk_msgsSrvPlayVideo_Response(reader):
    value = Ros2Aimdk_msgsSrvPlayVideo_Response()
    value.header = _read_Ros2Aimdk_msgsMsgCommonResponse(reader)
    value.success = _read_bool(reader)
    value.message = _read_text(reader, 128)
    return value

@_dataclass
class Ros2Aimdk_msgsSrvPlayVideoGroup_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/srv/PlayVideoGroup_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_3c55649a41758dca0eeb22b090ae63a38bb4720d6b55342ac5204ec1a3696473'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 17
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 2129
    header: _record_Ros2Aimdk_msgsMsgCommonRequest = _field(default_factory=lambda: Ros2Aimdk_msgsMsgCommonRequest())
    video_path_list: _py_list[_py_str] = _field(default_factory=lambda: [])
    mode: _py_int = 0
    priority: _py_int = 0

    def encode(self):
        writer = _Writer(2129)
        _write_Ros2Aimdk_msgsSrvPlayVideoGroup_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 17, 2129)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsSrvPlayVideoGroup_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 17, 2129))
        value = _read_Ros2Aimdk_msgsSrvPlayVideoGroup_Request(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsSrvPlayVideoGroup_Request = Ros2Aimdk_msgsSrvPlayVideoGroup_Request

def _write_Ros2Aimdk_msgsSrvPlayVideoGroup_Request(writer, value):
    if type(value) is not Ros2Aimdk_msgsSrvPlayVideoGroup_Request:
        raise TypeError('exact generated record required')
    _part0 = value.header
    _write_Ros2Aimdk_msgsMsgCommonRequest(writer, _part0)
    _part1 = value.video_path_list
    if type(_part1) not in (list, tuple):
        raise TypeError('array value required')
    _count1 = len(_part1)
    if _count1 > 16:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        _write_text(writer, _element, 128)
    _part2 = value.mode
    writer.integer(_part2, 1, False)
    _part3 = value.priority
    writer.integer(_part3, 4, True)

def _read_Ros2Aimdk_msgsSrvPlayVideoGroup_Request(reader):
    value = Ros2Aimdk_msgsSrvPlayVideoGroup_Request()
    value.header = _read_Ros2Aimdk_msgsMsgCommonRequest(reader)
    value.video_path_list = [_read_text(reader, 128) for _ in range(_read_count(reader, 16, 4))]
    value.mode = reader.integer(1, False)
    value.priority = reader.integer(4, True)
    return value

@_dataclass
class Ros2Aimdk_msgsSrvPlayVideoGroup_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/srv/PlayVideoGroup_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_eb57edaed02ddee9424ba10f7c783e9e6147fa0990043059f2b4102d0d0a5a19'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 29
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 285
    header: _record_Ros2Aimdk_msgsMsgCommonResponse = _field(default_factory=lambda: Ros2Aimdk_msgsMsgCommonResponse())
    success: _py_bool = False
    message: _py_str = ''

    def encode(self):
        writer = _Writer(285)
        _write_Ros2Aimdk_msgsSrvPlayVideoGroup_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 29, 285)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsSrvPlayVideoGroup_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 29, 285))
        value = _read_Ros2Aimdk_msgsSrvPlayVideoGroup_Response(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsSrvPlayVideoGroup_Response = Ros2Aimdk_msgsSrvPlayVideoGroup_Response

def _write_Ros2Aimdk_msgsSrvPlayVideoGroup_Response(writer, value):
    if type(value) is not Ros2Aimdk_msgsSrvPlayVideoGroup_Response:
        raise TypeError('exact generated record required')
    _part0 = value.header
    _write_Ros2Aimdk_msgsMsgCommonResponse(writer, _part0)
    _part1 = value.success
    if type(_part1) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part1), 1)
    _part2 = value.message
    _write_text(writer, _part2, 128)

def _read_Ros2Aimdk_msgsSrvPlayVideoGroup_Response(reader):
    value = Ros2Aimdk_msgsSrvPlayVideoGroup_Response()
    value.header = _read_Ros2Aimdk_msgsMsgCommonResponse(reader)
    value.success = _read_bool(reader)
    value.message = _read_text(reader, 128)
    return value

@_dataclass
class Ros2Aimdk_msgsSrvRequestAudioFocus_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/srv/RequestAudioFocus_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_b6354e6109618f66c9c52fc67351c687e60ad1bf5f4b77a8e326755deca7ae8a'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 20
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 148
    request: _record_Ros2Aimdk_msgsMsgCommonRequest = _field(default_factory=lambda: Ros2Aimdk_msgsMsgCommonRequest())
    focus_requester: _record_Ros2Aimdk_msgsMsgFocusRequester = _field(default_factory=lambda: Ros2Aimdk_msgsMsgFocusRequester())

    def encode(self):
        writer = _Writer(148)
        _write_Ros2Aimdk_msgsSrvRequestAudioFocus_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 20, 148)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsSrvRequestAudioFocus_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 20, 148))
        value = _read_Ros2Aimdk_msgsSrvRequestAudioFocus_Request(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsSrvRequestAudioFocus_Request = Ros2Aimdk_msgsSrvRequestAudioFocus_Request

def _write_Ros2Aimdk_msgsSrvRequestAudioFocus_Request(writer, value):
    if type(value) is not Ros2Aimdk_msgsSrvRequestAudioFocus_Request:
        raise TypeError('exact generated record required')
    _part0 = value.request
    _write_Ros2Aimdk_msgsMsgCommonRequest(writer, _part0)
    _part1 = value.focus_requester
    _write_Ros2Aimdk_msgsMsgFocusRequester(writer, _part1)

def _read_Ros2Aimdk_msgsSrvRequestAudioFocus_Request(reader):
    value = Ros2Aimdk_msgsSrvRequestAudioFocus_Request()
    value.request = _read_Ros2Aimdk_msgsMsgCommonRequest(reader)
    value.focus_requester = _read_Ros2Aimdk_msgsMsgFocusRequester(reader)
    return value

@_dataclass
class Ros2Aimdk_msgsSrvRequestAudioFocus_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/srv/RequestAudioFocus_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_41f9d4bcd2021b66e092897b1c587be4359d28b9bac69ea4058d429c5cf88180'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 29
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 285
    reponse: _record_Ros2Aimdk_msgsMsgCommonResponse = _field(default_factory=lambda: Ros2Aimdk_msgsMsgCommonResponse())
    focus_response: _record_Ros2Aimdk_msgsMsgFocusResponse = _field(default_factory=lambda: Ros2Aimdk_msgsMsgFocusResponse())

    def encode(self):
        writer = _Writer(285)
        _write_Ros2Aimdk_msgsSrvRequestAudioFocus_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 29, 285)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsSrvRequestAudioFocus_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 29, 285))
        value = _read_Ros2Aimdk_msgsSrvRequestAudioFocus_Response(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsSrvRequestAudioFocus_Response = Ros2Aimdk_msgsSrvRequestAudioFocus_Response

def _write_Ros2Aimdk_msgsSrvRequestAudioFocus_Response(writer, value):
    if type(value) is not Ros2Aimdk_msgsSrvRequestAudioFocus_Response:
        raise TypeError('exact generated record required')
    _part0 = value.reponse
    _write_Ros2Aimdk_msgsMsgCommonResponse(writer, _part0)
    _part1 = value.focus_response
    _write_Ros2Aimdk_msgsMsgFocusResponse(writer, _part1)

def _read_Ros2Aimdk_msgsSrvRequestAudioFocus_Response(reader):
    value = Ros2Aimdk_msgsSrvRequestAudioFocus_Response()
    value.reponse = _read_Ros2Aimdk_msgsMsgCommonResponse(reader)
    value.focus_response = _read_Ros2Aimdk_msgsMsgFocusResponse(reader)
    return value

@_dataclass
class Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/srv/SetAgentPropertiesRequest_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_b05248c104afdd5331b9afb7a029923b03d3a984ba53633b0e42a70395f96fb8'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 544
    header: _record_Ros2Aimdk_msgsMsgCommonRequest = _field(default_factory=lambda: Ros2Aimdk_msgsMsgCommonRequest())
    contents: _record_Ros2Aimdk_msgsMsgAgentProperties = _field(default_factory=lambda: Ros2Aimdk_msgsMsgAgentProperties())

    def encode(self):
        writer = _Writer(544)
        _write_Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 544)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 12, 544))
        value = _read_Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request = Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request

def _write_Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request(writer, value):
    if type(value) is not Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request:
        raise TypeError('exact generated record required')
    _part0 = value.header
    _write_Ros2Aimdk_msgsMsgCommonRequest(writer, _part0)
    _part1 = value.contents
    _write_Ros2Aimdk_msgsMsgAgentProperties(writer, _part1)

def _read_Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request(reader):
    value = Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request()
    value.header = _read_Ros2Aimdk_msgsMsgCommonRequest(reader)
    value.contents = _read_Ros2Aimdk_msgsMsgAgentProperties(reader)
    return value

@_dataclass
class Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/srv/SetAgentPropertiesRequest_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_193eace6181c5da860dd9fa0d274415bdcb2246f7054acece8ae925414b0a81b'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 24
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 152
    header: _record_Ros2Aimdk_msgsMsgCommonResponse = _field(default_factory=lambda: Ros2Aimdk_msgsMsgCommonResponse())

    def encode(self):
        writer = _Writer(152)
        _write_Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 24, 152)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 24, 152))
        value = _read_Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response = Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response

def _write_Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response(writer, value):
    if type(value) is not Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response:
        raise TypeError('exact generated record required')
    _part0 = value.header
    _write_Ros2Aimdk_msgsMsgCommonResponse(writer, _part0)

def _read_Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response(reader):
    value = Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response()
    value.header = _read_Ros2Aimdk_msgsMsgCommonResponse(reader)
    return value

@_dataclass
class Ros2Aimdk_msgsSrvSetMcAction_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/srv/SetMcAction_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_ba4bc79d2f30a969feb655cc441955119aee8c5d0dc56be32639c9c3e682e246'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 20
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 276
    header: _record_Ros2Aimdk_msgsMsgRequestHeader = _field(default_factory=lambda: Ros2Aimdk_msgsMsgRequestHeader())
    source: _py_str = ''
    command: _record_Ros2Aimdk_msgsMsgMcActionCommand = _field(default_factory=lambda: Ros2Aimdk_msgsMsgMcActionCommand())

    def encode(self):
        writer = _Writer(276)
        _write_Ros2Aimdk_msgsSrvSetMcAction_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 20, 276)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsSrvSetMcAction_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 20, 276))
        value = _read_Ros2Aimdk_msgsSrvSetMcAction_Request(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsSrvSetMcAction_Request = Ros2Aimdk_msgsSrvSetMcAction_Request

def _write_Ros2Aimdk_msgsSrvSetMcAction_Request(writer, value):
    if type(value) is not Ros2Aimdk_msgsSrvSetMcAction_Request:
        raise TypeError('exact generated record required')
    _part0 = value.header
    _write_Ros2Aimdk_msgsMsgRequestHeader(writer, _part0)
    _part1 = value.source
    _write_text(writer, _part1, 128)
    _part2 = value.command
    _write_Ros2Aimdk_msgsMsgMcActionCommand(writer, _part2)

def _read_Ros2Aimdk_msgsSrvSetMcAction_Request(reader):
    value = Ros2Aimdk_msgsSrvSetMcAction_Request()
    value.header = _read_Ros2Aimdk_msgsMsgRequestHeader(reader)
    value.source = _read_text(reader, 128)
    value.command = _read_Ros2Aimdk_msgsMsgMcActionCommand(reader)
    return value

@_dataclass
class Ros2Aimdk_msgsSrvSetMcAction_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/srv/SetMcAction_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_64c336314ea7d3635494d1e3f9da9b23442653033e3ddfb0936440520141d24f'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 24
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 152
    response: _record_Ros2Aimdk_msgsMsgCommonResponse = _field(default_factory=lambda: Ros2Aimdk_msgsMsgCommonResponse())

    def encode(self):
        writer = _Writer(152)
        _write_Ros2Aimdk_msgsSrvSetMcAction_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 24, 152)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsSrvSetMcAction_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 24, 152))
        value = _read_Ros2Aimdk_msgsSrvSetMcAction_Response(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsSrvSetMcAction_Response = Ros2Aimdk_msgsSrvSetMcAction_Response

def _write_Ros2Aimdk_msgsSrvSetMcAction_Response(writer, value):
    if type(value) is not Ros2Aimdk_msgsSrvSetMcAction_Response:
        raise TypeError('exact generated record required')
    _part0 = value.response
    _write_Ros2Aimdk_msgsMsgCommonResponse(writer, _part0)

def _read_Ros2Aimdk_msgsSrvSetMcAction_Response(reader):
    value = Ros2Aimdk_msgsSrvSetMcAction_Response()
    value.response = _read_Ros2Aimdk_msgsMsgCommonResponse(reader)
    return value

@_dataclass
class Ros2Aimdk_msgsSrvSetMcInputSource_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/srv/SetMcInputSource_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_853ae368291aa7e14c665d3d47caad66ba626c086ad759180c31223a9785b021'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 24
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 152
    request: _record_Ros2Aimdk_msgsMsgCommonRequest = _field(default_factory=lambda: Ros2Aimdk_msgsMsgCommonRequest())
    action: _record_Ros2Aimdk_msgsMsgMcInputAction = _field(default_factory=lambda: Ros2Aimdk_msgsMsgMcInputAction())
    input_source: _record_Ros2Aimdk_msgsMsgMcInputSource = _field(default_factory=lambda: Ros2Aimdk_msgsMsgMcInputSource())

    def encode(self):
        writer = _Writer(152)
        _write_Ros2Aimdk_msgsSrvSetMcInputSource_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 24, 152)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsSrvSetMcInputSource_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 24, 152))
        value = _read_Ros2Aimdk_msgsSrvSetMcInputSource_Request(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsSrvSetMcInputSource_Request = Ros2Aimdk_msgsSrvSetMcInputSource_Request

def _write_Ros2Aimdk_msgsSrvSetMcInputSource_Request(writer, value):
    if type(value) is not Ros2Aimdk_msgsSrvSetMcInputSource_Request:
        raise TypeError('exact generated record required')
    _part0 = value.request
    _write_Ros2Aimdk_msgsMsgCommonRequest(writer, _part0)
    _part1 = value.action
    _write_Ros2Aimdk_msgsMsgMcInputAction(writer, _part1)
    _part2 = value.input_source
    _write_Ros2Aimdk_msgsMsgMcInputSource(writer, _part2)

def _read_Ros2Aimdk_msgsSrvSetMcInputSource_Request(reader):
    value = Ros2Aimdk_msgsSrvSetMcInputSource_Request()
    value.request = _read_Ros2Aimdk_msgsMsgCommonRequest(reader)
    value.action = _read_Ros2Aimdk_msgsMsgMcInputAction(reader)
    value.input_source = _read_Ros2Aimdk_msgsMsgMcInputSource(reader)
    return value

@_dataclass
class Ros2Aimdk_msgsSrvSetMcInputSource_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/srv/SetMcInputSource_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_0c0764d24b86f57f3c2f1a59966a787113cf9411cf89f40d29a7708bf03650cb'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 28
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 28
    response: _record_Ros2Aimdk_msgsMsgCommonTaskResponse = _field(default_factory=lambda: Ros2Aimdk_msgsMsgCommonTaskResponse())

    def encode(self):
        writer = _Writer(28)
        _write_Ros2Aimdk_msgsSrvSetMcInputSource_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 28, 28)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsSrvSetMcInputSource_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 28, 28))
        value = _read_Ros2Aimdk_msgsSrvSetMcInputSource_Response(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsSrvSetMcInputSource_Response = Ros2Aimdk_msgsSrvSetMcInputSource_Response

def _write_Ros2Aimdk_msgsSrvSetMcInputSource_Response(writer, value):
    if type(value) is not Ros2Aimdk_msgsSrvSetMcInputSource_Response:
        raise TypeError('exact generated record required')
    _part0 = value.response
    _write_Ros2Aimdk_msgsMsgCommonTaskResponse(writer, _part0)

def _read_Ros2Aimdk_msgsSrvSetMcInputSource_Response(reader):
    value = Ros2Aimdk_msgsSrvSetMcInputSource_Response()
    value.response = _read_Ros2Aimdk_msgsMsgCommonTaskResponse(reader)
    return value

@_dataclass
class Ros2Aimdk_msgsSrvSetMcPresetMotion_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/srv/SetMcPresetMotion_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_d16880d0ae7ae0801056a3e9632a8a272813d0e206420199c9463987586b2547'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 29
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 157
    header: _record_Ros2Aimdk_msgsMsgRequestHeader = _field(default_factory=lambda: Ros2Aimdk_msgsMsgRequestHeader())
    area: _record_Ros2Aimdk_msgsMsgMcControlArea = _field(default_factory=lambda: Ros2Aimdk_msgsMsgMcControlArea())
    motion: _record_Ros2Aimdk_msgsMsgMcPresetMotion = _field(default_factory=lambda: Ros2Aimdk_msgsMsgMcPresetMotion())
    interrupt: _py_bool = False
    ani_path: _py_str = ''
    play_timestamp: _py_int = 0

    def encode(self):
        writer = _Writer(157)
        _write_Ros2Aimdk_msgsSrvSetMcPresetMotion_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 29, 157)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsSrvSetMcPresetMotion_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 29, 157))
        value = _read_Ros2Aimdk_msgsSrvSetMcPresetMotion_Request(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsSrvSetMcPresetMotion_Request = Ros2Aimdk_msgsSrvSetMcPresetMotion_Request

def _write_Ros2Aimdk_msgsSrvSetMcPresetMotion_Request(writer, value):
    if type(value) is not Ros2Aimdk_msgsSrvSetMcPresetMotion_Request:
        raise TypeError('exact generated record required')
    _part0 = value.header
    _write_Ros2Aimdk_msgsMsgRequestHeader(writer, _part0)
    _part1 = value.area
    _write_Ros2Aimdk_msgsMsgMcControlArea(writer, _part1)
    _part2 = value.motion
    _write_Ros2Aimdk_msgsMsgMcPresetMotion(writer, _part2)
    _part3 = value.interrupt
    if type(_part3) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part3), 1)
    _part4 = value.ani_path
    _write_text(writer, _part4, 128)
    _part5 = value.play_timestamp
    writer.integer(_part5, 8, False)

def _read_Ros2Aimdk_msgsSrvSetMcPresetMotion_Request(reader):
    value = Ros2Aimdk_msgsSrvSetMcPresetMotion_Request()
    value.header = _read_Ros2Aimdk_msgsMsgRequestHeader(reader)
    value.area = _read_Ros2Aimdk_msgsMsgMcControlArea(reader)
    value.motion = _read_Ros2Aimdk_msgsMsgMcPresetMotion(reader)
    value.interrupt = _read_bool(reader)
    value.ani_path = _read_text(reader, 128)
    value.play_timestamp = reader.integer(8, False)
    return value

@_dataclass
class Ros2Aimdk_msgsSrvSetMcPresetMotion_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/srv/SetMcPresetMotion_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_9534060f44b6d36c7f0c585e7ce1f1e8b06a2561a2161a29fe6d0e4d22c77e85'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 28
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 28
    response: _record_Ros2Aimdk_msgsMsgCommonTaskResponse = _field(default_factory=lambda: Ros2Aimdk_msgsMsgCommonTaskResponse())

    def encode(self):
        writer = _Writer(28)
        _write_Ros2Aimdk_msgsSrvSetMcPresetMotion_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 28, 28)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsSrvSetMcPresetMotion_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 28, 28))
        value = _read_Ros2Aimdk_msgsSrvSetMcPresetMotion_Response(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsSrvSetMcPresetMotion_Response = Ros2Aimdk_msgsSrvSetMcPresetMotion_Response

def _write_Ros2Aimdk_msgsSrvSetMcPresetMotion_Response(writer, value):
    if type(value) is not Ros2Aimdk_msgsSrvSetMcPresetMotion_Response:
        raise TypeError('exact generated record required')
    _part0 = value.response
    _write_Ros2Aimdk_msgsMsgCommonTaskResponse(writer, _part0)

def _read_Ros2Aimdk_msgsSrvSetMcPresetMotion_Response(reader):
    value = Ros2Aimdk_msgsSrvSetMcPresetMotion_Response()
    value.response = _read_Ros2Aimdk_msgsMsgCommonTaskResponse(reader)
    return value

@_dataclass
class Ros2Aimdk_msgsSrvSetMicSourceRequest_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/srv/SetMicSourceRequest_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_01f1bcb54c816c25f1a88eb4392e8bedc4943d39a5b09974d7859c20ad1ca5e5'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 12
    header: _record_Ros2Aimdk_msgsMsgCommonRequest = _field(default_factory=lambda: Ros2Aimdk_msgsMsgCommonRequest())
    mic_source: _py_int = 0

    def encode(self):
        writer = _Writer(12)
        _write_Ros2Aimdk_msgsSrvSetMicSourceRequest_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 12)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsSrvSetMicSourceRequest_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 12, 12))
        value = _read_Ros2Aimdk_msgsSrvSetMicSourceRequest_Request(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsSrvSetMicSourceRequest_Request = Ros2Aimdk_msgsSrvSetMicSourceRequest_Request

def _write_Ros2Aimdk_msgsSrvSetMicSourceRequest_Request(writer, value):
    if type(value) is not Ros2Aimdk_msgsSrvSetMicSourceRequest_Request:
        raise TypeError('exact generated record required')
    _part0 = value.header
    _write_Ros2Aimdk_msgsMsgCommonRequest(writer, _part0)
    _part1 = value.mic_source
    writer.integer(_part1, 4, False)

def _read_Ros2Aimdk_msgsSrvSetMicSourceRequest_Request(reader):
    value = Ros2Aimdk_msgsSrvSetMicSourceRequest_Request()
    value.header = _read_Ros2Aimdk_msgsMsgCommonRequest(reader)
    value.mic_source = reader.integer(4, False)
    return value

@_dataclass
class Ros2Aimdk_msgsSrvSetMicSourceRequest_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/srv/SetMicSourceRequest_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_ee6caccf202dae100928dacc71303c536144d76458cf7c9b4facc6b88405ba02'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 24
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 152
    header: _record_Ros2Aimdk_msgsMsgCommonResponse = _field(default_factory=lambda: Ros2Aimdk_msgsMsgCommonResponse())

    def encode(self):
        writer = _Writer(152)
        _write_Ros2Aimdk_msgsSrvSetMicSourceRequest_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 24, 152)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsSrvSetMicSourceRequest_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 24, 152))
        value = _read_Ros2Aimdk_msgsSrvSetMicSourceRequest_Response(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsSrvSetMicSourceRequest_Response = Ros2Aimdk_msgsSrvSetMicSourceRequest_Response

def _write_Ros2Aimdk_msgsSrvSetMicSourceRequest_Response(writer, value):
    if type(value) is not Ros2Aimdk_msgsSrvSetMicSourceRequest_Response:
        raise TypeError('exact generated record required')
    _part0 = value.header
    _write_Ros2Aimdk_msgsMsgCommonResponse(writer, _part0)

def _read_Ros2Aimdk_msgsSrvSetMicSourceRequest_Response(reader):
    value = Ros2Aimdk_msgsSrvSetMicSourceRequest_Response()
    value.header = _read_Ros2Aimdk_msgsMsgCommonResponse(reader)
    return value

@_dataclass
class Ros2Aimdk_msgsSrvSetMute_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/srv/SetMute_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_a37f6b638f226a9d150315baa5b11e6994422ba8f58541ac7b04df11e5c21fe3'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 9
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 9
    request: _record_Ros2Aimdk_msgsMsgCommonRequest = _field(default_factory=lambda: Ros2Aimdk_msgsMsgCommonRequest())
    is_mute: _py_bool = False

    def encode(self):
        writer = _Writer(9)
        _write_Ros2Aimdk_msgsSrvSetMute_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 9, 9)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsSrvSetMute_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 9, 9))
        value = _read_Ros2Aimdk_msgsSrvSetMute_Request(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsSrvSetMute_Request = Ros2Aimdk_msgsSrvSetMute_Request

def _write_Ros2Aimdk_msgsSrvSetMute_Request(writer, value):
    if type(value) is not Ros2Aimdk_msgsSrvSetMute_Request:
        raise TypeError('exact generated record required')
    _part0 = value.request
    _write_Ros2Aimdk_msgsMsgCommonRequest(writer, _part0)
    _part1 = value.is_mute
    if type(_part1) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part1), 1)

def _read_Ros2Aimdk_msgsSrvSetMute_Request(reader):
    value = Ros2Aimdk_msgsSrvSetMute_Request()
    value.request = _read_Ros2Aimdk_msgsMsgCommonRequest(reader)
    value.is_mute = _read_bool(reader)
    return value

@_dataclass
class Ros2Aimdk_msgsSrvSetMute_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/srv/SetMute_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_0ba7d8046b7a0d23deb0b4cdb2ba5d144543a68a2468d657cc0b29f60efdca50'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 25
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 153
    reponse: _record_Ros2Aimdk_msgsMsgCommonResponse = _field(default_factory=lambda: Ros2Aimdk_msgsMsgCommonResponse())
    is_mute: _py_bool = False

    def encode(self):
        writer = _Writer(153)
        _write_Ros2Aimdk_msgsSrvSetMute_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 25, 153)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsSrvSetMute_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 25, 153))
        value = _read_Ros2Aimdk_msgsSrvSetMute_Response(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsSrvSetMute_Response = Ros2Aimdk_msgsSrvSetMute_Response

def _write_Ros2Aimdk_msgsSrvSetMute_Response(writer, value):
    if type(value) is not Ros2Aimdk_msgsSrvSetMute_Response:
        raise TypeError('exact generated record required')
    _part0 = value.reponse
    _write_Ros2Aimdk_msgsMsgCommonResponse(writer, _part0)
    _part1 = value.is_mute
    if type(_part1) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part1), 1)

def _read_Ros2Aimdk_msgsSrvSetMute_Response(reader):
    value = Ros2Aimdk_msgsSrvSetMute_Response()
    value.reponse = _read_Ros2Aimdk_msgsMsgCommonResponse(reader)
    value.is_mute = _read_bool(reader)
    return value

@_dataclass
class Ros2Aimdk_msgsSrvSetPmuLed_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/srv/SetPmuLed_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_015ab71547b25baf5658c13781f8e78e5f6ed19692a6a30d191d7f39c962357e'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 21
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 149
    request: _record_Ros2Aimdk_msgsMsgCommonRequest = _field(default_factory=lambda: Ros2Aimdk_msgsMsgCommonRequest())
    trace_id: _py_str = ''
    led_strip_mode: _py_int = 0
    r: _py_int = 0
    g: _py_int = 0
    b: _py_int = 0
    priority: _py_int = 0
    reset_priority: _py_bool = False

    def encode(self):
        writer = _Writer(149)
        _write_Ros2Aimdk_msgsSrvSetPmuLed_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 21, 149)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsSrvSetPmuLed_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 21, 149))
        value = _read_Ros2Aimdk_msgsSrvSetPmuLed_Request(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsSrvSetPmuLed_Request = Ros2Aimdk_msgsSrvSetPmuLed_Request

def _write_Ros2Aimdk_msgsSrvSetPmuLed_Request(writer, value):
    if type(value) is not Ros2Aimdk_msgsSrvSetPmuLed_Request:
        raise TypeError('exact generated record required')
    _part0 = value.request
    _write_Ros2Aimdk_msgsMsgCommonRequest(writer, _part0)
    _part1 = value.trace_id
    _write_text(writer, _part1, 128)
    _part2 = value.led_strip_mode
    writer.integer(_part2, 1, False)
    _part3 = value.r
    writer.integer(_part3, 1, False)
    _part4 = value.g
    writer.integer(_part4, 1, False)
    _part5 = value.b
    writer.integer(_part5, 1, False)
    _part6 = value.priority
    writer.integer(_part6, 4, True)
    _part7 = value.reset_priority
    if type(_part7) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part7), 1)

def _read_Ros2Aimdk_msgsSrvSetPmuLed_Request(reader):
    value = Ros2Aimdk_msgsSrvSetPmuLed_Request()
    value.request = _read_Ros2Aimdk_msgsMsgCommonRequest(reader)
    value.trace_id = _read_text(reader, 128)
    value.led_strip_mode = reader.integer(1, False)
    value.r = reader.integer(1, False)
    value.g = reader.integer(1, False)
    value.b = reader.integer(1, False)
    value.priority = reader.integer(4, True)
    value.reset_priority = _read_bool(reader)
    return value

@_dataclass
class Ros2Aimdk_msgsSrvSetPmuLed_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/srv/SetPmuLed_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_0408d54ce93e19d7299d79ee7797dc9b3511b3f5c37fd97a3b3d7d193cefcd28'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 18
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 18
    header: _record_Ros2Aimdk_msgsMsgResponseHeader = _field(default_factory=lambda: Ros2Aimdk_msgsMsgResponseHeader())
    status_code: _py_int = 0

    def encode(self):
        writer = _Writer(18)
        _write_Ros2Aimdk_msgsSrvSetPmuLed_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 18, 18)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsSrvSetPmuLed_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 18, 18))
        value = _read_Ros2Aimdk_msgsSrvSetPmuLed_Response(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsSrvSetPmuLed_Response = Ros2Aimdk_msgsSrvSetPmuLed_Response

def _write_Ros2Aimdk_msgsSrvSetPmuLed_Response(writer, value):
    if type(value) is not Ros2Aimdk_msgsSrvSetPmuLed_Response:
        raise TypeError('exact generated record required')
    _part0 = value.header
    _write_Ros2Aimdk_msgsMsgResponseHeader(writer, _part0)
    _part1 = value.status_code
    writer.integer(_part1, 2, False)

def _read_Ros2Aimdk_msgsSrvSetPmuLed_Response(reader):
    value = Ros2Aimdk_msgsSrvSetPmuLed_Response()
    value.header = _read_Ros2Aimdk_msgsMsgResponseHeader(reader)
    value.status_code = reader.integer(2, False)
    return value

@_dataclass
class Ros2Aimdk_msgsSrvSetVolume_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/srv/SetVolume_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_09161b7a7ae47ab702190725e42e27cd247f681702de05c4f68fa59581f85aad'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 12
    request: _record_Ros2Aimdk_msgsMsgCommonRequest = _field(default_factory=lambda: Ros2Aimdk_msgsMsgCommonRequest())
    audio_volume: _py_int = 0

    def encode(self):
        writer = _Writer(12)
        _write_Ros2Aimdk_msgsSrvSetVolume_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 12)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsSrvSetVolume_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 12, 12))
        value = _read_Ros2Aimdk_msgsSrvSetVolume_Request(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsSrvSetVolume_Request = Ros2Aimdk_msgsSrvSetVolume_Request

def _write_Ros2Aimdk_msgsSrvSetVolume_Request(writer, value):
    if type(value) is not Ros2Aimdk_msgsSrvSetVolume_Request:
        raise TypeError('exact generated record required')
    _part0 = value.request
    _write_Ros2Aimdk_msgsMsgCommonRequest(writer, _part0)
    _part1 = value.audio_volume
    writer.integer(_part1, 4, False)

def _read_Ros2Aimdk_msgsSrvSetVolume_Request(reader):
    value = Ros2Aimdk_msgsSrvSetVolume_Request()
    value.request = _read_Ros2Aimdk_msgsMsgCommonRequest(reader)
    value.audio_volume = reader.integer(4, False)
    return value

@_dataclass
class Ros2Aimdk_msgsSrvSetVolume_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'aimdk_msgs/srv/SetVolume_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_e5baf36b9fe876cfa8633c769aa7bcf085b813a7174de2bd6dd2026bc3744a1e'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 28
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 156
    reponse: _record_Ros2Aimdk_msgsMsgCommonResponse = _field(default_factory=lambda: Ros2Aimdk_msgsMsgCommonResponse())
    audio_volume: _py_int = 0

    def encode(self):
        writer = _Writer(156)
        _write_Ros2Aimdk_msgsSrvSetVolume_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 28, 156)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Aimdk_msgsSrvSetVolume_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 28, 156))
        value = _read_Ros2Aimdk_msgsSrvSetVolume_Response(reader)
        reader.end()
        return value

_record_Ros2Aimdk_msgsSrvSetVolume_Response = Ros2Aimdk_msgsSrvSetVolume_Response

def _write_Ros2Aimdk_msgsSrvSetVolume_Response(writer, value):
    if type(value) is not Ros2Aimdk_msgsSrvSetVolume_Response:
        raise TypeError('exact generated record required')
    _part0 = value.reponse
    _write_Ros2Aimdk_msgsMsgCommonResponse(writer, _part0)
    _part1 = value.audio_volume
    writer.integer(_part1, 4, False)

def _read_Ros2Aimdk_msgsSrvSetVolume_Response(reader):
    value = Ros2Aimdk_msgsSrvSetVolume_Response()
    value.reponse = _read_Ros2Aimdk_msgsMsgCommonResponse(reader)
    value.audio_volume = reader.integer(4, False)
    return value

