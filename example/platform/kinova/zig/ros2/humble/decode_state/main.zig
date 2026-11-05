//! @brief Validate every original field with the genuine Zig codec.
const std = @import("std");
const records = @import("kinova_records");
fn command() !void {
    var input: [1405]u8 = undefined;
    var length: usize = 0;
    while (length < input.len) {
        const count = try std.posix.read(0, input[length..]);
        if (count == 0) break;
        length += count;
    }
    var arena = std.heap.ArenaAllocator.init(std.heap.page_allocator);
    defer arena.deinit();
    const value = try records.Ros2Sensor_msgsMsgJointState.decode(input[0..length], arena.allocator());
    var output: [1405]u8 = undefined;
    const encoded = try value.encode(output[0..]);
    try std.io.getStdOut().writer().writeAll(encoded);
}

/// @brief Return a checked codec or I/O error through the shared WASI startup.
export fn nl_entry() u32 {
    command() catch |failure| {
        return switch (failure) {
            error.Invalid => 22,
            error.TooLarge => 90,
            error.OutOfMemory => 12,
            else => 5,
        };
    };
    return 0;
}
