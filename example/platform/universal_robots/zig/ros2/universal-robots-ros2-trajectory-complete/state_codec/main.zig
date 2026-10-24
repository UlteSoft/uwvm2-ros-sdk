//! @file main.zig
//! @brief Exercise complete original ur_msgs/msg/IOStates values through genuine Zig compilation.
const std = @import("std");
const records = @import("universal_robots");
pub fn main() !void {
    var arena = std.heap.ArenaAllocator.init(std.heap.page_allocator);
    defer arena.deinit();
    const value: records.Ros2Ur_msgsMsgIOStates = .{};
    var buffer: [404]u8 = undefined;
    const wire = try value.encode(&buffer);
    const decoded = try records.Ros2Ur_msgsMsgIOStates.decode(wire, arena.allocator());
    var again_buffer: [404]u8 = undefined;
    const again = try decoded.encode(&again_buffer);
    if (!std.mem.eql(u8, wire, again)) return error.ChangedRecord;
    try std.io.getStdOut().writer().print("{{\"type\":\"ur_msgs/msg/IOStates\",\"bytes\":{d}}}\n", .{wire.len});
}
