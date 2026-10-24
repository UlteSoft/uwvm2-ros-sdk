"""@brief Convert complete scalar/builtin values to bounded canonical LE bytes.

@details Integers are little endian, UTF-8 strings have u32 byte counts, and payloads
are bounded before copying. Decoders reject trailing bytes. Finite-number
requirements match this runtime's current canonical profile, independently
of the broader native ROS type. Encoding grants no operation or resource.
Functions execute synchronously in Python and start no thread, clock, executor
or cleanup task. Results are owned immutable bytes/values. Discard a Writer
after a conversion failure: compound writes are not rollback transactions.
@see Writer
"""

import math
import struct

MAX_WIRE = 4193786
"""@brief Inclusive maximum encoded payload, including its canonical prefixes.
@details Units are bytes. Endpoint/type quotas may be stricter; this constant
is neither permission nor queue credit. Reader's receive bound is4194304 bytes.
@see Writer.__init__
"""


class Writer:
    """@brief Build a bounded canonical value before publishing immutable bytes.

    @details Owns its mutable bytearray. Keep it on one caller thread; the class
    supplies no reentry/concurrency guard. Local conversion opens no resource.
    A compound method or allocation failure may leave a partial prefix: discard
    the writer on failure. finish copies without consuming/resetting the writer.
    @see Writer.finish
    """

    def __init__(self, maximum=MAX_WIRE):
        """@brief Allocate an empty local writer with a fixed inclusive byte cap.

        @param maximum [in] Exact int, 0..MAX_WIRE bytes, including all prefixes.
        @return None; caller owns the new mutable writer and its Python storage.
        @details Reserves no endpoint, queue slot or permission. Allocation is
        incremental; this limit is not a promise that all capacity was reserved.
        @raises ValueError Invalid type/range, including bool.
        @see Writer.raw
        """
        if type(maximum) is not int or not 0 <= maximum <= MAX_WIRE:
            raise ValueError("invalid wire allocation bound")
        self.maximum = maximum
        """@brief Inclusive complete output capacity in bytes, fixed at construction.
        @details Includes every prefix/body byte; it is not preallocated storage
        or queue credit. Read-only by contract; mutate only through writer APIs.
        @see Writer.raw
        """
        self.data = bytearray()
        """@brief Own this writer's mutable staging bytearray.
        @details Internal buffer retained for writer lifetime; use its methods
        for mutation. finish returns an independent immutable copy without reset.
        @see Writer.finish
        """

    def raw(self, value):
        """@brief Append bytes only when they fit the complete remaining cap.

        @details Copies synchronously into this writer; it retains no mutable
        source view and performs no I/O. Existing prefixes count toward the cap.
        @param value [in] Immutable bytes; caller retains its original value.
        @return This same Writer for local chaining.
        @raises TypeError The value is not bytes.
        @raises ValueError The bytes exceed maximum-len(data).
        @raises MemoryError Bytearray allocation may fail; discard this writer.
        @see Writer.finish
        """
        if not isinstance(value, bytes):
            raise TypeError("bytes required")
        if len(value) > self.maximum - len(self.data):
            raise ValueError("wire allocation bound")
        self.data.extend(value)
        return self

    def integer(self, value, size, signed=False):
        """@brief Append one exact integer in the selected little-endian width.

        @details Rejects bool/integer subclasses as values; no float narrowing
        occurs. Signed encoding uses two's complement. This is a local copy.
        @param value [in] Exact int within the signed/unsigned size*8-bit range.
        @param size [in] Byte width1,2,4 or8.
        @param signed [in] False for [0,2**bits-1], True for
        [-2**(bits-1),2**(bits-1)-1]; defaultFalse.
        @return This same Writer after appending size bytes.
        @raises ValueError Invalid value type/width or insufficient output space.
        @raises OverflowError The integer does not fit the requested range.
        @see Reader.integer
        """
        if type(value) is not int or size not in (1, 2, 4, 8):
            raise ValueError("invalid integer")
        return self.raw(value.to_bytes(size, "little", signed=signed))

    def f64(self, value):
        """@brief Append one finite IEEE754 binary64 value, retaining signed zero.

        @details Converts an exact built-in int/float to binary64 locally; float
        rounding is part of this scalar domain and grants no native operation.
        @param value [in] Finite built-in int/float, excluding bool/subclasses.
        @return This same Writer after appending eight LE bytes.
        @raises ValueError Wrong type, NaN/infinity or insufficient wire space.
        @raises OverflowError An integer cannot be represented as a finite float.
        @see Reader.f64
        """
        if type(value) not in (float, int) or not math.isfinite(value):
            raise ValueError("finite float64 required")
        return self.raw(struct.pack("<d", value))

    def f32(self, value):
        """@brief Round a finite scalar to IEEE754 binary32 and append its bytes.

        @details Retains signed zero and rejects target overflow. It does not
        silently serialize infinity or perform physical-unit conversion.
        @param value [in] Finite built-in int/float, excluding bool/subclasses.
        @return This same Writer after appending four LE bytes.
        @raises ValueError Wrong type, NaN/infinity or insufficient wire space.
        @raises OverflowError Source integer/float exceeds the finite float32 domain.
        @see Reader.f32
        """
        if type(value) not in (float, int) or not math.isfinite(value):
            raise ValueError("finite float32 required")
        return self.raw(struct.pack("<f", value))

    def text(self, value):
        """@brief Append a u32 byte count and strict UTF-8 text, including NUL/BOM.

        @details UTF-8 encoding is strict. The final encoded bytes, not character
        count, must fit the writer cap including the four-byte prefix. If the
        encoded body fails the final bound, its prefix may already be written;
        discard the Writer on any error. No normalization/terminator is added.
        @param value [in] Unicode str; the original string remains caller-owned.
        @return This same Writer after the complete local write.
        @raises TypeError Non-str input.
        @raises UnicodeEncodeError Invalid Unicode surrogate input.
        @raises ValueError Count/payload exceeds the remaining byte capacity.
        @see Reader.text
        """
        if not isinstance(value, str):
            raise TypeError("str required")
        if len(value) > self.maximum - len(self.data) - 4:
            raise ValueError("wire text bound")
        data = value.encode("utf-8", "strict")
        return self.integer(len(data), 4).raw(data)

    def finish(self):
        """@brief Copy current writer storage into caller-owned immutable bytes.

        @details Does not validate a message schema or consume/reset this writer.
        Call only after every component succeeded. Subsequent writes cannot
        mutate the returned bytes. No resource, callback or I/O is performed.
        @return New immutable byte value, length0..maximum inclusive.
        @raises MemoryError Ordinary copy allocation failure.
        @see Writer.raw
        """
        return bytes(self.data)


