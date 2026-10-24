//! @file native_grasp_client.zig
//! @brief Complete original Flexiv Grasp client operations over the unchanged public ROS owner and Cursor.
//! @details This module preserves complete original action fields and bounded storage.
//! Runtime authority is supplied explicitly by the caller's deployment configuration.

const std = @import("std");
const client = @import("rosclient");
const wire = @import("roswire");
/// @brief Borrow complete sealed original Jazzy Action record definitions.
/// @details These aliases preserve field order, bounds, units and owned UTF-8 storage.
const original = @import("flexiv_grasp");
pub const Goal = original.Goal;
pub const Feedback = original.Feedback;
pub const Result = original.Result;
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
    var input: [8]u8 = undefined;
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
/// @brief Receive every original feedback field for one exact outgoing goal.
/// @param owner Borrowed endpoint with explicit feedback permission.
/// @param id Complete expected opaque SDK correlation ID.
/// @param value Caller-owned complete value, published only after validated success.
/// @return Zero, actual idle11/transport refusal, or22 for malformed ID/length/fields.
/// @details The complete current_width/current_force/moving value owns its storage.
/// No failed observation changes value and no operation or goal is replayed.
pub fn feedback(owner: client.Owner, id: u64, value: *Feedback) u32
{
    const input = idBytes(id);
    var output: [25]u8 = undefined;
    const response = owner.request(.action_receive_feedback, &input, &output);
    if (response.code != 0)
        return response.code;
    if (response.data.len != 25 or std.mem.readInt(u64, output[0..8], .little) != id)
        return 22;
    const complete = wire.decode(Feedback, response.data[8..]) catch return 22;
    value.* = complete;
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
