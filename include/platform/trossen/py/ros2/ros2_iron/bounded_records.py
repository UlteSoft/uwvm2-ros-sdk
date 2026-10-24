# @file bounded_records.py
# @brief Provide the complete trossen ros2_iron canonical value surface.
# @details The original 30 record catalog retains field order, constants, defaults and quotas.
# Borrowed values and buffers must remain stable while a conversion is in progress.
# Malformed, truncated and trailing wire values are refused through the shared wire error contract.
# No declaration grants a capability or establishes a native ROS registry identity.
# Original declarations and units are retained in share/platform/trossen/catalogs.
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
class Ros2Builtin_interfacesMsgDuration:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'builtin_interfaces/msg/Duration'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    sec: _py_int = 0
    nanosec: _py_int = 0

    def encode(self):
        writer = _Writer(8)
        _write_Ros2Builtin_interfacesMsgDuration(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 8)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Builtin_interfacesMsgDuration:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 8))
        value = _read_Ros2Builtin_interfacesMsgDuration(reader)
        reader.end()
        return value

_record_Ros2Builtin_interfacesMsgDuration = Ros2Builtin_interfacesMsgDuration

def _write_Ros2Builtin_interfacesMsgDuration(writer, value):
    if type(value) is not Ros2Builtin_interfacesMsgDuration:
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

def _read_Ros2Builtin_interfacesMsgDuration(reader):
    _start = reader.position
    value = Ros2Builtin_interfacesMsgDuration()
    value.sec = reader.integer(4, True)
    value.nanosec = reader.integer(4, False)
    if not 0 <= value.nanosec < 1000000000:
        raise ValueError('normalized subsecond field required')
    if not 8 <= reader.position - _start <= 8:
        raise ValueError('nested complete record aggregate extent')
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
    DECLARED_CONSTANTS: _ClassVar = []
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
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 140
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 140
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
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
    _start = len(writer.data)
    _part0 = value.stamp
    _write_Ros2Builtin_interfacesMsgTime(writer, _part0)
    _part1 = value.frame_id
    _write_text(writer, _part1, 128)
    if not 12 <= len(writer.data) - _start <= 140:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Std_msgsMsgHeader(reader):
    _start = reader.position
    value = Ros2Std_msgsMsgHeader()
    value.stamp = _read_Ros2Builtin_interfacesMsgTime(reader)
    value.frame_id = _read_text(reader, 128)
    if not 12 <= reader.position - _start <= 140:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Interbotix_footswitch_msgsMsgFootswitchState:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'interbotix_footswitch_msgs/msg/FootswitchState'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_aeea56b64e751aa1b141270177969582a2a36c66276565733efe2180c376842c'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 15
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 143
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 143
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros2Std_msgsMsgHeader = _field(default_factory=lambda: Ros2Std_msgsMsgHeader())
    state: _py_list[_py_bool] = _field(default_factory=lambda: [False for _ in range(3)])

    def encode(self):
        writer = _Writer(143)
        _write_Ros2Interbotix_footswitch_msgsMsgFootswitchState(writer, self)
        wire = writer.finish()
        return _wire(wire, 15, 143)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Interbotix_footswitch_msgsMsgFootswitchState:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 15, 143))
        value = _read_Ros2Interbotix_footswitch_msgsMsgFootswitchState(reader)
        reader.end()
        return value

_record_Ros2Interbotix_footswitch_msgsMsgFootswitchState = Ros2Interbotix_footswitch_msgsMsgFootswitchState

def _write_Ros2Interbotix_footswitch_msgsMsgFootswitchState(writer, value):
    if type(value) is not Ros2Interbotix_footswitch_msgsMsgFootswitchState:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros2Std_msgsMsgHeader(writer, _part0)
    _part1 = value.state
    if type(_part1) not in (list, tuple):
        raise TypeError('array value required')
    _count1 = len(_part1)
    if _count1 != 3:
        raise ValueError('fixed/sequence count bound')
    for _index in range(_count1):
        _element = _part1[_index]
        if type(_element) is not bool:
            raise TypeError('bool field required')
        writer.integer(int(_element), 1)
    if not 15 <= len(writer.data) - _start <= 143:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Interbotix_footswitch_msgsMsgFootswitchState(reader):
    _start = reader.position
    value = Ros2Interbotix_footswitch_msgsMsgFootswitchState()
    value.header = _read_Ros2Std_msgsMsgHeader(reader)
    value.state = [_read_bool(reader) for _ in range(3)]
    if not 15 <= reader.position - _start <= 143:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Interbotix_slate_msgsSrvSetLightState_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'interbotix_slate_msgs/srv/SetLightState_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_ff7ce99b264f9f71c006b31b92a9f265c87345e85a97e0cbfe1bef87faada554'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 4
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 4
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = [{'name': 'LIGHT_STATE_OFF',
      'type': 'uint32',
      'native_type': 'uint32',
      'literal': '0',
      'value': '0'},
     {'name': 'LIGHT_STATE_RED',
      'type': 'uint32',
      'native_type': 'uint32',
      'literal': '1',
      'value': '1'},
     {'name': 'LIGHT_STATE_GREEN',
      'type': 'uint32',
      'native_type': 'uint32',
      'literal': '2',
      'value': '2'},
     {'name': 'LIGHT_STATE_YELLOW',
      'type': 'uint32',
      'native_type': 'uint32',
      'literal': '3',
      'value': '3'},
     {'name': 'LIGHT_STATE_BLUE',
      'type': 'uint32',
      'native_type': 'uint32',
      'literal': '4',
      'value': '4'},
     {'name': 'LIGHT_STATE_PURPLE',
      'type': 'uint32',
      'native_type': 'uint32',
      'literal': '5',
      'value': '5'},
     {'name': 'LIGHT_STATE_CYAN',
      'type': 'uint32',
      'native_type': 'uint32',
      'literal': '6',
      'value': '6'},
     {'name': 'LIGHT_STATE_WHITE',
      'type': 'uint32',
      'native_type': 'uint32',
      'literal': '7',
      'value': '7'},
     {'name': 'LIGHT_STATE_RED_FLASH',
      'type': 'uint32',
      'native_type': 'uint32',
      'literal': '9',
      'value': '9'},
     {'name': 'LIGHT_STATE_GREEN_FLASH',
      'type': 'uint32',
      'native_type': 'uint32',
      'literal': '10',
      'value': '10'},
     {'name': 'LIGHT_STATE_YELLOW_FLASH',
      'type': 'uint32',
      'native_type': 'uint32',
      'literal': '11',
      'value': '11'},
     {'name': 'LIGHT_STATE_BLUE_FLASH',
      'type': 'uint32',
      'native_type': 'uint32',
      'literal': '12',
      'value': '12'},
     {'name': 'LIGHT_STATE_PURPLE_FLASH',
      'type': 'uint32',
      'native_type': 'uint32',
      'literal': '13',
      'value': '13'},
     {'name': 'LIGHT_STATE_CYAN_FLASH',
      'type': 'uint32',
      'native_type': 'uint32',
      'literal': '14',
      'value': '14'},
     {'name': 'LIGHT_STATE_WHITE_FLASH',
      'type': 'uint32',
      'native_type': 'uint32',
      'literal': '15',
      'value': '15'}]
    LIGHT_STATE_OFF: _ClassVar = 0
    LIGHT_STATE_RED: _ClassVar = 1
    LIGHT_STATE_GREEN: _ClassVar = 2
    LIGHT_STATE_YELLOW: _ClassVar = 3
    LIGHT_STATE_BLUE: _ClassVar = 4
    LIGHT_STATE_PURPLE: _ClassVar = 5
    LIGHT_STATE_CYAN: _ClassVar = 6
    LIGHT_STATE_WHITE: _ClassVar = 7
    LIGHT_STATE_RED_FLASH: _ClassVar = 9
    LIGHT_STATE_GREEN_FLASH: _ClassVar = 10
    LIGHT_STATE_YELLOW_FLASH: _ClassVar = 11
    LIGHT_STATE_BLUE_FLASH: _ClassVar = 12
    LIGHT_STATE_PURPLE_FLASH: _ClassVar = 13
    LIGHT_STATE_CYAN_FLASH: _ClassVar = 14
    LIGHT_STATE_WHITE_FLASH: _ClassVar = 15
    light_state: _py_int = 0

    def encode(self):
        writer = _Writer(4)
        _write_Ros2Interbotix_slate_msgsSrvSetLightState_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 4)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Interbotix_slate_msgsSrvSetLightState_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 4, 4))
        value = _read_Ros2Interbotix_slate_msgsSrvSetLightState_Request(reader)
        reader.end()
        return value

_record_Ros2Interbotix_slate_msgsSrvSetLightState_Request = Ros2Interbotix_slate_msgsSrvSetLightState_Request

def _write_Ros2Interbotix_slate_msgsSrvSetLightState_Request(writer, value):
    if type(value) is not Ros2Interbotix_slate_msgsSrvSetLightState_Request:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.light_state
    writer.integer(_part0, 4, False)
    if not 4 <= len(writer.data) - _start <= 4:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Interbotix_slate_msgsSrvSetLightState_Request(reader):
    _start = reader.position
    value = Ros2Interbotix_slate_msgsSrvSetLightState_Request()
    value.light_state = reader.integer(4, False)
    if not 4 <= reader.position - _start <= 4:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Interbotix_slate_msgsSrvSetLightState_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'interbotix_slate_msgs/srv/SetLightState_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_66b8c031625c139338db9a44150a4a1bb3373aaab6138e19170bd4d73fcb9784'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 5
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 133
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 133
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False
    message: _py_str = ''

    def encode(self):
        writer = _Writer(133)
        _write_Ros2Interbotix_slate_msgsSrvSetLightState_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 5, 133)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Interbotix_slate_msgsSrvSetLightState_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 5, 133))
        value = _read_Ros2Interbotix_slate_msgsSrvSetLightState_Response(reader)
        reader.end()
        return value

