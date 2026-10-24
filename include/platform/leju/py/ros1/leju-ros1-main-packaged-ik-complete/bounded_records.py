# @file bounded_records.py
# @brief Full leju py codecs and original record metadata.
# @details Complete leju ros1_main_packaged_ik values in py. 17 original records retain 55 fields and 15 interface
# descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native definitions. Encoding
# is local; compiler, guest and native ROS acceptance require separate receipts. See the profile API manual under
# document/platform/leju/en_US/catalog/.
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
class Ros1Motion_capture_ikArmHandPose:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'motion_capture_ik/armHandPose'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_7cc97650a6f0bedb8bdbc0cc534eb422e8585c69f5b0ae92b6d4f213a2d90f08'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 136
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 136
    pos_xyz: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(3)])
    quat_xyzw: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(4)])
    elbow_pos_xyz: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(3)])
    joint_angles: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(7)])

    def encode(self):
        writer = _Writer(136)
        _write_Ros1Motion_capture_ikArmHandPose(writer, self)
        wire = writer.finish()
        return _wire(wire, 136, 136)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Motion_capture_ikArmHandPose:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 136, 136))
        value = _read_Ros1Motion_capture_ikArmHandPose(reader)
        reader.end()
        return value

_record_Ros1Motion_capture_ikArmHandPose = Ros1Motion_capture_ikArmHandPose

def _write_Ros1Motion_capture_ikArmHandPose(writer, value):
    if type(value) is not Ros1Motion_capture_ikArmHandPose:
        raise TypeError('exact generated record required')
    _part0 = value.pos_xyz
    if type(_part0) not in (list, tuple):
        raise TypeError('array value required')
    _count0 = len(_part0)
    if _count0 != 3:
        raise ValueError('fixed/sequence count bound')
    for _index in range(_count0):
        _element = _part0[_index]
        writer.f64(_element)
    _part1 = value.quat_xyzw
    if type(_part1) not in (list, tuple):
        raise TypeError('array value required')
    _count1 = len(_part1)
    if _count1 != 4:
        raise ValueError('fixed/sequence count bound')
    for _index in range(_count1):
        _element = _part1[_index]
        writer.f64(_element)
    _part2 = value.elbow_pos_xyz
    if type(_part2) not in (list, tuple):
        raise TypeError('array value required')
    _count2 = len(_part2)
    if _count2 != 3:
        raise ValueError('fixed/sequence count bound')
    for _index in range(_count2):
        _element = _part2[_index]
        writer.f64(_element)
    _part3 = value.joint_angles
    if type(_part3) not in (list, tuple):
        raise TypeError('array value required')
    _count3 = len(_part3)
    if _count3 != 7:
        raise ValueError('fixed/sequence count bound')
    for _index in range(_count3):
        _element = _part3[_index]
        writer.f64(_element)

def _read_Ros1Motion_capture_ikArmHandPose(reader):
    value = Ros1Motion_capture_ikArmHandPose()
    value.pos_xyz = [reader.f64() for _ in range(3)]
    value.quat_xyzw = [reader.f64() for _ in range(4)]
    value.elbow_pos_xyz = [reader.f64() for _ in range(3)]
    value.joint_angles = [reader.f64() for _ in range(7)]
    return value

@_dataclass
class Ros1Motion_capture_ikArmHandPoseFree:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'motion_capture_ik/armHandPoseFree'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_b46b274661ac382698a9bf1016ca647aecc41df8312020b740d73a87d2513caf'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 84
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 212
    pos_xyz: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(3)])
    quat_xyzw: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(4)])
    elbow_pos_xyz: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(3)])
    joint_angles: _py_list[_py_float] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(212)
        _write_Ros1Motion_capture_ikArmHandPoseFree(writer, self)
        wire = writer.finish()
        return _wire(wire, 84, 212)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Motion_capture_ikArmHandPoseFree:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 84, 212))
        value = _read_Ros1Motion_capture_ikArmHandPoseFree(reader)
        reader.end()
        return value

_record_Ros1Motion_capture_ikArmHandPoseFree = Ros1Motion_capture_ikArmHandPoseFree

