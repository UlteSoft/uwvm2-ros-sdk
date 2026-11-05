//! @file main.zig
//! @brief Exercise complete original urinterfaces/msg/RobotMode values through genuine Zig compilation.
const std = @import("std");
const records = @import("universal_robots");
fn run() !void {
    var arena = std.heap.ArenaAllocator.init(std.heap.page_allocator);
    defer arena.deinit();
    const value: records.Ros2UrinterfacesMsgRobotMode = .{};
    var buffer: [141]u8 = undefined;
    const wire = try value.encode(&buffer);
    const decoded = try records.Ros2UrinterfacesMsgRobotMode.decode(wire, arena.allocator());
    var again_buffer: [141]u8 = undefined;
    const again = try decoded.encode(&again_buffer);
    if (!std.mem.eql(u8, wire, again)) return error.ChangedRecord;
    try std.io.getStdOut().writer().print("{{\"type\":\"urinterfaces/msg/RobotMode\",\"bytes\":{d}}}\n", .{wire.len});
}

/// Execute the genuine Zig command from the shared WASI startup bridge.
export fn nl_entry() u32 {
    run() catch return 22;
    return 0;
}