_record_Ros2Interbotix_slate_msgsSrvSetLightState_Response = Ros2Interbotix_slate_msgsSrvSetLightState_Response

def _write_Ros2Interbotix_slate_msgsSrvSetLightState_Response(writer, value):
    if type(value) is not Ros2Interbotix_slate_msgsSrvSetLightState_Response:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part0), 1)
    _part1 = value.message
    _write_text(writer, _part1, 128)
    if not 5 <= len(writer.data) - _start <= 133:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Interbotix_slate_msgsSrvSetLightState_Response(reader):
    _start = reader.position
    value = Ros2Interbotix_slate_msgsSrvSetLightState_Response()
    value.success = _read_bool(reader)
    value.message = _read_text(reader, 128)
    if not 5 <= reader.position - _start <= 133:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Interbotix_slate_msgsSrvSetString_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'interbotix_slate_msgs/srv/SetString_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_73dee49ce66919e9dbe833756a932f480d5a73370743eff8f6c18f86b9b33c45'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 132
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 132
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    data: _py_str = ''

    def encode(self):
        writer = _Writer(132)
        _write_Ros2Interbotix_slate_msgsSrvSetString_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 132)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Interbotix_slate_msgsSrvSetString_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 4, 132))
        value = _read_Ros2Interbotix_slate_msgsSrvSetString_Request(reader)
        reader.end()
        return value

_record_Ros2Interbotix_slate_msgsSrvSetString_Request = Ros2Interbotix_slate_msgsSrvSetString_Request

def _write_Ros2Interbotix_slate_msgsSrvSetString_Request(writer, value):
    if type(value) is not Ros2Interbotix_slate_msgsSrvSetString_Request:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.data
    _write_text(writer, _part0, 128)
    if not 4 <= len(writer.data) - _start <= 132:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Interbotix_slate_msgsSrvSetString_Request(reader):
    _start = reader.position
    value = Ros2Interbotix_slate_msgsSrvSetString_Request()
    value.data = _read_text(reader, 128)
    if not 4 <= reader.position - _start <= 132:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Interbotix_slate_msgsSrvSetString_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'interbotix_slate_msgs/srv/SetString_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_b25e0d761dc29daba23de652fec51f967a432fd13fe78a5ade79e7cdb00b4e33'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 5
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 133
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 133
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    success: _py_bool = False
    message: _py_str = ''

    def encode(self):
        writer = _Writer(133)
        _write_Ros2Interbotix_slate_msgsSrvSetString_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 5, 133)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Interbotix_slate_msgsSrvSetString_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 5, 133))
        value = _read_Ros2Interbotix_slate_msgsSrvSetString_Response(reader)
        reader.end()
        return value

_record_Ros2Interbotix_slate_msgsSrvSetString_Response = Ros2Interbotix_slate_msgsSrvSetString_Response

