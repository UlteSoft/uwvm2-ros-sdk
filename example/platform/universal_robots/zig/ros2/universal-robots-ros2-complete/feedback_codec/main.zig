//! @file main.zig
//! @brief Exercise complete original ur_msgs/action/FollowJointTrajectoryUntil_Feedback values through genuine Zig compilation.
const std = @import("std");
const records = @import("universal_robots");
pub fn main() !void {
    var arena = std.heap.ArenaAllocator.init(std.heap.page_allocator);
    defer arena.deinit();
    const value: records.Ros2Ur_msgsActionFollowJointTrajectoryUntil_Feedback = .{};
    var buffer: [2352]u8 = undefined;
    const wire = try value.encode(&buffer);
    const decoded = try records.Ros2Ur_msgsActionFollowJointTrajectoryUntil_Feedback.decode(wire, arena.allocator());
    var again_buffer: [2352]u8 = undefined;
    const again = try decoded.encode(&again_buffer);
    if (!std.mem.eql(u8, wire, again)) return error.ChangedRecord;
    try std.io.getStdOut().writer().print("{{\"type\":\"ur_msgs/action/FollowJointTrajectoryUntil_Feedback\",\"bytes\":{d}}}\n", .{wire.len});
}
