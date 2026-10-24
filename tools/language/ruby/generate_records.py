#!/usr/bin/env python3
"""@file generate_records.py
@brief Author complete original vendor Ruby records from source-pinned canonical IR.
@details Preserve every field, constant, bound, default and interface component.
The producer writes genuine namespace modules; no generated class acquires ROS.
"""
import argparse
import ast
import json
from pathlib import Path
import struct
import sys

sys.path.insert(0, str(Path(__file__).resolve().parents[2] / "shared"))
from backend_layout import profile_path


def normalized(kind, source):
    """@brief Preserve one original literal.
    @param kind Full scalar type.
    @param source Original normalized text.
    @return Exact authoring value.
    """
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


def ruby(value, indent=0):
    """@brief Render an exact ordinary Ruby literal without JSON dependency."""
    if value is None:
        return 'nil'
    if value is True:
        return 'true'
    if value is False:
        return 'false'
    if isinstance(value, str):
        return '"' + ''.join('\\%03o' % byte if byte < 32 or byte >= 127 else '\\' + chr(byte)
            if byte in (34, 35, 92) else chr(byte) for byte in value.encode('utf-8')) + '"'
    if isinstance(value, (dict, list)):
        if not value:
            return '{}' if isinstance(value, dict) else '[]'
        padding = ' ' * (indent + 4)
        if isinstance(value, dict):
            entries = [ruby(key) + ' => ' + ruby(item, indent + 4) for key, item in value.items()]
            opening, closing = '{', '}'
        else:
            entries = [ruby(item, indent + 4) for item in value]
            opening, closing = '[', ']'
        return opening + '\n' + ',\n'.join(padding + item for item in entries) + '\n' + ' ' * indent + closing
    return repr(value)


def php(value, indent=0):
    """@brief Render an exact PHP value expression using byte-safe quoted text."""
    if value is None:
        return 'null'
    if value is True:
        return 'true'
    if value is False:
        return 'false'
    if isinstance(value, str):
        return "'" + value.replace('\\', '\\\\').replace("'", "\\'") + "'"
    if isinstance(value, (dict, list)):
        if not value:
            return '[]'
        padding = ' ' * (indent + 4)
        entries = ([php(key) + ' => ' + php(item, indent + 4) for key, item in value.items()]
            if isinstance(value, dict) else [php(item, indent + 4) for item in value])
        return '[\n' + ',\n'.join(padding + item for item in entries) + '\n' + ' ' * indent + ']'
    return repr(value) if value != -2147483648 else '(-2147483647-1)'


class RExpression(str):
    """An internal trusted R expression, never an original unescaped string."""


def r_literal(value, indent=0):
    """Render complete genuine R values, including exact typed 64-bit words."""
    if isinstance(value, RExpression):
        return str(value)
    if value is None:
        return 'NULL'
    if value is True:
        return 'TRUE'
    if value is False:
        return 'FALSE'
    if isinstance(value, str):
        return json.dumps(value, ensure_ascii=False)
    if isinstance(value, (dict, list)):
        if not value:
            return 'list()'
        padding = ' ' * (indent + 4)
        entries = (["`" + key.replace("`", "\\`") + "` = " + r_literal(item, indent + 4)
                    for key, item in value.items()] if isinstance(value, dict)
                   else [r_literal(item, indent + 4) for item in value])
        return 'list(\n' + ',\n'.join(padding + item for item in entries) + '\n' + ' ' * indent + ')'
    return repr(value)


def r_schemas(schemas, records):
    """Keep native int64/uint64 constants and defaults out of R doubles."""
    result = json.loads(json.dumps(schemas))
    for schema, record in zip(result, records):
        for field in schema['fields']:
            if field['type'] in ('int64', 'uint64') and 'default' in field:
                signed = 'TRUE' if field['type'] == 'int64' else 'FALSE'
                field['default'] = RExpression('UwvmRos$from_decimal(' + json.dumps(str(field['default'])) + ', ' + signed + ')')
        for constant in record['constants']:
            if constant['type'] in ('int64', 'uint64'):
                signed = 'TRUE' if constant['type'] == 'int64' else 'FALSE'
                value = str(schema['constants'][constant['name']])
                schema['constants'][constant['name']] = RExpression('UwvmRos$from_decimal(' + json.dumps(value) + ', ' + signed + ')')
    return result


