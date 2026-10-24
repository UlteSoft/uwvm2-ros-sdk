# @file bounded_records.py
# @brief Provide the complete trossen ros1_melodic canonical value surface.
# @details The original 59 record catalog retains field order, constants, defaults and quotas.
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
class Ros1Interbotix_xs_msgsArmJoy:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'interbotix_xs_msgs/ArmJoy'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_f8a971ff01593f420de167c62e0f606fd3762866cc108659edcac50972cd3ea3'
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
     {'name': 'GRIPPER_OPEN', 'type': 'int8', 'native_type': 'int8', 'literal': '13', 'value': '13'},
     {'name': 'GRIPPER_CLOSE', 'type': 'int8', 'native_type': 'int8', 'literal': '14', 'value': '14'},
     {'name': 'HOME_POSE', 'type': 'int8', 'native_type': 'int8', 'literal': '15', 'value': '15'},
     {'name': 'SLEEP_POSE', 'type': 'int8', 'native_type': 'int8', 'literal': '16', 'value': '16'},
     {'name': 'SPEED_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '17', 'value': '17'},
     {'name': 'SPEED_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '18', 'value': '18'},
     {'name': 'SPEED_COURSE', 'type': 'int8', 'native_type': 'int8', 'literal': '19', 'value': '19'},
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
    GRIPPER_OPEN: _ClassVar = 13
    GRIPPER_CLOSE: _ClassVar = 14
    HOME_POSE: _ClassVar = 15
    SLEEP_POSE: _ClassVar = 16
    SPEED_INC: _ClassVar = 17
    SPEED_DEC: _ClassVar = 18
    SPEED_COURSE: _ClassVar = 19
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
        _write_Ros1Interbotix_xs_msgsArmJoy(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 12)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Interbotix_xs_msgsArmJoy:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 12, 12))
        value = _read_Ros1Interbotix_xs_msgsArmJoy(reader)
        reader.end()
        return value

_record_Ros1Interbotix_xs_msgsArmJoy = Ros1Interbotix_xs_msgsArmJoy

def _write_Ros1Interbotix_xs_msgsArmJoy(writer, value):
    if type(value) is not Ros1Interbotix_xs_msgsArmJoy:
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

def _read_Ros1Interbotix_xs_msgsArmJoy(reader):
    _start = reader.position
    value = Ros1Interbotix_xs_msgsArmJoy()
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
class Ros1Interbotix_xs_msgsHexJoy:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'interbotix_xs_msgs/HexJoy'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_b37a8bd136e63b066c12429e68af0721bb314a0b1131cb7e0e806faa56e04b37'
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
     {'name': 'SPEED_COURSE', 'type': 'int8', 'native_type': 'int8', 'literal': '31', 'value': '31'},
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
    SPEED_COURSE: _ClassVar = 31
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
        _write_Ros1Interbotix_xs_msgsHexJoy(writer, self)
        wire = writer.finish()
        return _wire(wire, 17, 17)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Interbotix_xs_msgsHexJoy:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 17, 17))
        value = _read_Ros1Interbotix_xs_msgsHexJoy(reader)
        reader.end()
        return value

_record_Ros1Interbotix_xs_msgsHexJoy = Ros1Interbotix_xs_msgsHexJoy

def _write_Ros1Interbotix_xs_msgsHexJoy(writer, value):
    if type(value) is not Ros1Interbotix_xs_msgsHexJoy:
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

def _read_Ros1Interbotix_xs_msgsHexJoy(reader):
    _start = reader.position
    value = Ros1Interbotix_xs_msgsHexJoy()
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
class Ros1Interbotix_xs_msgsJointGroupCommand:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'interbotix_xs_msgs/JointGroupCommand'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_4fc3c13db66a0c916112022ddf02bd4be872e1b6124c7f2db43271b3a7b186ec'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 392
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 392
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    name: _py_str = ''
    cmd: _py_list[_py_float] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(392)
        _write_Ros1Interbotix_xs_msgsJointGroupCommand(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 392)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Interbotix_xs_msgsJointGroupCommand:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 392))
        value = _read_Ros1Interbotix_xs_msgsJointGroupCommand(reader)
        reader.end()
        return value

_record_Ros1Interbotix_xs_msgsJointGroupCommand = Ros1Interbotix_xs_msgsJointGroupCommand

def _write_Ros1Interbotix_xs_msgsJointGroupCommand(writer, value):
    if type(value) is not Ros1Interbotix_xs_msgsJointGroupCommand:
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

def _read_Ros1Interbotix_xs_msgsJointGroupCommand(reader):
    _start = reader.position
    value = Ros1Interbotix_xs_msgsJointGroupCommand()
    value.name = _read_text(reader, 128)
    value.cmd = [reader.f32() for _ in range(_read_count(reader, 64, 4))]
    if not 8 <= reader.position - _start <= 392:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Interbotix_xs_msgsJointSingleCommand:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'interbotix_xs_msgs/JointSingleCommand'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_6852cc1330e9c60378a89981a25fc2b01338a71225e57478c824a3aebc8b1af0'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 136
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 136
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    name: _py_str = ''
    cmd: _py_float = 0.0

    def encode(self):
        writer = _Writer(136)
        _write_Ros1Interbotix_xs_msgsJointSingleCommand(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 136)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Interbotix_xs_msgsJointSingleCommand:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 136))
        value = _read_Ros1Interbotix_xs_msgsJointSingleCommand(reader)
        reader.end()
        return value

_record_Ros1Interbotix_xs_msgsJointSingleCommand = Ros1Interbotix_xs_msgsJointSingleCommand

def _write_Ros1Interbotix_xs_msgsJointSingleCommand(writer, value):
    if type(value) is not Ros1Interbotix_xs_msgsJointSingleCommand:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.name
    _write_text(writer, _part0, 128)
    _part1 = value.cmd
    writer.f32(_part1)
    if not 8 <= len(writer.data) - _start <= 136:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Interbotix_xs_msgsJointSingleCommand(reader):
    _start = reader.position
    value = Ros1Interbotix_xs_msgsJointSingleCommand()
    value.name = _read_text(reader, 128)
    value.cmd = reader.f32()
    if not 8 <= reader.position - _start <= 136:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Interbotix_xs_msgsJointTemps:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'interbotix_xs_msgs/JointTemps'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_054409e3e97b0797e9c82e5c9d0dd5d7be1d421d3c78924dca8097e9ceb1a511'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 8712
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 8712
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    names: _py_list[_py_str] = _field(default_factory=lambda: [])
    temps: _py_list[_py_int] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(8712)
        _write_Ros1Interbotix_xs_msgsJointTemps(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 8712)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Interbotix_xs_msgsJointTemps:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 8712))
        value = _read_Ros1Interbotix_xs_msgsJointTemps(reader)
        reader.end()
        return value

_record_Ros1Interbotix_xs_msgsJointTemps = Ros1Interbotix_xs_msgsJointTemps

def _write_Ros1Interbotix_xs_msgsJointTemps(writer, value):
    if type(value) is not Ros1Interbotix_xs_msgsJointTemps:
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

def _read_Ros1Interbotix_xs_msgsJointTemps(reader):
    _start = reader.position
    value = Ros1Interbotix_xs_msgsJointTemps()
    value.names = [_read_text(reader, 128) for _ in range(_read_count(reader, 64, 4))]
    value.temps = [reader.integer(4, True) for _ in range(_read_count(reader, 64, 4))]
    if not 8 <= reader.position - _start <= 8712:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Time:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'time'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    sec: _py_int = 0
    nsec: _py_int = 0

    def encode(self):
        writer = _Writer(8)
        _write_Ros1Time(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 8)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Time:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 8))
        value = _read_Ros1Time(reader)
        reader.end()
        return value

_record_Ros1Time = Ros1Time

def _write_Ros1Time(writer, value):
    if type(value) is not Ros1Time:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.sec
    writer.integer(_part0, 4, False)
    _part1 = value.nsec
    writer.integer(_part1, 4, False)
    if not 0 <= _part1 < 1000000000:
        raise ValueError('normalized subsecond field required')
    if not 8 <= len(writer.data) - _start <= 8:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Time(reader):
    _start = reader.position
    value = Ros1Time()
    value.sec = reader.integer(4, False)
    value.nsec = reader.integer(4, False)
    if not 0 <= value.nsec < 1000000000:
        raise ValueError('normalized subsecond field required')
    if not 8 <= reader.position - _start <= 8:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Std_msgsHeader:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'std_msgs/Header'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 16
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 144
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 144
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    seq: _py_int = 0
    stamp: _record_Ros1Time = _field(default_factory=lambda: Ros1Time())
    frame_id: _py_str = ''

    def encode(self):
        writer = _Writer(144)
        _write_Ros1Std_msgsHeader(writer, self)
        wire = writer.finish()
        return _wire(wire, 16, 144)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Std_msgsHeader:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 16, 144))
        value = _read_Ros1Std_msgsHeader(reader)
        reader.end()
        return value

_record_Ros1Std_msgsHeader = Ros1Std_msgsHeader

def _write_Ros1Std_msgsHeader(writer, value):
    if type(value) is not Ros1Std_msgsHeader:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.seq
    writer.integer(_part0, 4, False)
    _part1 = value.stamp
    _write_Ros1Time(writer, _part1)
    _part2 = value.frame_id
    _write_text(writer, _part2, 128)
    if not 16 <= len(writer.data) - _start <= 144:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Std_msgsHeader(reader):
    _start = reader.position
    value = Ros1Std_msgsHeader()
    value.seq = reader.integer(4, False)
    value.stamp = _read_Ros1Time(reader)
    value.frame_id = _read_text(reader, 128)
    if not 16 <= reader.position - _start <= 144:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Duration:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'duration'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_8dbec6cdfef79495208abb358c5e8283ec8d9d471f984424afcda997d142cca8'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    sec: _py_int = 0
    nsec: _py_int = 0

    def encode(self):
        writer = _Writer(8)
        _write_Ros1Duration(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 8)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Duration:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 8))
        value = _read_Ros1Duration(reader)
        reader.end()
        return value

