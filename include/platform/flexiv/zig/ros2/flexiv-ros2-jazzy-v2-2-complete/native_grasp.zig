//! @file native_grasp.zig
//! @brief Complete original Grasp values over the unchanged public ROS owner and Cursor.
//! @details This module preserves complete original action fields and bounded storage.
//! Runtime authority is supplied explicitly by the caller's deployment configuration.

const std = @import("std");
const client = @import("rosclient");
const wire = @import("roswire");
/// @brief Complete original flexiv_msgs/action/Grasp_Goal.
pub const Goal = struct
{
    pub const minimum_wire_bytes: usize = 8;
    pub const maximum_wire_bytes: usize = 8;
    force: f64 = 0,
};
/// @brief All three original feedback fields, in original order and units.
pub const Feedback = struct
{
    pub const minimum_wire_bytes: usize = 17;
    pub const maximum_wire_bytes: usize = 17;
    current_width: f64 = 0,
    current_force: f64 = 0,
    moving: bool = false,
};
/// @brief Both original result fields; the finite error quota owns all UTF-8 bytes.
pub const Result = struct
{
    pub const minimum_wire_bytes: usize = 5;
    pub const maximum_wire_bytes: usize = 261;
    success: bool = false,
    @"error": wire.Text(256, false) = .{},
};
/// @brief Owned complete goal record and opaque incoming correlation.
/// @details The local ID correlates responses without exposing a native Goal UUID.
pub const Incoming = struct
{
    code: u32,
    id: u64 = 0,
    goal: Goal = .{}
};
/// @brief Encode an opaque SDK goal ID as eight little-endian bytes.
/// @param id Complete unsigned correlation value returned by the SDK.
/// @return A caller-owned eight-byte array.
/// @details This value is neither a native Goal UUID nor an authority token.
pub fn idBytes(id: u64) [8]u8
{
    var bytes: [8]u8 = undefined;
    std.mem.writeInt(u64, &bytes, id, .little);
    return bytes;
}
/// @brief Poll a complete original incoming goal without exposing native identity.
/// @param owner Borrowed advertised server endpoint.
/// @return Status, nonzero opaque correlation ID, and decoded goal fields.
/// @details Idle and transport errors are preserved; malformed records return 22.
pub fn poll(owner: client.Owner) Incoming
{
    var output: [16]u8 = undefined;
    const r = owner.poll(&output);
    if (r.code != 0)
        return .{ .code = r.code };
    if (r.data.len < 8)
        return .{ .code = 22 };
    const id = std.mem.readInt(u64, output[0..8], .little);
    const goal = wire.decode(Goal, r.data[8..]) catch return .{ .code = 22 };
    return .{ .code = if (id != 0) 0 else 22, .id = id, .goal = goal };
}
/// @brief Send one correlated feedback or terminal result record.
/// @param owner Endpoint with the corresponding explicit response grant.
/// @param id Exact incoming goal correlation ID.
/// @param kind Public response discriminator selected by the caller.
/// @param value Pointer to the matching complete feedback or result value.
/// @return Zero after an empty successful acknowledgement, otherwise an error.
/// @details The gateway enforces the native cancellation lifecycle and authority.
pub fn respond(owner: client.Owner, id: u64, kind: u8, value: anytype) u32
{
    var input: [270]u8 = undefined;
    const identity = idBytes(id);
    @memcpy(input[0..8], &identity);
    input[8] = kind;
    const n = wire.encode(value, input[9..]) catch return 22;
    var output: [0]u8 = .{};
    const r = owner.request(.action_respond, input[0 .. 9 + n], &output);
    return if (r.code != 0) r.code else if (r.data.len == 0) 0 else 22;
}
