# @file transforms.py
# @brief Provide the selected typed SDK binding and ownership boundary for ros1.
# @details Use the matching backend, catalog and shared language implementation. Keep caller-owned inputs alive
# for the documented operation and propagate status or language errors without treating a refused call as success.

"""Complete canonical TF values and one-call helpers over explicit owners.

This wire format is the Runtime's bounded TransformStamped profile, not CDR,
TCPROS serialization or pickle. Native frame authority and tighter field bounds
remain in the Host grant. Importing this module opens no resource.
"""

from dataclasses import dataclass
import math

from .codecs import Reader, Writer
from .raw import unsigned
from .client import Capability


def _frame(value):
    if type(value) is not str or not 1 <= len(value) <= 255 or not value.isascii():
        raise ValueError("bounded canonical ASCII TF frame required")
    for part in value.split("/"):
        if not part or not (part[0].isalpha() or part[0] == "_"):
            raise ValueError(
                "each TF frame segment must start with a letter or underscore"
            )
        if any(not (c.isalnum() or c == "_") for c in part):
            raise ValueError("invalid TF frame character")
    return value


def _scalar(value):
    if type(value) not in (int, float):
        raise ValueError("finite numeric TF component required")
    try:
        result = float(value)
    except OverflowError:
        raise ValueError("finite numeric TF component required") from None
    if not math.isfinite(result):
        raise ValueError("finite numeric TF component required")
    return result


@dataclass(frozen=True)
class TransformStamped:
    """All fields, with immutable XYZ/XYZW tuples and exact integer timestamps.

    Both backends currently require nonnegative signed-i32 seconds and nanos
    below one billion. ROS1 preserves u32 sequence; ROS2 requires sequence zero.
    No quaternion normalization, timestamp fallback or frame rewriting occurs.
    """

    sequence: int
    seconds: int
    nanoseconds: int
    parent_frame: str
    child_frame: str
    translation: tuple[float, float, float]
    quaternion: tuple[float, float, float, float]


class TransformCodec:
    """Explicit backend1/2 codec, exactly78..586 bytes, complete consumption."""

    def __init__(self, backend):
        if type(backend) is not int or backend not in (1, 2):
            raise ValueError("explicit TF backend1 or2 required")
        self.backend = backend

    def validate(self, value):
        if type(value) is not TransformStamped:
            raise TypeError("a complete TransformStamped value is required")
        for component, maximum in (
            (value.sequence, 0xFFFFFFFF),
            (value.seconds, 0x7FFFFFFF),
            (value.nanoseconds, 999999999),
        ):
            if type(component) is not int or not 0 <= component <= maximum:
                raise ValueError("invalid canonical TF integer field")
        if self.backend == 2 and value.sequence != 0:
            raise ValueError("ROS2 canonical TF sequence must be zero")
        _frame(value.parent_frame)
        _frame(value.child_frame)
        if value.parent_frame == value.child_frame:
            raise ValueError("distinct TF parent and child required")
        if (
            type(value.translation) is not tuple
            or len(value.translation) != 3
            or type(value.quaternion) is not tuple
            or len(value.quaternion) != 4
        ):
            raise ValueError("complete immutable XYZ and XYZW tuples required")
        for scalar in value.translation:
            _scalar(scalar)
        norm = 0.0
        for scalar in value.quaternion:
            number = _scalar(scalar)
            norm += number * number
        if not math.isfinite(norm) or abs(norm - 1.0) > 0.001:
            raise ValueError(
                "unit quaternion within canonical squared-norm tolerance required"
            )

    def encode(self, value):
        """Validate every field before returning owned bytes; no Host call."""
        self.validate(value)
        writer = Writer(586)
        writer.integer(value.sequence, 4).integer(value.seconds, 4).integer(
            value.nanoseconds, 4
        )
        writer.text(value.parent_frame).text(value.child_frame)
        for scalar in (*value.translation, *value.quaternion):
            writer.f64(_scalar(scalar))
        return writer.finish()

    def decode(self, data):
        """Reject truncation, forged lengths and trailing input before exposure."""
        if type(data) is not bytes or not 78 <= len(data) <= 586:
            raise ValueError("complete bounded TF bytes required")
        reader = Reader(data)
        sequence, seconds, nanoseconds = (reader.integer(4) for _ in range(3))

        def frame():
            size = reader.integer(4)
            if not 1 <= size <= 255:
                raise ValueError("bounded canonical TF frame bytes required")
            return reader.take(size).decode("ascii", "strict")

        parent, child = frame(), frame()
        translation = tuple(reader.f64() for _ in range(3))
        quaternion = tuple(reader.f64() for _ in range(4))
        reader.end()
        value = TransformStamped(
            sequence, seconds, nanoseconds, parent, child, translation, quaternion
        )
        self.validate(value)
        return value


class TransformBuffer:
    """One fixed-frame-pair lookup owner; this wrapper creates no grant."""

    def __init__(self, owner):
        if not isinstance(owner, Capability):
            raise TypeError("an explicitly opened SDK Capability is required")
        self.owner = owner
        self.codec = TransformCodec(owner.session.backend.version)

    def lookup(self, nanoseconds=0, capacity=586):
        """One timestamp-u64 RPC. Zero selects latest; no retry or identity fallback.

        RosError preserves the original Result, including required capacity or
        a timeout/disconnect. Malformed successful replies raise ValueError.
        The grant fixes target/source frames; the request cannot change them.
        """
        unsigned(nanoseconds)
        if type(capacity) is not int or not 0 <= capacity <= 4194304:
            raise ValueError("explicit bounded TF output capacity required")
        request = Writer(8).integer(nanoseconds, 8).finish()
        result = self.owner.invoke("tf_lookup", request, capacity).checked()
        return self.codec.decode(result.data)

    def close(self):
        return self.owner.close()


class TransformBroadcaster:
    """One separately granted broadcast owner; no implicit native publication."""

    def __init__(self, owner):
        if not isinstance(owner, Capability):
            raise TypeError("an explicitly opened SDK Capability is required")
        self.owner = owner
        self.codec = TransformCodec(owner.session.backend.version)

    def broadcast(self, value):
        """Encode first, invoke once with output capacity0, return original Result."""
        return self.owner.invoke("tf_broadcast", self.codec.encode(value), 0)

    def close(self):
        return self.owner.close()
