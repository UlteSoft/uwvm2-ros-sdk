//! @file main.zig
//! @brief Exercise complete original kuka_driver_interfaces/msg/KssStatus values through genuine Zig compilation.
const std = @import("std");
const records = @import("kuka");
pub fn main() !void {
    var arena = std.heap.ArenaAllocator.init(std.heap.page_allocator);
    defer arena.deinit();
    const value: records.Ros2Kuka_driver_interfacesMsgKssStatus = .{};
    var buffer: [9]u8 = undefined;
    const wire = try value.encode(&buffer);
    const decoded = try records.Ros2Kuka_driver_interfacesMsgKssStatus.decode(wire, arena.allocator());
    var again_buffer: [9]u8 = undefined;
    const again = try decoded.encode(&again_buffer);
    if (!std.mem.eql(u8, wire, again)) return error.ChangedRecord;
    try std.io.getStdOut().writer().print("{{\"type\":\"kuka_driver_interfaces/msg/KssStatus\",\"bytes\":{d}}}\n", .{wire.len});
}