class Reader:
    """@brief Read bounded canonical fields from one immutable bytes value.

    @details Retains the input for reader lifetime and advances a local byte
    cursor. It starts no callback/I/O. Keep the reader on one caller thread.
    Compound reads may advance before an error; discard failed readers. Call
    end() before treating the decoded fields as one complete message.
    @see Reader.end
    """

    def __init__(self, value):
        """@brief Create a zero-position reader over bounded immutable bytes.

        @details No native type identity, ROS permission or resource is created.
        @param value [in] Immutable bytes, length0..4194304 inclusive, retained
        for reader lifetime. No mutable input view is accepted.
        @return None; caller owns the new local reader.
        @raises ValueError Non-bytes input or excessive receive extent.
        @see Reader.take
        """
        if not isinstance(value, bytes) or len(value) > 4194304:
            raise ValueError("bounded bytes required")
        self.data = value
        """@brief Retain the immutable input bytes for the reader's lifetime.
        @details No mutable source view is accepted or exposed. Use take and
        typed reads; this reference is not a native handle or resource grant.
        @see Reader.take
        """
        self.position = 0
        """@brief Track the next byte offset, initially0 and at most len(data).
        @details Local cursor state; do not mutate directly or share across
        concurrent/reentrant readers. Compound failures may leave it advanced.
        @see Reader.end
        """

    def take(self, size):
        """@brief Read an exact byte extent after checking the remaining input.

        @details Only this successful field advances the cursor. Returned bytes
        have immutable value semantics; no mutable view of input escapes.
        @param size [in] Exact int, 0..len(data)-position bytes, excluding bool.
        @return Immutable bytes of exactly size; caller owns the value.
        @raises ValueError Invalid size/type or truncated input, before advancing.
        @see Reader.end
        """
        if type(size) is not int or not 0 <= size <= len(self.data) - self.position:
            raise ValueError("truncated canonical value")
        result = self.data[self.position : self.position + size]
        self.position += size
        return result

    def integer(self, size, signed=False):
        """@brief Read one exact little-endian integer without floating conversion.

        @param size [in] Byte width1,2,4 or8.
        @param signed [in] True for two's-complement signed interpretation;
        False for the full unsigned range, including UINT64_MAX.
        @return Exact caller-owned Python int; advances by size bytes on success.
        @details Performs local conversion only; opaque IDs remain nontransferable
        authority in their originating Instance even when represented as integers.
        @raises ValueError Invalid width or insufficient remaining input.
        @see Writer.integer
        """
        if size not in (1, 2, 4, 8):
            raise ValueError("invalid integer width")
        return int.from_bytes(self.take(size), "little", signed=signed)

    def f64(self):
        """@brief Read exactly eight LE bytes as a finite IEEE754 binary64 value.

        @details Preserves signed zero. A nonfinite field raises after consuming
        its eight bytes; discard that failed reader. No I/O or permission effect.
        @return Finite Python float.
        @raises ValueError Truncation, NaN or infinity.
        @see Writer.f64
        """
        (value,) = struct.unpack("<d", self.take(8))
        if not math.isfinite(value):
            raise ValueError("nonfinite canonical double")
        return value

    def f32(self):
        """@brief Read four LE bytes as a finite IEEE754 binary32 value.

        @details Returns its exact binary32 numeric value as a Python float and
        retains signed zero. Failure can leave the cursor advanced; discard it.
        @return Finite Python float; no ROS/native operation is invoked.
        @raises ValueError Truncation, NaN or infinity.
        @see Writer.f32
        """
        (value,) = struct.unpack("<f", self.take(4))
        if not math.isfinite(value):
            raise ValueError("nonfinite canonical float32")
        return value

    def text(self):
        """@brief Decode u32-byte-counted strict UTF-8 without stripping NUL/BOM.

        @details Consumes the exact encoded byte count; no normalization or NUL
        termination is imposed. A bad body can fail after consuming its prefix.
        @return Caller-owned Unicode str; no mutable input alias is exposed.
        @raises ValueError Truncated count/body.
        @raises UnicodeDecodeError Invalid strict UTF-8.
        @see Writer.text
        """
        return self.take(self.integer(4)).decode("utf-8", "strict")

    def end(self):
        """@brief Require that every input byte belongs to the decoded value.

        @details Reads local cursor state without advancing or performing I/O.
        It does not validate a native schema or grant resource authority.
        @return None when position equals len(data).
        @raises ValueError Trailing canonical bytes remain.
        @see Reader.take
        """
        if self.position != len(self.data):
            raise ValueError("trailing canonical bytes")