def _write_Ros2Interbotix_slate_msgsSrvSetString_Response(writer, value):
    if type(value) is not Ros2Interbotix_slate_msgsSrvSetString_Response:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.success
    if type(_part0) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part0), 1)
    _part1 = value.message
    _write_text(writer, _part1, 128)
    if not 5 <= len(writer.data) - _start <= 133:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Interbotix_slate_msgsSrvSetString_Response(reader):
    _start = reader.position
    value = Ros2Interbotix_slate_msgsSrvSetString_Response()
    value.success = _read_bool(reader)
    value.message = _read_text(reader, 128)
    if not 5 <= reader.position - _start <= 133:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Interbotix_xs_msgsMsgArmJoy:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'interbotix_xs_msgs/msg/ArmJoy'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_26c3b0f22cf87c464b8cfa99b6de6ba7bc16efe7244ab36828c98e1518d69b1f'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 12
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 12
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = [{'name': 'EE_X_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '1', 'value': '1'},
     {'name': 'EE_X_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '2', 'value': '2'},
     {'name': 'EE_Y_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '3', 'value': '3'},
     {'name': 'EE_Y_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '4', 'value': '4'},
     {'name': 'EE_Z_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '5', 'value': '5'},
     {'name': 'EE_Z_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '6', 'value': '6'},
     {'name': 'EE_ROLL_CCW', 'type': 'int8', 'native_type': 'int8', 'literal': '7', 'value': '7'},
     {'name': 'EE_ROLL_CW', 'type': 'int8', 'native_type': 'int8', 'literal': '8', 'value': '8'},
     {'name': 'EE_PITCH_UP', 'type': 'int8', 'native_type': 'int8', 'literal': '9', 'value': '9'},
     {'name': 'EE_PITCH_DOWN', 'type': 'int8', 'native_type': 'int8', 'literal': '10', 'value': '10'},
     {'name': 'WAIST_CCW', 'type': 'int8', 'native_type': 'int8', 'literal': '11', 'value': '11'},
     {'name': 'WAIST_CW', 'type': 'int8', 'native_type': 'int8', 'literal': '12', 'value': '12'},
     {'name': 'GRIPPER_RELEASE', 'type': 'int8', 'native_type': 'int8', 'literal': '13', 'value': '13'},
     {'name': 'GRIPPER_GRASP', 'type': 'int8', 'native_type': 'int8', 'literal': '14', 'value': '14'},
     {'name': 'HOME_POSE', 'type': 'int8', 'native_type': 'int8', 'literal': '15', 'value': '15'},
     {'name': 'SLEEP_POSE', 'type': 'int8', 'native_type': 'int8', 'literal': '16', 'value': '16'},
     {'name': 'SPEED_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '17', 'value': '17'},
     {'name': 'SPEED_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '18', 'value': '18'},
     {'name': 'SPEED_COARSE', 'type': 'int8', 'native_type': 'int8', 'literal': '19', 'value': '19'},
     {'name': 'SPEED_FINE', 'type': 'int8', 'native_type': 'int8', 'literal': '20', 'value': '20'},
     {'name': 'GRIPPER_PWM_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '21', 'value': '21'},
     {'name': 'GRIPPER_PWM_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '22', 'value': '22'},
     {'name': 'TORQUE_ON', 'type': 'int8', 'native_type': 'int8', 'literal': '23', 'value': '23'},
     {'name': 'TORQUE_OFF', 'type': 'int8', 'native_type': 'int8', 'literal': '24', 'value': '24'}]
    EE_X_INC: _ClassVar = 1
    EE_X_DEC: _ClassVar = 2
    EE_Y_INC: _ClassVar = 3
    EE_Y_DEC: _ClassVar = 4
    EE_Z_INC: _ClassVar = 5
    EE_Z_DEC: _ClassVar = 6
    EE_ROLL_CCW: _ClassVar = 7
    EE_ROLL_CW: _ClassVar = 8
    EE_PITCH_UP: _ClassVar = 9
    EE_PITCH_DOWN: _ClassVar = 10
    WAIST_CCW: _ClassVar = 11
    WAIST_CW: _ClassVar = 12
    GRIPPER_RELEASE: _ClassVar = 13
    GRIPPER_GRASP: _ClassVar = 14
    HOME_POSE: _ClassVar = 15
    SLEEP_POSE: _ClassVar = 16
    SPEED_INC: _ClassVar = 17
    SPEED_DEC: _ClassVar = 18
    SPEED_COARSE: _ClassVar = 19
    SPEED_FINE: _ClassVar = 20
    GRIPPER_PWM_INC: _ClassVar = 21
    GRIPPER_PWM_DEC: _ClassVar = 22
    TORQUE_ON: _ClassVar = 23
    TORQUE_OFF: _ClassVar = 24
    ee_x_cmd: _py_int = 0
    ee_y_cmd: _py_int = 0
    ee_z_cmd: _py_int = 0
    ee_roll_cmd: _py_int = 0
    ee_pitch_cmd: _py_int = 0
    waist_cmd: _py_int = 0
    gripper_cmd: _py_int = 0
    pose_cmd: _py_int = 0
    speed_cmd: _py_int = 0
    speed_toggle_cmd: _py_int = 0
    gripper_pwm_cmd: _py_int = 0
    torque_cmd: _py_int = 0

    def encode(self):
        writer = _Writer(12)
        _write_Ros2Interbotix_xs_msgsMsgArmJoy(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 12)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Interbotix_xs_msgsMsgArmJoy:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 12, 12))
        value = _read_Ros2Interbotix_xs_msgsMsgArmJoy(reader)
        reader.end()
        return value

_record_Ros2Interbotix_xs_msgsMsgArmJoy = Ros2Interbotix_xs_msgsMsgArmJoy

def _write_Ros2Interbotix_xs_msgsMsgArmJoy(writer, value):
    if type(value) is not Ros2Interbotix_xs_msgsMsgArmJoy:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.ee_x_cmd
    writer.integer(_part0, 1, True)
    _part1 = value.ee_y_cmd
    writer.integer(_part1, 1, True)
    _part2 = value.ee_z_cmd
    writer.integer(_part2, 1, True)
    _part3 = value.ee_roll_cmd
    writer.integer(_part3, 1, True)
    _part4 = value.ee_pitch_cmd
    writer.integer(_part4, 1, True)
    _part5 = value.waist_cmd
    writer.integer(_part5, 1, True)
    _part6 = value.gripper_cmd
    writer.integer(_part6, 1, True)
    _part7 = value.pose_cmd
    writer.integer(_part7, 1, True)
    _part8 = value.speed_cmd
    writer.integer(_part8, 1, True)
    _part9 = value.speed_toggle_cmd
    writer.integer(_part9, 1, True)
    _part10 = value.gripper_pwm_cmd
    writer.integer(_part10, 1, True)
    _part11 = value.torque_cmd
    writer.integer(_part11, 1, True)
    if not 12 <= len(writer.data) - _start <= 12:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Interbotix_xs_msgsMsgArmJoy(reader):
    _start = reader.position
    value = Ros2Interbotix_xs_msgsMsgArmJoy()
    value.ee_x_cmd = reader.integer(1, True)
    value.ee_y_cmd = reader.integer(1, True)
    value.ee_z_cmd = reader.integer(1, True)
    value.ee_roll_cmd = reader.integer(1, True)
    value.ee_pitch_cmd = reader.integer(1, True)
    value.waist_cmd = reader.integer(1, True)
    value.gripper_cmd = reader.integer(1, True)
    value.pose_cmd = reader.integer(1, True)
    value.speed_cmd = reader.integer(1, True)
    value.speed_toggle_cmd = reader.integer(1, True)
    value.gripper_pwm_cmd = reader.integer(1, True)
    value.torque_cmd = reader.integer(1, True)
    if not 12 <= reader.position - _start <= 12:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Interbotix_xs_msgsMsgHexJoy:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'interbotix_xs_msgs/msg/HexJoy'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_17c4cc565057e8b555ae945fdad4c8010a26dc411ad2fcc6da2edb9a1d9e9e3d'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 17
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 17
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 17
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = [{'name': 'WORLD_X_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '1', 'value': '1'},
     {'name': 'WORLD_X_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '2', 'value': '2'},
     {'name': 'WORLD_Y_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '3', 'value': '3'},
     {'name': 'WORLD_Y_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '4', 'value': '4'},
     {'name': 'WORLD_YAW_CCW', 'type': 'int8', 'native_type': 'int8', 'literal': '5', 'value': '5'},
     {'name': 'WORLD_YAW_CW', 'type': 'int8', 'native_type': 'int8', 'literal': '6', 'value': '6'},
     {'name': 'PLACE_X_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '7', 'value': '7'},
     {'name': 'PLACE_X_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '8', 'value': '8'},
     {'name': 'PLACE_Y_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '9', 'value': '9'},
     {'name': 'PLACE_Y_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '10', 'value': '10'},
     {'name': 'PLACE_Z_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '11', 'value': '11'},
     {'name': 'PLACE_Z_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '12', 'value': '12'},
     {'name': 'PLACE_ROLL_CCW', 'type': 'int8', 'native_type': 'int8', 'literal': '13', 'value': '13'},
     {'name': 'PLACE_ROLL_CW', 'type': 'int8', 'native_type': 'int8', 'literal': '14', 'value': '14'},
     {'name': 'PLACE_PITCH_UP', 'type': 'int8', 'native_type': 'int8', 'literal': '15', 'value': '15'},
     {'name': 'PLACE_PITCH_DOWN',
      'type': 'int8',
      'native_type': 'int8',
      'literal': '16',
      'value': '16'},
     {'name': 'MOVE_HEXAPOD', 'type': 'int8', 'native_type': 'int8', 'literal': '17', 'value': '17'},
     {'name': 'MOVE_LEG', 'type': 'int8', 'native_type': 'int8', 'literal': '18', 'value': '18'},
     {'name': 'HOME_POSE', 'type': 'int8', 'native_type': 'int8', 'literal': '19', 'value': '19'},
     {'name': 'SLEEP_POSE', 'type': 'int8', 'native_type': 'int8', 'literal': '20', 'value': '20'},
     {'name': 'GAIT_NEXT', 'type': 'int8', 'native_type': 'int8', 'literal': '21', 'value': '21'},
     {'name': 'GAIT_PREVIOUS', 'type': 'int8', 'native_type': 'int8', 'literal': '22', 'value': '22'},
     {'name': 'LEG_NEXT', 'type': 'int8', 'native_type': 'int8', 'literal': '23', 'value': '23'},
     {'name': 'LEG_PREVIOUS', 'type': 'int8', 'native_type': 'int8', 'literal': '24', 'value': '24'},
     {'name': 'WIDEN_STANCE', 'type': 'int8', 'native_type': 'int8', 'literal': '25', 'value': '25'},
     {'name': 'NARROW_STANCE', 'type': 'int8', 'native_type': 'int8', 'literal': '26', 'value': '26'},
     {'name': 'REBOOT_MOTORS', 'type': 'int8', 'native_type': 'int8', 'literal': '27', 'value': '27'},
     {'name': 'SET_HOME_POSE', 'type': 'int8', 'native_type': 'int8', 'literal': '28', 'value': '28'},
     {'name': 'SPEED_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '29', 'value': '29'},
     {'name': 'SPEED_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '30', 'value': '30'},
     {'name': 'SPEED_COARSE', 'type': 'int8', 'native_type': 'int8', 'literal': '31', 'value': '31'},
     {'name': 'SPEED_FINE', 'type': 'int8', 'native_type': 'int8', 'literal': '32', 'value': '32'}]
    WORLD_X_INC: _ClassVar = 1
    WORLD_X_DEC: _ClassVar = 2
    WORLD_Y_INC: _ClassVar = 3
    WORLD_Y_DEC: _ClassVar = 4
    WORLD_YAW_CCW: _ClassVar = 5
    WORLD_YAW_CW: _ClassVar = 6
    PLACE_X_INC: _ClassVar = 7
    PLACE_X_DEC: _ClassVar = 8
    PLACE_Y_INC: _ClassVar = 9
    PLACE_Y_DEC: _ClassVar = 10
    PLACE_Z_INC: _ClassVar = 11
    PLACE_Z_DEC: _ClassVar = 12
    PLACE_ROLL_CCW: _ClassVar = 13
    PLACE_ROLL_CW: _ClassVar = 14
    PLACE_PITCH_UP: _ClassVar = 15
    PLACE_PITCH_DOWN: _ClassVar = 16
    MOVE_HEXAPOD: _ClassVar = 17
    MOVE_LEG: _ClassVar = 18
    HOME_POSE: _ClassVar = 19
    SLEEP_POSE: _ClassVar = 20
    GAIT_NEXT: _ClassVar = 21
    GAIT_PREVIOUS: _ClassVar = 22
    LEG_NEXT: _ClassVar = 23
    LEG_PREVIOUS: _ClassVar = 24
    WIDEN_STANCE: _ClassVar = 25
    NARROW_STANCE: _ClassVar = 26
    REBOOT_MOTORS: _ClassVar = 27
    SET_HOME_POSE: _ClassVar = 28
    SPEED_INC: _ClassVar = 29
    SPEED_DEC: _ClassVar = 30
    SPEED_COARSE: _ClassVar = 31
    SPEED_FINE: _ClassVar = 32
    world_x_cmd: _py_int = 0
    world_y_cmd: _py_int = 0
    world_yaw_cmd: _py_int = 0
    place_x_cmd: _py_int = 0
    place_y_cmd: _py_int = 0
    place_z_cmd: _py_int = 0
    place_roll_cmd: _py_int = 0
    place_pitch_cmd: _py_int = 0
    pose_cmd: _py_int = 0
    move_type_cmd: _py_int = 0
    gait_toggle_cmd: _py_int = 0
    leg_toggle_cmd: _py_int = 0
    stance_cmd: _py_int = 0
    reboot_cmd: _py_int = 0
    set_home_pose_cmd: _py_int = 0
    speed_cmd: _py_int = 0
    speed_toggle_cmd: _py_int = 0

    def encode(self):
        writer = _Writer(17)
        _write_Ros2Interbotix_xs_msgsMsgHexJoy(writer, self)
        wire = writer.finish()
        return _wire(wire, 17, 17)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Interbotix_xs_msgsMsgHexJoy:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 17, 17))
        value = _read_Ros2Interbotix_xs_msgsMsgHexJoy(reader)
        reader.end()
        return value

_record_Ros2Interbotix_xs_msgsMsgHexJoy = Ros2Interbotix_xs_msgsMsgHexJoy

def _write_Ros2Interbotix_xs_msgsMsgHexJoy(writer, value):
    if type(value) is not Ros2Interbotix_xs_msgsMsgHexJoy:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.world_x_cmd
    writer.integer(_part0, 1, True)
    _part1 = value.world_y_cmd
    writer.integer(_part1, 1, True)
    _part2 = value.world_yaw_cmd
    writer.integer(_part2, 1, True)
    _part3 = value.place_x_cmd
    writer.integer(_part3, 1, True)
    _part4 = value.place_y_cmd
    writer.integer(_part4, 1, True)
    _part5 = value.place_z_cmd
    writer.integer(_part5, 1, True)
    _part6 = value.place_roll_cmd
    writer.integer(_part6, 1, True)
    _part7 = value.place_pitch_cmd
    writer.integer(_part7, 1, True)
    _part8 = value.pose_cmd
    writer.integer(_part8, 1, True)
    _part9 = value.move_type_cmd
    writer.integer(_part9, 1, True)
    _part10 = value.gait_toggle_cmd
    writer.integer(_part10, 1, True)
    _part11 = value.leg_toggle_cmd
    writer.integer(_part11, 1, True)
    _part12 = value.stance_cmd
    writer.integer(_part12, 1, True)
    _part13 = value.reboot_cmd
    writer.integer(_part13, 1, True)
    _part14 = value.set_home_pose_cmd
    writer.integer(_part14, 1, True)
    _part15 = value.speed_cmd
    writer.integer(_part15, 1, True)
    _part16 = value.speed_toggle_cmd
    writer.integer(_part16, 1, True)
    if not 17 <= len(writer.data) - _start <= 17:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Interbotix_xs_msgsMsgHexJoy(reader):
    _start = reader.position
    value = Ros2Interbotix_xs_msgsMsgHexJoy()
    value.world_x_cmd = reader.integer(1, True)
    value.world_y_cmd = reader.integer(1, True)
    value.world_yaw_cmd = reader.integer(1, True)
    value.place_x_cmd = reader.integer(1, True)
    value.place_y_cmd = reader.integer(1, True)
    value.place_z_cmd = reader.integer(1, True)
    value.place_roll_cmd = reader.integer(1, True)
    value.place_pitch_cmd = reader.integer(1, True)
    value.pose_cmd = reader.integer(1, True)
    value.move_type_cmd = reader.integer(1, True)
    value.gait_toggle_cmd = reader.integer(1, True)
    value.leg_toggle_cmd = reader.integer(1, True)
    value.stance_cmd = reader.integer(1, True)
    value.reboot_cmd = reader.integer(1, True)
    value.set_home_pose_cmd = reader.integer(1, True)
    value.speed_cmd = reader.integer(1, True)
    value.speed_toggle_cmd = reader.integer(1, True)
    if not 17 <= reader.position - _start <= 17:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Interbotix_xs_msgsMsgJointGroupCommand:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'interbotix_xs_msgs/msg/JointGroupCommand'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_c038aeca8eb91f06dab5c70f8ed6b181442d0405df86ab2a19c20c076fffc42a'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 392
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 392
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    name: _py_str = ''
    cmd: _py_list[_py_float] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(392)
        _write_Ros2Interbotix_xs_msgsMsgJointGroupCommand(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 392)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Interbotix_xs_msgsMsgJointGroupCommand:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 392))
        value = _read_Ros2Interbotix_xs_msgsMsgJointGroupCommand(reader)
        reader.end()
        return value

_record_Ros2Interbotix_xs_msgsMsgJointGroupCommand = Ros2Interbotix_xs_msgsMsgJointGroupCommand

def _write_Ros2Interbotix_xs_msgsMsgJointGroupCommand(writer, value):
    if type(value) is not Ros2Interbotix_xs_msgsMsgJointGroupCommand:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.name
    _write_text(writer, _part0, 128)
    _part1 = value.cmd
    if type(_part1) not in (list, tuple):
        raise TypeError('array value required')
    _count1 = len(_part1)
    if _count1 > 64:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        writer.f32(_element)
    if not 8 <= len(writer.data) - _start <= 392:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Interbotix_xs_msgsMsgJointGroupCommand(reader):
    _start = reader.position
    value = Ros2Interbotix_xs_msgsMsgJointGroupCommand()
    value.name = _read_text(reader, 128)
    value.cmd = [reader.f32() for _ in range(_read_count(reader, 64, 4))]
    if not 8 <= reader.position - _start <= 392:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Interbotix_xs_msgsMsgJointSingleCommand:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'interbotix_xs_msgs/msg/JointSingleCommand'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_6c5900103b35fd916f22997cb42cf48016f35edb4783012c1a9029486c03ac94'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 136
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 136
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    name: _py_str = ''
    cmd: _py_float = 0.0

    def encode(self):
        writer = _Writer(136)
        _write_Ros2Interbotix_xs_msgsMsgJointSingleCommand(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 136)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Interbotix_xs_msgsMsgJointSingleCommand:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 136))
        value = _read_Ros2Interbotix_xs_msgsMsgJointSingleCommand(reader)
        reader.end()
        return value

_record_Ros2Interbotix_xs_msgsMsgJointSingleCommand = Ros2Interbotix_xs_msgsMsgJointSingleCommand

def _write_Ros2Interbotix_xs_msgsMsgJointSingleCommand(writer, value):
    if type(value) is not Ros2Interbotix_xs_msgsMsgJointSingleCommand:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.name
    _write_text(writer, _part0, 128)
    _part1 = value.cmd
    writer.f32(_part1)
    if not 8 <= len(writer.data) - _start <= 136:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Interbotix_xs_msgsMsgJointSingleCommand(reader):
    _start = reader.position
    value = Ros2Interbotix_xs_msgsMsgJointSingleCommand()
    value.name = _read_text(reader, 128)
    value.cmd = reader.f32()
    if not 8 <= reader.position - _start <= 136:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Interbotix_xs_msgsMsgJointTemps:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'interbotix_xs_msgs/msg/JointTemps'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_e38f321a150c349a7bc72bbe45d004ac18cd2f147bf4cb73b1d53428a63fd2e4'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 8712
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 8712
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    names: _py_list[_py_str] = _field(default_factory=lambda: [])
    temps: _py_list[_py_int] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(8712)
        _write_Ros2Interbotix_xs_msgsMsgJointTemps(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 8712)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Interbotix_xs_msgsMsgJointTemps:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 8712))
        value = _read_Ros2Interbotix_xs_msgsMsgJointTemps(reader)
        reader.end()
        return value

_record_Ros2Interbotix_xs_msgsMsgJointTemps = Ros2Interbotix_xs_msgsMsgJointTemps

def _write_Ros2Interbotix_xs_msgsMsgJointTemps(writer, value):
    if type(value) is not Ros2Interbotix_xs_msgsMsgJointTemps:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.names
    if type(_part0) not in (list, tuple):
        raise TypeError('array value required')
    _count0 = len(_part0)
    if _count0 > 64:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count0, 4)
    for _index in range(_count0):
        _element = _part0[_index]
        _write_text(writer, _element, 128)
    _part1 = value.temps
    if type(_part1) not in (list, tuple):
        raise TypeError('array value required')
    _count1 = len(_part1)
    if _count1 > 64:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        writer.integer(_element, 4, True)
    if not 8 <= len(writer.data) - _start <= 8712:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Interbotix_xs_msgsMsgJointTemps(reader):
    _start = reader.position
    value = Ros2Interbotix_xs_msgsMsgJointTemps()
    value.names = [_read_text(reader, 128) for _ in range(_read_count(reader, 64, 4))]
    value.temps = [reader.integer(4, True) for _ in range(_read_count(reader, 64, 4))]
    if not 8 <= reader.position - _start <= 8712:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Trajectory_msgsMsgJointTrajectoryPoint:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'trajectory_msgs/msg/JointTrajectoryPoint'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_1fb219d3c64ec5983d869f0636700f9acc71296a1c104bf39a3a5dd6df7098f1'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 24
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 536
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 536
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    positions: _py_list[_py_float] = _field(default_factory=lambda: [])
    velocities: _py_list[_py_float] = _field(default_factory=lambda: [])
    accelerations: _py_list[_py_float] = _field(default_factory=lambda: [])
    effort: _py_list[_py_float] = _field(default_factory=lambda: [])
    time_from_start: _record_Ros2Builtin_interfacesMsgDuration = _field(default_factory=lambda: Ros2Builtin_interfacesMsgDuration())

    def encode(self):
        writer = _Writer(536)
        _write_Ros2Trajectory_msgsMsgJointTrajectoryPoint(writer, self)
        wire = writer.finish()
        return _wire(wire, 24, 536)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Trajectory_msgsMsgJointTrajectoryPoint:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 24, 536))
        value = _read_Ros2Trajectory_msgsMsgJointTrajectoryPoint(reader)
        reader.end()
        return value

_record_Ros2Trajectory_msgsMsgJointTrajectoryPoint = Ros2Trajectory_msgsMsgJointTrajectoryPoint

def _write_Ros2Trajectory_msgsMsgJointTrajectoryPoint(writer, value):
    if type(value) is not Ros2Trajectory_msgsMsgJointTrajectoryPoint:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.positions
    if type(_part0) not in (list, tuple):
        raise TypeError('array value required')
    _count0 = len(_part0)
    if _count0 > 16:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count0, 4)
    for _index in range(_count0):
        _element = _part0[_index]
        writer.f64(_element)
    _part1 = value.velocities
    if type(_part1) not in (list, tuple):
        raise TypeError('array value required')
    _count1 = len(_part1)
    if _count1 > 16:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        writer.f64(_element)
    _part2 = value.accelerations
    if type(_part2) not in (list, tuple):
        raise TypeError('array value required')
    _count2 = len(_part2)
    if _count2 > 16:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        writer.f64(_element)
    _part3 = value.effort
    if type(_part3) not in (list, tuple):
        raise TypeError('array value required')
    _count3 = len(_part3)
    if _count3 > 16:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count3, 4)
    for _index in range(_count3):
        _element = _part3[_index]
        writer.f64(_element)
    _part4 = value.time_from_start
    _write_Ros2Builtin_interfacesMsgDuration(writer, _part4)
    if not 24 <= len(writer.data) - _start <= 536:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Trajectory_msgsMsgJointTrajectoryPoint(reader):
    _start = reader.position
    value = Ros2Trajectory_msgsMsgJointTrajectoryPoint()
    value.positions = [reader.f64() for _ in range(_read_count(reader, 16, 8))]
    value.velocities = [reader.f64() for _ in range(_read_count(reader, 16, 8))]
    value.accelerations = [reader.f64() for _ in range(_read_count(reader, 16, 8))]
    value.effort = [reader.f64() for _ in range(_read_count(reader, 16, 8))]
    value.time_from_start = _read_Ros2Builtin_interfacesMsgDuration(reader)
    if not 24 <= reader.position - _start <= 536:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Trajectory_msgsMsgJointTrajectory:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'trajectory_msgs/msg/JointTrajectory'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_98c0ef27ef94ae8fb4dd663b60fe91b607e56f32a68618f0e6eb975341b64ba7'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 20
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 4404
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 4404
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros2Std_msgsMsgHeader = _field(default_factory=lambda: Ros2Std_msgsMsgHeader())
    joint_names: _py_list[_py_str] = _field(default_factory=lambda: [])
    points: _py_list[_record_Ros2Trajectory_msgsMsgJointTrajectoryPoint] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(4404)
        _write_Ros2Trajectory_msgsMsgJointTrajectory(writer, self)
        wire = writer.finish()
        return _wire(wire, 20, 4404)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Trajectory_msgsMsgJointTrajectory:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 20, 4404))
        value = _read_Ros2Trajectory_msgsMsgJointTrajectory(reader)
        reader.end()
        return value

_record_Ros2Trajectory_msgsMsgJointTrajectory = Ros2Trajectory_msgsMsgJointTrajectory

def _write_Ros2Trajectory_msgsMsgJointTrajectory(writer, value):
    if type(value) is not Ros2Trajectory_msgsMsgJointTrajectory:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros2Std_msgsMsgHeader(writer, _part0)
    _part1 = value.joint_names
    if type(_part1) not in (list, tuple):
        raise TypeError('array value required')
    _count1 = len(_part1)
    if _count1 > 16:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        _write_text(writer, _element, 128)
    _part2 = value.points
    if type(_part2) not in (list, tuple):
        raise TypeError('array value required')
    _count2 = len(_part2)
    if _count2 > 4:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        _write_Ros2Trajectory_msgsMsgJointTrajectoryPoint(writer, _element)
    if not 20 <= len(writer.data) - _start <= 4404:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Trajectory_msgsMsgJointTrajectory(reader):
    _start = reader.position
    value = Ros2Trajectory_msgsMsgJointTrajectory()
    value.header = _read_Ros2Std_msgsMsgHeader(reader)
    value.joint_names = [_read_text(reader, 128) for _ in range(_read_count(reader, 16, 4))]
    value.points = [_read_Ros2Trajectory_msgsMsgJointTrajectoryPoint(reader) for _ in range(_read_count(reader, 4, 24))]
    if not 20 <= reader.position - _start <= 4404:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'interbotix_xs_msgs/msg/JointTrajectoryCommand'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_5695ab0bcd0212bf0fe4ab801303714958f3c862845fefa13078ea8514076f52'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 28
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 4668
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 4668
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    cmd_type: _py_str = ''
    name: _py_str = ''
    traj: _record_Ros2Trajectory_msgsMsgJointTrajectory = _field(default_factory=lambda: Ros2Trajectory_msgsMsgJointTrajectory())

    def encode(self):
        writer = _Writer(4668)
        _write_Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand(writer, self)
        wire = writer.finish()
        return _wire(wire, 28, 4668)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 28, 4668))
        value = _read_Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand(reader)
        reader.end()
        return value

_record_Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand = Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand

def _write_Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand(writer, value):
    if type(value) is not Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.cmd_type
    _write_text(writer, _part0, 128)
    _part1 = value.name
    _write_text(writer, _part1, 128)
    _part2 = value.traj
    _write_Ros2Trajectory_msgsMsgJointTrajectory(writer, _part2)
    if not 28 <= len(writer.data) - _start <= 4668:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand(reader):
    _start = reader.position
    value = Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand()
    value.cmd_type = _read_text(reader, 128)
    value.name = _read_text(reader, 128)
    value.traj = _read_Ros2Trajectory_msgsMsgJointTrajectory(reader)
    if not 28 <= reader.position - _start <= 4668:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Interbotix_xs_msgsMsgLocobotJoy:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'interbotix_xs_msgs/msg/LocobotJoy'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_5a2637e1298987f966f0c70e1c2f37d6077d2ce531012b18349b5354f3189633'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 30
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 30
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 30
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = [{'name': 'RESET_ODOM', 'type': 'int8', 'native_type': 'int8', 'literal': '1', 'value': '1'},
     {'name': 'PAN_CCW', 'type': 'int8', 'native_type': 'int8', 'literal': '2', 'value': '2'},
     {'name': 'PAN_CW', 'type': 'int8', 'native_type': 'int8', 'literal': '3', 'value': '3'},
     {'name': 'TILT_UP', 'type': 'int8', 'native_type': 'int8', 'literal': '4', 'value': '4'},
     {'name': 'TILT_DOWN', 'type': 'int8', 'native_type': 'int8', 'literal': '5', 'value': '5'},
     {'name': 'PAN_TILT_HOME', 'type': 'int8', 'native_type': 'int8', 'literal': '6', 'value': '6'},
     {'name': 'EE_X_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '7', 'value': '7'},
     {'name': 'EE_X_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '8', 'value': '8'},
     {'name': 'EE_Y_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '9', 'value': '9'},
     {'name': 'EE_Y_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '10', 'value': '10'},
     {'name': 'EE_Z_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '11', 'value': '11'},
     {'name': 'EE_Z_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '12', 'value': '12'},
     {'name': 'EE_ROLL_CCW', 'type': 'int8', 'native_type': 'int8', 'literal': '13', 'value': '13'},
     {'name': 'EE_ROLL_CW', 'type': 'int8', 'native_type': 'int8', 'literal': '14', 'value': '14'},
     {'name': 'EE_PITCH_UP', 'type': 'int8', 'native_type': 'int8', 'literal': '15', 'value': '15'},
     {'name': 'EE_PITCH_DOWN', 'type': 'int8', 'native_type': 'int8', 'literal': '16', 'value': '16'},
     {'name': 'WAIST_CCW', 'type': 'int8', 'native_type': 'int8', 'literal': '17', 'value': '17'},
     {'name': 'WAIST_CW', 'type': 'int8', 'native_type': 'int8', 'literal': '18', 'value': '18'},
     {'name': 'GRIPPER_RELEASE', 'type': 'int8', 'native_type': 'int8', 'literal': '19', 'value': '19'},
     {'name': 'GRIPPER_GRASP', 'type': 'int8', 'native_type': 'int8', 'literal': '20', 'value': '20'},
     {'name': 'HOME_POSE', 'type': 'int8', 'native_type': 'int8', 'literal': '21', 'value': '21'},
     {'name': 'SLEEP_POSE', 'type': 'int8', 'native_type': 'int8', 'literal': '22', 'value': '22'},
     {'name': 'SPEED_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '23', 'value': '23'},
     {'name': 'SPEED_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '24', 'value': '24'},
     {'name': 'SPEED_COARSE', 'type': 'int8', 'native_type': 'int8', 'literal': '25', 'value': '25'},
     {'name': 'SPEED_FINE', 'type': 'int8', 'native_type': 'int8', 'literal': '26', 'value': '26'},
     {'name': 'GRIPPER_PWM_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '27', 'value': '27'},
     {'name': 'GRIPPER_PWM_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '28', 'value': '28'}]
    RESET_ODOM: _ClassVar = 1
    PAN_CCW: _ClassVar = 2
    PAN_CW: _ClassVar = 3
    TILT_UP: _ClassVar = 4
    TILT_DOWN: _ClassVar = 5
    PAN_TILT_HOME: _ClassVar = 6
    EE_X_INC: _ClassVar = 7
    EE_X_DEC: _ClassVar = 8
    EE_Y_INC: _ClassVar = 9
    EE_Y_DEC: _ClassVar = 10
    EE_Z_INC: _ClassVar = 11
    EE_Z_DEC: _ClassVar = 12
    EE_ROLL_CCW: _ClassVar = 13
    EE_ROLL_CW: _ClassVar = 14
    EE_PITCH_UP: _ClassVar = 15
    EE_PITCH_DOWN: _ClassVar = 16
    WAIST_CCW: _ClassVar = 17
    WAIST_CW: _ClassVar = 18
    GRIPPER_RELEASE: _ClassVar = 19
    GRIPPER_GRASP: _ClassVar = 20
    HOME_POSE: _ClassVar = 21
    SLEEP_POSE: _ClassVar = 22
    SPEED_INC: _ClassVar = 23
    SPEED_DEC: _ClassVar = 24
    SPEED_COARSE: _ClassVar = 25
    SPEED_FINE: _ClassVar = 26
    GRIPPER_PWM_INC: _ClassVar = 27
    GRIPPER_PWM_DEC: _ClassVar = 28
    base_x_cmd: _py_float = 0.0
    base_theta_cmd: _py_float = 0.0
    base_reset_odom_cmd: _py_int = 0
    pan_cmd: _py_int = 0
    tilt_cmd: _py_int = 0
    ee_x_cmd: _py_int = 0
    ee_y_cmd: _py_int = 0
    ee_z_cmd: _py_int = 0
    ee_roll_cmd: _py_int = 0
    ee_pitch_cmd: _py_int = 0
    waist_cmd: _py_int = 0
    gripper_cmd: _py_int = 0
    pose_cmd: _py_int = 0
    speed_cmd: _py_int = 0
    speed_toggle_cmd: _py_int = 0
    gripper_pwm_cmd: _py_int = 0

    def encode(self):
        writer = _Writer(30)
        _write_Ros2Interbotix_xs_msgsMsgLocobotJoy(writer, self)
        wire = writer.finish()
        return _wire(wire, 30, 30)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Interbotix_xs_msgsMsgLocobotJoy:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 30, 30))
        value = _read_Ros2Interbotix_xs_msgsMsgLocobotJoy(reader)
        reader.end()
        return value

_record_Ros2Interbotix_xs_msgsMsgLocobotJoy = Ros2Interbotix_xs_msgsMsgLocobotJoy

def _write_Ros2Interbotix_xs_msgsMsgLocobotJoy(writer, value):
    if type(value) is not Ros2Interbotix_xs_msgsMsgLocobotJoy:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.base_x_cmd
    writer.f64(_part0)
    _part1 = value.base_theta_cmd
    writer.f64(_part1)
    _part2 = value.base_reset_odom_cmd
    writer.integer(_part2, 1, True)
    _part3 = value.pan_cmd
    writer.integer(_part3, 1, True)
    _part4 = value.tilt_cmd
    writer.integer(_part4, 1, True)
    _part5 = value.ee_x_cmd
    writer.integer(_part5, 1, True)
    _part6 = value.ee_y_cmd
    writer.integer(_part6, 1, True)
    _part7 = value.ee_z_cmd
    writer.integer(_part7, 1, True)
    _part8 = value.ee_roll_cmd
    writer.integer(_part8, 1, True)
    _part9 = value.ee_pitch_cmd
    writer.integer(_part9, 1, True)
    _part10 = value.waist_cmd
    writer.integer(_part10, 1, True)
    _part11 = value.gripper_cmd
    writer.integer(_part11, 1, True)
    _part12 = value.pose_cmd
    writer.integer(_part12, 1, True)
    _part13 = value.speed_cmd
    writer.integer(_part13, 1, True)
    _part14 = value.speed_toggle_cmd
    writer.integer(_part14, 1, True)
    _part15 = value.gripper_pwm_cmd
    writer.integer(_part15, 1, True)
    if not 30 <= len(writer.data) - _start <= 30:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Interbotix_xs_msgsMsgLocobotJoy(reader):
    _start = reader.position
    value = Ros2Interbotix_xs_msgsMsgLocobotJoy()
    value.base_x_cmd = reader.f64()
    value.base_theta_cmd = reader.f64()
    value.base_reset_odom_cmd = reader.integer(1, True)
    value.pan_cmd = reader.integer(1, True)
    value.tilt_cmd = reader.integer(1, True)
    value.ee_x_cmd = reader.integer(1, True)
    value.ee_y_cmd = reader.integer(1, True)
    value.ee_z_cmd = reader.integer(1, True)
    value.ee_roll_cmd = reader.integer(1, True)
    value.ee_pitch_cmd = reader.integer(1, True)
    value.waist_cmd = reader.integer(1, True)
    value.gripper_cmd = reader.integer(1, True)
    value.pose_cmd = reader.integer(1, True)
    value.speed_cmd = reader.integer(1, True)
    value.speed_toggle_cmd = reader.integer(1, True)
    value.gripper_pwm_cmd = reader.integer(1, True)
    if not 30 <= reader.position - _start <= 30:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Interbotix_xs_msgsMsgTurretJoy:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'interbotix_xs_msgs/msg/TurretJoy'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_ed098904f5694e04331c31f8096f8c4f7b3f938ffa0007b65cba5ea2f6c36e0f'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 4
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 4
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = [{'name': 'PAN_CCW', 'type': 'int8', 'native_type': 'int8', 'literal': '1', 'value': '1'},
     {'name': 'PAN_CW', 'type': 'int8', 'native_type': 'int8', 'literal': '2', 'value': '2'},
     {'name': 'TILT_UP', 'type': 'int8', 'native_type': 'int8', 'literal': '3', 'value': '3'},
     {'name': 'TILT_DOWN', 'type': 'int8', 'native_type': 'int8', 'literal': '4', 'value': '4'},
     {'name': 'PAN_TILT_HOME', 'type': 'int8', 'native_type': 'int8', 'literal': '5', 'value': '5'},
     {'name': 'SPEED_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '6', 'value': '6'},
     {'name': 'SPEED_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '7', 'value': '7'},
     {'name': 'SPEED_COARSE', 'type': 'int8', 'native_type': 'int8', 'literal': '8', 'value': '8'},
     {'name': 'SPEED_FINE', 'type': 'int8', 'native_type': 'int8', 'literal': '9', 'value': '9'}]
    PAN_CCW: _ClassVar = 1
    PAN_CW: _ClassVar = 2
    TILT_UP: _ClassVar = 3
    TILT_DOWN: _ClassVar = 4
    PAN_TILT_HOME: _ClassVar = 5
    SPEED_INC: _ClassVar = 6
    SPEED_DEC: _ClassVar = 7
    SPEED_COARSE: _ClassVar = 8
    SPEED_FINE: _ClassVar = 9
    pan_cmd: _py_int = 0
    tilt_cmd: _py_int = 0
    speed_cmd: _py_int = 0
    speed_toggle_cmd: _py_int = 0

    def encode(self):
        writer = _Writer(4)
        _write_Ros2Interbotix_xs_msgsMsgTurretJoy(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 4)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Interbotix_xs_msgsMsgTurretJoy:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 4, 4))
        value = _read_Ros2Interbotix_xs_msgsMsgTurretJoy(reader)
        reader.end()
        return value

_record_Ros2Interbotix_xs_msgsMsgTurretJoy = Ros2Interbotix_xs_msgsMsgTurretJoy

def _write_Ros2Interbotix_xs_msgsMsgTurretJoy(writer, value):
    if type(value) is not Ros2Interbotix_xs_msgsMsgTurretJoy:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.pan_cmd
    writer.integer(_part0, 1, True)
    _part1 = value.tilt_cmd
    writer.integer(_part1, 1, True)
    _part2 = value.speed_cmd
    writer.integer(_part2, 1, True)
    _part3 = value.speed_toggle_cmd
    writer.integer(_part3, 1, True)
    if not 4 <= len(writer.data) - _start <= 4:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Interbotix_xs_msgsMsgTurretJoy(reader):
    _start = reader.position
    value = Ros2Interbotix_xs_msgsMsgTurretJoy()
    value.pan_cmd = reader.integer(1, True)
    value.tilt_cmd = reader.integer(1, True)
    value.speed_cmd = reader.integer(1, True)
    value.speed_toggle_cmd = reader.integer(1, True)
    if not 4 <= reader.position - _start <= 4:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Interbotix_xs_msgsSrvMotorGains_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'interbotix_xs_msgs/srv/MotorGains_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_1d4391978c6f8e54b26f7b5b16a56bc8bbe81f170e702082f1eee5a28ce1587f'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 36
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 292
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 292
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    cmd_type: _py_str = ''
    name: _py_str = ''
    kp_pos: _py_int = 0
    ki_pos: _py_int = 0
    kd_pos: _py_int = 0
    k1: _py_int = 0
    k2: _py_int = 0
    kp_vel: _py_int = 0
    ki_vel: _py_int = 0

    def encode(self):
        writer = _Writer(292)
        _write_Ros2Interbotix_xs_msgsSrvMotorGains_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 36, 292)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Interbotix_xs_msgsSrvMotorGains_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 36, 292))
        value = _read_Ros2Interbotix_xs_msgsSrvMotorGains_Request(reader)
        reader.end()
        return value

_record_Ros2Interbotix_xs_msgsSrvMotorGains_Request = Ros2Interbotix_xs_msgsSrvMotorGains_Request

def _write_Ros2Interbotix_xs_msgsSrvMotorGains_Request(writer, value):
    if type(value) is not Ros2Interbotix_xs_msgsSrvMotorGains_Request:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.cmd_type
    _write_text(writer, _part0, 128)
    _part1 = value.name
    _write_text(writer, _part1, 128)
    _part2 = value.kp_pos
    writer.integer(_part2, 4, True)
    _part3 = value.ki_pos
    writer.integer(_part3, 4, True)
    _part4 = value.kd_pos
    writer.integer(_part4, 4, True)
    _part5 = value.k1
    writer.integer(_part5, 4, True)
    _part6 = value.k2
    writer.integer(_part6, 4, True)
    _part7 = value.kp_vel
    writer.integer(_part7, 4, True)
    _part8 = value.ki_vel
    writer.integer(_part8, 4, True)
    if not 36 <= len(writer.data) - _start <= 292:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Interbotix_xs_msgsSrvMotorGains_Request(reader):
    _start = reader.position
    value = Ros2Interbotix_xs_msgsSrvMotorGains_Request()
    value.cmd_type = _read_text(reader, 128)
    value.name = _read_text(reader, 128)
    value.kp_pos = reader.integer(4, True)
    value.ki_pos = reader.integer(4, True)
    value.kd_pos = reader.integer(4, True)
    value.k1 = reader.integer(4, True)
    value.k2 = reader.integer(4, True)
    value.kp_vel = reader.integer(4, True)
    value.ki_vel = reader.integer(4, True)
    if not 36 <= reader.position - _start <= 292:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Interbotix_xs_msgsSrvMotorGains_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'interbotix_xs_msgs/srv/MotorGains_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_fade5fb84bdb51114ae0aa3a37d96b2fa6d29718f0ee1b688079459f948d7972'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros2Interbotix_xs_msgsSrvMotorGains_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Interbotix_xs_msgsSrvMotorGains_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros2Interbotix_xs_msgsSrvMotorGains_Response(reader)
        reader.end()
        return value

_record_Ros2Interbotix_xs_msgsSrvMotorGains_Response = Ros2Interbotix_xs_msgsSrvMotorGains_Response

def _write_Ros2Interbotix_xs_msgsSrvMotorGains_Response(writer, value):
    if type(value) is not Ros2Interbotix_xs_msgsSrvMotorGains_Response:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros2Interbotix_xs_msgsSrvMotorGains_Response(reader):
    _start = reader.position
    value = Ros2Interbotix_xs_msgsSrvMotorGains_Response()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Interbotix_xs_msgsSrvOperatingModes_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'interbotix_xs_msgs/srv/OperatingModes_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_79c4fb8d937d09f9bd7d97774174db4a647070f564f4496c9e77d117cba27f15'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 24
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 536
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 536
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    cmd_type: _py_str = ''
    name: _py_str = ''
    mode: _py_str = ''
    profile_type: _py_str = ''
    profile_velocity: _py_int = 0
    profile_acceleration: _py_int = 0

    def encode(self):
        writer = _Writer(536)
        _write_Ros2Interbotix_xs_msgsSrvOperatingModes_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 24, 536)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Interbotix_xs_msgsSrvOperatingModes_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 24, 536))
        value = _read_Ros2Interbotix_xs_msgsSrvOperatingModes_Request(reader)
        reader.end()
        return value

_record_Ros2Interbotix_xs_msgsSrvOperatingModes_Request = Ros2Interbotix_xs_msgsSrvOperatingModes_Request

def _write_Ros2Interbotix_xs_msgsSrvOperatingModes_Request(writer, value):
    if type(value) is not Ros2Interbotix_xs_msgsSrvOperatingModes_Request:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.cmd_type
    _write_text(writer, _part0, 128)
    _part1 = value.name
    _write_text(writer, _part1, 128)
    _part2 = value.mode
    _write_text(writer, _part2, 128)
    _part3 = value.profile_type
    _write_text(writer, _part3, 128)
    _part4 = value.profile_velocity
    writer.integer(_part4, 4, True)
    _part5 = value.profile_acceleration
    writer.integer(_part5, 4, True)
    if not 24 <= len(writer.data) - _start <= 536:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Interbotix_xs_msgsSrvOperatingModes_Request(reader):
    _start = reader.position
    value = Ros2Interbotix_xs_msgsSrvOperatingModes_Request()
    value.cmd_type = _read_text(reader, 128)
    value.name = _read_text(reader, 128)
    value.mode = _read_text(reader, 128)
    value.profile_type = _read_text(reader, 128)
    value.profile_velocity = reader.integer(4, True)
    value.profile_acceleration = reader.integer(4, True)
    if not 24 <= reader.position - _start <= 536:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Interbotix_xs_msgsSrvOperatingModes_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'interbotix_xs_msgs/srv/OperatingModes_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_28180c90e6e146915e81a6e9312148c6ce27741d3e0df6fb82abef65bb658345'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros2Interbotix_xs_msgsSrvOperatingModes_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Interbotix_xs_msgsSrvOperatingModes_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros2Interbotix_xs_msgsSrvOperatingModes_Response(reader)
        reader.end()
        return value

_record_Ros2Interbotix_xs_msgsSrvOperatingModes_Response = Ros2Interbotix_xs_msgsSrvOperatingModes_Response

def _write_Ros2Interbotix_xs_msgsSrvOperatingModes_Response(writer, value):
    if type(value) is not Ros2Interbotix_xs_msgsSrvOperatingModes_Response:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros2Interbotix_xs_msgsSrvOperatingModes_Response(reader):
    _start = reader.position
    value = Ros2Interbotix_xs_msgsSrvOperatingModes_Response()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Interbotix_xs_msgsSrvReboot_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'interbotix_xs_msgs/srv/Reboot_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_877df815d5efae67de6098b2280ed73b6e93d9db6024622d522112de52eccd55'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 10
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 266
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 266
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    cmd_type: _py_str = ''
    name: _py_str = ''
    enable: _py_bool = False
    smart_reboot: _py_bool = False

    def encode(self):
        writer = _Writer(266)
        _write_Ros2Interbotix_xs_msgsSrvReboot_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 10, 266)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Interbotix_xs_msgsSrvReboot_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 10, 266))
        value = _read_Ros2Interbotix_xs_msgsSrvReboot_Request(reader)
        reader.end()
        return value

_record_Ros2Interbotix_xs_msgsSrvReboot_Request = Ros2Interbotix_xs_msgsSrvReboot_Request

def _write_Ros2Interbotix_xs_msgsSrvReboot_Request(writer, value):
    if type(value) is not Ros2Interbotix_xs_msgsSrvReboot_Request:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.cmd_type
    _write_text(writer, _part0, 128)
    _part1 = value.name
    _write_text(writer, _part1, 128)
    _part2 = value.enable
    if type(_part2) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part2), 1)
    _part3 = value.smart_reboot
    if type(_part3) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part3), 1)
    if not 10 <= len(writer.data) - _start <= 266:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Interbotix_xs_msgsSrvReboot_Request(reader):
    _start = reader.position
    value = Ros2Interbotix_xs_msgsSrvReboot_Request()
    value.cmd_type = _read_text(reader, 128)
    value.name = _read_text(reader, 128)
    value.enable = _read_bool(reader)
    value.smart_reboot = _read_bool(reader)
    if not 10 <= reader.position - _start <= 266:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Interbotix_xs_msgsSrvReboot_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'interbotix_xs_msgs/srv/Reboot_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_00761585231e339f21ff40ffd8b9a025d67fe16b7d33410171c430d2aa2c051b'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros2Interbotix_xs_msgsSrvReboot_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Interbotix_xs_msgsSrvReboot_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros2Interbotix_xs_msgsSrvReboot_Response(reader)
        reader.end()
        return value

