#!/usr/bin/env python3
"""@brief Emit full real-language record codecs from a caller-supplied complete IR.

@details These maintenance functions contain no platform catalog or native
registration identity. Original record widths, bounds, constants and defaults
belong to the supplied IR; emitted code still requires real compiler/runtime
qualification. Generation alone creates no deployment authority.
"""

import hashlib
import itertools
import json
from pathlib import Path
import sys
import textwrap

sys.path.insert(0, str(Path(__file__).resolve().parents[2] / "shared"))
from backend_layout import profile_module

SCALARS = {
    "zig": ["bool", "u8", "i8", "u16", "i16", "u32", "i32", "u64", "i64", "f32", "f64"],
    "d": ["bool", "ubyte", "byte", "ushort", "short", "uint", "int", "ulong", "long", "float", "double"],
    "nim": ["bool", "uint8", "int8", "uint16", "int16", "uint32", "int32", "uint64", "int64", "float32", "float64"],
}
KINDS = ["bool", "uint8", "int8", "uint16", "int16", "uint32", "int32", "uint64", "int64", "float32", "float64"]

_rules = None


def bind_rules(module):
    """@brief Consume the single shared normalized literal/default implementation."""
    global _rules
    _rules = module


def semantic_predicates(language, backend, record, semantics, receiver):
    """@brief Return every authoritative invalid-state predicate for owned values.

    @details JointState permits each array to be empty. Every pair of nonempty
    name/position/velocity/effort arrays must have equal length: all six pairs
    are retained. Finite native containers use their explicit initialized size;
    Swift/Haskell use the actual owned collection length. No array is padded,
    truncated or otherwise changed to make an invalid record appear valid.
    """
    rule = semantics(record)

    def field(name):
        if language == "haskell":
            symbol = record.symbol[0].lower() + record.symbol[1:] + "_" + name
            return "(" + symbol + " " + receiver + ")"
        return receiver + ".field_" + name

    if rule in ("normalized-time", "normalized-duration"):
        value = field("nanosec" if backend == 2 else "nsec")
        return ([value + " < 0"] if rule == "normalized-duration" else []) + [value + " >= 1000000000"]
    if not rule:
        return []
    if rule != "joint-state-optional-equal-length-arrays":
        raise ValueError("No complete native predicate for authoritative rule: " + rule)
    sizes = []
    for name in ("name", "position", "velocity", "effort"):
        member = next(member for member in record.members if member.name == name)
        if member.array != "sequence":
            raise ValueError("JointState semantic fields must retain their original sequence domain")
        value = field(name)
        sizes.append(
            "length " + value if language == "haskell" else value + ".count" if language == "swift" else value + ".size"
        )
    conjunction = " and " if language in ("zig", "nim") else " && "
    different = " /= " if language == "haskell" else " != "
    return [
        conjunction.join([left + different + "0", right + different + "0", left + different + right])
        for left, right in itertools.combinations(sizes, 2)
    ]


def constant_type(language, scalar):
    """@brief Use the shared native constant type, including Unicode strings."""
    if _rules is None:
        raise ValueError("Bind the shared native source-literal rules before generation")
    return _rules.constant_type(language, scalar)


def declared_default(language, record, member, records):
    """@brief Preserve every normalized scalar or fixed floating-array default."""
    if _rules is None:
        raise ValueError("Bind the shared source-literal rules before generation")
    if member.array:
        return _rules.initial(language, record, member, records)
    return _rules.literal(language, member.type, member.native_default)


def owned_default(language, record, member, records):
    """@brief Construct an owned default, retaining nested declared defaults.

    @details Explicit numeric and fixed-array literals always use the single
    shared native literal implementation. Text fields here own UTF-8 bytes;
    constants retain the shared language-native string representation.
    """
    if member.native_default is not None:
        if member.type == "string":
            return "[" + ", ".join(str(value) for value in member.native_default.encode("utf-8")) + "]"
        return declared_default(language, record, member, records)
    if member.type == "string":
        base = "[]"
    elif member.type == "bool":
        base = "False" if language == "haskell" else "false"
    elif member.type in KINDS:
        base = "0"
    else:
        symbol = records[(record.version, member.type)].symbol
        base = {"nim": "init" + symbol + "()", "odin": "init_" + symbol + "()", "haskell": "default" + symbol}[language]
    if member.array == "sequence":
        return "[]"
    if member.array == "array" and language == "haskell":
        return f"replicate {member.count} ({base})"
    return base


def digest(raw):
    """@brief Hash exact source bytes.

    @param raw Immutable source bytes.
    @return SHA256 hexadecimal digest.
    """
    return hashlib.sha256(raw).hexdigest()


