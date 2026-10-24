//! @file api.zig
//! @brief Typed complete agilex observers and service clients.
//! @details Full source-language records remain independent of native owners.
const core = @import("native");
const wire = @import("native_wire");
pub const records = @import("records");
/// @brief Observe every original geometry_msgs/Point field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Geometry_msgsPoint(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Geometry_msgsPoint) {
    return core.receive(records.Ros1Geometry_msgsPoint, alias_bytes, attempts);
}

/// @brief Observe every original geometry_msgs/Pose field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Geometry_msgsPose(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Geometry_msgsPose) {
    return core.receive(records.Ros1Geometry_msgsPose, alias_bytes, attempts);
}

/// @brief Observe every original geometry_msgs/PoseWithCovariance field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Geometry_msgsPoseWithCovariance(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Geometry_msgsPoseWithCovariance) {
    return core.receive(records.Ros1Geometry_msgsPoseWithCovariance, alias_bytes, attempts);
}

/// @brief Observe every original geometry_msgs/Quaternion field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Geometry_msgsQuaternion(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Geometry_msgsQuaternion) {
    return core.receive(records.Ros1Geometry_msgsQuaternion, alias_bytes, attempts);
}

/// @brief Observe every original geometry_msgs/Twist field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Geometry_msgsTwist(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Geometry_msgsTwist) {
    return core.receive(records.Ros1Geometry_msgsTwist, alias_bytes, attempts);
}

/// @brief Observe every original geometry_msgs/TwistWithCovariance field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Geometry_msgsTwistWithCovariance(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Geometry_msgsTwistWithCovariance) {
    return core.receive(records.Ros1Geometry_msgsTwistWithCovariance, alias_bytes, attempts);
}

/// @brief Observe every original geometry_msgs/Vector3 field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Geometry_msgsVector3(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Geometry_msgsVector3) {
    return core.receive(records.Ros1Geometry_msgsVector3, alias_bytes, attempts);
}

/// @brief Observe every original nav_msgs/Odometry field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Nav_msgsOdometry(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Nav_msgsOdometry) {
    return core.receive(records.Ros1Nav_msgsOdometry, alias_bytes, attempts);
}

/// @brief Observe every original scout_msgs/ScoutBmsStatus field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Scout_msgsScoutBmsStatus(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Scout_msgsScoutBmsStatus) {
    return core.receive(records.Ros1Scout_msgsScoutBmsStatus, alias_bytes, attempts);
}

/// @brief Observe every original scout_msgs/ScoutDriverState field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Scout_msgsScoutDriverState(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Scout_msgsScoutDriverState) {
    return core.receive(records.Ros1Scout_msgsScoutDriverState, alias_bytes, attempts);
}

/// @brief Observe every original scout_msgs/ScoutLightCmd field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Scout_msgsScoutLightCmd(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Scout_msgsScoutLightCmd) {
    return core.receive(records.Ros1Scout_msgsScoutLightCmd, alias_bytes, attempts);
}

/// @brief Observe every original scout_msgs/ScoutLightState field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Scout_msgsScoutLightState(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Scout_msgsScoutLightState) {
    return core.receive(records.Ros1Scout_msgsScoutLightState, alias_bytes, attempts);
}

/// @brief Observe every original scout_msgs/ScoutMotorState field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Scout_msgsScoutMotorState(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Scout_msgsScoutMotorState) {
    return core.receive(records.Ros1Scout_msgsScoutMotorState, alias_bytes, attempts);
}

/// @brief Observe every original scout_msgs/ScoutRsStatus field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Scout_msgsScoutRsStatus(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Scout_msgsScoutRsStatus) {
    return core.receive(records.Ros1Scout_msgsScoutRsStatus, alias_bytes, attempts);
}

/// @brief Observe every original scout_msgs/ScoutStatus field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Scout_msgsScoutStatus(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Scout_msgsScoutStatus) {
    return core.receive(records.Ros1Scout_msgsScoutStatus, alias_bytes, attempts);
}

/// @brief Observe every original std_msgs/Header field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Std_msgsHeader(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Std_msgsHeader) {
    return core.receive(records.Ros1Std_msgsHeader, alias_bytes, attempts);
}
