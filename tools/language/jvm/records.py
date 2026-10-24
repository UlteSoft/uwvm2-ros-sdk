#!/usr/bin/env python3
"""@brief Generate complete Java/.NET platform records from the canonical bounded IR.

@details This maintenance-only generator uses the existing complete industrial
source loader. It preserves every field, constant, default, nested bound and
codec identity in both ROS families. Java/Kotlin share ordinary Java value
classes; C#/F#/VB.NET share ordinary CLR value classes. Generated methods use
direct typed field access, never reflection, opaque record bytes, C substitutes,
host language execution, or a fabricated native type identity.
"""

from __future__ import annotations

import argparse
import ast
from dataclasses import asdict
import hashlib
import importlib.util
import json
from pathlib import Path
import struct
import sys
import textwrap


JAVA_TYPES = {
    "bool": "boolean",
    "uint8": "int",
    "int8": "byte",
    "uint16": "int",
    "int16": "short",
    "uint32": "long",
    "int32": "int",
    "uint64": "long",
    "int64": "long",
    "float32": "float",
    "float64": "double",
    "string": "String",
}
CS_TYPES = {
    "bool": "bool",
    "uint8": "byte",
    "int8": "sbyte",
    "uint16": "ushort",
    "int16": "short",
    "uint32": "uint",
    "int32": "int",
    "uint64": "ulong",
    "int64": "long",
    "float32": "float",
    "float64": "double",
    "string": "string",
}
JAVA_METHODS = {
    "bool": "bool",
    "uint8": "u8",
    "int8": "i8",
    "uint16": "u16",
    "int16": "i16",
    "uint32": "u32",
    "int32": "i32",
    "uint64": "i64",
    "int64": "i64",
    "float32": "f32",
    "float64": "f64",
    "string": "string",
}
CS_METHODS = {key: value.upper()[0] + value[1:] for key, value in JAVA_METHODS.items()}
CS_METHODS.update({"uint64": "U64", "int64": "I64"})


def digest(path: Path) -> str:
    """@brief Hash immutable source bytes. @param path Borrowed input. @return SHA256."""
    return hashlib.sha256(path.read_bytes()).hexdigest()


def quoted(value: str) -> str:
    """@brief Encode a target-language string literal without interpolating source.

    @param value Complete original string value.
    @return Java/C# compatible JSON string-literal spelling.
    """
    return json.dumps(value, ensure_ascii=True)


def scalar_literal(language: str, kind: str, value) -> str:
    """@brief Preserve exact normalized scalar/default bits in the selected language.

    @param language java or csharp target syntax.
    @param kind Exact canonical primitive type.
    @param value Loader-normalized original scalar value.
    @return Real typed source expression; unsupported domains raise ValueError.
    """
    if kind == "string":
        return quoted(value)
    if kind == "bool":
        return str(value).lower()
    if kind in ("float32", "float64"):
        width = 32 if kind == "float32" else 64
        bits = int.from_bytes(struct.pack("<f" if width == 32 else "<d", float(value)), "little")
        if language == "java":
            return f"Float.intBitsToFloat(0x{bits:08x})" if width == 32 else f"Double.longBitsToDouble(0x{bits:016x}L)"
        return (
            f"BitConverter.Int32BitsToSingle(unchecked((int)0x{bits:08x}u))"
            if width == 32
            else f"BitConverter.Int64BitsToDouble(unchecked((long)0x{bits:016x}UL))"
        )
    integer = int(value)
    if language == "java":
        if kind in ("uint64", "int64"):
            return f"0x{integer & ((1 << 64) - 1):016x}L"
        if kind == "uint32":
            return str(integer) + "L"
        if kind in ("int8", "int16"):
            return f"({JAVA_TYPES[kind]}){integer}"
        return str(integer)
    if kind == "uint64":
        return f"0x{integer:016x}UL"
    if kind == "int64":
        return f"unchecked((long)0x{integer & ((1 << 64) - 1):016x}UL)"
    if kind == "uint32":
        return str(integer) + "u"
    if kind in ("uint8", "int8", "uint16", "int16"):
        return f"({CS_TYPES[kind]}){integer}"
    return str(integer)


def element_type(language: str, record, member, records) -> str:
    """@brief Resolve a complete typed scalar or nested record without projection.

    @param language Target syntax.
    @param record Owning canonical record.
    @param member Complete field IR.
    @param records Complete dependency map.
    @return Genuine typed element spelling.
    """
    if member.type == "string" and member.string_encoding == "raw_bytes":
        return "byte[]"
    primitives = JAVA_TYPES if language == "java" else CS_TYPES
    return primitives.get(member.type) or records[(record.version, member.type)].symbol


