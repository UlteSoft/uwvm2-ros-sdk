//! @file main.zig
//! @brief Exercise complete original lifecycle_msgs/srv/ChangeState_Response values through genuine Zig compilation.
const std = @import("std");
const records = @import("kuka");
pub fn main() !void {
    var arena = std.heap.ArenaAllocator.init(std.heap.page_allocator);
    defer arena.deinit();
    const value: records.Ros2Lifecycle_msgsSrvChangeState_Response = .{};
    var buffer: [1]u8 = undefined;
    const wire = try value.encode(&buffer);
    const decoded = try records.Ros2Lifecycle_msgsSrvChangeState_Response.decode(wire, arena.allocator());
    var again_buffer: [1]u8 = undefined;
    const again = try decoded.encode(&again_buffer);
    if (!std.mem.eql(u8, wire, again)) return error.ChangedRecord;
    try std.io.getStdOut().writer().print("{{\"type\":\"lifecycle_msgs/srv/ChangeState_Response\",\"bytes\":{d}}}\n", .{wire.len});
}
