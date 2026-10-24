# @file bounded_records.py
# @brief Represent complete typed values and their bounded wire layout for nvidia-isaac-ros.
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
class Ros2Builtin_interfacesMsgTime:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'builtin_interfaces/msg/Time'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 8
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 8
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = (
        []
    )
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
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_afba9e74be3c5e3321750c1c4c30ba2925269f75b9da43a6d5c1e93d293d7396'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 12
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 76
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 76
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = (
        []
    )
    stamp: _record_Ros2Builtin_interfacesMsgTime = _field(default_factory=lambda: Ros2Builtin_interfacesMsgTime())
    frame_id: _py_str = ''

    def encode(self):
        writer = _Writer(76)
        _write_Ros2Std_msgsMsgHeader(writer, self)
        wire = writer.finish()
        return _wire(wire, 12, 76)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Std_msgsMsgHeader:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 12, 76))
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
    _write_text(writer, _part1, 64)
    if not 12 <= len(writer.data) - _start <= 76:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Std_msgsMsgHeader(reader):
    _start = reader.position
    value = Ros2Std_msgsMsgHeader()
    value.stamp = _read_Ros2Builtin_interfacesMsgTime(reader)
    value.frame_id = _read_text(reader, 64)
    if not 12 <= reader.position - _start <= 76:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Geometry_msgsMsgPoint:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'geometry_msgs/msg/Point'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 24
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 24
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 24
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = (
        []
    )
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
    _start = len(writer.data)
    _part0 = value.x
    writer.f64(_part0)
    _part1 = value.y
    writer.f64(_part1)
    _part2 = value.z
    writer.f64(_part2)
    if not 24 <= len(writer.data) - _start <= 24:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Geometry_msgsMsgPoint(reader):
    _start = reader.position
    value = Ros2Geometry_msgsMsgPoint()
    value.x = reader.f64()
    value.y = reader.f64()
    value.z = reader.f64()
    if not 24 <= reader.position - _start <= 24:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Geometry_msgsMsgQuaternion:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'geometry_msgs/msg/Quaternion'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 32
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 32
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 32
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = (
        []
    )
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
    _start = len(writer.data)
    _part0 = value.x
    writer.f64(_part0)
    _part1 = value.y
    writer.f64(_part1)
    _part2 = value.z
    writer.f64(_part2)
    _part3 = value.w
    writer.f64(_part3)
    if not 32 <= len(writer.data) - _start <= 32:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Geometry_msgsMsgQuaternion(reader):
    _start = reader.position
    value = Ros2Geometry_msgsMsgQuaternion()
    value.x = reader.f64()
    value.y = reader.f64()
    value.z = reader.f64()
    value.w = reader.f64()
    if not 32 <= reader.position - _start <= 32:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Geometry_msgsMsgPose:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'geometry_msgs/msg/Pose'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 56
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 56
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 56
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = (
        []
    )
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
    _start = len(writer.data)
    _part0 = value.position
    _write_Ros2Geometry_msgsMsgPoint(writer, _part0)
    _part1 = value.orientation
    _write_Ros2Geometry_msgsMsgQuaternion(writer, _part1)
    if not 56 <= len(writer.data) - _start <= 56:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Geometry_msgsMsgPose(reader):
    _start = reader.position
    value = Ros2Geometry_msgsMsgPose()
    value.position = _read_Ros2Geometry_msgsMsgPoint(reader)
    value.orientation = _read_Ros2Geometry_msgsMsgQuaternion(reader)
    if not 56 <= reader.position - _start <= 56:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Geometry_msgsMsgPoseWithCovariance:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'geometry_msgs/msg/PoseWithCovariance'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_8eb3e25c45769eb29691011c05315ed50f2b97eff488f9e8ee2dc70bddab4dc2'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 344
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 344
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 344
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = (
        []
    )
    pose: _record_Ros2Geometry_msgsMsgPose = _field(default_factory=lambda: Ros2Geometry_msgsMsgPose())
    covariance: _py_list[_py_float] = _field(default_factory=lambda: [0.0 for _ in range(36)])

    def encode(self):
        writer = _Writer(344)
        _write_Ros2Geometry_msgsMsgPoseWithCovariance(writer, self)
        wire = writer.finish()
        return _wire(wire, 344, 344)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Geometry_msgsMsgPoseWithCovariance:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 344, 344))
        value = _read_Ros2Geometry_msgsMsgPoseWithCovariance(reader)
        reader.end()
        return value