def _write_Ros1Motion_capture_ikArmHandPoseFree(writer, value):
    if type(value) is not Ros1Motion_capture_ikArmHandPoseFree:
        raise TypeError('exact generated record required')
    _part0 = value.pos_xyz
    if type(_part0) not in (list, tuple):
        raise TypeError('array value required')
    _count0 = len(_part0)
    if _count0 != 3:
        raise ValueError('fixed/sequence count bound')
    for _index in range(_count0):
        _element = _part0[_index]
        writer.f64(_element)
    _part1 = value.quat_xyzw
    if type(_part1) not in (list, tuple):
        raise TypeError('array value required')
    _count1 = len(_part1)
    if _count1 != 4:
        raise ValueError('fixed/sequence count bound')
    for _index in range(_count1):
        _element = _part1[_index]
        writer.f64(_element)
    _part2 = value.elbow_pos_xyz
    if type(_part2) not in (list, tuple):
        raise TypeError('array value required')
    _count2 = len(_part2)
    if _count2 != 3:
        raise ValueError('fixed/sequence count bound')
    for _index in range(_count2):
        _element = _part2[_index]
        writer.f64(_element)
    _part3 = value.joint_angles
    if type(_part3) not in (list, tuple):
        raise TypeError('array value required')
    _count3 = len(_part3)
    if _count3 > 16:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count3, 4)
    for _index in range(_count3):
        _element = _part3[_index]
        writer.f64(_element)

def _read_Ros1Motion_capture_ikArmHandPoseFree(reader):
    value = Ros1Motion_capture_ikArmHandPoseFree()
    value.pos_xyz = [reader.f64() for _ in range(3)]
    value.quat_xyzw = [reader.f64() for _ in range(4)]
    value.elbow_pos_xyz = [reader.f64() for _ in range(3)]
    value.joint_angles = [reader.f64() for _ in range(_read_count(reader, 16, 8))]
    return value

@_dataclass
class Ros1Motion_capture_ikChangeArmCtrlModeRequest:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'motion_capture_ik/changeArmCtrlModeRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_b73d3ed01f402673124afd1c6677ced89b5b55d207a1e8c4ff1312941fc00bbd'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    control_mode: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Motion_capture_ikChangeArmCtrlModeRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Motion_capture_ikChangeArmCtrlModeRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Motion_capture_ikChangeArmCtrlModeRequest(reader)
        reader.end()
        return value

_record_Ros1Motion_capture_ikChangeArmCtrlModeRequest = Ros1Motion_capture_ikChangeArmCtrlModeRequest

def _write_Ros1Motion_capture_ikChangeArmCtrlModeRequest(writer, value):
    if type(value) is not Ros1Motion_capture_ikChangeArmCtrlModeRequest:
        raise TypeError('exact generated record required')
    _part0 = value.control_mode
    if type(_part0) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part0), 1)

def _read_Ros1Motion_capture_ikChangeArmCtrlModeRequest(reader):
    value = Ros1Motion_capture_ikChangeArmCtrlModeRequest()
    value.control_mode = _read_bool(reader)
    return value

@_dataclass
class Ros1Motion_capture_ikChangeArmCtrlModeResponse:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'motion_capture_ik/changeArmCtrlModeResponse'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_aee11b3bf042b1e989f7ed00d2f8e72821cfd8b6ee8232e14848ccf8ee754aac'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 1
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 1
    result: _py_bool = False

    def encode(self):
        writer = _Writer(1)
        _write_Ros1Motion_capture_ikChangeArmCtrlModeResponse(writer, self)
        wire = writer.finish()
        return _wire(wire, 1, 1)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Motion_capture_ikChangeArmCtrlModeResponse:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 1, 1))
        value = _read_Ros1Motion_capture_ikChangeArmCtrlModeResponse(reader)
        reader.end()
        return value

_record_Ros1Motion_capture_ikChangeArmCtrlModeResponse = Ros1Motion_capture_ikChangeArmCtrlModeResponse

def _write_Ros1Motion_capture_ikChangeArmCtrlModeResponse(writer, value):
    if type(value) is not Ros1Motion_capture_ikChangeArmCtrlModeResponse:
        raise TypeError('exact generated record required')
    _part0 = value.result
    if type(_part0) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part0), 1)

def _read_Ros1Motion_capture_ikChangeArmCtrlModeResponse(reader):
    value = Ros1Motion_capture_ikChangeArmCtrlModeResponse()
    value.result = _read_bool(reader)
    return value

