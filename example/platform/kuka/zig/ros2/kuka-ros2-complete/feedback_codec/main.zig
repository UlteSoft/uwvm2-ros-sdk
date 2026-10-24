//! @file main.zig
//! @brief Exercise complete original control_msgs/action/FollowJointTrajectory_Feedback values through genuine Zig compilation.
const std = @import("std");
const records = @import("kuka");
pub fn main() !void {
    var arena = std.heap.ArenaAllocator.init(std.heap.page_allocator);
    defer arena.deinit();
    const value: records.Ros2Control_msgsActionFollowJointTrajectory_Feedback = .{};
    var buffer: [4128]u8 = undefined;
    const wire = try value.encode(&buffer);
    const decoded = try records.Ros2Control_msgsActionFollowJointTrajectory_Feedback.decode(wire, arena.allocator());
    var again_buffer: [4128]u8 = undefined;
    const again = try decoded.encode(&again_buffer);
    if (!std.mem.eql(u8, wire, again)) return error.ChangedRecord;
    try std.io.getStdOut().writer().print("{{\"type\":\"control_msgs/action/FollowJointTrajectory_Feedback\",\"bytes\":{d}}}\n", .{wire.len});
}