class String:
    """@brief Encode/decode the canonical std_msgs/String value, including empty text.

    @details Stateless local codec: u32 LE UTF-8 byte count followed by the exact
    bytes, with no terminator. NUL/BOM are preserved and surrogates are refused.
    This is not CDR/TCPROS serialization or a native type-support registration.
    @see String.encode
    """

    @staticmethod
    def encode(value):
        """@brief Encode one Unicode string into a complete bounded wire value.

        @details Uses the default MAX_WIRE cap including its four-byte prefix.
        No normalization, resource opening or permission change occurs.
        @param value [in] Unicode str, strict UTF-8; empty text is valid.
        @return Caller-owned immutable canonical bytes.
        @raises TypeError Wrong value type.
        @raises UnicodeEncodeError Invalid Unicode surrogate.
        @raises ValueError The encoded value exceeds MAX_WIRE.
        @see String.decode
        """
        return Writer().text(value).finish()

    @staticmethod
    def decode(data):
        """@brief Decode exactly one complete canonical String value.

        @details Enforces the prefix/body extent, strict UTF-8 and no trailing
        bytes. Preserves NUL/BOM and performs no I/O or normalization.
        @param data [in] Immutable canonical bytes, at most4194304 bytes.
        @return Caller-owned Unicode str, including the valid empty string.
        @raises ValueError Truncated/excessive/trailing canonical data.
        @raises UnicodeDecodeError Malformed UTF-8.
        @see String.encode
        """
        reader = Reader(data)
        value = reader.text()
        reader.end()
        return value