_record_Ros1Duration = Ros1Duration

def _write_Ros1Duration(writer, value):
    if type(value) is not Ros1Duration:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.sec
    writer.integer(_part0, 4, True)
    _part1 = value.nsec
    writer.integer(_part1, 4, True)
    if not 0 <= _part1 < 1000000000:
        raise ValueError('normalized subsecond field required')
    if not 8 <= len(writer.data) - _start <= 8:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Duration(reader):
    _start = reader.position
    value = Ros1Duration()
    value.sec = reader.integer(4, True)
    value.nsec = reader.integer(4, True)
    if not 0 <= value.nsec < 1000000000:
        raise ValueError('normalized subsecond field required')
    if not 8 <= reader.position - _start <= 8:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Trajectory_msgsJointTrajectoryPoint:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'trajectory_msgs/JointTrajectoryPoint'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_e93c84b6980a95c9695bd13be2bf9ebc4b2f400fc8a39909578e59f3dd03db81'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 24
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 536
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 536
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    positions: _py_list[_py_float] = _field(default_factory=lambda: [])
    velocities: _py_list[_py_float] = _field(default_factory=lambda: [])
    accelerations: _py_list[_py_float] = _field(default_factory=lambda: [])
    effort: _py_list[_py_float] = _field(default_factory=lambda: [])
    time_from_start: _record_Ros1Duration = _field(default_factory=lambda: Ros1Duration())

    def encode(self):
        writer = _Writer(536)
        _write_Ros1Trajectory_msgsJointTrajectoryPoint(writer, self)
        wire = writer.finish()
        return _wire(wire, 24, 536)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Trajectory_msgsJointTrajectoryPoint:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 24, 536))
        value = _read_Ros1Trajectory_msgsJointTrajectoryPoint(reader)
        reader.end()
        return value

_record_Ros1Trajectory_msgsJointTrajectoryPoint = Ros1Trajectory_msgsJointTrajectoryPoint

def _write_Ros1Trajectory_msgsJointTrajectoryPoint(writer, value):
    if type(value) is not Ros1Trajectory_msgsJointTrajectoryPoint:
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
    _write_Ros1Duration(writer, _part4)
    if not 24 <= len(writer.data) - _start <= 536:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Trajectory_msgsJointTrajectoryPoint(reader):
    _start = reader.position
    value = Ros1Trajectory_msgsJointTrajectoryPoint()
    value.positions = [reader.f64() for _ in range(_read_count(reader, 16, 8))]
    value.velocities = [reader.f64() for _ in range(_read_count(reader, 16, 8))]
    value.accelerations = [reader.f64() for _ in range(_read_count(reader, 16, 8))]
    value.effort = [reader.f64() for _ in range(_read_count(reader, 16, 8))]
    value.time_from_start = _read_Ros1Duration(reader)
    if not 24 <= reader.position - _start <= 536:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Trajectory_msgsJointTrajectory:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'trajectory_msgs/JointTrajectory'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_2fd934a09c8256baeb450d670d83acc51bad97dc2e7ad750126353964fa6c2b9'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 24
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 4408
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 4408
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    header: _record_Ros1Std_msgsHeader = _field(default_factory=lambda: Ros1Std_msgsHeader())
    joint_names: _py_list[_py_str] = _field(default_factory=lambda: [])
    points: _py_list[_record_Ros1Trajectory_msgsJointTrajectoryPoint] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(4408)
        _write_Ros1Trajectory_msgsJointTrajectory(writer, self)
        wire = writer.finish()
        return _wire(wire, 24, 4408)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Trajectory_msgsJointTrajectory:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 24, 4408))
        value = _read_Ros1Trajectory_msgsJointTrajectory(reader)
        reader.end()
        return value

_record_Ros1Trajectory_msgsJointTrajectory = Ros1Trajectory_msgsJointTrajectory

def _write_Ros1Trajectory_msgsJointTrajectory(writer, value):
    if type(value) is not Ros1Trajectory_msgsJointTrajectory:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros1Std_msgsHeader(writer, _part0)
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
        _write_Ros1Trajectory_msgsJointTrajectoryPoint(writer, _element)
    if not 24 <= len(writer.data) - _start <= 4408:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Trajectory_msgsJointTrajectory(reader):
    _start = reader.position
    value = Ros1Trajectory_msgsJointTrajectory()
    value.header = _read_Ros1Std_msgsHeader(reader)
    value.joint_names = [_read_text(reader, 128) for _ in range(_read_count(reader, 16, 4))]
    value.points = [_read_Ros1Trajectory_msgsJointTrajectoryPoint(reader) for _ in range(_read_count(reader, 4, 24))]
    if not 24 <= reader.position - _start <= 4408:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Interbotix_xs_msgsJointTrajectoryCommand:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'interbotix_xs_msgs/JointTrajectoryCommand'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_e14b0742b1f9fa372adf0af54f8e3493add79d33b1edd46cdf63c8b936f465d7'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 32
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 4672
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 4672
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    cmd_type: _py_str = ''
    name: _py_str = ''
    traj: _record_Ros1Trajectory_msgsJointTrajectory = _field(default_factory=lambda: Ros1Trajectory_msgsJointTrajectory())

    def encode(self):
        writer = _Writer(4672)
        _write_Ros1Interbotix_xs_msgsJointTrajectoryCommand(writer, self)
        wire = writer.finish()
        return _wire(wire, 32, 4672)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Interbotix_xs_msgsJointTrajectoryCommand:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 32, 4672))
        value = _read_Ros1Interbotix_xs_msgsJointTrajectoryCommand(reader)
        reader.end()
        return value

_record_Ros1Interbotix_xs_msgsJointTrajectoryCommand = Ros1Interbotix_xs_msgsJointTrajectoryCommand

def _write_Ros1Interbotix_xs_msgsJointTrajectoryCommand(writer, value):
    if type(value) is not Ros1Interbotix_xs_msgsJointTrajectoryCommand:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.cmd_type
    _write_text(writer, _part0, 128)
    _part1 = value.name
    _write_text(writer, _part1, 128)
    _part2 = value.traj
    _write_Ros1Trajectory_msgsJointTrajectory(writer, _part2)
    if not 32 <= len(writer.data) - _start <= 4672:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Interbotix_xs_msgsJointTrajectoryCommand(reader):
    _start = reader.position
    value = Ros1Interbotix_xs_msgsJointTrajectoryCommand()
    value.cmd_type = _read_text(reader, 128)
    value.name = _read_text(reader, 128)
    value.traj = _read_Ros1Trajectory_msgsJointTrajectory(reader)
    if not 32 <= reader.position - _start <= 4672:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Interbotix_xs_msgsLocobotJoy:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'interbotix_xs_msgs/LocobotJoy'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_6463e76903b4bd46f2cc65e2bc902d65d0d1424258f965b25e519c1e4a012613'
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
     {'name': 'GRIPPER_OPEN', 'type': 'int8', 'native_type': 'int8', 'literal': '19', 'value': '19'},
     {'name': 'GRIPPER_CLOSE', 'type': 'int8', 'native_type': 'int8', 'literal': '20', 'value': '20'},
     {'name': 'HOME_POSE', 'type': 'int8', 'native_type': 'int8', 'literal': '21', 'value': '21'},
     {'name': 'SLEEP_POSE', 'type': 'int8', 'native_type': 'int8', 'literal': '22', 'value': '22'},
     {'name': 'SPEED_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '23', 'value': '23'},
     {'name': 'SPEED_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '24', 'value': '24'},
     {'name': 'SPEED_COURSE', 'type': 'int8', 'native_type': 'int8', 'literal': '25', 'value': '25'},
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
    GRIPPER_OPEN: _ClassVar = 19
    GRIPPER_CLOSE: _ClassVar = 20
    HOME_POSE: _ClassVar = 21
    SLEEP_POSE: _ClassVar = 22
    SPEED_INC: _ClassVar = 23
    SPEED_DEC: _ClassVar = 24
    SPEED_COURSE: _ClassVar = 25
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
        _write_Ros1Interbotix_xs_msgsLocobotJoy(writer, self)
        wire = writer.finish()
        return _wire(wire, 30, 30)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Interbotix_xs_msgsLocobotJoy:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 30, 30))
        value = _read_Ros1Interbotix_xs_msgsLocobotJoy(reader)
        reader.end()
        return value

_record_Ros1Interbotix_xs_msgsLocobotJoy = Ros1Interbotix_xs_msgsLocobotJoy

def _write_Ros1Interbotix_xs_msgsLocobotJoy(writer, value):
    if type(value) is not Ros1Interbotix_xs_msgsLocobotJoy:
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

def _read_Ros1Interbotix_xs_msgsLocobotJoy(reader):
    _start = reader.position
    value = Ros1Interbotix_xs_msgsLocobotJoy()
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
class Ros1Interbotix_xs_msgsMotorGainsRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'interbotix_xs_msgs/MotorGainsRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_76fb61f914b65b53579fdbf64eb545a997f38c9b51111e6ae462c95169596009'
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
        _write_Ros1Interbotix_xs_msgsMotorGainsRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 36, 292)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Interbotix_xs_msgsMotorGainsRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 36, 292))
        value = _read_Ros1Interbotix_xs_msgsMotorGainsRequest(reader)
        reader.end()
        return value

_record_Ros1Interbotix_xs_msgsMotorGainsRequest = Ros1Interbotix_xs_msgsMotorGainsRequest

def _write_Ros1Interbotix_xs_msgsMotorGainsRequest(writer, value):
    if type(value) is not Ros1Interbotix_xs_msgsMotorGainsRequest:
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

def _read_Ros1Interbotix_xs_msgsMotorGainsRequest(reader):
    _start = reader.position
    value = Ros1Interbotix_xs_msgsMotorGainsRequest()
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
class Ros1Interbotix_xs_msgsMotorGainsResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'interbotix_xs_msgs/MotorGainsResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_813a545cdc27f32aad5d4716a649832feebeeaddae69abdf8f64d552f757fd89'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Interbotix_xs_msgsMotorGainsResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Interbotix_xs_msgsMotorGainsResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Interbotix_xs_msgsMotorGainsResponse(reader)
        reader.end()
        return value

