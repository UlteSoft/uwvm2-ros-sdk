#!/usr/bin/env python3
# SPDX-License-Identifier: Apache-2.0
"""Author complete typed JSON facades for the selected original AimDK records.

This source generator uses the retained complete schema, without compiling or
executing any guest. Rust and AssemblyScript retain their own typed SDK records;
these pure renderers preserve all fields rather than projecting example output.
"""
from pathlib import Path
import argparse
import json


def main():
    """Write genuine typed renderers and their three public observation helpers."""
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--sdk', type=Path, required=True)
    sdk = parser.parse_args().sdk.resolve(strict=True)
    schema = json.loads((sdk / 'include/platform/agibot/shared/schema/aimdk_v1_1_0_main.json').read_text())['records']
    def native(kind):
        package, category, name = kind.split('/')
        return 'Ros2' + package[0].upper() + package[1:] + category.title() + name
    def function(kind):
        return 'json_' + kind.replace('/', '_')
    def scalar(kind, expression, language):
        if kind in schema:
            return function(kind) + '(' + ('&' if language == 'rs' else '') + expression + ')'
        if kind == 'string':
            return 'quote(' + ('&' if language == 'rs' else '') + expression + ')'
        if kind in ('int64', 'uint64'):
            return 'quote(' + ('&' if language == 'rs' else '') + expression + ('.to_string())' if language == 'rs' else '.toString())')
        if kind.startswith('float'):
            return 'number(' + expression + ( ' as f64)' if language == 'rs' else ')')
        return '(' + expression + ')' + ('.to_string()' if language == 'rs' else '.toString()')
    rust = r'''// SPDX-License-Identifier: Apache-2.0
//! Full original-field JSON for owned AimDK records; no I/O or authority.
//! int64/uint64 remain exact decimal strings. Inputs must be complete
//! unmodified decoded records. Nonfinite mutated floats cause a panic.
#![allow(non_snake_case)]
use crate::aimdk::*;
use std::fmt::Write;

fn quote(value: &str) -> String
{
    let mut result = String::from("\"");
    for character in value.chars()
    {
        match character
        {
            '"' => result.push_str("\\\""),
            '\\' => result.push_str("\\\\"),
            c if (c as u32) < 32 => { write!(&mut result, "\\u{:04x}", c as u32).unwrap(); },
            c => result.push(c),
        }
    }
    result.push('"');
    result
}
fn number(value: f64) -> String
{
    assert!(value.is_finite(), "Nonfinite original float");
    value.to_string()
}
'''.splitlines()
    assembly = ['// SPDX-License-Identifier: Apache-2.0',
        '/** Complete original typed records rendered inside the AssemblyScript Wasm guest. */',
        'import {quote} from "agibot/shared/as/wasi";',
        'import {' + ', '.join(native(name) for name in schema) +
        '} from "agibot/as/ros2/agibot-ros2-sdk-v1-1-0-main-complete/bounded_records";',
        '/** @brief Render a finite IEEE value, retaining negative zero. */',
        'function number(value: f64): string', '{',
        '    assert(isFinite(value), "Nonfinite original float");',
        '    return value == 0.0 && 1.0 / value < 0.0 ? "-0" : value.toString();', '}', '']
    for name, definition in schema.items():
        for language, lines in (('rs', rust), ('as', assembly)):
            lines += ([f'/// Render every original field of `{name}` without acquiring ROS authority.',
                f'fn {function(name)}(value: &{native(name)}) -> String', '{', '    let mut result = String::from("{");']
                if language == 'rs' else [f'/** @brief Render every original field of {name}; caller retains the record. */',
                f'function {function(name)}(value: {native(name)}): string', '{', '    let result = "{";'])
            for index, field in enumerate(definition['fields']):
                prefix = (',' if index else '') + json.dumps(field['name']) + ':'
                lines.append(('    result.push_str(' if language == 'rs' else '    result += ') + json.dumps(prefix) + (');' if language == 'rs' else ';'))
                member_name = ('r#type' if language == 'rs' else 'ros_type') if field['name'] == 'type' else field['name']
                member = 'value.' + member_name
                if 'array' in field or 'sequence' in field:
                    if language == 'rs':
                        lines += ["    result.push('[');", f'    for (index, item) in {member}.iter().enumerate()', '    {',
                            "        if index != 0 { result.push(','); }",
                            '        result.push_str(&' + scalar(field['type'], '*item' if field['type'] not in schema and field['type'] != 'string' else 'item', language) + ');', '    }', "    result.push(']');"]
                    else:
                        lines += ['    result += "[";', f'    for(let index = 0; index < {member}.length; ++index)', '    {',
                            '        if(index != 0) { result += ","; }',
                            '        result += ' + scalar(field['type'], member + '[index]', language) + ';', '    }', '    result += "]";']
                else:
                    text = scalar(field['type'], member, language)
                    lines.append('    result.push_str(&' + text + ');' if language == 'rs' else '    result += ' + text + ';')
            lines += (["    result.push('}');", '    result', '}', ''] if language == 'rs' else ['    return result + "}";', '}', ''])
    for label, typename in (('mode', 'aimdk_msgs/srv/GetMcAction_Response'),
        ('state', 'aimdk_msgs/msg/McCommonState'), ('resources', 'aimdk_msgs/srv/GetRobotResources_Response')):
        rust += [f'/// Return full original {typename} JSON; 64-bit integers use decimal strings.',
            f'pub fn {label}_json(value: &{native(typename)}) -> String', '{', f'    {function(typename)}(value)', '}', '']
        assembly += [f'/** @brief Return full original {typename} JSON with exact integer fields. */',
            f'export function {label}Json(value: {native(typename)}): string', '{', f'    return {function(typename)}(value);', '}', '']
    (sdk / 'include/platform/agibot/rs/json.rs').write_text('\n'.join(rust) + '\n')
    (sdk / 'include/platform/agibot/as/json.ts').write_text('\n'.join(assembly) + '\n')


if __name__ == '__main__':
    main()