def initial(language: str, record, member, records) -> str:
    """@brief Materialize the original scalar/fixed-array default with owned storage.

    @param language Target syntax.
    @param record Owning record.
    @param member Exact field/default/bound IR.
    @param records Complete dependency map.
    @return Typed initializer; unsupported default forms fail generation.
    """
    element = element_type(language, record, member, records)
    if member.array:
        count = member.count if member.array == "array" else 0
        if member.native_default is not None:
            values = ast.literal_eval(member.native_default)
            if not isinstance(values, list) or len(values) != count:
                raise ValueError("The full native fixed-array default differs from its field extent")
            body = ", ".join(scalar_literal(language, member.type, item) for item in values)
            return f"new {element}[] {{ {body} }}"
        return f"new {element}[{count}]"
    if member.type == "string":
        if member.string_encoding == "raw_bytes":
            return "new byte[0]"
        return quoted(member.native_default if member.native_default is not None else "")
    if member.type in JAVA_TYPES:
        default = member.native_default
        if default is None:
            default = "False" if member.type == "bool" else "0"
        return scalar_literal(language, member.type, default)
    return f"new {element}()"


def semantic_checks(record, prefix: str, language: str) -> list[str]:
    """@brief Preserve complete standard-message invariants from canonical IR.

    @param record Complete native record.
    @param prefix Typed receiver expression.
    @param language Target syntax.
    @return Direct semantic checks after all fields are available.
    """
    invalid = "IllegalArgumentException" if language == "java" else "ArgumentException"
    length = "length" if language == "java" else "Length"
    checks = []
    if record.name in ("time", "duration", "builtin_interfaces/msg/Time", "builtin_interfaces/msg/Duration"):
        name = "nsec" if record.version == 1 else "nanosec"
        field = prefix + ".field_" + name
        checks.append(
            f'if ({field} < 0 || {field} >= 1000000000L) {{ throw new {invalid}("Non-normalized ROS time"); }}'
        )
    if record.name in ("sensor_msgs/JointState", "sensor_msgs/msg/JointState"):
        # Match the shared canonical optional-array contract: every pair of
        # nonempty arrays must have equal extent. An empty optional array does
        # not invent a required name/position/velocity/effort value.
        fields = ("name", "position", "velocity", "effort")
        sizes = [prefix + ".field_" + field + "." + length for field in fields]
        for index, left in enumerate(sizes):
            for right in sizes[index + 1:]:
                checks.append(
                    f'if ({left} != 0 && {right} != 0 && {left} != {right}) '
                    f'{{ throw new {invalid}("JointState optional array length mismatch"); }}'
                )
    return checks


def field_codec(language: str, record, member, records, writing: bool) -> list[str]:
    """@brief Emit direct complete field read/write instructions with every bound.

    @param language Target syntax.
    @param record Owning canonical record.
    @param member Complete field IR.
    @param records Full dependency map.
    @param writing True for encoding; false for transactional construction.
    @return Source statements operating on typed value and wire variables.
    """
    java = language == "java"
    length = "length" if java else "Length"
    invalid = "IllegalArgumentException" if java else "ArgumentException"
    methods = JAVA_METHODS if java else CS_METHODS
    field = "value.field_" + member.name
    statements = []
    element = element_type(language, record, member, records)
    if member.array:
        if writing:
            relation = "!=" if member.array == "array" else ">"
            statements.append(
                f'if ({field} == null || {field}.{length} {relation} {member.count}) {{ throw new {invalid}("Invalid {member.name} extent"); }}'
            )
            if member.array == "sequence":
                statements.append(f"wire.{'u32' if java else 'U32'}(({ 'long' if java else 'uint'}){field}.{length});")
        else:
            count = (
                str(member.count) if member.array == "array" else f"wire.{'count' if java else 'Count'}({member.count})"
            )
            statements.append(f"{field} = new {element}[{count}];")
        statements.append(f"for (int index = 0; index < {field}.{length}; {'index++' if java else '++index'}) {{")
        target = field + "[index]"
        padding = "    "
    else:
        target, padding = field, ""
    if member.type in JAVA_TYPES:
        method = methods[member.type]
        arguments = ""
        if member.type == "string":
            if member.string_encoding == "raw_bytes":
                method = "raw" if java else "Raw"
            arguments = str(member.string_bound)
        if writing:
            if member.type in ("float32", "float64") and member.float_policy == "finite":
                classifier = (
                    ("Float" if member.type == "float32" else "Double") + ".isFinite"
                    if java
                    else ("float" if member.type == "float32" else "double") + ".IsFinite"
                )
                statements.append(
                    padding + f'if (!{classifier}({target})) {{ throw new {invalid}("Nonfinite {member.name}"); }}'
                )
            statements.append(padding + f"wire.{method}({target}{', ' + arguments if arguments else ''});")
        else:
            statements.append(padding + f"{target} = wire.{method}({arguments});")
            if member.type in ("float32", "float64") and member.float_policy == "finite":
                classifier = (
                    ("Float" if member.type == "float32" else "Double") + ".isFinite"
                    if java
                    else ("float" if member.type == "float32" else "double") + ".IsFinite"
                )
                statements.append(
                    padding + f'if (!{classifier}({target})) {{ throw new {invalid}("Nonfinite {member.name}"); }}'
                )
    else:
        child = records[(record.version, member.type)].symbol
        operation = "writeFields" if writing else "readFields"
        if not java:
            operation = operation[0].upper() + operation[1:]
        statements.append(
            padding + (f"{child}.{operation}(wire, {target});" if writing else f"{target} = {child}.{operation}(wire);")
        )
    if member.array:
        statements.append("}")
    return statements