_record_Ros1Interbotix_xs_msgsMotorGainsResponse = Ros1Interbotix_xs_msgsMotorGainsResponse

def _write_Ros1Interbotix_xs_msgsMotorGainsResponse(writer, value):
    if type(value) is not Ros1Interbotix_xs_msgsMotorGainsResponse:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros1Interbotix_xs_msgsMotorGainsResponse(reader):
    _start = reader.position
    value = Ros1Interbotix_xs_msgsMotorGainsResponse()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Interbotix_xs_msgsOperatingModesRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'interbotix_xs_msgs/OperatingModesRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_cc0defc5d8cb4c230ea3b0f3bc50a6d271bc395621792897d1e80aae62adb7b3'
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
        _write_Ros1Interbotix_xs_msgsOperatingModesRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 24, 536)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Interbotix_xs_msgsOperatingModesRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 24, 536))
        value = _read_Ros1Interbotix_xs_msgsOperatingModesRequest(reader)
        reader.end()
        return value

_record_Ros1Interbotix_xs_msgsOperatingModesRequest = Ros1Interbotix_xs_msgsOperatingModesRequest

def _write_Ros1Interbotix_xs_msgsOperatingModesRequest(writer, value):
    if type(value) is not Ros1Interbotix_xs_msgsOperatingModesRequest:
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

def _read_Ros1Interbotix_xs_msgsOperatingModesRequest(reader):
    _start = reader.position
    value = Ros1Interbotix_xs_msgsOperatingModesRequest()
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
class Ros1Interbotix_xs_msgsOperatingModesResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'interbotix_xs_msgs/OperatingModesResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_5249025c535de294ab7e25ed0089749a891cd55451811dbac7aeef7daa75347e'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Interbotix_xs_msgsOperatingModesResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Interbotix_xs_msgsOperatingModesResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Interbotix_xs_msgsOperatingModesResponse(reader)
        reader.end()
        return value

_record_Ros1Interbotix_xs_msgsOperatingModesResponse = Ros1Interbotix_xs_msgsOperatingModesResponse

def _write_Ros1Interbotix_xs_msgsOperatingModesResponse(writer, value):
    if type(value) is not Ros1Interbotix_xs_msgsOperatingModesResponse:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros1Interbotix_xs_msgsOperatingModesResponse(reader):
    _start = reader.position
    value = Ros1Interbotix_xs_msgsOperatingModesResponse()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Interbotix_xs_msgsRebootRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'interbotix_xs_msgs/RebootRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_5098fab3302fc6de5c2e24e82ca6f57ee4f358d9862ceb3a20c09435aa563f0a'
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
        _write_Ros1Interbotix_xs_msgsRebootRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 10, 266)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Interbotix_xs_msgsRebootRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 10, 266))
        value = _read_Ros1Interbotix_xs_msgsRebootRequest(reader)
        reader.end()
        return value

_record_Ros1Interbotix_xs_msgsRebootRequest = Ros1Interbotix_xs_msgsRebootRequest

def _write_Ros1Interbotix_xs_msgsRebootRequest(writer, value):
    if type(value) is not Ros1Interbotix_xs_msgsRebootRequest:
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

def _read_Ros1Interbotix_xs_msgsRebootRequest(reader):
    _start = reader.position
    value = Ros1Interbotix_xs_msgsRebootRequest()
    value.cmd_type = _read_text(reader, 128)
    value.name = _read_text(reader, 128)
    value.enable = _read_bool(reader)
    value.smart_reboot = _read_bool(reader)
    if not 10 <= reader.position - _start <= 266:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Interbotix_xs_msgsRebootResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'interbotix_xs_msgs/RebootResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_06aedc58f7bb6f26d5e54cd905f3d223ba297806e914a84a8fff02fe307a97a4'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Interbotix_xs_msgsRebootResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Interbotix_xs_msgsRebootResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Interbotix_xs_msgsRebootResponse(reader)
        reader.end()
        return value

_record_Ros1Interbotix_xs_msgsRebootResponse = Ros1Interbotix_xs_msgsRebootResponse

def _write_Ros1Interbotix_xs_msgsRebootResponse(writer, value):
    if type(value) is not Ros1Interbotix_xs_msgsRebootResponse:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros1Interbotix_xs_msgsRebootResponse(reader):
    _start = reader.position
    value = Ros1Interbotix_xs_msgsRebootResponse()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Interbotix_xs_msgsRegisterValuesRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'interbotix_xs_msgs/RegisterValuesRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_e36f16bc2726f62b78852f690f13540ff9ba93c9ee4363624c007e7819312a4a'
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
        _write_Ros1Interbotix_xs_msgsRegisterValuesRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 16, 400)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Interbotix_xs_msgsRegisterValuesRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 16, 400))
        value = _read_Ros1Interbotix_xs_msgsRegisterValuesRequest(reader)
        reader.end()
        return value

_record_Ros1Interbotix_xs_msgsRegisterValuesRequest = Ros1Interbotix_xs_msgsRegisterValuesRequest

def _write_Ros1Interbotix_xs_msgsRegisterValuesRequest(writer, value):
    if type(value) is not Ros1Interbotix_xs_msgsRegisterValuesRequest:
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

def _read_Ros1Interbotix_xs_msgsRegisterValuesRequest(reader):
    _start = reader.position
    value = Ros1Interbotix_xs_msgsRegisterValuesRequest()
    value.cmd_type = _read_text(reader, 128)
    value.name = _read_text(reader, 128)
    value.reg = _read_text(reader, 128)
    value.value = reader.integer(4, True)
    if not 16 <= reader.position - _start <= 400:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Interbotix_xs_msgsRegisterValuesResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'interbotix_xs_msgs/RegisterValuesResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_9c7d3492c5d51a8d05f4fa0c4218e00194dabfb602271ec8ffc3075af9d2e659'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 68
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 68
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    values: _py_list[_py_int] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(68)
        _write_Ros1Interbotix_xs_msgsRegisterValuesResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 68)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Interbotix_xs_msgsRegisterValuesResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 4, 68))
        value = _read_Ros1Interbotix_xs_msgsRegisterValuesResponse(reader)
        reader.end()
        return value

_record_Ros1Interbotix_xs_msgsRegisterValuesResponse = Ros1Interbotix_xs_msgsRegisterValuesResponse

def _write_Ros1Interbotix_xs_msgsRegisterValuesResponse(writer, value):
    if type(value) is not Ros1Interbotix_xs_msgsRegisterValuesResponse:
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

def _read_Ros1Interbotix_xs_msgsRegisterValuesResponse(reader):
    _start = reader.position
    value = Ros1Interbotix_xs_msgsRegisterValuesResponse()
    value.values = [reader.integer(4, True) for _ in range(_read_count(reader, 16, 4))]
    if not 4 <= reader.position - _start <= 68:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Interbotix_xs_msgsRobotInfoRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'interbotix_xs_msgs/RobotInfoRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_ead86305c002d1012c8779f9e7296776e27a3b00b4e3193acfdac16f79081176'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 264
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 264
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    cmd_type: _py_str = ''
    name: _py_str = ''

    def encode(self):
        writer = _Writer(264)
        _write_Ros1Interbotix_xs_msgsRobotInfoRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 264)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Interbotix_xs_msgsRobotInfoRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 264))
        value = _read_Ros1Interbotix_xs_msgsRobotInfoRequest(reader)
        reader.end()
        return value

_record_Ros1Interbotix_xs_msgsRobotInfoRequest = Ros1Interbotix_xs_msgsRobotInfoRequest

def _write_Ros1Interbotix_xs_msgsRobotInfoRequest(writer, value):
    if type(value) is not Ros1Interbotix_xs_msgsRobotInfoRequest:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.cmd_type
    _write_text(writer, _part0, 128)
    _part1 = value.name
    _write_text(writer, _part1, 128)
    if not 8 <= len(writer.data) - _start <= 264:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Interbotix_xs_msgsRobotInfoRequest(reader):
    _start = reader.position
    value = Ros1Interbotix_xs_msgsRobotInfoRequest()
    value.cmd_type = _read_text(reader, 128)
    value.name = _read_text(reader, 128)
    if not 8 <= reader.position - _start <= 264:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Interbotix_xs_msgsRobotInfoResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'interbotix_xs_msgs/RobotInfoResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_0dfb738c428366ca7450d932212e3cc69d86042432b2ddd7cd58da3c0b6b6d5d'
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
        _write_Ros1Interbotix_xs_msgsRobotInfoResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 42, 18474)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Interbotix_xs_msgsRobotInfoResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 42, 18474))
        value = _read_Ros1Interbotix_xs_msgsRobotInfoResponse(reader)
        reader.end()
        return value

_record_Ros1Interbotix_xs_msgsRobotInfoResponse = Ros1Interbotix_xs_msgsRobotInfoResponse

def _write_Ros1Interbotix_xs_msgsRobotInfoResponse(writer, value):
    if type(value) is not Ros1Interbotix_xs_msgsRobotInfoResponse:
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

def _read_Ros1Interbotix_xs_msgsRobotInfoResponse(reader):
    _start = reader.position
    value = Ros1Interbotix_xs_msgsRobotInfoResponse()
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
class Ros1Interbotix_xs_msgsTorqueEnableRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'interbotix_xs_msgs/TorqueEnableRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_0586e2a4917ddf684f7834ada07775ccc118f0b2abbfd7fda72d4b76be8a146a'
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
        _write_Ros1Interbotix_xs_msgsTorqueEnableRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 9, 265)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Interbotix_xs_msgsTorqueEnableRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 9, 265))
        value = _read_Ros1Interbotix_xs_msgsTorqueEnableRequest(reader)
        reader.end()
        return value

_record_Ros1Interbotix_xs_msgsTorqueEnableRequest = Ros1Interbotix_xs_msgsTorqueEnableRequest

def _write_Ros1Interbotix_xs_msgsTorqueEnableRequest(writer, value):
    if type(value) is not Ros1Interbotix_xs_msgsTorqueEnableRequest:
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

