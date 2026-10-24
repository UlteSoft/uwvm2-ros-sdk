//! @file main.zig
//! @brief Exercise complete original urinterfaces/srv/SetAnalogOutput_Response values through genuine Zig compilation.
const std = @import("std");
const records = @import("universal_robots");
pub fn main() !void {
    var arena = std.heap.ArenaAllocator.init(std.heap.page_allocator);
    defer arena.deinit();
    const value: records.Ros2UrinterfacesSrvSetAnalogOutput_Response = .{};
    var buffer: [1]u8 = undefined;
    const wire = try value.encode(&buffer);
    const decoded = try records.Ros2UrinterfacesSrvSetAnalogOutput_Response.decode(wire, arena.allocator());
    var again_buffer: [1]u8 = undefined;
    const again = try decoded.encode(&again_buffer);
    if (!std.mem.eql(u8, wire, again)) return error.ChangedRecord;
    try std.io.getStdOut().writer().print("{{\"type\":\"urinterfaces/srv/SetAnalogOutput_Response\",\"bytes\":{d}}}\n", .{wire.len});
}
