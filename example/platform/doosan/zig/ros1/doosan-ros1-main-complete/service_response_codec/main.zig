//! @file main.zig
//! @brief Exercise complete original dsr_msgs/GetRobotStateResponse values through genuine Zig compilation.
const std = @import("std");
const records = @import("doosan");
pub fn main() !void {
    var arena = std.heap.ArenaAllocator.init(std.heap.page_allocator);
    defer arena.deinit();
    const value: records.Ros1Dsr_msgsGetRobotStateResponse = .{};
    var buffer: [2]u8 = undefined;
    const wire = try value.encode(&buffer);
    const decoded = try records.Ros1Dsr_msgsGetRobotStateResponse.decode(wire, arena.allocator());
    var again_buffer: [2]u8 = undefined;
    const again = try decoded.encode(&again_buffer);
    if (!std.mem.eql(u8, wire, again)) return error.ChangedRecord;
    try std.io.getStdOut().writer().print("{{\"type\":\"dsr_msgs/GetRobotStateResponse\",\"bytes\":{d}}}\n", .{wire.len});
}
