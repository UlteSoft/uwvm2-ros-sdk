#!/usr/bin/env python3
"""Generate one interpreter dispatcher from the canonical shared ROS ABI file.

The public C import headers supply all actual prototypes/import attributes.
This emitter does not maintain a second ABI description or invent signatures.
"""
from pathlib import Path
import argparse
import hashlib
import json

KINDS = {'version': 4, 'open': 2, 'handle': 0, 'write': 0, 'poll': 1,
    'watch': 0, 'ready': 3, 'submit': 2, 'rpc': 1}


def render(descriptor, source_sha256):
    """Render complete original imports; unknown forms/arguments fail authoring."""
    assert descriptor['abi_version'] == 1 and descriptor['schema_version'] == 1
    memory = descriptor['memory_contract']
    lines = ['/**', ' * @file abi_dispatch.h',
        ' * @brief Dispatch every canonical ROS ABI v1 operation for real language VMs.',
        ' * @details Generated only from share/abi/abi-v1.json; public C headers',
        ' * supply the actual import prototypes. No permission, retry or codec is',
        ' * implemented here. Language adapters root all storage before entry.',
        ' * Canonical SHA256: ' + source_sha256, ' */',
        '#ifndef UWVM_INTERPRETER_ABI_DISPATCH_H', '#define UWVM_INTERPRETER_ABI_DISPATCH_H',
        '#include <stdint.h>', '#include <stddef.h>', '#include <string.h>',
        '#ifndef ROSWASM_BACKEND', '#define ROSWASM_BACKEND 2', '#endif',
        '#if ROSWASM_BACKEND == 1', '#include <platform/ros1/c/roswasm/detail/ros1/abi.h>',
        '#elif ROSWASM_BACKEND == 2', '#include <platform/ros2/c/roswasm/detail/ros2/abi.h>',
        '#else', '#error "Select exactly one ROSWASM_BACKEND, 1 or 2"', '#endif',
        '#define UWVM_ROS_MAX_INPUT ' + str(memory['maximum_request_data_bytes']) + 'u',
        '#define UWVM_ROS_MAX_OUTPUT ' + str(memory['maximum_IPC_payload_bytes']) + 'u', '',
        '/**', ' * @brief Borrow rooted input/output storage for one synchronous import.',
        ' * @details Offsets are unsigned i64, zero-extended from uintptr_t on',
        ' * memory32. Scalar IDs never pass through floating-point conversion.',
        ' * kind: 0 no output, 1 length slot, 2 handle/ID, 3 fixed ready32,',
        ' * 4 ABI version. A returned ID is not a capability owner.', ' */',
        'struct uwvm_ros_frame', '{',
        '    uint64_t handle, other, correlation, slot;',
        '    unsigned char const* input;', '    unsigned char* output;',
        '    uint64_t input_size, capacity;', '    uint32_t code;',
        '    unsigned kind, opens_owner, protocol, entered;', '};', '',
        '/**', ' * @brief Validate unused arguments and bounded storage before an effect.',
        ' * @param frame Caller-rooted complete arguments and mutable outcome.',
        ' * @param form Canonical form selected from the immutable operation name.',
        ' * @return One on valid arguments; zero without issuing any ROS import.', ' */',
        'static inline int uwvm_ros_arguments(struct uwvm_ros_frame const* frame, unsigned form)', '{',
        '    if (frame->input_size > UWVM_ROS_MAX_INPUT || frame->capacity > UWVM_ROS_MAX_OUTPUT ||',
        '        (frame->input_size != 0 && frame->input == NULL) || (frame->capacity != 0 && frame->output == NULL))', '    {', '        return 0;', '    }',
        '    if (form != 6 && frame->correlation != 0)', '    {', '        return 0;', '    }',
        '    if (form != 6 && form != 8 && frame->other != 0)', '    {', '        return 0;', '    }',
        '    if (form == 1)', '    {',
        '        return frame->handle == 0 && frame->input_size == 0 && frame->capacity == 0;', '    }',
        '    if (form == 2)', '    {',
        '        return frame->handle == 0 && frame->input_size > 0 && frame->input_size <= 255 && frame->capacity == 0;', '    }',
        '    if (form == 3 || form == 6)', '    {',
        '        return frame->input_size == 0 && frame->capacity == 0;', '    }',
        '    if (form == 4 || form == 8)', '    {', '        return frame->capacity == 0;', '    }',
        '    if (form == 5)', '    {', '        return frame->input_size == 0;', '    }',
        '    if (form == 7)', '    {', '        return frame->input_size == 0 && frame->capacity == 32;', '    }',
        '    return form == 9;', '}', '',
        '/**', ' * @brief Enter exactly one original import; no automatic retry occurs.',
        ' * @param frame Rooted input/output and exact owner/other/correlation words.',
        ' * @param name Checked NUL-terminated canonical operation name.',
        ' * @return Original errno, or local 22 on invalid arguments/protocol.',
        ' * @details Error90 length is meaningful only after UINT64_MAX changes.',
        ' * Fixed event_ready data is exactly32 bytes and has no length slot.',
        ' * Native effects can persist after timeout/disconnect; never replay here.', ' */',
        'static inline uint32_t uwvm_ros_dispatch(struct uwvm_ros_frame* frame, char const* name)', '{',
        '    frame->code = 22;', '    frame->kind = 0;', '    frame->opens_owner = 0;',
        '    frame->protocol = 0;', '    frame->entered = 0;', '    frame->slot = UINT64_MAX;']
    form_numbers = dict(version=1, open=2, handle=3, write=4, poll=5, watch=6, ready=7, submit=8, rpc=9)
    for backend, count in ((1, 38), (2, 43)):
        module = descriptor['modules']['uwvm_ros' + str(backend) + '_v1']
        assert module['function_count'] == len(module['functions']) == count
        lines += [('#if' if backend == 1 else '#elif') + ' ROSWASM_BACKEND == ' + str(backend)]
        for index, function in enumerate(module['functions']):
            form = function['form']
            assert form in KINDS and function['results'] == ['i32']
            name = function['name']
            args = {'memory': '0', 'handle': 'frame->handle',
                'observer_handle': 'frame->other' if form == 'submit' else 'frame->handle',
                'source_handle': 'frame->other' if form == 'watch' else 'frame->handle',
                'correlation': 'frame->correlation',
                'alias_offset': 'uwvm_ros_address(frame->input)', 'alias_length': 'frame->input_size',
                'handle_out_offset': 'uwvm_ros_address(&frame->slot)',
                'request_id_out_offset': 'uwvm_ros_address(&frame->slot)',
                'payload_offset': 'uwvm_ros_address(frame->input)', 'payload_length': 'frame->input_size',
                'request_offset': 'uwvm_ros_address(frame->input)', 'request_length': 'frame->input_size',
                'output_offset': 'uwvm_ros_address(frame->output)', 'response_offset': 'uwvm_ros_address(frame->output)',
                'capacity': 'frame->capacity', 'length_out_offset': 'uwvm_ros_address(&frame->slot)'}
            for param in function['params']:
                assert param['name'] in args
                assert param['type'] == ('i32' if param['name'] == 'memory' else 'i64')
            expression = 'uwvm_ros' + str(backend) + '_' + name
            arguments = [args[param['name']] for param in function['params']]
            lines += ['    ' + ('if' if index == 0 else 'else if') + ' (strcmp(name, "' + name + '") == 0)',
                '    {', '        frame->kind = ' + str(KINDS[form]) + ';',
                '        frame->opens_owner = ' + ('1' if form == 'open' else '0') + ';',
                '        if (!uwvm_ros_arguments(frame, ' + str(form_numbers[form]) + '))',
                '        {', '            return 22;', '        }']
            if form in ('open', 'submit', 'version'):
                lines += ['        frame->slot = 0;']
            lines += ['        frame->entered = 1;']
            assignment = 'frame->slot = ' if form == 'version' else 'frame->code = '
            line = '        ' + assignment + expression + '(' + ', '.join(arguments) + ');'
            if len(line) <= 120:
                lines += [line]
            elif len('            ' + ', '.join(arguments) + ');') <= 120:
                lines += ['        ' + assignment + expression + '(',
                    '            ' + ', '.join(arguments) + ');']
            else:
                prefix = '        ' + assignment + expression + '('
                lines += [prefix + arguments[0] + ',']
                lines += [' ' * len(prefix) + argument + (',' if n + 1 < len(arguments) else ');')
                    for n, argument in enumerate(arguments) if n > 0]
            if form == 'version':
                lines += ['        frame->code = 0;']
            lines += ['    }']
    lines += ['#endif', '    if (frame->code == 0 && ((frame->kind == 1 && (frame->slot == UINT64_MAX || frame->slot > frame->capacity)) ||',
        '                             (frame->kind == 2 && frame->slot == 0)))', '    {',
        '        frame->protocol = 1;', '        return 22;', '    }', '    return frame->code;', '}', '',
        '/** @brief Return only a complete initialized success prefix. */',
        'static inline size_t uwvm_ros_data_size(struct uwvm_ros_frame const* frame)', '{',
        '    if (frame->code != 0 || frame->protocol)', '    {', '        return 0;', '    }',
        '    return frame->kind == 1 ? (size_t)frame->slot : frame->kind == 3 ? 32u : 0u;', '}', '',
        '/** @brief Distinguish an observed length slot from an untouched sentinel. */',
        'static inline int uwvm_ros_has_length(struct uwvm_ros_frame const* frame)', '{',
        '    return frame->kind == 1 && frame->slot != UINT64_MAX && !frame->protocol && (frame->code == 0 || frame->code == 90);', '}', '',
        '/** @brief Identify an exact successful handle/ID/version word. */',
        'static inline int uwvm_ros_has_value(struct uwvm_ros_frame const* frame)', '{',
        '    return frame->code == 0 && !frame->protocol && (frame->kind == 2 || frame->kind == 4);',
        '}', '#endif', '']
    return '\n'.join(lines)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--manifest', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    raw = args.manifest.read_bytes()
    args.output.write_text(render(json.loads(raw), hashlib.sha256(raw).hexdigest()))


if __name__ == '__main__':
    main()
