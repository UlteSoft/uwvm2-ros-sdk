//! @file main.zig
//! @brief Use the complete original nav_msgs/msg/Odometry through an explicit native alias.
//! @details Preserve every original field and independent request/close status. No permission is granted.
const api = @import("agilex");
const core = @import("native");
/// @brief Enter the actual compiled language with one exact alias argument.
/// @return Original primary, independent close, then stdout status; no replay.
export fn nl_entry() u32 {
    if (core.argumentCount() != 2) return 22;
    const result = api.waitRos2Nav_msgsMsgOdometry(core.argument(1), 250);
    return core.report(&result);
}
