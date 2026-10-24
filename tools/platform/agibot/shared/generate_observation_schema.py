#!/usr/bin/env python3
# SPDX-License-Identifier: Apache-2.0
"""Emit the selected complete AimDK wire schema from the pinned official files.

This source generator performs no communication, compilation or guest execution.
Every instance field remains in original order. Explicit project bounds limit
unbounded official strings/sequences; constants remain separate from wire data.
The output is shared schema data, never an official native type identity.
"""
import argparse
import hashlib
import json
import pprint
from pathlib import Path
import re

SCALARS = {"bool", "byte", "char", "int8", "uint8", "int16", "uint16",
           "int32", "uint32", "int64", "uint64", "float32", "float64", "string"}


def lua_string(value):
    """Quote UTF-8 source using Lua escapes, including exact ASCII controls."""
    characters = []
    for character in value:
        if character in ('"', "\\"):
            characters.append("\\" + character)
        elif ord(character) < 32:
            characters.append("\\x" + format(ord(character), "02x"))
        else:
            characters.append(character)
    return '"' + "".join(characters) + '"'


def lua(value, depth=0):
    """Represent immutable schema data as ordinary, side-effect-free Lua tables."""
    if isinstance(value, dict):
        rows = ["[" + lua_string(key) + "] = " + lua(item, depth + 1)
                for key, item in value.items()]
    elif isinstance(value, list):
        rows = [lua(item, depth + 1) for item in value]
    else:
        rows = None
    if rows is not None:
        compact = "{" + ", ".join(rows) + "}"
        if len(compact) + 4 * depth <= 100 and "\n" not in compact:
            return compact
        return "{\n" + "\n".join("    " * (depth + 1) + row + "," for row in rows) + "\n" + "    " * depth + "}"
    if value is None:
        return "nil"
    if isinstance(value, bool):
        return "true" if value else "false"
    return lua_string(value) if isinstance(value, str) else json.dumps(value)


def generate(sdk):
    """Resolve exact definitions and bounds without filtering any instance field."""
    directory = sdk / "share/platform/agibot/catalogs/ros2_sdk_v1_1_0_main"
    selection = json.loads((directory / "selection.json").read_text())
    records = {}
    inputs = []
    for row in selection["types"]:
        path = directory / row["file"]
        raw = path.read_bytes()
        inputs.append({"file": row["file"], "sha256": hashlib.sha256(raw).hexdigest()})
        # Separator-looking runs inside official comments are not components.
        sections = [""]
        for source_line in raw.decode("utf-8").splitlines():
            line = source_line.split("#", 1)[0].strip()
            if line == "---":
                sections.append("")
            else:
                sections[-1] += line + "\n"
        if len(sections) != (2 if "/srv/" in row["type"] else 1):
            raise ValueError("Unexpected interface component layout: " + row["type"])
        for index, text in enumerate(sections):
            role = ("request", "response")[index] if len(sections) == 2 else None
            name = row["type"] + ("_" + role.capitalize() if role else "")
            fields, constants = [], {}
            for line in text.splitlines():
                line = line.split("#", 1)[0].strip()
                if not line:
                    continue
                constant = re.fullmatch(r"(\w+)\s+([A-Z][A-Z0-9_]*)\s*=\s*(.*)", line)
                if constant:
                    constants[constant[2]] = {"type": constant[1], "literal": constant[3]}
                    continue
                match = re.fullmatch(r"([A-Za-z0-9_/]+)(?:\[(\d*)\])?\s+([a-zA-Z_][a-zA-Z0-9_]*)(?:\s+(.+))?", line)
                if match is None or match[4] is not None:
                    raise ValueError("Unsupported declaration requires explicit handling: " + line)
                typ, extent, field = match[1], match[2], match[3]
                if typ not in SCALARS:
                    pieces = typ.split("/")
                    typ = row["type"].split("/")[0] + "/msg/" + typ if len(pieces) == 1 else (
                        pieces[0] + "/msg/" + pieces[1] if len(pieces) == 2 else typ)
                key = (role + "." if role else "") + field
                bound = row["bounds"].get(key, {})
                entry = {"name": field, "type": typ}
                if extent is not None:
                    entry["array" if extent else "sequence"] = int(extent) if extent else bound["sequence"]
                if typ == "string":
                    entry["string"] = bound["string"]
                fields.append(entry)
            records[name] = {"fields": fields, "constants": constants}
    for record in records.values():
        for field in record["fields"]:
            if field["type"] not in SCALARS and field["type"] not in records:
                raise ValueError("Missing complete schema dependency: " + field["type"])
    result = {"format": "agibot-complete-observation-schema-v1", "sdk_version": "1.1.0",
              "variant": "main", "sources": inputs, "records": records,
              "qualification": "Canonical guest schema only; not an official native identity or runtime result"}
    output = sdk / "include/platform/agibot/shared/schema"
    output.mkdir(parents=True, exist_ok=True)
    (output / "aimdk_v1_1_0_main.json").write_text(json.dumps(result, indent=2) + "\n")
    (output / "aimdk_v1_1_0_main.lua").write_text(
        "-- SPDX-License-Identifier: Apache-2.0\n"
        "--- @brief Complete original observation fields and explicit guest bounds.\n"
        "--- @details Generated from the adjacent pinned JSON schema; no I/O or authority.\n"
        "return " + lua(records) + "\n")
    (output / "aimdk_v1_1_0_main.js").write_text(
        "// SPDX-License-Identifier: Apache-2.0\n"
        "/** Complete original fields/constants and explicit guest bounds; no I/O. */\n"
        "export const SCHEMA = " + json.dumps(records, indent=4) + ";\n")
    (output / "aimdk_v1_1_0_main.py").write_text(
        "# SPDX-License-Identifier: Apache-2.0\n"
        '"""Complete original fields/constants and explicit guest bounds; no I/O."""\n'
        "SCHEMA = " + pprint.pformat(records, width=100, sort_dicts=False) + "\n")
    (output / "aimdk_v1_1_0_main.rb").write_text(
        "# SPDX-License-Identifier: Apache-2.0\n"
        "# Complete original fields/constants and explicit guest bounds; no I/O.\n"
        "module Agibot\n    SCHEMA = " + ruby(records, 4) + "\nend\n")
    (output / "aimdk_v1_1_0_main.php").write_text(
        "<?php\n// SPDX-License-Identifier: Apache-2.0\n"
        "/** Complete original fields/constants and explicit guest bounds; no I/O. */\n"
        "function agibot_schema()\n{\n    return " + php(records, 4) + ";\n}\n")
    emit_json_c(sdk, records)


