//! @file api.zig
//! @brief Typed complete clearpath observers and service clients.
//! @details Full source-language records remain independent of native owners.
const core = @import("native");
const wire = @import("native_wire");
pub const records = @import("records");
/// @brief Observe every original builtin_interfaces/msg/Duration field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos2Builtin_interfacesMsgDuration(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros2Builtin_interfacesMsgDuration) {
    return core.receive(records.Ros2Builtin_interfacesMsgDuration, alias_bytes, attempts);
}

/// @brief Observe every original builtin_interfaces/msg/Time field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos2Builtin_interfacesMsgTime(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros2Builtin_interfacesMsgTime) {
    return core.receive(records.Ros2Builtin_interfacesMsgTime, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_platform_msgs/msg/Drive field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos2Clearpath_platform_msgsMsgDrive(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros2Clearpath_platform_msgsMsgDrive) {
    return core.receive(records.Ros2Clearpath_platform_msgsMsgDrive, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_platform_msgs/msg/DriveFeedback field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos2Clearpath_platform_msgsMsgDriveFeedback(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros2Clearpath_platform_msgsMsgDriveFeedback) {
    return core.receive(records.Ros2Clearpath_platform_msgsMsgDriveFeedback, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_platform_msgs/msg/Fans field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos2Clearpath_platform_msgsMsgFans(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros2Clearpath_platform_msgsMsgFans) {
    return core.receive(records.Ros2Clearpath_platform_msgsMsgFans, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_platform_msgs/msg/Feedback field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos2Clearpath_platform_msgsMsgFeedback(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros2Clearpath_platform_msgsMsgFeedback) {
    return core.receive(records.Ros2Clearpath_platform_msgsMsgFeedback, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_platform_msgs/msg/Lights field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos2Clearpath_platform_msgsMsgLights(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros2Clearpath_platform_msgsMsgLights) {
    return core.receive(records.Ros2Clearpath_platform_msgsMsgLights, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_platform_msgs/msg/Power field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos2Clearpath_platform_msgsMsgPower(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros2Clearpath_platform_msgsMsgPower) {
    return core.receive(records.Ros2Clearpath_platform_msgsMsgPower, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_platform_msgs/msg/RGB field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos2Clearpath_platform_msgsMsgRGB(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros2Clearpath_platform_msgsMsgRGB) {
    return core.receive(records.Ros2Clearpath_platform_msgsMsgRGB, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_platform_msgs/msg/Status field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos2Clearpath_platform_msgsMsgStatus(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros2Clearpath_platform_msgsMsgStatus) {
    return core.receive(records.Ros2Clearpath_platform_msgsMsgStatus, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_platform_msgs/msg/StopStatus field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos2Clearpath_platform_msgsMsgStopStatus(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros2Clearpath_platform_msgsMsgStopStatus) {
    return core.receive(records.Ros2Clearpath_platform_msgsMsgStopStatus, alias_bytes, attempts);
}

/// @brief Observe every original std_msgs/msg/Header field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos2Std_msgsMsgHeader(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros2Std_msgsMsgHeader) {
    return core.receive(records.Ros2Std_msgsMsgHeader, alias_bytes, attempts);
}

/// @brief Call complete clearpath_platform_msgs/srv/ConfigureMcu exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos2Clearpath_platform_msgsSrvConfigureMcu(
    aliasBytes: []const u8,
    requestValue: *const records.Ros2Clearpath_platform_msgsSrvConfigureMcu_Request,
) core.Observation(records.Ros2Clearpath_platform_msgsSrvConfigureMcu_Response) {
    var bytes: [261]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros2Clearpath_platform_msgsSrvConfigureMcu_Response, aliasBytes, 1, bytes[0..size]);
    return result;
}
