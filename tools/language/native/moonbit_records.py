#!/usr/bin/env python3
"""@brief Extend the shared MoonBit emitter without changing original ROS fields.

@details One common binding projection gives every stored member the reversible
`field_` prefix. Original IR names, source bytes, canonical identities, component
roles and schema metadata remain unchanged. No platform patches its .msg/.srv
or .action names to satisfy a source-language keyword check. The pinned real
compiler must still qualify every emitted profile and default-value fixture.
"""

from __future__ import annotations

import copy
from dataclasses import asdict
import hashlib
import importlib.util
import json
from pathlib import Path
import re
import struct
import sys
import textwrap
from types import SimpleNamespace

sys.dont_write_bytecode = True


def string_literal(value):
    """@brief Preserve exact Unicode scalar values and literal backslashes."""
    value.encode("utf-8", errors="strict")
    return json.dumps(value, ensure_ascii=False)


def field_name(record, member):
    """@brief Map implementation storage while retaining the official IR name."""
    return "field_" + member.name


def schema_function(symbol, metadata):
    """@brief Keep complete schema metadata readable without oversized literals."""
    raw = json.dumps(
        metadata, sort_keys=True, separators=(",", ":"), ensure_ascii=False
    ).encode("utf-8")
    chunks = [raw[index : index + 20] for index in range(0, len(raw), 20)]
    lines = [
        "/// @brief Return every original field, constant, bound and binding spelling.",
        "/// @details Metadata preserves official names; it grants no native registration.",
        "pub fn "
        + symbol
        + "Codec::schema_bytes(_self : "
        + symbol
        + "Codec) -> Bytes {",
        "  let chunks : Array[Bytes] = [",
    ]
    for chunk in chunks:
        lines.append('    b"' + "".join("\\x%02x" % byte for byte in chunk) + '",')
    lines += [
        "  ]",
        f"  Bytes::makei({len(raw)}, fn(index) {{ chunks[index / 20][index % 20] }})",
        "}",
    ]
    return "\n".join(lines)


def array_entries(source):
    """@brief Split one generated literal at its top-level element separators.

    @param source Array contents without the enclosing square brackets.
    @return Original element expressions with only edge whitespace removed.
    @details Quoted text, escapes and nested calls/arrays/records are preserved.
    Unexpected comments or unbalanced delimiters require an explicit review.
    """
    if not source.strip():
        return []
    entries, stack = [], []
    quote, escaped, begin = None, False, 0
    closing = {"(": ")", "[": "]", "{": "}"}
    for index, character in enumerate(source):
        if quote:
            if escaped:
                escaped = False
            elif character == "\\":
                escaped = True
            elif character == quote:
                quote = None
        elif character in ('"', "'"):
            quote = character
        elif source[index : index + 2] in ("//", "/*"):
            raise ValueError("Review comments inside a generated default array")
        elif character in closing:
            stack.append(closing[character])
        elif character in ")]}":
            if not stack or stack.pop() != character:
                raise ValueError("Unbalanced generated array element")
        elif character == "," and not stack:
            entries.append(source[begin:index].strip())
            begin = index + 1
    if quote or stack:
        raise ValueError("Unclosed generated array element")
    entries.append(source[begin:].strip())
    if not all(entries):
        raise ValueError("Empty generated array element")
    return entries


def semantic_guard_lines(line):
    """@brief Expand one generated validation guard without altering its predicate.

    @param line One original generated MoonBit source line.
    @return Readable source lines, or None when the production is unrelated.
    @details Scalar nanosecond guards and pairwise JointState predicates retain
    their original order and status assignment. Long disjunctions are grouped
    explicitly so the original Boolean precedence survives line breaks.
    """
    match = re.fullmatch(
        r"(\s*)if (.+) \{ ((?:reader|writer)\.error = 22) \}", line
    )
    if match is None:
        return None
    indentation, predicate, assignment = match.groups()
    if len(line) > 120 and " || " in predicate:
        clauses = predicate.split(" || ")
        lines = [indentation + "if ("]
        for index, clause in enumerate(clauses):
            suffix = " ||" if index + 1 < len(clauses) else ""
            lines.append(indentation + "  " + clause + suffix)
        lines.append(indentation + ") {")
    else:
        lines = [indentation + "if " + predicate + " {"]
    lines.extend((indentation + "  " + assignment, indentation + "}"))
    return lines