def record_source(language: str, record, records, namespace: str) -> str:
    """@brief Emit one full typed record and its real bounded read/write codecs.

    @param language java or csharp output.
    @param record Exact complete canonical record.
    @param records Complete ordered dependency map.
    @param namespace Validated public package or CLR namespace for this profile.
    @return Entire professionally documented target source file.
    """
    java = language == "java"
    name = record.symbol
    invalid = "IllegalArgumentException" if java else "ArgumentException"
    string_type = "String" if java else "string"
    constant = "public static final" if java else "public const"
    lines = (
        [f"package {namespace};", "", "import uwvm.ros.Wire;", ""]
        if java
        else ["using System;", "using Uwvm.Ros;", "", f"namespace {namespace}", "{"]
    )
    body = [
        "/**",
        f" * @brief Complete ROS {record.version} {record.name} value and canonical codec.",
        " * @details All fields, constants, defaults and nested capacities come from the",
        " * canonical bounded catalog. Instances own their strings/arrays/nested values.",
        " * Encode/decode perform no ROS operation and confer no authority. Native type",
        " * identity must still be independently qualified by the deployment registry.",
        " */",
        f"public {'final' if java else 'sealed'} class {name}",
        "{",
    ]
    for label, value in (("MAX_WIRE_BYTES", str(record.maximum)), ("MIN_WIRE_BYTES", str(record.minimum))):
        body += [
            f"    /** @brief Exact registered {label.lower().replace('_', ' ')}. */",
            f"    {constant} int {label} = {value};",
        ]
    for label, value in (
        ("CODEC_IDENTITY", record.codec_identity),
        ("SOURCE_TYPE", record.name),
        ("NATIVE_IDENTITY", record.identity or ""),
    ):
        body += [
            f"    /** @brief Original {label.lower().replace('_', ' ')}; empty native identity is unqualified. */",
            f"    {constant} {string_type} {label} = {quoted(value)};",
        ]
    for item in record.constants:
        kind = item["type"]
        type_name = (JAVA_TYPES if java else CS_TYPES)[kind]
        modifier = "public static readonly" if not java and kind in ("float32", "float64") else constant
        body += [
            f"    /** @brief Original source constant {item['name']}; consumes no instance wire bytes. */",
            f"    {modifier} {type_name} CONST_{item['name']} = {scalar_literal(language, kind, item['value'])};",
        ]
    for member in record.members:
        type_name = element_type(language, record, member, records) + ("[]" if member.array else "")
        shape = f"{member.array} capacity {member.count}" if member.array else "scalar"
        body += [
            f"    /** @brief Complete native field {member.name}; {shape}, text bound {member.string_bound}. */",
            f"    public {type_name} field_{member.name} = {initial(language, record, member, records)};",
        ]
    body += [
        "",
        "    /**",
        "     * @brief Construct the complete original default value with owned storage.",
        "     * @details Nested fixed arrays initialize every logical element; sequences",
        "     * start empty. No native capability, pointer, or shared buffer is retained.",
        "     */",
        f"    public {name}()",
        "    {",
    ]
    for member in record.members:
        if (
            member.array == "array"
            and member.native_default is None
            and (member.type == "string" or member.type not in JAVA_TYPES)
        ):
            value = '""' if member.type == "string" else "new " + element_type(language, record, member, records) + "()"
            if member.type == "string" and member.string_encoding == "raw_bytes":
                value = "new byte[0]"
            body += [
                f"        for (int index = 0; index < {member.count}; ++index)",
                "        {",
                f"            field_{member.name}[index] = {value};",
                "        }",
            ]
    body += [
        "    }",
        "",
        "    /**",
        "     * @brief Encode every field of one complete bounded value.",
        "     * @param value Borrowed stable value; all referenced arrays remain caller-owned.",
        "     * @return Newly owned complete canonical bytes, excluding unused capacity.",
        f"     * @details Invalid fields/bounds/semantics throw {invalid}.",
        "     */",
        f"    public static byte[] {'encode' if java else 'Encode'}({name} value)",
        "    {",
        "        Wire.Writer wire = new Wire.Writer(MAX_WIRE_BYTES);",
        f"        {'writeFields' if java else 'WriteFields'}(wire, value);",
        f"        return wire.{'finish' if java else 'Finish'}();",
        "    }",
    ]
    body += [
        "",
        "    /**",
        "     * @brief Decode transactionally with exact extent and trailing-byte checks.",
        "     * @param bytes Borrowed immutable complete canonical body.",
        "     * @return Newly owned full value; failed decoding commits no caller storage.",
        f"     * @details Invalid wire, text, bounds or semantics throw {invalid}.",
        "     */",
        f"    public static {name} {'decode' if java else 'Decode'}(byte[] bytes)",
        "    {",
        f"        if (bytes == null || bytes.{'length' if java else 'Length'} < MIN_WIRE_BYTES || bytes.{'length' if java else 'Length'} > MAX_WIRE_BYTES)",
        "        {",
        f'            throw new {invalid}("Invalid complete canonical extent");',
        "        }",
        f"        Wire.Reader wire = new Wire.Reader(bytes{', bytes.length' if java else ''});",
        f"        {name} value = {'readFields' if java else 'ReadFields'}(wire);",
        f"        wire.{'finish' if java else 'Finish'}();",
        "        return value;",
        "    }",
    ]
    body += [
        "",
        "    /**",
        "     * @brief Write this complete nested value within the enclosing aggregate bound.",
        "     * @param wire Borrowed caller-owned finite writer.",
        "     * @param value Borrowed stable complete value.",
        "     * @return No value; invalid fields or aggregate bounds throw before publication.",
        "     */",
        f"    {'public' if java else 'internal'} static void {'writeFields' if java else 'WriteFields'}(Wire.Writer wire, {name} value)",
        "    {",
        f'        if (value == null) {{ throw new {invalid}("Null canonical record"); }}',
        f"        int start = wire.{'position()' if java else 'Position'};",
    ]
    for member in record.members:
        body += ["        " + line for line in field_codec(language, record, member, records, True)]
    body += ["        " + line for line in semantic_checks(record, "value", language)]
    body += [
        f"        if (wire.{'position()' if java else 'Position'} - start > MAX_WIRE_BYTES)",
        "        {",
        f'            throw new {invalid}("Nested aggregate exceeds registered wire bound");',
        "        }",
        "    }",
    ]
    body += [
        "",
        "    /**",
        "     * @brief Read one complete nested record without exposing partial values.",
        "     * @param wire Borrowed immutable bounded reader and its private cursor.",
        "     * @return Newly owned complete record; malformed nested input throws.",
        "     * @details The caller separately requires complete top-level consumption.",
        "     */",
        f"    {'public' if java else 'internal'} static {name} {'readFields' if java else 'ReadFields'}(Wire.Reader wire)",
        "    {",
        f"        int start = wire.{'position()' if java else 'Position'};",
        f"        {name} value = new {name}();",
    ]
    for member in record.members:
        body += ["        " + line for line in field_codec(language, record, member, records, False)]
    body += ["        " + line for line in semantic_checks(record, "value", language)]
    body += [
        f"        if (wire.{'position()' if java else 'Position'} - start > MAX_WIRE_BYTES)",
        "        {",
        f'            throw new {invalid}("Nested aggregate exceeds registered wire bound");',
        "        }",
        "        return value;",
        "    }",
        "}",
    ]
    if not java:
        body = ["    " + line if line else "" for line in body] + ["}"]
    return "\n".join(lines + body) + "\n"

