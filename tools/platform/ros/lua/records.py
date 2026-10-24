#!/usr/bin/env python3
"""Emit every Lua canonical record field from the actual bounded source IR."""

import argparse
import hashlib
import importlib.util
import json
from pathlib import Path
import struct
import sys


def literal(value, depth=0):
    """@brief Render an exact Lua literal with readable nested table indentation.

    @details This source emitter preserves integer/byte/string domains. It is
    not a formatter or parser and makes no syntax qualification claim.
    @param value [in] Admitted scalar, list or ordered dictionary from the IR.
    @param depth [in] Nonnegative indentation depth; recursive use only.
    @return Lua5.4 source text without performing any I/O or execution.
    @see main
    """
    if value is None:
        return "nil"
    if type(value) is bool:
        return "true" if value else "false"
    if type(value) in (int, float):
        if type(value) is int and value == -(1 << 63):
            return "(-9223372036854775807 - 1)"
        return repr(value)
    if type(value) is str:
        # Lua decimal byte escapes avoid JSON's unsupported \u escape and
        # preserve UTF-8 bytes independently of the source-file locale.
        return (
            '"'
            + "".join(chr(b) if 32 <= b <= 126 and b not in (34, 92) else "\\%03d" % b for b in value.encode("utf-8"))
            + '"'
        )
    if type(value) is bytes:
        return '"' + "".join("\\%03d" % b for b in value) + '"'
    if type(value) is list:
        if not value:
            return "{}"
        pad = "    " * (depth + 1)
        return "{\n" + "".join(pad + literal(x, depth + 1) + ",\n" for x in value) + "    " * depth + "}"
    if type(value) is dict:
        if not value:
            return "{}"
        pad = "    " * (depth + 1)
        return (
            "{\n"
            + "".join(pad + "[" + literal(k) + "] = " + literal(v, depth + 1) + ",\n" for k, v in value.items())
            + "    " * depth
            + "}"
        )
    raise ValueError("unimplemented exact Lua source literal")


def _field_documentation(field):
    scalar_type = field.type
    if scalar_type == "bool":
        kind, domain = "boolean", "Exact boolean; encoded as one byte0/1."
    elif scalar_type == "uint64":
        kind, domain = "string", "Exactly eight little-endian bytes; never a Lua number."
    elif scalar_type in ("uint8", "int8", "uint16", "int16", "uint32", "int32", "int64"):
        width = int(scalar_type.removeprefix("uint").removeprefix("int"))
        low = 0 if scalar_type.startswith("uint") else -(1 << (width - 1))
        high = (1 << width) - 1 if low == 0 else (1 << (width - 1)) - 1
        kind, domain = "integer", "Exact " + scalar_type + " range " + str(low) + ".." + str(high) + "."
    elif scalar_type in ("float32", "float64"):
        kind = "number"
        domain = "Finite IEEE " + scalar_type + "."
        if scalar_type == "float32":
            domain += " Rounds to binary32 and rejects overflow."
    elif scalar_type == "string":
        kind = "string"
        domain = "Raw bytes including NUL" if field.string_encoding == "raw_bytes" else "Strict UTF-8 without NUL"
        domain += "; length0.." + str(field.string_bound) + " bytes."
    else:
        kind, domain = "table", "Complete nested " + scalar_type + " value; no native fields are projected away."
    if field.array:
        kind += "[]"
        domain += (" Exactly " if field.array == "array" else " At most ") + str(field.count)
        domain += " contiguous elements; holes and extra array keys are rejected."
    if field.native_default is not None:
        domain += " Declared native scalar default: " + field.native_default + "."
    return kind, domain


