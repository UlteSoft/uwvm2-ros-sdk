//! @file api.zig
//! @brief Typed complete agilex observers and service clients.
//! @details Full source-language records remain independent of native owners.
const core = @import("native");
const wire = @import("native_wire");
pub const records = @import("records");
/// @brief Observe every original builtin_interfaces/msg/Time field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos2Builtin_interfacesMsgTime(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros2Builtin_interfacesMsgTime) {
    return core.receive(records.Ros2Builtin_interfacesMsgTime, alias_bytes, attempts);
}

/// @brief Observe every original geometry_msgs/msg/Point field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos2Geometry_msgsMsgPoint(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros2Geometry_msgsMsgPoint) {
    return core.receive(records.Ros2Geometry_msgsMsgPoint, alias_bytes, attempts);
}

/// @brief Observe every original geometry_msgs/msg/Pose field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos2Geometry_msgsMsgPose(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros2Geometry_msgsMsgPose) {
    return core.receive(records.Ros2Geometry_msgsMsgPose, alias_bytes, attempts);
}

/// @brief Observe every original geometry_msgs/msg/PoseWithCovariance field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos2Geometry_msgsMsgPoseWithCovariance(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros2Geometry_msgsMsgPoseWithCovariance) {
    return core.receive(records.Ros2Geometry_msgsMsgPoseWithCovariance, alias_bytes, attempts);
}

/// @brief Observe every original geometry_msgs/msg/Quaternion field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos2Geometry_msgsMsgQuaternion(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros2Geometry_msgsMsgQuaternion) {
    return core.receive(records.Ros2Geometry_msgsMsgQuaternion, alias_bytes, attempts);
}

/// @brief Observe every original geometry_msgs/msg/Twist field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos2Geometry_msgsMsgTwist(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros2Geometry_msgsMsgTwist) {
    return core.receive(records.Ros2Geometry_msgsMsgTwist, alias_bytes, attempts);
}

/// @brief Observe every original geometry_msgs/msg/TwistWithCovariance field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos2Geometry_msgsMsgTwistWithCovariance(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros2Geometry_msgsMsgTwistWithCovariance) {
    return core.receive(records.Ros2Geometry_msgsMsgTwistWithCovariance, alias_bytes, attempts);
}

/// @brief Observe every original geometry_msgs/msg/Vector3 field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos2Geometry_msgsMsgVector3(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros2Geometry_msgsMsgVector3) {
    return core.receive(records.Ros2Geometry_msgsMsgVector3, alias_bytes, attempts);
}

/// @brief Observe every original nav_msgs/msg/Odometry field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos2Nav_msgsMsgOdometry(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros2Nav_msgsMsgOdometry) {
    return core.receive(records.Ros2Nav_msgsMsgOdometry, alias_bytes, attempts);
}

/// @brief Observe every original scout_msgs/msg/ScoutActuatorState field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos2Scout_msgsMsgScoutActuatorState(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros2Scout_msgsMsgScoutActuatorState) {
    return core.receive(records.Ros2Scout_msgsMsgScoutActuatorState, alias_bytes, attempts);
}

/// @brief Observe every original scout_msgs/msg/ScoutLightCmd field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos2Scout_msgsMsgScoutLightCmd(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros2Scout_msgsMsgScoutLightCmd) {
    return core.receive(records.Ros2Scout_msgsMsgScoutLightCmd, alias_bytes, attempts);
}

/// @brief Observe every original scout_msgs/msg/ScoutLightState field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos2Scout_msgsMsgScoutLightState(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros2Scout_msgsMsgScoutLightState) {
    return core.receive(records.Ros2Scout_msgsMsgScoutLightState, alias_bytes, attempts);
}

/// @brief Observe every original scout_msgs/msg/ScoutRCState field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos2Scout_msgsMsgScoutRCState(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros2Scout_msgsMsgScoutRCState) {
    return core.receive(records.Ros2Scout_msgsMsgScoutRCState, alias_bytes, attempts);
}

/// @brief Observe every original scout_msgs/msg/ScoutStatus field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos2Scout_msgsMsgScoutStatus(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros2Scout_msgsMsgScoutStatus) {
    return core.receive(records.Ros2Scout_msgsMsgScoutStatus, alias_bytes, attempts);
}

/// @brief Observe every original std_msgs/msg/Header field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos2Std_msgsMsgHeader(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros2Std_msgsMsgHeader) {
    return core.receive(records.Ros2Std_msgsMsgHeader, alias_bytes, attempts);
}