def docs(language, brief, details, indent="", parameters=(), returns=None):
    """@brief Render complete English contracts without creating overlong lines.

    @param language Exact generated source language identifier.
    @param brief Concrete declaration purpose.
    @param details Field, ownership, bounds or pure-operation contract.
    @param indent Native declaration indentation.
    @param parameters Ordered pairs of original parameter names and contracts.
    @param returns Exact return/storage validity contract when applicable.
    @return Independently formatted source comment lines.
    """
    prefix = "## " if language == "nim" else "-- | " if language == "haskell" else "/// "
    lines = ["@brief " + brief, "@details " + details]
    lines += ["@param " + name + " " + detail for name, detail in parameters]
    if returns:
        lines.append("@return " + returns)
    output = []
    for line in lines:
        output += [indent + prefix + wrapped for wrapped in textwrap.wrap(line, width=100 - len(indent + prefix))]
    return output


def element(language, record, member, records):
    """@brief Select an exact owned native field type from the admitted IR.

    @param language Genuine source language.
    @param record Complete enclosing original record.
    @param member Exact original field, including finite string domain.
    @param records Complete backend dependency map.
    @return Native scalar, finite text or complete nested record spelling.
    """
    if member.type == "string":
        raw = str(member.string_encoding == "raw_bytes").lower()
        if language == "zig":
            return f"wire.Text({member.string_bound}, {raw})"
        if language == "d":
            return f"Text!({member.string_bound}, {raw})"
        return f"NativeText[{member.string_bound}, {raw}]"
    if member.type in KINDS:
        return SCALARS[language][KINDS.index(member.type)]
    return records[(record.version, member.type)].symbol


def field_type(language, record, member, records):
    """@brief Retain exact scalar/array/sequence shape with finite owned storage.

    @param language Genuine source language.
    @param record Complete original record.
    @param member Exact declared field with admitted shape/count.
    @param records Complete backend dependency map.
    @return Concrete complete owned native-language field type.
    """
    base = element(language, record, member, records)
    if member.array == "array":
        return {
            "zig": f"[{member.count}]{base}",
            "d": f"{base}[{member.count}]",
            "nim": f"array[{member.count}, {base}]",
        }[language]
    if member.array == "sequence":
        return {
            "zig": f"wire.Sequence({base}, {member.count})",
            "d": f"Sequence!({base}, {member.count})",
            "nim": f"NativeSequence[{base}, {member.count}]",
        }[language]
    return base


def field_details(member):
    """@brief Explain one exact native field's shape, units and owned lifetime.

    @param member Original admitted field IR.
    @return Complete original type/bounds and ordinary-value ownership contract.
    """
    bound = ""
    if member.type == "string":
        bound = f" String bound {member.string_bound} bytes; domain {member.string_encoding}."
    if member.array:
        bound += f" Shape {member.array}; bound/count {member.count} elements."
    return (
        f"Original type {member.type}.{bound} Preserve declared units, frame, signedness and field order. "
        "Backing storage belongs to this value; constructing or copying it creates no native ROS owner."
    )


def literal(language, scalar, value):
    """@brief Preserve an original scalar constant without width coercion.

    @param language Exact output language.
    @param scalar Original exact-width scalar kind.
    @param value Source-normalized original literal.
    @return Correct original-language scalar literal.
    """
    if _rules is None:
        raise ValueError("Bind the shared source-literal rules before generation")
    return _rules.literal(language, scalar, value)


