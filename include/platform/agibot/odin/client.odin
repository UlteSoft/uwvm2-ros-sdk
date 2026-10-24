// @file client.odin
// @brief Provide the complete agibot client.odin source contract.
// @details Complete original fields, scalar widths, canonical quotas and interface roles are retained. Local
// encoding grants no ROS authority; invalid or partial wire is rejected before a value is exposed.
// SPDX-License-Identifier: Apache-2.0
// Complete original AimDK observation API inside one wasm32-wasip1 command.
// The C FFI implementation is statically linked into the same guest memory.
// The public API is contextless and allocation-free; it needs no Odin OS
// runtime initialization. All original int64/uint64 JSON fields are exact decimal strings; no host
// process executes this SDK. Successful output belongs to the caller's buffer.
package agibot

// Observation_Result owns only metadata. Buffers and capability aliases are
// borrowed until the synchronous call returns; no pointer is retained.
Observation_Result :: struct {
    error_code: u32,    // Original transport, bounded codec or serialization errno.
    cleanup_error: u32, // Independent close status; the owner is retired once.
    written: u32,       // Initialized UTF-8 bytes in the caller's output slice.
    vendor_code: i64,   // Original service response code; zero for a state sample.
}

foreign {
    @(link_name="agibot_json_observe")
    raw_observe :: proc "c"(operation: u32, capability_alias: rawptr, alias_bytes: u32,
        timeout_ms: u32, output: rawptr, capacity: u32, written, cleanup: ^u32,
        vendor_code: ^i64) -> u32 ---
    // These helpers transfer no ownership and propagate guest I/O failures.
    @(link_name="agibot_guest_write_json")
    write_json :: proc "c"(bytes: rawptr, length: u32) -> u32 ---
    @(link_name="agibot_guest_usage")
    usage :: proc "c"() -> u32 ---
    @(link_name="agibot_guest_diagnostic")
    diagnostic :: proc "c"(error, cleanup: u32) -> u32 ---
}

@(private)
observe :: proc "contextless"(operation: u32, capability_alias: string, output: []u8,
                timeout_ms: u32) -> (result: Observation_Result) {
    if len(capability_alias) == 0 || len(capability_alias) > 255 ||
       len(output) == 0 || len(output) > 65536 {
        result.error_code = 22
        return
    }
    result.error_code = raw_observe(operation, raw_data(capability_alias),
        u32(len(capability_alias)), timeout_ms, raw_data(output), u32(len(output)),
        &result.written, &result.cleanup_error, &result.vendor_code)
    return
}

// query_mode issues one original GetMcAction request with no service replay.
// capability_alias is an exact granted UTF-8 alias, 1..255 bytes. output is a
// writable 1..65536-byte span, disjoint from the alias. On success, decode all
// output[:written] bytes as JSON and separately inspect vendor_code.
query_mode :: proc "contextless"(capability_alias: string, output: []u8) -> Observation_Result {
    return observe(1, capability_alias, output, 3000)
}

// next_motion_state receives one full original McCommonState sample.
// timeout_ms is 1..30000 milliseconds, measured by the explicitly granted WASI
// monotonic clock. Error 110 means timeout. Original timestamps, frames and
// vendor units stay unchanged. The subscription retires on every return path.
next_motion_state :: proc "contextless"(capability_alias: string, output: []u8,
                         timeout_ms: u32 = 3000) -> Observation_Result {
    return observe(2, capability_alias, output, timeout_ms)
}

// list_resources returns all original X2 Ultra resource and nested file fields.
// This reads metadata and never starts playback. Official availability excludes
// EDU hardware. Independent calls must use disjoint buffers; no global mutable
// SDK state or live capability survives this synchronous function.
list_resources :: proc "contextless"(capability_alias: string, output: []u8) -> Observation_Result {
    return observe(3, capability_alias, output, 3000)
}