def ruby(value, indent=0):
    """Quote schema data as ordinary Ruby hashes/arrays, without executing Ruby."""
    padding = " " * indent
    if isinstance(value, dict):
        return "{\n" + ",\n".join(" " * (indent + 4) + json.dumps(key) + " => " + ruby(item, indent + 4)
                                   for key, item in value.items()) + "\n" + padding + "}"
    if isinstance(value, list):
        return "[\n" + ",\n".join(" " * (indent + 4) + ruby(item, indent + 4) for item in value) + "\n" + padding + "]"
    return json.dumps(value)


def php(value, indent=0):
    """Emit compatible ordinary PHP arrays without invoking a host PHP engine."""
    padding = " " * indent
    if isinstance(value, dict):
        return "array(\n" + ",\n".join(" " * (indent + 4) + json.dumps(key) + " => " + php(item, indent + 4)
                                        for key, item in value.items()) + "\n" + padding + ")"
    if isinstance(value, list):
        return "array(\n" + ",\n".join(" " * (indent + 4) + php(item, indent + 4) for item in value) + "\n" + padding + ")"
    return json.dumps(value)


def emit_json_c(sdk, records):
    """Emit typed C JSON conversion for the complete selected response closure."""
    selected = set()

    def visit(name):
        if name in selected:
            return
        selected.add(name)
        for field in records[name]["fields"]:
            if field["type"] in records:
                visit(field["type"])

    for root in ("aimdk_msgs/srv/GetMcAction_Response", "aimdk_msgs/msg/McCommonState",
                 "aimdk_msgs/srv/GetRobotResources_Response"):
        visit(root)
    symbol = lambda name: name.replace("/", "_")
    lines = ["/* SPDX-License-Identifier: Apache-2.0 */",
             "/** @file json_records.inc",
             " * @brief Generated complete original-record JSON emitters; no I/O or authority.",
             " * @details Source fields and explicit bounds are pinned in the shared JSON schema.",
             " */"]
    for name in sorted(selected):
        lines.append("static void json_" + symbol(name) + "(agibot_json_writer*, roswasmc_bounded_2_" + symbol(name) + " const*);")

    def value(typ, expression, indent):
        prefix = " " * indent
        if typ == "string":
            return [prefix + "json_text(writer, " + expression + ".data, " + expression + ".size);"]
        if typ == "bool":
            return [prefix + "json_literal(writer, " + expression + " ? \"true\" : \"false\");"]
        if typ.startswith("uint") or typ in ("char", "byte"):
            return [prefix + "json_unsigned(writer, " + expression + ", " + str(int(typ == "uint64")) + ");"]
        if typ.startswith("int"):
            return [prefix + "json_signed(writer, " + expression + ", " + str(int(typ == "int64")) + ");"]
        if typ.startswith("float"):
            return [prefix + "json_float(writer, " + expression + ");"]
        return [prefix + "json_" + symbol(typ) + "(writer, &(" + expression + "));"]

    for name in sorted(selected):
        lines += ["", "/** @brief Serialize every original field of " + name + ". */",
                  "static void json_" + symbol(name) + "(agibot_json_writer* writer, roswasmc_bounded_2_" + symbol(name) + " const* record)", "{",
                  "    json_literal(writer, \"{\");"]
        for index, field in enumerate(records[name]["fields"]):
            label = ("," if index else "") + json.dumps(field["name"]) + ":"
            lines.append("    json_literal(writer, " + json.dumps(label) + ");")
            expression = "record->" + field["name"]
            if "array" in field or "sequence" in field:
                count = str(field["array"]) if "array" in field else expression + ".size"
                indexed = expression + ("[index]" if "array" in field else ".data[index]")
                lines += ["    json_literal(writer, \"[\");", "    for(uint32_t index = 0; index < " + count + "; ++index)", "    {",
                          "        if(index) { json_literal(writer, \",\"); }"]
                lines += value(field["type"], indexed, 8)
                lines += ["    }", "    json_literal(writer, \"]\");"]
            else:
                lines += value(field["type"], expression, 4)
        lines += ["    json_literal(writer, \"}\");", "}"]
    (sdk / "lib/platform/agibot/shared/json_records.inc").write_text("\n".join(lines) + "\n")


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--sdk", type=Path, required=True)
    generate(parser.parse_args().sdk.resolve(strict=True))
