//! @file main.zig
//! @brief Exercise complete original urinterfaces/action/SetMode_Feedback values through genuine Zig compilation.
const std = @import("std");
const records = @import("universal_robots");
fn run() !void {
    var arena = std.heap.ArenaAllocator.init(std.heap.page_allocator);
    defer arena.deinit();
    const value: records.Ros2UrinterfacesActionSetMode_Feedback = .{};
    var buffer: [2]u8 = undefined;
    const wire = try value.encode(&buffer);
    const decoded = try records.Ros2UrinterfacesActionSetMode_Feedback.decode(wire, arena.allocator());
    var again_buffer: [2]u8 = undefined;
    const again = try decoded.encode(&again_buffer);
    if (!std.mem.eql(u8, wire, again)) return error.ChangedRecord;
    try std.io.getStdOut().writer().print("{{\"type\":\"urinterfaces/action/SetMode_Feedback\",\"bytes\":{d}}}\n", .{wire.len});
}

/// Execute the genuine Zig command from the shared WASI startup bridge.
export fn nl_entry() u32 {
    run() catch return 22;
    return 0;
}
