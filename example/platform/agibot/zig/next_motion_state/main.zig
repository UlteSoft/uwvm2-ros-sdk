// @file main.zig
// @brief Execute the genuine agibot main application over its explicit SDK imports.
// @details The application owns its values and closes explicitly acquired capabilities. An installed
// compiler/engine and exact native deployment remain separate requirements.
// SPDX-License-Identifier: Apache-2.0
//! Call the SDK's original AimDK observation inside a wasm32-wasip1 command.
//! Xmake supplies the agibot module and statically links the in-guest bridge.
const std = @import("std");
const agibot = @import("agibot");

pub fn main() !void {
    const allocator = std.heap.page_allocator;
    const arguments = try std.process.argsAlloc(allocator);
    defer std.process.argsFree(allocator, arguments);
    if (arguments.len != 2) {
        try std.io.getStdErr().writer().writeAll("Expected exactly one granted Agibot alias\n");
        std.process.exit(22);
    }
    var output: [65536]u8 = undefined;
    const result = agibot.nextMotionState(arguments[1], &output, 3000);
    if (result.error_code != 0) {
        try std.io.getStdErr().writer().print("Agibot observation failed: {d}; close: {d}\n",
            .{ result.error_code, result.cleanup_error });
        std.process.exit(1);
    }
    try std.io.getStdOut().writer().writeAll(output[0..result.written]);
    try std.io.getStdOut().writer().writeAll("\n");
    if (result.vendor_code != 0) std.process.exit(1);
}