_record_Ros2Interbotix_xs_msgsSrvReboot_Response = Ros2Interbotix_xs_msgsSrvReboot_Response

def _write_Ros2Interbotix_xs_msgsSrvReboot_Response(writer, value):
    if type(value) is not Ros2Interbotix_xs_msgsSrvReboot_Response:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros2Interbotix_xs_msgsSrvReboot_Response(reader):
    _start = reader.position
    value = Ros2Interbotix_xs_msgsSrvReboot_Response()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Interbotix_xs_msgsSrvRegisterValues_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'interbotix_xs_msgs/srv/RegisterValues_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_73ad91bb12d7c5ee8142f3657c3238a9bd547468e31a74f19a469343bd3241fd'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 16
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 400
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 400
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    cmd_type: _py_str = ''
    name: _py_str = ''
    reg: _py_str = ''
    value: _py_int = 0

    def encode(self):
        writer = _Writer(400)
        _write_Ros2Interbotix_xs_msgsSrvRegisterValues_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 16, 400)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Interbotix_xs_msgsSrvRegisterValues_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 16, 400))
        value = _read_Ros2Interbotix_xs_msgsSrvRegisterValues_Request(reader)
        reader.end()
        return value

_record_Ros2Interbotix_xs_msgsSrvRegisterValues_Request = Ros2Interbotix_xs_msgsSrvRegisterValues_Request

