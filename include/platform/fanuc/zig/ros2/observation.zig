//! @file observation.zig
//! @brief Represent the complete original FANUC ROS 2 canonical value catalog.
//! @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
//! fields, original constants and native defaults; field units and frames follow the retained
//! definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
//! native ROS objects; importing them grants no transport alias.
//! @brief Observe complete original Fanuc ROS 2 messages in genuine Zig.
//! @details All values own their bytes; successful acquisitions close exactly once.
const core = @import("ros_observation");
const records = @import("fanuc_records");
pub const argumentCount = core.argumentCount;
pub const argument = core.argument;
pub const report = core.report;

/// @brief Observe every original fanuc_msgs/msg/ConnectionStatus field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitConnectionStatus(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros2Fanuc_msgsMsgConnectionStatus) {
    return core.receive(records.Ros2Fanuc_msgsMsgConnectionStatus, alias_bytes, attempts);
}

/// @brief Observe every original fanuc_msgs/msg/ForceSensor field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitForceSensor(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros2Fanuc_msgsMsgForceSensor) {
    return core.receive(records.Ros2Fanuc_msgsMsgForceSensor, alias_bytes, attempts);
}

/// @brief Observe every original fanuc_msgs/msg/Frame field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitFrame(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros2Fanuc_msgsMsgFrame) {
    return core.receive(records.Ros2Fanuc_msgsMsgFrame, alias_bytes, attempts);
}

