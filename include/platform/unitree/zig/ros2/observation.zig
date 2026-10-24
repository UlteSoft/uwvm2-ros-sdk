//! @brief Observe complete original Unitree ROS 2 messages in genuine Zig.
//! @details All values own their bytes; successful acquisitions close exactly once.
const core = @import("unitree_core");
const records = @import("unitree_records");
pub const argumentCount = core.argumentCount;
pub const argument = core.argument;
pub const report = core.report;

/// @brief Observe every original unitree_go/msg/SportModeState field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitMotionState(
    alias_bytes: []const u8,
    attempts: u32
) core.Observation(
    records.Ros2Unitree_goMsgSportModeState,
) {
    return core.receive(records.Ros2Unitree_goMsgSportModeState, alias_bytes, attempts);
}

/// @brief Observe every original unitree_go/msg/LowState field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitLowState(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros2Unitree_goMsgLowState) {
    return core.receive(records.Ros2Unitree_goMsgLowState, alias_bytes, attempts);
}

/// @brief Observe every original unitree_go/msg/WirelessController field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitWirelessController(
    alias_bytes: []const u8,
    attempts: u32
) core.Observation(
    records.Ros2Unitree_goMsgWirelessController,
) {
    return core.receive(records.Ros2Unitree_goMsgWirelessController, alias_bytes, attempts);
}