class Bool:
    """@brief Convert std_msgs/Bool or SetBool request values using one byte0/1.

    @details Stateless synchronous local codec; noncanonical truthy integers are
    not accepted by encode. This creates neither a native type nor a grant.
    @see Bool.encode
    """

    @staticmethod
    def encode(value):
        """@brief Encode an exact built-in bool as one canonical byte.

        @details Does not apply Python truthiness to arbitrary objects and
        performs no native operation, I/O, callback or persistent mutation.
        @param value [in] Exact bool, False or True.
        @return Immutable one-byte value b'\\0' or b'\\1'.
        @raises ValueError Non-bool input.
        @see Bool.decode
        """
        if type(value) is not bool:
            raise ValueError("bool required")
        return bytes((int(value),))

    @staticmethod
    def decode(data):
        """@brief Decode a complete canonical byte0/1 without truthiness coercion.

        @details Requires equality with one of the two complete byte encodings;
        other values/extents raise. No resource or permission effect occurs.
        @param data [in] Canonical one-byte wire representation, b'\\0' or b'\\1'.
        @return Built-in bool.
        @raises ValueError Noncanonical value or extent.
        @see Bool.encode
        """
        if data not in (b"\0", b"\1"):
            raise ValueError("invalid Bool")
        return data == b"\1"


class Twist:
    """@brief Preserve all geometry_msgs/Twist linear XYZ and angular XYZ fields.

    @details Exactly six finite binary64 scalars in48 LE bytes. Conventional
    ROS SI velocity units are m/s and rad/s; this codec does not convert units,
    enforce robot limits or authorize movement. Calls are synchronous/local.
    @see Twist.encode
    """

    @staticmethod
    def encode(value):
        """@brief Encode all six finite Twist components in their native order.

        @details Copies linear x/y/z then angular x/y/z, preserving signed zero.
        It performs no physical validation, ROS operation or implicit clamping.
        @param value [in] Six-element sized iterable of built-in int/float values.
        @return New immutable48-byte canonical encoding.
        @raises ValueError Wrong count/type/nonfinite component.
        @raises OverflowError A component cannot be represented as finite binary64.
        @see Twist.decode
        """
        if len(value) != 6:
            raise ValueError("six Twist components required")
        writer = Writer(48)
        for item in value:
            writer.f64(item)
        return writer.finish()

    @staticmethod
    def decode(data):
        """@brief Decode a complete48-byte Twist without field projection.

        @details Rejects trailing/truncated data and NaN/infinity. Performs no
        normalization, unit conversion, callback or native resource operation.
        @param data [in] Exact canonical linear XYZ/angular XYZ binary64 bytes.
        @return Caller-owned six-float tuple in that order.
        @raises ValueError Malformed extent or nonfinite field.
        @see Twist.encode
        """
        reader = Reader(data)
        value = tuple(reader.f64() for _ in range(6))
        reader.end()
        return value


class Trigger:
    """@brief Represent the complete empty std_srvs/Trigger request.

    @details The value is None and its wire representation is zero bytes. No
    placeholder byte, resource operation or permission is synthesized.
    @see Trigger.encode
    """

    @staticmethod
    def encode(value=None):
        """@brief Encode the empty Trigger request as zero bytes.

        @details Stateless synchronous conversion; no ROS call is performed.
        @param value [in] None only; omitted defaults to None.
        @return Empty immutable bytes.
        @raises ValueError Any nonempty request value.
        @see Trigger.decode
        """
        if value is not None:
            raise ValueError("Trigger request is empty")
        return b""

    @staticmethod
    def decode(data):
        """@brief Decode exactly the zero-byte Trigger request.

        @details Requires an empty encoding, with no fabricated data or effect.
        @param data [in] Empty canonical bytes.
        @return None, the complete empty request value.
        @raises ValueError Nonempty encoding.
        @see Trigger.encode
        """
        if data != b"":
            raise ValueError("Trigger request is empty")
        return None


class ServiceResponse:
    """@brief Preserve Trigger/SetBool response success and message fields.

    @details Canonical one-byte Bool followed by byte-counted strict UTF-8 String.
    Local conversion does not respond to, acknowledge or complete any service.
    @see ServiceResponse.encode
    """

    @staticmethod
    def encode(value):
        """@brief Encode the complete success/message response pair.

        @details Both fields participate; no default/projected response is made.
        UTF-8 and the complete MAX_WIRE byte cap follow String/Writer semantics.
        @param value [in] Two-element iterable (exact bool success, str message).
        @return Caller-owned immutable canonical bytes.
        @raises ValueError Wrong arity/domain or excessive complete wire extent.
        @raises TypeError Invalid message type/noniterable input.
        @raises UnicodeEncodeError Invalid Unicode message surrogate.
        @see ServiceResponse.decode
        """
        success, message = value
        return Writer().raw(Bool.encode(success)).text(message).finish()

    @staticmethod
    def decode(data):
        """@brief Decode both fields and require exact complete wire consumption.

        @details Strictly validates Bool0/1, message extent and UTF-8 without
        trimming NUL/BOM. Performs no service reply or permission change.
        @param data [in] Immutable complete canonical response bytes.
        @return Caller-owned (bool success, str message) tuple.
        @raises ValueError Invalid bool, truncation, excessive/trailing bytes.
        @raises UnicodeDecodeError Invalid UTF-8 message.
        @see ServiceResponse.encode
        """
        reader = Reader(data)
        value = Bool.decode(reader.take(1)), reader.text()
        reader.end()
        return value