def _record_documentation(record, semantics):
    symbol = record.symbol
    lines = [
        "--- @class " + symbol,
        "--- @brief Complete ROS" + str(record.version) + " " + record.name + " value and codec.",
        "--- @details Preserves every declared native field and the finite canonical bounds.",
        "--- Instances own fresh defaults; explicit initializer tables/nested values are retained",
        "--- by reference. Encode/decode validate values synchronously and perform no I/O.",
        "--- This type is not a grant, native registry entry or upstream ROS client.",
        "--- Units are those of the original native schema; this IR declares no additional units.",
        "--- @see roswasm/wire.lua",
    ]
    for field in record.members:
        kind, description = _field_documentation(field)
        if semantics in ("normalized-time", "normalized-duration"):
            if field.name in ("nanosec", "nsec"):
                description += " Normalized fractional nanoseconds, inclusive0..999999999."
            elif field.name in ("sec", "secs"):
                description += " Whole seconds; signedness/range follow the native scalar above."
        if semantics == "joint-state-optional-equal-length-arrays" and field.name in (
            "name",
            "position",
            "velocity",
            "effort",
        ):
            description += " Empty is permitted; all nonempty JointState arrays must have equal length."
        lines.append("--- @field " + field.name + " " + kind + " " + description)
    metadata = (
        ("ROS_VERSION", "integer", "Read-only-by-contract backend value " + str(record.version) + "."),
        ("NATIVE_TYPE", "string", "Exact normalized native type name " + record.name + "."),
        (
            "NATIVE_IDENTITY",
            "string|nil",
            "Exact supplied native identity; nil means absent, not inferred compatibility.",
        ),
        ("CODEC_IDENTITY", "string", "Finite canonical schema identity; does not replace native type agreement."),
        ("MIN_WIRE_BYTES", "integer", "Inclusive complete minimum " + str(record.minimum) + " bytes."),
        ("MAX_WIRE_BYTES", "integer", "Inclusive complete maximum " + str(record.maximum) + " bytes."),
    )
    for name, kind, description in metadata:
        lines += [
            "--- @brief " + symbol + "." + name + ": " + description,
            "--- @details Class metadata is inherited by values; do not write it as an instance field.",
            "--- @see " + symbol + ".encode",
            "--- @field " + name + " " + kind + " " + description,
        ]
    for constant in record.constants:
        lines += [
            "--- @brief Native class constant " + symbol + "." + constant["name"] + ".",
            "--- @details Original "
            + constant["type"]
            + " literal "
            + constant["value"]
            + "; consumes no instance wire bytes. Treat as read-only.",
            "--- @see " + symbol + ".new",
            "--- @field "
            + constant["name"]
            + " "
            + (
                "string"
                if constant["type"] == "uint64"
                else (
                    "boolean"
                    if constant["type"] == "bool"
                    else "number" if constant["type"].startswith("float") else "integer"
                )
            ),
        ]
    lines += [
        "--- @brief Construct " + symbol + " with complete fresh defaults.",
        "--- @details Optional plain-table initializer is shallow: supplied values are retained.",
        "--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.",
        "--- @param values? table [in] Native field-name overrides; caller retains ownership.",
        "--- @return " + symbol + " value New mutable complete value; no ROS resource.",
        "--- @see " + symbol + ".encode",
        "--- @field new fun(values?: table): " + symbol,
        "--- @brief Encode a complete " + symbol + " value to canonical LE bytes.",
        "--- @details Requires this exact class; rejects extra/missing fields, invalid domains,",
        "--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.",
        "--- No I/O, permission change, retry or mutation of the input is performed.",
        "--- @param value " + symbol + " [in] Complete value borrowed synchronously.",
        "--- @return string bytes New immutable string, "
        + str(record.minimum)
        + ".."
        + str(record.maximum)
        + " bytes.",
        "--- @see " + symbol + ".decode",
        "--- @field encode fun(value: " + symbol + "): string",
        "--- @brief Decode exactly one complete " + symbol + " canonical value.",
        "--- @details Rejects malformed, truncated, trailing or semantically invalid data.",
        "--- The returned value and nested arrays/records are fresh and independent of input.",
        "--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.",
        "--- @return " + symbol + " value New complete value; failures raise Lua errors.",
        "--- @see " + symbol + ".encode",
        "--- @field decode fun(bytes: string): " + symbol,
        "local " + symbol + " = classes[" + literal(symbol) + "]",
    ]
    return "\n".join(lines) + "\n"


