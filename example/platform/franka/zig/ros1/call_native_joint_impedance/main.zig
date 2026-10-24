//! Call one complete original Franka Service through the public Zig ROS owner.
//! The genuine Zig frontend owns every record, codec and application decision.
const std = @import("std");
const client = @import("rosclient");
const records = @import("franka_records");
const wire = @import("roswire");
extern fn write(fd: c_int, bytes: [*]const u8, size: usize) isize;

/// Write a finite complete diagnostic; short output is an independent error.
fn output(fd: c_int, bytes: []const u8) bool {
    var offset: usize = 0;
    while (offset < bytes.len) {
        const count = write(fd, bytes[offset..].ptr, bytes.len - offset);
        if (count <= 0) return false;
        offset += @intCast(count);
    }
    return true;
}

/// Report every initialized canonical byte without converting any record in C.
fn wireLine(label: []const u8, bytes: []const u8) bool {
    var text: [600]u8 = undefined;
    if (label.len + bytes.len * 2 + 1 > text.len) return false;
    @memcpy(text[0..label.len], label);
    const digits = "0123456789abcdef";
    for (bytes, 0..) |value, index| {
        text[label.len + index * 2] = digits[value >> 4];
        text[label.len + index * 2 + 1] = digits[value & 15];
    }
    const length = label.len + bytes.len * 2;
    text[length] = '\n';
    return output(1, text[0 .. length + 1]);
}

/// Encode all seven values, call once, and decode both complete response fields.
fn call(owner: client.Owner) u32 {
    var request: records.Ros1Franka_msgsSetJointImpedanceRequest = .{};
    for (&request.field_joint_stiffness, 0..) |*value, index| value.* = 0.125 * @as(f64, @floatFromInt(index + 1));
    var input: [56]u8 = undefined;
    const input_size = wire.encode(&request, &input) catch return 22;
    const encoded = input[0..input_size];
    if (!wireLine("REQUEST wire=", encoded)) return 5;
    var response_bytes: [261]u8 = undefined;
    const result = owner.request(.service_call, encoded, &response_bytes);
    if (result.code != 0) return result.code;
    var response = wire.decode(records.Ros1Franka_msgsSetJointImpedanceResponse, result.data) catch return 22;
    var canonical: [261]u8 = undefined;
    const complete_size = wire.encode(&response, &canonical) catch return 22;
    const complete = canonical[0..complete_size];
    if (!std.mem.eql(u8, complete, result.data)) return 22;
    if (!wireLine("RESPONSE wire=", complete)) return 5;
    var diagnostic: [128]u8 = undefined;
    const text = std.fmt.bufPrint(&diagnostic, "RECORD success={d} error_utf8_bytes={d}\n", .{ @intFromBool(response.field_success), response.field_error.size }) catch return 5;
    if (!output(1, text)) return 5;
    return 0;
}

/// Enter from the public scalar startup bridge, preserving cleanup separately.
export fn nl_entry() u32 {
    var state: client.State = .{};
    const acquired = client.open(&state, "sample");
    var primary = acquired.code;
    var cleanup: u32 = 0;
    if (acquired.owner) |owner| {
        primary = call(owner);
        cleanup = owner.close();
    }
    var diagnostic: [96]u8 = undefined;
    const text = std.fmt.bufPrint(&diagnostic, "primary={d} cleanup={d}\n", .{ primary, cleanup }) catch return 5;
    if (!output(2, text) and primary == 0) primary = 5;
    return if (primary != 0) primary else cleanup;
}
