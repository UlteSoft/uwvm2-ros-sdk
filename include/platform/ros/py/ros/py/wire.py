"""@file wire.py
@brief Encode complete admitted ROS records using genuine Python values.
@details All integer bits stay in Python integers. Inputs are checked before an
encoded result is exposed; decoded records own their text/byte/array storage.
No codec opens a capability, invokes ROS or treats codec identity as native proof.
"""

import _struct
import math


class CodecError(ValueError):
    """@brief Report malformed complete values or canonical bytes.

    @details Code 22 denotes a type/domain/shape error; 90 denotes the admitted
    finite wire extent. The exception never contains a partially decoded value.
    """

    def __init__(self, code=22):
        """@brief Initialize one codec failure. @param code Original local errno."""
        super().__init__("invalid complete canonical value")
        self.code = code


class Record:
    """@brief Base for generated complete ordinary Python record classes.

    @details The concrete class supplies every original field, default, constant,
    bound and identity. Construction creates local values and grants no authority.
    """

    __slots__ = ()

    def __init__(self, **fields):
        """@brief Construct all original fields with independent owned defaults.

        @param fields Exact original field names; unknown names are rejected.
        @return None; construction is local and complete codec checks occur later.
        """
        expected = {field["name"] for field in self.SCHEMA["fields"]}
        if not fields.keys() <= expected:
            raise CodecError()
        for field in self.SCHEMA["fields"]:
            name = field["name"]
            if name in fields:
                value = fields[name]
            elif field["array"] == "sequence":
                value = []
            elif field["array"] == "array":
                value = [self.REGISTRY.default(field) for _ in range(field["count"])]
            else:
                value = self.REGISTRY.default(field)
            setattr(self, name, value)

    def encode(self):
        """@brief Validate and encode this complete value. @return Owning canonical bytes."""
        return self.REGISTRY.encode(self)

    @classmethod
    def decode(cls, data):
        """@brief Decode exactly one whole value. @param data Complete bytes. @return Owned record."""
        return cls.REGISTRY.decode(cls, data)