class Int64:
    """@brief Preserve a full signed64-bit ROS2 parameter integer.

    @details Exact two's-complement LE bytes, with no float/53-bit narrowing.
    Local codec conversion grants no parameter read/write authority.
    @see Int64.encode
    """

    @staticmethod
    def encode(value):
        """@brief Encode one exact signed64-bit integer into eight LE bytes.

        @details Synchronous local copy; bool/float/subclasses are refused.
        @param value [in] Exact int in [-2**63,2**63-1].
        @return Caller-owned immutable eight-byte value.
        @raises ValueError Wrong value type.
        @raises OverflowError Integer outside the signed64-bit domain.
        @see Int64.decode
        """
        return Writer(8).integer(value, 8, True).finish()

    @staticmethod
    def decode(data):
        """@brief Decode exactly eight LE two's-complement bytes without narrowing.

        @details Requires exact complete consumption and performs no native I/O.
        @param data [in] Complete eight-byte immutable canonical encoding.
        @return Exact caller-owned int in [-2**63,2**63-1].
        @raises ValueError Wrong extent or non-bytes input.
        @see Int64.encode
        """
        reader = Reader(data)
        value = reader.integer(8, True)
        reader.end()
        return value


class Float64:
    """@brief Encode/decode a finite binary64 parameter scalar.

    @details Preserves signed zero and rejects NaN/infinity. Conversion is local
    and synchronous; no parameter access, unit conversion or grant occurs.
    @see Float64.encode
    """

    @staticmethod
    def encode(value):
        """@brief Encode one finite scalar as eight LE binary64 bytes.

        @details An int is rounded to binary64 in this float domain; use Int64
        for exact integer parameters. No I/O or persistent mutation occurs.
        @param value [in] Finite built-in int/float, excluding bool/subclasses.
        @return Caller-owned immutable eight-byte encoding.
        @raises ValueError Invalid type, NaN or infinity.
        @raises OverflowError Source integer exceeds finite binary64 conversion.
        @see Float64.decode
        """
        return Writer(8).f64(value).finish()

    @staticmethod
    def decode(data):
        """@brief Decode exactly one finite binary64 parameter scalar.

        @details Requires eight complete bytes, rejects nonfinite values and
        retains signed zero without normalization or native effects.
        @param data [in] Exact immutable eight-byte canonical encoding.
        @return Finite caller-owned Python float.
        @raises ValueError Malformed extent/type or NaN/infinity.
        @see Float64.encode
        """
        reader = Reader(data)
        value = reader.f64()
        reader.end()
        return value


