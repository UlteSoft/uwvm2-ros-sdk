#!/usr/bin/env python3
"""@brief Author complete genuine-language Unitree records from the admitted catalog IR.

@details This maintenance generator reuses the reviewed source-pinned industrial
loader. It never reparses a native identity, omits a source field, compiles a
guest, starts ROS, or grants authority. Complete owned finite types replace the
historical borrowed-container templates. Generated source is independently
compiled and exercised on Linux before a qualification receipt is written.
"""
from __future__ import annotations

import argparse
import hashlib
import importlib.util
import json
from pathlib import Path
import sys
import textwrap


SCALARS = {
    "zig": ["bool", "u8", "i8", "u16", "i16", "u32", "i32", "u64", "i64", "f32", "f64"],
    "d": ["bool", "ubyte", "byte", "ushort", "short", "uint", "int", "ulong", "long", "float", "double"],
    "nim": ["bool", "uint8", "int8", "uint16", "int16", "uint32", "int32", "uint64", "int64", "float32", "float64"],
}
KINDS = ["bool", "uint8", "int8", "uint16", "int16", "uint32", "int32", "uint64", "int64", "float32", "float64"]


def digest(raw):
    """@brief Hash exact source bytes.

    @param raw Immutable source bytes.
    @return SHA256 hexadecimal digest.
    """
    return hashlib.sha256(raw).hexdigest()


def load_api(sdk):
    """@brief Load one fixed trusted SDK maintenance entry and its pinned loader.

    @param sdk Complete source SDK containing the original admitted catalogs.
    @return Genuine industrial loader paired with its actual source bytes.
    """
    source = sdk / "tools/platform/unitree/binding_sources.py"
    sys.path.insert(0, str(source.parent))
    spec = importlib.util.spec_from_file_location("_native_source_unitree_loader", source)
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module.api_for(sdk)


def native_identities(sdk, backend):
    """@brief Read exact original installed native identities from retained metadata.

    @param sdk Full source SDK retaining original complete Noetic/Jazzy metadata.
    @param backend Exact original ROS schema family, one or two.
    @return Original type-to-identity map and exact source-file hash receipt.
    @details No identity is guessed from a canonical codec hash or reconstructed
    from message names. Missing native metadata is a maintenance error.
    """
    distribution = "noetic" if backend == 1 else "jazzy"
    relative = f"share/platform/unitree/native/ros{backend}/{distribution}-complete-types/native-metadata.json"
    source = sdk / relative
    metadata = json.loads(source.read_text())
    identities = {}
    for name, value in metadata["types"].items():
        original = value if backend == 1 else value["official"]
        identities[name] = original["native_identity"]
    return identities, {"file": relative, "sha256": digest(source.read_bytes())}


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
    if scalar == "string":
        return json.dumps(value, ensure_ascii=False)
    if scalar == "bool":
        return value.lower()
    if language == "d" and scalar == "int64" and value == "-9223372036854775808":
        return "(-9223372036854775807L - 1L)"
    if language == "d":
        return value + {"uint64": "UL", "int64": "L", "uint32": "U", "float32": "F"}.get(scalar, "")
    if language == "nim" and scalar in KINDS[1:9]:
        return value + "'" + ("u" if scalar.startswith("u") else "i") + scalar.lstrip("uint")
    return value