_record_Ros2Geometry_msgsMsgPoseWithCovariance = Ros2Geometry_msgsMsgPoseWithCovariance

def _write_Ros2Geometry_msgsMsgPoseWithCovariance(writer, value):
    if type(value) is not Ros2Geometry_msgsMsgPoseWithCovariance:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.pose
    _write_Ros2Geometry_msgsMsgPose(writer, _part0)
    _part1 = value.covariance
    if type(_part1) not in (list, tuple):
        raise TypeError('array value required')
    _count1 = len(_part1)
    if _count1 != 36:
        raise ValueError('fixed/sequence count bound')
    for _index in range(_count1):
        _element = _part1[_index]
        writer.f64(_element)
    if not 344 <= len(writer.data) - _start <= 344:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Geometry_msgsMsgPoseWithCovariance(reader):
    _start = reader.position
    value = Ros2Geometry_msgsMsgPoseWithCovariance()
    value.pose = _read_Ros2Geometry_msgsMsgPose(reader)
    value.covariance = [reader.f64() for _ in range(36)]
    if not 344 <= reader.position - _start <= 344:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Geometry_msgsMsgPoseWithCovarianceStamped:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'geometry_msgs/msg/PoseWithCovarianceStamped'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_ea380172cde0ee5fef319aff50d92a80c314510e3d12efec45e9ae1f74974af3'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 356
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 420
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 420
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = (
        []
    )
    header: _record_Ros2Std_msgsMsgHeader = _field(default_factory=lambda: Ros2Std_msgsMsgHeader())
    pose: _record_Ros2Geometry_msgsMsgPoseWithCovariance = _field(default_factory=lambda: Ros2Geometry_msgsMsgPoseWithCovariance())

    def encode(self):
        writer = _Writer(420)
        _write_Ros2Geometry_msgsMsgPoseWithCovarianceStamped(writer, self)
        wire = writer.finish()
        return _wire(wire, 356, 420)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Geometry_msgsMsgPoseWithCovarianceStamped:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 356, 420))
        value = _read_Ros2Geometry_msgsMsgPoseWithCovarianceStamped(reader)
        reader.end()
        return value

_record_Ros2Geometry_msgsMsgPoseWithCovarianceStamped = Ros2Geometry_msgsMsgPoseWithCovarianceStamped

def _write_Ros2Geometry_msgsMsgPoseWithCovarianceStamped(writer, value):
    if type(value) is not Ros2Geometry_msgsMsgPoseWithCovarianceStamped:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros2Std_msgsMsgHeader(writer, _part0)
    _part1 = value.pose
    _write_Ros2Geometry_msgsMsgPoseWithCovariance(writer, _part1)
    if not 356 <= len(writer.data) - _start <= 420:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Geometry_msgsMsgPoseWithCovarianceStamped(reader):
    _start = reader.position
    value = Ros2Geometry_msgsMsgPoseWithCovarianceStamped()
    value.header = _read_Ros2Std_msgsMsgHeader(reader)
    value.pose = _read_Ros2Geometry_msgsMsgPoseWithCovariance(reader)
    if not 356 <= reader.position - _start <= 420:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'isaac_ros_apriltag_interfaces/msg/AprilTagDetection'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_5d840f0d9239a948ce5d17bbee6e248db8151ff31070667e506e9c1647ac6fe7'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 484
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 612
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 612
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = (
        []
    )
    family: _py_str = ''
    id: _py_int = 0
    center: _record_Ros2Geometry_msgsMsgPoint = _field(default_factory=lambda: Ros2Geometry_msgsMsgPoint())
    corners: _py_list[_record_Ros2Geometry_msgsMsgPoint] = _field(default_factory=lambda: [Ros2Geometry_msgsMsgPoint() for _ in range(4)])
    pose: _record_Ros2Geometry_msgsMsgPoseWithCovarianceStamped = (
        _field(default_factory=lambda: Ros2Geometry_msgsMsgPoseWithCovarianceStamped())
    )

    def encode(self):
        writer = _Writer(612)
        _write_Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection(writer, self)
        wire = writer.finish()
        return _wire(wire, 484, 612)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 484, 612))
        value = _read_Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection(reader)
        reader.end()
        return value

