#!/usr/bin/env python3
"""@brief Emit complete platform-neutral real-language classes from captured source-pinned IR.

@details All original fields, constants, defaults, finite shapes, component roles
and both identities are retained. A null native identity remains absent; this
source-only generator cannot qualify a runtime or assert native ROS coverage.
"""
import argparse
import ast
import json
from pathlib import Path
import pprint
import struct


def normalized(kind, source):
    """@brief Preserve original scalar literals. @param kind Exact width. @param source Native normalized text. @return Exact scalar."""
    if source is None:
        return None
    if kind == 'string':
        return source
    if kind == 'bool':
        return source.lower() in ('true', '1')
    if kind.startswith(('int', 'uint')):
        return int(source)
    if kind.startswith('float'):
        value = float(source)
        return struct.unpack('<f', struct.pack('<f', value))[0] if kind == 'float32' else value
    return ast.literal_eval(source)


def js_literal(value):
    """@brief Render exact source literals. @param value Generator-owned value. @return Genuine ECMAScript literal."""
    if isinstance(value, dict):
        return '{' + ', '.join(json.dumps(key) + ': ' + js_literal(item) for key, item in value.items()) + '}'
    if isinstance(value, list):
        return '[' + ', '.join(js_literal(item) for item in value) + ']'
    if isinstance(value, tuple):
        return str(value[0]) + 'n'
    return json.dumps(value, ensure_ascii=False, allow_nan=False)


def main():
    """@brief Author complete catalog sources without executing any application language."""
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--sdk', type=Path, required=True)
    parser.add_argument('--platform', required=True)
    parser.add_argument('--ir', type=Path, required=True)
    args = parser.parse_args()
    sdk = args.sdk.resolve(strict=True)
    platform = args.platform
    if not platform.replace('_', '').isalnum():
        raise ValueError('A public platform identifier is required')
    ir = json.loads(args.ir.read_text())
    for family in ir['families']:
        backend = family['backend']
        symbols = {row['type']: row['symbol'] for row in family['records']}
        interfaces = {}
        for row in family['interfaces']:
            interfaces[row['name']] = dict(kind=row['kind'], native_identity=row['identity'], codec_identity=row['codec_identity'],
                registered=row['registered'], components={role: symbols[record['name']] for role, record in row['components'].items()})
        for language in ('py', 'js'):
            directory = sdk / f'include/platform/{platform}/{language}/ros{backend}'
            directory.mkdir(parents=True, exist_ok=True)
            if language == 'py':
                lines = ['"""@file records.py', f'@brief Complete original {platform} ROS {backend} values, codecs and interface catalog.',
                    f'@details Preserve all {family["record_count"]} records and {family["interface_count"]} interfaces.',
                    'Absent native identities remain None. Constructing values grants no authority.', '"""',
                    'from ros.py.wire import Record, Registry', '', 'REGISTRY = Registry()', '']
            else:
                lines = ['/**', ' * @file records.mjs', f' * @brief Complete original {platform} ROS {backend} values, codecs and interface catalog.',
                    f' * @details Preserve all {family["record_count"]} records and {family["interface_count"]} interfaces.',
                    ' * Absent native identities remain null; values grant no ROS authority.', ' */',
                    'import {Record, Registry} from "ros/js/wire";', '', 'export const REGISTRY = new Registry();', '']
            for row in family['records']:
                schema = {key: row[key] for key in ('type', 'native_identity', 'codec_identity', 'minimum', 'maximum', 'semantics')}
                schema['fields'] = []
                for field in row['fields']:
                    value = dict(field)
                    value['default'] = normalized(field['type'], field['native_default'])
                    if language == 'js' and field['type'] in ('int64', 'uint64') and value['default'] is not None:
                        value['default'] = (value['default'],)
                    schema['fields'].append(value)
                symbol = row['symbol']
                if language == 'py':
                    lines += [f'class {symbol}(Record):', '    """@brief Complete ' + row['type'] + ' value.',
                        f'    @details All {len(row["fields"])} fields and {len(row["constants"])} constants are preserved.',
                        f'    Canonical extent {row["minimum"]}..{row["maximum"]} bytes; ordinary values own no ROS handle.', '    """']
                    for field in row['fields']:
                        lines += ['    # @brief Original ' + row['type'] + '.' + field['name'] + ' field.',
                            '    # @details Type ' + field['type'] + '; shape ' + (field['array'] or 'scalar') + f'; count/bound {field["count"]}; UTF-8/raw byte bound {field["string_bound"]}.']
                    lines.append('    __slots__ = ' + repr(tuple(field['name'] for field in row['fields'])))
                    text = pprint.pformat(schema, width=100, sort_dicts=False)
                    lines.append('    SCHEMA = ' + text.replace('\n', '\n    '))
                    for constant in row['constants']:
                        lines += ['    # @brief Original ' + row['type'] + '.' + constant['name'] + ' constant; no instance bytes.',
                            '    ' + constant['name'] + ' = ' + repr(normalized(constant['type'], constant['value']))]
                    lines += ['', 'REGISTRY.add(' + symbol + ')', '', '']
                else:
                    lines += ['/**', ' * @brief Complete ' + row['type'] + ' value.',
                        f' * @details All {len(row["fields"])} fields and {len(row["constants"])} constants; extent {row["minimum"]}..{row["maximum"]} bytes.', ' */',
                        'export class ' + symbol + ' extends Record', '{']
                    for field in row['fields']:
                        lines += ['    /** @brief Original ' + row['type'] + '.' + field['name'] + ' field.',
                            '     * @details Type ' + field['type'] + '; shape ' + (field['array'] or 'scalar') + f'; count/bound {field["count"]}; text bound {field["string_bound"]} bytes. */']
                    lines.append('    static schema = ' + js_literal(schema) + ';')
                    for constant in row['constants']:
                        value = normalized(constant['type'], constant['value'])
                        if constant['type'] in ('uint64', 'int64'):
                            value = (value,)
                        lines += ['    /** @brief Original ' + row['type'] + '.' + constant['name'] + ' constant; no instance bytes. */',
                            '    static ' + constant['name'] + ' = ' + js_literal(value) + ';']
                    lines += ['}', 'REGISTRY.add(' + symbol + ');', '']
            if language == 'py':
                lines += ['# @brief Complete interface names, component roles and original identities.',
                    'INTERFACES = ' + pprint.pformat(interfaces, width=100, sort_dicts=False), '']
                (directory / 'records.py').write_text('\n'.join(lines))
            else:
                lines += ['/** @brief Complete original interface names, component roles and identities. */',
                    'export const INTERFACES = ' + js_literal(interfaces) + ';', '']
                (directory / 'records.mjs').write_text('\n'.join(lines))


if __name__ == '__main__':
    main()