def readable_source(source):
    """@brief Lay out generated declarations without changing expression tokens.

    @details Only known emitter productions are changed: comma-separated formal
    parameters and record fields. Breaks occur at grammar delimiters; literals,
    identifiers and expression bodies are preserved exactly. The actual pinned
    MoonBit compiler still checks the resulting complete source on Linux.
    """
    result = []
    for line in source.splitlines():
        guard_lines = semantic_guard_lines(line)
        if guard_lines is not None:
            result.extend(guard_lines)
        elif len(line) <= 120:
            result.append(line)
        elif line.startswith(("pub fn ", "fn ")) and "(" in line:
            start, rest = line.split("(", 1)
            parameters, tail = rest.split(")", 1)
            result.append(start + "(")
            result.extend(
                "  " + parameter.strip() + ","
                for parameter in parameters.split(",")
                if parameter.strip()
            )
            result.append(")" + tail)
        elif (
            line.lstrip().startswith("field_") and ": [" in line and line.endswith("],")
        ):
            indentation = line[: len(line) - len(line.lstrip())]
            name, contents = line.strip().split(": [", 1)
            entries = array_entries(contents[:-2])
            result.append(indentation + name + ": [")
            for index, entry in enumerate(entries):
                comma = "," if index + 1 < len(entries) else ""
                result.append(indentation + "  " + entry + comma)
            result.append(indentation + "],")
        elif line.lstrip().startswith("{ field_") and line.endswith(" }"):
            indentation = line[: len(line) - len(line.lstrip())]
            result.append(indentation + "{")
            result.extend(
                indentation + "  " + field.strip() + ","
                for field in line.strip()[2:-2].split(",")
            )
            result.append(indentation + "}")
        elif line.lstrip().startswith("/// "):
            indentation = line[: len(line) - len(line.lstrip())]
            result.extend(
                textwrap.wrap(
                    line.strip()[4:],
                    width=116 - len(indentation),
                    initial_indent=indentation + "/// ",
                    subsequent_indent=indentation + "/// ",
                    break_long_words=False,
                    break_on_hyphens=False,
                )
            )
        else:
            result.append(line)
    return "\n".join(result) + "\n"