def emit(language, backend, records, ordered, semantics):
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
        prefix + f"@brief Complete owned original Unitree ROS {backend} native records and codecs.",
        prefix + "@details Generated from the admitted source-pinned catalog; no ROS authority is created.",
    ]
    if language == "zig":
        output += ['const std = @import("std");', 'const wire = @import("unitree_wire");', ""]
    elif language == "d":
        output += [f"module unitree.d.ros{backend}.records;", "import unitree.d.wire;", ""]
    else:
        output += ["import unitree/nim/wire", ""]
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
                    default = literal(language, member.type, member.native_default)
                if member.array == "array":
                    default = f"@splat(std.mem.zeroes({element(language, record, member, records)}))"
                elif member.array == "sequence":
                    default = ".{}"
                declaration = indent + f"{name}: {native_type} = {default},"
                if len(declaration) > 120 and member.array == "array":
                    output += [
                        indent + f"{name}: {native_type} = @splat(std.mem.zeroes(",
                        indent + "    " + element(language, record, member, records) + ",",
                        indent + ")),",
                    ]
                else:
                    output.append(declaration)
            elif language == "d":
                default = ""
                if member.native_default is not None:
                    default = " = " + literal(language, member.type, member.native_default)
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
                native_type = (
                    ("[]const u8" if language == "zig" else "string")
                    if scalar == "string"
                    else SCALARS[language][KINDS.index(scalar)]
                )
                expression = literal(language, scalar, constant["value"])
                declaration = (
                    f"pub const constant_{constant['name']}: {native_type} = {expression};"
                    if language == "zig"
                    else f"enum {native_type} constant_{constant['name']} = {expression};"
                )
                output.append(indent + declaration)
            rule = semantics(record)
            if rule.startswith("normalized-"):
                name = "field_" + ("nanosec" if backend == 2 else "nsec")
                condition = f"self.{name} >= 1000000000"
                if rule == "normalized-duration":
                    condition += f" or self.{name} < 0" if language == "zig" else f" || self.{name} < 0"
                output += docs(
                    language,
                    "Validate the complete original time-domain invariant.",
                    "Nanoseconds stay in the original normalized domain; no clock or unit conversion occurs.",
                    indent,
                    parameters=(("self", "Complete immutable owned value."),) if language == "zig" else (),
                    returns="Void success or Invalid." if language == "zig" else "Zero or canonical error 22.",
                )
                if language == "zig":
                    output += [
                        indent + "pub fn validate(self: *const @This()) wire.Error!void {",
                        indent + "    if (" + condition + ") return error.Invalid;",
                        indent + "}",
                    ]
                else:
                    output += [
                        indent + "uint validate() const @nogc nothrow",
                        indent + "{",
                        indent + "    return " + condition.replace("self.", "this.") + " ? 22 : 0;",
                        indent + "}",
                    ]
            output.append("};" if language == "zig" else "}")
        else:
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
                native_type = (
                    "string" if constant["type"] == "string" else SCALARS[language][KINDS.index(constant["type"])]
                )
                output += docs(
                    language,
                    f"Original {record.name}.{constant['name']} constant.",
                    "An immutable original constant consumes no canonical instance field.",
                )
                output.append(
                    f"const {symbol}_{constant['name']}*: {native_type} = "
                    + literal(language, constant["type"], constant["value"])
                )
            rule = semantics(record)
            if rule.startswith("normalized-"):
                name = "field_" + ("nanosec" if backend == 2 else "nsec")
                condition = f"value.{name} >= 1000000000"
                if rule == "normalized-duration":
                    condition += f" or value.{name} < 0"
                output += docs(
                    language,
                    "Validate the original complete time-domain invariant.",
                    "No clock read, unit conversion or normalization is performed.",
                    parameters=(("value", "Complete immutable owned record."),),
                    returns="Zero or canonical error 22.",
                )
                output += [f"proc validate*(value: {symbol}): uint32 =", f"  if {condition}: 22'u32 else: 0'u32"]
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


def main():
    """@brief Author complete source-only products and an honest coverage inventory.

    @return None; no compiler, test, ROS process or runtime is executed here.
    """
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--source-sdk", type=Path, required=True)
    parser.add_argument("--destination-sdk", type=Path, required=True)
    args = parser.parse_args()
    source = args.source_sdk.resolve(strict=True)
    destination = args.destination_sdk.resolve(strict=True)
    api = load_api(source)
    reports = []
    for backend in (1, 2):
        catalog = source / f"share/platform/unitree/catalogs/ros{backend}/catalog.preparation.json"
        records, ordered, interfaces, pins = api.load_catalog(catalog, False)
        identities, native_input = native_identities(source, backend)
        facts = []
        for record in ordered:
            facts.append(
                {
                    "type": record.name,
                    "symbol": record.symbol,
                    "native_identity": identities[record.name],
                    "codec_identity": record.codec_identity,
                    "minimum_wire_bytes": record.minimum,
                    "maximum_wire_bytes": record.maximum,
                    "fields": [vars(member) for member in record.members],
                    "constants": record.constants,
                }
            )
        from native_record_emitters import haskell, swift, odin

        emitters = {"haskell": haskell, "swift": swift, "odin": odin}
        for language in [*SCALARS, *emitters]:
            directory = destination / f"include/platform/unitree/{language}/ros{backend}"
            if language == "haskell":
                directory = destination / f"include/platform/unitree/haskell/Unitree/Ros{backend}"
            directory.mkdir(parents=True, exist_ok=True)
            body = (
                emitters[language](backend, records, ordered, api.env["standard_semantics"])
                if language in emitters
                else emit(language, backend, records, ordered, api.env["standard_semantics"])
            )
            name = {
                "zig": "records.zig",
                "d": "records.d",
                "nim": "records.nim",
                "haskell": "Records.hs",
                "swift": "Records.swift",
                "odin": "records.odin",
            }[language]
            filename = directory / name
            filename.write_text(body)
        reports.append(
            {
                "backend": backend,
                "record_count": len(ordered),
                "interface_count": len(interfaces),
                "field_count": sum(len(record.members) for record in ordered),
                "constant_count": sum(len(record.constants) for record in ordered),
                "catalog_sha256": digest(catalog.read_bytes()),
                "records": facts,
                "source_pins": pins,
                "native_metadata_input": native_input,
            }
        )
    report = {
        "format": "uwvm-unitree-genuine-native-records-v1",
        "status": "SOURCE_ONLY",
        "languages": [*SCALARS, *emitters],
        "families": reports,
        "compiler_executed_by_generator": False,
        "native_ros_qualified_by_generator": False,
        "default_authority": [],
    }
    location = destination / "share/platform/unitree/native-source-records.json"
    location.parent.mkdir(parents=True, exist_ok=True)
    location.write_text(json.dumps(report, indent=2) + "\n")
    print(
        json.dumps(
            {
                "languages": [*SCALARS, *emitters],
                "coverage": [
                    {
                        key: family[key]
                        for key in ("backend", "record_count", "interface_count", "field_count", "constant_count")
                    }
                    for family in reports
                ],
            }
        )
    )


if __name__ == "__main__":
    main()