@_dataclass
class Ros1Motion_capture_ikHandPose:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'motion_capture_ik/handPose'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_dc924e15f38aa45188532c325292b2f9e3827f3dfa94ff946e30aa51f4fbee5f'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 48
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 48
    x: _py_float = 0.0
    y: _py_float = 0.0
    z: _py_float = 0.0
    roll: _py_float = 0.0
    pitch: _py_float = 0.0
    yaw: _py_float = 0.0

    def encode(self):
        writer = _Writer(48)
        _write_Ros1Motion_capture_ikHandPose(writer, self)
        wire = writer.finish()
        return _wire(wire, 48, 48)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Motion_capture_ikHandPose:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 48, 48))
        value = _read_Ros1Motion_capture_ikHandPose(reader)
        reader.end()
        return value

_record_Ros1Motion_capture_ikHandPose = Ros1Motion_capture_ikHandPose

def _write_Ros1Motion_capture_ikHandPose(writer, value):
    if type(value) is not Ros1Motion_capture_ikHandPose:
        raise TypeError('exact generated record required')
    _part0 = value.x
    writer.f64(_part0)
    _part1 = value.y
    writer.f64(_part1)
    _part2 = value.z
    writer.f64(_part2)
    _part3 = value.roll
    writer.f64(_part3)
    _part4 = value.pitch
    writer.f64(_part4)
    _part5 = value.yaw
    writer.f64(_part5)

def _read_Ros1Motion_capture_ikHandPose(reader):
    value = Ros1Motion_capture_ikHandPose()
    value.x = reader.f64()
    value.y = reader.f64()
    value.z = reader.f64()
    value.roll = reader.f64()
    value.pitch = reader.f64()
    value.yaw = reader.f64()
    return value

@_dataclass
class Ros1Motion_capture_ikIkSolveError:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'motion_capture_ik/ikSolveError'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_a20039cf8bf301a7ef643884130619c2ceb96c1c91ed15482dd6f582917e1e94'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 100
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 356
    ik_type: _py_str = ''
    left_pose_error: _record_Ros1Motion_capture_ikHandPose = _field(default_factory=lambda: Ros1Motion_capture_ikHandPose())
    right_pose_error: _record_Ros1Motion_capture_ikHandPose = _field(default_factory=lambda: Ros1Motion_capture_ikHandPose())

    def encode(self):
        writer = _Writer(356)
        _write_Ros1Motion_capture_ikIkSolveError(writer, self)
        wire = writer.finish()
        return _wire(wire, 100, 356)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Motion_capture_ikIkSolveError:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 100, 356))
        value = _read_Ros1Motion_capture_ikIkSolveError(reader)
        reader.end()
        return value

_record_Ros1Motion_capture_ikIkSolveError = Ros1Motion_capture_ikIkSolveError

def _write_Ros1Motion_capture_ikIkSolveError(writer, value):
    if type(value) is not Ros1Motion_capture_ikIkSolveError:
        raise TypeError('exact generated record required')
    _part0 = value.ik_type
    _write_text(writer, _part0, 256)
    _part1 = value.left_pose_error
    _write_Ros1Motion_capture_ikHandPose(writer, _part1)
    _part2 = value.right_pose_error
    _write_Ros1Motion_capture_ikHandPose(writer, _part2)

def _read_Ros1Motion_capture_ikIkSolveError(reader):
    value = Ros1Motion_capture_ikIkSolveError()
    value.ik_type = _read_text(reader, 256)
    value.left_pose_error = _read_Ros1Motion_capture_ikHandPose(reader)
    value.right_pose_error = _read_Ros1Motion_capture_ikHandPose(reader)
    return value

@_dataclass
class Ros1Motion_capture_ikIkSolveParam:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'motion_capture_ik/ikSolveParam'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_8058ba64ed6070b821470b5560062e78f2ef0fa09169e7a249b584d2d158d981'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 56
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 56
    major_optimality_tol: _py_float = 0.0
    major_feasibility_tol: _py_float = 0.0
    minor_feasibility_tol: _py_float = 0.0
    major_iterations_limit: _py_float = 0.0
    oritation_constraint_tol: _py_float = 0.0
    pos_constraint_tol: _py_float = 0.0
    pos_cost_weight: _py_float = 0.0

    def encode(self):
        writer = _Writer(56)
        _write_Ros1Motion_capture_ikIkSolveParam(writer, self)
        wire = writer.finish()
        return _wire(wire, 56, 56)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Motion_capture_ikIkSolveParam:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 56, 56))
        value = _read_Ros1Motion_capture_ikIkSolveParam(reader)
        reader.end()
        return value

