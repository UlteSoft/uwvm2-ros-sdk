# @file bounded_records.py
# @brief Provide the complete trossen ros1_manipulators_kinetic canonical value surface.
# @details The original 1 record catalog retains field order, constants, defaults and quotas.
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
class Ros1Interbotix_uxarm_joyArmJoy:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'interbotix_uxarm_joy/ArmJoy'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_70a9d567a462413c9a5c6ec9f44e79ee772a9327c22a2dc308fe6446fdb27d53'
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
     {'name': 'EE_YAW_CCW', 'type': 'int8', 'native_type': 'int8', 'literal': '7', 'value': '7'},
     {'name': 'EE_YAW_CW', 'type': 'int8', 'native_type': 'int8', 'literal': '8', 'value': '8'},
     {'name': 'EE_PITCH_UP', 'type': 'int8', 'native_type': 'int8', 'literal': '9', 'value': '9'},
     {'name': 'EE_PITCH_DOWN', 'type': 'int8', 'native_type': 'int8', 'literal': '10', 'value': '10'},
     {'name': 'WAIST_CCW', 'type': 'int8', 'native_type': 'int8', 'literal': '11', 'value': '11'},
     {'name': 'WAIST_CW', 'type': 'int8', 'native_type': 'int8', 'literal': '12', 'value': '12'},
     {'name': 'GRIPPER_OPEN', 'type': 'int8', 'native_type': 'int8', 'literal': '13', 'value': '13'},
     {'name': 'GRIPPER_CLOSE', 'type': 'int8', 'native_type': 'int8', 'literal': '14', 'value': '14'},
     {'name': 'HOME_POSE', 'type': 'int8', 'native_type': 'int8', 'literal': '15', 'value': '15'},
     {'name': 'HOLDUP_POSE', 'type': 'int8', 'native_type': 'int8', 'literal': '16', 'value': '16'},
     {'name': 'SPEED_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '17', 'value': '17'},
     {'name': 'SPEED_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '18', 'value': '18'},
     {'name': 'SPEED_COARSE', 'type': 'int8', 'native_type': 'int8', 'literal': '19', 'value': '19'},
     {'name': 'SPEED_FINE', 'type': 'int8', 'native_type': 'int8', 'literal': '20', 'value': '20'},
     {'name': 'GRIPPER_SPEED_INC',
      'type': 'int8',
      'native_type': 'int8',
      'literal': '21',
      'value': '21'},
     {'name': 'GRIPPER_SPEED_DEC',
      'type': 'int8',
      'native_type': 'int8',
      'literal': '22',
      'value': '22'},
     {'name': 'MODE_SERVO', 'type': 'int8', 'native_type': 'int8', 'literal': '23', 'value': '23'},
     {'name': 'MODE_TEACH', 'type': 'int8', 'native_type': 'int8', 'literal': '24', 'value': '24'}]
    EE_X_INC: _ClassVar = 1
    EE_X_DEC: _ClassVar = 2
    EE_Y_INC: _ClassVar = 3
    EE_Y_DEC: _ClassVar = 4
    EE_Z_INC: _ClassVar = 5
    EE_Z_DEC: _ClassVar = 6
    EE_YAW_CCW: _ClassVar = 7
    EE_YAW_CW: _ClassVar = 8
    EE_PITCH_UP: _ClassVar = 9
    EE_PITCH_DOWN: _ClassVar = 10
    WAIST_CCW: _ClassVar = 11
    WAIST_CW: _ClassVar = 12
    GRIPPER_OPEN: _ClassVar = 13
    GRIPPER_CLOSE: _ClassVar = 14
    HOME_POSE: _ClassVar = 15
    HOLDUP_POSE: _ClassVar = 16
    SPEED_INC: _ClassVar = 17
    SPEED_DEC: _ClassVar = 18
    SPEED_COARSE: _ClassVar = 19
    SPEED_FINE: _ClassVar = 20
    GRIPPER_SPEED_INC: _ClassVar = 21
    GRIPPER_SPEED_DEC: _ClassVar = 22
    MODE_SERVO: _ClassVar = 23
    MODE_TEACH: _ClassVar = 24
    ee_x_cmd: _py_int = 0
    ee_y_cmd: _py_int = 0
    ee_z_cmd: _py_int = 0
    ee_yaw_cmd: _py_int = 0
    ee_pitch_cmd: _py_int = 0
    waist_cmd: _py_int = 0
    gripper_cmd: _py_int = 0
    pose_cmd: _py_int = 0
    speed_cmd: _py_int = 0
    speed_toggle_cmd: _py_int = 0
    gripper_speed_cmd: _py_int = 0
    mode_cmd: _py_int = 0

    def encode(self):
        writer = _Writer(12)
        _write_Ros1Interbotix_uxarm_joyArmJoy(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 12)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Interbotix_uxarm_joyArmJoy:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 12, 12))
        value = _read_Ros1Interbotix_uxarm_joyArmJoy(reader)
        reader.end()
        return value

_record_Ros1Interbotix_uxarm_joyArmJoy = Ros1Interbotix_uxarm_joyArmJoy

def _write_Ros1Interbotix_uxarm_joyArmJoy(writer, value):
    if type(value) is not Ros1Interbotix_uxarm_joyArmJoy:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.ee_x_cmd
    writer.integer(_part0, 1, True)
    _part1 = value.ee_y_cmd
    writer.integer(_part1, 1, True)
    _part2 = value.ee_z_cmd
    writer.integer(_part2, 1, True)
    _part3 = value.ee_yaw_cmd
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
    _part10 = value.gripper_speed_cmd
    writer.integer(_part10, 1, True)
    _part11 = value.mode_cmd
    writer.integer(_part11, 1, True)
    if not 12 <= len(writer.data) - _start <= 12:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Interbotix_uxarm_joyArmJoy(reader):
    _start = reader.position
    value = Ros1Interbotix_uxarm_joyArmJoy()
    value.ee_x_cmd = reader.integer(1, True)
    value.ee_y_cmd = reader.integer(1, True)
    value.ee_z_cmd = reader.integer(1, True)
    value.ee_yaw_cmd = reader.integer(1, True)
    value.ee_pitch_cmd = reader.integer(1, True)
    value.waist_cmd = reader.integer(1, True)
    value.gripper_cmd = reader.integer(1, True)
    value.pose_cmd = reader.integer(1, True)
    value.speed_cmd = reader.integer(1, True)
    value.speed_toggle_cmd = reader.integer(1, True)
    value.gripper_speed_cmd = reader.integer(1, True)
    value.mode_cmd = reader.integer(1, True)
    if not 12 <= reader.position - _start <= 12:
        raise ValueError('nested complete record aggregate extent')
    return value