def array_codec(element, maximum):
    """@brief Create a local bounded u32-count array codec over a scalar codec.

    @details Captures element and maximum in the returned class. encode invokes
    element.encode synchronously for each item; a caller-supplied codec controls
    its own effects. Builtin decode framing supports String, Bool, Int64 and
    Float64 only. This factory does not validate arbitrary generated-record
    framing or open a parameter resource. Keep configuration fixed during use.
    @param element [in] Scalar codec class; use the supported builtin classes
    for symmetric encode/decode. Arbitrary message codecs need their own framing.
    @param maximum [in] Exact int element-count cap, 0..MAX_WIRE; the complete
    encoded byte cap remains MAX_WIRE independently of this element bound.
    @return New Array class exposing static encode/decode; no instance is needed.
    @raises ValueError Invalid count bound; no native operation occurs.
    @see array_codec.Array.decode
    """
    if type(maximum) is not int or not 0 <= maximum <= MAX_WIRE:
        raise ValueError("invalid element bound")

    class Array:
        """@brief Complete bounded array value codec returned by array_codec.

        @details Encodes a u32 element count followed by each complete scalar
        field; no padding/projection occurs. Results have owned value semantics.
        @see array_codec
        """

        @staticmethod
        def encode(values):
            """@brief Encode every item with the captured scalar codec.

            @details Calls element.encode once per item synchronously, then
            copies each returned bytes value. No retry or grant is created.
            @param values [in] tuple/list with at most maximum complete items.
            @return Owned bytes including the u32 count, at most MAX_WIRE bytes.
            @raises ValueError Count/domain/complete extent violates a bound.
            @raises BaseException Element codec/allocation failures propagate.
            @see array_codec.Array.decode
            """
            if not isinstance(values, (tuple, list)) or len(values) > maximum:
                raise ValueError("array element bound")
            writer = Writer().integer(len(values), 4)
            for value in values:
                writer.raw(element.encode(value))
            return writer.finish()

        @staticmethod
        def decode(data):
            """@brief Decode a complete array using the captured builtin framing.

            @details String is counted UTF-8, Bool one byte, and Int64/Float64
            eight bytes. Unsupported codecs fail when a nonempty item needs
            decoding. Requires exact consumption; no native operation occurs.
            @param data [in] Immutable canonical array bytes with a u32 count.
            @return New tuple of complete scalar values, at most maximum items.
            @raises ValueError Count, framing/domain or input extent is invalid.
            @raises UnicodeDecodeError A String element has malformed UTF-8.
            @see array_codec.Array.encode
            """
            # Scalar codecs below have explicit framing; arbitrary generated
            # message codecs must provide their own whole-record decoder.
            reader = Reader(data)
            count = reader.integer(4)
            if count > maximum:
                raise ValueError("array element bound")
            values = []
            for _ in range(count):
                if element is String:
                    values.append(reader.text())
                elif element is Bool:
                    values.append(Bool.decode(reader.take(1)))
                elif element in (Int64, Float64):
                    values.append(element.decode(reader.take(8)))
                else:
                    raise ValueError("unsupported scalar array codec")
            reader.end()
            return tuple(values)

    return Array


def goal_id(value):
    """@brief Encode a nonzero owned Action goal ID without changing its bits.

    @details Local conversion does not open/adopt/cancel a goal. The ID remains
    bound to its original Instance/backend and does not transfer authority.
    @param value [in] Exact int in1..2**64-1, excluding bool/subclasses.
    @return Owned immutable eight-byte LE ID.
    @raises ValueError Invalid type, zero, negative or excessive value.
    @see action_sequence
    """
    if type(value) is not int or not 0 < value < 1 << 64:
        raise ValueError("nonzero unsigned goal ID required")
    return Writer(8).integer(value, 8).finish()


def fibonacci_goal(order):
    """@brief Encode the builtin bounded Fibonacci goal as a signed i32.

    @details Pure local conversion; it does not submit or authorize an Action.
    The explicit0..46 profile keeps generated values in signed32-bit range.
    @param order [in] Exact int, 0..46 inclusive, excluding bool/subclasses.
    @return Owned immutable four-byte LE request.
    @raises ValueError Invalid type/range.
    @see action_sequence
    """
    if type(order) is not int or not 0 <= order <= 46:
        raise ValueError("Fibonacci order must be 0..46")
    return Writer(4).integer(order, 4, True).finish()


def action_sequence(data, terminal=True):
    """@brief Decode every field of a bounded Fibonacci feedback/result value.

    @details Reads an eight-byte LE goal ID, optional one-byte terminal outcome,
    four-byte u32 count and contiguous signed i32 elements. Requires nonzero ID,
    count<=48, nonnegative elements and exact complete consumption. A terminal
    outcome must be2,3 or4; feedback returns kind0. This decoder neither
    acknowledges an event nor retries/cancels/retires an Action.
    @param data [in] Immutable complete canonical bytes,12..204 bytes for feedback
    or13..205 bytes for terminal output, according to the element count.
    @param terminal [in] True to read/validate the outcome byte; False for feedback.
    @return Owned (unsigned goal ID, numeric kind, tuple of all sequence values).
    @raises ValueError Invalid IDs/outcome/count/value or truncated/trailing data.
    @see fibonacci_goal
    """
    reader = Reader(data)
    identity = reader.integer(8)
    kind = reader.integer(1) if terminal else 0
    count = reader.integer(4)
    if not identity or count > 48 or (terminal and kind not in (2, 3, 4)):
        raise ValueError("invalid terminal Action sequence")
    sequence = tuple(reader.integer(4, True) for _ in range(count))
    if any(value < 0 for value in sequence):
        raise ValueError("negative Fibonacci value")
    reader.end()
    return identity, kind, sequence