_record_Ros1Motion_capture_ikIkSolveParam = Ros1Motion_capture_ikIkSolveParam

def _write_Ros1Motion_capture_ikIkSolveParam(writer, value):
    if type(value) is not Ros1Motion_capture_ikIkSolveParam:
        raise TypeError('exact generated record required')
    _part0 = value.major_optimality_tol
    writer.f64(_part0)
    _part1 = value.major_feasibility_tol
    writer.f64(_part1)
    _part2 = value.minor_feasibility_tol
    writer.f64(_part2)
    _part3 = value.major_iterations_limit
    writer.f64(_part3)
    _part4 = value.oritation_constraint_tol
    writer.f64(_part4)
    _part5 = value.pos_constraint_tol
    writer.f64(_part5)
    _part6 = value.pos_cost_weight
    writer.f64(_part6)

def _read_Ros1Motion_capture_ikIkSolveParam(reader):
    value = Ros1Motion_capture_ikIkSolveParam()
    value.major_optimality_tol = reader.f64()
    value.major_feasibility_tol = reader.f64()
    value.minor_feasibility_tol = reader.f64()
    value.major_iterations_limit = reader.f64()
    value.oritation_constraint_tol = reader.f64()
    value.pos_constraint_tol = reader.f64()
    value.pos_cost_weight = reader.f64()
    return value

@_dataclass
class Ros1Motion_capture_ikRecordArmHandPose:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'motion_capture_ik/recordArmHandPose'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_815baf88f4e7fdf82316c06aa2baacbc2f30160c53eb73de10dfcbc1ecda2b4a'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 272
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 272
    left_pose: _record_Ros1Motion_capture_ikArmHandPose = _field(default_factory=lambda: Ros1Motion_capture_ikArmHandPose())
    right_pose: _record_Ros1Motion_capture_ikArmHandPose = _field(default_factory=lambda: Ros1Motion_capture_ikArmHandPose())

    def encode(self):
        writer = _Writer(272)
        _write_Ros1Motion_capture_ikRecordArmHandPose(writer, self)
        wire = writer.finish()
        return _wire(wire, 272, 272)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Motion_capture_ikRecordArmHandPose:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 272, 272))
        value = _read_Ros1Motion_capture_ikRecordArmHandPose(reader)
        reader.end()
        return value

_record_Ros1Motion_capture_ikRecordArmHandPose = Ros1Motion_capture_ikRecordArmHandPose

def _write_Ros1Motion_capture_ikRecordArmHandPose(writer, value):
    if type(value) is not Ros1Motion_capture_ikRecordArmHandPose:
        raise TypeError('exact generated record required')
    _part0 = value.left_pose
    _write_Ros1Motion_capture_ikArmHandPose(writer, _part0)
    _part1 = value.right_pose
    _write_Ros1Motion_capture_ikArmHandPose(writer, _part1)

def _read_Ros1Motion_capture_ikRecordArmHandPose(reader):
    value = Ros1Motion_capture_ikRecordArmHandPose()
    value.left_pose = _read_Ros1Motion_capture_ikArmHandPose(reader)
    value.right_pose = _read_Ros1Motion_capture_ikArmHandPose(reader)
    return value

@_dataclass
class Ros1Motion_capture_ikRecordArmHandPoseFree:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'motion_capture_ik/recordArmHandPoseFree'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_895dcfe228b573faa0911f4c5ca89094cae4497c06b57ba9b827356e62071811'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 168
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 424
    left_pose: _record_Ros1Motion_capture_ikArmHandPoseFree = _field(default_factory=lambda: Ros1Motion_capture_ikArmHandPoseFree())
    right_pose: _record_Ros1Motion_capture_ikArmHandPoseFree = _field(default_factory=lambda: Ros1Motion_capture_ikArmHandPoseFree())

    def encode(self):
        writer = _Writer(424)
        _write_Ros1Motion_capture_ikRecordArmHandPoseFree(writer, self)
        wire = writer.finish()
        return _wire(wire, 168, 424)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Motion_capture_ikRecordArmHandPoseFree:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 168, 424))
        value = _read_Ros1Motion_capture_ikRecordArmHandPoseFree(reader)
        reader.end()
        return value

