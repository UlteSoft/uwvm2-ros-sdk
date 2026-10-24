//! @file main.zig
//! @brief Use the complete original uwvm_spot_bridge/srv/Lease_Response through an explicit native alias.
//! @details Preserve every original field and independent request/close status. No permission is granted.
const api = @import("boston_dynamics");
const core = @import("native");
/// @brief Enter the actual compiled language with one exact alias argument.
/// @return Original primary, independent close, then stdout status; no replay.
export fn nl_entry() u32 {
    if (core.argumentCount() != 2) return 22;
    const requestValue: api.records.Ros2Uwvm_spot_bridgeSrvLease_Request = .{ .field_token = 1, .field_nonce = 1, .field_budget_ns = 1000000000 };
    const result = api.callRos2Uwvm_spot_bridgeSrvLease(core.argument(1), &requestValue);
    return core.report(&result);
}
