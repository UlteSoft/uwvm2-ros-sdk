//! @file main.zig
//! @brief Exercise complete original control_msgs/FollowJointTrajectoryFeedback values through genuine Zig compilation.
const std = @import("std");
const records = @import("universal_robots");
pub fn main() !void {
    var arena = std.heap.ArenaAllocator.init(std.heap.page_allocator);
    defer arena.deinit();
    const value: records.Ros1Control_msgsFollowJointTrajectoryFeedback = .{};
    var buffer: [2356]u8 = undefined;
    const wire = try value.encode(&buffer);
    const decoded = try records.Ros1Control_msgsFollowJointTrajectoryFeedback.decode(wire, arena.allocator());
    var again_buffer: [2356]u8 = undefined;
    const again = try decoded.encode(&again_buffer);
    if (!std.mem.eql(u8, wire, again)) return error.ChangedRecord;
    try std.io.getStdOut().writer().print("{{\"type\":\"control_msgs/FollowJointTrajectoryFeedback\",\"bytes\":{d}}}\n", .{wire.len});
}