_record_Ros1Motion_capture_ikRecordArmHandPoseFree = Ros1Motion_capture_ikRecordArmHandPoseFree

def _write_Ros1Motion_capture_ikRecordArmHandPoseFree(writer, value):
    if type(value) is not Ros1Motion_capture_ikRecordArmHandPoseFree:
        raise TypeError('exact generated record required')
    _part0 = value.left_pose
    _write_Ros1Motion_capture_ikArmHandPoseFree(writer, _part0)
    _part1 = value.right_pose
    _write_Ros1Motion_capture_ikArmHandPoseFree(writer, _part1)

def _read_Ros1Motion_capture_ikRecordArmHandPoseFree(reader):
    value = Ros1Motion_capture_ikRecordArmHandPoseFree()
    value.left_pose = _read_Ros1Motion_capture_ikArmHandPoseFree(reader)
    value.right_pose = _read_Ros1Motion_capture_ikArmHandPoseFree(reader)
    return value

@_dataclass
class Ros1Motion_capture_ikRobotArmQVVD:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'motion_capture_ik/robotArmQVVD'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_c5cfc8e6be023981b9b846a4e676e456a407479a9428f4fbe43e1af9df17fbbb'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 396
    q: _py_list[_py_float] = _field(default_factory=lambda: [])
    v: _py_list[_py_float] = _field(default_factory=lambda: [])
    vd: _py_list[_py_float] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(396)
        _write_Ros1Motion_capture_ikRobotArmQVVD(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 396)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Motion_capture_ikRobotArmQVVD:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 12, 396))
        value = _read_Ros1Motion_capture_ikRobotArmQVVD(reader)
        reader.end()
        return value

_record_Ros1Motion_capture_ikRobotArmQVVD = Ros1Motion_capture_ikRobotArmQVVD

def _write_Ros1Motion_capture_ikRobotArmQVVD(writer, value):
    if type(value) is not Ros1Motion_capture_ikRobotArmQVVD:
        raise TypeError('exact generated record required')
    _part0 = value.q
    if type(_part0) not in (list, tuple):
        raise TypeError('array value required')
    _count0 = len(_part0)
    if _count0 > 16:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count0, 4)
    for _index in range(_count0):
        _element = _part0[_index]
        writer.f64(_element)
    _part1 = value.v
    if type(_part1) not in (list, tuple):
        raise TypeError('array value required')
    _count1 = len(_part1)
    if _count1 > 16:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        writer.f64(_element)
    _part2 = value.vd
    if type(_part2) not in (list, tuple):
        raise TypeError('array value required')
    _count2 = len(_part2)
    if _count2 > 16:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        writer.f64(_element)

def _read_Ros1Motion_capture_ikRobotArmQVVD(reader):
    value = Ros1Motion_capture_ikRobotArmQVVD()
    value.q = [reader.f64() for _ in range(_read_count(reader, 16, 8))]
    value.v = [reader.f64() for _ in range(_read_count(reader, 16, 8))]
    value.vd = [reader.f64() for _ in range(_read_count(reader, 16, 8))]
    return value

@_dataclass
class Ros1Time:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'time'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
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
    _part0 = value.sec
    writer.integer(_part0, 4, False)
    _part1 = value.nsec
    writer.integer(_part1, 4, False)
    if not 0 <= _part1 < 1000000000:
        raise ValueError('normalized subsecond field required')

def _read_Ros1Time(reader):
    value = Ros1Time()
    value.sec = reader.integer(4, False)
    value.nsec = reader.integer(4, False)
    if not 0 <= value.nsec < 1000000000:
        raise ValueError('normalized subsecond field required')
    return value