def _read_Ros1Interbotix_xs_msgsTorqueEnableRequest(reader):
    _start = reader.position
    value = Ros1Interbotix_xs_msgsTorqueEnableRequest()
    value.cmd_type = _read_text(reader, 128)
    value.name = _read_text(reader, 128)
    value.enable = _read_bool(reader)
    if not 9 <= reader.position - _start <= 265:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Interbotix_xs_msgsTorqueEnableResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'interbotix_xs_msgs/TorqueEnableResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_6f010bb51e876d2e66fa7a227f13d4484ae800dd5ae256cfe770ad2b58f6ad44'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Interbotix_xs_msgsTorqueEnableResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Interbotix_xs_msgsTorqueEnableResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Interbotix_xs_msgsTorqueEnableResponse(reader)
        reader.end()
        return value

_record_Ros1Interbotix_xs_msgsTorqueEnableResponse = Ros1Interbotix_xs_msgsTorqueEnableResponse

def _write_Ros1Interbotix_xs_msgsTorqueEnableResponse(writer, value):
    if type(value) is not Ros1Interbotix_xs_msgsTorqueEnableResponse:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros1Interbotix_xs_msgsTorqueEnableResponse(reader):
    _start = reader.position
    value = Ros1Interbotix_xs_msgsTorqueEnableResponse()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Interbotix_xs_msgsTurretJoy:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'interbotix_xs_msgs/TurretJoy'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_723dfe84ba93acb0acee9131da0af65fe5b508f33e43d5ff9d30d2137b102b70'
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
     {'name': 'SPEED_COURSE', 'type': 'int8', 'native_type': 'int8', 'literal': '8', 'value': '8'},
     {'name': 'SPEED_FINE', 'type': 'int8', 'native_type': 'int8', 'literal': '9', 'value': '9'}]
    PAN_CCW: _ClassVar = 1
    PAN_CW: _ClassVar = 2
    TILT_UP: _ClassVar = 3
    TILT_DOWN: _ClassVar = 4
    PAN_TILT_HOME: _ClassVar = 5
    SPEED_INC: _ClassVar = 6
    SPEED_DEC: _ClassVar = 7
    SPEED_COURSE: _ClassVar = 8
    SPEED_FINE: _ClassVar = 9
    pan_cmd: _py_int = 0
    tilt_cmd: _py_int = 0
    speed_cmd: _py_int = 0
    speed_toggle_cmd: _py_int = 0

    def encode(self):
        writer = _Writer(4)
        _write_Ros1Interbotix_xs_msgsTurretJoy(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 4)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Interbotix_xs_msgsTurretJoy:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 4, 4))
        value = _read_Ros1Interbotix_xs_msgsTurretJoy(reader)
        reader.end()
        return value

_record_Ros1Interbotix_xs_msgsTurretJoy = Ros1Interbotix_xs_msgsTurretJoy

def _write_Ros1Interbotix_xs_msgsTurretJoy(writer, value):
    if type(value) is not Ros1Interbotix_xs_msgsTurretJoy:
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

def _read_Ros1Interbotix_xs_msgsTurretJoy(reader):
    _start = reader.position
    value = Ros1Interbotix_xs_msgsTurretJoy()
    value.pan_cmd = reader.integer(1, True)
    value.tilt_cmd = reader.integer(1, True)
    value.speed_cmd = reader.integer(1, True)
    value.speed_toggle_cmd = reader.integer(1, True)
    if not 4 <= reader.position - _start <= 4:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Xarm_msgsClearErrRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'xarm_msgs/ClearErrRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_ce83a45aee719e0916f27f8caab41c12bb15d04942bfdd0489047e7b79f3b9e8'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Xarm_msgsClearErrRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Xarm_msgsClearErrRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Xarm_msgsClearErrRequest(reader)
        reader.end()
        return value

_record_Ros1Xarm_msgsClearErrRequest = Ros1Xarm_msgsClearErrRequest

def _write_Ros1Xarm_msgsClearErrRequest(writer, value):
    if type(value) is not Ros1Xarm_msgsClearErrRequest:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros1Xarm_msgsClearErrRequest(reader):
    _start = reader.position
    value = Ros1Xarm_msgsClearErrRequest()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Xarm_msgsClearErrResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'xarm_msgs/ClearErrResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_8edb7089d54f07c68008fdf769fa42d37da738066fce87da976c4888adf8a1a1'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 6
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 134
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 134
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    ret: _py_int = 0
    message: _py_str = ''

    def encode(self):
        writer = _Writer(134)
        _write_Ros1Xarm_msgsClearErrResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 6, 134)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Xarm_msgsClearErrResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 6, 134))
        value = _read_Ros1Xarm_msgsClearErrResponse(reader)
        reader.end()
        return value

_record_Ros1Xarm_msgsClearErrResponse = Ros1Xarm_msgsClearErrResponse

def _write_Ros1Xarm_msgsClearErrResponse(writer, value):
    if type(value) is not Ros1Xarm_msgsClearErrResponse:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.ret
    writer.integer(_part0, 2, True)
    _part1 = value.message
    _write_text(writer, _part1, 128)
    if not 6 <= len(writer.data) - _start <= 134:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Xarm_msgsClearErrResponse(reader):
    _start = reader.position
    value = Ros1Xarm_msgsClearErrResponse()
    value.ret = reader.integer(2, True)
    value.message = _read_text(reader, 128)
    if not 6 <= reader.position - _start <= 134:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Xarm_msgsConfigToolModbusRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'xarm_msgs/ConfigToolModbusRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_2a1e6f98ac1ec94f8d670177cee7aa7ba3b60249b4311f42c518cf90f8575ae5'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    baud_rate: _py_int = 0
    timeout_ms: _py_int = 0

    def encode(self):
        writer = _Writer(8)
        _write_Ros1Xarm_msgsConfigToolModbusRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 8)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Xarm_msgsConfigToolModbusRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 8))
        value = _read_Ros1Xarm_msgsConfigToolModbusRequest(reader)
        reader.end()
        return value

_record_Ros1Xarm_msgsConfigToolModbusRequest = Ros1Xarm_msgsConfigToolModbusRequest

def _write_Ros1Xarm_msgsConfigToolModbusRequest(writer, value):
    if type(value) is not Ros1Xarm_msgsConfigToolModbusRequest:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.baud_rate
    writer.integer(_part0, 4, True)
    _part1 = value.timeout_ms
    writer.integer(_part1, 4, True)
    if not 8 <= len(writer.data) - _start <= 8:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Xarm_msgsConfigToolModbusRequest(reader):
    _start = reader.position
    value = Ros1Xarm_msgsConfigToolModbusRequest()
    value.baud_rate = reader.integer(4, True)
    value.timeout_ms = reader.integer(4, True)
    if not 8 <= reader.position - _start <= 8:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Xarm_msgsConfigToolModbusResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'xarm_msgs/ConfigToolModbusResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_1080c7a283e1a9406bc5e04432f074732d7b0f175e5e04d87c3ea811e4e9503b'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 6
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 134
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 134
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    message: _py_str = ''
    ret: _py_int = 0

    def encode(self):
        writer = _Writer(134)
        _write_Ros1Xarm_msgsConfigToolModbusResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 6, 134)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Xarm_msgsConfigToolModbusResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 6, 134))
        value = _read_Ros1Xarm_msgsConfigToolModbusResponse(reader)
        reader.end()
        return value

_record_Ros1Xarm_msgsConfigToolModbusResponse = Ros1Xarm_msgsConfigToolModbusResponse

def _write_Ros1Xarm_msgsConfigToolModbusResponse(writer, value):
    if type(value) is not Ros1Xarm_msgsConfigToolModbusResponse:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.message
    _write_text(writer, _part0, 128)
    _part1 = value.ret
    writer.integer(_part1, 2, True)
    if not 6 <= len(writer.data) - _start <= 134:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Xarm_msgsConfigToolModbusResponse(reader):
    _start = reader.position
    value = Ros1Xarm_msgsConfigToolModbusResponse()
    value.message = _read_text(reader, 128)
    value.ret = reader.integer(2, True)
    if not 6 <= reader.position - _start <= 134:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Xarm_msgsGetAnalogIORequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'xarm_msgs/GetAnalogIORequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_08bf2816e784cc03d6d2ea33d71e457038f9071f8d80726d05f566d60ab961e8'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 2
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 2
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 2
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    port_num: _py_int = 0

    def encode(self):
        writer = _Writer(2)
        _write_Ros1Xarm_msgsGetAnalogIORequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 2, 2)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Xarm_msgsGetAnalogIORequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 2, 2))
        value = _read_Ros1Xarm_msgsGetAnalogIORequest(reader)
        reader.end()
        return value

_record_Ros1Xarm_msgsGetAnalogIORequest = Ros1Xarm_msgsGetAnalogIORequest

def _write_Ros1Xarm_msgsGetAnalogIORequest(writer, value):
    if type(value) is not Ros1Xarm_msgsGetAnalogIORequest:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.port_num
    writer.integer(_part0, 2, True)
    if not 2 <= len(writer.data) - _start <= 2:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Xarm_msgsGetAnalogIORequest(reader):
    _start = reader.position
    value = Ros1Xarm_msgsGetAnalogIORequest()
    value.port_num = reader.integer(2, True)
    if not 2 <= reader.position - _start <= 2:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Xarm_msgsGetAnalogIOResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'xarm_msgs/GetAnalogIOResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_7a70c05e7e63840aa7ba045fff4ae119046a0f438d8f3d9dcc436daa93bf7968'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 10
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 138
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 138
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    analog_value: _py_float = 0.0
    ret: _py_int = 0
    message: _py_str = ''

    def encode(self):
        writer = _Writer(138)
        _write_Ros1Xarm_msgsGetAnalogIOResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 10, 138)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Xarm_msgsGetAnalogIOResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 10, 138))
        value = _read_Ros1Xarm_msgsGetAnalogIOResponse(reader)
        reader.end()
        return value