def emit(sdk, ir, platform, namespace):
    """@brief Transform complete captured catalogs into maintained Ruby sources."""
    for family in ir['families']:
        backend = family['backend']
        profile = family['profile']
        profile_namespace = ''.join(word[:1].upper()+word[1:] for word in profile.split('_'))
        symbols = {row['type']: row['symbol'] for row in family['records']}
        minima = {row['type']: row['minimum'] for row in family['records']}
        minima.update(bool=1, string=4, uint8=1, int8=1, uint16=2, int16=2,
            uint32=4, int32=4, uint64=8, int64=8, float32=4, float64=8)
        schemas = []
        for row in family['records']:
            schema = {key: row[key] for key in ('symbol', 'native_identity', 'codec_identity', 'minimum', 'maximum', 'semantics')}
            schema.update(ros_version=backend, native_type=row['type'], constants={
                item['name']: normalized(item['type'], item['value']) for item in row['constants']}, fields=[])
            for original in row['fields']:
                field = dict(original, raw=original['string_encoding'] == 'raw_bytes')
                field['element_minimum'] = minima[original['type']]
                field['type'] = symbols.get(original['type'], original['type'])
                if original['native_default'] is not None:
                    field['default'] = normalized(original['type'], original['native_default'])
                schema['fields'].append(field)
            schemas.append(schema)
        interfaces = {row['name']: dict(kind=row['kind'], native_identity=row['identity'],
            codec_identity=row['codec_identity'], registered=row['registered'],
            components={role: symbols[item['name']] for role, item in row['components'].items()})
            for row in family['interfaces']}
        directory = sdk / f'include/platform/{platform}/ruby/{profile_path(profile)}'
        directory.mkdir(parents=True, exist_ok=True)
        lines = ['# @file records.rb', f'# @brief All {len(schemas)} original vendor ROS {backend} records and {len(interfaces)} interfaces.',
            '# @details Ordinary namespace values retain complete original fields and identities.',
            'module Uwvm', '    module ' + namespace, '        module ' + profile_namespace,
            '            # @brief Complete source-pinned records in original dependency order.',
            '            SCHEMAS = [']
        for schema in schemas:
            lines += ['                # @brief Complete ' + schema['native_type'] + ' descriptor.',
                '                ' + ruby(schema, 16) + ',']
        lines += ['            ].freeze', '            # @brief Build full ordinary Ruby classes with checked canonical codecs.',
            '            RECORDS = Uwvm::RosWasm::Wire.records(SCHEMAS)',
            '            RECORDS.each do |name, klass|',
            '                const_set(name, klass)',
            '            end',
            '            # @brief Every interface, component role and both original identities.',
            '            INTERFACES = ' + ruby(interfaces, 12), '        end', '    end', 'end', '']
        (directory / 'records.rb').write_text('\n'.join(lines))
        directory = sdk / f'include/platform/{platform}/php/{profile_path(profile)}'
        directory.mkdir(parents=True, exist_ok=True)
        php_namespace = 'Uwvm\\' + namespace + '\\' + profile_namespace
        lines = ['<?php', 'declare(strict_types=1);', 'namespace ' + php_namespace + ';',
            '/** @file records.php', f' * @brief All {len(schemas)} complete original vendor ROS {backend} record classes.',
            ' * @details Every native field, bound, default and identity is retained.', ' */',
            'use Uwvm\\RosWasm\\Word;', 'use Uwvm\\RosWasm\\Wire;']
        for original_schema in schemas:
            schema = json.loads(json.dumps(original_schema))
            for field in schema['fields']:
                if field['type'] in ('uint32', 'uint64', 'int64') and 'default' in field:
                    field['default'] = str(field['default'])
            schema['constants'] = {name: str(value) if isinstance(value, int) and not isinstance(value, bool) and not -2147483648 <= value <= 2147483647 else value for name,value in schema['constants'].items()}
            symbol = schema['symbol']
            lines += ['/** @brief Complete ' + schema['native_type'] + ' owning value. */', 'final class ' + symbol, '{',
                '    /** @brief Original full canonical descriptor and identities. */',
                '    public const SCHEMA = ' + php(schema, 4) + ';']
            for field in schema['fields']:
                lines += ['    /** @brief Original ' + field['name'] + ' field; type ' + field['type'] + '. */',
                    '    public mixed $' + field['name'] + ';']
            for name, value in schema['constants'].items():
                lines += ['    /** @brief Original native constant; no instance wire bytes. */',
                    '    public const ' + name + ' = ' + php(value) + ';']
            lines += ['    /**', '     * @brief Initialize complete independent defaults and explicit native fields.',
                '     * @param array $values Exact original field names; unknown names fail.', '     */',
                '    public function __construct(array $values = [])', '    {',
                "        $names = array_column(self::SCHEMA['fields'], 'name');",
                "        if (array_diff(array_keys($values), $names))", '        {',
                "            throw new \\InvalidArgumentException('unknown original field');", '        }']
            for field in schema['fields']:
                kind = field['type']
                if kind in ('uint32', 'uint64', 'int64'):
                    initial = 'Word::fromDecimal(' + php(str(field.get('default', 0))) + ', ' + ('4' if kind == 'uint32' else '8') + ', ' + ('true' if kind == 'int64' else 'false') + ')'
                elif kind == 'bool':
                    initial = php(field.get('default', False))
                elif kind == 'string':
                    initial = php(field.get('default', ''))
                elif kind.startswith(('int', 'uint', 'float')):
                    initial = php(field.get('default', 0))
                else:
                    initial = 'new ' + kind + '()'
                if field['array'] == 'sequence':
                    initial = '[]'
                elif field['array'] == 'array':
                    initial = 'array_map(static fn($index) => ' + initial + ', range(1, ' + str(field['count']) + '))'
                lines += ['        $this->' + field['name'] + ' = array_key_exists(' + php(field['name']) + ', $values)',
                    '            ? $values[' + php(field['name']) + ']', '            : ' + initial + ';']
            lines += ['    }', '', '    /**', '     * @brief Validate and encode every original field.',
                '     * @return string Owned complete canonical bytes.', '     */',
                '    public function encode(): string', '    {',
                '        return Catalog::wire()->encode(' + php(symbol) + ', $this);', '    }', '',
                '    /**', '     * @brief Decode exactly one complete canonical value.',
                '     * @param string $bytes Original complete canonical wire.',
                '     * @return self Fresh complete original record.', '     */',
                '    public static function decode(string $bytes): self', '    {',
                '        return Catalog::wire()->decode(' + php(symbol) + ', $bytes);', '    }', '}', '']
        lines += ['/** @brief Complete original record codecs and interface component roles. */', 'final class Catalog', '{',
            '    /** @brief Complete original interface identities and components. */',
            '    public const INTERFACES = ' + php(interfaces, 4) + ';',
            '    /**', '     * @brief Return the local full-record canonical registry.',
            '     * @return Wire Complete ordinary namespace registry.', '     */',
            '    public static function wire(): Wire', '    {', '        static $wire = null;', '        if ($wire === null)', '        {', '            $wire = new Wire([']
        for schema in schemas:
            symbol = schema['symbol']
            lines += ['                ' + php(symbol) + ' =>', '                    ' + symbol + '::SCHEMA + [',
                "                        'class' => " + symbol + '::class', '                    ],']
        lines += ['            ]);', '        }', '        return $wire;', '    }', '}', '']
        (directory / 'records.php').write_text('\n'.join(lines))
        directory = sdk / f'include/platform/{platform}/r/{profile_path(profile)}'
        directory.mkdir(parents=True, exist_ok=True)
        lines = ['# @file records.R', f'# @brief All {len(schemas)} complete original ROS {backend} vendor values.',
            '# @details The module exposes only an ordinary owned namespace list.',
            'Uwvm' + namespace + profile_namespace + ' <- local({', '    schemas <- ' + r_literal(r_schemas(schemas, family['records']), 4),
            '    list(records = UwvmRos$records(schemas), interfaces = ' + r_literal(interfaces, 4) + ')', '})', '']
        (directory / 'records.R').write_text('\n'.join(lines))