@_dataclass
class Ros1Std_msgsHeader:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'std_msgs/Header'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_5501bfd608c585c739688d051f0090563b3966c945bd84b7b2b3681fc61d47d7'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 16
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 272
    seq: _py_int = 0
    stamp: _record_Ros1Time = _field(default_factory=lambda: Ros1Time())
    frame_id: _py_str = ''

    def encode(self):
        writer = _Writer(272)
        _write_Ros1Std_msgsHeader(writer, self)
        wire = writer.finish()
        return _wire(wire, 16, 272)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Std_msgsHeader:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 16, 272))
        value = _read_Ros1Std_msgsHeader(reader)
        reader.end()
        return value

_record_Ros1Std_msgsHeader = Ros1Std_msgsHeader

def _write_Ros1Std_msgsHeader(writer, value):
    if type(value) is not Ros1Std_msgsHeader:
        raise TypeError('exact generated record required')
    _part0 = value.seq
    writer.integer(_part0, 4, False)
    _part1 = value.stamp
    _write_Ros1Time(writer, _part1)
    _part2 = value.frame_id
    _write_text(writer, _part2, 256)

def _read_Ros1Std_msgsHeader(reader):
    value = Ros1Std_msgsHeader()
    value.seq = reader.integer(4, False)
    value.stamp = _read_Ros1Time(reader)
    value.frame_id = _read_text(reader, 256)
    return value

@_dataclass
class Ros1Motion_capture_ikRobotHandPosition:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'motion_capture_ik/robotHandPosition'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_16c4f8c128cde34eba2cf878bad0706916193ba3b54f02dcd1e4556128e3b0aa'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 24
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 792
    header: _record_Ros1Std_msgsHeader = _field(default_factory=lambda: Ros1Std_msgsHeader())
    left_hand_position: _py_list[_py_int] = _field(default_factory=lambda: [])
    right_hand_position: _py_list[_py_int] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(792)
        _write_Ros1Motion_capture_ikRobotHandPosition(writer, self)
        wire = writer.finish()
        return _wire(wire, 24, 792)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Motion_capture_ikRobotHandPosition:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 24, 792))
        value = _read_Ros1Motion_capture_ikRobotHandPosition(reader)
        reader.end()
        return value

_record_Ros1Motion_capture_ikRobotHandPosition = Ros1Motion_capture_ikRobotHandPosition

def _write_Ros1Motion_capture_ikRobotHandPosition(writer, value):
    if type(value) is not Ros1Motion_capture_ikRobotHandPosition:
        raise TypeError('exact generated record required')
    _part0 = value.header
    _write_Ros1Std_msgsHeader(writer, _part0)
    _part1 = value.left_hand_position
    if type(_part1) not in (list, tuple):
        raise TypeError('array value required')
    _count1 = len(_part1)
    if _count1 > 256:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        writer.integer(_element, 1, False)
    _part2 = value.right_hand_position
    if type(_part2) not in (list, tuple):
        raise TypeError('array value required')
    _count2 = len(_part2)
    if _count2 > 256:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count2, 4)
    for _index in range(_count2):
        _element = _part2[_index]
        writer.integer(_element, 1, False)

def _read_Ros1Motion_capture_ikRobotHandPosition(reader):
    value = Ros1Motion_capture_ikRobotHandPosition()
    value.header = _read_Ros1Std_msgsHeader(reader)
    value.left_hand_position = [reader.integer(1, False) for _ in range(_read_count(reader, 256, 1))]
    value.right_hand_position = [reader.integer(1, False) for _ in range(_read_count(reader, 256, 1))]
    return value

@_dataclass
class Ros1Motion_capture_ikTwoArmHandPose:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'motion_capture_ik/twoArmHandPose'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_12c87f2d727015a1dd0d5c344812528ae43bfd48168fdaa68bac006fe0bbc181'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 288
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 544
    header: _record_Ros1Std_msgsHeader = _field(default_factory=lambda: Ros1Std_msgsHeader())
    left_pose: _record_Ros1Motion_capture_ikArmHandPose = _field(default_factory=lambda: Ros1Motion_capture_ikArmHandPose())
    right_pose: _record_Ros1Motion_capture_ikArmHandPose = _field(default_factory=lambda: Ros1Motion_capture_ikArmHandPose())

    def encode(self):
        writer = _Writer(544)
        _write_Ros1Motion_capture_ikTwoArmHandPose(writer, self)
        wire = writer.finish()
        return _wire(wire, 288, 544)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Motion_capture_ikTwoArmHandPose:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 288, 544))
        value = _read_Ros1Motion_capture_ikTwoArmHandPose(reader)
        reader.end()
        return value

