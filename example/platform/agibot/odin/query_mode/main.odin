// @file main.odin
// @brief Execute the genuine agibot main application over its explicit SDK imports.
// @details The application owns its values and closes explicitly acquired capabilities. An installed
// compiler/engine and exact native deployment remain separate requirements.
// SPDX-License-Identifier: Apache-2.0
// Read one complete original AimDK observation inside a real Odin Wasm command.
// The shared Clang startup initializes WASI libc and supplies borrowed arguments.
// This command and SDK use no implicit context, allocator or Odin OS globals.
package main

import agibot "agibot:odin"

@(export)
agibot_language_main :: proc "c"(argc: i32, argv: [^]cstring) -> i32 {
    if argc != 2 {
        return i32(agibot.usage())
    }
    alias_bytes := cast([^]u8)argv[1]
    alias_length := 0
    for alias_length < 256 && alias_bytes[alias_length] != 0 {
        alias_length += 1
    }
    if alias_length == 0 || alias_length > 255 {
        return i32(agibot.diagnostic(22, 0))
    }
    capability_alias := string(alias_bytes[:alias_length])
    output: [65536]u8
    result := agibot.query_mode(capability_alias, output[:])
    if result.error_code != 0 {
        return i32(agibot.diagnostic(result.error_code, result.cleanup_error))
    }
    if code := agibot.write_json(raw_data(output[:]), result.written); code != 0 {
        return i32(code)
    }
    if result.vendor_code != 0 {
        return 1
    }
    return 0
}