_record_Ros1Xarm_msgsGetAnalogIOResponse = Ros1Xarm_msgsGetAnalogIOResponse

def _write_Ros1Xarm_msgsGetAnalogIOResponse(writer, value):
    if type(value) is not Ros1Xarm_msgsGetAnalogIOResponse:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.analog_value
    writer.f32(_part0)
    _part1 = value.ret
    writer.integer(_part1, 2, True)
    _part2 = value.message
    _write_text(writer, _part2, 128)
    if not 10 <= len(writer.data) - _start <= 138:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Xarm_msgsGetAnalogIOResponse(reader):
    _start = reader.position
    value = Ros1Xarm_msgsGetAnalogIOResponse()
    value.analog_value = reader.f32()
    value.ret = reader.integer(2, True)
    value.message = _read_text(reader, 128)
    if not 10 <= reader.position - _start <= 138:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Xarm_msgsGetControllerDigitalIORequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'xarm_msgs/GetControllerDigitalIORequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_122db0972339f94d0bf6f4028643a020e85b286a46fa69dec71e7e998bf43f3c'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 2
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 2
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 2
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    io_num: _py_int = 0

    def encode(self):
        writer = _Writer(2)
        _write_Ros1Xarm_msgsGetControllerDigitalIORequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 2, 2)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Xarm_msgsGetControllerDigitalIORequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 2, 2))
        value = _read_Ros1Xarm_msgsGetControllerDigitalIORequest(reader)
        reader.end()
        return value

_record_Ros1Xarm_msgsGetControllerDigitalIORequest = Ros1Xarm_msgsGetControllerDigitalIORequest

def _write_Ros1Xarm_msgsGetControllerDigitalIORequest(writer, value):
    if type(value) is not Ros1Xarm_msgsGetControllerDigitalIORequest:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.io_num
    writer.integer(_part0, 2, True)
    if not 2 <= len(writer.data) - _start <= 2:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Xarm_msgsGetControllerDigitalIORequest(reader):
    _start = reader.position
    value = Ros1Xarm_msgsGetControllerDigitalIORequest()
    value.io_num = reader.integer(2, True)
    if not 2 <= reader.position - _start <= 2:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Xarm_msgsGetControllerDigitalIOResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'xarm_msgs/GetControllerDigitalIOResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_b3ec2406480ce53df0f0c307ab2060db95b9aec06ff4883bbf5779a602d385a3'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 136
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 136
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    ret: _py_int = 0
    value: _py_int = 0
    message: _py_str = ''

    def encode(self):
        writer = _Writer(136)
        _write_Ros1Xarm_msgsGetControllerDigitalIOResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 8, 136)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Xarm_msgsGetControllerDigitalIOResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 8, 136))
        value = _read_Ros1Xarm_msgsGetControllerDigitalIOResponse(reader)
        reader.end()
        return value

_record_Ros1Xarm_msgsGetControllerDigitalIOResponse = Ros1Xarm_msgsGetControllerDigitalIOResponse

def _write_Ros1Xarm_msgsGetControllerDigitalIOResponse(writer, value):
    if type(value) is not Ros1Xarm_msgsGetControllerDigitalIOResponse:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.ret
    writer.integer(_part0, 2, True)
    _part1 = value.value
    writer.integer(_part1, 2, True)
    _part2 = value.message
    _write_text(writer, _part2, 128)
    if not 8 <= len(writer.data) - _start <= 136:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Xarm_msgsGetControllerDigitalIOResponse(reader):
    _start = reader.position
    value = Ros1Xarm_msgsGetControllerDigitalIOResponse()
    value.ret = reader.integer(2, True)
    value.value = reader.integer(2, True)
    value.message = _read_text(reader, 128)
    if not 8 <= reader.position - _start <= 136:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Xarm_msgsGetDigitalIORequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'xarm_msgs/GetDigitalIORequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_edd78f1a2ed7ab9fc8541c8b5f0f9ff32713c949c03b66728ef7c41ed50a23da'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Xarm_msgsGetDigitalIORequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Xarm_msgsGetDigitalIORequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Xarm_msgsGetDigitalIORequest(reader)
        reader.end()
        return value

_record_Ros1Xarm_msgsGetDigitalIORequest = Ros1Xarm_msgsGetDigitalIORequest

def _write_Ros1Xarm_msgsGetDigitalIORequest(writer, value):
    if type(value) is not Ros1Xarm_msgsGetDigitalIORequest:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros1Xarm_msgsGetDigitalIORequest(reader):
    _start = reader.position
    value = Ros1Xarm_msgsGetDigitalIORequest()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Xarm_msgsGetDigitalIOResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'xarm_msgs/GetDigitalIOResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_7b727d69650d14f14d18d42f2cf5157062d21b2edb1ff856c3d3545c971a07b2'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 14
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 142
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 142
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    digital_1: _py_int = 0
    digital_2: _py_int = 0
    ret: _py_int = 0
    message: _py_str = ''

    def encode(self):
        writer = _Writer(142)
        _write_Ros1Xarm_msgsGetDigitalIOResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 14, 142)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Xarm_msgsGetDigitalIOResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 14, 142))
        value = _read_Ros1Xarm_msgsGetDigitalIOResponse(reader)
        reader.end()
        return value

_record_Ros1Xarm_msgsGetDigitalIOResponse = Ros1Xarm_msgsGetDigitalIOResponse

def _write_Ros1Xarm_msgsGetDigitalIOResponse(writer, value):
    if type(value) is not Ros1Xarm_msgsGetDigitalIOResponse:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.digital_1
    writer.integer(_part0, 4, True)
    _part1 = value.digital_2
    writer.integer(_part1, 4, True)
    _part2 = value.ret
    writer.integer(_part2, 2, True)
    _part3 = value.message
    _write_text(writer, _part3, 128)
    if not 14 <= len(writer.data) - _start <= 142:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Xarm_msgsGetDigitalIOResponse(reader):
    _start = reader.position
    value = Ros1Xarm_msgsGetDigitalIOResponse()
    value.digital_1 = reader.integer(4, True)
    value.digital_2 = reader.integer(4, True)
    value.ret = reader.integer(2, True)
    value.message = _read_text(reader, 128)
    if not 14 <= reader.position - _start <= 142:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Xarm_msgsGetErrRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'xarm_msgs/GetErrRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_80135f34c2643001ed9d387e3665176a01c44b651c9db7ca0d549472c7f2f531'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Xarm_msgsGetErrRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Xarm_msgsGetErrRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Xarm_msgsGetErrRequest(reader)
        reader.end()
        return value

_record_Ros1Xarm_msgsGetErrRequest = Ros1Xarm_msgsGetErrRequest

def _write_Ros1Xarm_msgsGetErrRequest(writer, value):
    if type(value) is not Ros1Xarm_msgsGetErrRequest:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros1Xarm_msgsGetErrRequest(reader):
    _start = reader.position
    value = Ros1Xarm_msgsGetErrRequest()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Xarm_msgsGetErrResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'xarm_msgs/GetErrResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_4ea68a3d0983f04f6e7dada0885d456544ee4fa9ef0d2abc60a92cc18bda5037'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 6
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 134
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 134
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    err: _py_int = 0
    message: _py_str = ''

    def encode(self):
        writer = _Writer(134)
        _write_Ros1Xarm_msgsGetErrResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 6, 134)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Xarm_msgsGetErrResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 6, 134))
        value = _read_Ros1Xarm_msgsGetErrResponse(reader)
        reader.end()
        return value

_record_Ros1Xarm_msgsGetErrResponse = Ros1Xarm_msgsGetErrResponse

def _write_Ros1Xarm_msgsGetErrResponse(writer, value):
    if type(value) is not Ros1Xarm_msgsGetErrResponse:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.err
    writer.integer(_part0, 2, True)
    _part1 = value.message
    _write_text(writer, _part1, 128)
    if not 6 <= len(writer.data) - _start <= 134:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Xarm_msgsGetErrResponse(reader):
    _start = reader.position
    value = Ros1Xarm_msgsGetErrResponse()
    value.err = reader.integer(2, True)
    value.message = _read_text(reader, 128)
    if not 6 <= reader.position - _start <= 134:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Xarm_msgsGripperConfigRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'xarm_msgs/GripperConfigRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_b82ba6fd59917a738ec433efd16f238d6538dfcaa3b6718f8f8fa1fa1d01c8c4'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 4
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 4
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    pulse_vel: _py_float = 0.0

    def encode(self):
        writer = _Writer(4)
        _write_Ros1Xarm_msgsGripperConfigRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 4)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Xarm_msgsGripperConfigRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 4, 4))
        value = _read_Ros1Xarm_msgsGripperConfigRequest(reader)
        reader.end()
        return value

_record_Ros1Xarm_msgsGripperConfigRequest = Ros1Xarm_msgsGripperConfigRequest

def _write_Ros1Xarm_msgsGripperConfigRequest(writer, value):
    if type(value) is not Ros1Xarm_msgsGripperConfigRequest:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.pulse_vel
    writer.f32(_part0)
    if not 4 <= len(writer.data) - _start <= 4:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Xarm_msgsGripperConfigRequest(reader):
    _start = reader.position
    value = Ros1Xarm_msgsGripperConfigRequest()
    value.pulse_vel = reader.f32()
    if not 4 <= reader.position - _start <= 4:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Xarm_msgsGripperConfigResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'xarm_msgs/GripperConfigResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_5e74e8890eda1059018d78fd4bddd8ae8154115268ee6197ef9369397f82dbb5'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 6
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 134
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 134
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    ret: _py_int = 0
    message: _py_str = ''

    def encode(self):
        writer = _Writer(134)
        _write_Ros1Xarm_msgsGripperConfigResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 6, 134)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Xarm_msgsGripperConfigResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 6, 134))
        value = _read_Ros1Xarm_msgsGripperConfigResponse(reader)
        reader.end()
        return value

_record_Ros1Xarm_msgsGripperConfigResponse = Ros1Xarm_msgsGripperConfigResponse