def _write_Ros2Interbotix_xs_msgsSrvRegisterValues_Request(writer, value):
    if type(value) is not Ros2Interbotix_xs_msgsSrvRegisterValues_Request:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.cmd_type
    _write_text(writer, _part0, 128)
    _part1 = value.name
    _write_text(writer, _part1, 128)
    _part2 = value.reg
    _write_text(writer, _part2, 128)
    _part3 = value.value
    writer.integer(_part3, 4, True)
    if not 16 <= len(writer.data) - _start <= 400:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Interbotix_xs_msgsSrvRegisterValues_Request(reader):
    _start = reader.position
    value = Ros2Interbotix_xs_msgsSrvRegisterValues_Request()
    value.cmd_type = _read_text(reader, 128)
    value.name = _read_text(reader, 128)
    value.reg = _read_text(reader, 128)
    value.value = reader.integer(4, True)
    if not 16 <= reader.position - _start <= 400:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Interbotix_xs_msgsSrvRegisterValues_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'interbotix_xs_msgs/srv/RegisterValues_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_f8e4d0f5065281434cbd3c3845c92458348541dd0fc477b2552856941a58120a'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 68
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 68
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    values: _py_list[_py_int] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(68)
        _write_Ros2Interbotix_xs_msgsSrvRegisterValues_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 68)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Interbotix_xs_msgsSrvRegisterValues_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 4, 68))
        value = _read_Ros2Interbotix_xs_msgsSrvRegisterValues_Response(reader)
        reader.end()
        return value

