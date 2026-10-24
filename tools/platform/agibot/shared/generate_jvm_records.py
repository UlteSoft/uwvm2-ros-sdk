#!/usr/bin/env python3
# SPDX-License-Identifier: Apache-2.0
"""Emit complete original-record JVM JSON decoding from the pinned shared schema.

This source-authoring generator performs no compilation, guest execution or ROS
communication. No field is projected, renamed or inferred from a vendor label.
"""
import argparse
import json
from pathlib import Path


def main():
    """Generate strict transactional methods for every selected original record."""
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--sdk", required=True, type=Path)
    sdk = parser.parse_args().sdk.resolve(strict=True)
    records = json.loads((sdk / "include/platform/agibot/shared/schema/aimdk_v1_1_0_main.json").read_text())["records"]
    names = {name: "record" + str(index) for index, name in enumerate(records)}
    lines = [
        "package agibot.shared.jvm;", "", "import uwvm.ros.Wire;", "",
        "/** @brief Complete original AimDK 1.1.0 main record codecs generated from the pinned schema.",
        " * @details Every original field is retained. The reader borrows canonical input; JSON owns",
        " * its text. Truncation, trailing data, bounds, UTF-8, NUL and nonfinite values are rejected.",
        " * Signed/unsigned 64-bit JSON values use exact decimal strings. No I/O is performed.",
        " */", "public final class Records", "{", "    private Records() {}", "",
        "    /** @brief Escape one owned Unicode scalar string as JSON. */",
        "    private static void quote(StringBuilder output, String value)", "    {",
        '        output.append(\'"\');',
        "        for(int index = 0; index < value.length(); ++index)", "        {",
        "            char item = value.charAt(index);",
        '            if(item < 32 || item == \'"\' || item == \'\\\\\')', "            {",
        '                output.append("\\\\u");',
        '                for(int shift = 12; shift >= 0; shift -= 4) { output.append("0123456789abcdef".charAt((item >>> shift) & 15)); }',
        "            }", "            else { output.append(item); }", "        }",
        '        output.append(\'"\');', "    }", "",
        "    /** @brief Reject NUL after the generic reader validates strict UTF-8. */",
        "    private static String text(String value)", "    {",
        "        if(value.indexOf('\\0') >= 0) { throw new IllegalArgumentException(\"NUL canonical string\"); }",
        "        return value;", "    }", "",
        "    /** @brief Keep finite IEEE values round-trippable in JSON. */",
        "    private static double finite(double value)", "    {",
        '        if(!Double.isFinite(value)) { throw new IllegalArgumentException("Nonfinite canonical float"); }',
        "        return value;", "    }", "",
        "    /** @brief Decode complete original fields under one explicit operation schema.",
        "     * @param operation One query, two state, three resource enumeration.",
        "     * @param bytes Borrowed capacity buffer containing complete canonical bytes.",
        "     * @param length Exact initialized byte count, at most 32768.",
        "     * @return Owned full JSON after complete consumption.",
        "     * @throws IllegalArgumentException Invalid operation, extent or canonical data.",
        "     */",
        "    public static String decode(int operation, byte[] bytes, int length)", "    {",
        '        if(bytes == null || length < 0 || length > 32768) { throw new IllegalArgumentException("Invalid payload"); }',
        "        Wire.Reader input = new Wire.Reader(bytes, length);",
        "        StringBuilder output = new StringBuilder();", "        switch(operation)", "        {",
    ]
    for operation, name in enumerate(("aimdk_msgs/srv/GetMcAction_Response", "aimdk_msgs/msg/McCommonState",
                                    "aimdk_msgs/srv/GetRobotResources_Response"), 1):
        lines.append("            case " + str(operation) + ": " + names[name] + "(input, output); break;")
    lines += ['            default: throw new IllegalArgumentException("Unknown observation");',
              "        }", "        input.finish();", "        return output.toString();", "    }"]

    def scalar(field, indent):
        kind = field["type"]
        reads = {"bool": "bool", "byte": "u8", "char": "u8", "int8": "i8", "uint8": "u8",
                 "int16": "i16", "uint16": "u16", "int32": "i32", "uint32": "u32"}
        if kind == "string":
            statement = "quote(output, text(input.string(" + str(field["string"]) + ")));"
        elif kind in ("int64", "uint64"):
            conversion = "toString" if kind == "int64" else "toUnsignedString"
            statement = "quote(output, Long." + conversion + "(input.i64()));"
        elif kind in ("float32", "float64"):
            statement = "output.append(finite(input." + ("f32" if kind == "float32" else "f64") + "()));"
        elif kind in reads:
            statement = "output.append(input." + reads[kind] + "());"
        else:
            statement = names[kind] + "(input, output);"
        return " " * indent + statement

    for name, definition in records.items():
        lines += ["", "    /** @brief Retain every original field of " + name + ". */",
                  "    private static void " + names[name] + "(Wire.Reader input, StringBuilder output)", "    {",
                  '        output.append(\'{\');']
        for index, field in enumerate(definition["fields"]):
            label = ("," if index else "") + json.dumps(field["name"]) + ":"
            lines.append("        output.append(" + json.dumps(label) + ");")
            if "array" in field or "sequence" in field:
                count = str(field["array"]) if "array" in field else "input.count(" + str(field["sequence"]) + ")"
                lines += ["        {", "            int count = " + count + ";", '            output.append(\'[\');',
                          "            for(int index = 0; index < count; ++index)", "            {",
                          "                if(index != 0) { output.append(','); }", scalar(field, 16), "            }",
                          "            output.append(']');", "        }"]
            else:
                lines.append(scalar(field, 8))
        lines += ["        output.append('}');", "    }"]
    lines += ["}", ""]
    (sdk / "include/platform/agibot/shared/jvm/Records.java").write_text("\n".join(lines))


if __name__ == "__main__":
    main()