_record_Ros1Motion_capture_ikTwoArmHandPose = Ros1Motion_capture_ikTwoArmHandPose

def _write_Ros1Motion_capture_ikTwoArmHandPose(writer, value):
    if type(value) is not Ros1Motion_capture_ikTwoArmHandPose:
        raise TypeError('exact generated record required')
    _part0 = value.header
    _write_Ros1Std_msgsHeader(writer, _part0)
    _part1 = value.left_pose
    _write_Ros1Motion_capture_ikArmHandPose(writer, _part1)
    _part2 = value.right_pose
    _write_Ros1Motion_capture_ikArmHandPose(writer, _part2)

def _read_Ros1Motion_capture_ikTwoArmHandPose(reader):
    value = Ros1Motion_capture_ikTwoArmHandPose()
    value.header = _read_Ros1Std_msgsHeader(reader)
    value.left_pose = _read_Ros1Motion_capture_ikArmHandPose(reader)
    value.right_pose = _read_Ros1Motion_capture_ikArmHandPose(reader)
    return value

@_dataclass
class Ros1Motion_capture_ikTwoArmHandPoseCmd:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'motion_capture_ik/twoArmHandPoseCmd'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_aa53de9aca25b5e5ad518a3e3fd6a36f9501d620da4fbd56721a15b693ce6acc'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 346
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 602
    hand_poses: _record_Ros1Motion_capture_ikTwoArmHandPose = _field(default_factory=lambda: Ros1Motion_capture_ikTwoArmHandPose())
    use_custom_ik_param: _py_bool = False
    joint_angles_as_q0: _py_bool = False
    ik_param: _record_Ros1Motion_capture_ikIkSolveParam = _field(default_factory=lambda: Ros1Motion_capture_ikIkSolveParam())

    def encode(self):
        writer = _Writer(602)
        _write_Ros1Motion_capture_ikTwoArmHandPoseCmd(writer, self)
        wire = writer.finish()
        return _wire(wire, 346, 602)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Motion_capture_ikTwoArmHandPoseCmd:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 346, 602))
        value = _read_Ros1Motion_capture_ikTwoArmHandPoseCmd(reader)
        reader.end()
        return value

_record_Ros1Motion_capture_ikTwoArmHandPoseCmd = Ros1Motion_capture_ikTwoArmHandPoseCmd

def _write_Ros1Motion_capture_ikTwoArmHandPoseCmd(writer, value):
    if type(value) is not Ros1Motion_capture_ikTwoArmHandPoseCmd:
        raise TypeError('exact generated record required')
    _part0 = value.hand_poses
    _write_Ros1Motion_capture_ikTwoArmHandPose(writer, _part0)
    _part1 = value.use_custom_ik_param
    if type(_part1) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part1), 1)
    _part2 = value.joint_angles_as_q0
    if type(_part2) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part2), 1)
    _part3 = value.ik_param
    _write_Ros1Motion_capture_ikIkSolveParam(writer, _part3)

def _read_Ros1Motion_capture_ikTwoArmHandPoseCmd(reader):
    value = Ros1Motion_capture_ikTwoArmHandPoseCmd()
    value.hand_poses = _read_Ros1Motion_capture_ikTwoArmHandPose(reader)
    value.use_custom_ik_param = _read_bool(reader)
    value.joint_angles_as_q0 = _read_bool(reader)
    value.ik_param = _read_Ros1Motion_capture_ikIkSolveParam(reader)
    return value

@_dataclass
class Ros1Motion_capture_ikTwoArmHandPoseFree:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'motion_capture_ik/twoArmHandPoseFree'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_2b0e1aadf4405084b26888548a9c33bb9be57ec8f606122857a3b18c2a6f572c'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 184
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 696
    header: _record_Ros1Std_msgsHeader = _field(default_factory=lambda: Ros1Std_msgsHeader())
    left_pose: _record_Ros1Motion_capture_ikArmHandPoseFree = _field(default_factory=lambda: Ros1Motion_capture_ikArmHandPoseFree())
    right_pose: _record_Ros1Motion_capture_ikArmHandPoseFree = _field(default_factory=lambda: Ros1Motion_capture_ikArmHandPoseFree())

    def encode(self):
        writer = _Writer(696)
        _write_Ros1Motion_capture_ikTwoArmHandPoseFree(writer, self)
        wire = writer.finish()
        return _wire(wire, 184, 696)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Motion_capture_ikTwoArmHandPoseFree:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 184, 696))
        value = _read_Ros1Motion_capture_ikTwoArmHandPoseFree(reader)
        reader.end()
        return value