_record_Ros2Interbotix_xs_msgsSrvRegisterValues_Response = Ros2Interbotix_xs_msgsSrvRegisterValues_Response

def _write_Ros2Interbotix_xs_msgsSrvRegisterValues_Response(writer, value):
    if type(value) is not Ros2Interbotix_xs_msgsSrvRegisterValues_Response:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.values
    if type(_part0) not in (list, tuple):
        raise TypeError('array value required')
    _count0 = len(_part0)
    if _count0 > 16:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count0, 4)
    for _index in range(_count0):
        _element = _part0[_index]
        writer.integer(_element, 4, True)
    if not 4 <= len(writer.data) - _start <= 68:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Interbotix_xs_msgsSrvRegisterValues_Response(reader):
    _start = reader.position
    value = Ros2Interbotix_xs_msgsSrvRegisterValues_Response()
    value.values = [reader.integer(4, True) for _ in range(_read_count(reader, 16, 4))]
    if not 4 <= reader.position - _start <= 68:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Interbotix_xs_msgsSrvRobotInfo_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'interbotix_xs_msgs/srv/RobotInfo_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_af4294279451a23fccc9c274609eb11479004d92b62ffa4e1dece0e88927a6f9'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 264
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 264
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    cmd_type: _py_str = ''
    name: _py_str = ''

    def encode(self):
        writer = _Writer(264)
        _write_Ros2Interbotix_xs_msgsSrvRobotInfo_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 264)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Interbotix_xs_msgsSrvRobotInfo_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 264))
        value = _read_Ros2Interbotix_xs_msgsSrvRobotInfo_Request(reader)
        reader.end()
        return value

