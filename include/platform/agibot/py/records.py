# @file records.py
# @brief Provide the complete agibot records.py source contract.
# @details Complete original fields, scalar widths, canonical quotas and interface roles are retained. Local
# encoding grants no ROS authority; invalid or partial wire is rejected before a value is exposed.
# SPDX-License-Identifier: Apache-2.0
"""Complete original AimDK canonical decoding, executed inside CPython Wasm.

Every decoded object owns its data. All original fields and list elements are
retained. Integer values use Python's exact integers; JSON encodes int64/uint64
as decimal strings for consumers whose JSON numbers cannot represent them.
"""

import _struct

from agibot.shared.schema.aimdk_v1_1_0_main import SCHEMA


class DecodeError(ValueError):
    """Reject a malformed canonical value with the exact local errno.

    ``code`` is 22 for malformed input and 90 for a declared guest bound.
    The exception contains no partial decoded record and performs no ROS I/O.
    """

    def __init__(self, code, message):
        super().__init__(message)
        self.code = code


def decode(typename, data):
    """Decode one complete original message or service response.

    Args:
        typename: Original fully qualified record name from the pinned schema.
        data: Borrowed immutable canonical bytes, at most 32768 bytes.
    Returns:
        Newly owned nested dictionaries, lists, scalar values and strings.
    Raises:
        DecodeError: Truncation, trailing bytes, bounds, invalid UTF-8, NUL,
            noncanonical booleans or nonfinite floats. No partial value escapes.
    """
    if not isinstance(data, bytes) or len(data) > 32768 or typename not in SCHEMA:
        raise DecodeError(22, "Invalid canonical record")
    offset = 0
    formats = {
        "bool": ("<B", 1), "byte": ("<B", 1), "char": ("<B", 1),
        "int8": ("<b", 1), "uint8": ("<B", 1),
        "int16": ("<h", 2), "uint16": ("<H", 2),
        "int32": ("<i", 4), "uint32": ("<I", 4),
        "int64": ("<q", 8), "uint64": ("<Q", 8),
        "float32": ("<f", 4), "float64": ("<d", 8),
    }

    def take(size):
        nonlocal offset
        if size < 0 or size > len(data) - offset:
            raise DecodeError(22, "Truncated canonical record")
        start = offset
        offset += size
        return start

    def scalar(kind, bound=None):
        if kind == "string":
            size = _struct.unpack_from("<I", data, take(4))[0]
            if size > bound:
                raise DecodeError(90, "String exceeds guest bound")
            start = take(size)
            try:
                value = data[start:offset].decode("utf-8", "strict")
            except UnicodeError as invalid:
                raise DecodeError(22, "Invalid UTF-8") from invalid
            if "\0" in value:
                raise DecodeError(22, "NUL in canonical string")
            return value
        if kind not in formats:
            return record(kind)
        format_text, size = formats[kind]
        value = _struct.unpack_from(format_text, data, take(size))[0]
        if kind == "bool":
            if value > 1:
                raise DecodeError(22, "Noncanonical boolean")
            return bool(value)
        if kind.startswith("float") and (value != value or abs(value) == float("inf")):
            raise DecodeError(22, "Nonfinite canonical float")
        return value

    def record(kind):
        definition = SCHEMA.get(kind)
        if definition is None:
            raise DecodeError(22, "Unknown original record")
        value = {}
        for field in definition["fields"]:
            if "sequence" in field or "array" in field:
                count = field.get("array")
                if count is None:
                    count = _struct.unpack_from("<I", data, take(4))[0]
                if "sequence" in field and count > field["sequence"]:
                    raise DecodeError(90, "Sequence exceeds guest bound")
                value[field["name"]] = [scalar(field["type"], field.get("string")) for _ in range(count)]
            else:
                value[field["name"]] = scalar(field["type"], field.get("string"))
        return value

    result = record(typename)
    if offset != len(data):
        raise DecodeError(22, "Trailing canonical bytes")
    return result


def _quote(value):
    """Escape one already validated Unicode scalar string as JSON."""
    return '"' + "".join(
        "\\u%04x" % ord(character)
        if ord(character) < 32 or character in '\\"' else character
        for character in value
    ) + '"'


def json(typename, value):
    """Render every original field of an unmodified decoded record.

    Args:
        typename: Matching original type used by ``decode``.
        value: Complete successful decoded value, owned by the caller.
    Returns:
        UTF-8-compatible JSON text. Every int64/uint64 is a decimal string;
        floats use 17 significant digits. Empty arrays stay arrays.
    """
    def scalar(kind, field):
        if kind in ("string", "int64", "uint64"):
            return _quote(str(field))
        if kind == "bool":
            return "true" if field else "false"
        if kind.startswith("float"):
            return format(field, ".17g")
        if kind in ("byte", "char") or kind.startswith(("int", "uint")):
            return str(field)
        return record(kind, field)

    def record(kind, item):
        fields = []
        for field in SCHEMA[kind]["fields"]:
            contents = item[field["name"]]
            if "sequence" in field or "array" in field:
                encoded = "[" + ",".join(scalar(field["type"], element) for element in contents) + "]"
            else:
                encoded = scalar(field["type"], contents)
            fields.append(_quote(field["name"]) + ":" + encoded)
        return "{" + ",".join(fields) + "}"

    return record(typename, value)
