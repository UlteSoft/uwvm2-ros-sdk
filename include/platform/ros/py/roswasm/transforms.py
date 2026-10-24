"""@brief Preserve complete canonical TF values over explicitly owned capabilities.

@details This wire format is the Runtime's bounded TransformStamped profile, not CDR,
TCPROS serialization or pickle. Native frame authority and tighter field bounds
remain in the Host grant. Importing this module opens no resource. Calls are
synchronous on the caller thread; no listener, clock, executor, implicit retry
or permission creation occurs. Requires the matching Python SDK/bridge ABI.
@see TransformCodec
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
    """@brief Store every timestamp, frame, translation and orientation field.

    @details Frozen value object; manual construction performs no validation.
    The codec requires exact integers, immutable XYZ/XYZW tuples and distinct
    canonical ASCII frames. No quaternion normalization, time fallback, frame
    rewriting, native transform lookup or capability acquisition occurs here.
    @see TransformCodec.validate
    """

    sequence: int
    """@brief Exact u32 sequence in0..4294967295; ROS2 requires0.
    @details ROS1 preserves all32 bits. Manual construction does not enforce
    backend-specific rules; encode/decode validates before exposing wire/value.
    @see TransformCodec.validate
    """
    seconds: int
    """@brief Whole timestamp seconds in0..2147483647 for this canonical profile.
    @details Exact built-in int excluding bool. No clock reading, epoch
    conversion, negative-time support or current-time substitution is implicit.
    @see TransformCodec.validate
    """
    nanoseconds: int
    """@brief Fractional timestamp nanoseconds in0..999999999.
    @details Exact built-in int excluding bool. Values are rejected rather
    than normalized into seconds; this field alone is not a duration or clock.
    @see TransformCodec.validate
    """
    parent_frame: str
    """@brief Parent frame as1..255 canonical ASCII characters/bytes.
    @details Each slash-separated segment starts with a letter/underscore and
    contains only letters/digits/underscore. Must differ from child_frame.
    No leading/trailing slash, empty segment or authority inference is allowed.
    @see TransformCodec.validate
    """
    child_frame: str
    """@brief Distinct child frame using the same bounded ASCII segment grammar.
    @details Native lookup/broadcast rights separately fix permitted frame
    pairs. This copied name does not rename a frame or widen an endpoint grant.
    @see TransformCodec.validate
    """
    translation: tuple[float, float, float]
    """@brief Immutable three-component XYZ translation in metres.
    @details Components are exact built-in int/float values converted to finite
    binary64. Host grants may impose tighter magnitude bounds than this codec.
    @see TransformCodec.validate
    """
    quaternion: tuple[float, float, float, float]
    """@brief Immutable four-component dimensionless XYZW orientation quaternion.
    @details Finite binary64 components; squared norm must differ from1 by at
    most0.001. The codec rejects invalid orientation and never normalizes it.
    @see TransformCodec.validate
    """


class TransformCodec:
    """@brief Encode/decode the complete78..586-byte canonical TF profile.

    @details Select backend1 or2 explicitly. Validates exact integer domains,
    ASCII frames, finite XYZ/XYZW components, norm and complete byte consumption.
    The codec owns no ROS resource and performs no Host call. Keep its backend
    and borrowed caller values stable during synchronous use on one thread.
    @see TransformCodec.validate
    """

    def __init__(self, backend):
        """@brief Bind this local codec to one explicit ROS backend.

        @details Construction allocates only local state and grants no rights.
        No ROS availability, ABI or native type identity is negotiated.
        @param backend [in] Exact built-in int1 or2, excluding bool.
        @return None; caller owns a reusable resource-free codec.
        @raises ValueError Invalid backend type or value.
        @see TransformCodec.encode
        """
        if type(backend) is not int or backend not in (1, 2):
            raise ValueError("explicit TF backend1 or2 required")
        self.backend = backend
        """@brief Selected backend1/2 used for sequence validation.
        @details Treat as immutable after construction. This field grants no
        native access and is unrelated to a capability's transferable ownership.
        @see TransformCodec.__init__
        """

    def validate(self, value):
        """@brief Check every canonical TF field without encoding or I/O.

        @details Requires the exact TransformStamped type; integer fields must
        be exact int values, backend2 sequence must be0. Frames obey bounded
        ASCII grammar and differ. XYZ/XYZW must be exact tuples of lengths3/4,
        containing built-in int/float finite binary64 components. Squared
        quaternion norm must be finite and within0.001 of1. No mutation occurs.
        @param value [in] Complete borrowed value; stable throughout this call.
        @return None when valid; no resources or permission are acquired.
        @raises TypeError The record type is not exactly TransformStamped.
        @raises ValueError Invalid range, type, frame, component or orientation.
        @see TransformCodec.encode
        """
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
        """@brief Validate and encode every TF field into owned canonical bytes.

        @details Writes LE u32 sequence/seconds/nanoseconds, two u32-length ASCII
        frames, then seven LE binary64 XYZ/XYZW components. No timestamp/frame
        fallback, native call, mutation or retry occurs. Allocation can fail.
        @param value [in] Exact complete TransformStamped, borrowed synchronously.
        @return New immutable bytes with complete length78..586.
        @raises TypeError Invalid complete value type.
        @raises ValueError Any field/domain/orientation validation failure.
        @see TransformCodec.decode
        """
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
        """@brief Decode and validate one entire canonical TF value.

        @details Rejects truncation, forged frame lengths, non-ASCII names,
        trailing bytes and invalid field/sequence/norm semantics. Frames and
        tuples are independent immutable values; no input memory view escapes.
        No lookup, normalization or clock conversion occurs. Allocation can fail.
        @param data [in] Exact immutable bytes, inclusive length78..586.
        @return New frozen TransformStamped after all fields pass validation.
        @raises ValueError Invalid type, extent, frame, field or trailing input.
        @raises UnicodeDecodeError A frame contains bytes outside ASCII.
        @see TransformCodec.validate
        """
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
    """@brief Borrow one explicit capability for fixed-frame-pair TF lookups.

    @details Wrapper creates no capability or listener. Native grants separately
    fix the target/source frames and operation/quota/deadline. Calls occur once
    synchronously; close delegates to the same owner shared with the caller.
    @see TransformBuffer.lookup
    """

    def __init__(self, owner):
        """@brief Retain an existing owner and its backend-specific TF codec.

        @details Borrows the caller's Capability without opening, duplicating or
        checking native rights. Closing either reference retires the same owner.
        @param owner [in] Existing SDK Capability with intended tf_lookup grant.
        @return None; no additional native ownership or permissions.
        @raises TypeError The value is not an SDK Capability.
        @raises ValueError The owner's backend is not supported by TransformCodec.
        @see TransformBuffer.close
        """
        if not isinstance(owner, Capability):
            raise TypeError("an explicitly opened SDK Capability is required")
        self.owner = owner
        """@brief Shared original capability used for lookup and close.
        @details This is the same owner, not a new handle. Keep the binding
        stable; session, revocation, lease and retirement rules still apply.
        @see roswasm.client.Capability
        """
        self.codec = TransformCodec(owner.session.backend.version)
        """@brief Local complete TF codec bound to the owner's backend.
        @details No native TF access; borrowed wire is validated before a value
        is returned. Treat this binding as immutable throughout wrapper use.
        @see TransformCodec
        """

    def lookup(self, nanoseconds=0, capacity=586):
        """@brief Invoke exactly one fixed-frame-pair timestamp lookup.

        @details Encodes a single LE u64 timestamp request, invokes tf_lookup
        once, checks status, then validates the complete returned transform.
        The grant fixes frames; no identity fallback, current-clock read or
        retry occurs. RosError preserves capacity/timeout/disconnect outcomes;
        timeout does not authorize replay. Caller-thread synchronous operation.
        @param nanoseconds [in] Exact int0..2**64-1, excluding bool;0 selects
        latest according to the native lookup contract, otherwise timestamp ns.
        @param capacity [in] Exact int0..4194304 output bytes; default586.
        Capacity is not reserved queue credit and does not enlarge native grants.
        @return New complete frozen TransformStamped on a successful valid reply.
        @raises RosError Any nonzero import status with its complete Result.
        @raises ValueError Invalid arguments or malformed successful reply.
        @see TransformCodec.decode
        """
        unsigned(nanoseconds)
        if type(capacity) is not int or not 0 <= capacity <= 4194304:
            raise ValueError("explicit bounded TF output capacity required")
        request = Writer(8).integer(nanoseconds, 8).finish()
        result = self.owner.invoke("tf_lookup", request, capacity).checked()
        return self.codec.decode(result.data)

    def close(self):
        """@brief Attempt retirement through the same caller-supplied owner.

        @details Delegates once to Capability.close. Busy/session retirement may
        return conflict17; retired ownership returns9. An entered close cannot
        be replayed after timeout/disconnect or later result-allocation failure.
        @return Original Result; inspect its error. No automatic retry occurs.
        @see roswasm.client.Capability.close
        """
        return self.owner.close()


class TransformBroadcaster:
    """@brief Borrow one separately granted owner for explicit TF broadcasts.

    @details Construction publishes nothing and creates no grant. Complete
    values encode before a single synchronous import; there is no timer, thread,
    clock substitution, frame rewriting or automatic retry.
    @see TransformBroadcaster.broadcast
    """

    def __init__(self, owner):
        """@brief Retain an existing broadcast capability and matching TF codec.

        @details The caller and wrapper share the same lifetime/retirement.
        Operation/frame/magnitude/quota/deadline rights remain in the Host grant.
        @param owner [in] Existing SDK Capability with intended tf_broadcast rights.
        @return None; no new handle, native publication or permission.
        @raises TypeError The value is not an SDK Capability.
        @raises ValueError The owner has an unsupported backend.
        @see TransformBroadcaster.close
        """
        if not isinstance(owner, Capability):
            raise TypeError("an explicitly opened SDK Capability is required")
        self.owner = owner
        """@brief Shared original broadcast/close capability.
        @details Numeric handles are not copied or transferred. Treat this
        binding as immutable; session/lease/revocation rules remain effective.
        @see roswasm.client.Capability
        """
        self.codec = TransformCodec(owner.session.backend.version)
        """@brief Complete local TF codec for this owner's explicit backend.
        @details Encodes all fields before the effect is attempted. It neither
        normalizes orientation nor establishes permitted native frame pairs.
        @see TransformCodec
        """

    def broadcast(self, value):
        """@brief Encode a complete transform, then attempt one broadcast.

        @details Validates before calling tf_broadcast with output capacity0.
        Returns the native outcome without calling checked or replaying a
        timeout/disconnect. Native frame/bounds/admission may still reject a
        locally valid value. Borrowed value stays unchanged during this call.
        @param value [in] Exact complete TransformStamped with stable fields.
        @return Original Result; error0 alone is this import's success status.
        @raises TypeError Invalid record type before native entry.
        @raises ValueError Invalid complete TF field/domain/orientation.
        @see TransformCodec.encode
        """
        return self.owner.invoke("tf_broadcast", self.codec.encode(value), 0)

    def close(self):
        """@brief Attempt retirement through the shared original capability.

        @details Delegates once; busy/session retirement may yield17, while an
        already retired owner yields9. An entered close remains retired even
        after timeout/disconnect; no second retirement or publication is tried.
        @return Original Result; caller inspects the numeric outcome.
        @see roswasm.client.Capability.close
        """
        return self.owner.close()