def _write_Ros1Xarm_msgsGripperConfigResponse(writer, value):
    if type(value) is not Ros1Xarm_msgsGripperConfigResponse:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.ret
    writer.integer(_part0, 2, True)
    _part1 = value.message
    _write_text(writer, _part1, 128)
    if not 6 <= len(writer.data) - _start <= 134:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Xarm_msgsGripperConfigResponse(reader):
    _start = reader.position
    value = Ros1Xarm_msgsGripperConfigResponse()
    value.ret = reader.integer(2, True)
    value.message = _read_text(reader, 128)
    if not 6 <= reader.position - _start <= 134:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Xarm_msgsGripperMoveRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'xarm_msgs/GripperMoveRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_cd6b6852054385df9f6a65c12f8d887adbb1e5d01e9ba5367fef38c738ffbae2'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 4
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 4
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    pulse_pos: _py_float = 0.0

    def encode(self):
        writer = _Writer(4)
        _write_Ros1Xarm_msgsGripperMoveRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 4)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Xarm_msgsGripperMoveRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 4, 4))
        value = _read_Ros1Xarm_msgsGripperMoveRequest(reader)
        reader.end()
        return value

_record_Ros1Xarm_msgsGripperMoveRequest = Ros1Xarm_msgsGripperMoveRequest

def _write_Ros1Xarm_msgsGripperMoveRequest(writer, value):
    if type(value) is not Ros1Xarm_msgsGripperMoveRequest:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.pulse_pos
    writer.f32(_part0)
    if not 4 <= len(writer.data) - _start <= 4:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Xarm_msgsGripperMoveRequest(reader):
    _start = reader.position
    value = Ros1Xarm_msgsGripperMoveRequest()
    value.pulse_pos = reader.f32()
    if not 4 <= reader.position - _start <= 4:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Xarm_msgsGripperMoveResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'xarm_msgs/GripperMoveResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_2802739906ad3231f0f4e2a60340dda1a5459be25907d68f4981e62faa6b2998'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 6
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 134
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 134
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    ret: _py_int = 0
    message: _py_str = ''

    def encode(self):
        writer = _Writer(134)
        _write_Ros1Xarm_msgsGripperMoveResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 6, 134)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Xarm_msgsGripperMoveResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 6, 134))
        value = _read_Ros1Xarm_msgsGripperMoveResponse(reader)
        reader.end()
        return value

_record_Ros1Xarm_msgsGripperMoveResponse = Ros1Xarm_msgsGripperMoveResponse

def _write_Ros1Xarm_msgsGripperMoveResponse(writer, value):
    if type(value) is not Ros1Xarm_msgsGripperMoveResponse:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.ret
    writer.integer(_part0, 2, True)
    _part1 = value.message
    _write_text(writer, _part1, 128)
    if not 6 <= len(writer.data) - _start <= 134:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Xarm_msgsGripperMoveResponse(reader):
    _start = reader.position
    value = Ros1Xarm_msgsGripperMoveResponse()
    value.ret = reader.integer(2, True)
    value.message = _read_text(reader, 128)
    if not 6 <= reader.position - _start <= 134:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Xarm_msgsGripperStateRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'xarm_msgs/GripperStateRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_96f47b84fe0876daf4cfb6cb46df97783ba7d38a4b3cef749e699d029db59d5d'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 0
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 0
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []

    def encode(self):
        writer = _Writer(0)
        _write_Ros1Xarm_msgsGripperStateRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 0, 0)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Xarm_msgsGripperStateRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 0, 0))
        value = _read_Ros1Xarm_msgsGripperStateRequest(reader)
        reader.end()
        return value

_record_Ros1Xarm_msgsGripperStateRequest = Ros1Xarm_msgsGripperStateRequest

def _write_Ros1Xarm_msgsGripperStateRequest(writer, value):
    if type(value) is not Ros1Xarm_msgsGripperStateRequest:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    if not 0 <= len(writer.data) - _start <= 0:
        raise ValueError('nested encoded record aggregate extent')
    pass

def _read_Ros1Xarm_msgsGripperStateRequest(reader):
    _start = reader.position
    value = Ros1Xarm_msgsGripperStateRequest()
    if not 0 <= reader.position - _start <= 0:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Xarm_msgsGripperStateResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'xarm_msgs/GripperStateResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_781669bd7ab4a0189b137cf07ab98b3382f17ad088a8818616caeaa70e27a0e4'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 6
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 6
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 6
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    curr_pos: _py_float = 0.0
    err_code: _py_int = 0

    def encode(self):
        writer = _Writer(6)
        _write_Ros1Xarm_msgsGripperStateResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 6, 6)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Xarm_msgsGripperStateResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 6, 6))
        value = _read_Ros1Xarm_msgsGripperStateResponse(reader)
        reader.end()
        return value

_record_Ros1Xarm_msgsGripperStateResponse = Ros1Xarm_msgsGripperStateResponse

def _write_Ros1Xarm_msgsGripperStateResponse(writer, value):
    if type(value) is not Ros1Xarm_msgsGripperStateResponse:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.curr_pos
    writer.f32(_part0)
    _part1 = value.err_code
    writer.integer(_part1, 2, True)
    if not 6 <= len(writer.data) - _start <= 6:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Xarm_msgsGripperStateResponse(reader):
    _start = reader.position
    value = Ros1Xarm_msgsGripperStateResponse()
    value.curr_pos = reader.f32()
    value.err_code = reader.integer(2, True)
    if not 6 <= reader.position - _start <= 6:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Xarm_msgsIOState:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'xarm_msgs/IOState'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_93ef0c71a5fed6eaa7c8e87447b280778ffd05c376cf41a577c71acfeb02d996'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 16
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 16
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 16
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    digital_1: _py_int = 0
    digital_2: _py_int = 0
    analog_1: _py_float = 0.0
    analog_2: _py_float = 0.0

    def encode(self):
        writer = _Writer(16)
        _write_Ros1Xarm_msgsIOState(writer, self)
        wire = writer.finish()
        return _wire(wire, 16, 16)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Xarm_msgsIOState:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 16, 16))
        value = _read_Ros1Xarm_msgsIOState(reader)
        reader.end()
        return value

_record_Ros1Xarm_msgsIOState = Ros1Xarm_msgsIOState

def _write_Ros1Xarm_msgsIOState(writer, value):
    if type(value) is not Ros1Xarm_msgsIOState:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.digital_1
    writer.integer(_part0, 4, True)
    _part1 = value.digital_2
    writer.integer(_part1, 4, True)
    _part2 = value.analog_1
    writer.f32(_part2)
    _part3 = value.analog_2
    writer.f32(_part3)
    if not 16 <= len(writer.data) - _start <= 16:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Xarm_msgsIOState(reader):
    _start = reader.position
    value = Ros1Xarm_msgsIOState()
    value.digital_1 = reader.integer(4, True)
    value.digital_2 = reader.integer(4, True)
    value.analog_1 = reader.f32()
    value.analog_2 = reader.f32()
    if not 16 <= reader.position - _start <= 16:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Xarm_msgsMoveRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'xarm_msgs/MoveRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_b0e6f307ca9a12c92e3b2a6acbc79b0aba223e67788a060e5dc443240c9235e5'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 20
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 84
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 84
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    pose: _py_list[_py_float] = _field(default_factory=lambda: [])
    mvvelo: _py_float = 0.0
    mvacc: _py_float = 0.0
    mvtime: _py_float = 0.0
    mvradii: _py_float = 0.0

    def encode(self):
        writer = _Writer(84)
        _write_Ros1Xarm_msgsMoveRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 20, 84)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Xarm_msgsMoveRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 20, 84))
        value = _read_Ros1Xarm_msgsMoveRequest(reader)
        reader.end()
        return value

_record_Ros1Xarm_msgsMoveRequest = Ros1Xarm_msgsMoveRequest

def _write_Ros1Xarm_msgsMoveRequest(writer, value):
    if type(value) is not Ros1Xarm_msgsMoveRequest:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.pose
    if type(_part0) not in (list, tuple):
        raise TypeError('array value required')
    _count0 = len(_part0)
    if _count0 > 16:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count0, 4)
    for _index in range(_count0):
        _element = _part0[_index]
        writer.f32(_element)
    _part1 = value.mvvelo
    writer.f32(_part1)
    _part2 = value.mvacc
    writer.f32(_part2)
    _part3 = value.mvtime
    writer.f32(_part3)
    _part4 = value.mvradii
    writer.f32(_part4)
    if not 20 <= len(writer.data) - _start <= 84:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Xarm_msgsMoveRequest(reader):
    _start = reader.position
    value = Ros1Xarm_msgsMoveRequest()
    value.pose = [reader.f32() for _ in range(_read_count(reader, 16, 4))]
    value.mvvelo = reader.f32()
    value.mvacc = reader.f32()
    value.mvtime = reader.f32()
    value.mvradii = reader.f32()
    if not 20 <= reader.position - _start <= 84:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Xarm_msgsMoveResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'xarm_msgs/MoveResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_5ebf8749e513dcb301f91344890ee5d60e5a8e60fab37dbfe88360f68ba0b658'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 6
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 134
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 134
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    ret: _py_int = 0
    message: _py_str = ''

    def encode(self):
        writer = _Writer(134)
        _write_Ros1Xarm_msgsMoveResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 6, 134)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Xarm_msgsMoveResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 6, 134))
        value = _read_Ros1Xarm_msgsMoveResponse(reader)
        reader.end()
        return value

_record_Ros1Xarm_msgsMoveResponse = Ros1Xarm_msgsMoveResponse

