//! @file main.zig
//! @brief Exercise complete original dsr_msgs2/msg/RobotState values through genuine Zig compilation.
const std = @import("std");
const records = @import("doosan");
pub fn main() !void {
    var arena = std.heap.ArenaAllocator.init(std.heap.page_allocator);
    defer arena.deinit();
    const value: records.Ros2Dsr_msgs2MsgRobotState = .{};
    var buffer: [17004]u8 = undefined;
    const wire = try value.encode(&buffer);
    const decoded = try records.Ros2Dsr_msgs2MsgRobotState.decode(wire, arena.allocator());
    var again_buffer: [17004]u8 = undefined;
    const again = try decoded.encode(&again_buffer);
    if (!std.mem.eql(u8, wire, again)) return error.ChangedRecord;
    try std.io.getStdOut().writer().print("{{\"type\":\"dsr_msgs2/msg/RobotState\",\"bytes\":{d}}}\n", .{wire.len});
}
