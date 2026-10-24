//! @file main.zig
//! @brief Use the complete original scout_msgs/ScoutStatus through an explicit native alias.
//! @details Preserve every original field and independent request/close status. No permission is granted.
const api = @import("agilex");
const core = @import("native");
/// @brief Enter the actual compiled language with one exact alias argument.
/// @return Original primary, independent close, then stdout status; no replay.
export fn nl_entry() u32 {
    if (core.argumentCount() != 2) return 22;
    const result = api.waitRos1Scout_msgsScoutStatus(core.argument(1), 250);
    return core.report(&result);
}