def _write_Ros1Xarm_msgsMoveResponse(writer, value):
    if type(value) is not Ros1Xarm_msgsMoveResponse:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.ret
    writer.integer(_part0, 2, True)
    _part1 = value.message
    _write_text(writer, _part1, 128)
    if not 6 <= len(writer.data) - _start <= 134:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Xarm_msgsMoveResponse(reader):
    _start = reader.position
    value = Ros1Xarm_msgsMoveResponse()
    value.ret = reader.integer(2, True)
    value.message = _read_text(reader, 128)
    if not 6 <= reader.position - _start <= 134:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Xarm_msgsRobotMsg:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'xarm_msgs/RobotMsg'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_0e645cbe57caece23f38f4a23ca610d3be2f4367841c2f493317d23b39df9e41'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 66
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 130
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 130
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    state: _py_int = 0
    mode: _py_int = 0
    cmdnum: _py_int = 0
    mt_brake: _py_int = 0
    mt_able: _py_int = 0
    err: _py_int = 0
    warn: _py_int = 0
    angle: _py_list[_py_float] = _field(default_factory=lambda: [])
    pose: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])
    offset: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(6)])

    def encode(self):
        writer = _Writer(130)
        _write_Ros1Xarm_msgsRobotMsg(writer, self)
        wire = writer.finish()
        return _wire(wire, 66, 130)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Xarm_msgsRobotMsg:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 66, 130))
        value = _read_Ros1Xarm_msgsRobotMsg(reader)
        reader.end()
        return value

_record_Ros1Xarm_msgsRobotMsg = Ros1Xarm_msgsRobotMsg

def _write_Ros1Xarm_msgsRobotMsg(writer, value):
    if type(value) is not Ros1Xarm_msgsRobotMsg:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.state
    writer.integer(_part0, 2, True)
    _part1 = value.mode
    writer.integer(_part1, 2, True)
    _part2 = value.cmdnum
    writer.integer(_part2, 2, True)
    _part3 = value.mt_brake
    writer.integer(_part3, 2, True)
    _part4 = value.mt_able
    writer.integer(_part4, 2, True)
    _part5 = value.err
    writer.integer(_part5, 2, True)
    _part6 = value.warn
    writer.integer(_part6, 2, True)
    _part7 = value.angle
    if type(_part7) not in (list, tuple):
        raise TypeError('array value required')
    _count7 = len(_part7)
    if _count7 > 16:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count7, 4)
    for _index in range(_count7):
        _element = _part7[_index]
        writer.f32(_element)
    _part8 = value.pose
    if type(_part8) not in (list, tuple):
        raise TypeError('array value required')
    _count8 = len(_part8)
    if _count8 != 6:
        raise ValueError('fixed/sequence count bound')
    for _index in range(_count8):
        _element = _part8[_index]
        writer.f32(_element)
    _part9 = value.offset
    if type(_part9) not in (list, tuple):
        raise TypeError('array value required')
    _count9 = len(_part9)
    if _count9 != 6:
        raise ValueError('fixed/sequence count bound')
    for _index in range(_count9):
        _element = _part9[_index]
        writer.f32(_element)
    if not 66 <= len(writer.data) - _start <= 130:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Xarm_msgsRobotMsg(reader):
    _start = reader.position
    value = Ros1Xarm_msgsRobotMsg()
    value.state = reader.integer(2, True)
    value.mode = reader.integer(2, True)
    value.cmdnum = reader.integer(2, True)
    value.mt_brake = reader.integer(2, True)
    value.mt_able = reader.integer(2, True)
    value.err = reader.integer(2, True)
    value.warn = reader.integer(2, True)
    value.angle = [reader.f32() for _ in range(_read_count(reader, 16, 4))]
    value.pose = [reader.f32() for _ in range(6)]
    value.offset = [reader.f32() for _ in range(6)]
    if not 66 <= reader.position - _start <= 130:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Xarm_msgsSetAxisRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'xarm_msgs/SetAxisRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_e9c45f00c83898744975890928756584b0646cf287024b3cb841380c368639f6'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 4
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 4
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    id: _py_int = 0
    data: _py_int = 0

    def encode(self):
        writer = _Writer(4)
        _write_Ros1Xarm_msgsSetAxisRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 4)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Xarm_msgsSetAxisRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 4, 4))
        value = _read_Ros1Xarm_msgsSetAxisRequest(reader)
        reader.end()
        return value

_record_Ros1Xarm_msgsSetAxisRequest = Ros1Xarm_msgsSetAxisRequest

def _write_Ros1Xarm_msgsSetAxisRequest(writer, value):
    if type(value) is not Ros1Xarm_msgsSetAxisRequest:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.id
    writer.integer(_part0, 2, True)
    _part1 = value.data
    writer.integer(_part1, 2, True)
    if not 4 <= len(writer.data) - _start <= 4:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Xarm_msgsSetAxisRequest(reader):
    _start = reader.position
    value = Ros1Xarm_msgsSetAxisRequest()
    value.id = reader.integer(2, True)
    value.data = reader.integer(2, True)
    if not 4 <= reader.position - _start <= 4:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Xarm_msgsSetAxisResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'xarm_msgs/SetAxisResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_7f383a428f1792369302fb7fef16b4b5c0cc9645e5d835472d2721448979daa7'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 6
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 134
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 134
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    ret: _py_int = 0
    message: _py_str = ''

    def encode(self):
        writer = _Writer(134)
        _write_Ros1Xarm_msgsSetAxisResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 6, 134)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Xarm_msgsSetAxisResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 6, 134))
        value = _read_Ros1Xarm_msgsSetAxisResponse(reader)
        reader.end()
        return value

_record_Ros1Xarm_msgsSetAxisResponse = Ros1Xarm_msgsSetAxisResponse

def _write_Ros1Xarm_msgsSetAxisResponse(writer, value):
    if type(value) is not Ros1Xarm_msgsSetAxisResponse:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.ret
    writer.integer(_part0, 2, True)
    _part1 = value.message
    _write_text(writer, _part1, 128)
    if not 6 <= len(writer.data) - _start <= 134:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Xarm_msgsSetAxisResponse(reader):
    _start = reader.position
    value = Ros1Xarm_msgsSetAxisResponse()
    value.ret = reader.integer(2, True)
    value.message = _read_text(reader, 128)
    if not 6 <= reader.position - _start <= 134:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Xarm_msgsSetDigitalIORequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'xarm_msgs/SetDigitalIORequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_ac50ddbde487936e79606cb389b9bc074249136b4187a1334da6f09866cc3959'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 4
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 4
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 4
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    io_num: _py_int = 0
    value: _py_int = 0

    def encode(self):
        writer = _Writer(4)
        _write_Ros1Xarm_msgsSetDigitalIORequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 4, 4)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Xarm_msgsSetDigitalIORequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 4, 4))
        value = _read_Ros1Xarm_msgsSetDigitalIORequest(reader)
        reader.end()
        return value

_record_Ros1Xarm_msgsSetDigitalIORequest = Ros1Xarm_msgsSetDigitalIORequest

def _write_Ros1Xarm_msgsSetDigitalIORequest(writer, value):
    if type(value) is not Ros1Xarm_msgsSetDigitalIORequest:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.io_num
    writer.integer(_part0, 2, True)
    _part1 = value.value
    writer.integer(_part1, 2, True)
    if not 4 <= len(writer.data) - _start <= 4:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Xarm_msgsSetDigitalIORequest(reader):
    _start = reader.position
    value = Ros1Xarm_msgsSetDigitalIORequest()
    value.io_num = reader.integer(2, True)
    value.value = reader.integer(2, True)
    if not 4 <= reader.position - _start <= 4:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Xarm_msgsSetDigitalIOResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'xarm_msgs/SetDigitalIOResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_baca234a5695612047ed3dfb828ac1cae5b26bdd6c117a02824f4fd8e39f1a4c'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 6
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 134
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 134
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    ret: _py_int = 0
    message: _py_str = ''

    def encode(self):
        writer = _Writer(134)
        _write_Ros1Xarm_msgsSetDigitalIOResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 6, 134)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Xarm_msgsSetDigitalIOResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 6, 134))
        value = _read_Ros1Xarm_msgsSetDigitalIOResponse(reader)
        reader.end()
        return value

_record_Ros1Xarm_msgsSetDigitalIOResponse = Ros1Xarm_msgsSetDigitalIOResponse

def _write_Ros1Xarm_msgsSetDigitalIOResponse(writer, value):
    if type(value) is not Ros1Xarm_msgsSetDigitalIOResponse:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.ret
    writer.integer(_part0, 2, True)
    _part1 = value.message
    _write_text(writer, _part1, 128)
    if not 6 <= len(writer.data) - _start <= 134:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Xarm_msgsSetDigitalIOResponse(reader):
    _start = reader.position
    value = Ros1Xarm_msgsSetDigitalIOResponse()
    value.ret = reader.integer(2, True)
    value.message = _read_text(reader, 128)
    if not 6 <= reader.position - _start <= 134:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Xarm_msgsSetInt16Request:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'xarm_msgs/SetInt16Request'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_a218118282ed14fca33c7529762ce9849398540f031ad6e18e3a99a90226c5c7'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 2
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 2
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 2
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    data: _py_int = 0

    def encode(self):
        writer = _Writer(2)
        _write_Ros1Xarm_msgsSetInt16Request(writer, self)
        wire = writer.finish()
        return _wire(wire, 2, 2)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Xarm_msgsSetInt16Request:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 2, 2))
        value = _read_Ros1Xarm_msgsSetInt16Request(reader)
        reader.end()
        return value

_record_Ros1Xarm_msgsSetInt16Request = Ros1Xarm_msgsSetInt16Request

def _write_Ros1Xarm_msgsSetInt16Request(writer, value):
    if type(value) is not Ros1Xarm_msgsSetInt16Request:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.data
    writer.integer(_part0, 2, True)
    if not 2 <= len(writer.data) - _start <= 2:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Xarm_msgsSetInt16Request(reader):
    _start = reader.position
    value = Ros1Xarm_msgsSetInt16Request()
    value.data = reader.integer(2, True)
    if not 2 <= reader.position - _start <= 2:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Xarm_msgsSetInt16Response:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'xarm_msgs/SetInt16Response'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_3b619ed23839ab6aa86a83898af3de7ed7cdcafd04f6528afd48fe1c2d58fd7d'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 6
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 134
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 134
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    ret: _py_int = 0
    message: _py_str = ''

    def encode(self):
        writer = _Writer(134)
        _write_Ros1Xarm_msgsSetInt16Response(writer, self)
        wire = writer.finish()
        return _wire(wire, 6, 134)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Xarm_msgsSetInt16Response:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 6, 134))
        value = _read_Ros1Xarm_msgsSetInt16Response(reader)
        reader.end()
        return value