def emit(language, backend, records, ordered, semantics, namespace, profile):
    """@brief Author every complete native type and public pure codec wrapper.

    @param language Implemented genuine source language.
    @param backend Exact ROS 1 or ROS 2 catalog family.
    @param records Complete original dependency map.
    @param ordered All topologically ordered original records/components.
    @param semantics Source-paired original semantic rule selector.
    @return Complete native source with no dropped field or implicit capability.
    """
    prefix = "## " if language == "nim" else "//! " if language == "zig" else "/// "
    output = [
        prefix + "@file records." + {"zig": "zig", "d": "d", "nim": "nim"}[language],
        prefix + f"@brief Complete owned original {namespace} ROS {backend} native records and codecs.",
        prefix + "@details Generated from the admitted source-pinned catalog; no ROS authority is created.",
    ]
    if language == "zig":
        output += ['const std = @import("std");', 'const wire = @import("native_wire");', ""]
    elif language == "d":
        output += [f"module {namespace}.d.{profile_module(profile)}.records;", "import native.d.wire;", ""]
    else:
        output += ["import native/nim/wire", ""]
    for record in ordered:
        symbol = record.symbol
        output += docs(
            language,
            f"Complete {record.name} value.",
            f"Retain all {len(record.members)} original fields and {len(record.constants)} constants. "
            f"Canonical extent {record.minimum}..{record.maximum} bytes. "
            "Native registration and transport permission require independent deployment proof.",
        )
        if language == "zig":
            output.append(f"pub const {symbol} = struct {{")
            indent = "    "
        elif language == "d":
            output += [f"struct {symbol}", "{"]
            indent = "    "
        else:
            output.append(f"type {symbol}* = object")
            indent = "    "
        for member in record.members:
            output += docs(language, f"Original {record.name}.{member.name} field.", field_details(member), indent)
            name = "field_" + member.name
            native_type = field_type(language, record, member, records)
            if language == "zig":
                default = "false" if member.type == "bool" else "0" if member.type in KINDS else ".{}"
                if member.native_default is not None:
                    if member.type not in KINDS:
                        raise ValueError("Explicit non-scalar default requires an owned native initializer")
                    default = declared_default(language, record, member, records)
                if member.array == "array" and member.native_default is None:
                    base = "false" if member.type == "bool" else "0" if member.type in KINDS else ".{}"
                    default = f"@splat(@as({element(language, record, member, records)}, {base}))"
                elif member.array == "sequence":
                    default = ".{}"
                declaration = indent + f"{name}: {native_type} = {default},"
                if len(declaration) > 120 and member.array == "array" and member.native_default is None:
                    output += [
                        indent + f"{name}: {native_type} = @splat(@as(",
                        indent + "    " + element(language, record, member, records) + ", " + base + ",",
                        indent + ")),",
                    ]
                else:
                    output.append(declaration)
            elif language == "d":
                default = ""
                if member.native_default is not None:
                    default = " = " + declared_default(language, record, member, records)
                elif member.type in ("float32", "float64") and member.array != "sequence":
                    default = " = 0"
                output.append(indent + f"{native_type} {name}{default};")
            else:
                output.append(indent + f"{name}*: {native_type}")
        if language in ("zig", "d"):
            for kind, number in (("minimum", record.minimum), ("maximum", record.maximum)):
                output += docs(
                    language,
                    f"Inclusive {kind} canonical wire extent.",
                    "This is an initialized byte bound, never a native sizeof or an allocation reservation.",
                    indent,
                )
                output.append(
                    indent
                    + (
                        f"pub const {kind}_wire_bytes: usize = {number};"
                        if language == "zig"
                        else f"enum size_t {kind}WireBytes = {number};"
                    )
                )
            output += docs(
                language,
                "Exact complete canonical codec identity.",
                "Preserve original field order, shape, bounds and constants; this is not a native registry hash.",
                indent,
            )
            output.append(
                indent
                + ("pub const codec_identity = " if language == "zig" else "enum codecIdentity = ")
                + json.dumps(record.codec_identity)
                + ";"
            )
            for constant in record.constants:
                output += docs(
                    language,
                    f"Original {record.name}.{constant['name']} constant.",
                    "An immutable source constant consumes no instance or canonical wire field.",
                    indent,
                )
                scalar = constant["type"]
                native_type = constant_type(language, scalar)
                expression = literal(language, scalar, constant["value"])
                declaration = (
                    f"pub const constant_{constant['name']}: {native_type} = {expression};"
                    if language == "zig"
                    else f"enum {native_type} constant_{constant['name']} = {expression};"
                )
                output.append(indent + declaration)
            predicates = semantic_predicates(
                language, backend, record, semantics, "self" if language == "zig" else "this"
            )
            if predicates:
                output += docs(
                    language,
                    "Validate every original complete-value semantic constraint.",
                    "Preserve normalized time and all six optional JointState array pairs without changing fields.",
                    indent,
                    parameters=(("self", "Complete immutable owned value."),) if language == "zig" else (),
                    returns="Void success or Invalid." if language == "zig" else "Zero or canonical error 22.",
                )
                if language == "zig":
                    output += [
                        indent + "pub fn validate(self: *const @This()) wire.Error!void {",
                    ]
                    output += [indent + "    if (" + condition + ") return error.Invalid;" for condition in predicates]
                    output.append(indent + "}")
                else:
                    output += [
                        indent + "uint validate() const @nogc nothrow",
                        indent + "{",
                    ]
                    output += [indent + "    if (" + condition + ") return 22;" for condition in predicates]
                    output += [indent + "    return 0;", indent + "}"]
            output.append("};" if language == "zig" else "}")
        else:
            output += docs(
                language,
                "Construct every declared original default with independent storage.",
                "Nested values retain their own declared defaults; construction grants no ROS authority.",
                returns="Complete independently owned original value.",
            )
            output.append(f"proc init{symbol}*(): {symbol} =")
            initialized = False
            for member in record.members:
                target = "result.field_" + member.name
                if member.native_default is not None:
                    output.append("    " + target + " = " + owned_default(language, record, member, records))
                    initialized = True
                elif member.type not in KINDS and member.type != "string":
                    expression = owned_default(language, record, member, records)
                    if member.array == "array":
                        output += [
                            f"    for index in 0 ..< {member.count}:",
                            "        " + target + "[index] = " + expression,
                        ]
                    elif not member.array:
                        output.append("    " + target + " = " + expression)
                    if member.array != "sequence":
                        initialized = True
            if not initialized:
                output.append("    discard")
            for kind, number in (("Minimum", record.minimum), ("Maximum", record.maximum)):
                output += docs(
                    language,
                    f"Inclusive {kind.lower()} canonical wire extent.",
                    "This is a byte bound, never a native object-size or allocation reservation.",
                )
                output.append(f"const {symbol}{kind}WireBytes* = {number}")
            output += docs(
                language,
                "Exact complete canonical codec identity.",
                "Preserve field order, shape and finite bounds; this does not establish a native identity.",
            )
            output.append(f"const {symbol}CodecIdentity* = " + json.dumps(record.codec_identity))
            for constant in record.constants:
                native_type = constant_type(language, constant["type"])
                output += docs(
                    language,
                    f"Original {record.name}.{constant['name']} constant.",
                    "An immutable original constant consumes no canonical instance field.",
                )
                output.append(
                    f"const {symbol}_{constant['name']}*: {native_type} = "
                    + literal(language, constant["type"], constant["value"])
                )
            predicates = semantic_predicates(language, backend, record, semantics, "value")
            if predicates:
                output += docs(
                    language,
                    "Validate every original complete-value semantic constraint.",
                    "Retain normalized time and all six optional JointState array pairs without altering any field.",
                    parameters=(("value", "Complete immutable owned record."),),
                    returns="Zero or canonical error 22.",
                )
                output += [f"proc validate*(value: {symbol}): uint32 ="]
                output += [f"  if {condition}: return 22'u32" for condition in predicates]
                output.append("  0'u32")
        output += docs(
            language,
            f"Encode every field of complete {record.name}.",
            "The caller owns output and value storage. Failure invalidates partial output; no host operation occurs.",
            parameters=(
                ("value", "Complete exclusive owned record."),
                ("output", "Disjoint exclusive writable bytes."),
            ),
            returns=(
                "Complete initialized extent or canonical error."
                if language == "zig"
                else "Zero or canonical error 22; written is valid on success."
            ),
        )
        if language == "zig":
            output += [
                f"pub fn encode{symbol}(value: *{symbol}, output: []u8) wire.Error!usize {{",
                "    return wire.encode(value, output);",
                "}",
            ]
        elif language == "d":
            output += [
                f"uint encode{symbol}(ref {symbol} value, ubyte[] output, out size_t written) @nogc nothrow",
                "{",
                "    return encode(value, output, written);",
                "}",
            ]
        else:
            output += [
                f"proc encode*(value: var {symbol}; output: var openArray[byte];",
                "             written: var int): uint32 =",
                f"  wire.encode(value, output, {record.maximum}, written)",
            ]
        output += docs(
            language,
            f"Decode every field of complete {record.name}.",
            (
                "Reject malformed fields, finite-bound violations and trailing bytes before publishing a whole "
                "independent value."
            ),
            parameters=(("bytes", "Complete immutable canonical input; no reference escapes."),),
            returns=(
                "Complete independent value or canonical error."
                if language == "zig"
                else "Zero or canonical error 22; value is usable only on success."
            ),
        )
        if language == "zig":
            output += [
                f"pub fn decode{symbol}(bytes: []const u8) wire.Error!{symbol} {{",
                f"    return wire.decode({symbol}, bytes);",
                "}",
                "",
            ]
        elif language == "d":
            output += [
                f"uint decode{symbol}(const(ubyte)[] bytes, out {symbol} value) @nogc nothrow",
                "{",
                "    return decode(bytes, value);",
                "}",
                "",
            ]
        else:
            output += [
                f"proc decode{symbol}*(bytes: openArray[byte]; value: var {symbol}): uint32 =",
                f"  wire.decode(bytes, {record.minimum}, {record.maximum}, value)",
                "",
            ]
    return "\n".join(output) + "\n"
