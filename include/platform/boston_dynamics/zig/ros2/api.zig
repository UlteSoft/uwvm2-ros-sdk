//! @file api.zig
//! @brief Typed complete boston_dynamics observers and service clients.
//! @details Full source-language records remain independent of native owners.
const core = @import("native");
const wire = @import("native_wire");
pub const records = @import("records");
/// @brief Call complete uwvm_spot_bridge/srv/State exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos2Uwvm_spot_bridgeSrvState(
    aliasBytes: []const u8,
    requestValue: *const records.Ros2Uwvm_spot_bridgeSrvState_Request,
) core.Observation(records.Ros2Uwvm_spot_bridgeSrvState_Response) {
    if (requestValue.field_token == 0 or requestValue.field_nonce == 0 or requestValue.field_budget_ns == 0 or
        requestValue.field_budget_ns > 5000000000) return .{ .primary = 22 };
    var bytes: [24]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    var result = core.request(records.Ros2Uwvm_spot_bridgeSrvState_Response, aliasBytes, 1, bytes[0..size]);
    if (result.response_present and (result.value.field_token != requestValue.field_token or
        result.value.field_nonce != requestValue.field_nonce)) {
        result.primary = 22; result.response_present = false; result.size = 0;
    }
    return result;
}

/// @brief Call complete uwvm_spot_bridge/srv/Lease exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos2Uwvm_spot_bridgeSrvLease(
    aliasBytes: []const u8,
    requestValue: *const records.Ros2Uwvm_spot_bridgeSrvLease_Request,
) core.Observation(records.Ros2Uwvm_spot_bridgeSrvLease_Response) {
    if (requestValue.field_token == 0 or requestValue.field_nonce == 0 or requestValue.field_budget_ns == 0 or
        requestValue.field_budget_ns > 5000000000) return .{ .primary = 22 };
    var bytes: [24]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    var result = core.request(records.Ros2Uwvm_spot_bridgeSrvLease_Response, aliasBytes, 1, bytes[0..size]);
    if (result.response_present and (result.value.field_token != requestValue.field_token or
        result.value.field_nonce != requestValue.field_nonce)) {
        result.primary = 22; result.response_present = false; result.size = 0;
    }
    return result;
}

/// @brief Call complete uwvm_spot_bridge/srv/Command exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos2Uwvm_spot_bridgeSrvCommand(
    aliasBytes: []const u8,
    requestValue: *const records.Ros2Uwvm_spot_bridgeSrvCommand_Request,
) core.Observation(records.Ros2Uwvm_spot_bridgeSrvCommand_Response) {
    if (requestValue.field_token == 0 or requestValue.field_nonce == 0 or requestValue.field_budget_ns == 0 or
        requestValue.field_budget_ns > 5000000000) return .{ .primary = 22 };
    var bytes: [24]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    var result = core.request(records.Ros2Uwvm_spot_bridgeSrvCommand_Response, aliasBytes, 1, bytes[0..size]);
    if (result.response_present and (result.value.field_token != requestValue.field_token or
        result.value.field_nonce != requestValue.field_nonce)) {
        result.primary = 22; result.response_present = false; result.size = 0;
    }
    return result;
}

/// @brief Call complete uwvm_spot_bridge/srv/Velocity exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos2Uwvm_spot_bridgeSrvVelocity(
    aliasBytes: []const u8,
    requestValue: *const records.Ros2Uwvm_spot_bridgeSrvVelocity_Request,
) core.Observation(records.Ros2Uwvm_spot_bridgeSrvVelocity_Response) {
    if (requestValue.field_token == 0 or requestValue.field_nonce == 0 or requestValue.field_budget_ns == 0 or
        requestValue.field_budget_ns > 5000000000) return .{ .primary = 22 };
    var bytes: [56]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    var result = core.request(records.Ros2Uwvm_spot_bridgeSrvVelocity_Response, aliasBytes, 1, bytes[0..size]);
    if (result.response_present and (result.value.field_token != requestValue.field_token or
        result.value.field_nonce != requestValue.field_nonce)) {
        result.primary = 22; result.response_present = false; result.size = 0;
    }
    return result;
}

/// @brief Call complete uwvm_spot_bridge/srv/Feedback exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos2Uwvm_spot_bridgeSrvFeedback(
    aliasBytes: []const u8,
    requestValue: *const records.Ros2Uwvm_spot_bridgeSrvFeedback_Request,
) core.Observation(records.Ros2Uwvm_spot_bridgeSrvFeedback_Response) {
    if (requestValue.field_token == 0 or requestValue.field_nonce == 0 or requestValue.field_budget_ns == 0 or
        requestValue.field_budget_ns > 5000000000) return .{ .primary = 22 };
    var bytes: [32]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    var result = core.request(records.Ros2Uwvm_spot_bridgeSrvFeedback_Response, aliasBytes, 1, bytes[0..size]);
    if (result.response_present and (result.value.field_token != requestValue.field_token or
        result.value.field_nonce != requestValue.field_nonce)) {
        result.primary = 22; result.response_present = false; result.size = 0;
    }
    return result;
}