def render(parent, bounded, records, ordered, semantics):
    """@brief Emit complete documented Lua records from a validated original IR.

    @param parent Authoritative scalar domains and source reader.
    @param bounded Canonical field/default validation implementation.
    @param records Complete lookup of nested original record types.
    @param ordered Topologically ordered original fields and constants.
    @param semantics Source-paired semantic classifier for this catalog.
    @return Complete Lua module source; this operation executes no compiler.
    """
    schemas = []
    for record in ordered:
        if semantics(record) not in (
            "",
            "normalized-time",
            "normalized-duration",
            "joint-state-optional-equal-length-arrays",
        ):
            raise ValueError("new complete-value semantic rule needs Lua implementation")
        fields = []
        for field in record.members:
            if getattr(field, "float_policy", "finite") != "finite":
                raise ValueError(
                    "the Lua foundation has no implemented non-finite field domain; refuse the complete record"
                )
            if (
                field.type not in parent.SCALARS
                and field.type != "string"
                and (record.version, field.type) not in records
            ):
                raise ValueError("unknown full native field type")
            if field.native_default is not None and (field.array or field.type not in parent.SCALARS):
                raise ValueError("unsupported complete native default")
            if field.string_encoding not in ("utf8", "raw_bytes"):
                raise ValueError("new string byte domain needs Lua implementation")
            item = {
                "name": field.name,
                "type": (
                    field.type
                    if field.type in parent.SCALARS or field.type == "string"
                    else records[(record.version, field.type)].symbol
                ),
                "array": field.array,
                "count": field.count,
                "string_bound": field.string_bound,
                "raw": field.string_encoding == "raw_bytes",
                "element_minimum": (
                    parent.SCALARS[field.type][1]
                    if field.type in parent.SCALARS
                    else 4 if field.type == "string" else records[(record.version, field.type)].minimum
                ),
            }
            if field.native_default is not None:
                # Use the authoritative scalar literal admission before
                # converting to exact Lua values. uint64 never passes float.
                bounded.scalar_default_expression(field.type, field.native_default, "python")
                if field.type == "uint64":
                    item["default"] = int(field.native_default).to_bytes(8, "little")
                elif field.type == "bool":
                    item["default"] = field.native_default == "True"
                elif field.type.startswith("float"):
                    value = float(field.native_default)
                    item["default"] = (
                        struct.unpack("<f", struct.pack("<f", value))[0] if field.type == "float32" else value
                    )
                else:
                    item["default"] = int(field.native_default)
            fields.append(item)
        constants = {}
        for constant in record.constants:
            if constant["type"] == "string":
                constants[constant["name"]] = constant["value"]
                continue
            bounded.scalar_default_expression(constant["type"], constant["value"], "python")
            constants[constant["name"]] = (
                int(constant["value"]).to_bytes(8, "little")
                if constant["type"] in ("uint64", "string")
                else (
                    constant["value"] == "True"
                    if constant["type"] == "bool"
                    else float(constant["value"]) if constant["type"].startswith("float") else int(constant["value"])
                )
            )
        schemas.append(
            {
                "symbol": record.symbol,
                "ros_version": record.version,
                "native_type": record.name,
                "native_identity": record.identity,
                "codec_identity": record.codec_identity,
                "minimum": record.minimum,
                "maximum": record.maximum,
                "semantics": semantics(record),
                "fields": fields,
                "constants": constants,
            }
        )
    body = (
        "--- @brief Complete source-derived canonical Lua value classes.\n"
        "--- @details Synchronous local values only; Lua5.4 with signed64-bit integers.\n"
        '--- @see roswasm/wire.lua\nlocal wire = require("roswasm.wire")\n'
        "local schemas = " + literal(schemas) + "\n"
        "local classes, by_name = wire.records(schemas)\n\n"
        + "\n".join(_record_documentation(record, semantics(record)) for record in ordered)
        + "\nreturn classes, by_name\n"
    )
    return body