_record_Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection = Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection

def _write_Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection(writer, value):
    if type(value) is not Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.family
    _write_text(writer, _part0, 64)
    _part1 = value.id
    writer.integer(_part1, 4, True)
    _part2 = value.center
    _write_Ros2Geometry_msgsMsgPoint(writer, _part2)
    _part3 = value.corners
    if type(_part3) not in (list, tuple):
        raise TypeError('array value required')
    _count3 = len(_part3)
    if _count3 != 4:
        raise ValueError('fixed/sequence count bound')
    for _index in range(_count3):
        _element = _part3[_index]
        _write_Ros2Geometry_msgsMsgPoint(writer, _element)
    _part4 = value.pose
    _write_Ros2Geometry_msgsMsgPoseWithCovarianceStamped(writer, _part4)
    if not 484 <= len(writer.data) - _start <= 612:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection(reader):
    _start = reader.position
    value = Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection()
    value.family = _read_text(reader, 64)
    value.id = reader.integer(4, True)
    value.center = _read_Ros2Geometry_msgsMsgPoint(reader)
    value.corners = [_read_Ros2Geometry_msgsMsgPoint(reader) for _ in range(4)]
    value.pose = _read_Ros2Geometry_msgsMsgPoseWithCovarianceStamped(reader)
    if not 484 <= reader.position - _start <= 612:
        raise ValueError('nested complete record aggregate extent')
    return value

@_dataclass
class Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray:
    ROS_VERSION: _ClassVar[_py_int] = 2
    NATIVE_TYPE: _ClassVar[_py_str] = 'isaac_ros_apriltag_interfaces/msg/AprilTagDetectionArray'
    NATIVE_IDENTITY: _ClassVar[_py_str | None] = None
    CODEC_IDENTITY: _ClassVar[_py_str] = 'UWVMROS1_60359e405aedd2a627e60bc35e849989fe5ed1d426afb2a884036aef93bfe0a5'
    MIN_WIRE_BYTES: _ClassVar[_py_int] = 16
    MAX_WIRE_BYTES: _ClassVar[_py_int] = 9872
    CARTESIAN_MAX_WIRE_BYTES: _ClassVar[_py_int] = 9872
    AGGREGATE_WIRE_BYTES: _ClassVar[_py_int] = 0
    DECLARED_CONSTANTS: _ClassVar = (
        []
    )
    header: _record_Ros2Std_msgsMsgHeader = _field(default_factory=lambda: Ros2Std_msgsMsgHeader())
    detections: _py_list[_record_Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection] = _field(default_factory=lambda: [])

    def encode(self):
        writer = _Writer(9872)
        _write_Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray(writer, self)
        wire = writer.finish()
        return _wire(wire, 16, 9872)

    @_classmethod
    def decode(cls, wire):
        if cls is not Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray:
            raise TypeError('exact generated codec class required')
        reader = _Reader(_wire(wire, 16, 9872))
        value = _read_Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray(reader)
        reader.end()
        return value

_record_Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray = Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray

def _write_Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray(writer, value):
    if type(value) is not Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray:
        raise TypeError('exact generated record required')
    _start = len(writer.data)
    _part0 = value.header
    _write_Ros2Std_msgsMsgHeader(writer, _part0)
    _part1 = value.detections
    if type(_part1) not in (list, tuple):
        raise TypeError('array value required')
    _count1 = len(_part1)
    if _count1 > 16:
        raise ValueError('fixed/sequence count bound')
    writer.integer(_count1, 4)
    for _index in range(_count1):
        _element = _part1[_index]
        _write_Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection(writer, _element)
    if not 16 <= len(writer.data) - _start <= 9872:
        raise ValueError('nested encoded record aggregate extent')

def _read_Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray(reader):
    _start = reader.position
    value = Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray()
    value.header = _read_Ros2Std_msgsMsgHeader(reader)
    value.detections = [_read_Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection(reader) for _ in range(_read_count(reader, 16, 484))]
    if not 16 <= reader.position - _start <= 9872:
        raise ValueError('nested complete record aggregate extent')
    return value