def emit(api, source, runtime_source, records, ordered, interfaces):
    """@brief Emit every original record plus full string/fixed-array defaults.

    @param api One source-paired shared industrial parser API.
    @param source Exact shared MoonBit emitter source chosen by the parent.
    @param runtime_source Exact matching shared MoonBit runtime template.
    @param records Original complete source IR; never modified by this function.
    @param ordered Original dependency order with every record/component.
    @param interfaces Original complete interface/component roles.
    @return Actual MoonBit source and a portable producer/source identity receipt.
    """
    spec = importlib.util.spec_from_file_location("_native_moonbit_ir_emitter", source)
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    # The module is a private isolated trusted-source instance. Only the common
    # language binding spelling changes; shared source files and IR do not.
    module.field_name = field_name
    shared_default = module.default_value

    def original_default(bounded, record, member, mapping):
        # The pinned core/float interface defines the reinterpret constructor
        # on Float, not UInt. Keep the exact shared IEEE-754 literal bits.
        expression = shared_default(bounded, record, member, mapping)
        match = re.fullmatch(r"\((\d+U)\)\.reinterpret_as_float\(\)", expression)
        return "Float::reinterpret_from_uint(" + match[1] + ")" if match else expression

    module.default_value = original_default

    def default_value(bounded, record, member, mapping):
        if member.native_default is not None and member.array:
            values = api.env["_array_default_values"](
                member.type, member.native_default
            )
            elements = []
            for value in values:
                field = copy.copy(member)
                field.array = ""
                field.count = 0
                # The authoritative helper already returns normalized scalar
                # text. Quoting that text again would turn 0.1 into "'0.1'".
                field.native_default = value if isinstance(value, str) else repr(value)
                elements.append(original_default(bounded, record, field, mapping))
            return "[" + ", ".join(elements) + "]"
        if member.native_default is not None and member.type == "string":
            if member.string_encoding == "raw_bytes":
                raw = member.native_default.encode("utf-8")
                return 'b"' + "".join("\\x%02x" % byte for byte in raw) + '"'
            return string_literal(member.native_default)
        return original_default(bounded, record, member, mapping)

    # Ask the shared validator to validate its exact unchanged source domain on
    # independent shadow objects. Extended defaults/string constants are then
    # restored from original admitted IR, with explicit complete metadata below.
    shadows = {}
    for key, record in records.items():
        clone = copy.copy(record)
        clone.members = [copy.copy(member) for member in record.members]
        for member in clone.members:
            if member.native_default is not None and (
                member.array or member.type == "string"
            ):
                member.native_default = None
        clone.constants = [
            constant for constant in record.constants if constant["type"] != "string"
        ]
        shadows[key] = clone
    shadow_order = [shadows[(record.version, record.name)] for record in ordered]
    # A vector's admitted element capacity is not the IR's expanded-node work
    # budget. The unchanged authoritative parser already checked that budget.
    # MoonBit's signed Int length can represent every admitted wire-byte count;
    # in particular, a complete 16-KiB protobuf byte envelope must not be cut to
    # the unrelated 4096-node ceiling. Only this isolated emitter view changes.
    bounded_view = SimpleNamespace(**vars(api.bounded))
    bounded_view.MAX_NODES = max(api.bounded.MAX_NODES, api.bounded.MAX_WIRE)
    # The paired industrial API admits the same original standard Time,
    # Duration and JointState rules under its complete vendor profile. Use that
    # authoritative rule resolver here too; the baseline bounded resolver only
    # recognizes the narrower official-standard profile and otherwise silently
    # omits both encode and decode guards. IR and codec identities stay intact.
    bounded_view.standard_semantics = api.env["standard_semantics"]
    runtime = runtime_source.read_text()
    old_float_reader = "bits.to_uint().reinterpret_as_float()"
    if runtime.count(old_float_reader) != 1:
        raise ValueError("The pinned shared MoonBit float reader no longer matches")
    runtime = runtime.replace(
        old_float_reader, "Float::reinterpret_from_uint(bits.to_uint())"
    )
    products = module.emit(
        api.parent, bounded_view, shadows, shadow_order, interfaces, runtime
    )
    text = products["moonbit/bounded_records.mbt"]
    for record in ordered:
        symbol = record.symbol
        clone = shadows[(record.version, record.name)]
        # Replace only a single exact source constructor, never a global token
        # or a wire field. Every default array literal is allocated per call.
        begin_marker = "pub fn " + symbol + "::new() -> " + symbol + " {"
        begin = text.index(begin_marker)
        end = text.index("\n}", begin) + 2
        constructor = text[begin:end]
        for original, shadow in zip(record.members, clone.members):
            if original.native_default is None or not (
                original.array or original.type == "string"
            ):
                continue
            old = original_default(api.bounded, clone, shadow, shadows)
            if original.array:
                old = "Array::makei(" + str(original.count) + ", fn(_) { " + old + " })"
            old_line = "    " + field_name(record, original) + ": " + old + ","
            new_line = (
                "    "
                + field_name(record, original)
                + ": "
                + default_value(api.bounded, record, original, records)
                + ","
            )
            if constructor.count(old_line) != 1:
                raise ValueError(
                    "MoonBit default constructor source no longer matches its shared emitter"
                )
            constructor = constructor.replace(old_line, new_line)
        text = text[:begin] + constructor + text[end:]
        metadata = asdict(record)
        metadata["symbol"] = symbol
        metadata["moonbit_member_spellings"] = {
            member.name: field_name(record, member) for member in record.members
        }
        function = schema_function(symbol, metadata)
        expression = (
            r"pub fn "
            + re.escape(symbol)
            + r"Codec::schema_bytes\([^\n]*\) -> Bytes \{[^\n]*\}"
        )
        text, count = re.subn(expression, lambda match: function, text)
        if count == 0:
            text += "\n" + function + "\n"
        elif count != 1:
            raise ValueError("MoonBit complete schema method is ambiguous")
        for constant in record.constants:
            if constant["type"] == "string":
                text += (
                    "\n/// @brief Original "
                    + record.name
                    + "."
                    + constant["name"]
                    + " text constant.\n"
                    "/// @details The immutable original Unicode value consumes no canonical instance bytes.\n"
                    "pub fn "
                    + symbol
                    + "Codec::constant_"
                    + constant["name"]
                    + "(_self : "
                    + symbol
                    + "Codec) -> String {\n  "
                    + string_literal(constant["value"])
                    + "\n}\n"
                )
    receipt = {
        "format": "uwvm-native-moonbit-source-adapter-v1",
        "shared_emitter_sha256": hashlib.sha256(source.read_bytes()).hexdigest(),
        "shared_runtime_sha256": hashlib.sha256(
            runtime_source.read_bytes()
        ).hexdigest(),
        "binding_projection": "field_ prefix in MoonBit storage only; original IR/schema/wire names unchanged",
        "record_count": len(ordered),
        "field_count": sum(len(record.members) for record in ordered),
        "constant_count": sum(len(record.constants) for record in ordered),
        "official_field_names_preserved": True,
        "native_identity_inferred": False,
        "source_parser_node_budget_changed": False,
        "standard_semantics_resolver": "source-paired industrial API; normalized nanoseconds and optional JointState equal lengths on encode and decode",
        "moonbit_vector_capacity_ceiling": api.bounded.MAX_WIRE,
        "float32_reinterpret_api": "Float::reinterpret_from_uint; unchanged shared IEEE-754 literal bits",
        "built": False,
        "executed": False,
    }
    return readable_source(text), receipt