def main():
    """@brief Generate complete documented Lua values from one explicit catalog.

    @details The CLI requires a fresh output directory outside the SDK. Source
    and definition hashes are rechecked before writing; no ROS resources or
    native identities are synthesized. Invalid/new unsupported domains refuse.
    @see literal
    """
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("catalog", type=Path)
    parser.add_argument("--out", type=Path, required=True)
    parser.add_argument("--require-native-identity", action="store_true")
    args = parser.parse_args()
    sdk = Path(__file__).resolve().parents[2]
    modules = []

    def load(name, path):
        spec = importlib.util.spec_from_file_location(name, path)
        module = importlib.util.module_from_spec(spec)
        sys.modules[name] = module
        modules.append(name)
        spec.loader.exec_module(module)
        return module

    try:
        parent = load("_owned_lua_records_parent", sdk / "tools/custom_types.py")
        bounded = load("_owned_lua_records_bounded", sdk / "custom-types/bounded_profile.py")
        args.out = args.out.absolute()
        if args.out.exists() or args.out.is_symlink() or args.out.resolve().is_relative_to(sdk):
            raise ValueError("fresh Lua package output outside source required")
        paths = [
            Path(__file__).resolve(),
            Path(parent.__file__),
            Path(bounded.__file__),
            sdk / "lua/include/roswasm/wire.lua",
            args.catalog.resolve(strict=True),
        ]
        captured = {p: parent.bounded_read(p, parent.MAX_SOURCE_BYTES) for p in paths}
        records, ordered, interfaces, pins = bounded.load_catalog(parent, args.catalog, args.require_native_identity)
        if set(parent.SCALARS) != {
            "bool",
            "uint8",
            "int8",
            "uint16",
            "int16",
            "uint32",
            "int32",
            "uint64",
            "int64",
            "float32",
            "float64",
        }:
            raise ValueError("new authoritative scalar needs an explicit complete Lua implementation")
        body = render(parent, bounded, records, ordered, bounded.standard_semantics)
        products = {
            "bounded_records.lua": body.encode("utf-8"),
            "roswasm/wire.lua": captured[sdk / "lua/include/roswasm/wire.lua"],
        }
        for p, raw in captured.items():
            if parent.bounded_read(p, parent.MAX_SOURCE_BYTES) != raw:
                raise ValueError("Lua generator input changed")
        for source in pins["definitions"]:
            path = (args.catalog.resolve().parent / source["file"]).resolve(strict=True)
            if not path.is_relative_to(args.catalog.resolve().parent):
                raise ValueError("definition escaped catalog root")
            raw = parent.bounded_read(path, parent.MAX_SOURCE_BYTES)
            if len(raw) != source["bytes"] or hashlib.sha256(raw).hexdigest() != source["sha256"]:
                raise ValueError("definition changed during Lua emission")
        fact = lambda raw: {"bytes": len(raw), "sha256": hashlib.sha256(raw).hexdigest()}
        proof = {
            "kind": "complete-lua-record-sources-v1",
            "status": "GENERATED_SOURCE_ONLY",
            "source_inputs": pins,
            "generator_inputs": {str(p): fact(raw) for p, raw in captured.items()},
            "records": [
                {
                    "symbol": r.symbol,
                    "fields": [vars(f) for f in r.members],
                    "constants": r.constants,
                    "native_identity": r.identity,
                    "codec_identity": r.codec_identity,
                }
                for r in ordered
            ],
            "outputs": {p: fact(raw) for p, raw in products.items()},
            "default_authority": [],
            "native_registry_emitted": False,
            "wasm_execution": "NOT_RUN",
            "native_ros": "NOT_RUN",
        }
        args.out.mkdir(parents=True, exist_ok=False)
        for name, raw in products.items():
            p = args.out / name
            p.parent.mkdir(parents=True, exist_ok=True)
            p.write_bytes(raw)
        (args.out / "generation.lua.json").write_text(json.dumps(proof, indent=2, sort_keys=True) + "\n")
    finally:
        for name in modules:
            sys.modules.pop(name, None)


if __name__ == "__main__":
    sys.dont_write_bytecode = True
    main()
