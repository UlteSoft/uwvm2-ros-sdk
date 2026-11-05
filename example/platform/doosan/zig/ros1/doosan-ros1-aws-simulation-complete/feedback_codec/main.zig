//! @file main.zig
//! @brief Exercise complete original dsr_msgs/LogAlarm values through genuine Zig compilation.
const std = @import("std");
const records = @import("doosan");
fn run() !void {
    var arena = std.heap.ArenaAllocator.init(std.heap.page_allocator);
    defer arena.deinit();
    const value: records.Ros1Dsr_msgsLogAlarm = .{};
    var buffer: [792]u8 = undefined;
    const wire = try value.encode(&buffer);
    const decoded = try records.Ros1Dsr_msgsLogAlarm.decode(wire, arena.allocator());
    var again_buffer: [792]u8 = undefined;
    const again = try decoded.encode(&again_buffer);
    if (!std.mem.eql(u8, wire, again)) return error.ChangedRecord;
    try std.io.getStdOut().writer().print("{{\"type\":\"dsr_msgs/LogAlarm\",\"bytes\":{d}}}\n", .{wire.len});
}

/// Execute the genuine Zig command from the shared WASI startup bridge.
export fn nl_entry() u32 {
    run() catch return 22;
    return 0;
}