_record_Ros2Interbotix_xs_msgsSrvRobotInfo_Request = Ros2Interbotix_xs_msgsSrvRobotInfo_Request

def _write_Ros2Interbotix_xs_msgsSrvRobotInfo_Request(writer, value):
    if type(value) is not Ros2Interbotix_xs_msgsSrvRobotInfo_Request:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.cmd_type
    _write_text(writer, _part0, 128)
    _part1 = value.name
    _write_text(writer, _part1, 128)
    if not 8 <= len(writer.data) - _start <= 264:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Interbotix_xs_msgsSrvRobotInfo_Request(reader):
    _start = reader.position
    value = Ros2Interbotix_xs_msgsSrvRobotInfo_Request()
    value.cmd_type = _read_text(reader, 128)
    value.name = _read_text(reader, 128)
    if not 8 <= reader.position - _start <= 264:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Interbotix_xs_msgsSrvRobotInfo_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'interbotix_xs_msgs/srv/RobotInfo_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_28722f2f9b200bbe87da55a7ea34bdc98ea278f7332acaf45a59d318e0ea8b14'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 42
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 18474
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 18474
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    mode: _py_str = ''
    profile_type: _py_str = ''
    joint_names: _py_list[_py_str] = _field(default_factory=lambda: [])
    joint_ids: _py_list[_py_int] = _field(default_factory=lambda: [])
    joint_lower_limits: _py_list[_py_float] = _field(default_factory=lambda: [])
    joint_upper_limits: _py_list[_py_float] = _field(default_factory=lambda: [])
    joint_velocity_limits: _py_list[_py_float] = _field(default_factory=lambda: [])
    joint_sleep_positions: _py_list[_py_float] = _field(default_factory=lambda: [])
    joint_state_indices: _py_list[_py_int] = _field(default_factory=lambda: [])
    num_joints: _py_int = 0
    name: _py_list[_py_str] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(18474)
        _write_Ros2Interbotix_xs_msgsSrvRobotInfo_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 42, 18474)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Interbotix_xs_msgsSrvRobotInfo_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 42, 18474))
        value = _read_Ros2Interbotix_xs_msgsSrvRobotInfo_Response(reader)
        reader.end()
        return value

