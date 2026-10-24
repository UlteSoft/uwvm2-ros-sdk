#!/usr/bin/env python3
"""@brief Emit the exact complete static ROS ABI dispatcher for QuickJS/CPython.

@details This build-time emitter consumes the single public ABI descriptor.
Both real language adapters use the same bounded call frame; it contains no
record schema, vendor branch, transport thread, retry or resource grant.
"""

import hashlib
import json
from pathlib import Path
import textwrap


SIGNATURES = {
    "version": [],
    "open": ["i32", "i64", "i64", "i64"],
    "handle": ["i64"],
    "write": ["i64", "i32", "i64", "i64"],
    "poll": ["i64", "i32", "i64", "i64", "i64"],
    "watch": ["i64", "i64", "i64"],
    "ready": ["i64", "i32", "i64"],
    "submit": ["i64", "i64", "i32", "i64", "i64", "i64"],
    "rpc": ["i64", "i32", "i64", "i64", "i64", "i64", "i64"],
}

FORMS = {
    "version": ("", 4, "value->input_size == 0 && value->capacity == 0"),
    "open": ("0,uwvm_address(value->input),value->input_size,uwvm_address(&value->slot)", 2,
             "value->input_size >= 1 && value->input_size <= 255 && value->capacity == 0 && value->handle == 0"),
    "handle": ("value->handle", 0, "value->input_size == 0 && value->capacity == 0"),
    "write": ("value->handle,0,uwvm_address(value->input),value->input_size", 0, "value->capacity == 0"),
    "poll": ("value->handle,0,uwvm_address(value->output),value->capacity,uwvm_address(&value->slot)", 1,
             "value->input_size == 0"),
    "watch": ("value->handle,value->other,value->correlation", 0,
              "value->input_size == 0 && value->capacity == 0"),
    "ready": ("value->handle,0,uwvm_address(value->output)", 3,
              "value->input_size == 0 && value->capacity == 32"),
    "submit": ("value->handle,value->other,0,uwvm_address(value->input),value->input_size,uwvm_address(&value->slot)", 2,
               "value->capacity == 0"),
    "rpc": ("value->handle,0,uwvm_address(value->input),value->input_size,uwvm_address(value->output),"
            "value->capacity,uwvm_address(&value->slot)", 1, "1"),
}


def emit(sdk, backend, directory):
    """@brief Write one complete backend's import declarations and dispatch source.

    @param sdk Installed source SDK containing the authoritative ABI descriptor.
    @param backend Exact ros1 or ros2 selection; namespaces have 38/43 functions.
    @param directory Fresh private build directory, outside immutable inputs.
    @return Portable input/product identities and the complete typed import names.
    @details Unknown forms, scalar signatures, counts or identifiers refuse before
    compilation. Every dispatcher branch invokes the actual declared Wasm import.
    """
    descriptor = Path(sdk) / "share/abi/abi-v1.json"
    raw = descriptor.read_bytes()
    spec = json.loads(raw)
    module = "uwvm_" + backend + "_v1"
    expected = {"ros1": 38, "ros2": 43}[backend]
    functions = spec["modules"][module]["functions"]
    if spec["abi_version"] != 1 or len(functions) != expected or spec["modules"][module]["function_count"] != expected:
        raise ValueError("Review a changed complete ROS ABI descriptor")
    lines = ["/** @brief Complete source-generated static ROS ABI v1 imports. */", "#pragma once"]
    calls = []
    names = set()
    for index, function in enumerate(functions):
        name, form = function["name"], function["form"]
        if (not name.isascii() or not name.isidentifier() or name in names or form not in FORMS or function["results"] != ["i32"]
                or [parameter["type"] for parameter in function["params"]] != SIGNATURES[form]):
            raise ValueError("A complete new import form needs source review")
        names.add(name)
        if any(not parameter["name"].isascii() or not parameter["name"].isidentifier()
               for parameter in function["params"]):
            raise ValueError("Original scalar parameter names must be portable C identifiers")
        parameters = ", ".join(("uint32_t" if parameter["type"] == "i32" else "uint64_t")
                               + " " + parameter["name"] for parameter in function["params"]) or "void"
        description = function["description"].replace("*/", "* /").replace("\n", " ")
        lines += ["/**"]
        lines += [" * " + line for line in textwrap.wrap("@brief " + name + ": " + description, width=112)]
        lines += [" * @param " + parameter["name"] + " Exact original " + parameter["type"]
                  + " scalar; guest offsets and lengths refer to pinned frame storage."
                  for parameter in function["params"]]
        lines += [' * @return ' + function["return_semantics"] + '; host status is retained without retry.',
                  ' * @details Borrowed frame storage; original ABI errors and explicit permissions apply.',
                  ' */', '__attribute__((import_module("' + module + '"), import_name("' + name + '")))',
                  'uint32_t uwvm_raw_' + name + '(' + parameters + ');']
        arguments, kind, condition = FORMS[form]
        calls += ['    ' + ('if' if index == 0 else 'else if') + ' (strcmp(name, "' + name + '") == 0)',
                  '    {', '        value->kind = ' + str(kind) + ';', '        if (!(' + condition + '))',
                  '        {', '            return;', '        }']
        if kind == 2:
            calls += ['        value->slot = 0;']
        calls += ['        ' + ('value->slot' if form == 'version' else 'value->code')
                  + ' = uwvm_raw_' + name + '(' + arguments + ');']
        if form == 'version':
            calls += ['        value->code = 0;']
        calls += ['    }']
    lines += ['/** @brief Enter exactly one named original import with caller-owned frame storage.',
              ' * @param name NUL-free exact operation name, retained through this synchronous call.',
              ' * @param value Initialized, exclusive bounded frame; no retry or grant is introduced.',
              ' * @details Unknown names or invalid form extents preserve local status22. */',
              'static inline void uwvm_dispatch(char const* name, uwvm_call_frame* value)', '{', *calls, '}']
    directory = Path(directory)
    directory.mkdir(parents=True)
    output = directory / "uwvm_shared_abi.h"
    body = "\n".join(lines) + "\n"
    output.write_text(body)
    return {"backend": backend, "functions": expected, "abi_sha256": hashlib.sha256(raw).hexdigest(),
            "generator_sha256": hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
            "generated_header_sha256": hashlib.sha256(body.encode()).hexdigest(), "names": sorted(names)}
