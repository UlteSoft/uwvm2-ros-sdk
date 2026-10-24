//! @file api.zig
//! @brief Typed complete clearpath observers and service clients.
//! @details Full source-language records remain independent of native owners.
const core = @import("native");
const wire = @import("native_wire");
pub const records = @import("records");
/// @brief Observe every original clearpath_configuration_msgs/AutonomyConfig field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_configuration_msgsAutonomyConfig(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_configuration_msgsAutonomyConfig) {
    return core.receive(records.Ros1Clearpath_configuration_msgsAutonomyConfig, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_configuration_msgs/PlatformConfig field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_configuration_msgsPlatformConfig(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_configuration_msgsPlatformConfig) {
    return core.receive(records.Ros1Clearpath_configuration_msgsPlatformConfig, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_control_msgs/AutonomySync field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_control_msgsAutonomySync(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_control_msgsAutonomySync) {
    return core.receive(records.Ros1Clearpath_control_msgsAutonomySync, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_control_msgs/ControlMode field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_control_msgsControlMode(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_control_msgsControlMode) {
    return core.receive(records.Ros1Clearpath_control_msgsControlMode, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_control_msgs/ControlSelectionState field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_control_msgsControlSelectionState(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_control_msgsControlSelectionState) {
    return core.receive(records.Ros1Clearpath_control_msgsControlSelectionState, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_control_msgs/ControlState field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_control_msgsControlState(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_control_msgsControlState) {
    return core.receive(records.Ros1Clearpath_control_msgsControlState, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_dock_msgs/DockInfo field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_dock_msgsDockInfo(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_dock_msgsDockInfo) {
    return core.receive(records.Ros1Clearpath_dock_msgsDockInfo, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_dock_msgs/DockProperties field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_dock_msgsDockProperties(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_dock_msgsDockProperties) {
    return core.receive(records.Ros1Clearpath_dock_msgsDockProperties, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_dock_msgs/DockState field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_dock_msgsDockState(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_dock_msgsDockState) {
    return core.receive(records.Ros1Clearpath_dock_msgsDockState, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_dock_msgs/TargetTrackerState field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_dock_msgsTargetTrackerState(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_dock_msgsTargetTrackerState) {
    return core.receive(records.Ros1Clearpath_dock_msgsTargetTrackerState, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_localization_msgs/GNSSStatus field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_localization_msgsGNSSStatus(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_localization_msgsGNSSStatus) {
    return core.receive(records.Ros1Clearpath_localization_msgsGNSSStatus, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_localization_msgs/LocalizationStatus field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_localization_msgsLocalizationStatus(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_localization_msgsLocalizationStatus) {
    return core.receive(records.Ros1Clearpath_localization_msgsLocalizationStatus, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_localization_msgs/SurveyProperties field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_localization_msgsSurveyProperties(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_localization_msgsSurveyProperties) {
    return core.receive(records.Ros1Clearpath_localization_msgsSurveyProperties, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_localization_msgs/XvnStatus field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_localization_msgsXvnStatus(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_localization_msgsXvnStatus) {
    return core.receive(records.Ros1Clearpath_localization_msgsXvnStatus, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_logger_msgs/Event field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_logger_msgsEvent(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_logger_msgsEvent) {
    return core.receive(records.Ros1Clearpath_logger_msgsEvent, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_logger_msgs/EventLog field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_logger_msgsEventLog(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_logger_msgsEventLog) {
    return core.receive(records.Ros1Clearpath_logger_msgsEventLog, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_logger_msgs/EventLogs field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_logger_msgsEventLogs(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_logger_msgsEventLogs) {
    return core.receive(records.Ros1Clearpath_logger_msgsEventLogs, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_mission_manager_msgs/NetworkEdgeReq field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_mission_manager_msgsNetworkEdgeReq(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_mission_manager_msgsNetworkEdgeReq) {
    return core.receive(records.Ros1Clearpath_mission_manager_msgsNetworkEdgeReq, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_mission_manager_msgs/NetworkMapState field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_mission_manager_msgsNetworkMapState(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_mission_manager_msgsNetworkMapState) {
    return core.receive(records.Ros1Clearpath_mission_manager_msgsNetworkMapState, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_mission_manager_msgs/NetworkMapValidityState field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_mission_manager_msgsNetworkMapValidityState(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_mission_manager_msgsNetworkMapValidityState) {
    return core.receive(records.Ros1Clearpath_mission_manager_msgsNetworkMapValidityState, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_mission_manager_msgs/StorageState field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_mission_manager_msgsStorageState(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_mission_manager_msgsStorageState) {
    return core.receive(records.Ros1Clearpath_mission_manager_msgsStorageState, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_mission_scheduler_msgs/NextSchedule field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_mission_scheduler_msgsNextSchedule(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_mission_scheduler_msgsNextSchedule) {
    return core.receive(records.Ros1Clearpath_mission_scheduler_msgsNextSchedule, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_mission_scheduler_msgs/Schedule field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_mission_scheduler_msgsSchedule(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_mission_scheduler_msgsSchedule) {
    return core.receive(records.Ros1Clearpath_mission_scheduler_msgsSchedule, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_mission_scheduler_msgs/StorageState field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_mission_scheduler_msgsStorageState(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_mission_scheduler_msgsStorageState) {
    return core.receive(records.Ros1Clearpath_mission_scheduler_msgsStorageState, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_mission_scheduler_msgs/UtcTime field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_mission_scheduler_msgsUtcTime(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_mission_scheduler_msgsUtcTime) {
    return core.receive(records.Ros1Clearpath_mission_scheduler_msgsUtcTime, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_navigation_msgs/AutonomyStatus field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_navigation_msgsAutonomyStatus(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_navigation_msgsAutonomyStatus) {
    return core.receive(records.Ros1Clearpath_navigation_msgsAutonomyStatus, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_navigation_msgs/DistanceToGoal field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_navigation_msgsDistanceToGoal(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_navigation_msgsDistanceToGoal) {
    return core.receive(records.Ros1Clearpath_navigation_msgsDistanceToGoal, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_navigation_msgs/Metrics field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_navigation_msgsMetrics(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_navigation_msgsMetrics) {
    return core.receive(records.Ros1Clearpath_navigation_msgsMetrics, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_navigation_msgs/Mission field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_navigation_msgsMission(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_navigation_msgsMission) {
    return core.receive(records.Ros1Clearpath_navigation_msgsMission, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_navigation_msgs/MissionStatus field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_navigation_msgsMissionStatus(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_navigation_msgsMissionStatus) {
    return core.receive(records.Ros1Clearpath_navigation_msgsMissionStatus, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_navigation_msgs/MotionState field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_navigation_msgsMotionState(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_navigation_msgsMotionState) {
    return core.receive(records.Ros1Clearpath_navigation_msgsMotionState, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_navigation_msgs/NavigationState field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_navigation_msgsNavigationState(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_navigation_msgsNavigationState) {
    return core.receive(records.Ros1Clearpath_navigation_msgsNavigationState, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_navigation_msgs/NetworkEdge field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_navigation_msgsNetworkEdge(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_navigation_msgsNetworkEdge) {
    return core.receive(records.Ros1Clearpath_navigation_msgsNetworkEdge, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_navigation_msgs/NetworkGoalState field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_navigation_msgsNetworkGoalState(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_navigation_msgsNetworkGoalState) {
    return core.receive(records.Ros1Clearpath_navigation_msgsNetworkGoalState, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_navigation_msgs/NetworkMap field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_navigation_msgsNetworkMap(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_navigation_msgsNetworkMap) {
    return core.receive(records.Ros1Clearpath_navigation_msgsNetworkMap, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_navigation_msgs/NetworkMission field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_navigation_msgsNetworkMission(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_navigation_msgsNetworkMission) {
    return core.receive(records.Ros1Clearpath_navigation_msgsNetworkMission, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_navigation_msgs/NetworkMissionSegment field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_navigation_msgsNetworkMissionSegment(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_navigation_msgsNetworkMissionSegment) {
    return core.receive(records.Ros1Clearpath_navigation_msgsNetworkMissionSegment, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_navigation_msgs/NetworkPoint field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_navigation_msgsNetworkPoint(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_navigation_msgsNetworkPoint) {
    return core.receive(records.Ros1Clearpath_navigation_msgsNetworkPoint, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_navigation_msgs/OdomIntent field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_navigation_msgsOdomIntent(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_navigation_msgsOdomIntent) {
    return core.receive(records.Ros1Clearpath_navigation_msgsOdomIntent, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_navigation_msgs/PointOfInterest field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_navigation_msgsPointOfInterest(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_navigation_msgsPointOfInterest) {
    return core.receive(records.Ros1Clearpath_navigation_msgsPointOfInterest, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_navigation_msgs/PointVector field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_navigation_msgsPointVector(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_navigation_msgsPointVector) {
    return core.receive(records.Ros1Clearpath_navigation_msgsPointVector, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_navigation_msgs/Progress field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_navigation_msgsProgress(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_navigation_msgsProgress) {
    return core.receive(records.Ros1Clearpath_navigation_msgsProgress, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_navigation_msgs/ScanPoints field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_navigation_msgsScanPoints(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_navigation_msgsScanPoints) {
    return core.receive(records.Ros1Clearpath_navigation_msgsScanPoints, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_navigation_msgs/Task field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_navigation_msgsTask(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_navigation_msgsTask) {
    return core.receive(records.Ros1Clearpath_navigation_msgsTask, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_navigation_msgs/TrackError field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_navigation_msgsTrackError(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_navigation_msgsTrackError) {
    return core.receive(records.Ros1Clearpath_navigation_msgsTrackError, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_navigation_msgs/Vector2D field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_navigation_msgsVector2D(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_navigation_msgsVector2D) {
    return core.receive(records.Ros1Clearpath_navigation_msgsVector2D, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_navigation_msgs/Vector2D64 field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_navigation_msgsVector2D64(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_navigation_msgsVector2D64) {
    return core.receive(records.Ros1Clearpath_navigation_msgsVector2D64, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_navigation_msgs/Waypoint field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_navigation_msgsWaypoint(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_navigation_msgsWaypoint) {
    return core.receive(records.Ros1Clearpath_navigation_msgsWaypoint, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_navigation_msgs/WaypointStatus field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_navigation_msgsWaypointStatus(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_navigation_msgsWaypointStatus) {
    return core.receive(records.Ros1Clearpath_navigation_msgsWaypointStatus, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_platform_msgs/Drive field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_platform_msgsDrive(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_platform_msgsDrive) {
    return core.receive(records.Ros1Clearpath_platform_msgsDrive, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_platform_msgs/DriveFeedback field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_platform_msgsDriveFeedback(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_platform_msgsDriveFeedback) {
    return core.receive(records.Ros1Clearpath_platform_msgsDriveFeedback, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_platform_msgs/Fans field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_platform_msgsFans(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_platform_msgsFans) {
    return core.receive(records.Ros1Clearpath_platform_msgsFans, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_platform_msgs/Feedback field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_platform_msgsFeedback(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_platform_msgsFeedback) {
    return core.receive(records.Ros1Clearpath_platform_msgsFeedback, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_platform_msgs/Lights field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_platform_msgsLights(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_platform_msgsLights) {
    return core.receive(records.Ros1Clearpath_platform_msgsLights, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_platform_msgs/PlatformID field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_platform_msgsPlatformID(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_platform_msgsPlatformID) {
    return core.receive(records.Ros1Clearpath_platform_msgsPlatformID, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_platform_msgs/Power field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_platform_msgsPower(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_platform_msgsPower) {
    return core.receive(records.Ros1Clearpath_platform_msgsPower, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_platform_msgs/RGB field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_platform_msgsRGB(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_platform_msgsRGB) {
    return core.receive(records.Ros1Clearpath_platform_msgsRGB, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_platform_msgs/RYG field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_platform_msgsRYG(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_platform_msgsRYG) {
    return core.receive(records.Ros1Clearpath_platform_msgsRYG, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_platform_msgs/StackLightState field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_platform_msgsStackLightState(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_platform_msgsStackLightState) {
    return core.receive(records.Ros1Clearpath_platform_msgsStackLightState, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_platform_msgs/Status field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_platform_msgsStatus(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_platform_msgsStatus) {
    return core.receive(records.Ros1Clearpath_platform_msgsStatus, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_platform_msgs/StopStatus field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_platform_msgsStopStatus(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_platform_msgsStopStatus) {
    return core.receive(records.Ros1Clearpath_platform_msgsStopStatus, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_safety_msgs/AssistedTeleopState field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_safety_msgsAssistedTeleopState(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_safety_msgsAssistedTeleopState) {
    return core.receive(records.Ros1Clearpath_safety_msgsAssistedTeleopState, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_safety_msgs/ObstacleMap field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_safety_msgsObstacleMap(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_safety_msgsObstacleMap) {
    return core.receive(records.Ros1Clearpath_safety_msgsObstacleMap, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_safety_msgs/Safety field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_safety_msgsSafety(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_safety_msgsSafety) {
    return core.receive(records.Ros1Clearpath_safety_msgsSafety, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_safety_msgs/WatchdogConfigArray field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_safety_msgsWatchdogConfigArray(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_safety_msgsWatchdogConfigArray) {
    return core.receive(records.Ros1Clearpath_safety_msgsWatchdogConfigArray, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_safety_msgs/WatchdogConfigCommon field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_safety_msgsWatchdogConfigCommon(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_safety_msgsWatchdogConfigCommon) {
    return core.receive(records.Ros1Clearpath_safety_msgsWatchdogConfigCommon, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_safety_msgs/WatchdogConfigCommunication field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_safety_msgsWatchdogConfigCommunication(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_safety_msgsWatchdogConfigCommunication) {
    return core.receive(records.Ros1Clearpath_safety_msgsWatchdogConfigCommunication, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_safety_msgs/WatchdogConfigHeartbeat field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_safety_msgsWatchdogConfigHeartbeat(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_safety_msgsWatchdogConfigHeartbeat) {
    return core.receive(records.Ros1Clearpath_safety_msgsWatchdogConfigHeartbeat, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_safety_msgs/WatchdogConfigInclination field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_safety_msgsWatchdogConfigInclination(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_safety_msgsWatchdogConfigInclination) {
    return core.receive(records.Ros1Clearpath_safety_msgsWatchdogConfigInclination, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_safety_msgs/WatchdogConfigNodeStatus field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_safety_msgsWatchdogConfigNodeStatus(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_safety_msgsWatchdogConfigNodeStatus) {
    return core.receive(records.Ros1Clearpath_safety_msgsWatchdogConfigNodeStatus, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_safety_msgs/WatchdogConfigNodeletStatus field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_safety_msgsWatchdogConfigNodeletStatus(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_safety_msgsWatchdogConfigNodeletStatus) {
    return core.receive(records.Ros1Clearpath_safety_msgsWatchdogConfigNodeletStatus, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_safety_msgs/WatchdogConfigNumPoints field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_safety_msgsWatchdogConfigNumPoints(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_safety_msgsWatchdogConfigNumPoints) {
    return core.receive(records.Ros1Clearpath_safety_msgsWatchdogConfigNumPoints, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_safety_msgs/WatchdogConfigOdomCovariance field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_safety_msgsWatchdogConfigOdomCovariance(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_safety_msgsWatchdogConfigOdomCovariance) {
    return core.receive(records.Ros1Clearpath_safety_msgsWatchdogConfigOdomCovariance, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_safety_msgs/WatchdogConfigRtkFix field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_safety_msgsWatchdogConfigRtkFix(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_safety_msgsWatchdogConfigRtkFix) {
    return core.receive(records.Ros1Clearpath_safety_msgsWatchdogConfigRtkFix, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_safety_msgs/WatchdogConfigTopicData field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_safety_msgsWatchdogConfigTopicData(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_safety_msgsWatchdogConfigTopicData) {
    return core.receive(records.Ros1Clearpath_safety_msgsWatchdogConfigTopicData, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_safety_msgs/WatchdogStatus field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_safety_msgsWatchdogStatus(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_safety_msgsWatchdogStatus) {
    return core.receive(records.Ros1Clearpath_safety_msgsWatchdogStatus, alias_bytes, attempts);
}

/// @brief Observe every original clearpath_safety_msgs/WatchdogStatusArray field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Clearpath_safety_msgsWatchdogStatusArray(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Clearpath_safety_msgsWatchdogStatusArray) {
    return core.receive(records.Ros1Clearpath_safety_msgsWatchdogStatusArray, alias_bytes, attempts);
}

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

/// @brief Observe every original geometry_msgs/PoseStamped field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Geometry_msgsPoseStamped(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Geometry_msgsPoseStamped) {
    return core.receive(records.Ros1Geometry_msgsPoseStamped, alias_bytes, attempts);
}

/// @brief Observe every original geometry_msgs/PoseWithCovariance field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Geometry_msgsPoseWithCovariance(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Geometry_msgsPoseWithCovariance) {
    return core.receive(records.Ros1Geometry_msgsPoseWithCovariance, alias_bytes, attempts);
}

/// @brief Observe every original geometry_msgs/PoseWithCovarianceStamped field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Geometry_msgsPoseWithCovarianceStamped(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Geometry_msgsPoseWithCovarianceStamped) {
    return core.receive(records.Ros1Geometry_msgsPoseWithCovarianceStamped, alias_bytes, attempts);
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

/// @brief Observe every original husky_msgs/HuskyStatus field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Husky_msgsHuskyStatus(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Husky_msgsHuskyStatus) {
    return core.receive(records.Ros1Husky_msgsHuskyStatus, alias_bytes, attempts);
}

/// @brief Observe every original jackal_msgs/Drive field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Jackal_msgsDrive(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Jackal_msgsDrive) {
    return core.receive(records.Ros1Jackal_msgsDrive, alias_bytes, attempts);
}

/// @brief Observe every original jackal_msgs/DriveFeedback field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Jackal_msgsDriveFeedback(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Jackal_msgsDriveFeedback) {
    return core.receive(records.Ros1Jackal_msgsDriveFeedback, alias_bytes, attempts);
}

/// @brief Observe every original jackal_msgs/Feedback field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Jackal_msgsFeedback(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Jackal_msgsFeedback) {
    return core.receive(records.Ros1Jackal_msgsFeedback, alias_bytes, attempts);
}

/// @brief Observe every original jackal_msgs/Status field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Jackal_msgsStatus(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Jackal_msgsStatus) {
    return core.receive(records.Ros1Jackal_msgsStatus, alias_bytes, attempts);
}

/// @brief Observe every original nav_msgs/Odometry field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Nav_msgsOdometry(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Nav_msgsOdometry) {
    return core.receive(records.Ros1Nav_msgsOdometry, alias_bytes, attempts);
}

/// @brief Observe every original nav_msgs/Path field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Nav_msgsPath(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Nav_msgsPath) {
    return core.receive(records.Ros1Nav_msgsPath, alias_bytes, attempts);
}

/// @brief Observe every original sensor_msgs/NavSatFix field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Sensor_msgsNavSatFix(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Sensor_msgsNavSatFix) {
    return core.receive(records.Ros1Sensor_msgsNavSatFix, alias_bytes, attempts);
}

/// @brief Observe every original sensor_msgs/NavSatStatus field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Sensor_msgsNavSatStatus(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Sensor_msgsNavSatStatus) {
    return core.receive(records.Ros1Sensor_msgsNavSatStatus, alias_bytes, attempts);
}

/// @brief Observe every original std_msgs/Duration field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Std_msgsDuration(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Std_msgsDuration) {
    return core.receive(records.Ros1Std_msgsDuration, alias_bytes, attempts);
}

/// @brief Observe every original std_msgs/Header field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Std_msgsHeader(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Std_msgsHeader) {
    return core.receive(records.Ros1Std_msgsHeader, alias_bytes, attempts);
}

/// @brief Observe every original std_msgs/String field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Std_msgsString(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Std_msgsString) {
    return core.receive(records.Ros1Std_msgsString, alias_bytes, attempts);
}

/// @brief Observe every original std_msgs/Time field through one retained owner.
/// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
pub fn waitRos1Std_msgsTime(alias_bytes: []const u8, attempts: u32) core.Observation(records.Ros1Std_msgsTime) {
    return core.receive(records.Ros1Std_msgsTime, alias_bytes, attempts);
}

/// @brief Call complete clearpath_camera_msgs/q62AreaZoom exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_camera_msgsQ62AreaZoomRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_camera_msgsQ62AreaZoomRequest,
) core.Observation(records.Ros1Clearpath_camera_msgsQ62AreaZoomResponse) {
    var bytes: [12]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_camera_msgsQ62AreaZoomResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_control_msgs/SetControlMode exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_control_msgsSetControlModeRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_control_msgsSetControlModeRequest,
) core.Observation(records.Ros1Clearpath_control_msgsSetControlModeResponse) {
    var bytes: [1]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_control_msgsSetControlModeResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_dock_msgs/AddDock exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_dock_msgsAddDockRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_dock_msgsAddDockRequest,
) core.Observation(records.Ros1Clearpath_dock_msgsAddDockResponse) {
    var bytes: [1204]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_dock_msgsAddDockResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_dock_msgs/ExportData exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_dock_msgsExportDataRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_dock_msgsExportDataRequest,
) core.Observation(records.Ros1Clearpath_dock_msgsExportDataResponse) {
    var bytes: [0]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_dock_msgsExportDataResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_dock_msgs/GetDockByUuid exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_dock_msgsGetDockByUuidRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_dock_msgsGetDockByUuidRequest,
) core.Observation(records.Ros1Clearpath_dock_msgsGetDockByUuidResponse) {
    var bytes: [260]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_dock_msgsGetDockByUuidResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_dock_msgs/ImportData exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_dock_msgsImportDataRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_dock_msgsImportDataRequest,
) core.Observation(records.Ros1Clearpath_dock_msgsImportDataResponse) {
    var bytes: [260]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_dock_msgsImportDataResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_dock_msgs/RemoveDock exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_dock_msgsRemoveDockRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_dock_msgsRemoveDockRequest,
) core.Observation(records.Ros1Clearpath_dock_msgsRemoveDockResponse) {
    var bytes: [392]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_dock_msgsRemoveDockResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_dock_msgs/SetDockLocationById exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_dock_msgsSetDockLocationByIdRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_dock_msgsSetDockLocationByIdRequest,
) core.Observation(records.Ros1Clearpath_dock_msgsSetDockLocationByIdResponse) {
    var bytes: [260]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_dock_msgsSetDockLocationByIdResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_dock_msgs/SetDockLocationByName exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_dock_msgsSetDockLocationByNameRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_dock_msgsSetDockLocationByNameRequest,
) core.Observation(records.Ros1Clearpath_dock_msgsSetDockLocationByNameResponse) {
    var bytes: [132]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_dock_msgsSetDockLocationByNameResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_localization_msgs/ConvertCartesianToLatLon exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_localization_msgsConvertCartesianToLatLonRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_localization_msgsConvertCartesianToLatLonRequest,
) core.Observation(records.Ros1Clearpath_localization_msgsConvertCartesianToLatLonResponse) {
    var bytes: [200]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_localization_msgsConvertCartesianToLatLonResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_localization_msgs/ConvertCartesianToLatLonArray exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_localization_msgsConvertCartesianToLatLonArrayRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_localization_msgsConvertCartesianToLatLonArrayRequest,
) core.Observation(records.Ros1Clearpath_localization_msgsConvertCartesianToLatLonArrayResponse) {
    var bytes: [404]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_localization_msgsConvertCartesianToLatLonArrayResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_localization_msgs/ConvertLatLonToCartesian exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_localization_msgsConvertLatLonToCartesianRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_localization_msgsConvertLatLonToCartesianRequest,
) core.Observation(records.Ros1Clearpath_localization_msgsConvertLatLonToCartesianResponse) {
    var bytes: [244]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_localization_msgsConvertLatLonToCartesianResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_localization_msgs/ConvertLatLonToCartesianArray exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_localization_msgsConvertLatLonToCartesianArrayRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_localization_msgsConvertLatLonToCartesianArrayRequest,
) core.Observation(records.Ros1Clearpath_localization_msgsConvertLatLonToCartesianArrayResponse) {
    var bytes: [492]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_localization_msgsConvertLatLonToCartesianArrayResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_localization_msgs/ResetLocalization exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_localization_msgsResetLocalizationRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_localization_msgsResetLocalizationRequest,
) core.Observation(records.Ros1Clearpath_localization_msgsResetLocalizationResponse) {
    var bytes: [5]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_localization_msgsResetLocalizationResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_localization_msgs/SetDatum exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_localization_msgsSetDatumRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_localization_msgsSetDatumRequest,
) core.Observation(records.Ros1Clearpath_localization_msgsSetDatumResponse) {
    var bytes: [8]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_localization_msgsSetDatumResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_logger_msgs/DeleteLog exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_logger_msgsDeleteLogRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_logger_msgsDeleteLogRequest,
) core.Observation(records.Ros1Clearpath_logger_msgsDeleteLogResponse) {
    var bytes: [262]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_logger_msgsDeleteLogResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_logger_msgs/DownloadLog exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_logger_msgsDownloadLogRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_logger_msgsDownloadLogRequest,
) core.Observation(records.Ros1Clearpath_logger_msgsDownloadLogResponse) {
    var bytes: [260]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_logger_msgsDownloadLogResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_logger_msgs/GetAllLogs exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_logger_msgsGetAllLogsRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_logger_msgsGetAllLogsRequest,
) core.Observation(records.Ros1Clearpath_logger_msgsGetAllLogsResponse) {
    var bytes: [0]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_logger_msgsGetAllLogsResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_logger_msgs/RecordCustomEvent exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_logger_msgsRecordCustomEventRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_logger_msgsRecordCustomEventRequest,
) core.Observation(records.Ros1Clearpath_logger_msgsRecordCustomEventResponse) {
    var bytes: [916]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_logger_msgsRecordCustomEventResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_logger_msgs/RecordErrorEvent exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_logger_msgsRecordErrorEventRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_logger_msgsRecordErrorEventRequest,
) core.Observation(records.Ros1Clearpath_logger_msgsRecordErrorEventResponse) {
    var bytes: [524]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_logger_msgsRecordErrorEventResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_logger_msgs/RecordEvent exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_logger_msgsRecordEventRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_logger_msgsRecordEventRequest,
) core.Observation(records.Ros1Clearpath_logger_msgsRecordEventResponse) {
    var bytes: [3190]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_logger_msgsRecordEventResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_logger_msgs/RecordLocationEvent exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_logger_msgsRecordLocationEventRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_logger_msgsRecordLocationEventRequest,
) core.Observation(records.Ros1Clearpath_logger_msgsRecordLocationEventResponse) {
    var bytes: [1680]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_logger_msgsRecordLocationEventResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_logger_msgs/RecordMediaEvent exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_logger_msgsRecordMediaEventRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_logger_msgsRecordMediaEventRequest,
) core.Observation(records.Ros1Clearpath_logger_msgsRecordMediaEventResponse) {
    var bytes: [652]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_logger_msgsRecordMediaEventResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_logger_msgs/RecordPowerEvent exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_logger_msgsRecordPowerEventRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_logger_msgsRecordPowerEventRequest,
) core.Observation(records.Ros1Clearpath_logger_msgsRecordPowerEventResponse) {
    var bytes: [5]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_logger_msgsRecordPowerEventResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_logger_msgs/StartRecording exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_logger_msgsStartRecordingRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_logger_msgsStartRecordingRequest,
) core.Observation(records.Ros1Clearpath_logger_msgsStartRecordingResponse) {
    var bytes: [132]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_logger_msgsStartRecordingResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_logger_msgs/StopRecording exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_logger_msgsStopRecordingRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_logger_msgsStopRecordingRequest,
) core.Observation(records.Ros1Clearpath_logger_msgsStopRecordingResponse) {
    var bytes: [260]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_logger_msgsStopRecordingResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/AddNetworkEdge exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_mission_manager_msgsAddNetworkEdgeRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_mission_manager_msgsAddNetworkEdgeRequest,
) core.Observation(records.Ros1Clearpath_mission_manager_msgsAddNetworkEdgeResponse) {
    var bytes: [793]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_mission_manager_msgsAddNetworkEdgeResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/AddNetworkPath exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_mission_manager_msgsAddNetworkPathRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_mission_manager_msgsAddNetworkPathRequest,
) core.Observation(records.Ros1Clearpath_mission_manager_msgsAddNetworkPathResponse) {
    var bytes: [301]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_mission_manager_msgsAddNetworkPathResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/AddNetworkPoint exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_mission_manager_msgsAddNetworkPointRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_mission_manager_msgsAddNetworkPointRequest,
) core.Observation(records.Ros1Clearpath_mission_manager_msgsAddNetworkPointResponse) {
    var bytes: [1325]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_mission_manager_msgsAddNetworkPointResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/AddRemoveById exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_mission_manager_msgsAddRemoveByIdRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_mission_manager_msgsAddRemoveByIdRequest,
) core.Observation(records.Ros1Clearpath_mission_manager_msgsAddRemoveByIdResponse) {
    var bytes: [524]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_mission_manager_msgsAddRemoveByIdResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/AddRemoveTag exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_mission_manager_msgsAddRemoveTagRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_mission_manager_msgsAddRemoveTagRequest,
) core.Observation(records.Ros1Clearpath_mission_manager_msgsAddRemoveTagResponse) {
    var bytes: [520]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_mission_manager_msgsAddRemoveTagResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/CloneMission exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_mission_manager_msgsCloneMissionRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_mission_manager_msgsCloneMissionRequest,
) core.Observation(records.Ros1Clearpath_mission_manager_msgsCloneMissionResponse) {
    var bytes: [521]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_mission_manager_msgsCloneMissionResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/CloneNetworkMap exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_mission_manager_msgsCloneNetworkMapRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_mission_manager_msgsCloneNetworkMapRequest,
) core.Observation(records.Ros1Clearpath_mission_manager_msgsCloneNetworkMapResponse) {
    var bytes: [520]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_mission_manager_msgsCloneNetworkMapResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/CloneNetworkMission exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_mission_manager_msgsCloneNetworkMissionRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_mission_manager_msgsCloneNetworkMissionRequest,
) core.Observation(records.Ros1Clearpath_mission_manager_msgsCloneNetworkMissionResponse) {
    var bytes: [521]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_mission_manager_msgsCloneNetworkMissionResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/ClonePointOfInterest exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_mission_manager_msgsClonePointOfInterestRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_mission_manager_msgsClonePointOfInterestRequest,
) core.Observation(records.Ros1Clearpath_mission_manager_msgsClonePointOfInterestResponse) {
    var bytes: [520]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_mission_manager_msgsClonePointOfInterestResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/CreateMission exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_mission_manager_msgsCreateMissionRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_mission_manager_msgsCreateMissionRequest,
) core.Observation(records.Ros1Clearpath_mission_manager_msgsCreateMissionResponse) {
    var bytes: [1964]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_mission_manager_msgsCreateMissionResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/CreateNetworkMap exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_mission_manager_msgsCreateNetworkMapRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_mission_manager_msgsCreateNetworkMapRequest,
) core.Observation(records.Ros1Clearpath_mission_manager_msgsCreateNetworkMapResponse) {
    var bytes: [1756]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_mission_manager_msgsCreateNetworkMapResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/CreateNetworkMission exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_mission_manager_msgsCreateNetworkMissionRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_mission_manager_msgsCreateNetworkMissionRequest,
) core.Observation(records.Ros1Clearpath_mission_manager_msgsCreateNetworkMissionResponse) {
    var bytes: [2234]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_mission_manager_msgsCreateNetworkMissionResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/CreatePointOfInterest exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_mission_manager_msgsCreatePointOfInterestRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_mission_manager_msgsCreatePointOfInterestRequest,
) core.Observation(records.Ros1Clearpath_mission_manager_msgsCreatePointOfInterestResponse) {
    var bytes: [949]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_mission_manager_msgsCreatePointOfInterestResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/CreateTask exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_mission_manager_msgsCreateTaskRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_mission_manager_msgsCreateTaskRequest,
) core.Observation(records.Ros1Clearpath_mission_manager_msgsCreateTaskResponse) {
    var bytes: [2769]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_mission_manager_msgsCreateTaskResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/CreateWaypoint exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_mission_manager_msgsCreateWaypointRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_mission_manager_msgsCreateWaypointRequest,
) core.Observation(records.Ros1Clearpath_mission_manager_msgsCreateWaypointResponse) {
    var bytes: [1220]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_mission_manager_msgsCreateWaypointResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/CreateWaypointFromPoi exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_mission_manager_msgsCreateWaypointFromPoiRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_mission_manager_msgsCreateWaypointFromPoiRequest,
) core.Observation(records.Ros1Clearpath_mission_manager_msgsCreateWaypointFromPoiResponse) {
    var bytes: [1209]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_mission_manager_msgsCreateWaypointFromPoiResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/DeleteById exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_mission_manager_msgsDeleteByIdRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_mission_manager_msgsDeleteByIdRequest,
) core.Observation(records.Ros1Clearpath_mission_manager_msgsDeleteByIdResponse) {
    var bytes: [260]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_mission_manager_msgsDeleteByIdResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/DeleteEverything exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_mission_manager_msgsDeleteEverythingRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_mission_manager_msgsDeleteEverythingRequest,
) core.Observation(records.Ros1Clearpath_mission_manager_msgsDeleteEverythingResponse) {
    var bytes: [1]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_mission_manager_msgsDeleteEverythingResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/DeleteMultiple exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_mission_manager_msgsDeleteMultipleRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_mission_manager_msgsDeleteMultipleRequest,
) core.Observation(records.Ros1Clearpath_mission_manager_msgsDeleteMultipleResponse) {
    var bytes: [784]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_mission_manager_msgsDeleteMultipleResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/ExportData exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_mission_manager_msgsExportDataRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_mission_manager_msgsExportDataRequest,
) core.Observation(records.Ros1Clearpath_mission_manager_msgsExportDataResponse) {
    var bytes: [0]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_mission_manager_msgsExportDataResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/GetAllMissions exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_mission_manager_msgsGetAllMissionsRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_mission_manager_msgsGetAllMissionsRequest,
) core.Observation(records.Ros1Clearpath_mission_manager_msgsGetAllMissionsResponse) {
    var bytes: [0]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_mission_manager_msgsGetAllMissionsResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/GetAllNetworkMaps exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_mission_manager_msgsGetAllNetworkMapsRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_mission_manager_msgsGetAllNetworkMapsRequest,
) core.Observation(records.Ros1Clearpath_mission_manager_msgsGetAllNetworkMapsResponse) {
    var bytes: [0]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_mission_manager_msgsGetAllNetworkMapsResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/GetAllNetworkMissions exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_mission_manager_msgsGetAllNetworkMissionsRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_mission_manager_msgsGetAllNetworkMissionsRequest,
) core.Observation(records.Ros1Clearpath_mission_manager_msgsGetAllNetworkMissionsResponse) {
    var bytes: [0]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_mission_manager_msgsGetAllNetworkMissionsResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/GetAllPointsOfInterest exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_mission_manager_msgsGetAllPointsOfInterestRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_mission_manager_msgsGetAllPointsOfInterestRequest,
) core.Observation(records.Ros1Clearpath_mission_manager_msgsGetAllPointsOfInterestResponse) {
    var bytes: [0]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_mission_manager_msgsGetAllPointsOfInterestResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/GetAllTasks exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_mission_manager_msgsGetAllTasksRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_mission_manager_msgsGetAllTasksRequest,
) core.Observation(records.Ros1Clearpath_mission_manager_msgsGetAllTasksResponse) {
    var bytes: [0]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_mission_manager_msgsGetAllTasksResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/GetAllWaypoints exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_mission_manager_msgsGetAllWaypointsRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_mission_manager_msgsGetAllWaypointsRequest,
) core.Observation(records.Ros1Clearpath_mission_manager_msgsGetAllWaypointsResponse) {
    var bytes: [0]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_mission_manager_msgsGetAllWaypointsResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/GetEverything exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_mission_manager_msgsGetEverythingRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_mission_manager_msgsGetEverythingRequest,
) core.Observation(records.Ros1Clearpath_mission_manager_msgsGetEverythingResponse) {
    var bytes: [0]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_mission_manager_msgsGetEverythingResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/GetMission exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_mission_manager_msgsGetMissionRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_mission_manager_msgsGetMissionRequest,
) core.Observation(records.Ros1Clearpath_mission_manager_msgsGetMissionResponse) {
    var bytes: [260]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_mission_manager_msgsGetMissionResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/GetNetworkMap exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_mission_manager_msgsGetNetworkMapRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_mission_manager_msgsGetNetworkMapRequest,
) core.Observation(records.Ros1Clearpath_mission_manager_msgsGetNetworkMapResponse) {
    var bytes: [260]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_mission_manager_msgsGetNetworkMapResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/GetNetworkMission exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_mission_manager_msgsGetNetworkMissionRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_mission_manager_msgsGetNetworkMissionRequest,
) core.Observation(records.Ros1Clearpath_mission_manager_msgsGetNetworkMissionResponse) {
    var bytes: [260]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_mission_manager_msgsGetNetworkMissionResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/GetPointOfInterest exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_mission_manager_msgsGetPointOfInterestRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_mission_manager_msgsGetPointOfInterestRequest,
) core.Observation(records.Ros1Clearpath_mission_manager_msgsGetPointOfInterestResponse) {
    var bytes: [260]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_mission_manager_msgsGetPointOfInterestResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/GetTask exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_mission_manager_msgsGetTaskRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_mission_manager_msgsGetTaskRequest,
) core.Observation(records.Ros1Clearpath_mission_manager_msgsGetTaskResponse) {
    var bytes: [260]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_mission_manager_msgsGetTaskResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/GetWaypoint exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_mission_manager_msgsGetWaypointRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_mission_manager_msgsGetWaypointRequest,
) core.Observation(records.Ros1Clearpath_mission_manager_msgsGetWaypointResponse) {
    var bytes: [260]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_mission_manager_msgsGetWaypointResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/ImportData exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_mission_manager_msgsImportDataRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_mission_manager_msgsImportDataRequest,
) core.Observation(records.Ros1Clearpath_mission_manager_msgsImportDataResponse) {
    var bytes: [260]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_mission_manager_msgsImportDataResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/ImportMission exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_mission_manager_msgsImportMissionRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_mission_manager_msgsImportMissionRequest,
) core.Observation(records.Ros1Clearpath_mission_manager_msgsImportMissionResponse) {
    var bytes: [13336]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_mission_manager_msgsImportMissionResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/ImportNetworkMap exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_mission_manager_msgsImportNetworkMapRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_mission_manager_msgsImportNetworkMapRequest,
) core.Observation(records.Ros1Clearpath_mission_manager_msgsImportNetworkMapResponse) {
    var bytes: [2608]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_mission_manager_msgsImportNetworkMapResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/ImportNetworkMission exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_mission_manager_msgsImportNetworkMissionRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_mission_manager_msgsImportNetworkMissionRequest,
) core.Observation(records.Ros1Clearpath_mission_manager_msgsImportNetworkMissionResponse) {
    var bytes: [13606]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_mission_manager_msgsImportNetworkMissionResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/SplitNetworkEdge exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_mission_manager_msgsSplitNetworkEdgeRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_mission_manager_msgsSplitNetworkEdgeRequest,
) core.Observation(records.Ros1Clearpath_mission_manager_msgsSplitNetworkEdgeResponse) {
    var bytes: [537]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_mission_manager_msgsSplitNetworkEdgeResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/UpdateMission exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_mission_manager_msgsUpdateMissionRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_mission_manager_msgsUpdateMissionRequest,
) core.Observation(records.Ros1Clearpath_mission_manager_msgsUpdateMissionResponse) {
    var bytes: [2224]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_mission_manager_msgsUpdateMissionResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/UpdateNetworkEdge exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_mission_manager_msgsUpdateNetworkEdgeRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_mission_manager_msgsUpdateNetworkEdgeRequest,
) core.Observation(records.Ros1Clearpath_mission_manager_msgsUpdateNetworkEdgeResponse) {
    var bytes: [1052]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_mission_manager_msgsUpdateNetworkEdgeResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/UpdateNetworkEdges exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_mission_manager_msgsUpdateNetworkEdgesRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_mission_manager_msgsUpdateNetworkEdgesRequest,
) core.Observation(records.Ros1Clearpath_mission_manager_msgsUpdateNetworkEdgesResponse) {
    var bytes: [820]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_mission_manager_msgsUpdateNetworkEdgesResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/UpdateNetworkMap exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_mission_manager_msgsUpdateNetworkMapRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_mission_manager_msgsUpdateNetworkMapRequest,
) core.Observation(records.Ros1Clearpath_mission_manager_msgsUpdateNetworkMapResponse) {
    var bytes: [400]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_mission_manager_msgsUpdateNetworkMapResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/UpdateNetworkMission exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_mission_manager_msgsUpdateNetworkMissionRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_mission_manager_msgsUpdateNetworkMissionRequest,
) core.Observation(records.Ros1Clearpath_mission_manager_msgsUpdateNetworkMissionResponse) {
    var bytes: [2494]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_mission_manager_msgsUpdateNetworkMissionResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/UpdateNetworkPoint exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_mission_manager_msgsUpdateNetworkPointRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_mission_manager_msgsUpdateNetworkPointRequest,
) core.Observation(records.Ros1Clearpath_mission_manager_msgsUpdateNetworkPointResponse) {
    var bytes: [536]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_mission_manager_msgsUpdateNetworkPointResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/UpdateNetworkPoints exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_mission_manager_msgsUpdateNetworkPointsRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_mission_manager_msgsUpdateNetworkPointsRequest,
) core.Observation(records.Ros1Clearpath_mission_manager_msgsUpdateNetworkPointsResponse) {
    var bytes: [824]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_mission_manager_msgsUpdateNetworkPointsResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/UpdatePointOfInterest exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_mission_manager_msgsUpdatePointOfInterestRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_mission_manager_msgsUpdatePointOfInterestRequest,
) core.Observation(records.Ros1Clearpath_mission_manager_msgsUpdatePointOfInterestResponse) {
    var bytes: [1209]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_mission_manager_msgsUpdatePointOfInterestResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/UpdateTask exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_mission_manager_msgsUpdateTaskRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_mission_manager_msgsUpdateTaskRequest,
) core.Observation(records.Ros1Clearpath_mission_manager_msgsUpdateTaskResponse) {
    var bytes: [1457]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_mission_manager_msgsUpdateTaskResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/UpdateWaypoint exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_mission_manager_msgsUpdateWaypointRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_mission_manager_msgsUpdateWaypointRequest,
) core.Observation(records.Ros1Clearpath_mission_manager_msgsUpdateWaypointResponse) {
    var bytes: [956]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_mission_manager_msgsUpdateWaypointResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/ValidateNetworkMap exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_mission_manager_msgsValidateNetworkMapRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_mission_manager_msgsValidateNetworkMapRequest,
) core.Observation(records.Ros1Clearpath_mission_manager_msgsValidateNetworkMapResponse) {
    var bytes: [260]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_mission_manager_msgsValidateNetworkMapResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_mission_scheduler_msgs/CloneSchedule exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_mission_scheduler_msgsCloneScheduleRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_mission_scheduler_msgsCloneScheduleRequest,
) core.Observation(records.Ros1Clearpath_mission_scheduler_msgsCloneScheduleResponse) {
    var bytes: [520]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_mission_scheduler_msgsCloneScheduleResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_mission_scheduler_msgs/CreateSchedule exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_mission_scheduler_msgsCreateScheduleRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_mission_scheduler_msgsCreateScheduleRequest,
) core.Observation(records.Ros1Clearpath_mission_scheduler_msgsCreateScheduleResponse) {
    var bytes: [684]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_mission_scheduler_msgsCreateScheduleResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_mission_scheduler_msgs/EnableSchedule exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_mission_scheduler_msgsEnableScheduleRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_mission_scheduler_msgsEnableScheduleRequest,
) core.Observation(records.Ros1Clearpath_mission_scheduler_msgsEnableScheduleResponse) {
    var bytes: [261]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_mission_scheduler_msgsEnableScheduleResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_mission_scheduler_msgs/ExportData exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_mission_scheduler_msgsExportDataRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_mission_scheduler_msgsExportDataRequest,
) core.Observation(records.Ros1Clearpath_mission_scheduler_msgsExportDataResponse) {
    var bytes: [0]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_mission_scheduler_msgsExportDataResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_mission_scheduler_msgs/GetAllSchedules exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_mission_scheduler_msgsGetAllSchedulesRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_mission_scheduler_msgsGetAllSchedulesRequest,
) core.Observation(records.Ros1Clearpath_mission_scheduler_msgsGetAllSchedulesResponse) {
    var bytes: [0]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_mission_scheduler_msgsGetAllSchedulesResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_mission_scheduler_msgs/GetNextSchedule exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_mission_scheduler_msgsGetNextScheduleRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_mission_scheduler_msgsGetNextScheduleRequest,
) core.Observation(records.Ros1Clearpath_mission_scheduler_msgsGetNextScheduleResponse) {
    var bytes: [0]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_mission_scheduler_msgsGetNextScheduleResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_mission_scheduler_msgs/GetSchedule exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_mission_scheduler_msgsGetScheduleRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_mission_scheduler_msgsGetScheduleRequest,
) core.Observation(records.Ros1Clearpath_mission_scheduler_msgsGetScheduleResponse) {
    var bytes: [260]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_mission_scheduler_msgsGetScheduleResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_mission_scheduler_msgs/ImportData exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_mission_scheduler_msgsImportDataRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_mission_scheduler_msgsImportDataRequest,
) core.Observation(records.Ros1Clearpath_mission_scheduler_msgsImportDataResponse) {
    var bytes: [260]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_mission_scheduler_msgsImportDataResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_mission_scheduler_msgs/UpdateSchedule exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_mission_scheduler_msgsUpdateScheduleRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_mission_scheduler_msgsUpdateScheduleRequest,
) core.Observation(records.Ros1Clearpath_mission_scheduler_msgsUpdateScheduleResponse) {
    var bytes: [944]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_mission_scheduler_msgsUpdateScheduleResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_navigation_msgs/AutonomyTaskSrv exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_navigation_msgsAutonomyTaskSrvRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_navigation_msgsAutonomyTaskSrvRequest,
) core.Observation(records.Ros1Clearpath_navigation_msgsAutonomyTaskSrvResponse) {
    var bytes: [804]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_navigation_msgsAutonomyTaskSrvResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_navigation_msgs/SetDelayCompensation exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_navigation_msgsSetDelayCompensationRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_navigation_msgsSetDelayCompensationRequest,
) core.Observation(records.Ros1Clearpath_navigation_msgsSetDelayCompensationResponse) {
    var bytes: [3]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_navigation_msgsSetDelayCompensationResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_navigation_msgs/SetPathShifter exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_navigation_msgsSetPathShifterRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_navigation_msgsSetPathShifterRequest,
) core.Observation(records.Ros1Clearpath_navigation_msgsSetPathShifterResponse) {
    var bytes: [9]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_navigation_msgsSetPathShifterResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_navigation_msgs/SetPathSmoother exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_navigation_msgsSetPathSmootherRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_navigation_msgsSetPathSmootherRequest,
) core.Observation(records.Ros1Clearpath_navigation_msgsSetPathSmootherResponse) {
    var bytes: [9]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_navigation_msgsSetPathSmootherResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_navigation_msgs/SetStopDistance exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_navigation_msgsSetStopDistanceRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_navigation_msgsSetStopDistanceRequest,
) core.Observation(records.Ros1Clearpath_navigation_msgsSetStopDistanceResponse) {
    var bytes: [5]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_navigation_msgsSetStopDistanceResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_safety_msgs/AddCommunicationWatchdog exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_safety_msgsAddCommunicationWatchdogRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_safety_msgsAddCommunicationWatchdogRequest,
) core.Observation(records.Ros1Clearpath_safety_msgsAddCommunicationWatchdogResponse) {
    var bytes: [1961]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_safety_msgsAddCommunicationWatchdogResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_safety_msgs/AddHeartbeatWatchdog exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_safety_msgsAddHeartbeatWatchdogRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_safety_msgsAddHeartbeatWatchdogRequest,
) core.Observation(records.Ros1Clearpath_safety_msgsAddHeartbeatWatchdogResponse) {
    var bytes: [1441]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_safety_msgsAddHeartbeatWatchdogResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_safety_msgs/AddInclinationWatchdog exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_safety_msgsAddInclinationWatchdogRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_safety_msgsAddInclinationWatchdogRequest,
) core.Observation(records.Ros1Clearpath_safety_msgsAddInclinationWatchdogResponse) {
    var bytes: [1449]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_safety_msgsAddInclinationWatchdogResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_safety_msgs/AddNodeStatusWatchdog exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_safety_msgsAddNodeStatusWatchdogRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_safety_msgsAddNodeStatusWatchdogRequest,
) core.Observation(records.Ros1Clearpath_safety_msgsAddNodeStatusWatchdogResponse) {
    var bytes: [1438]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_safety_msgsAddNodeStatusWatchdogResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_safety_msgs/AddNodeletStatusWatchdog exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_safety_msgsAddNodeletStatusWatchdogRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_safety_msgsAddNodeletStatusWatchdogRequest,
) core.Observation(records.Ros1Clearpath_safety_msgsAddNodeletStatusWatchdogResponse) {
    var bytes: [1698]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_safety_msgsAddNodeletStatusWatchdogResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_safety_msgs/AddNumPointsWatchdog exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_safety_msgsAddNumPointsWatchdogRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_safety_msgsAddNumPointsWatchdogRequest,
) core.Observation(records.Ros1Clearpath_safety_msgsAddNumPointsWatchdogResponse) {
    var bytes: [1441]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_safety_msgsAddNumPointsWatchdogResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_safety_msgs/AddOdomCovarianceWatchdog exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_safety_msgsAddOdomCovarianceWatchdogRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_safety_msgsAddOdomCovarianceWatchdogRequest,
) core.Observation(records.Ros1Clearpath_safety_msgsAddOdomCovarianceWatchdogResponse) {
    var bytes: [1449]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_safety_msgsAddOdomCovarianceWatchdogResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_safety_msgs/AddRtkFixWatchdog exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_safety_msgsAddRtkFixWatchdogRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_safety_msgsAddRtkFixWatchdogRequest,
) core.Observation(records.Ros1Clearpath_safety_msgsAddRtkFixWatchdogResponse) {
    var bytes: [1443]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_safety_msgsAddRtkFixWatchdogResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_safety_msgs/AddTopicDataWatchdog exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_safety_msgsAddTopicDataWatchdogRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_safety_msgsAddTopicDataWatchdogRequest,
) core.Observation(records.Ros1Clearpath_safety_msgsAddTopicDataWatchdogResponse) {
    var bytes: [1441]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_safety_msgsAddTopicDataWatchdogResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_safety_msgs/RemoveWatchdog exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_safety_msgsRemoveWatchdogRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_safety_msgsRemoveWatchdogRequest,
) core.Observation(records.Ros1Clearpath_safety_msgsRemoveWatchdogResponse) {
    var bytes: [132]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_safety_msgsRemoveWatchdogResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_safety_msgs/UpdateCommunicationWatchdog exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_safety_msgsUpdateCommunicationWatchdogRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_safety_msgsUpdateCommunicationWatchdogRequest,
) core.Observation(records.Ros1Clearpath_safety_msgsUpdateCommunicationWatchdogResponse) {
    var bytes: [2221]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_safety_msgsUpdateCommunicationWatchdogResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_safety_msgs/UpdateHeartbeatWatchdog exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_safety_msgsUpdateHeartbeatWatchdogRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_safety_msgsUpdateHeartbeatWatchdogRequest,
) core.Observation(records.Ros1Clearpath_safety_msgsUpdateHeartbeatWatchdogResponse) {
    var bytes: [1701]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_safety_msgsUpdateHeartbeatWatchdogResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_safety_msgs/UpdateInclinationWatchdog exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_safety_msgsUpdateInclinationWatchdogRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_safety_msgsUpdateInclinationWatchdogRequest,
) core.Observation(records.Ros1Clearpath_safety_msgsUpdateInclinationWatchdogResponse) {
    var bytes: [1709]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_safety_msgsUpdateInclinationWatchdogResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_safety_msgs/UpdateNodeStatusWatchdog exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_safety_msgsUpdateNodeStatusWatchdogRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_safety_msgsUpdateNodeStatusWatchdogRequest,
) core.Observation(records.Ros1Clearpath_safety_msgsUpdateNodeStatusWatchdogResponse) {
    var bytes: [1698]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_safety_msgsUpdateNodeStatusWatchdogResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_safety_msgs/UpdateNodeletStatusWatchdog exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_safety_msgsUpdateNodeletStatusWatchdogRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_safety_msgsUpdateNodeletStatusWatchdogRequest,
) core.Observation(records.Ros1Clearpath_safety_msgsUpdateNodeletStatusWatchdogResponse) {
    var bytes: [1958]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_safety_msgsUpdateNodeletStatusWatchdogResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_safety_msgs/UpdateNumPointsWatchdog exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_safety_msgsUpdateNumPointsWatchdogRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_safety_msgsUpdateNumPointsWatchdogRequest,
) core.Observation(records.Ros1Clearpath_safety_msgsUpdateNumPointsWatchdogResponse) {
    var bytes: [1701]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_safety_msgsUpdateNumPointsWatchdogResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_safety_msgs/UpdateOdomCovarianceWatchdog exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_safety_msgsUpdateOdomCovarianceWatchdogRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_safety_msgsUpdateOdomCovarianceWatchdogRequest,
) core.Observation(records.Ros1Clearpath_safety_msgsUpdateOdomCovarianceWatchdogResponse) {
    var bytes: [1709]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_safety_msgsUpdateOdomCovarianceWatchdogResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_safety_msgs/UpdateRtkFixWatchdog exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_safety_msgsUpdateRtkFixWatchdogRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_safety_msgsUpdateRtkFixWatchdogRequest,
) core.Observation(records.Ros1Clearpath_safety_msgsUpdateRtkFixWatchdogResponse) {
    var bytes: [1703]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_safety_msgsUpdateRtkFixWatchdogResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}

/// @brief Call complete clearpath_safety_msgs/UpdateTopicDataWatchdog exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
pub fn callRos1Clearpath_safety_msgsUpdateTopicDataWatchdogRequest(
    aliasBytes: []const u8,
    requestValue: *const records.Ros1Clearpath_safety_msgsUpdateTopicDataWatchdogRequest,
) core.Observation(records.Ros1Clearpath_safety_msgsUpdateTopicDataWatchdogResponse) {
    var bytes: [1701]u8 = @splat(0);
    var owned_request = requestValue.*;
    const size = wire.encode(&owned_request, &bytes) catch return .{ .primary = 22 };
    const result = core.request(records.Ros1Clearpath_safety_msgsUpdateTopicDataWatchdogResponse, aliasBytes, 1, bytes[0..size]);
    return result;
}