_record_Ros1Xarm_msgsSetInt16Response = Ros1Xarm_msgsSetInt16Response

def _write_Ros1Xarm_msgsSetInt16Response(writer, value):
    if type(value) is not Ros1Xarm_msgsSetInt16Response:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.ret
    writer.integer(_part0, 2, True)
    _part1 = value.message
    _write_text(writer, _part1, 128)
    if not 6 <= len(writer.data) - _start <= 134:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Xarm_msgsSetInt16Response(reader):
    _start = reader.position
    value = Ros1Xarm_msgsSetInt16Response()
    value.ret = reader.integer(2, True)
    value.message = _read_text(reader, 128)
    if not 6 <= reader.position - _start <= 134:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Xarm_msgsSetLoadRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'xarm_msgs/SetLoadRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_47f2147c37956f007e24d79ddcdc080fb185aca0b30f5f2394f9c74bd00ee077'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 16
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 16
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 16
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    mass: _py_float = 0.0
    xc: _py_float = 0.0
    yc: _py_float = 0.0
    zc: _py_float = 0.0

    def encode(self):
        writer = _Writer(16)
        _write_Ros1Xarm_msgsSetLoadRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 16, 16)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Xarm_msgsSetLoadRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 16, 16))
        value = _read_Ros1Xarm_msgsSetLoadRequest(reader)
        reader.end()
        return value

_record_Ros1Xarm_msgsSetLoadRequest = Ros1Xarm_msgsSetLoadRequest

def _write_Ros1Xarm_msgsSetLoadRequest(writer, value):
    if type(value) is not Ros1Xarm_msgsSetLoadRequest:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.mass
    writer.f32(_part0)
    _part1 = value.xc
    writer.f32(_part1)
    _part2 = value.yc
    writer.f32(_part2)
    _part3 = value.zc
    writer.f32(_part3)
    if not 16 <= len(writer.data) - _start <= 16:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Xarm_msgsSetLoadRequest(reader):
    _start = reader.position
    value = Ros1Xarm_msgsSetLoadRequest()
    value.mass = reader.f32()
    value.xc = reader.f32()
    value.yc = reader.f32()
    value.zc = reader.f32()
    if not 16 <= reader.position - _start <= 16:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Xarm_msgsSetLoadResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'xarm_msgs/SetLoadResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_ceea0b74ec65c7f3208f594ddb9180db48213a62764524e1b7eec866752ed2e3'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 6
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 134
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 134
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    ret: _py_int = 0
    message: _py_str = ''

    def encode(self):
        writer = _Writer(134)
        _write_Ros1Xarm_msgsSetLoadResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 6, 134)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Xarm_msgsSetLoadResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 6, 134))
        value = _read_Ros1Xarm_msgsSetLoadResponse(reader)
        reader.end()
        return value

_record_Ros1Xarm_msgsSetLoadResponse = Ros1Xarm_msgsSetLoadResponse

def _write_Ros1Xarm_msgsSetLoadResponse(writer, value):
    if type(value) is not Ros1Xarm_msgsSetLoadResponse:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.ret
    writer.integer(_part0, 2, True)
    _part1 = value.message
    _write_text(writer, _part1, 128)
    if not 6 <= len(writer.data) - _start <= 134:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Xarm_msgsSetLoadResponse(reader):
    _start = reader.position
    value = Ros1Xarm_msgsSetLoadResponse()
    value.ret = reader.integer(2, True)
    value.message = _read_text(reader, 128)
    if not 6 <= reader.position - _start <= 134:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Xarm_msgsSetToolModbusRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'xarm_msgs/SetToolModbusRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_f7201be7ca91c7cbc137d4d634a939e037f3fd070446ee174169563e00af3c5a'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 6
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 262
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 262
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    send_data: _py_list[_py_int] = _field(default_factory=lambda: [])
    respond_len: _py_int = 0

    def encode(self):
        writer = _Writer(262)
        _write_Ros1Xarm_msgsSetToolModbusRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 6, 262)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Xarm_msgsSetToolModbusRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 6, 262))
        value = _read_Ros1Xarm_msgsSetToolModbusRequest(reader)
        reader.end()
        return value

_record_Ros1Xarm_msgsSetToolModbusRequest = Ros1Xarm_msgsSetToolModbusRequest

def _write_Ros1Xarm_msgsSetToolModbusRequest(writer, value):
    if type(value) is not Ros1Xarm_msgsSetToolModbusRequest:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.send_data
    if type(_part0) not in (list, tuple):
        raise TypeError('array value required')
    _count0 = len(_part0)
    if _count0 > 256:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count0, 4)
    for _index in range(_count0):
        _element = _part0[_index]
        writer.integer(_element, 1, False)
    _part1 = value.respond_len
    writer.integer(_part1, 2, True)
    if not 6 <= len(writer.data) - _start <= 262:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Xarm_msgsSetToolModbusRequest(reader):
    _start = reader.position
    value = Ros1Xarm_msgsSetToolModbusRequest()
    value.send_data = [reader.integer(1, False) for _ in range(_read_count(reader, 256, 1))]
    value.respond_len = reader.integer(2, True)
    if not 6 <= reader.position - _start <= 262:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Xarm_msgsSetToolModbusResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'xarm_msgs/SetToolModbusResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_685b6def078eaf41d45a4e43cfe037498224efca187275680a77b6068372ce15'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 6
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 262
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 262
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    ret: _py_int = 0
    respond_data: _py_list[_py_int] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(262)
        _write_Ros1Xarm_msgsSetToolModbusResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 6, 262)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Xarm_msgsSetToolModbusResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 6, 262))
        value = _read_Ros1Xarm_msgsSetToolModbusResponse(reader)
        reader.end()
        return value

_record_Ros1Xarm_msgsSetToolModbusResponse = Ros1Xarm_msgsSetToolModbusResponse

def _write_Ros1Xarm_msgsSetToolModbusResponse(writer, value):
    if type(value) is not Ros1Xarm_msgsSetToolModbusResponse:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.ret
    writer.integer(_part0, 2, True)
    _part1 = value.respond_data
    if type(_part1) not in (list, tuple):
        raise TypeError('array value required')
    _count1 = len(_part1)
    if _count1 > 256:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        writer.integer(_element, 1, False)
    if not 6 <= len(writer.data) - _start <= 262:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Xarm_msgsSetToolModbusResponse(reader):
    _start = reader.position
    value = Ros1Xarm_msgsSetToolModbusResponse()
    value.ret = reader.integer(2, True)
    value.respond_data = [reader.integer(1, False) for _ in range(_read_count(reader, 256, 1))]
    if not 6 <= reader.position - _start <= 262:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Xarm_msgsTCPOffsetRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'xarm_msgs/TCPOffsetRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_588f23b909cce18cc490801b9d2f0960335362b0c823651cda6d5c8a27ee0afd'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 24
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 24
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 24
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    x: _py_float = 0.0
    y: _py_float = 0.0
    z: _py_float = 0.0
    roll: _py_float = 0.0
    pitch: _py_float = 0.0
    yaw: _py_float = 0.0

    def encode(self):
        writer = _Writer(24)
        _write_Ros1Xarm_msgsTCPOffsetRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 24, 24)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Xarm_msgsTCPOffsetRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 24, 24))
        value = _read_Ros1Xarm_msgsTCPOffsetRequest(reader)
        reader.end()
        return value

_record_Ros1Xarm_msgsTCPOffsetRequest = Ros1Xarm_msgsTCPOffsetRequest

def _write_Ros1Xarm_msgsTCPOffsetRequest(writer, value):
    if type(value) is not Ros1Xarm_msgsTCPOffsetRequest:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.x
    writer.f32(_part0)
    _part1 = value.y
    writer.f32(_part1)
    _part2 = value.z
    writer.f32(_part2)
    _part3 = value.roll
    writer.f32(_part3)
    _part4 = value.pitch
    writer.f32(_part4)
    _part5 = value.yaw
    writer.f32(_part5)
    if not 24 <= len(writer.data) - _start <= 24:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Xarm_msgsTCPOffsetRequest(reader):
    _start = reader.position
    value = Ros1Xarm_msgsTCPOffsetRequest()
    value.x = reader.f32()
    value.y = reader.f32()
    value.z = reader.f32()
    value.roll = reader.f32()
    value.pitch = reader.f32()
    value.yaw = reader.f32()
    if not 24 <= reader.position - _start <= 24:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros1Xarm_msgsTCPOffsetResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'xarm_msgs/TCPOffsetResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_c61a6473a9eb1371fa56cbf60d6468fcac19197b9be04dd507b80f59e2d80773'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 6
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 134
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 134
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = []
    ret: _py_int = 0
    message: _py_str = ''

    def encode(self):
        writer = _Writer(134)
        _write_Ros1Xarm_msgsTCPOffsetResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 6, 134)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Xarm_msgsTCPOffsetResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 6, 134))
        value = _read_Ros1Xarm_msgsTCPOffsetResponse(reader)
        reader.end()
        return value

_record_Ros1Xarm_msgsTCPOffsetResponse = Ros1Xarm_msgsTCPOffsetResponse

def _write_Ros1Xarm_msgsTCPOffsetResponse(writer, value):
    if type(value) is not Ros1Xarm_msgsTCPOffsetResponse:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.ret
    writer.integer(_part0, 2, True)
    _part1 = value.message
    _write_text(writer, _part1, 128)
    if not 6 <= len(writer.data) - _start <= 134:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros1Xarm_msgsTCPOffsetResponse(reader):
    _start = reader.position
    value = Ros1Xarm_msgsTCPOffsetResponse()
    value.ret = reader.integer(2, True)
    value.message = _read_text(reader, 128)
    if not 6 <= reader.position - _start <= 134:
        raise ValueError('nested complete record aggregate extent')
    return value

