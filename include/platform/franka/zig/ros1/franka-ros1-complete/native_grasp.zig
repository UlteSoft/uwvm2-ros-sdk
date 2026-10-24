//! @file native_grasp.zig
//! @brief Complete original Grasp values over the unchanged public ROS owner and Cursor.
//! @details This module preserves complete original action fields and bounded storage.
//! Runtime authority is supplied explicitly by the caller's deployment configuration.

const std = @import("std");
const client = @import("rosclient");
const wire = @import("roswire");
/// @brief Original inner and outer grasp tolerance values in metres.
/// @details Both values are encoded without rescaling; callers select physical tolerances.
pub const Epsilon = struct
{
    inner: f64 = 0,
    outer: f64 = 0
};
/// @brief Original field order: width, epsilon.inner/outer, speed, force.
pub const Goal = struct
{
    pub const minimum_wire_bytes: usize = 40;
    pub const maximum_wire_bytes: usize = 40;
    width: f64 = 0,
    epsilon: Epsilon = .{},
    speed: f64 = 0,
    force: f64 = 0,
};
/// @brief The original Noetic GraspFeedback has zero fields and zero canonical bytes.
pub const Feedback = struct
{
    pub const minimum_wire_bytes: usize = 0;
    pub const maximum_wire_bytes: usize = 0;
};
/// @brief Both original result fields; the finite error quota owns all UTF-8 bytes.
pub const Result = struct
{
    pub const minimum_wire_bytes: usize = 5;
    pub const maximum_wire_bytes: usize = 261;
    success: bool = false,
    @"error": wire.Text(256, false) = .{},
};
/// @brief Owned response status and opaque outgoing goal correlation.
/// @details A successful ID identifies the request; authority remains with the endpoint.
pub const Sent = struct
{
    code: u32,
    id: u64 = 0
};
/// @brief Owned bounded terminal payload and its response discriminator.
/// @details Bounded UTF-8 storage belongs to this value and survives later requests.
pub const Received = struct
{
    code: u32,
    kind: u8 = 0,
    value: Result = .{}
};
/// @brief Owned complete goal record and opaque incoming correlation.
/// @details The local ID correlates responses without exposing a native Goal UUID.
pub const Incoming = struct
{
    code: u32,
    id: u64 = 0,
    goal: Goal = .{}
};

/// @brief Send one complete original Grasp goal through an owned client endpoint.
/// @param owner Borrowed endpoint with an explicit send-goal grant.
/// @param goal Full original goal; all scalar fields are encoded in order.
/// @return Transport status and a nonzero opaque correlation ID on success.
/// @details A malformed response returns 22; the request is never retried.
pub fn send(owner: client.Owner, goal: *Goal) Sent
{
    var input: [40]u8 = undefined;
    const n = wire.encode(goal, &input) catch return .{ .code = 22 };
    var output: [8]u8 = undefined;
    const r = owner.request(.action_send_goal, input[0..n], &output);
    if (r.code != 0)
        return .{ .code = r.code };
    if (r.data.len != 8)
        return .{ .code = 22 };
    const id = std.mem.readInt(u64, &output, .little);
    return .{ .code = if (id != 0) 0 else 22, .id = id };
}
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
/// @brief Receive and validate correlated original empty Grasp feedback.
/// @param owner Borrowed endpoint with feedback permission.
/// @param id Exact SDK goal correlation ID.
/// @return Zero on success, 11 when idle, or the actual transport error.
/// @details Unexpected length, correlation, or payload returns 22.
pub fn feedback(owner: client.Owner, id: u64) u32
{
    const input = idBytes(id);
    var output: [8]u8 = undefined;
    const r = owner.request(.action_receive_feedback, &input, &output);
    if (r.code != 0)
        return r.code;
    if (r.data.len != 8 or std.mem.readInt(u64, &output, .little) != id)
        return 22;
    _ = wire.decode(Feedback, r.data[8..]) catch return 22;
    return 0;
}
/// @brief Consume a correlated terminal record with every original result field.
/// @param owner Borrowed endpoint with result-consumption permission.
/// @param id Exact SDK correlation ID for the expected goal.
/// @return Status, terminal kind, and owned bounded result storage.
/// @details Cancellation acknowledgement alone is not a terminal result.
pub fn result(owner: client.Owner, id: u64) Received
{
    const input = idBytes(id);
    var output: [270]u8 = undefined;
    const r = owner.request(.action_receive_result, &input, &output);
    if (r.code != 0)
        return .{ .code = r.code };
    if (r.data.len < 9 or std.mem.readInt(u64, output[0..8], .little) != id or output[8] < 2 or output[8] > 4)
        return .{ .code = 22 };
    const value = wire.decode(Result, r.data[9..]) catch return .{ .code = 22 };
    return .{ .code = 0, .kind = output[8], .value = value };
}
/// @brief Request cancellation of exactly one owned outgoing goal.
/// @param owner Endpoint with the explicitly granted own-cancel role.
/// @param id Goal correlation ID; zero is not treated as a wildcard.
/// @return Zero for a validated acknowledgement or the actual SDK error.
/// @details The caller must separately consume the terminal result.
pub fn cancel(owner: client.Owner, id: u64) u32
{
    const input = idBytes(id);
    var output: [1]u8 = undefined;
    const r = owner.request(.action_cancel_own_goal, &input, &output);
    if (r.code != 0)
        return r.code;
    return if (r.data.len == 1 and output[0] == 1) 0 else 22;
}
/// @brief Poll a complete original incoming goal without exposing native identity.
/// @param owner Borrowed advertised server endpoint.
/// @return Status, nonzero opaque correlation ID, and decoded goal fields.
/// @details Idle and transport errors are preserved; malformed records return 22.
pub fn poll(owner: client.Owner) Incoming
{
    var output: [48]u8 = undefined;
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