_record_Ros1Motion_capture_ikTwoArmHandPoseFree = Ros1Motion_capture_ikTwoArmHandPoseFree

def _write_Ros1Motion_capture_ikTwoArmHandPoseFree(writer, value):
    if type(value) is not Ros1Motion_capture_ikTwoArmHandPoseFree:
        raise TypeError('exact generated record required')
    _part0 = value.header
    _write_Ros1Std_msgsHeader(writer, _part0)
    _part1 = value.left_pose
    _write_Ros1Motion_capture_ikArmHandPoseFree(writer, _part1)
    _part2 = value.right_pose
    _write_Ros1Motion_capture_ikArmHandPoseFree(writer, _part2)

def _read_Ros1Motion_capture_ikTwoArmHandPoseFree(reader):
    value = Ros1Motion_capture_ikTwoArmHandPoseFree()
    value.header = _read_Ros1Std_msgsHeader(reader)
    value.left_pose = _read_Ros1Motion_capture_ikArmHandPoseFree(reader)
    value.right_pose = _read_Ros1Motion_capture_ikArmHandPoseFree(reader)
    return value

@_dataclass
class Ros1Motion_capture_ikTwoArmHandPoseCmdFree:
    ROS_VERSION: _ClassVar[_py_int] = 1
    NATIVE_TYPE: _ClassVar[_py_str] = 'motion_capture_ik/twoArmHandPoseCmdFree'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_425b1b5b856ec8d0d019829cf48728723199ff79e2b6fa5aaa3f045f1c4f8773'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 242
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 754
    hand_poses: _record_Ros1Motion_capture_ikTwoArmHandPoseFree = _field(default_factory=lambda: Ros1Motion_capture_ikTwoArmHandPoseFree())
    use_custom_ik_param: _py_bool = False
    joint_angles_as_q0: _py_bool = False
    ik_param: _record_Ros1Motion_capture_ikIkSolveParam = _field(default_factory=lambda: Ros1Motion_capture_ikIkSolveParam())

    def encode(self):
        writer = _Writer(754)
        _write_Ros1Motion_capture_ikTwoArmHandPoseCmdFree(writer, self)
        wire = writer.finish()
        return _wire(wire, 242, 754)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros1Motion_capture_ikTwoArmHandPoseCmdFree:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 242, 754))
        value = _read_Ros1Motion_capture_ikTwoArmHandPoseCmdFree(reader)
        reader.end()
        return value

_record_Ros1Motion_capture_ikTwoArmHandPoseCmdFree = Ros1Motion_capture_ikTwoArmHandPoseCmdFree

def _write_Ros1Motion_capture_ikTwoArmHandPoseCmdFree(writer, value):
    if type(value) is not Ros1Motion_capture_ikTwoArmHandPoseCmdFree:
        raise TypeError('exact generated record required')
    _part0 = value.hand_poses
    _write_Ros1Motion_capture_ikTwoArmHandPoseFree(writer, _part0)
    _part1 = value.use_custom_ik_param
    if type(_part1) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part1), 1)
    _part2 = value.joint_angles_as_q0
    if type(_part2) is not bool:
        raise TypeError('bool field required')
    writer.integer(int(_part2), 1)
    _part3 = value.ik_param
    _write_Ros1Motion_capture_ikIkSolveParam(writer, _part3)

def _read_Ros1Motion_capture_ikTwoArmHandPoseCmdFree(reader):
    value = Ros1Motion_capture_ikTwoArmHandPoseCmdFree()
    value.hand_poses = _read_Ros1Motion_capture_ikTwoArmHandPoseFree(reader)
    value.use_custom_ik_param = _read_bool(reader)
    value.joint_angles_as_q0 = _read_bool(reader)
    value.ik_param = _read_Ros1Motion_capture_ikIkSolveParam(reader)
    return value