class Registry:
    """@brief Resolve full nested records within one selected original catalog."""

    def __init__(self):
        """@brief Create an empty local codec registry without ROS resources."""
        self.types = {}

    def add(self, cls):
        """@brief Register one generated class locally. @param cls Complete class. @return Same class."""
        if cls.SCHEMA["type"] in self.types:
            raise CodecError()
        cls.REGISTRY = self
        self.types[cls.SCHEMA["type"]] = cls
        return cls

    def default(self, field):
        """@brief Preserve one original scalar default. @param field Original IR. @return Independent value."""
        if field.get("default") is not None:
            return field["default"]
        kind = field["type"]
        if kind == "string":
            return b"" if field["string_encoding"] == "raw_bytes" else ""
        if kind == "bool":
            return False
        if kind.startswith("float"):
            return 0.0
        if kind.startswith(("int", "uint")):
            return 0
        return self.types[kind]()

    @staticmethod
    def semantics(value):
        """@brief Validate original recognized cross-field rules.

        @param value Complete record before exposure or encoding.
        @return None; malformed normalized times or JointState arrays raise.
        """
        rule = value.SCHEMA["semantics"]
        if rule in ("normalized-time", "normalized-duration"):
            names = value.__slots__
            fraction = getattr(
                value,
                (
                    "nanosec"
                    if "nanosec" in names
                    else "nsec" if "nsec" in names else "nsecs"
                ),
            )
            # Reject None, bool and noninteger values before ordering so the
            # public CodecError contract applies to malformed time fields.
            if type(fraction) is not int or not 0 <= fraction <= 999999999:
                raise CodecError()
        if rule == "joint-state-optional-equal-length-arrays":
            # Match encode's supported sequence types before asking for length.
            # Empty arrays remain optional; every nonempty extent must agree.
            arrays = [
                getattr(value, name)
                for name in ("name", "position", "velocity", "effort")
            ]
            if any(type(array) not in (list, tuple) for array in arrays):
                raise CodecError()
            lengths = {len(array) for array in arrays if array}
            if len(lengths) > 1:
                raise CodecError()

    def scalar(self, field, value):
        """@brief Validate and encode one complete scalar/nested value.

        @param field Original field IR and admitted finite bounds.
        @param value Exact Python scalar or generated complete nested record.
        @return Complete canonical bytes for this element.
        """
        kind = field["type"]
        if kind == "string":
            if field["string_encoding"] == "raw_bytes":
                if type(value) is not bytes:
                    raise CodecError()
                raw = value
            else:
                if type(value) is not str or "\0" in value:
                    raise CodecError()
                try:
                    raw = value.encode("utf-8", "strict")
                except UnicodeError:
                    raise CodecError() from None
            if len(raw) > field["string_bound"]:
                raise CodecError()
            return len(raw).to_bytes(4, "little") + raw
        if kind == "bool":
            if type(value) is not bool:
                raise CodecError()
            return bytes((int(value),))
        if kind.startswith(("int", "uint")):
            signed = kind.startswith("int")
            bits = int(kind[3:] if signed else kind[4:])
            lower = -(1 << (bits - 1)) if signed else 0
            upper = (1 << (bits - 1)) - 1 if signed else (1 << bits) - 1
            if type(value) is not int or not lower <= value <= upper:
                raise CodecError()
            return value.to_bytes(bits // 8, "little", signed=signed)
        if kind.startswith("float"):
            if type(value) not in (int, float) or not math.isfinite(value):
                raise CodecError()
            try:
                raw = _struct.pack("<f" if kind == "float32" else "<d", value)
                if not math.isfinite(
                    _struct.unpack("<f" if kind == "float32" else "<d", raw)[0]
                ):
                    raise CodecError()
                return raw
            except (OverflowError, _struct.error):
                raise CodecError() from None
        if type(value) is not self.types[kind]:
            raise CodecError()
        return self.encode(value)

    def encode(self, value):
        """@brief Encode every original field in schema order.

        @param value Complete generated record belonging to this registry.
        @return Immutable owning bytes with exact finite extent.
        """
        if not isinstance(value, Record) or value.REGISTRY is not self:
            raise CodecError()
        self.semantics(value)
        parts = []
        size = 0
        for field in value.SCHEMA["fields"]:
            element = getattr(value, field["name"])
            if field["array"]:
                if type(element) not in (list, tuple):
                    raise CodecError()
                count = len(element)
                if count > field["count"] or (
                    field["array"] == "array" and count != field["count"]
                ):
                    raise CodecError()
                prefix = (
                    count.to_bytes(4, "little") if field["array"] == "sequence" else b""
                )
                chunk = prefix + b"".join(self.scalar(field, item) for item in element)
            else:
                chunk = self.scalar(field, element)
            size += len(chunk)
            if size > value.SCHEMA["maximum"] or size > 32768:
                raise CodecError(90)
            parts.append(chunk)
        if size < value.SCHEMA["minimum"]:
            raise CodecError()
        return b"".join(parts)

    def decode(self, cls, data):
        """@brief Decode one exact full record, rejecting truncation and trailing bytes.

        @param cls Expected generated complete class.
        @param data Complete immutable canonical bytes within its finite bounds.
        @return Owning record only after all scalar, shape and semantic checks pass.
        """
        if (
            type(data) is not bytes
            or not cls.SCHEMA["minimum"] <= len(data) <= cls.SCHEMA["maximum"]
            or len(data) > 32768
        ):
            raise CodecError()
        at = 0

        def take(size):
            """@brief Consume one checked byte extent. @param size Exact count. @return Owned bytes."""
            nonlocal at
            if size < 0 or size > len(data) - at:
                raise CodecError()
            raw = data[at : at + size]
            at += size
            return raw

        def scalar(field):
            """@brief Decode one original field element. @param field Full IR. @return Exact value."""
            kind = field["type"]
            if kind == "string":
                length = int.from_bytes(take(4), "little")
                if length > field["string_bound"]:
                    raise CodecError()
                raw = take(length)
                if field["string_encoding"] == "raw_bytes":
                    return raw
                try:
                    text = raw.decode("utf-8", "strict")
                except UnicodeError:
                    raise CodecError() from None
                if "\0" in text:
                    raise CodecError()
                return text
            if kind == "bool":
                value = take(1)[0]
                if value > 1:
                    raise CodecError()
                return bool(value)
            if kind.startswith(("int", "uint")):
                signed = kind.startswith("int")
                bits = int(kind[3:] if signed else kind[4:])
                return int.from_bytes(take(bits // 8), "little", signed=signed)
            if kind.startswith("float"):
                value = _struct.unpack(
                    "<f" if kind == "float32" else "<d",
                    take(4 if kind == "float32" else 8),
                )[0]
                if not math.isfinite(value):
                    raise CodecError()
                return value
            return record(self.types[kind])

        def record(selected):
            """@brief Decode all original fields with recursive ownership. @param selected Full class. @return Owned record."""
            fields = {}
            for field in selected.SCHEMA["fields"]:
                if field["array"]:
                    count = (
                        int.from_bytes(take(4), "little")
                        if field["array"] == "sequence"
                        else field["count"]
                    )
                    if count > field["count"]:
                        raise CodecError()
                    fields[field["name"]] = [scalar(field) for _ in range(count)]
                else:
                    fields[field["name"]] = scalar(field)
            value = selected(**fields)
            self.semantics(value)
            return value

        result = record(cls)
        if at != len(data):
            raise CodecError()
        return result
