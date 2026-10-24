/// @file observation.d
/// @brief Typed complete clearpath observers and service clients.
module clearpath.d.ros1.observation;
public
import native.d.observation;
import native.d.wire;
public
import clearpath.d.ros1.records;
/// @brief Observe every original clearpath_configuration_msgs/AutonomyConfig field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_configuration_msgsAutonomyConfig waitRos1Clearpath_configuration_msgsAutonomyConfig(
    const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Clearpath_configuration_msgsAutonomyConfig(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_configuration_msgs/PlatformConfig field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_configuration_msgsPlatformConfig waitRos1Clearpath_configuration_msgsPlatformConfig(
    const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Clearpath_configuration_msgsPlatformConfig(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_control_msgs/AutonomySync field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_control_msgsAutonomySync waitRos1Clearpath_control_msgsAutonomySync(
    const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Clearpath_control_msgsAutonomySync(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_control_msgs/ControlMode field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_control_msgsControlMode waitRos1Clearpath_control_msgsControlMode(
    const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Clearpath_control_msgsControlMode(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_control_msgs/ControlSelectionState field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_control_msgsControlSelectionState waitRos1Clearpath_control_msgsControlSelectionState(
    const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Clearpath_control_msgsControlSelectionState(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_control_msgs/ControlState field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_control_msgsControlState waitRos1Clearpath_control_msgsControlState(
    const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Clearpath_control_msgsControlState(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_dock_msgs/DockInfo field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_dock_msgsDockInfo waitRos1Clearpath_dock_msgsDockInfo(const(ubyte)[] aliasBytes,
                                                                                 uint attempts) @nogc nothrow
{
    return receive !Ros1Clearpath_dock_msgsDockInfo(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_dock_msgs/DockProperties field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_dock_msgsDockProperties waitRos1Clearpath_dock_msgsDockProperties(
    const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Clearpath_dock_msgsDockProperties(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_dock_msgs/DockState field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_dock_msgsDockState waitRos1Clearpath_dock_msgsDockState(const(ubyte)[] aliasBytes,
                                                                                   uint attempts) @nogc nothrow
{
    return receive !Ros1Clearpath_dock_msgsDockState(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_dock_msgs/TargetTrackerState field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_dock_msgsTargetTrackerState waitRos1Clearpath_dock_msgsTargetTrackerState(
    const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Clearpath_dock_msgsTargetTrackerState(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_localization_msgs/GNSSStatus field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_localization_msgsGNSSStatus waitRos1Clearpath_localization_msgsGNSSStatus(
    const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Clearpath_localization_msgsGNSSStatus(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_localization_msgs/LocalizationStatus field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_localization_msgsLocalizationStatus waitRos1Clearpath_localization_msgsLocalizationStatus(
    const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Clearpath_localization_msgsLocalizationStatus(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_localization_msgs/SurveyProperties field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_localization_msgsSurveyProperties waitRos1Clearpath_localization_msgsSurveyProperties(
    const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Clearpath_localization_msgsSurveyProperties(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_localization_msgs/XvnStatus field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_localization_msgsXvnStatus waitRos1Clearpath_localization_msgsXvnStatus(
    const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Clearpath_localization_msgsXvnStatus(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_logger_msgs/Event field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_logger_msgsEvent waitRos1Clearpath_logger_msgsEvent(const(ubyte)[] aliasBytes, uint attempts)
    @nogc nothrow
{
    return receive !Ros1Clearpath_logger_msgsEvent(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_logger_msgs/EventLog field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_logger_msgsEventLog waitRos1Clearpath_logger_msgsEventLog(const(ubyte)[] aliasBytes,
                                                                                     uint attempts) @nogc nothrow
{
    return receive !Ros1Clearpath_logger_msgsEventLog(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_logger_msgs/EventLogs field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_logger_msgsEventLogs waitRos1Clearpath_logger_msgsEventLogs(const(ubyte)[] aliasBytes,
                                                                                       uint attempts) @nogc nothrow
{
    return receive !Ros1Clearpath_logger_msgsEventLogs(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_mission_manager_msgs/NetworkEdgeReq field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_mission_manager_msgsNetworkEdgeReq waitRos1Clearpath_mission_manager_msgsNetworkEdgeReq(
    const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Clearpath_mission_manager_msgsNetworkEdgeReq(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_mission_manager_msgs/NetworkMapState field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_mission_manager_msgsNetworkMapState waitRos1Clearpath_mission_manager_msgsNetworkMapState(
    const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Clearpath_mission_manager_msgsNetworkMapState(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_mission_manager_msgs/NetworkMapValidityState field through one retained
/// owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_mission_manager_msgsNetworkMapValidityState
waitRos1Clearpath_mission_manager_msgsNetworkMapValidityState(const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Clearpath_mission_manager_msgsNetworkMapValidityState(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_mission_manager_msgs/StorageState field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_mission_manager_msgsStorageState waitRos1Clearpath_mission_manager_msgsStorageState(
    const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Clearpath_mission_manager_msgsStorageState(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_mission_scheduler_msgs/NextSchedule field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_mission_scheduler_msgsNextSchedule waitRos1Clearpath_mission_scheduler_msgsNextSchedule(
    const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Clearpath_mission_scheduler_msgsNextSchedule(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_mission_scheduler_msgs/Schedule field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_mission_scheduler_msgsSchedule waitRos1Clearpath_mission_scheduler_msgsSchedule(
    const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Clearpath_mission_scheduler_msgsSchedule(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_mission_scheduler_msgs/StorageState field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_mission_scheduler_msgsStorageState waitRos1Clearpath_mission_scheduler_msgsStorageState(
    const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Clearpath_mission_scheduler_msgsStorageState(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_mission_scheduler_msgs/UtcTime field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_mission_scheduler_msgsUtcTime waitRos1Clearpath_mission_scheduler_msgsUtcTime(
    const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Clearpath_mission_scheduler_msgsUtcTime(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_navigation_msgs/AutonomyStatus field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_navigation_msgsAutonomyStatus waitRos1Clearpath_navigation_msgsAutonomyStatus(
    const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Clearpath_navigation_msgsAutonomyStatus(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_navigation_msgs/DistanceToGoal field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_navigation_msgsDistanceToGoal waitRos1Clearpath_navigation_msgsDistanceToGoal(
    const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Clearpath_navigation_msgsDistanceToGoal(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_navigation_msgs/Metrics field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_navigation_msgsMetrics waitRos1Clearpath_navigation_msgsMetrics(const(ubyte)[] aliasBytes,
                                                                                           uint attempts) @nogc nothrow
{
    return receive !Ros1Clearpath_navigation_msgsMetrics(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_navigation_msgs/Mission field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_navigation_msgsMission waitRos1Clearpath_navigation_msgsMission(const(ubyte)[] aliasBytes,
                                                                                           uint attempts) @nogc nothrow
{
    return receive !Ros1Clearpath_navigation_msgsMission(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_navigation_msgs/MissionStatus field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_navigation_msgsMissionStatus waitRos1Clearpath_navigation_msgsMissionStatus(
    const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Clearpath_navigation_msgsMissionStatus(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_navigation_msgs/MotionState field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_navigation_msgsMotionState waitRos1Clearpath_navigation_msgsMotionState(
    const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Clearpath_navigation_msgsMotionState(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_navigation_msgs/NavigationState field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_navigation_msgsNavigationState waitRos1Clearpath_navigation_msgsNavigationState(
    const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Clearpath_navigation_msgsNavigationState(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_navigation_msgs/NetworkEdge field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_navigation_msgsNetworkEdge waitRos1Clearpath_navigation_msgsNetworkEdge(
    const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Clearpath_navigation_msgsNetworkEdge(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_navigation_msgs/NetworkGoalState field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_navigation_msgsNetworkGoalState waitRos1Clearpath_navigation_msgsNetworkGoalState(
    const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Clearpath_navigation_msgsNetworkGoalState(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_navigation_msgs/NetworkMap field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_navigation_msgsNetworkMap waitRos1Clearpath_navigation_msgsNetworkMap(
    const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Clearpath_navigation_msgsNetworkMap(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_navigation_msgs/NetworkMission field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_navigation_msgsNetworkMission waitRos1Clearpath_navigation_msgsNetworkMission(
    const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Clearpath_navigation_msgsNetworkMission(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_navigation_msgs/NetworkMissionSegment field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_navigation_msgsNetworkMissionSegment waitRos1Clearpath_navigation_msgsNetworkMissionSegment(
    const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Clearpath_navigation_msgsNetworkMissionSegment(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_navigation_msgs/NetworkPoint field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_navigation_msgsNetworkPoint waitRos1Clearpath_navigation_msgsNetworkPoint(
    const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Clearpath_navigation_msgsNetworkPoint(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_navigation_msgs/OdomIntent field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_navigation_msgsOdomIntent waitRos1Clearpath_navigation_msgsOdomIntent(
    const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Clearpath_navigation_msgsOdomIntent(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_navigation_msgs/PointOfInterest field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_navigation_msgsPointOfInterest waitRos1Clearpath_navigation_msgsPointOfInterest(
    const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Clearpath_navigation_msgsPointOfInterest(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_navigation_msgs/PointVector field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_navigation_msgsPointVector waitRos1Clearpath_navigation_msgsPointVector(
    const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Clearpath_navigation_msgsPointVector(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_navigation_msgs/Progress field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_navigation_msgsProgress waitRos1Clearpath_navigation_msgsProgress(
    const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Clearpath_navigation_msgsProgress(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_navigation_msgs/ScanPoints field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_navigation_msgsScanPoints waitRos1Clearpath_navigation_msgsScanPoints(
    const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Clearpath_navigation_msgsScanPoints(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_navigation_msgs/Task field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_navigation_msgsTask waitRos1Clearpath_navigation_msgsTask(const(ubyte)[] aliasBytes,
                                                                                     uint attempts) @nogc nothrow
{
    return receive !Ros1Clearpath_navigation_msgsTask(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_navigation_msgs/TrackError field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_navigation_msgsTrackError waitRos1Clearpath_navigation_msgsTrackError(
    const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Clearpath_navigation_msgsTrackError(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_navigation_msgs/Vector2D field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_navigation_msgsVector2D waitRos1Clearpath_navigation_msgsVector2D(
    const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Clearpath_navigation_msgsVector2D(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_navigation_msgs/Vector2D64 field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_navigation_msgsVector2D64 waitRos1Clearpath_navigation_msgsVector2D64(
    const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Clearpath_navigation_msgsVector2D64(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_navigation_msgs/Waypoint field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_navigation_msgsWaypoint waitRos1Clearpath_navigation_msgsWaypoint(
    const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Clearpath_navigation_msgsWaypoint(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_navigation_msgs/WaypointStatus field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_navigation_msgsWaypointStatus waitRos1Clearpath_navigation_msgsWaypointStatus(
    const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Clearpath_navigation_msgsWaypointStatus(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_platform_msgs/Drive field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_platform_msgsDrive waitRos1Clearpath_platform_msgsDrive(const(ubyte)[] aliasBytes,
                                                                                   uint attempts) @nogc nothrow
{
    return receive !Ros1Clearpath_platform_msgsDrive(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_platform_msgs/DriveFeedback field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_platform_msgsDriveFeedback waitRos1Clearpath_platform_msgsDriveFeedback(
    const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Clearpath_platform_msgsDriveFeedback(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_platform_msgs/Fans field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_platform_msgsFans waitRos1Clearpath_platform_msgsFans(const(ubyte)[] aliasBytes,
                                                                                 uint attempts) @nogc nothrow
{
    return receive !Ros1Clearpath_platform_msgsFans(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_platform_msgs/Feedback field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_platform_msgsFeedback waitRos1Clearpath_platform_msgsFeedback(const(ubyte)[] aliasBytes,
                                                                                         uint attempts) @nogc nothrow
{
    return receive !Ros1Clearpath_platform_msgsFeedback(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_platform_msgs/Lights field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_platform_msgsLights waitRos1Clearpath_platform_msgsLights(const(ubyte)[] aliasBytes,
                                                                                     uint attempts) @nogc nothrow
{
    return receive !Ros1Clearpath_platform_msgsLights(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_platform_msgs/PlatformID field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_platform_msgsPlatformID waitRos1Clearpath_platform_msgsPlatformID(
    const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Clearpath_platform_msgsPlatformID(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_platform_msgs/Power field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_platform_msgsPower waitRos1Clearpath_platform_msgsPower(const(ubyte)[] aliasBytes,
                                                                                   uint attempts) @nogc nothrow
{
    return receive !Ros1Clearpath_platform_msgsPower(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_platform_msgs/RGB field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_platform_msgsRGB waitRos1Clearpath_platform_msgsRGB(const(ubyte)[] aliasBytes, uint attempts)
    @nogc nothrow
{
    return receive !Ros1Clearpath_platform_msgsRGB(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_platform_msgs/RYG field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_platform_msgsRYG waitRos1Clearpath_platform_msgsRYG(const(ubyte)[] aliasBytes, uint attempts)
    @nogc nothrow
{
    return receive !Ros1Clearpath_platform_msgsRYG(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_platform_msgs/StackLightState field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_platform_msgsStackLightState waitRos1Clearpath_platform_msgsStackLightState(
    const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Clearpath_platform_msgsStackLightState(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_platform_msgs/Status field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_platform_msgsStatus waitRos1Clearpath_platform_msgsStatus(const(ubyte)[] aliasBytes,
                                                                                     uint attempts) @nogc nothrow
{
    return receive !Ros1Clearpath_platform_msgsStatus(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_platform_msgs/StopStatus field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_platform_msgsStopStatus waitRos1Clearpath_platform_msgsStopStatus(
    const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Clearpath_platform_msgsStopStatus(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_safety_msgs/AssistedTeleopState field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_safety_msgsAssistedTeleopState waitRos1Clearpath_safety_msgsAssistedTeleopState(
    const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Clearpath_safety_msgsAssistedTeleopState(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_safety_msgs/ObstacleMap field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_safety_msgsObstacleMap waitRos1Clearpath_safety_msgsObstacleMap(const(ubyte)[] aliasBytes,
                                                                                           uint attempts) @nogc nothrow
{
    return receive !Ros1Clearpath_safety_msgsObstacleMap(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_safety_msgs/Safety field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_safety_msgsSafety waitRos1Clearpath_safety_msgsSafety(const(ubyte)[] aliasBytes,
                                                                                 uint attempts) @nogc nothrow
{
    return receive !Ros1Clearpath_safety_msgsSafety(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_safety_msgs/WatchdogConfigArray field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_safety_msgsWatchdogConfigArray waitRos1Clearpath_safety_msgsWatchdogConfigArray(
    const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Clearpath_safety_msgsWatchdogConfigArray(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_safety_msgs/WatchdogConfigCommon field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_safety_msgsWatchdogConfigCommon waitRos1Clearpath_safety_msgsWatchdogConfigCommon(
    const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Clearpath_safety_msgsWatchdogConfigCommon(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_safety_msgs/WatchdogConfigCommunication field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_safety_msgsWatchdogConfigCommunication
waitRos1Clearpath_safety_msgsWatchdogConfigCommunication(const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Clearpath_safety_msgsWatchdogConfigCommunication(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_safety_msgs/WatchdogConfigHeartbeat field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_safety_msgsWatchdogConfigHeartbeat waitRos1Clearpath_safety_msgsWatchdogConfigHeartbeat(
    const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Clearpath_safety_msgsWatchdogConfigHeartbeat(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_safety_msgs/WatchdogConfigInclination field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_safety_msgsWatchdogConfigInclination waitRos1Clearpath_safety_msgsWatchdogConfigInclination(
    const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Clearpath_safety_msgsWatchdogConfigInclination(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_safety_msgs/WatchdogConfigNodeStatus field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_safety_msgsWatchdogConfigNodeStatus waitRos1Clearpath_safety_msgsWatchdogConfigNodeStatus(
    const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Clearpath_safety_msgsWatchdogConfigNodeStatus(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_safety_msgs/WatchdogConfigNodeletStatus field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_safety_msgsWatchdogConfigNodeletStatus
waitRos1Clearpath_safety_msgsWatchdogConfigNodeletStatus(const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Clearpath_safety_msgsWatchdogConfigNodeletStatus(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_safety_msgs/WatchdogConfigNumPoints field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_safety_msgsWatchdogConfigNumPoints waitRos1Clearpath_safety_msgsWatchdogConfigNumPoints(
    const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Clearpath_safety_msgsWatchdogConfigNumPoints(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_safety_msgs/WatchdogConfigOdomCovariance field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_safety_msgsWatchdogConfigOdomCovariance
waitRos1Clearpath_safety_msgsWatchdogConfigOdomCovariance(const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Clearpath_safety_msgsWatchdogConfigOdomCovariance(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_safety_msgs/WatchdogConfigRtkFix field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_safety_msgsWatchdogConfigRtkFix waitRos1Clearpath_safety_msgsWatchdogConfigRtkFix(
    const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Clearpath_safety_msgsWatchdogConfigRtkFix(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_safety_msgs/WatchdogConfigTopicData field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_safety_msgsWatchdogConfigTopicData waitRos1Clearpath_safety_msgsWatchdogConfigTopicData(
    const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Clearpath_safety_msgsWatchdogConfigTopicData(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_safety_msgs/WatchdogStatus field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_safety_msgsWatchdogStatus waitRos1Clearpath_safety_msgsWatchdogStatus(
    const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Clearpath_safety_msgsWatchdogStatus(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_safety_msgs/WatchdogStatusArray field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Clearpath_safety_msgsWatchdogStatusArray waitRos1Clearpath_safety_msgsWatchdogStatusArray(
    const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Clearpath_safety_msgsWatchdogStatusArray(aliasBytes, attempts);
}

/// @brief Observe every original geometry_msgs/Point field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Geometry_msgsPoint waitRos1Geometry_msgsPoint(const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Geometry_msgsPoint(aliasBytes, attempts);
}

/// @brief Observe every original geometry_msgs/Pose field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Geometry_msgsPose waitRos1Geometry_msgsPose(const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Geometry_msgsPose(aliasBytes, attempts);
}

/// @brief Observe every original geometry_msgs/PoseStamped field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Geometry_msgsPoseStamped waitRos1Geometry_msgsPoseStamped(const(ubyte)[] aliasBytes, uint attempts)
    @nogc nothrow
{
    return receive !Ros1Geometry_msgsPoseStamped(aliasBytes, attempts);
}

/// @brief Observe every original geometry_msgs/PoseWithCovariance field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Geometry_msgsPoseWithCovariance waitRos1Geometry_msgsPoseWithCovariance(const(ubyte)[] aliasBytes,
                                                                                         uint attempts) @nogc nothrow
{
    return receive !Ros1Geometry_msgsPoseWithCovariance(aliasBytes, attempts);
}

/// @brief Observe every original geometry_msgs/PoseWithCovarianceStamped field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Geometry_msgsPoseWithCovarianceStamped waitRos1Geometry_msgsPoseWithCovarianceStamped(
    const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Geometry_msgsPoseWithCovarianceStamped(aliasBytes, attempts);
}

/// @brief Observe every original geometry_msgs/Quaternion field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Geometry_msgsQuaternion waitRos1Geometry_msgsQuaternion(const(ubyte)[] aliasBytes, uint attempts)
    @nogc nothrow
{
    return receive !Ros1Geometry_msgsQuaternion(aliasBytes, attempts);
}

/// @brief Observe every original geometry_msgs/Twist field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Geometry_msgsTwist waitRos1Geometry_msgsTwist(const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Geometry_msgsTwist(aliasBytes, attempts);
}

/// @brief Observe every original geometry_msgs/TwistWithCovariance field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Geometry_msgsTwistWithCovariance waitRos1Geometry_msgsTwistWithCovariance(const(ubyte)[] aliasBytes,
                                                                                           uint attempts) @nogc nothrow
{
    return receive !Ros1Geometry_msgsTwistWithCovariance(aliasBytes, attempts);
}

/// @brief Observe every original geometry_msgs/Vector3 field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Geometry_msgsVector3 waitRos1Geometry_msgsVector3(const(ubyte)[] aliasBytes, uint attempts)
    @nogc nothrow
{
    return receive !Ros1Geometry_msgsVector3(aliasBytes, attempts);
}

/// @brief Observe every original husky_msgs/HuskyStatus field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Husky_msgsHuskyStatus waitRos1Husky_msgsHuskyStatus(const(ubyte)[] aliasBytes, uint attempts)
    @nogc nothrow
{
    return receive !Ros1Husky_msgsHuskyStatus(aliasBytes, attempts);
}

/// @brief Observe every original jackal_msgs/Drive field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Jackal_msgsDrive waitRos1Jackal_msgsDrive(const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Jackal_msgsDrive(aliasBytes, attempts);
}

/// @brief Observe every original jackal_msgs/DriveFeedback field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Jackal_msgsDriveFeedback waitRos1Jackal_msgsDriveFeedback(const(ubyte)[] aliasBytes, uint attempts)
    @nogc nothrow
{
    return receive !Ros1Jackal_msgsDriveFeedback(aliasBytes, attempts);
}

/// @brief Observe every original jackal_msgs/Feedback field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Jackal_msgsFeedback waitRos1Jackal_msgsFeedback(const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Jackal_msgsFeedback(aliasBytes, attempts);
}

/// @brief Observe every original jackal_msgs/Status field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Jackal_msgsStatus waitRos1Jackal_msgsStatus(const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Jackal_msgsStatus(aliasBytes, attempts);
}

/// @brief Observe every original nav_msgs/Odometry field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Nav_msgsOdometry waitRos1Nav_msgsOdometry(const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Nav_msgsOdometry(aliasBytes, attempts);
}

/// @brief Observe every original nav_msgs/Path field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Nav_msgsPath waitRos1Nav_msgsPath(const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Nav_msgsPath(aliasBytes, attempts);
}

/// @brief Observe every original sensor_msgs/NavSatFix field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Sensor_msgsNavSatFix waitRos1Sensor_msgsNavSatFix(const(ubyte)[] aliasBytes, uint attempts)
    @nogc nothrow
{
    return receive !Ros1Sensor_msgsNavSatFix(aliasBytes, attempts);
}

/// @brief Observe every original sensor_msgs/NavSatStatus field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Sensor_msgsNavSatStatus waitRos1Sensor_msgsNavSatStatus(const(ubyte)[] aliasBytes, uint attempts)
    @nogc nothrow
{
    return receive !Ros1Sensor_msgsNavSatStatus(aliasBytes, attempts);
}

/// @brief Observe every original std_msgs/Duration field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Std_msgsDuration waitRos1Std_msgsDuration(const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Std_msgsDuration(aliasBytes, attempts);
}

/// @brief Observe every original std_msgs/Header field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Std_msgsHeader waitRos1Std_msgsHeader(const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Std_msgsHeader(aliasBytes, attempts);
}

/// @brief Observe every original std_msgs/String field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Std_msgsString waitRos1Std_msgsString(const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Std_msgsString(aliasBytes, attempts);
}

/// @brief Observe every original std_msgs/Time field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros1Std_msgsTime waitRos1Std_msgsTime(const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros1Std_msgsTime(aliasBytes, attempts);
}

/// @brief Call complete clearpath_camera_msgs/q62AreaZoom exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_camera_msgsQ62AreaZoomResponse callRos1Clearpath_camera_msgsQ62AreaZoomRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_camera_msgsQ62AreaZoomRequest) requestValue) @nogc nothrow
{
    Observation !Ros1Clearpath_camera_msgsQ62AreaZoomResponse result;
    ubyte[12] bytes;
    size_t written;
    Ros1Clearpath_camera_msgsQ62AreaZoomRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result =
        native.d.observation.request !Ros1Clearpath_camera_msgsQ62AreaZoomResponse(aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_control_msgs/SetControlMode exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_control_msgsSetControlModeResponse callRos1Clearpath_control_msgsSetControlModeRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_control_msgsSetControlModeRequest) requestValue) @nogc nothrow
{
    Observation !Ros1Clearpath_control_msgsSetControlModeResponse result;
    ubyte[1] bytes;
    size_t written;
    Ros1Clearpath_control_msgsSetControlModeRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_control_msgsSetControlModeResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_dock_msgs/AddDock exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_dock_msgsAddDockResponse callRos1Clearpath_dock_msgsAddDockRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_dock_msgsAddDockRequest) requestValue) @nogc nothrow
{
    Observation !Ros1Clearpath_dock_msgsAddDockResponse result;
    ubyte[1204] bytes;
    size_t written;
    Ros1Clearpath_dock_msgsAddDockRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_dock_msgsAddDockResponse(aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_dock_msgs/ExportData exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_dock_msgsExportDataResponse callRos1Clearpath_dock_msgsExportDataRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_dock_msgsExportDataRequest) requestValue) @nogc nothrow
{
    Observation !Ros1Clearpath_dock_msgsExportDataResponse result;
    ubyte[0] bytes;
    size_t written;
    Ros1Clearpath_dock_msgsExportDataRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_dock_msgsExportDataResponse(aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_dock_msgs/GetDockByUuid exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_dock_msgsGetDockByUuidResponse callRos1Clearpath_dock_msgsGetDockByUuidRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_dock_msgsGetDockByUuidRequest) requestValue) @nogc nothrow
{
    Observation !Ros1Clearpath_dock_msgsGetDockByUuidResponse result;
    ubyte[260] bytes;
    size_t written;
    Ros1Clearpath_dock_msgsGetDockByUuidRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result =
        native.d.observation.request !Ros1Clearpath_dock_msgsGetDockByUuidResponse(aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_dock_msgs/ImportData exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_dock_msgsImportDataResponse callRos1Clearpath_dock_msgsImportDataRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_dock_msgsImportDataRequest) requestValue) @nogc nothrow
{
    Observation !Ros1Clearpath_dock_msgsImportDataResponse result;
    ubyte[260] bytes;
    size_t written;
    Ros1Clearpath_dock_msgsImportDataRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_dock_msgsImportDataResponse(aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_dock_msgs/RemoveDock exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_dock_msgsRemoveDockResponse callRos1Clearpath_dock_msgsRemoveDockRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_dock_msgsRemoveDockRequest) requestValue) @nogc nothrow
{
    Observation !Ros1Clearpath_dock_msgsRemoveDockResponse result;
    ubyte[392] bytes;
    size_t written;
    Ros1Clearpath_dock_msgsRemoveDockRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_dock_msgsRemoveDockResponse(aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_dock_msgs/SetDockLocationById exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_dock_msgsSetDockLocationByIdResponse callRos1Clearpath_dock_msgsSetDockLocationByIdRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_dock_msgsSetDockLocationByIdRequest) requestValue) @nogc nothrow
{
    Observation !Ros1Clearpath_dock_msgsSetDockLocationByIdResponse result;
    ubyte[260] bytes;
    size_t written;
    Ros1Clearpath_dock_msgsSetDockLocationByIdRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_dock_msgsSetDockLocationByIdResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_dock_msgs/SetDockLocationByName exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_dock_msgsSetDockLocationByNameResponse
callRos1Clearpath_dock_msgsSetDockLocationByNameRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_dock_msgsSetDockLocationByNameRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_dock_msgsSetDockLocationByNameResponse result;
    ubyte[132] bytes;
    size_t written;
    Ros1Clearpath_dock_msgsSetDockLocationByNameRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_dock_msgsSetDockLocationByNameResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_localization_msgs/ConvertCartesianToLatLon exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_localization_msgsConvertCartesianToLatLonResponse
callRos1Clearpath_localization_msgsConvertCartesianToLatLonRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_localization_msgsConvertCartesianToLatLonRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_localization_msgsConvertCartesianToLatLonResponse result;
    ubyte[200] bytes;
    size_t written;
    Ros1Clearpath_localization_msgsConvertCartesianToLatLonRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_localization_msgsConvertCartesianToLatLonResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_localization_msgs/ConvertCartesianToLatLonArray exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_localization_msgsConvertCartesianToLatLonArrayResponse
callRos1Clearpath_localization_msgsConvertCartesianToLatLonArrayRequest(
    const(ubyte)[] aliasBytes,
    ref const(Ros1Clearpath_localization_msgsConvertCartesianToLatLonArrayRequest) requestValue) @nogc nothrow
{
    Observation !Ros1Clearpath_localization_msgsConvertCartesianToLatLonArrayResponse result;
    ubyte[404] bytes;
    size_t written;
    Ros1Clearpath_localization_msgsConvertCartesianToLatLonArrayRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_localization_msgsConvertCartesianToLatLonArrayResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_localization_msgs/ConvertLatLonToCartesian exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_localization_msgsConvertLatLonToCartesianResponse
callRos1Clearpath_localization_msgsConvertLatLonToCartesianRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_localization_msgsConvertLatLonToCartesianRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_localization_msgsConvertLatLonToCartesianResponse result;
    ubyte[244] bytes;
    size_t written;
    Ros1Clearpath_localization_msgsConvertLatLonToCartesianRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_localization_msgsConvertLatLonToCartesianResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_localization_msgs/ConvertLatLonToCartesianArray exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_localization_msgsConvertLatLonToCartesianArrayResponse
callRos1Clearpath_localization_msgsConvertLatLonToCartesianArrayRequest(
    const(ubyte)[] aliasBytes,
    ref const(Ros1Clearpath_localization_msgsConvertLatLonToCartesianArrayRequest) requestValue) @nogc nothrow
{
    Observation !Ros1Clearpath_localization_msgsConvertLatLonToCartesianArrayResponse result;
    ubyte[492] bytes;
    size_t written;
    Ros1Clearpath_localization_msgsConvertLatLonToCartesianArrayRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_localization_msgsConvertLatLonToCartesianArrayResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_localization_msgs/ResetLocalization exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_localization_msgsResetLocalizationResponse
callRos1Clearpath_localization_msgsResetLocalizationRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_localization_msgsResetLocalizationRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_localization_msgsResetLocalizationResponse result;
    ubyte[5] bytes;
    size_t written;
    Ros1Clearpath_localization_msgsResetLocalizationRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_localization_msgsResetLocalizationResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_localization_msgs/SetDatum exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_localization_msgsSetDatumResponse callRos1Clearpath_localization_msgsSetDatumRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_localization_msgsSetDatumRequest) requestValue) @nogc nothrow
{
    Observation !Ros1Clearpath_localization_msgsSetDatumResponse result;
    ubyte[8] bytes;
    size_t written;
    Ros1Clearpath_localization_msgsSetDatumRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_localization_msgsSetDatumResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_logger_msgs/DeleteLog exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_logger_msgsDeleteLogResponse callRos1Clearpath_logger_msgsDeleteLogRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_logger_msgsDeleteLogRequest) requestValue) @nogc nothrow
{
    Observation !Ros1Clearpath_logger_msgsDeleteLogResponse result;
    ubyte[262] bytes;
    size_t written;
    Ros1Clearpath_logger_msgsDeleteLogRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result =
        native.d.observation.request !Ros1Clearpath_logger_msgsDeleteLogResponse(aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_logger_msgs/DownloadLog exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_logger_msgsDownloadLogResponse callRos1Clearpath_logger_msgsDownloadLogRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_logger_msgsDownloadLogRequest) requestValue) @nogc nothrow
{
    Observation !Ros1Clearpath_logger_msgsDownloadLogResponse result;
    ubyte[260] bytes;
    size_t written;
    Ros1Clearpath_logger_msgsDownloadLogRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result =
        native.d.observation.request !Ros1Clearpath_logger_msgsDownloadLogResponse(aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_logger_msgs/GetAllLogs exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_logger_msgsGetAllLogsResponse callRos1Clearpath_logger_msgsGetAllLogsRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_logger_msgsGetAllLogsRequest) requestValue) @nogc nothrow
{
    Observation !Ros1Clearpath_logger_msgsGetAllLogsResponse result;
    ubyte[0] bytes;
    size_t written;
    Ros1Clearpath_logger_msgsGetAllLogsRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result =
        native.d.observation.request !Ros1Clearpath_logger_msgsGetAllLogsResponse(aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_logger_msgs/RecordCustomEvent exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_logger_msgsRecordCustomEventResponse callRos1Clearpath_logger_msgsRecordCustomEventRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_logger_msgsRecordCustomEventRequest) requestValue) @nogc nothrow
{
    Observation !Ros1Clearpath_logger_msgsRecordCustomEventResponse result;
    ubyte[916] bytes;
    size_t written;
    Ros1Clearpath_logger_msgsRecordCustomEventRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_logger_msgsRecordCustomEventResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_logger_msgs/RecordErrorEvent exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_logger_msgsRecordErrorEventResponse callRos1Clearpath_logger_msgsRecordErrorEventRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_logger_msgsRecordErrorEventRequest) requestValue) @nogc nothrow
{
    Observation !Ros1Clearpath_logger_msgsRecordErrorEventResponse result;
    ubyte[524] bytes;
    size_t written;
    Ros1Clearpath_logger_msgsRecordErrorEventRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_logger_msgsRecordErrorEventResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_logger_msgs/RecordEvent exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_logger_msgsRecordEventResponse callRos1Clearpath_logger_msgsRecordEventRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_logger_msgsRecordEventRequest) requestValue) @nogc nothrow
{
    Observation !Ros1Clearpath_logger_msgsRecordEventResponse result;
    ubyte[3190] bytes;
    size_t written;
    Ros1Clearpath_logger_msgsRecordEventRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result =
        native.d.observation.request !Ros1Clearpath_logger_msgsRecordEventResponse(aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_logger_msgs/RecordLocationEvent exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_logger_msgsRecordLocationEventResponse
callRos1Clearpath_logger_msgsRecordLocationEventRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_logger_msgsRecordLocationEventRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_logger_msgsRecordLocationEventResponse result;
    ubyte[1680] bytes;
    size_t written;
    Ros1Clearpath_logger_msgsRecordLocationEventRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_logger_msgsRecordLocationEventResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_logger_msgs/RecordMediaEvent exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_logger_msgsRecordMediaEventResponse callRos1Clearpath_logger_msgsRecordMediaEventRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_logger_msgsRecordMediaEventRequest) requestValue) @nogc nothrow
{
    Observation !Ros1Clearpath_logger_msgsRecordMediaEventResponse result;
    ubyte[652] bytes;
    size_t written;
    Ros1Clearpath_logger_msgsRecordMediaEventRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_logger_msgsRecordMediaEventResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_logger_msgs/RecordPowerEvent exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_logger_msgsRecordPowerEventResponse callRos1Clearpath_logger_msgsRecordPowerEventRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_logger_msgsRecordPowerEventRequest) requestValue) @nogc nothrow
{
    Observation !Ros1Clearpath_logger_msgsRecordPowerEventResponse result;
    ubyte[5] bytes;
    size_t written;
    Ros1Clearpath_logger_msgsRecordPowerEventRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_logger_msgsRecordPowerEventResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_logger_msgs/StartRecording exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_logger_msgsStartRecordingResponse callRos1Clearpath_logger_msgsStartRecordingRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_logger_msgsStartRecordingRequest) requestValue) @nogc nothrow
{
    Observation !Ros1Clearpath_logger_msgsStartRecordingResponse result;
    ubyte[132] bytes;
    size_t written;
    Ros1Clearpath_logger_msgsStartRecordingRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_logger_msgsStartRecordingResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_logger_msgs/StopRecording exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_logger_msgsStopRecordingResponse callRos1Clearpath_logger_msgsStopRecordingRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_logger_msgsStopRecordingRequest) requestValue) @nogc nothrow
{
    Observation !Ros1Clearpath_logger_msgsStopRecordingResponse result;
    ubyte[260] bytes;
    size_t written;
    Ros1Clearpath_logger_msgsStopRecordingRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result =
        native.d.observation.request !Ros1Clearpath_logger_msgsStopRecordingResponse(aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/AddNetworkEdge exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_mission_manager_msgsAddNetworkEdgeResponse
callRos1Clearpath_mission_manager_msgsAddNetworkEdgeRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_mission_manager_msgsAddNetworkEdgeRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_mission_manager_msgsAddNetworkEdgeResponse result;
    ubyte[793] bytes;
    size_t written;
    Ros1Clearpath_mission_manager_msgsAddNetworkEdgeRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_mission_manager_msgsAddNetworkEdgeResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/AddNetworkPath exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_mission_manager_msgsAddNetworkPathResponse
callRos1Clearpath_mission_manager_msgsAddNetworkPathRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_mission_manager_msgsAddNetworkPathRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_mission_manager_msgsAddNetworkPathResponse result;
    ubyte[301] bytes;
    size_t written;
    Ros1Clearpath_mission_manager_msgsAddNetworkPathRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_mission_manager_msgsAddNetworkPathResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/AddNetworkPoint exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_mission_manager_msgsAddNetworkPointResponse
callRos1Clearpath_mission_manager_msgsAddNetworkPointRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_mission_manager_msgsAddNetworkPointRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_mission_manager_msgsAddNetworkPointResponse result;
    ubyte[1325] bytes;
    size_t written;
    Ros1Clearpath_mission_manager_msgsAddNetworkPointRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_mission_manager_msgsAddNetworkPointResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/AddRemoveById exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_mission_manager_msgsAddRemoveByIdResponse
callRos1Clearpath_mission_manager_msgsAddRemoveByIdRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_mission_manager_msgsAddRemoveByIdRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_mission_manager_msgsAddRemoveByIdResponse result;
    ubyte[524] bytes;
    size_t written;
    Ros1Clearpath_mission_manager_msgsAddRemoveByIdRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_mission_manager_msgsAddRemoveByIdResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/AddRemoveTag exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_mission_manager_msgsAddRemoveTagResponse
callRos1Clearpath_mission_manager_msgsAddRemoveTagRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_mission_manager_msgsAddRemoveTagRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_mission_manager_msgsAddRemoveTagResponse result;
    ubyte[520] bytes;
    size_t written;
    Ros1Clearpath_mission_manager_msgsAddRemoveTagRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_mission_manager_msgsAddRemoveTagResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/CloneMission exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_mission_manager_msgsCloneMissionResponse
callRos1Clearpath_mission_manager_msgsCloneMissionRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_mission_manager_msgsCloneMissionRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_mission_manager_msgsCloneMissionResponse result;
    ubyte[521] bytes;
    size_t written;
    Ros1Clearpath_mission_manager_msgsCloneMissionRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_mission_manager_msgsCloneMissionResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/CloneNetworkMap exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_mission_manager_msgsCloneNetworkMapResponse
callRos1Clearpath_mission_manager_msgsCloneNetworkMapRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_mission_manager_msgsCloneNetworkMapRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_mission_manager_msgsCloneNetworkMapResponse result;
    ubyte[520] bytes;
    size_t written;
    Ros1Clearpath_mission_manager_msgsCloneNetworkMapRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_mission_manager_msgsCloneNetworkMapResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/CloneNetworkMission exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_mission_manager_msgsCloneNetworkMissionResponse
callRos1Clearpath_mission_manager_msgsCloneNetworkMissionRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_mission_manager_msgsCloneNetworkMissionRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_mission_manager_msgsCloneNetworkMissionResponse result;
    ubyte[521] bytes;
    size_t written;
    Ros1Clearpath_mission_manager_msgsCloneNetworkMissionRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_mission_manager_msgsCloneNetworkMissionResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/ClonePointOfInterest exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_mission_manager_msgsClonePointOfInterestResponse
callRos1Clearpath_mission_manager_msgsClonePointOfInterestRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_mission_manager_msgsClonePointOfInterestRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_mission_manager_msgsClonePointOfInterestResponse result;
    ubyte[520] bytes;
    size_t written;
    Ros1Clearpath_mission_manager_msgsClonePointOfInterestRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_mission_manager_msgsClonePointOfInterestResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/CreateMission exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_mission_manager_msgsCreateMissionResponse
callRos1Clearpath_mission_manager_msgsCreateMissionRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_mission_manager_msgsCreateMissionRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_mission_manager_msgsCreateMissionResponse result;
    ubyte[1964] bytes;
    size_t written;
    Ros1Clearpath_mission_manager_msgsCreateMissionRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_mission_manager_msgsCreateMissionResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/CreateNetworkMap exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_mission_manager_msgsCreateNetworkMapResponse
callRos1Clearpath_mission_manager_msgsCreateNetworkMapRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_mission_manager_msgsCreateNetworkMapRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_mission_manager_msgsCreateNetworkMapResponse result;
    ubyte[1756] bytes;
    size_t written;
    Ros1Clearpath_mission_manager_msgsCreateNetworkMapRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_mission_manager_msgsCreateNetworkMapResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/CreateNetworkMission exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_mission_manager_msgsCreateNetworkMissionResponse
callRos1Clearpath_mission_manager_msgsCreateNetworkMissionRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_mission_manager_msgsCreateNetworkMissionRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_mission_manager_msgsCreateNetworkMissionResponse result;
    ubyte[2234] bytes;
    size_t written;
    Ros1Clearpath_mission_manager_msgsCreateNetworkMissionRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_mission_manager_msgsCreateNetworkMissionResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/CreatePointOfInterest exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_mission_manager_msgsCreatePointOfInterestResponse
callRos1Clearpath_mission_manager_msgsCreatePointOfInterestRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_mission_manager_msgsCreatePointOfInterestRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_mission_manager_msgsCreatePointOfInterestResponse result;
    ubyte[949] bytes;
    size_t written;
    Ros1Clearpath_mission_manager_msgsCreatePointOfInterestRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_mission_manager_msgsCreatePointOfInterestResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/CreateTask exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_mission_manager_msgsCreateTaskResponse
callRos1Clearpath_mission_manager_msgsCreateTaskRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_mission_manager_msgsCreateTaskRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_mission_manager_msgsCreateTaskResponse result;
    ubyte[2769] bytes;
    size_t written;
    Ros1Clearpath_mission_manager_msgsCreateTaskRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_mission_manager_msgsCreateTaskResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/CreateWaypoint exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_mission_manager_msgsCreateWaypointResponse
callRos1Clearpath_mission_manager_msgsCreateWaypointRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_mission_manager_msgsCreateWaypointRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_mission_manager_msgsCreateWaypointResponse result;
    ubyte[1220] bytes;
    size_t written;
    Ros1Clearpath_mission_manager_msgsCreateWaypointRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_mission_manager_msgsCreateWaypointResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/CreateWaypointFromPoi exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_mission_manager_msgsCreateWaypointFromPoiResponse
callRos1Clearpath_mission_manager_msgsCreateWaypointFromPoiRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_mission_manager_msgsCreateWaypointFromPoiRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_mission_manager_msgsCreateWaypointFromPoiResponse result;
    ubyte[1209] bytes;
    size_t written;
    Ros1Clearpath_mission_manager_msgsCreateWaypointFromPoiRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_mission_manager_msgsCreateWaypointFromPoiResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/DeleteById exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_mission_manager_msgsDeleteByIdResponse
callRos1Clearpath_mission_manager_msgsDeleteByIdRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_mission_manager_msgsDeleteByIdRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_mission_manager_msgsDeleteByIdResponse result;
    ubyte[260] bytes;
    size_t written;
    Ros1Clearpath_mission_manager_msgsDeleteByIdRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_mission_manager_msgsDeleteByIdResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/DeleteEverything exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_mission_manager_msgsDeleteEverythingResponse
callRos1Clearpath_mission_manager_msgsDeleteEverythingRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_mission_manager_msgsDeleteEverythingRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_mission_manager_msgsDeleteEverythingResponse result;
    ubyte[1] bytes;
    size_t written;
    Ros1Clearpath_mission_manager_msgsDeleteEverythingRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_mission_manager_msgsDeleteEverythingResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/DeleteMultiple exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_mission_manager_msgsDeleteMultipleResponse
callRos1Clearpath_mission_manager_msgsDeleteMultipleRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_mission_manager_msgsDeleteMultipleRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_mission_manager_msgsDeleteMultipleResponse result;
    ubyte[784] bytes;
    size_t written;
    Ros1Clearpath_mission_manager_msgsDeleteMultipleRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_mission_manager_msgsDeleteMultipleResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/ExportData exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_mission_manager_msgsExportDataResponse
callRos1Clearpath_mission_manager_msgsExportDataRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_mission_manager_msgsExportDataRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_mission_manager_msgsExportDataResponse result;
    ubyte[0] bytes;
    size_t written;
    Ros1Clearpath_mission_manager_msgsExportDataRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_mission_manager_msgsExportDataResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/GetAllMissions exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_mission_manager_msgsGetAllMissionsResponse
callRos1Clearpath_mission_manager_msgsGetAllMissionsRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_mission_manager_msgsGetAllMissionsRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_mission_manager_msgsGetAllMissionsResponse result;
    ubyte[0] bytes;
    size_t written;
    Ros1Clearpath_mission_manager_msgsGetAllMissionsRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_mission_manager_msgsGetAllMissionsResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/GetAllNetworkMaps exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_mission_manager_msgsGetAllNetworkMapsResponse
callRos1Clearpath_mission_manager_msgsGetAllNetworkMapsRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_mission_manager_msgsGetAllNetworkMapsRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_mission_manager_msgsGetAllNetworkMapsResponse result;
    ubyte[0] bytes;
    size_t written;
    Ros1Clearpath_mission_manager_msgsGetAllNetworkMapsRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_mission_manager_msgsGetAllNetworkMapsResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/GetAllNetworkMissions exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_mission_manager_msgsGetAllNetworkMissionsResponse
callRos1Clearpath_mission_manager_msgsGetAllNetworkMissionsRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_mission_manager_msgsGetAllNetworkMissionsRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_mission_manager_msgsGetAllNetworkMissionsResponse result;
    ubyte[0] bytes;
    size_t written;
    Ros1Clearpath_mission_manager_msgsGetAllNetworkMissionsRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_mission_manager_msgsGetAllNetworkMissionsResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/GetAllPointsOfInterest exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_mission_manager_msgsGetAllPointsOfInterestResponse
callRos1Clearpath_mission_manager_msgsGetAllPointsOfInterestRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_mission_manager_msgsGetAllPointsOfInterestRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_mission_manager_msgsGetAllPointsOfInterestResponse result;
    ubyte[0] bytes;
    size_t written;
    Ros1Clearpath_mission_manager_msgsGetAllPointsOfInterestRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_mission_manager_msgsGetAllPointsOfInterestResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/GetAllTasks exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_mission_manager_msgsGetAllTasksResponse
callRos1Clearpath_mission_manager_msgsGetAllTasksRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_mission_manager_msgsGetAllTasksRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_mission_manager_msgsGetAllTasksResponse result;
    ubyte[0] bytes;
    size_t written;
    Ros1Clearpath_mission_manager_msgsGetAllTasksRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_mission_manager_msgsGetAllTasksResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/GetAllWaypoints exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_mission_manager_msgsGetAllWaypointsResponse
callRos1Clearpath_mission_manager_msgsGetAllWaypointsRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_mission_manager_msgsGetAllWaypointsRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_mission_manager_msgsGetAllWaypointsResponse result;
    ubyte[0] bytes;
    size_t written;
    Ros1Clearpath_mission_manager_msgsGetAllWaypointsRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_mission_manager_msgsGetAllWaypointsResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/GetEverything exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_mission_manager_msgsGetEverythingResponse
callRos1Clearpath_mission_manager_msgsGetEverythingRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_mission_manager_msgsGetEverythingRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_mission_manager_msgsGetEverythingResponse result;
    ubyte[0] bytes;
    size_t written;
    Ros1Clearpath_mission_manager_msgsGetEverythingRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_mission_manager_msgsGetEverythingResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/GetMission exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_mission_manager_msgsGetMissionResponse
callRos1Clearpath_mission_manager_msgsGetMissionRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_mission_manager_msgsGetMissionRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_mission_manager_msgsGetMissionResponse result;
    ubyte[260] bytes;
    size_t written;
    Ros1Clearpath_mission_manager_msgsGetMissionRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_mission_manager_msgsGetMissionResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/GetNetworkMap exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_mission_manager_msgsGetNetworkMapResponse
callRos1Clearpath_mission_manager_msgsGetNetworkMapRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_mission_manager_msgsGetNetworkMapRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_mission_manager_msgsGetNetworkMapResponse result;
    ubyte[260] bytes;
    size_t written;
    Ros1Clearpath_mission_manager_msgsGetNetworkMapRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_mission_manager_msgsGetNetworkMapResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/GetNetworkMission exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_mission_manager_msgsGetNetworkMissionResponse
callRos1Clearpath_mission_manager_msgsGetNetworkMissionRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_mission_manager_msgsGetNetworkMissionRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_mission_manager_msgsGetNetworkMissionResponse result;
    ubyte[260] bytes;
    size_t written;
    Ros1Clearpath_mission_manager_msgsGetNetworkMissionRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_mission_manager_msgsGetNetworkMissionResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/GetPointOfInterest exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_mission_manager_msgsGetPointOfInterestResponse
callRos1Clearpath_mission_manager_msgsGetPointOfInterestRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_mission_manager_msgsGetPointOfInterestRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_mission_manager_msgsGetPointOfInterestResponse result;
    ubyte[260] bytes;
    size_t written;
    Ros1Clearpath_mission_manager_msgsGetPointOfInterestRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_mission_manager_msgsGetPointOfInterestResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/GetTask exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_mission_manager_msgsGetTaskResponse callRos1Clearpath_mission_manager_msgsGetTaskRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_mission_manager_msgsGetTaskRequest) requestValue) @nogc nothrow
{
    Observation !Ros1Clearpath_mission_manager_msgsGetTaskResponse result;
    ubyte[260] bytes;
    size_t written;
    Ros1Clearpath_mission_manager_msgsGetTaskRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_mission_manager_msgsGetTaskResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/GetWaypoint exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_mission_manager_msgsGetWaypointResponse
callRos1Clearpath_mission_manager_msgsGetWaypointRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_mission_manager_msgsGetWaypointRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_mission_manager_msgsGetWaypointResponse result;
    ubyte[260] bytes;
    size_t written;
    Ros1Clearpath_mission_manager_msgsGetWaypointRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_mission_manager_msgsGetWaypointResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/ImportData exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_mission_manager_msgsImportDataResponse
callRos1Clearpath_mission_manager_msgsImportDataRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_mission_manager_msgsImportDataRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_mission_manager_msgsImportDataResponse result;
    ubyte[260] bytes;
    size_t written;
    Ros1Clearpath_mission_manager_msgsImportDataRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_mission_manager_msgsImportDataResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/ImportMission exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_mission_manager_msgsImportMissionResponse
callRos1Clearpath_mission_manager_msgsImportMissionRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_mission_manager_msgsImportMissionRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_mission_manager_msgsImportMissionResponse result;
    ubyte[13336] bytes;
    size_t written;
    Ros1Clearpath_mission_manager_msgsImportMissionRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_mission_manager_msgsImportMissionResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/ImportNetworkMap exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_mission_manager_msgsImportNetworkMapResponse
callRos1Clearpath_mission_manager_msgsImportNetworkMapRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_mission_manager_msgsImportNetworkMapRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_mission_manager_msgsImportNetworkMapResponse result;
    ubyte[2608] bytes;
    size_t written;
    Ros1Clearpath_mission_manager_msgsImportNetworkMapRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_mission_manager_msgsImportNetworkMapResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/ImportNetworkMission exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_mission_manager_msgsImportNetworkMissionResponse
callRos1Clearpath_mission_manager_msgsImportNetworkMissionRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_mission_manager_msgsImportNetworkMissionRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_mission_manager_msgsImportNetworkMissionResponse result;
    ubyte[13606] bytes;
    size_t written;
    Ros1Clearpath_mission_manager_msgsImportNetworkMissionRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_mission_manager_msgsImportNetworkMissionResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/SplitNetworkEdge exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_mission_manager_msgsSplitNetworkEdgeResponse
callRos1Clearpath_mission_manager_msgsSplitNetworkEdgeRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_mission_manager_msgsSplitNetworkEdgeRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_mission_manager_msgsSplitNetworkEdgeResponse result;
    ubyte[537] bytes;
    size_t written;
    Ros1Clearpath_mission_manager_msgsSplitNetworkEdgeRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_mission_manager_msgsSplitNetworkEdgeResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/UpdateMission exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_mission_manager_msgsUpdateMissionResponse
callRos1Clearpath_mission_manager_msgsUpdateMissionRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_mission_manager_msgsUpdateMissionRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_mission_manager_msgsUpdateMissionResponse result;
    ubyte[2224] bytes;
    size_t written;
    Ros1Clearpath_mission_manager_msgsUpdateMissionRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_mission_manager_msgsUpdateMissionResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/UpdateNetworkEdge exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_mission_manager_msgsUpdateNetworkEdgeResponse
callRos1Clearpath_mission_manager_msgsUpdateNetworkEdgeRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_mission_manager_msgsUpdateNetworkEdgeRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_mission_manager_msgsUpdateNetworkEdgeResponse result;
    ubyte[1052] bytes;
    size_t written;
    Ros1Clearpath_mission_manager_msgsUpdateNetworkEdgeRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_mission_manager_msgsUpdateNetworkEdgeResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/UpdateNetworkEdges exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_mission_manager_msgsUpdateNetworkEdgesResponse
callRos1Clearpath_mission_manager_msgsUpdateNetworkEdgesRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_mission_manager_msgsUpdateNetworkEdgesRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_mission_manager_msgsUpdateNetworkEdgesResponse result;
    ubyte[820] bytes;
    size_t written;
    Ros1Clearpath_mission_manager_msgsUpdateNetworkEdgesRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_mission_manager_msgsUpdateNetworkEdgesResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/UpdateNetworkMap exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_mission_manager_msgsUpdateNetworkMapResponse
callRos1Clearpath_mission_manager_msgsUpdateNetworkMapRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_mission_manager_msgsUpdateNetworkMapRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_mission_manager_msgsUpdateNetworkMapResponse result;
    ubyte[400] bytes;
    size_t written;
    Ros1Clearpath_mission_manager_msgsUpdateNetworkMapRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_mission_manager_msgsUpdateNetworkMapResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/UpdateNetworkMission exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_mission_manager_msgsUpdateNetworkMissionResponse
callRos1Clearpath_mission_manager_msgsUpdateNetworkMissionRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_mission_manager_msgsUpdateNetworkMissionRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_mission_manager_msgsUpdateNetworkMissionResponse result;
    ubyte[2494] bytes;
    size_t written;
    Ros1Clearpath_mission_manager_msgsUpdateNetworkMissionRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_mission_manager_msgsUpdateNetworkMissionResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/UpdateNetworkPoint exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_mission_manager_msgsUpdateNetworkPointResponse
callRos1Clearpath_mission_manager_msgsUpdateNetworkPointRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_mission_manager_msgsUpdateNetworkPointRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_mission_manager_msgsUpdateNetworkPointResponse result;
    ubyte[536] bytes;
    size_t written;
    Ros1Clearpath_mission_manager_msgsUpdateNetworkPointRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_mission_manager_msgsUpdateNetworkPointResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/UpdateNetworkPoints exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_mission_manager_msgsUpdateNetworkPointsResponse
callRos1Clearpath_mission_manager_msgsUpdateNetworkPointsRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_mission_manager_msgsUpdateNetworkPointsRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_mission_manager_msgsUpdateNetworkPointsResponse result;
    ubyte[824] bytes;
    size_t written;
    Ros1Clearpath_mission_manager_msgsUpdateNetworkPointsRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_mission_manager_msgsUpdateNetworkPointsResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/UpdatePointOfInterest exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_mission_manager_msgsUpdatePointOfInterestResponse
callRos1Clearpath_mission_manager_msgsUpdatePointOfInterestRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_mission_manager_msgsUpdatePointOfInterestRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_mission_manager_msgsUpdatePointOfInterestResponse result;
    ubyte[1209] bytes;
    size_t written;
    Ros1Clearpath_mission_manager_msgsUpdatePointOfInterestRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_mission_manager_msgsUpdatePointOfInterestResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/UpdateTask exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_mission_manager_msgsUpdateTaskResponse
callRos1Clearpath_mission_manager_msgsUpdateTaskRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_mission_manager_msgsUpdateTaskRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_mission_manager_msgsUpdateTaskResponse result;
    ubyte[1457] bytes;
    size_t written;
    Ros1Clearpath_mission_manager_msgsUpdateTaskRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_mission_manager_msgsUpdateTaskResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/UpdateWaypoint exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_mission_manager_msgsUpdateWaypointResponse
callRos1Clearpath_mission_manager_msgsUpdateWaypointRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_mission_manager_msgsUpdateWaypointRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_mission_manager_msgsUpdateWaypointResponse result;
    ubyte[956] bytes;
    size_t written;
    Ros1Clearpath_mission_manager_msgsUpdateWaypointRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_mission_manager_msgsUpdateWaypointResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_mission_manager_msgs/ValidateNetworkMap exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_mission_manager_msgsValidateNetworkMapResponse
callRos1Clearpath_mission_manager_msgsValidateNetworkMapRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_mission_manager_msgsValidateNetworkMapRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_mission_manager_msgsValidateNetworkMapResponse result;
    ubyte[260] bytes;
    size_t written;
    Ros1Clearpath_mission_manager_msgsValidateNetworkMapRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_mission_manager_msgsValidateNetworkMapResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_mission_scheduler_msgs/CloneSchedule exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_mission_scheduler_msgsCloneScheduleResponse
callRos1Clearpath_mission_scheduler_msgsCloneScheduleRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_mission_scheduler_msgsCloneScheduleRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_mission_scheduler_msgsCloneScheduleResponse result;
    ubyte[520] bytes;
    size_t written;
    Ros1Clearpath_mission_scheduler_msgsCloneScheduleRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_mission_scheduler_msgsCloneScheduleResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_mission_scheduler_msgs/CreateSchedule exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_mission_scheduler_msgsCreateScheduleResponse
callRos1Clearpath_mission_scheduler_msgsCreateScheduleRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_mission_scheduler_msgsCreateScheduleRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_mission_scheduler_msgsCreateScheduleResponse result;
    ubyte[684] bytes;
    size_t written;
    Ros1Clearpath_mission_scheduler_msgsCreateScheduleRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_mission_scheduler_msgsCreateScheduleResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_mission_scheduler_msgs/EnableSchedule exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_mission_scheduler_msgsEnableScheduleResponse
callRos1Clearpath_mission_scheduler_msgsEnableScheduleRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_mission_scheduler_msgsEnableScheduleRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_mission_scheduler_msgsEnableScheduleResponse result;
    ubyte[261] bytes;
    size_t written;
    Ros1Clearpath_mission_scheduler_msgsEnableScheduleRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_mission_scheduler_msgsEnableScheduleResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_mission_scheduler_msgs/ExportData exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_mission_scheduler_msgsExportDataResponse
callRos1Clearpath_mission_scheduler_msgsExportDataRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_mission_scheduler_msgsExportDataRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_mission_scheduler_msgsExportDataResponse result;
    ubyte[0] bytes;
    size_t written;
    Ros1Clearpath_mission_scheduler_msgsExportDataRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_mission_scheduler_msgsExportDataResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_mission_scheduler_msgs/GetAllSchedules exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_mission_scheduler_msgsGetAllSchedulesResponse
callRos1Clearpath_mission_scheduler_msgsGetAllSchedulesRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_mission_scheduler_msgsGetAllSchedulesRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_mission_scheduler_msgsGetAllSchedulesResponse result;
    ubyte[0] bytes;
    size_t written;
    Ros1Clearpath_mission_scheduler_msgsGetAllSchedulesRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_mission_scheduler_msgsGetAllSchedulesResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_mission_scheduler_msgs/GetNextSchedule exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_mission_scheduler_msgsGetNextScheduleResponse
callRos1Clearpath_mission_scheduler_msgsGetNextScheduleRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_mission_scheduler_msgsGetNextScheduleRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_mission_scheduler_msgsGetNextScheduleResponse result;
    ubyte[0] bytes;
    size_t written;
    Ros1Clearpath_mission_scheduler_msgsGetNextScheduleRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_mission_scheduler_msgsGetNextScheduleResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_mission_scheduler_msgs/GetSchedule exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_mission_scheduler_msgsGetScheduleResponse
callRos1Clearpath_mission_scheduler_msgsGetScheduleRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_mission_scheduler_msgsGetScheduleRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_mission_scheduler_msgsGetScheduleResponse result;
    ubyte[260] bytes;
    size_t written;
    Ros1Clearpath_mission_scheduler_msgsGetScheduleRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_mission_scheduler_msgsGetScheduleResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_mission_scheduler_msgs/ImportData exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_mission_scheduler_msgsImportDataResponse
callRos1Clearpath_mission_scheduler_msgsImportDataRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_mission_scheduler_msgsImportDataRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_mission_scheduler_msgsImportDataResponse result;
    ubyte[260] bytes;
    size_t written;
    Ros1Clearpath_mission_scheduler_msgsImportDataRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_mission_scheduler_msgsImportDataResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_mission_scheduler_msgs/UpdateSchedule exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_mission_scheduler_msgsUpdateScheduleResponse
callRos1Clearpath_mission_scheduler_msgsUpdateScheduleRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_mission_scheduler_msgsUpdateScheduleRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_mission_scheduler_msgsUpdateScheduleResponse result;
    ubyte[944] bytes;
    size_t written;
    Ros1Clearpath_mission_scheduler_msgsUpdateScheduleRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_mission_scheduler_msgsUpdateScheduleResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_navigation_msgs/AutonomyTaskSrv exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_navigation_msgsAutonomyTaskSrvResponse
callRos1Clearpath_navigation_msgsAutonomyTaskSrvRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_navigation_msgsAutonomyTaskSrvRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_navigation_msgsAutonomyTaskSrvResponse result;
    ubyte[804] bytes;
    size_t written;
    Ros1Clearpath_navigation_msgsAutonomyTaskSrvRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_navigation_msgsAutonomyTaskSrvResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_navigation_msgs/SetDelayCompensation exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_navigation_msgsSetDelayCompensationResponse
callRos1Clearpath_navigation_msgsSetDelayCompensationRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_navigation_msgsSetDelayCompensationRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_navigation_msgsSetDelayCompensationResponse result;
    ubyte[3] bytes;
    size_t written;
    Ros1Clearpath_navigation_msgsSetDelayCompensationRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_navigation_msgsSetDelayCompensationResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_navigation_msgs/SetPathShifter exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_navigation_msgsSetPathShifterResponse callRos1Clearpath_navigation_msgsSetPathShifterRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_navigation_msgsSetPathShifterRequest) requestValue) @nogc nothrow
{
    Observation !Ros1Clearpath_navigation_msgsSetPathShifterResponse result;
    ubyte[9] bytes;
    size_t written;
    Ros1Clearpath_navigation_msgsSetPathShifterRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_navigation_msgsSetPathShifterResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_navigation_msgs/SetPathSmoother exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_navigation_msgsSetPathSmootherResponse
callRos1Clearpath_navigation_msgsSetPathSmootherRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_navigation_msgsSetPathSmootherRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_navigation_msgsSetPathSmootherResponse result;
    ubyte[9] bytes;
    size_t written;
    Ros1Clearpath_navigation_msgsSetPathSmootherRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_navigation_msgsSetPathSmootherResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_navigation_msgs/SetStopDistance exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_navigation_msgsSetStopDistanceResponse
callRos1Clearpath_navigation_msgsSetStopDistanceRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_navigation_msgsSetStopDistanceRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_navigation_msgsSetStopDistanceResponse result;
    ubyte[5] bytes;
    size_t written;
    Ros1Clearpath_navigation_msgsSetStopDistanceRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_navigation_msgsSetStopDistanceResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_safety_msgs/AddCommunicationWatchdog exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_safety_msgsAddCommunicationWatchdogResponse
callRos1Clearpath_safety_msgsAddCommunicationWatchdogRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_safety_msgsAddCommunicationWatchdogRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_safety_msgsAddCommunicationWatchdogResponse result;
    ubyte[1961] bytes;
    size_t written;
    Ros1Clearpath_safety_msgsAddCommunicationWatchdogRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_safety_msgsAddCommunicationWatchdogResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_safety_msgs/AddHeartbeatWatchdog exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_safety_msgsAddHeartbeatWatchdogResponse
callRos1Clearpath_safety_msgsAddHeartbeatWatchdogRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_safety_msgsAddHeartbeatWatchdogRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_safety_msgsAddHeartbeatWatchdogResponse result;
    ubyte[1441] bytes;
    size_t written;
    Ros1Clearpath_safety_msgsAddHeartbeatWatchdogRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_safety_msgsAddHeartbeatWatchdogResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_safety_msgs/AddInclinationWatchdog exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_safety_msgsAddInclinationWatchdogResponse
callRos1Clearpath_safety_msgsAddInclinationWatchdogRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_safety_msgsAddInclinationWatchdogRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_safety_msgsAddInclinationWatchdogResponse result;
    ubyte[1449] bytes;
    size_t written;
    Ros1Clearpath_safety_msgsAddInclinationWatchdogRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_safety_msgsAddInclinationWatchdogResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_safety_msgs/AddNodeStatusWatchdog exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_safety_msgsAddNodeStatusWatchdogResponse
callRos1Clearpath_safety_msgsAddNodeStatusWatchdogRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_safety_msgsAddNodeStatusWatchdogRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_safety_msgsAddNodeStatusWatchdogResponse result;
    ubyte[1438] bytes;
    size_t written;
    Ros1Clearpath_safety_msgsAddNodeStatusWatchdogRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_safety_msgsAddNodeStatusWatchdogResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_safety_msgs/AddNodeletStatusWatchdog exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_safety_msgsAddNodeletStatusWatchdogResponse
callRos1Clearpath_safety_msgsAddNodeletStatusWatchdogRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_safety_msgsAddNodeletStatusWatchdogRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_safety_msgsAddNodeletStatusWatchdogResponse result;
    ubyte[1698] bytes;
    size_t written;
    Ros1Clearpath_safety_msgsAddNodeletStatusWatchdogRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_safety_msgsAddNodeletStatusWatchdogResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_safety_msgs/AddNumPointsWatchdog exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_safety_msgsAddNumPointsWatchdogResponse
callRos1Clearpath_safety_msgsAddNumPointsWatchdogRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_safety_msgsAddNumPointsWatchdogRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_safety_msgsAddNumPointsWatchdogResponse result;
    ubyte[1441] bytes;
    size_t written;
    Ros1Clearpath_safety_msgsAddNumPointsWatchdogRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_safety_msgsAddNumPointsWatchdogResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_safety_msgs/AddOdomCovarianceWatchdog exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_safety_msgsAddOdomCovarianceWatchdogResponse
callRos1Clearpath_safety_msgsAddOdomCovarianceWatchdogRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_safety_msgsAddOdomCovarianceWatchdogRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_safety_msgsAddOdomCovarianceWatchdogResponse result;
    ubyte[1449] bytes;
    size_t written;
    Ros1Clearpath_safety_msgsAddOdomCovarianceWatchdogRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_safety_msgsAddOdomCovarianceWatchdogResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_safety_msgs/AddRtkFixWatchdog exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_safety_msgsAddRtkFixWatchdogResponse callRos1Clearpath_safety_msgsAddRtkFixWatchdogRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_safety_msgsAddRtkFixWatchdogRequest) requestValue) @nogc nothrow
{
    Observation !Ros1Clearpath_safety_msgsAddRtkFixWatchdogResponse result;
    ubyte[1443] bytes;
    size_t written;
    Ros1Clearpath_safety_msgsAddRtkFixWatchdogRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_safety_msgsAddRtkFixWatchdogResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_safety_msgs/AddTopicDataWatchdog exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_safety_msgsAddTopicDataWatchdogResponse
callRos1Clearpath_safety_msgsAddTopicDataWatchdogRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_safety_msgsAddTopicDataWatchdogRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_safety_msgsAddTopicDataWatchdogResponse result;
    ubyte[1441] bytes;
    size_t written;
    Ros1Clearpath_safety_msgsAddTopicDataWatchdogRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_safety_msgsAddTopicDataWatchdogResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_safety_msgs/RemoveWatchdog exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_safety_msgsRemoveWatchdogResponse callRos1Clearpath_safety_msgsRemoveWatchdogRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_safety_msgsRemoveWatchdogRequest) requestValue) @nogc nothrow
{
    Observation !Ros1Clearpath_safety_msgsRemoveWatchdogResponse result;
    ubyte[132] bytes;
    size_t written;
    Ros1Clearpath_safety_msgsRemoveWatchdogRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_safety_msgsRemoveWatchdogResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_safety_msgs/UpdateCommunicationWatchdog exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_safety_msgsUpdateCommunicationWatchdogResponse
callRos1Clearpath_safety_msgsUpdateCommunicationWatchdogRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_safety_msgsUpdateCommunicationWatchdogRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_safety_msgsUpdateCommunicationWatchdogResponse result;
    ubyte[2221] bytes;
    size_t written;
    Ros1Clearpath_safety_msgsUpdateCommunicationWatchdogRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_safety_msgsUpdateCommunicationWatchdogResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_safety_msgs/UpdateHeartbeatWatchdog exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_safety_msgsUpdateHeartbeatWatchdogResponse
callRos1Clearpath_safety_msgsUpdateHeartbeatWatchdogRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_safety_msgsUpdateHeartbeatWatchdogRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_safety_msgsUpdateHeartbeatWatchdogResponse result;
    ubyte[1701] bytes;
    size_t written;
    Ros1Clearpath_safety_msgsUpdateHeartbeatWatchdogRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_safety_msgsUpdateHeartbeatWatchdogResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_safety_msgs/UpdateInclinationWatchdog exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_safety_msgsUpdateInclinationWatchdogResponse
callRos1Clearpath_safety_msgsUpdateInclinationWatchdogRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_safety_msgsUpdateInclinationWatchdogRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_safety_msgsUpdateInclinationWatchdogResponse result;
    ubyte[1709] bytes;
    size_t written;
    Ros1Clearpath_safety_msgsUpdateInclinationWatchdogRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_safety_msgsUpdateInclinationWatchdogResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_safety_msgs/UpdateNodeStatusWatchdog exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_safety_msgsUpdateNodeStatusWatchdogResponse
callRos1Clearpath_safety_msgsUpdateNodeStatusWatchdogRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_safety_msgsUpdateNodeStatusWatchdogRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_safety_msgsUpdateNodeStatusWatchdogResponse result;
    ubyte[1698] bytes;
    size_t written;
    Ros1Clearpath_safety_msgsUpdateNodeStatusWatchdogRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_safety_msgsUpdateNodeStatusWatchdogResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_safety_msgs/UpdateNodeletStatusWatchdog exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_safety_msgsUpdateNodeletStatusWatchdogResponse
callRos1Clearpath_safety_msgsUpdateNodeletStatusWatchdogRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_safety_msgsUpdateNodeletStatusWatchdogRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_safety_msgsUpdateNodeletStatusWatchdogResponse result;
    ubyte[1958] bytes;
    size_t written;
    Ros1Clearpath_safety_msgsUpdateNodeletStatusWatchdogRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_safety_msgsUpdateNodeletStatusWatchdogResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_safety_msgs/UpdateNumPointsWatchdog exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_safety_msgsUpdateNumPointsWatchdogResponse
callRos1Clearpath_safety_msgsUpdateNumPointsWatchdogRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_safety_msgsUpdateNumPointsWatchdogRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_safety_msgsUpdateNumPointsWatchdogResponse result;
    ubyte[1701] bytes;
    size_t written;
    Ros1Clearpath_safety_msgsUpdateNumPointsWatchdogRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_safety_msgsUpdateNumPointsWatchdogResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_safety_msgs/UpdateOdomCovarianceWatchdog exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_safety_msgsUpdateOdomCovarianceWatchdogResponse
callRos1Clearpath_safety_msgsUpdateOdomCovarianceWatchdogRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_safety_msgsUpdateOdomCovarianceWatchdogRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_safety_msgsUpdateOdomCovarianceWatchdogResponse result;
    ubyte[1709] bytes;
    size_t written;
    Ros1Clearpath_safety_msgsUpdateOdomCovarianceWatchdogRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_safety_msgsUpdateOdomCovarianceWatchdogResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_safety_msgs/UpdateRtkFixWatchdog exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_safety_msgsUpdateRtkFixWatchdogResponse
callRos1Clearpath_safety_msgsUpdateRtkFixWatchdogRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_safety_msgsUpdateRtkFixWatchdogRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_safety_msgsUpdateRtkFixWatchdogResponse result;
    ubyte[1703] bytes;
    size_t written;
    Ros1Clearpath_safety_msgsUpdateRtkFixWatchdogRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_safety_msgsUpdateRtkFixWatchdogResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}

/// @brief Call complete clearpath_safety_msgs/UpdateTopicDataWatchdog exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros1Clearpath_safety_msgsUpdateTopicDataWatchdogResponse
callRos1Clearpath_safety_msgsUpdateTopicDataWatchdogRequest(
    const(ubyte)[] aliasBytes, ref const(Ros1Clearpath_safety_msgsUpdateTopicDataWatchdogRequest) requestValue)
    @nogc nothrow
{
    Observation !Ros1Clearpath_safety_msgsUpdateTopicDataWatchdogResponse result;
    ubyte[1701] bytes;
    size_t written;
    Ros1Clearpath_safety_msgsUpdateTopicDataWatchdogRequest owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros1Clearpath_safety_msgsUpdateTopicDataWatchdogResponse(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}
