# @file bounded_records.py
# @brief Full ubtech py codecs and original record metadata.
# @details Complete ubtech ros2_main values in py. 8 original records retain 24 fields and 8 interface descriptions.
# Scalar widths, bounds, units, defaults and identities follow the pinned native definitions. Encoding is local;
# compiler, guest and native ROS acceptance require separate receipts. See the profile API manual under
# document/platform/ubtech/en_US/catalog/.
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
class Ros2Geometry_msgsMsgPoseStamped:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'geometry_msgs/msg/PoseStamped'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_71abdc844f18f02f45a354967a5f1c644fb20dc14cbc61c64aa41b927e0712a2'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 68
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 196
    header: _record_Ros2Std_msgsMsgHeader = _field(default_factory=lambda: Ros2Std_msgsMsgHeader())
    pose: _record_Ros2Geometry_msgsMsgPose = _field(default_factory=lambda: Ros2Geometry_msgsMsgPose())

    def encode(self):
        writer = _Writer(196)
        _write_Ros2Geometry_msgsMsgPoseStamped(writer, self)
        wire = writer.finish()
        return _wire(wire, 68, 196)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Geometry_msgsMsgPoseStamped:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 68, 196))
        value = _read_Ros2Geometry_msgsMsgPoseStamped(reader)
        reader.end()
        return value

_record_Ros2Geometry_msgsMsgPoseStamped = Ros2Geometry_msgsMsgPoseStamped

def _write_Ros2Geometry_msgsMsgPoseStamped(writer, value):
    if type(value) is not Ros2Geometry_msgsMsgPoseStamped:
        raise TypeError('exact generated record required')
    _part0 = value.header
    _write_Ros2Std_msgsMsgHeader(writer, _part0)
    _part1 = value.pose
    _write_Ros2Geometry_msgsMsgPose(writer, _part1)

def _read_Ros2Geometry_msgsMsgPoseStamped(reader):
    value = Ros2Geometry_msgsMsgPoseStamped()
    value.header = _read_Ros2Std_msgsMsgHeader(reader)
    value.pose = _read_Ros2Geometry_msgsMsgPose(reader)
    return value

@_dataclass
class Ros2Grab_demo_msgsMsgGraspCandidate:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'grab_demo_msgs/msg/GraspCandidate'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_5dfe34bfcc75bea067c1c30082a8c462575b2790a7326f85f90e7f913600bf37'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 92
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 604
    header: _record_Ros2Std_msgsMsgHeader = _field(default_factory=lambda: Ros2Std_msgsMsgHeader())
    pose: _record_Ros2Geometry_msgsMsgPoseStamped = _field(default_factory=lambda: Ros2Geometry_msgsMsgPoseStamped())
    group_name: _py_str = ''
    confidence: _py_float = 0.0
    object_class: _py_str = ''

    def encode(self):
        writer = _Writer(604)
        _write_Ros2Grab_demo_msgsMsgGraspCandidate(writer, self)
        wire = writer.finish()
        return _wire(wire, 92, 604)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Grab_demo_msgsMsgGraspCandidate:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 92, 604))
        value = _read_Ros2Grab_demo_msgsMsgGraspCandidate(reader)
        reader.end()
        return value

_record_Ros2Grab_demo_msgsMsgGraspCandidate = Ros2Grab_demo_msgsMsgGraspCandidate

def _write_Ros2Grab_demo_msgsMsgGraspCandidate(writer, value):
    if type(value) is not Ros2Grab_demo_msgsMsgGraspCandidate:
        raise TypeError('exact generated record required')
    _part0 = value.header
    _write_Ros2Std_msgsMsgHeader(writer, _part0)
    _part1 = value.pose
    _write_Ros2Geometry_msgsMsgPoseStamped(writer, _part1)
    _part2 = value.group_name
    _write_text(writer, _part2, 128)
    _part3 = value.confidence
    writer.f32(_part3)
    _part4 = value.object_class
    _write_text(writer, _part4, 128)

def _read_Ros2Grab_demo_msgsMsgGraspCandidate(reader):
    value = Ros2Grab_demo_msgsMsgGraspCandidate()
    value.header = _read_Ros2Std_msgsMsgHeader(reader)
    value.pose = _read_Ros2Geometry_msgsMsgPoseStamped(reader)
    value.group_name = _read_text(reader, 128)
    value.confidence = reader.f32()
    value.object_class = _read_text(reader, 128)
    return value

@_dataclass
class Ros2Grab_demo_msgsMsgIKRequest:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'grab_demo_msgs/msg/IKRequest'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_b438f80854b2fee423938302dc415e1ef68a3988675998c427eab62a5ecc39fa'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 64
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 320
    group_name: _py_str = ''
    frame_id: _py_str = ''
    position: _record_Ros2Geometry_msgsMsgPoint = _field(default_factory=lambda: Ros2Geometry_msgsMsgPoint())
    orientation: _record_Ros2Geometry_msgsMsgQuaternion = _field(default_factory=lambda: Ros2Geometry_msgsMsgQuaternion())

    def encode(self):
        writer = _Writer(320)
        _write_Ros2Grab_demo_msgsMsgIKRequest(writer, self)
        wire = writer.finish()
        return _wire(wire, 64, 320)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Grab_demo_msgsMsgIKRequest:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 64, 320))
        value = _read_Ros2Grab_demo_msgsMsgIKRequest(reader)
        reader.end()
        return value

_record_Ros2Grab_demo_msgsMsgIKRequest = Ros2Grab_demo_msgsMsgIKRequest

def _write_Ros2Grab_demo_msgsMsgIKRequest(writer, value):
    if type(value) is not Ros2Grab_demo_msgsMsgIKRequest:
        raise TypeError('exact generated record required')
    _part0 = value.group_name
    _write_text(writer, _part0, 128)
    _part1 = value.frame_id
    _write_text(writer, _part1, 128)
    _part2 = value.position
    _write_Ros2Geometry_msgsMsgPoint(writer, _part2)
    _part3 = value.orientation
    _write_Ros2Geometry_msgsMsgQuaternion(writer, _part3)

def _read_Ros2Grab_demo_msgsMsgIKRequest(reader):
    value = Ros2Grab_demo_msgsMsgIKRequest()
    value.group_name = _read_text(reader, 128)
    value.frame_id = _read_text(reader, 128)
    value.position = _read_Ros2Geometry_msgsMsgPoint(reader)
    value.orientation = _read_Ros2Geometry_msgsMsgQuaternion(reader)
    return value

