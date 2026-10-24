//! @file observation.zig
//! @brief Represent the complete original YASKAWA ROS 2 canonical value catalog.
//! @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
//! fields, original constants and native defaults; field units and frames follow the retained
//! definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
//! native ROS objects; importing them grants no transport alias.
//! @brief Observe complete original Yaskawa ROS 2 messages in genuine Zig.
//! @details All values own their bytes; successful acquisitions close exactly once.
const core = @import("ros_observation");
const records = @import("yaskawa_records");
pub const argumentCount = core.argumentCount;
pub const argument = core.argument;
pub const report = core.report;

/// @brief Observe every original industrial_msgs/msg/RobotStatus field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRobotStatus(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros2Industrial_msgsMsgRobotStatus) {
    return core.receive(records.Ros2Industrial_msgsMsgRobotStatus, alias_bytes, attempts);
}

/// @brief Observe every original sensor_msgs/msg/JointState field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitJointState(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros2Sensor_msgsMsgJointState) {
    return core.receive(records.Ros2Sensor_msgsMsgJointState, alias_bytes, attempts);
}

/// @brief Observe every original motoros2_interfaces/msg/AlarmInfo field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitAlarmInfo(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros2Motoros2_interfacesMsgAlarmInfo) {
    return core.receive(records.Ros2Motoros2_interfacesMsgAlarmInfo, alias_bytes, attempts);
}

