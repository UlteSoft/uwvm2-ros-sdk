//! @brief Validate every original field with the genuine Zig codec.
const std = @import("std");
const records = @import("flexiv_records");
pub fn main() !void {
    var input: [2]u8 = undefined;
    var length: usize = 0;
    while (length < input.len) {
        const count = try std.posix.read(0, input[length..]);
        if (count == 0) break;
        length += count;
    }
    var arena = std.heap.ArenaAllocator.init(std.heap.page_allocator);
    defer arena.deinit();
    const value = try records.Ros2Flexiv_msgsMsgMode.decode(input[0..length], arena.allocator());
    var output: [2]u8 = undefined;
    const encoded = try value.encode(output[0..]);
    try std.io.getStdOut().writer().writeAll(encoded);
}