_record_Ros2Interbotix_xs_msgsSrvRobotInfo_Response = Ros2Interbotix_xs_msgsSrvRobotInfo_Response

def _write_Ros2Interbotix_xs_msgsSrvRobotInfo_Response(writer, value):
    if type(value) is not Ros2Interbotix_xs_msgsSrvRobotInfo_Response:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.mode
    _write_text(writer, _part0, 128)
    _part1 = value.profile_type
    _write_text(writer, _part1, 128)
    _part2 = value.joint_names
    if type(_part2) not in (list, tuple):
        raise TypeError('array value required')
    _count2 = len(_part2)
    if _count2 > 64:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        _write_text(writer, _element, 128)
    _part3 = value.joint_ids
    if type(_part3) not in (list, tuple):
        raise TypeError('array value required')
    _count3 = len(_part3)
    if _count3 > 64:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count3, 4)
    for _index in range(_count3):
        _element = _part3[_index]
        writer.integer(_element, 2, True)
    _part4 = value.joint_lower_limits
    if type(_part4) not in (list, tuple):
        raise TypeError('array value required')
    _count4 = len(_part4)
    if _count4 > 64:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count4, 4)
    for _index in range(_count4):
        _element = _part4[_index]
        writer.f32(_element)
    _part5 = value.joint_upper_limits
    if type(_part5) not in (list, tuple):
        raise TypeError('array value required')
    _count5 = len(_part5)
    if _count5 > 64:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count5, 4)
    for _index in range(_count5):
        _element = _part5[_index]
        writer.f32(_element)
    _part6 = value.joint_velocity_limits
    if type(_part6) not in (list, tuple):
        raise TypeError('array value required')
    _count6 = len(_part6)
    if _count6 > 64:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count6, 4)
    for _index in range(_count6):
        _element = _part6[_index]
        writer.f32(_element)
    _part7 = value.joint_sleep_positions
    if type(_part7) not in (list, tuple):
        raise TypeError('array value required')
    _count7 = len(_part7)
    if _count7 > 64:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count7, 4)
    for _index in range(_count7):
        _element = _part7[_index]
        writer.f32(_element)
    _part8 = value.joint_state_indices
    if type(_part8) not in (list, tuple):
        raise TypeError('array value required')
    _count8 = len(_part8)
    if _count8 > 64:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count8, 4)
    for _index in range(_count8):
        _element = _part8[_index]
        writer.integer(_element, 2, True)
    _part9 = value.num_joints
    writer.integer(_part9, 2, True)
    _part10 = value.name
    if type(_part10) not in (list, tuple):
        raise TypeError('array value required')
    _count10 = len(_part10)
    if _count10 > 64:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count10, 4)
    for _index in range(_count10):
        _element = _part10[_index]
        _write_text(writer, _element, 128)
    if not 42 <= len(writer.data) - _start <= 18474:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Interbotix_xs_msgsSrvRobotInfo_Response(reader):
    _start = reader.position
    value = Ros2Interbotix_xs_msgsSrvRobotInfo_Response()
    value.mode = _read_text(reader, 128)
    value.profile_type = _read_text(reader, 128)
    value.joint_names = [_read_text(reader, 128) for _ in range(_read_count(reader, 64, 4))]
    value.joint_ids = [reader.integer(2, True) for _ in range(_read_count(reader, 64, 2))]
    value.joint_lower_limits = [reader.f32() for _ in range(_read_count(reader, 64, 4))]
    value.joint_upper_limits = [reader.f32() for _ in range(_read_count(reader, 64, 4))]
    value.joint_velocity_limits = [reader.f32() for _ in range(_read_count(reader, 64, 4))]
    value.joint_sleep_positions = [reader.f32() for _ in range(_read_count(reader, 64, 4))]
    value.joint_state_indices = [reader.integer(2, True) for _ in range(_read_count(reader, 64, 2))]
    value.num_joints = reader.integer(2, True)
    value.name = [_read_text(reader, 128) for _ in range(_read_count(reader, 64, 4))]
    if not 42 <= reader.position - _start <= 18474:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Interbotix_xs_msgsSrvTorqueEnable_Request:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'interbotix_xs_msgs/srv/TorqueEnable_Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_f5c5aa1cc5b2d81b7a8c70d4ad420315129124e151b9cbd6419ae5ece83297da'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 9
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 265
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 265
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    cmd_type: _py_str = ''
    name: _py_str = ''
    enable: _py_bool = False

    def encode(self):
        writer = _Writer(265)
        _write_Ros2Interbotix_xs_msgsSrvTorqueEnable_Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 9, 265)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Interbotix_xs_msgsSrvTorqueEnable_Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 9, 265))
        value = _read_Ros2Interbotix_xs_msgsSrvTorqueEnable_Request(reader)
        reader.end()
        return value

_record_Ros2Interbotix_xs_msgsSrvTorqueEnable_Request = Ros2Interbotix_xs_msgsSrvTorqueEnable_Request

def _write_Ros2Interbotix_xs_msgsSrvTorqueEnable_Request(writer, value):
    if type(value) is not Ros2Interbotix_xs_msgsSrvTorqueEnable_Request:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.cmd_type
    _write_text(writer, _part0, 128)
    _part1 = value.name
    _write_text(writer, _part1, 128)
    _part2 = value.enable
    if type(_part2) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part2), 1)
    if not 9 <= len(writer.data) - _start <= 265:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Interbotix_xs_msgsSrvTorqueEnable_Request(reader):
    _start = reader.position
    value = Ros2Interbotix_xs_msgsSrvTorqueEnable_Request()
    value.cmd_type = _read_text(reader, 128)
    value.name = _read_text(reader, 128)
    value.enable = _read_bool(reader)
    if not 9 <= reader.position - _start <= 265:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Interbotix_xs_msgsSrvTorqueEnable_Response:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'interbotix_xs_msgs/srv/TorqueEnable_Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_6ef9f0b62d47e7cf7f9761869145d65eaad9fd157f3bd0c5f87437f8d1b5d31b'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros2Interbotix_xs_msgsSrvTorqueEnable_Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Interbotix_xs_msgsSrvTorqueEnable_Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros2Interbotix_xs_msgsSrvTorqueEnable_Response(reader)
        reader.end()
        return value

_record_Ros2Interbotix_xs_msgsSrvTorqueEnable_Response = Ros2Interbotix_xs_msgsSrvTorqueEnable_Response

def _write_Ros2Interbotix_xs_msgsSrvTorqueEnable_Response(writer, value):
    if type(value) is not Ros2Interbotix_xs_msgsSrvTorqueEnable_Response:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros2Interbotix_xs_msgsSrvTorqueEnable_Response(reader):
    _start = reader.position
    value = Ros2Interbotix_xs_msgsSrvTorqueEnable_Response()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

