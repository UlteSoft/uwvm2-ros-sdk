// @file client.zig
// @brief Provide the complete agibot client.zig source contract.
// @details Complete original fields, scalar widths, canonical quotas and interface roles are retained. Local
// encoding grants no ROS authority; invalid or partial wire is rejected before a value is exposed.
// SPDX-License-Identifier: Apache-2.0
//! Zig 0.14 guest API for complete original AimDK observations through C FFI.
//! The shared transport and JSON converter are linked into this Wasm module.
//! Output belongs to the caller; no allocator, borrowed pointer or live ROS
//! owner escapes a call. All JSON int64/uint64 fields remain decimal strings.

extern fn agibot_json_observe(operation: u32, alias: [*]const u8, alias_size: u32,
    timeout_ms: u32, output: [*]u8, capacity: u32, written: *u32,
    cleanup: *u32, vendor_code: *i64) u32;

/// Exact call outcome; bytes beyond written are uninitialized and must not be read.
pub const ObservationResult = struct {
    /// Original ABI/codec/serialization errno, without implicit retries.
    error_code: u32 = 0,
    /// Independent capability-close errno; zero if no owner opened.
    cleanup_error: u32 = 0,
    /// Full UTF-8 JSON length in the supplied output slice; valid on success.
    written: u32 = 0,
    /// Exact original service status; state samples use zero.
    vendor_code: i64 = 0,
};

fn observe(operation: u32, alias: []const u8, output: []u8, timeout_ms: u32) ObservationResult {
    var result: ObservationResult = .{};
    if (alias.len == 0 or alias.len > 255 or output.len == 0 or output.len > 65536) {
        result.error_code = 22;
        return result;
    }
    result.error_code = agibot_json_observe(operation, alias.ptr, @intCast(alias.len),
        timeout_ms, output.ptr, @intCast(output.len), &result.written,
        &result.cleanup_error, &result.vendor_code);
    return result;
}

/// Query GetMcAction once under the service grant's deadline. Borrow alias and
/// output until return. A 65536-byte output fits the profile. Check vendor_code
/// after error_code == 0, and read only output[0..result.written].
pub fn queryMode(alias: []const u8, output: []u8) ObservationResult {
    return observe(1, alias, output, 3000);
}

/// Receive a complete original McCommonState. timeout_ms is 1..30000 monotonic
/// milliseconds and needs explicit clock authority. Original units/frames and
/// retained sample timestamps are preserved. Output remains caller-owned.
pub fn nextMotionState(alias: []const u8, output: []u8, timeout_ms: u32) ObservationResult {
    return observe(2, alias, output, timeout_ms);
}

/// List complete original X2 Ultra resource/version/file records. This call
/// cannot start playback. Inspect both error_code and vendor_code. Independent
/// calls use separate capabilities and may not share writable output storage.
pub fn listResources(alias: []const u8, output: []u8) ObservationResult {
    return observe(3, alias, output, 3000);
}
