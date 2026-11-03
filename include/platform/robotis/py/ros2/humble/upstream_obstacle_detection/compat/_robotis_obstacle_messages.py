# SPDX-License-Identifier: Apache-2.0
"""Complete source message values for ROBOTIS's original obstacle detector.

The deployment maps robotis_humble_records to the existing complete vendor
record module.  This module borrows its Header/Time/Vector3 codecs and defines
only the two selected source imports.  LaserScan retains native IEEE readings,
including infinity and NaN; it does not clamp or filter the original scan.
This profile has a distinct codec identity from the finite-only catalog codec.
No declaration grants a capability or qualifies native type interoperability.
"""

from dataclasses import dataclass, field
import struct
import robotis_humble_records as _records
from roswasm.codecs import Reader, Writer

Vector3 = _records.Ros2Geometry_msgsMsgVector3
Header = _records.Ros2Std_msgsMsgHeader
Time = _records.Ros2Builtin_interfacesMsgTime


@dataclass
class Twist:
    linear: Vector3 = field(default_factory=Vector3)
    angular: Vector3 = field(default_factory=Vector3)

    _ROSWASM_TYPE = "geometry_msgs/msg/Twist"
    _ROSWASM_CODEC_IDENTITY = _records.Ros2Geometry_msgsMsgTwist.CODEC_IDENTITY
    MIN_WIRE_BYTES = MAX_WIRE_BYTES = 48

    @staticmethod
    def _encode(message):
        if type(message) is not Twist:
            raise TypeError("complete Twist required")
        value = _records.Ros2Geometry_msgsMsgTwist(
            linear=message.linear, angular=message.angular
        )
        return value.encode()

    @classmethod
    def _decode(cls, data):
        if cls is not Twist:
            raise TypeError("exact source Twist class required")
        value = _records.Ros2Geometry_msgsMsgTwist.decode(data)
        return cls(linear=value.linear, angular=value.angular)


def _float32(writer, value):
    # A valid native range may be +/-infinity or NaN.  Overflow of a finite
    # Python input is still rejected by struct rather than clamped to infinity.
    if type(value) not in (float, int):
        raise TypeError("IEEE binary32 numeric value required")
    writer.raw(struct.pack("<f", value))


def _sequence(writer, values):
    if type(values) not in (list, tuple) or len(values) > 1024:
        raise ValueError("complete LaserScan sequence quota")
    writer.integer(len(values), 4)
    for value in values:
        _float32(writer, value)


def _read_sequence(reader):
    count = reader.integer(4)
    # Check both the declared quota and remaining bytes before list allocation.
    if count > 1024 or count > (len(reader.data) - reader.position) // 4:
        raise ValueError("LaserScan count/remaining extent")
    return [struct.unpack("<f", reader.take(4))[0] for _ in range(count)]


@dataclass
class LaserScan:
    header: Header = field(default_factory=Header)
    angle_min: float = 0.0
    angle_max: float = 0.0
    angle_increment: float = 0.0
    time_increment: float = 0.0
    scan_time: float = 0.0
    range_min: float = 0.0
    range_max: float = 0.0
    ranges: list[float] = field(default_factory=list)
    intensities: list[float] = field(default_factory=list)

    _ROSWASM_TYPE = "sensor_msgs/msg/LaserScan"
    # Replaced with the exact reviewed IEEE profile digest by source preparation.
    _ROSWASM_CODEC_IDENTITY = "UWVMROS1_118b67e7232c46ba3857bb5d896af6d174546485a98284b33d0fb557ec203024"
    MIN_WIRE_BYTES = 48
    MAX_WIRE_BYTES = 8368
    _FLOAT_FIELDS = (
        "angle_min", "angle_max", "angle_increment", "time_increment",
        "scan_time", "range_min", "range_max",
    )

    @staticmethod
    def _encode(message):
        if type(message) is not LaserScan:
            raise TypeError("complete LaserScan required")
        writer = Writer(LaserScan.MAX_WIRE_BYTES)
        _records._write_Ros2Std_msgsMsgHeader(writer, message.header)
        for name in LaserScan._FLOAT_FIELDS:
            _float32(writer, getattr(message, name))
        _sequence(writer, message.ranges)
        _sequence(writer, message.intensities)
        data = writer.finish()
        if not LaserScan.MIN_WIRE_BYTES <= len(data) <= LaserScan.MAX_WIRE_BYTES:
            raise ValueError("complete LaserScan extent")
        return data

    @classmethod
    def _decode(cls, data):
        if cls is not LaserScan or type(data) is not bytes:
            raise TypeError("exact source LaserScan class and immutable wire required")
        if not cls.MIN_WIRE_BYTES <= len(data) <= cls.MAX_WIRE_BYTES:
            raise ValueError("complete LaserScan extent")
        reader = Reader(data)
        value = cls(header=_records._read_Ros2Std_msgsMsgHeader(reader))
        for name in cls._FLOAT_FIELDS:
            setattr(value, name, struct.unpack("<f", reader.take(4))[0])
        value.ranges = _read_sequence(reader)
        value.intensities = _read_sequence(reader)
        reader.end()
        return value
