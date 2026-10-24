// @file api.odin
// @brief Typed complete clearpath observers and service clients.
package api
import core "native:odin/observation"
import records "clearpath:odin/ros1"
// @brief Observe every original clearpath_configuration_msgs/AutonomyConfig field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_configuration_msgsAutonomyConfig :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_configuration_msgsAutonomyConfig) {
    return core.receive(
        records.Ros1Clearpath_configuration_msgsAutonomyConfig,
        alias_bytes,
        268,
        records.decode_Ros1Clearpath_configuration_msgsAutonomyConfig,
        records.encode_Ros1Clearpath_configuration_msgsAutonomyConfig,
        attempts,
    )
}

// @brief Observe every original clearpath_configuration_msgs/PlatformConfig field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_configuration_msgsPlatformConfig :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_configuration_msgsPlatformConfig) {
    return core.receive(
        records.Ros1Clearpath_configuration_msgsPlatformConfig,
        alias_bytes,
        0,
        records.decode_Ros1Clearpath_configuration_msgsPlatformConfig,
        records.encode_Ros1Clearpath_configuration_msgsPlatformConfig,
        attempts,
    )
}

// @brief Observe every original clearpath_control_msgs/AutonomySync field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_control_msgsAutonomySync :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_control_msgsAutonomySync) {
    return core.receive(
        records.Ros1Clearpath_control_msgsAutonomySync,
        alias_bytes,
        7,
        records.decode_Ros1Clearpath_control_msgsAutonomySync,
        records.encode_Ros1Clearpath_control_msgsAutonomySync,
        attempts,
    )
}

// @brief Observe every original clearpath_control_msgs/ControlMode field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_control_msgsControlMode :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_control_msgsControlMode) {
    return core.receive(
        records.Ros1Clearpath_control_msgsControlMode,
        alias_bytes,
        1,
        records.decode_Ros1Clearpath_control_msgsControlMode,
        records.encode_Ros1Clearpath_control_msgsControlMode,
        attempts,
    )
}

// @brief Observe every original clearpath_control_msgs/ControlSelectionState field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_control_msgsControlSelectionState :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_control_msgsControlSelectionState) {
    return core.receive(
        records.Ros1Clearpath_control_msgsControlSelectionState,
        alias_bytes,
        3,
        records.decode_Ros1Clearpath_control_msgsControlSelectionState,
        records.encode_Ros1Clearpath_control_msgsControlSelectionState,
        attempts,
    )
}

// @brief Observe every original clearpath_control_msgs/ControlState field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_control_msgsControlState :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_control_msgsControlState) {
    return core.receive(
        records.Ros1Clearpath_control_msgsControlState,
        alias_bytes,
        2,
        records.decode_Ros1Clearpath_control_msgsControlState,
        records.encode_Ros1Clearpath_control_msgsControlState,
        attempts,
    )
}

// @brief Observe every original clearpath_dock_msgs/DockInfo field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_dock_msgsDockInfo :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_dock_msgsDockInfo) {
    return core.receive(
        records.Ros1Clearpath_dock_msgsDockInfo,
        alias_bytes,
        1204,
        records.decode_Ros1Clearpath_dock_msgsDockInfo,
        records.encode_Ros1Clearpath_dock_msgsDockInfo,
        attempts,
    )
}

// @brief Observe every original clearpath_dock_msgs/DockProperties field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_dock_msgsDockProperties :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_dock_msgsDockProperties) {
    return core.receive(
        records.Ros1Clearpath_dock_msgsDockProperties,
        alias_bytes,
        2412,
        records.decode_Ros1Clearpath_dock_msgsDockProperties,
        records.encode_Ros1Clearpath_dock_msgsDockProperties,
        attempts,
    )
}

// @brief Observe every original clearpath_dock_msgs/DockState field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_dock_msgsDockState :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_dock_msgsDockState) {
    return core.receive(
        records.Ros1Clearpath_dock_msgsDockState,
        alias_bytes,
        1,
        records.decode_Ros1Clearpath_dock_msgsDockState,
        records.encode_Ros1Clearpath_dock_msgsDockState,
        attempts,
    )
}

// @brief Observe every original clearpath_dock_msgs/TargetTrackerState field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_dock_msgsTargetTrackerState :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_dock_msgsTargetTrackerState) {
    return core.receive(
        records.Ros1Clearpath_dock_msgsTargetTrackerState,
        alias_bytes,
        502,
        records.decode_Ros1Clearpath_dock_msgsTargetTrackerState,
        records.encode_Ros1Clearpath_dock_msgsTargetTrackerState,
        attempts,
    )
}

// @brief Observe every original clearpath_localization_msgs/GNSSStatus field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_localization_msgsGNSSStatus :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_localization_msgsGNSSStatus) {
    return core.receive(
        records.Ros1Clearpath_localization_msgsGNSSStatus,
        alias_bytes,
        273,
        records.decode_Ros1Clearpath_localization_msgsGNSSStatus,
        records.encode_Ros1Clearpath_localization_msgsGNSSStatus,
        attempts,
    )
}

// @brief Observe every original clearpath_localization_msgs/LocalizationStatus field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_localization_msgsLocalizationStatus :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_localization_msgsLocalizationStatus) {
    return core.receive(
        records.Ros1Clearpath_localization_msgsLocalizationStatus,
        alias_bytes,
        968,
        records.decode_Ros1Clearpath_localization_msgsLocalizationStatus,
        records.encode_Ros1Clearpath_localization_msgsLocalizationStatus,
        attempts,
    )
}

// @brief Observe every original clearpath_localization_msgs/SurveyProperties field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_localization_msgsSurveyProperties :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_localization_msgsSurveyProperties) {
    return core.receive(
        records.Ros1Clearpath_localization_msgsSurveyProperties,
        alias_bytes,
        509,
        records.decode_Ros1Clearpath_localization_msgsSurveyProperties,
        records.encode_Ros1Clearpath_localization_msgsSurveyProperties,
        attempts,
    )
}

// @brief Observe every original clearpath_localization_msgs/XvnStatus field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_localization_msgsXvnStatus :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_localization_msgsXvnStatus) {
    return core.receive(
        records.Ros1Clearpath_localization_msgsXvnStatus,
        alias_bytes,
        182,
        records.decode_Ros1Clearpath_localization_msgsXvnStatus,
        records.encode_Ros1Clearpath_localization_msgsXvnStatus,
        attempts,
    )
}

// @brief Observe every original clearpath_logger_msgs/Event field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_logger_msgsEvent :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_logger_msgsEvent) {
    return core.receive(
        records.Ros1Clearpath_logger_msgsEvent,
        alias_bytes,
        3190,
        records.decode_Ros1Clearpath_logger_msgsEvent,
        records.encode_Ros1Clearpath_logger_msgsEvent,
        attempts,
    )
}

// @brief Observe every original clearpath_logger_msgs/EventLog field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_logger_msgsEventLog :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_logger_msgsEventLog) {
    return core.receive(
        records.Ros1Clearpath_logger_msgsEventLog,
        alias_bytes,
        7064,
        records.decode_Ros1Clearpath_logger_msgsEventLog,
        records.encode_Ros1Clearpath_logger_msgsEventLog,
        attempts,
    )
}

// @brief Observe every original clearpath_logger_msgs/EventLogs field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_logger_msgsEventLogs :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_logger_msgsEventLogs) {
    return core.receive(
        records.Ros1Clearpath_logger_msgsEventLogs,
        alias_bytes,
        14132,
        records.decode_Ros1Clearpath_logger_msgsEventLogs,
        records.encode_Ros1Clearpath_logger_msgsEventLogs,
        attempts,
    )
}

// @brief Observe every original clearpath_mission_manager_msgs/NetworkEdgeReq field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_mission_manager_msgsNetworkEdgeReq :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_mission_manager_msgsNetworkEdgeReq) {
    return core.receive(
        records.Ros1Clearpath_mission_manager_msgsNetworkEdgeReq,
        alias_bytes,
        528,
        records.decode_Ros1Clearpath_mission_manager_msgsNetworkEdgeReq,
        records.encode_Ros1Clearpath_mission_manager_msgsNetworkEdgeReq,
        attempts,
    )
}

// @brief Observe every original clearpath_mission_manager_msgs/NetworkMapState field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_mission_manager_msgsNetworkMapState :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_mission_manager_msgsNetworkMapState) {
    return core.receive(
        records.Ros1Clearpath_mission_manager_msgsNetworkMapState,
        alias_bytes,
        790,
        records.decode_Ros1Clearpath_mission_manager_msgsNetworkMapState,
        records.encode_Ros1Clearpath_mission_manager_msgsNetworkMapState,
        attempts,
    )
}

// @brief Observe every original clearpath_mission_manager_msgs/NetworkMapValidityState field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_mission_manager_msgsNetworkMapValidityState :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_mission_manager_msgsNetworkMapValidityState) {
    return core.receive(
        records.Ros1Clearpath_mission_manager_msgsNetworkMapValidityState,
        alias_bytes,
        1584,
        records.decode_Ros1Clearpath_mission_manager_msgsNetworkMapValidityState,
        records.encode_Ros1Clearpath_mission_manager_msgsNetworkMapValidityState,
        attempts,
    )
}

// @brief Observe every original clearpath_mission_manager_msgs/StorageState field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_mission_manager_msgsStorageState :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_mission_manager_msgsStorageState) {
    return core.receive(
        records.Ros1Clearpath_mission_manager_msgsStorageState,
        alias_bytes,
        32768,
        records.decode_Ros1Clearpath_mission_manager_msgsStorageState,
        records.encode_Ros1Clearpath_mission_manager_msgsStorageState,
        attempts,
    )
}

// @brief Observe every original clearpath_mission_scheduler_msgs/NextSchedule field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_mission_scheduler_msgsNextSchedule :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_mission_scheduler_msgsNextSchedule) {
    return core.receive(
        records.Ros1Clearpath_mission_scheduler_msgsNextSchedule,
        alias_bytes,
        268,
        records.decode_Ros1Clearpath_mission_scheduler_msgsNextSchedule,
        records.encode_Ros1Clearpath_mission_scheduler_msgsNextSchedule,
        attempts,
    )
}

// @brief Observe every original clearpath_mission_scheduler_msgs/Schedule field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_mission_scheduler_msgsSchedule :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_mission_scheduler_msgsSchedule) {
    return core.receive(
        records.Ros1Clearpath_mission_scheduler_msgsSchedule,
        alias_bytes,
        944,
        records.decode_Ros1Clearpath_mission_scheduler_msgsSchedule,
        records.encode_Ros1Clearpath_mission_scheduler_msgsSchedule,
        attempts,
    )
}

// @brief Observe every original clearpath_mission_scheduler_msgs/StorageState field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_mission_scheduler_msgsStorageState :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_mission_scheduler_msgsStorageState) {
    return core.receive(
        records.Ros1Clearpath_mission_scheduler_msgsStorageState,
        alias_bytes,
        1892,
        records.decode_Ros1Clearpath_mission_scheduler_msgsStorageState,
        records.encode_Ros1Clearpath_mission_scheduler_msgsStorageState,
        attempts,
    )
}

// @brief Observe every original clearpath_mission_scheduler_msgs/UtcTime field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_mission_scheduler_msgsUtcTime :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_mission_scheduler_msgsUtcTime) {
    return core.receive(
        records.Ros1Clearpath_mission_scheduler_msgsUtcTime,
        alias_bytes,
        5,
        records.decode_Ros1Clearpath_mission_scheduler_msgsUtcTime,
        records.encode_Ros1Clearpath_mission_scheduler_msgsUtcTime,
        attempts,
    )
}

// @brief Observe every original clearpath_navigation_msgs/AutonomyStatus field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_navigation_msgsAutonomyStatus :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_navigation_msgsAutonomyStatus) {
    return core.receive(
        records.Ros1Clearpath_navigation_msgsAutonomyStatus,
        alias_bytes,
        673,
        records.decode_Ros1Clearpath_navigation_msgsAutonomyStatus,
        records.encode_Ros1Clearpath_navigation_msgsAutonomyStatus,
        attempts,
    )
}

// @brief Observe every original clearpath_navigation_msgs/DistanceToGoal field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_navigation_msgsDistanceToGoal :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_navigation_msgsDistanceToGoal) {
    return core.receive(
        records.Ros1Clearpath_navigation_msgsDistanceToGoal,
        alias_bytes,
        8,
        records.decode_Ros1Clearpath_navigation_msgsDistanceToGoal,
        records.encode_Ros1Clearpath_navigation_msgsDistanceToGoal,
        attempts,
    )
}

// @brief Observe every original clearpath_navigation_msgs/Metrics field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_navigation_msgsMetrics :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_navigation_msgsMetrics) {
    return core.receive(
        records.Ros1Clearpath_navigation_msgsMetrics,
        alias_bytes,
        56,
        records.decode_Ros1Clearpath_navigation_msgsMetrics,
        records.encode_Ros1Clearpath_navigation_msgsMetrics,
        attempts,
    )
}

// @brief Observe every original clearpath_navigation_msgs/Mission field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_navigation_msgsMission :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_navigation_msgsMission) {
    return core.receive(
        records.Ros1Clearpath_navigation_msgsMission,
        alias_bytes,
        13336,
        records.decode_Ros1Clearpath_navigation_msgsMission,
        records.encode_Ros1Clearpath_navigation_msgsMission,
        attempts,
    )
}

// @brief Observe every original clearpath_navigation_msgs/MissionStatus field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_navigation_msgsMissionStatus :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_navigation_msgsMissionStatus) {
    return core.receive(
        records.Ros1Clearpath_navigation_msgsMissionStatus,
        alias_bytes,
        7244,
        records.decode_Ros1Clearpath_navigation_msgsMissionStatus,
        records.encode_Ros1Clearpath_navigation_msgsMissionStatus,
        attempts,
    )
}

// @brief Observe every original clearpath_navigation_msgs/MotionState field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_navigation_msgsMotionState :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_navigation_msgsMotionState) {
    return core.receive(
        records.Ros1Clearpath_navigation_msgsMotionState,
        alias_bytes,
        3,
        records.decode_Ros1Clearpath_navigation_msgsMotionState,
        records.encode_Ros1Clearpath_navigation_msgsMotionState,
        attempts,
    )
}

// @brief Observe every original clearpath_navigation_msgs/NavigationState field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_navigation_msgsNavigationState :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_navigation_msgsNavigationState) {
    return core.receive(
        records.Ros1Clearpath_navigation_msgsNavigationState,
        alias_bytes,
        6,
        records.decode_Ros1Clearpath_navigation_msgsNavigationState,
        records.encode_Ros1Clearpath_navigation_msgsNavigationState,
        attempts,
    )
}

// @brief Observe every original clearpath_navigation_msgs/NetworkEdge field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_navigation_msgsNetworkEdge :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_navigation_msgsNetworkEdge) {
    return core.receive(
        records.Ros1Clearpath_navigation_msgsNetworkEdge,
        alias_bytes,
        824,
        records.decode_Ros1Clearpath_navigation_msgsNetworkEdge,
        records.encode_Ros1Clearpath_navigation_msgsNetworkEdge,
        attempts,
    )
}

// @brief Observe every original clearpath_navigation_msgs/NetworkGoalState field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_navigation_msgsNetworkGoalState :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_navigation_msgsNetworkGoalState) {
    return core.receive(
        records.Ros1Clearpath_navigation_msgsNetworkGoalState,
        alias_bytes,
        3351,
        records.decode_Ros1Clearpath_navigation_msgsNetworkGoalState,
        records.encode_Ros1Clearpath_navigation_msgsNetworkGoalState,
        attempts,
    )
}

// @brief Observe every original clearpath_navigation_msgs/NetworkMap field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_navigation_msgsNetworkMap :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_navigation_msgsNetworkMap) {
    return core.receive(
        records.Ros1Clearpath_navigation_msgsNetworkMap,
        alias_bytes,
        2608,
        records.decode_Ros1Clearpath_navigation_msgsNetworkMap,
        records.encode_Ros1Clearpath_navigation_msgsNetworkMap,
        attempts,
    )
}

// @brief Observe every original clearpath_navigation_msgs/NetworkMission field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_navigation_msgsNetworkMission :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_navigation_msgsNetworkMission) {
    return core.receive(
        records.Ros1Clearpath_navigation_msgsNetworkMission,
        alias_bytes,
        13606,
        records.decode_Ros1Clearpath_navigation_msgsNetworkMission,
        records.encode_Ros1Clearpath_navigation_msgsNetworkMission,
        attempts,
    )
}

// @brief Observe every original clearpath_navigation_msgs/NetworkMissionSegment field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_navigation_msgsNetworkMissionSegment :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_navigation_msgsNetworkMissionSegment) {
    return core.receive(
        records.Ros1Clearpath_navigation_msgsNetworkMissionSegment,
        alias_bytes,
        3546,
        records.decode_Ros1Clearpath_navigation_msgsNetworkMissionSegment,
        records.encode_Ros1Clearpath_navigation_msgsNetworkMissionSegment,
        attempts,
    )
}

// @brief Observe every original clearpath_navigation_msgs/NetworkPoint field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_navigation_msgsNetworkPoint :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_navigation_msgsNetworkPoint) {
    return core.receive(
        records.Ros1Clearpath_navigation_msgsNetworkPoint,
        alias_bytes,
        276,
        records.decode_Ros1Clearpath_navigation_msgsNetworkPoint,
        records.encode_Ros1Clearpath_navigation_msgsNetworkPoint,
        attempts,
    )
}

// @brief Observe every original clearpath_navigation_msgs/OdomIntent field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_navigation_msgsOdomIntent :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_navigation_msgsOdomIntent) {
    return core.receive(
        records.Ros1Clearpath_navigation_msgsOdomIntent,
        alias_bytes,
        2316,
        records.decode_Ros1Clearpath_navigation_msgsOdomIntent,
        records.encode_Ros1Clearpath_navigation_msgsOdomIntent,
        attempts,
    )
}

// @brief Observe every original clearpath_navigation_msgs/PointOfInterest field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_navigation_msgsPointOfInterest :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_navigation_msgsPointOfInterest) {
    return core.receive(
        records.Ros1Clearpath_navigation_msgsPointOfInterest,
        alias_bytes,
        1209,
        records.decode_Ros1Clearpath_navigation_msgsPointOfInterest,
        records.encode_Ros1Clearpath_navigation_msgsPointOfInterest,
        attempts,
    )
}

// @brief Observe every original clearpath_navigation_msgs/PointVector field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_navigation_msgsPointVector :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_navigation_msgsPointVector) {
    return core.receive(
        records.Ros1Clearpath_navigation_msgsPointVector,
        alias_bytes,
        164,
        records.decode_Ros1Clearpath_navigation_msgsPointVector,
        records.encode_Ros1Clearpath_navigation_msgsPointVector,
        attempts,
    )
}

// @brief Observe every original clearpath_navigation_msgs/Progress field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_navigation_msgsProgress :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_navigation_msgsProgress) {
    return core.receive(
        records.Ros1Clearpath_navigation_msgsProgress,
        alias_bytes,
        12,
        records.decode_Ros1Clearpath_navigation_msgsProgress,
        records.encode_Ros1Clearpath_navigation_msgsProgress,
        attempts,
    )
}

// @brief Observe every original clearpath_navigation_msgs/ScanPoints field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_navigation_msgsScanPoints :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_navigation_msgsScanPoints) {
    return core.receive(
        records.Ros1Clearpath_navigation_msgsScanPoints,
        alias_bytes,
        1000,
        records.decode_Ros1Clearpath_navigation_msgsScanPoints,
        records.encode_Ros1Clearpath_navigation_msgsScanPoints,
        attempts,
    )
}

// @brief Observe every original clearpath_navigation_msgs/Task field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_navigation_msgsTask :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_navigation_msgsTask) {
    return core.receive(
        records.Ros1Clearpath_navigation_msgsTask,
        alias_bytes,
        1457,
        records.decode_Ros1Clearpath_navigation_msgsTask,
        records.encode_Ros1Clearpath_navigation_msgsTask,
        attempts,
    )
}

// @brief Observe every original clearpath_navigation_msgs/TrackError field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_navigation_msgsTrackError :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_navigation_msgsTrackError) {
    return core.receive(
        records.Ros1Clearpath_navigation_msgsTrackError,
        alias_bytes,
        152,
        records.decode_Ros1Clearpath_navigation_msgsTrackError,
        records.encode_Ros1Clearpath_navigation_msgsTrackError,
        attempts,
    )
}

// @brief Observe every original clearpath_navigation_msgs/Vector2D field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_navigation_msgsVector2D :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_navigation_msgsVector2D) {
    return core.receive(
        records.Ros1Clearpath_navigation_msgsVector2D,
        alias_bytes,
        8,
        records.decode_Ros1Clearpath_navigation_msgsVector2D,
        records.encode_Ros1Clearpath_navigation_msgsVector2D,
        attempts,
    )
}

// @brief Observe every original clearpath_navigation_msgs/Vector2D64 field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_navigation_msgsVector2D64 :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_navigation_msgsVector2D64) {
    return core.receive(
        records.Ros1Clearpath_navigation_msgsVector2D64,
        alias_bytes,
        16,
        records.decode_Ros1Clearpath_navigation_msgsVector2D64,
        records.encode_Ros1Clearpath_navigation_msgsVector2D64,
        attempts,
    )
}

// @brief Observe every original clearpath_navigation_msgs/Waypoint field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_navigation_msgsWaypoint :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_navigation_msgsWaypoint) {
    return core.receive(
        records.Ros1Clearpath_navigation_msgsWaypoint,
        alias_bytes,
        3350,
        records.decode_Ros1Clearpath_navigation_msgsWaypoint,
        records.encode_Ros1Clearpath_navigation_msgsWaypoint,
        attempts,
    )
}

// @brief Observe every original clearpath_navigation_msgs/WaypointStatus field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_navigation_msgsWaypointStatus :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_navigation_msgsWaypointStatus) {
    return core.receive(
        records.Ros1Clearpath_navigation_msgsWaypointStatus,
        alias_bytes,
        3352,
        records.decode_Ros1Clearpath_navigation_msgsWaypointStatus,
        records.encode_Ros1Clearpath_navigation_msgsWaypointStatus,
        attempts,
    )
}

// @brief Observe every original clearpath_platform_msgs/Drive field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_platform_msgsDrive :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_platform_msgsDrive) {
    return core.receive(
        records.Ros1Clearpath_platform_msgsDrive,
        alias_bytes,
        9,
        records.decode_Ros1Clearpath_platform_msgsDrive,
        records.encode_Ros1Clearpath_platform_msgsDrive,
        attempts,
    )
}

// @brief Observe every original clearpath_platform_msgs/DriveFeedback field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_platform_msgsDriveFeedback :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_platform_msgsDriveFeedback) {
    return core.receive(
        records.Ros1Clearpath_platform_msgsDriveFeedback,
        alias_bytes,
        25,
        records.decode_Ros1Clearpath_platform_msgsDriveFeedback,
        records.encode_Ros1Clearpath_platform_msgsDriveFeedback,
        attempts,
    )
}

// @brief Observe every original clearpath_platform_msgs/Fans field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_platform_msgsFans :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_platform_msgsFans) {
    return core.receive(
        records.Ros1Clearpath_platform_msgsFans,
        alias_bytes,
        6,
        records.decode_Ros1Clearpath_platform_msgsFans,
        records.encode_Ros1Clearpath_platform_msgsFans,
        attempts,
    )
}

// @brief Observe every original clearpath_platform_msgs/Feedback field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_platform_msgsFeedback :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_platform_msgsFeedback) {
    return core.receive(
        records.Ros1Clearpath_platform_msgsFeedback,
        alias_bytes,
        196,
        records.decode_Ros1Clearpath_platform_msgsFeedback,
        records.encode_Ros1Clearpath_platform_msgsFeedback,
        attempts,
    )
}

// @brief Observe every original clearpath_platform_msgs/Lights field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_platform_msgsLights :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_platform_msgsLights) {
    return core.receive(
        records.Ros1Clearpath_platform_msgsLights,
        alias_bytes,
        10,
        records.decode_Ros1Clearpath_platform_msgsLights,
        records.encode_Ros1Clearpath_platform_msgsLights,
        attempts,
    )
}

// @brief Observe every original clearpath_platform_msgs/PlatformID field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_platform_msgsPlatformID :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_platform_msgsPlatformID) {
    return core.receive(
        records.Ros1Clearpath_platform_msgsPlatformID,
        alias_bytes,
        1040,
        records.decode_Ros1Clearpath_platform_msgsPlatformID,
        records.encode_Ros1Clearpath_platform_msgsPlatformID,
        attempts,
    )
}

// @brief Observe every original clearpath_platform_msgs/Power field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_platform_msgsPower :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_platform_msgsPower) {
    return core.receive(
        records.Ros1Clearpath_platform_msgsPower,
        alias_bytes,
        172,
        records.decode_Ros1Clearpath_platform_msgsPower,
        records.encode_Ros1Clearpath_platform_msgsPower,
        attempts,
    )
}

// @brief Observe every original clearpath_platform_msgs/RGB field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_platform_msgsRGB :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_platform_msgsRGB) {
    return core.receive(
        records.Ros1Clearpath_platform_msgsRGB,
        alias_bytes,
        3,
        records.decode_Ros1Clearpath_platform_msgsRGB,
        records.encode_Ros1Clearpath_platform_msgsRGB,
        attempts,
    )
}

// @brief Observe every original clearpath_platform_msgs/RYG field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_platform_msgsRYG :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_platform_msgsRYG) {
    return core.receive(
        records.Ros1Clearpath_platform_msgsRYG,
        alias_bytes,
        3,
        records.decode_Ros1Clearpath_platform_msgsRYG,
        records.encode_Ros1Clearpath_platform_msgsRYG,
        attempts,
    )
}

// @brief Observe every original clearpath_platform_msgs/StackLightState field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_platform_msgsStackLightState :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_platform_msgsStackLightState) {
    return core.receive(
        records.Ros1Clearpath_platform_msgsStackLightState,
        alias_bytes,
        264,
        records.decode_Ros1Clearpath_platform_msgsStackLightState,
        records.encode_Ros1Clearpath_platform_msgsStackLightState,
        attempts,
    )
}

// @brief Observe every original clearpath_platform_msgs/Status field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_platform_msgsStatus :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_platform_msgsStatus) {
    return core.receive(
        records.Ros1Clearpath_platform_msgsStatus,
        alias_bytes,
        688,
        records.decode_Ros1Clearpath_platform_msgsStatus,
        records.encode_Ros1Clearpath_platform_msgsStatus,
        attempts,
    )
}

// @brief Observe every original clearpath_platform_msgs/StopStatus field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_platform_msgsStopStatus :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_platform_msgsStopStatus) {
    return core.receive(
        records.Ros1Clearpath_platform_msgsStopStatus,
        alias_bytes,
        146,
        records.decode_Ros1Clearpath_platform_msgsStopStatus,
        records.encode_Ros1Clearpath_platform_msgsStopStatus,
        attempts,
    )
}

// @brief Observe every original clearpath_safety_msgs/AssistedTeleopState field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_safety_msgsAssistedTeleopState :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_safety_msgsAssistedTeleopState) {
    return core.receive(
        records.Ros1Clearpath_safety_msgsAssistedTeleopState,
        alias_bytes,
        262,
        records.decode_Ros1Clearpath_safety_msgsAssistedTeleopState,
        records.encode_Ros1Clearpath_safety_msgsAssistedTeleopState,
        attempts,
    )
}

// @brief Observe every original clearpath_safety_msgs/ObstacleMap field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_safety_msgsObstacleMap :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_safety_msgsObstacleMap) {
    return core.receive(
        records.Ros1Clearpath_safety_msgsObstacleMap,
        alias_bytes,
        12,
        records.decode_Ros1Clearpath_safety_msgsObstacleMap,
        records.encode_Ros1Clearpath_safety_msgsObstacleMap,
        attempts,
    )
}

// @brief Observe every original clearpath_safety_msgs/Safety field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_safety_msgsSafety :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_safety_msgsSafety) {
    return core.receive(
        records.Ros1Clearpath_safety_msgsSafety,
        alias_bytes,
        262,
        records.decode_Ros1Clearpath_safety_msgsSafety,
        records.encode_Ros1Clearpath_safety_msgsSafety,
        attempts,
    )
}

// @brief Observe every original clearpath_safety_msgs/WatchdogConfigArray field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_safety_msgsWatchdogConfigArray :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_safety_msgsWatchdogConfigArray) {
    return core.receive(
        records.Ros1Clearpath_safety_msgsWatchdogConfigArray,
        alias_bytes,
        27558,
        records.decode_Ros1Clearpath_safety_msgsWatchdogConfigArray,
        records.encode_Ros1Clearpath_safety_msgsWatchdogConfigArray,
        attempts,
    )
}

// @brief Observe every original clearpath_safety_msgs/WatchdogConfigCommon field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_safety_msgsWatchdogConfigCommon :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_safety_msgsWatchdogConfigCommon) {
    return core.receive(
        records.Ros1Clearpath_safety_msgsWatchdogConfigCommon,
        alias_bytes,
        1177,
        records.decode_Ros1Clearpath_safety_msgsWatchdogConfigCommon,
        records.encode_Ros1Clearpath_safety_msgsWatchdogConfigCommon,
        attempts,
    )
}

// @brief Observe every original clearpath_safety_msgs/WatchdogConfigCommunication field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_safety_msgsWatchdogConfigCommunication :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_safety_msgsWatchdogConfigCommunication) {
    return core.receive(
        records.Ros1Clearpath_safety_msgsWatchdogConfigCommunication,
        alias_bytes,
        1961,
        records.decode_Ros1Clearpath_safety_msgsWatchdogConfigCommunication,
        records.encode_Ros1Clearpath_safety_msgsWatchdogConfigCommunication,
        attempts,
    )
}

// @brief Observe every original clearpath_safety_msgs/WatchdogConfigHeartbeat field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_safety_msgsWatchdogConfigHeartbeat :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_safety_msgsWatchdogConfigHeartbeat) {
    return core.receive(
        records.Ros1Clearpath_safety_msgsWatchdogConfigHeartbeat,
        alias_bytes,
        1441,
        records.decode_Ros1Clearpath_safety_msgsWatchdogConfigHeartbeat,
        records.encode_Ros1Clearpath_safety_msgsWatchdogConfigHeartbeat,
        attempts,
    )
}

// @brief Observe every original clearpath_safety_msgs/WatchdogConfigInclination field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_safety_msgsWatchdogConfigInclination :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_safety_msgsWatchdogConfigInclination) {
    return core.receive(
        records.Ros1Clearpath_safety_msgsWatchdogConfigInclination,
        alias_bytes,
        1449,
        records.decode_Ros1Clearpath_safety_msgsWatchdogConfigInclination,
        records.encode_Ros1Clearpath_safety_msgsWatchdogConfigInclination,
        attempts,
    )
}

// @brief Observe every original clearpath_safety_msgs/WatchdogConfigNodeStatus field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_safety_msgsWatchdogConfigNodeStatus :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_safety_msgsWatchdogConfigNodeStatus) {
    return core.receive(
        records.Ros1Clearpath_safety_msgsWatchdogConfigNodeStatus,
        alias_bytes,
        1438,
        records.decode_Ros1Clearpath_safety_msgsWatchdogConfigNodeStatus,
        records.encode_Ros1Clearpath_safety_msgsWatchdogConfigNodeStatus,
        attempts,
    )
}

// @brief Observe every original clearpath_safety_msgs/WatchdogConfigNodeletStatus field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_safety_msgsWatchdogConfigNodeletStatus :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_safety_msgsWatchdogConfigNodeletStatus) {
    return core.receive(
        records.Ros1Clearpath_safety_msgsWatchdogConfigNodeletStatus,
        alias_bytes,
        1698,
        records.decode_Ros1Clearpath_safety_msgsWatchdogConfigNodeletStatus,
        records.encode_Ros1Clearpath_safety_msgsWatchdogConfigNodeletStatus,
        attempts,
    )
}

// @brief Observe every original clearpath_safety_msgs/WatchdogConfigNumPoints field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_safety_msgsWatchdogConfigNumPoints :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_safety_msgsWatchdogConfigNumPoints) {
    return core.receive(
        records.Ros1Clearpath_safety_msgsWatchdogConfigNumPoints,
        alias_bytes,
        1441,
        records.decode_Ros1Clearpath_safety_msgsWatchdogConfigNumPoints,
        records.encode_Ros1Clearpath_safety_msgsWatchdogConfigNumPoints,
        attempts,
    )
}

// @brief Observe every original clearpath_safety_msgs/WatchdogConfigOdomCovariance field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_safety_msgsWatchdogConfigOdomCovariance :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_safety_msgsWatchdogConfigOdomCovariance) {
    return core.receive(
        records.Ros1Clearpath_safety_msgsWatchdogConfigOdomCovariance,
        alias_bytes,
        1449,
        records.decode_Ros1Clearpath_safety_msgsWatchdogConfigOdomCovariance,
        records.encode_Ros1Clearpath_safety_msgsWatchdogConfigOdomCovariance,
        attempts,
    )
}

// @brief Observe every original clearpath_safety_msgs/WatchdogConfigRtkFix field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_safety_msgsWatchdogConfigRtkFix :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_safety_msgsWatchdogConfigRtkFix) {
    return core.receive(
        records.Ros1Clearpath_safety_msgsWatchdogConfigRtkFix,
        alias_bytes,
        1443,
        records.decode_Ros1Clearpath_safety_msgsWatchdogConfigRtkFix,
        records.encode_Ros1Clearpath_safety_msgsWatchdogConfigRtkFix,
        attempts,
    )
}

// @brief Observe every original clearpath_safety_msgs/WatchdogConfigTopicData field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_safety_msgsWatchdogConfigTopicData :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_safety_msgsWatchdogConfigTopicData) {
    return core.receive(
        records.Ros1Clearpath_safety_msgsWatchdogConfigTopicData,
        alias_bytes,
        1441,
        records.decode_Ros1Clearpath_safety_msgsWatchdogConfigTopicData,
        records.encode_Ros1Clearpath_safety_msgsWatchdogConfigTopicData,
        attempts,
    )
}

// @brief Observe every original clearpath_safety_msgs/WatchdogStatus field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_safety_msgsWatchdogStatus :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_safety_msgsWatchdogStatus) {
    return core.receive(
        records.Ros1Clearpath_safety_msgsWatchdogStatus,
        alias_bytes,
        653,
        records.decode_Ros1Clearpath_safety_msgsWatchdogStatus,
        records.encode_Ros1Clearpath_safety_msgsWatchdogStatus,
        attempts,
    )
}

// @brief Observe every original clearpath_safety_msgs/WatchdogStatusArray field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Clearpath_safety_msgsWatchdogStatusArray :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Clearpath_safety_msgsWatchdogStatusArray) {
    return core.receive(
        records.Ros1Clearpath_safety_msgsWatchdogStatusArray,
        alias_bytes,
        1454,
        records.decode_Ros1Clearpath_safety_msgsWatchdogStatusArray,
        records.encode_Ros1Clearpath_safety_msgsWatchdogStatusArray,
        attempts,
    )
}

// @brief Observe every original geometry_msgs/Point field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Geometry_msgsPoint :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Geometry_msgsPoint) {
    return core.receive(
        records.Ros1Geometry_msgsPoint,
        alias_bytes,
        24,
        records.decode_Ros1Geometry_msgsPoint,
        records.encode_Ros1Geometry_msgsPoint,
        attempts,
    )
}

// @brief Observe every original geometry_msgs/Pose field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Geometry_msgsPose :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Geometry_msgsPose) {
    return core.receive(
        records.Ros1Geometry_msgsPose,
        alias_bytes,
        56,
        records.decode_Ros1Geometry_msgsPose,
        records.encode_Ros1Geometry_msgsPose,
        attempts,
    )
}

// @brief Observe every original geometry_msgs/PoseStamped field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Geometry_msgsPoseStamped :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Geometry_msgsPoseStamped) {
    return core.receive(
        records.Ros1Geometry_msgsPoseStamped,
        alias_bytes,
        200,
        records.decode_Ros1Geometry_msgsPoseStamped,
        records.encode_Ros1Geometry_msgsPoseStamped,
        attempts,
    )
}

// @brief Observe every original geometry_msgs/PoseWithCovariance field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Geometry_msgsPoseWithCovariance :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Geometry_msgsPoseWithCovariance) {
    return core.receive(
        records.Ros1Geometry_msgsPoseWithCovariance,
        alias_bytes,
        344,
        records.decode_Ros1Geometry_msgsPoseWithCovariance,
        records.encode_Ros1Geometry_msgsPoseWithCovariance,
        attempts,
    )
}

// @brief Observe every original geometry_msgs/PoseWithCovarianceStamped field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Geometry_msgsPoseWithCovarianceStamped :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Geometry_msgsPoseWithCovarianceStamped) {
    return core.receive(
        records.Ros1Geometry_msgsPoseWithCovarianceStamped,
        alias_bytes,
        488,
        records.decode_Ros1Geometry_msgsPoseWithCovarianceStamped,
        records.encode_Ros1Geometry_msgsPoseWithCovarianceStamped,
        attempts,
    )
}

// @brief Observe every original geometry_msgs/Quaternion field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Geometry_msgsQuaternion :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Geometry_msgsQuaternion) {
    return core.receive(
        records.Ros1Geometry_msgsQuaternion,
        alias_bytes,
        32,
        records.decode_Ros1Geometry_msgsQuaternion,
        records.encode_Ros1Geometry_msgsQuaternion,
        attempts,
    )
}

// @brief Observe every original geometry_msgs/Twist field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Geometry_msgsTwist :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Geometry_msgsTwist) {
    return core.receive(
        records.Ros1Geometry_msgsTwist,
        alias_bytes,
        48,
        records.decode_Ros1Geometry_msgsTwist,
        records.encode_Ros1Geometry_msgsTwist,
        attempts,
    )
}

// @brief Observe every original geometry_msgs/TwistWithCovariance field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Geometry_msgsTwistWithCovariance :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Geometry_msgsTwistWithCovariance) {
    return core.receive(
        records.Ros1Geometry_msgsTwistWithCovariance,
        alias_bytes,
        336,
        records.decode_Ros1Geometry_msgsTwistWithCovariance,
        records.encode_Ros1Geometry_msgsTwistWithCovariance,
        attempts,
    )
}

// @brief Observe every original geometry_msgs/Vector3 field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Geometry_msgsVector3 :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Geometry_msgsVector3) {
    return core.receive(
        records.Ros1Geometry_msgsVector3,
        alias_bytes,
        24,
        records.decode_Ros1Geometry_msgsVector3,
        records.encode_Ros1Geometry_msgsVector3,
        attempts,
    )
}

// @brief Observe every original husky_msgs/HuskyStatus field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Husky_msgsHuskyStatus :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Husky_msgsHuskyStatus) {
    return core.receive(
        records.Ros1Husky_msgsHuskyStatus,
        alias_bytes,
        252,
        records.decode_Ros1Husky_msgsHuskyStatus,
        records.encode_Ros1Husky_msgsHuskyStatus,
        attempts,
    )
}

// @brief Observe every original jackal_msgs/Drive field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Jackal_msgsDrive :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Jackal_msgsDrive) {
    return core.receive(
        records.Ros1Jackal_msgsDrive,
        alias_bytes,
        9,
        records.decode_Ros1Jackal_msgsDrive,
        records.encode_Ros1Jackal_msgsDrive,
        attempts,
    )
}

// @brief Observe every original jackal_msgs/DriveFeedback field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Jackal_msgsDriveFeedback :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Jackal_msgsDriveFeedback) {
    return core.receive(
        records.Ros1Jackal_msgsDriveFeedback,
        alias_bytes,
        25,
        records.decode_Ros1Jackal_msgsDriveFeedback,
        records.encode_Ros1Jackal_msgsDriveFeedback,
        attempts,
    )
}

// @brief Observe every original jackal_msgs/Feedback field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Jackal_msgsFeedback :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Jackal_msgsFeedback) {
    return core.receive(
        records.Ros1Jackal_msgsFeedback,
        alias_bytes,
        204,
        records.decode_Ros1Jackal_msgsFeedback,
        records.encode_Ros1Jackal_msgsFeedback,
        attempts,
    )
}

// @brief Observe every original jackal_msgs/Status field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Jackal_msgsStatus :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Jackal_msgsStatus) {
    return core.receive(
        records.Ros1Jackal_msgsStatus,
        alias_bytes,
        463,
        records.decode_Ros1Jackal_msgsStatus,
        records.encode_Ros1Jackal_msgsStatus,
        attempts,
    )
}

// @brief Observe every original nav_msgs/Odometry field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Nav_msgsOdometry :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Nav_msgsOdometry) {
    return core.receive(
        records.Ros1Nav_msgsOdometry,
        alias_bytes,
        1084,
        records.decode_Ros1Nav_msgsOdometry,
        records.encode_Ros1Nav_msgsOdometry,
        attempts,
    )
}

// @brief Observe every original nav_msgs/Path field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Nav_msgsPath :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Nav_msgsPath) {
    return core.receive(
        records.Ros1Nav_msgsPath,
        alias_bytes,
        548,
        records.decode_Ros1Nav_msgsPath,
        records.encode_Ros1Nav_msgsPath,
        attempts,
    )
}

// @brief Observe every original sensor_msgs/NavSatFix field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Sensor_msgsNavSatFix :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Sensor_msgsNavSatFix) {
    return core.receive(
        records.Ros1Sensor_msgsNavSatFix,
        alias_bytes,
        244,
        records.decode_Ros1Sensor_msgsNavSatFix,
        records.encode_Ros1Sensor_msgsNavSatFix,
        attempts,
    )
}

// @brief Observe every original sensor_msgs/NavSatStatus field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Sensor_msgsNavSatStatus :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Sensor_msgsNavSatStatus) {
    return core.receive(
        records.Ros1Sensor_msgsNavSatStatus,
        alias_bytes,
        3,
        records.decode_Ros1Sensor_msgsNavSatStatus,
        records.encode_Ros1Sensor_msgsNavSatStatus,
        attempts,
    )
}

// @brief Observe every original std_msgs/Duration field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Std_msgsDuration :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Std_msgsDuration) {
    return core.receive(
        records.Ros1Std_msgsDuration,
        alias_bytes,
        8,
        records.decode_Ros1Std_msgsDuration,
        records.encode_Ros1Std_msgsDuration,
        attempts,
    )
}

// @brief Observe every original std_msgs/Header field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Std_msgsHeader :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Std_msgsHeader) {
    return core.receive(
        records.Ros1Std_msgsHeader,
        alias_bytes,
        144,
        records.decode_Ros1Std_msgsHeader,
        records.encode_Ros1Std_msgsHeader,
        attempts,
    )
}

// @brief Observe every original std_msgs/String field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Std_msgsString :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Std_msgsString) {
    return core.receive(
        records.Ros1Std_msgsString,
        alias_bytes,
        260,
        records.decode_Ros1Std_msgsString,
        records.encode_Ros1Std_msgsString,
        attempts,
    )
}

// @brief Observe every original std_msgs/Time field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Std_msgsTime :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Std_msgsTime) {
    return core.receive(
        records.Ros1Std_msgsTime,
        alias_bytes,
        8,
        records.decode_Ros1Std_msgsTime,
        records.encode_Ros1Std_msgsTime,
        attempts,
    )
}

// @brief Call complete clearpath_camera_msgs/q62AreaZoom exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_camera_msgsQ62AreaZoomRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_camera_msgsQ62AreaZoomRequest,
) -> core.Observation(records.Ros1Clearpath_camera_msgsQ62AreaZoomResponse) {
    result: core.Observation(records.Ros1Clearpath_camera_msgsQ62AreaZoomResponse)
    bytes: [12]u8
    size, code := records.encode_Ros1Clearpath_camera_msgsQ62AreaZoomRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_camera_msgsQ62AreaZoomResponse, aliasBytes, 261,
        records.decode_Ros1Clearpath_camera_msgsQ62AreaZoomResponse, records.encode_Ros1Clearpath_camera_msgsQ62AreaZoomResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_control_msgs/SetControlMode exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_control_msgsSetControlModeRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_control_msgsSetControlModeRequest,
) -> core.Observation(records.Ros1Clearpath_control_msgsSetControlModeResponse) {
    result: core.Observation(records.Ros1Clearpath_control_msgsSetControlModeResponse)
    bytes: [1]u8
    size, code := records.encode_Ros1Clearpath_control_msgsSetControlModeRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_control_msgsSetControlModeResponse, aliasBytes, 0,
        records.decode_Ros1Clearpath_control_msgsSetControlModeResponse, records.encode_Ros1Clearpath_control_msgsSetControlModeResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_dock_msgs/AddDock exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_dock_msgsAddDockRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_dock_msgsAddDockRequest,
) -> core.Observation(records.Ros1Clearpath_dock_msgsAddDockResponse) {
    result: core.Observation(records.Ros1Clearpath_dock_msgsAddDockResponse)
    bytes: [1204]u8
    size, code := records.encode_Ros1Clearpath_dock_msgsAddDockRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_dock_msgsAddDockResponse, aliasBytes, 261,
        records.decode_Ros1Clearpath_dock_msgsAddDockResponse, records.encode_Ros1Clearpath_dock_msgsAddDockResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_dock_msgs/ExportData exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_dock_msgsExportDataRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_dock_msgsExportDataRequest,
) -> core.Observation(records.Ros1Clearpath_dock_msgsExportDataResponse) {
    result: core.Observation(records.Ros1Clearpath_dock_msgsExportDataResponse)
    bytes: [1]u8
    size, code := records.encode_Ros1Clearpath_dock_msgsExportDataRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_dock_msgsExportDataResponse, aliasBytes, 260,
        records.decode_Ros1Clearpath_dock_msgsExportDataResponse, records.encode_Ros1Clearpath_dock_msgsExportDataResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_dock_msgs/GetDockByUuid exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_dock_msgsGetDockByUuidRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_dock_msgsGetDockByUuidRequest,
) -> core.Observation(records.Ros1Clearpath_dock_msgsGetDockByUuidResponse) {
    result: core.Observation(records.Ros1Clearpath_dock_msgsGetDockByUuidResponse)
    bytes: [260]u8
    size, code := records.encode_Ros1Clearpath_dock_msgsGetDockByUuidRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_dock_msgsGetDockByUuidResponse, aliasBytes, 1316,
        records.decode_Ros1Clearpath_dock_msgsGetDockByUuidResponse, records.encode_Ros1Clearpath_dock_msgsGetDockByUuidResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_dock_msgs/ImportData exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_dock_msgsImportDataRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_dock_msgsImportDataRequest,
) -> core.Observation(records.Ros1Clearpath_dock_msgsImportDataResponse) {
    result: core.Observation(records.Ros1Clearpath_dock_msgsImportDataResponse)
    bytes: [260]u8
    size, code := records.encode_Ros1Clearpath_dock_msgsImportDataRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_dock_msgsImportDataResponse, aliasBytes, 2412,
        records.decode_Ros1Clearpath_dock_msgsImportDataResponse, records.encode_Ros1Clearpath_dock_msgsImportDataResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_dock_msgs/RemoveDock exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_dock_msgsRemoveDockRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_dock_msgsRemoveDockRequest,
) -> core.Observation(records.Ros1Clearpath_dock_msgsRemoveDockResponse) {
    result: core.Observation(records.Ros1Clearpath_dock_msgsRemoveDockResponse)
    bytes: [392]u8
    size, code := records.encode_Ros1Clearpath_dock_msgsRemoveDockRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_dock_msgsRemoveDockResponse, aliasBytes, 261,
        records.decode_Ros1Clearpath_dock_msgsRemoveDockResponse, records.encode_Ros1Clearpath_dock_msgsRemoveDockResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_dock_msgs/SetDockLocationById exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_dock_msgsSetDockLocationByIdRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_dock_msgsSetDockLocationByIdRequest,
) -> core.Observation(records.Ros1Clearpath_dock_msgsSetDockLocationByIdResponse) {
    result: core.Observation(records.Ros1Clearpath_dock_msgsSetDockLocationByIdResponse)
    bytes: [260]u8
    size, code := records.encode_Ros1Clearpath_dock_msgsSetDockLocationByIdRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_dock_msgsSetDockLocationByIdResponse, aliasBytes, 261,
        records.decode_Ros1Clearpath_dock_msgsSetDockLocationByIdResponse, records.encode_Ros1Clearpath_dock_msgsSetDockLocationByIdResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_dock_msgs/SetDockLocationByName exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_dock_msgsSetDockLocationByNameRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_dock_msgsSetDockLocationByNameRequest,
) -> core.Observation(records.Ros1Clearpath_dock_msgsSetDockLocationByNameResponse) {
    result: core.Observation(records.Ros1Clearpath_dock_msgsSetDockLocationByNameResponse)
    bytes: [132]u8
    size, code := records.encode_Ros1Clearpath_dock_msgsSetDockLocationByNameRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_dock_msgsSetDockLocationByNameResponse, aliasBytes, 261,
        records.decode_Ros1Clearpath_dock_msgsSetDockLocationByNameResponse, records.encode_Ros1Clearpath_dock_msgsSetDockLocationByNameResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_localization_msgs/ConvertCartesianToLatLon exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_localization_msgsConvertCartesianToLatLonRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_localization_msgsConvertCartesianToLatLonRequest,
) -> core.Observation(records.Ros1Clearpath_localization_msgsConvertCartesianToLatLonResponse) {
    result: core.Observation(records.Ros1Clearpath_localization_msgsConvertCartesianToLatLonResponse)
    bytes: [200]u8
    size, code := records.encode_Ros1Clearpath_localization_msgsConvertCartesianToLatLonRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_localization_msgsConvertCartesianToLatLonResponse, aliasBytes, 244,
        records.decode_Ros1Clearpath_localization_msgsConvertCartesianToLatLonResponse, records.encode_Ros1Clearpath_localization_msgsConvertCartesianToLatLonResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_localization_msgs/ConvertCartesianToLatLonArray exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_localization_msgsConvertCartesianToLatLonArrayRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_localization_msgsConvertCartesianToLatLonArrayRequest,
) -> core.Observation(records.Ros1Clearpath_localization_msgsConvertCartesianToLatLonArrayResponse) {
    result: core.Observation(records.Ros1Clearpath_localization_msgsConvertCartesianToLatLonArrayResponse)
    bytes: [404]u8
    size, code := records.encode_Ros1Clearpath_localization_msgsConvertCartesianToLatLonArrayRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_localization_msgsConvertCartesianToLatLonArrayResponse, aliasBytes, 492,
        records.decode_Ros1Clearpath_localization_msgsConvertCartesianToLatLonArrayResponse, records.encode_Ros1Clearpath_localization_msgsConvertCartesianToLatLonArrayResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_localization_msgs/ConvertLatLonToCartesian exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_localization_msgsConvertLatLonToCartesianRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_localization_msgsConvertLatLonToCartesianRequest,
) -> core.Observation(records.Ros1Clearpath_localization_msgsConvertLatLonToCartesianResponse) {
    result: core.Observation(records.Ros1Clearpath_localization_msgsConvertLatLonToCartesianResponse)
    bytes: [244]u8
    size, code := records.encode_Ros1Clearpath_localization_msgsConvertLatLonToCartesianRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_localization_msgsConvertLatLonToCartesianResponse, aliasBytes, 200,
        records.decode_Ros1Clearpath_localization_msgsConvertLatLonToCartesianResponse, records.encode_Ros1Clearpath_localization_msgsConvertLatLonToCartesianResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_localization_msgs/ConvertLatLonToCartesianArray exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_localization_msgsConvertLatLonToCartesianArrayRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_localization_msgsConvertLatLonToCartesianArrayRequest,
) -> core.Observation(records.Ros1Clearpath_localization_msgsConvertLatLonToCartesianArrayResponse) {
    result: core.Observation(records.Ros1Clearpath_localization_msgsConvertLatLonToCartesianArrayResponse)
    bytes: [492]u8
    size, code := records.encode_Ros1Clearpath_localization_msgsConvertLatLonToCartesianArrayRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_localization_msgsConvertLatLonToCartesianArrayResponse, aliasBytes, 404,
        records.decode_Ros1Clearpath_localization_msgsConvertLatLonToCartesianArrayResponse, records.encode_Ros1Clearpath_localization_msgsConvertLatLonToCartesianArrayResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_localization_msgs/ResetLocalization exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_localization_msgsResetLocalizationRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_localization_msgsResetLocalizationRequest,
) -> core.Observation(records.Ros1Clearpath_localization_msgsResetLocalizationResponse) {
    result: core.Observation(records.Ros1Clearpath_localization_msgsResetLocalizationResponse)
    bytes: [5]u8
    size, code := records.encode_Ros1Clearpath_localization_msgsResetLocalizationRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_localization_msgsResetLocalizationResponse, aliasBytes, 1,
        records.decode_Ros1Clearpath_localization_msgsResetLocalizationResponse, records.encode_Ros1Clearpath_localization_msgsResetLocalizationResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_localization_msgs/SetDatum exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_localization_msgsSetDatumRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_localization_msgsSetDatumRequest,
) -> core.Observation(records.Ros1Clearpath_localization_msgsSetDatumResponse) {
    result: core.Observation(records.Ros1Clearpath_localization_msgsSetDatumResponse)
    bytes: [8]u8
    size, code := records.encode_Ros1Clearpath_localization_msgsSetDatumRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_localization_msgsSetDatumResponse, aliasBytes, 1,
        records.decode_Ros1Clearpath_localization_msgsSetDatumResponse, records.encode_Ros1Clearpath_localization_msgsSetDatumResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_logger_msgs/DeleteLog exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_logger_msgsDeleteLogRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_logger_msgsDeleteLogRequest,
) -> core.Observation(records.Ros1Clearpath_logger_msgsDeleteLogResponse) {
    result: core.Observation(records.Ros1Clearpath_logger_msgsDeleteLogResponse)
    bytes: [262]u8
    size, code := records.encode_Ros1Clearpath_logger_msgsDeleteLogRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_logger_msgsDeleteLogResponse, aliasBytes, 1,
        records.decode_Ros1Clearpath_logger_msgsDeleteLogResponse, records.encode_Ros1Clearpath_logger_msgsDeleteLogResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_logger_msgs/DownloadLog exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_logger_msgsDownloadLogRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_logger_msgsDownloadLogRequest,
) -> core.Observation(records.Ros1Clearpath_logger_msgsDownloadLogResponse) {
    result: core.Observation(records.Ros1Clearpath_logger_msgsDownloadLogResponse)
    bytes: [260]u8
    size, code := records.encode_Ros1Clearpath_logger_msgsDownloadLogRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_logger_msgsDownloadLogResponse, aliasBytes, 261,
        records.decode_Ros1Clearpath_logger_msgsDownloadLogResponse, records.encode_Ros1Clearpath_logger_msgsDownloadLogResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_logger_msgs/GetAllLogs exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_logger_msgsGetAllLogsRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_logger_msgsGetAllLogsRequest,
) -> core.Observation(records.Ros1Clearpath_logger_msgsGetAllLogsResponse) {
    result: core.Observation(records.Ros1Clearpath_logger_msgsGetAllLogsResponse)
    bytes: [1]u8
    size, code := records.encode_Ros1Clearpath_logger_msgsGetAllLogsRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_logger_msgsGetAllLogsResponse, aliasBytes, 14132,
        records.decode_Ros1Clearpath_logger_msgsGetAllLogsResponse, records.encode_Ros1Clearpath_logger_msgsGetAllLogsResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_logger_msgs/RecordCustomEvent exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_logger_msgsRecordCustomEventRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_logger_msgsRecordCustomEventRequest,
) -> core.Observation(records.Ros1Clearpath_logger_msgsRecordCustomEventResponse) {
    result: core.Observation(records.Ros1Clearpath_logger_msgsRecordCustomEventResponse)
    bytes: [916]u8
    size, code := records.encode_Ros1Clearpath_logger_msgsRecordCustomEventRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_logger_msgsRecordCustomEventResponse, aliasBytes, 3190,
        records.decode_Ros1Clearpath_logger_msgsRecordCustomEventResponse, records.encode_Ros1Clearpath_logger_msgsRecordCustomEventResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_logger_msgs/RecordErrorEvent exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_logger_msgsRecordErrorEventRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_logger_msgsRecordErrorEventRequest,
) -> core.Observation(records.Ros1Clearpath_logger_msgsRecordErrorEventResponse) {
    result: core.Observation(records.Ros1Clearpath_logger_msgsRecordErrorEventResponse)
    bytes: [524]u8
    size, code := records.encode_Ros1Clearpath_logger_msgsRecordErrorEventRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_logger_msgsRecordErrorEventResponse, aliasBytes, 3190,
        records.decode_Ros1Clearpath_logger_msgsRecordErrorEventResponse, records.encode_Ros1Clearpath_logger_msgsRecordErrorEventResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_logger_msgs/RecordEvent exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_logger_msgsRecordEventRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_logger_msgsRecordEventRequest,
) -> core.Observation(records.Ros1Clearpath_logger_msgsRecordEventResponse) {
    result: core.Observation(records.Ros1Clearpath_logger_msgsRecordEventResponse)
    bytes: [3190]u8
    size, code := records.encode_Ros1Clearpath_logger_msgsRecordEventRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_logger_msgsRecordEventResponse, aliasBytes, 3190,
        records.decode_Ros1Clearpath_logger_msgsRecordEventResponse, records.encode_Ros1Clearpath_logger_msgsRecordEventResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_logger_msgs/RecordLocationEvent exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_logger_msgsRecordLocationEventRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_logger_msgsRecordLocationEventRequest,
) -> core.Observation(records.Ros1Clearpath_logger_msgsRecordLocationEventResponse) {
    result: core.Observation(records.Ros1Clearpath_logger_msgsRecordLocationEventResponse)
    bytes: [1680]u8
    size, code := records.encode_Ros1Clearpath_logger_msgsRecordLocationEventRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_logger_msgsRecordLocationEventResponse, aliasBytes, 3190,
        records.decode_Ros1Clearpath_logger_msgsRecordLocationEventResponse, records.encode_Ros1Clearpath_logger_msgsRecordLocationEventResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_logger_msgs/RecordMediaEvent exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_logger_msgsRecordMediaEventRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_logger_msgsRecordMediaEventRequest,
) -> core.Observation(records.Ros1Clearpath_logger_msgsRecordMediaEventResponse) {
    result: core.Observation(records.Ros1Clearpath_logger_msgsRecordMediaEventResponse)
    bytes: [652]u8
    size, code := records.encode_Ros1Clearpath_logger_msgsRecordMediaEventRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_logger_msgsRecordMediaEventResponse, aliasBytes, 3190,
        records.decode_Ros1Clearpath_logger_msgsRecordMediaEventResponse, records.encode_Ros1Clearpath_logger_msgsRecordMediaEventResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_logger_msgs/RecordPowerEvent exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_logger_msgsRecordPowerEventRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_logger_msgsRecordPowerEventRequest,
) -> core.Observation(records.Ros1Clearpath_logger_msgsRecordPowerEventResponse) {
    result: core.Observation(records.Ros1Clearpath_logger_msgsRecordPowerEventResponse)
    bytes: [5]u8
    size, code := records.encode_Ros1Clearpath_logger_msgsRecordPowerEventRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_logger_msgsRecordPowerEventResponse, aliasBytes, 3190,
        records.decode_Ros1Clearpath_logger_msgsRecordPowerEventResponse, records.encode_Ros1Clearpath_logger_msgsRecordPowerEventResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_logger_msgs/StartRecording exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_logger_msgsStartRecordingRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_logger_msgsStartRecordingRequest,
) -> core.Observation(records.Ros1Clearpath_logger_msgsStartRecordingResponse) {
    result: core.Observation(records.Ros1Clearpath_logger_msgsStartRecordingResponse)
    bytes: [132]u8
    size, code := records.encode_Ros1Clearpath_logger_msgsStartRecordingRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_logger_msgsStartRecordingResponse, aliasBytes, 7064,
        records.decode_Ros1Clearpath_logger_msgsStartRecordingResponse, records.encode_Ros1Clearpath_logger_msgsStartRecordingResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_logger_msgs/StopRecording exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_logger_msgsStopRecordingRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_logger_msgsStopRecordingRequest,
) -> core.Observation(records.Ros1Clearpath_logger_msgsStopRecordingResponse) {
    result: core.Observation(records.Ros1Clearpath_logger_msgsStopRecordingResponse)
    bytes: [260]u8
    size, code := records.encode_Ros1Clearpath_logger_msgsStopRecordingRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_logger_msgsStopRecordingResponse, aliasBytes, 7064,
        records.decode_Ros1Clearpath_logger_msgsStopRecordingResponse, records.encode_Ros1Clearpath_logger_msgsStopRecordingResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_mission_manager_msgs/AddNetworkEdge exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsAddNetworkEdgeRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_mission_manager_msgsAddNetworkEdgeRequest,
) -> core.Observation(records.Ros1Clearpath_mission_manager_msgsAddNetworkEdgeResponse) {
    result: core.Observation(records.Ros1Clearpath_mission_manager_msgsAddNetworkEdgeResponse)
    bytes: [793]u8
    size, code := records.encode_Ros1Clearpath_mission_manager_msgsAddNetworkEdgeRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_mission_manager_msgsAddNetworkEdgeResponse, aliasBytes, 1652,
        records.decode_Ros1Clearpath_mission_manager_msgsAddNetworkEdgeResponse, records.encode_Ros1Clearpath_mission_manager_msgsAddNetworkEdgeResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_mission_manager_msgs/AddNetworkPath exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsAddNetworkPathRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_mission_manager_msgsAddNetworkPathRequest,
) -> core.Observation(records.Ros1Clearpath_mission_manager_msgsAddNetworkPathResponse) {
    result: core.Observation(records.Ros1Clearpath_mission_manager_msgsAddNetworkPathResponse)
    bytes: [301]u8
    size, code := records.encode_Ros1Clearpath_mission_manager_msgsAddNetworkPathRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_mission_manager_msgsAddNetworkPathResponse, aliasBytes, 261,
        records.decode_Ros1Clearpath_mission_manager_msgsAddNetworkPathResponse, records.encode_Ros1Clearpath_mission_manager_msgsAddNetworkPathResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_mission_manager_msgs/AddNetworkPoint exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsAddNetworkPointRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_mission_manager_msgsAddNetworkPointRequest,
) -> core.Observation(records.Ros1Clearpath_mission_manager_msgsAddNetworkPointResponse) {
    result: core.Observation(records.Ros1Clearpath_mission_manager_msgsAddNetworkPointResponse)
    bytes: [1325]u8
    size, code := records.encode_Ros1Clearpath_mission_manager_msgsAddNetworkPointRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_mission_manager_msgsAddNetworkPointResponse, aliasBytes, 276,
        records.decode_Ros1Clearpath_mission_manager_msgsAddNetworkPointResponse, records.encode_Ros1Clearpath_mission_manager_msgsAddNetworkPointResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_mission_manager_msgs/AddRemoveById exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsAddRemoveByIdRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_mission_manager_msgsAddRemoveByIdRequest,
) -> core.Observation(records.Ros1Clearpath_mission_manager_msgsAddRemoveByIdResponse) {
    result: core.Observation(records.Ros1Clearpath_mission_manager_msgsAddRemoveByIdResponse)
    bytes: [524]u8
    size, code := records.encode_Ros1Clearpath_mission_manager_msgsAddRemoveByIdRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_mission_manager_msgsAddRemoveByIdResponse, aliasBytes, 1,
        records.decode_Ros1Clearpath_mission_manager_msgsAddRemoveByIdResponse, records.encode_Ros1Clearpath_mission_manager_msgsAddRemoveByIdResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_mission_manager_msgs/AddRemoveTag exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsAddRemoveTagRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_mission_manager_msgsAddRemoveTagRequest,
) -> core.Observation(records.Ros1Clearpath_mission_manager_msgsAddRemoveTagResponse) {
    result: core.Observation(records.Ros1Clearpath_mission_manager_msgsAddRemoveTagResponse)
    bytes: [520]u8
    size, code := records.encode_Ros1Clearpath_mission_manager_msgsAddRemoveTagRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_mission_manager_msgsAddRemoveTagResponse, aliasBytes, 524,
        records.decode_Ros1Clearpath_mission_manager_msgsAddRemoveTagResponse, records.encode_Ros1Clearpath_mission_manager_msgsAddRemoveTagResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_mission_manager_msgs/CloneMission exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsCloneMissionRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_mission_manager_msgsCloneMissionRequest,
) -> core.Observation(records.Ros1Clearpath_mission_manager_msgsCloneMissionResponse) {
    result: core.Observation(records.Ros1Clearpath_mission_manager_msgsCloneMissionResponse)
    bytes: [521]u8
    size, code := records.encode_Ros1Clearpath_mission_manager_msgsCloneMissionRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_mission_manager_msgsCloneMissionResponse, aliasBytes, 13336,
        records.decode_Ros1Clearpath_mission_manager_msgsCloneMissionResponse, records.encode_Ros1Clearpath_mission_manager_msgsCloneMissionResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_mission_manager_msgs/CloneNetworkMap exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsCloneNetworkMapRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_mission_manager_msgsCloneNetworkMapRequest,
) -> core.Observation(records.Ros1Clearpath_mission_manager_msgsCloneNetworkMapResponse) {
    result: core.Observation(records.Ros1Clearpath_mission_manager_msgsCloneNetworkMapResponse)
    bytes: [520]u8
    size, code := records.encode_Ros1Clearpath_mission_manager_msgsCloneNetworkMapRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_mission_manager_msgsCloneNetworkMapResponse, aliasBytes, 2608,
        records.decode_Ros1Clearpath_mission_manager_msgsCloneNetworkMapResponse, records.encode_Ros1Clearpath_mission_manager_msgsCloneNetworkMapResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_mission_manager_msgs/CloneNetworkMission exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsCloneNetworkMissionRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_mission_manager_msgsCloneNetworkMissionRequest,
) -> core.Observation(records.Ros1Clearpath_mission_manager_msgsCloneNetworkMissionResponse) {
    result: core.Observation(records.Ros1Clearpath_mission_manager_msgsCloneNetworkMissionResponse)
    bytes: [521]u8
    size, code := records.encode_Ros1Clearpath_mission_manager_msgsCloneNetworkMissionRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_mission_manager_msgsCloneNetworkMissionResponse, aliasBytes, 13606,
        records.decode_Ros1Clearpath_mission_manager_msgsCloneNetworkMissionResponse, records.encode_Ros1Clearpath_mission_manager_msgsCloneNetworkMissionResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_mission_manager_msgs/ClonePointOfInterest exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsClonePointOfInterestRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_mission_manager_msgsClonePointOfInterestRequest,
) -> core.Observation(records.Ros1Clearpath_mission_manager_msgsClonePointOfInterestResponse) {
    result: core.Observation(records.Ros1Clearpath_mission_manager_msgsClonePointOfInterestResponse)
    bytes: [520]u8
    size, code := records.encode_Ros1Clearpath_mission_manager_msgsClonePointOfInterestRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_mission_manager_msgsClonePointOfInterestResponse, aliasBytes, 1209,
        records.decode_Ros1Clearpath_mission_manager_msgsClonePointOfInterestResponse, records.encode_Ros1Clearpath_mission_manager_msgsClonePointOfInterestResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_mission_manager_msgs/CreateMission exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsCreateMissionRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_mission_manager_msgsCreateMissionRequest,
) -> core.Observation(records.Ros1Clearpath_mission_manager_msgsCreateMissionResponse) {
    result: core.Observation(records.Ros1Clearpath_mission_manager_msgsCreateMissionResponse)
    bytes: [1964]u8
    size, code := records.encode_Ros1Clearpath_mission_manager_msgsCreateMissionRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_mission_manager_msgsCreateMissionResponse, aliasBytes, 13336,
        records.decode_Ros1Clearpath_mission_manager_msgsCreateMissionResponse, records.encode_Ros1Clearpath_mission_manager_msgsCreateMissionResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_mission_manager_msgs/CreateNetworkMap exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsCreateNetworkMapRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_mission_manager_msgsCreateNetworkMapRequest,
) -> core.Observation(records.Ros1Clearpath_mission_manager_msgsCreateNetworkMapResponse) {
    result: core.Observation(records.Ros1Clearpath_mission_manager_msgsCreateNetworkMapResponse)
    bytes: [1756]u8
    size, code := records.encode_Ros1Clearpath_mission_manager_msgsCreateNetworkMapRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_mission_manager_msgsCreateNetworkMapResponse, aliasBytes, 2608,
        records.decode_Ros1Clearpath_mission_manager_msgsCreateNetworkMapResponse, records.encode_Ros1Clearpath_mission_manager_msgsCreateNetworkMapResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_mission_manager_msgs/CreateNetworkMission exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsCreateNetworkMissionRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_mission_manager_msgsCreateNetworkMissionRequest,
) -> core.Observation(records.Ros1Clearpath_mission_manager_msgsCreateNetworkMissionResponse) {
    result: core.Observation(records.Ros1Clearpath_mission_manager_msgsCreateNetworkMissionResponse)
    bytes: [2234]u8
    size, code := records.encode_Ros1Clearpath_mission_manager_msgsCreateNetworkMissionRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_mission_manager_msgsCreateNetworkMissionResponse, aliasBytes, 13606,
        records.decode_Ros1Clearpath_mission_manager_msgsCreateNetworkMissionResponse, records.encode_Ros1Clearpath_mission_manager_msgsCreateNetworkMissionResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_mission_manager_msgs/CreatePointOfInterest exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsCreatePointOfInterestRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_mission_manager_msgsCreatePointOfInterestRequest,
) -> core.Observation(records.Ros1Clearpath_mission_manager_msgsCreatePointOfInterestResponse) {
    result: core.Observation(records.Ros1Clearpath_mission_manager_msgsCreatePointOfInterestResponse)
    bytes: [949]u8
    size, code := records.encode_Ros1Clearpath_mission_manager_msgsCreatePointOfInterestRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_mission_manager_msgsCreatePointOfInterestResponse, aliasBytes, 1209,
        records.decode_Ros1Clearpath_mission_manager_msgsCreatePointOfInterestResponse, records.encode_Ros1Clearpath_mission_manager_msgsCreatePointOfInterestResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_mission_manager_msgs/CreateTask exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsCreateTaskRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_mission_manager_msgsCreateTaskRequest,
) -> core.Observation(records.Ros1Clearpath_mission_manager_msgsCreateTaskResponse) {
    result: core.Observation(records.Ros1Clearpath_mission_manager_msgsCreateTaskResponse)
    bytes: [2769]u8
    size, code := records.encode_Ros1Clearpath_mission_manager_msgsCreateTaskRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_mission_manager_msgsCreateTaskResponse, aliasBytes, 1457,
        records.decode_Ros1Clearpath_mission_manager_msgsCreateTaskResponse, records.encode_Ros1Clearpath_mission_manager_msgsCreateTaskResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_mission_manager_msgs/CreateWaypoint exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsCreateWaypointRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_mission_manager_msgsCreateWaypointRequest,
) -> core.Observation(records.Ros1Clearpath_mission_manager_msgsCreateWaypointResponse) {
    result: core.Observation(records.Ros1Clearpath_mission_manager_msgsCreateWaypointResponse)
    bytes: [1220]u8
    size, code := records.encode_Ros1Clearpath_mission_manager_msgsCreateWaypointRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_mission_manager_msgsCreateWaypointResponse, aliasBytes, 3350,
        records.decode_Ros1Clearpath_mission_manager_msgsCreateWaypointResponse, records.encode_Ros1Clearpath_mission_manager_msgsCreateWaypointResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_mission_manager_msgs/CreateWaypointFromPoi exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsCreateWaypointFromPoiRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_mission_manager_msgsCreateWaypointFromPoiRequest,
) -> core.Observation(records.Ros1Clearpath_mission_manager_msgsCreateWaypointFromPoiResponse) {
    result: core.Observation(records.Ros1Clearpath_mission_manager_msgsCreateWaypointFromPoiResponse)
    bytes: [1209]u8
    size, code := records.encode_Ros1Clearpath_mission_manager_msgsCreateWaypointFromPoiRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_mission_manager_msgsCreateWaypointFromPoiResponse, aliasBytes, 3350,
        records.decode_Ros1Clearpath_mission_manager_msgsCreateWaypointFromPoiResponse, records.encode_Ros1Clearpath_mission_manager_msgsCreateWaypointFromPoiResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_mission_manager_msgs/DeleteById exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsDeleteByIdRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_mission_manager_msgsDeleteByIdRequest,
) -> core.Observation(records.Ros1Clearpath_mission_manager_msgsDeleteByIdResponse) {
    result: core.Observation(records.Ros1Clearpath_mission_manager_msgsDeleteByIdResponse)
    bytes: [260]u8
    size, code := records.encode_Ros1Clearpath_mission_manager_msgsDeleteByIdRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_mission_manager_msgsDeleteByIdResponse, aliasBytes, 1,
        records.decode_Ros1Clearpath_mission_manager_msgsDeleteByIdResponse, records.encode_Ros1Clearpath_mission_manager_msgsDeleteByIdResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_mission_manager_msgs/DeleteEverything exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsDeleteEverythingRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_mission_manager_msgsDeleteEverythingRequest,
) -> core.Observation(records.Ros1Clearpath_mission_manager_msgsDeleteEverythingResponse) {
    result: core.Observation(records.Ros1Clearpath_mission_manager_msgsDeleteEverythingResponse)
    bytes: [1]u8
    size, code := records.encode_Ros1Clearpath_mission_manager_msgsDeleteEverythingRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_mission_manager_msgsDeleteEverythingResponse, aliasBytes, 1,
        records.decode_Ros1Clearpath_mission_manager_msgsDeleteEverythingResponse, records.encode_Ros1Clearpath_mission_manager_msgsDeleteEverythingResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_mission_manager_msgs/DeleteMultiple exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsDeleteMultipleRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_mission_manager_msgsDeleteMultipleRequest,
) -> core.Observation(records.Ros1Clearpath_mission_manager_msgsDeleteMultipleResponse) {
    result: core.Observation(records.Ros1Clearpath_mission_manager_msgsDeleteMultipleResponse)
    bytes: [784]u8
    size, code := records.encode_Ros1Clearpath_mission_manager_msgsDeleteMultipleRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_mission_manager_msgsDeleteMultipleResponse, aliasBytes, 524,
        records.decode_Ros1Clearpath_mission_manager_msgsDeleteMultipleResponse, records.encode_Ros1Clearpath_mission_manager_msgsDeleteMultipleResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_mission_manager_msgs/ExportData exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsExportDataRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_mission_manager_msgsExportDataRequest,
) -> core.Observation(records.Ros1Clearpath_mission_manager_msgsExportDataResponse) {
    result: core.Observation(records.Ros1Clearpath_mission_manager_msgsExportDataResponse)
    bytes: [1]u8
    size, code := records.encode_Ros1Clearpath_mission_manager_msgsExportDataRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_mission_manager_msgsExportDataResponse, aliasBytes, 260,
        records.decode_Ros1Clearpath_mission_manager_msgsExportDataResponse, records.encode_Ros1Clearpath_mission_manager_msgsExportDataResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_mission_manager_msgs/GetAllMissions exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsGetAllMissionsRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_mission_manager_msgsGetAllMissionsRequest,
) -> core.Observation(records.Ros1Clearpath_mission_manager_msgsGetAllMissionsResponse) {
    result: core.Observation(records.Ros1Clearpath_mission_manager_msgsGetAllMissionsResponse)
    bytes: [1]u8
    size, code := records.encode_Ros1Clearpath_mission_manager_msgsGetAllMissionsRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_mission_manager_msgsGetAllMissionsResponse, aliasBytes, 26676,
        records.decode_Ros1Clearpath_mission_manager_msgsGetAllMissionsResponse, records.encode_Ros1Clearpath_mission_manager_msgsGetAllMissionsResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_mission_manager_msgs/GetAllNetworkMaps exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsGetAllNetworkMapsRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_mission_manager_msgsGetAllNetworkMapsRequest,
) -> core.Observation(records.Ros1Clearpath_mission_manager_msgsGetAllNetworkMapsResponse) {
    result: core.Observation(records.Ros1Clearpath_mission_manager_msgsGetAllNetworkMapsResponse)
    bytes: [1]u8
    size, code := records.encode_Ros1Clearpath_mission_manager_msgsGetAllNetworkMapsRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_mission_manager_msgsGetAllNetworkMapsResponse, aliasBytes, 5220,
        records.decode_Ros1Clearpath_mission_manager_msgsGetAllNetworkMapsResponse, records.encode_Ros1Clearpath_mission_manager_msgsGetAllNetworkMapsResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_mission_manager_msgs/GetAllNetworkMissions exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsGetAllNetworkMissionsRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_mission_manager_msgsGetAllNetworkMissionsRequest,
) -> core.Observation(records.Ros1Clearpath_mission_manager_msgsGetAllNetworkMissionsResponse) {
    result: core.Observation(records.Ros1Clearpath_mission_manager_msgsGetAllNetworkMissionsResponse)
    bytes: [1]u8
    size, code := records.encode_Ros1Clearpath_mission_manager_msgsGetAllNetworkMissionsRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_mission_manager_msgsGetAllNetworkMissionsResponse, aliasBytes, 27216,
        records.decode_Ros1Clearpath_mission_manager_msgsGetAllNetworkMissionsResponse, records.encode_Ros1Clearpath_mission_manager_msgsGetAllNetworkMissionsResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_mission_manager_msgs/GetAllPointsOfInterest exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsGetAllPointsOfInterestRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_mission_manager_msgsGetAllPointsOfInterestRequest,
) -> core.Observation(records.Ros1Clearpath_mission_manager_msgsGetAllPointsOfInterestResponse) {
    result: core.Observation(records.Ros1Clearpath_mission_manager_msgsGetAllPointsOfInterestResponse)
    bytes: [1]u8
    size, code := records.encode_Ros1Clearpath_mission_manager_msgsGetAllPointsOfInterestRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_mission_manager_msgsGetAllPointsOfInterestResponse, aliasBytes, 2422,
        records.decode_Ros1Clearpath_mission_manager_msgsGetAllPointsOfInterestResponse, records.encode_Ros1Clearpath_mission_manager_msgsGetAllPointsOfInterestResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_mission_manager_msgs/GetAllTasks exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsGetAllTasksRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_mission_manager_msgsGetAllTasksRequest,
) -> core.Observation(records.Ros1Clearpath_mission_manager_msgsGetAllTasksResponse) {
    result: core.Observation(records.Ros1Clearpath_mission_manager_msgsGetAllTasksResponse)
    bytes: [1]u8
    size, code := records.encode_Ros1Clearpath_mission_manager_msgsGetAllTasksRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_mission_manager_msgsGetAllTasksResponse, aliasBytes, 2918,
        records.decode_Ros1Clearpath_mission_manager_msgsGetAllTasksResponse, records.encode_Ros1Clearpath_mission_manager_msgsGetAllTasksResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_mission_manager_msgs/GetAllWaypoints exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsGetAllWaypointsRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_mission_manager_msgsGetAllWaypointsRequest,
) -> core.Observation(records.Ros1Clearpath_mission_manager_msgsGetAllWaypointsResponse) {
    result: core.Observation(records.Ros1Clearpath_mission_manager_msgsGetAllWaypointsResponse)
    bytes: [1]u8
    size, code := records.encode_Ros1Clearpath_mission_manager_msgsGetAllWaypointsRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_mission_manager_msgsGetAllWaypointsResponse, aliasBytes, 6704,
        records.decode_Ros1Clearpath_mission_manager_msgsGetAllWaypointsResponse, records.encode_Ros1Clearpath_mission_manager_msgsGetAllWaypointsResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_mission_manager_msgs/GetEverything exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsGetEverythingRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_mission_manager_msgsGetEverythingRequest,
) -> core.Observation(records.Ros1Clearpath_mission_manager_msgsGetEverythingResponse) {
    result: core.Observation(records.Ros1Clearpath_mission_manager_msgsGetEverythingResponse)
    bytes: [1]u8
    size, code := records.encode_Ros1Clearpath_mission_manager_msgsGetEverythingRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_mission_manager_msgsGetEverythingResponse, aliasBytes, 32768,
        records.decode_Ros1Clearpath_mission_manager_msgsGetEverythingResponse, records.encode_Ros1Clearpath_mission_manager_msgsGetEverythingResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_mission_manager_msgs/GetMission exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsGetMissionRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_mission_manager_msgsGetMissionRequest,
) -> core.Observation(records.Ros1Clearpath_mission_manager_msgsGetMissionResponse) {
    result: core.Observation(records.Ros1Clearpath_mission_manager_msgsGetMissionResponse)
    bytes: [260]u8
    size, code := records.encode_Ros1Clearpath_mission_manager_msgsGetMissionRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_mission_manager_msgsGetMissionResponse, aliasBytes, 13336,
        records.decode_Ros1Clearpath_mission_manager_msgsGetMissionResponse, records.encode_Ros1Clearpath_mission_manager_msgsGetMissionResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_mission_manager_msgs/GetNetworkMap exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsGetNetworkMapRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_mission_manager_msgsGetNetworkMapRequest,
) -> core.Observation(records.Ros1Clearpath_mission_manager_msgsGetNetworkMapResponse) {
    result: core.Observation(records.Ros1Clearpath_mission_manager_msgsGetNetworkMapResponse)
    bytes: [260]u8
    size, code := records.encode_Ros1Clearpath_mission_manager_msgsGetNetworkMapRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_mission_manager_msgsGetNetworkMapResponse, aliasBytes, 2608,
        records.decode_Ros1Clearpath_mission_manager_msgsGetNetworkMapResponse, records.encode_Ros1Clearpath_mission_manager_msgsGetNetworkMapResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_mission_manager_msgs/GetNetworkMission exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsGetNetworkMissionRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_mission_manager_msgsGetNetworkMissionRequest,
) -> core.Observation(records.Ros1Clearpath_mission_manager_msgsGetNetworkMissionResponse) {
    result: core.Observation(records.Ros1Clearpath_mission_manager_msgsGetNetworkMissionResponse)
    bytes: [260]u8
    size, code := records.encode_Ros1Clearpath_mission_manager_msgsGetNetworkMissionRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_mission_manager_msgsGetNetworkMissionResponse, aliasBytes, 13606,
        records.decode_Ros1Clearpath_mission_manager_msgsGetNetworkMissionResponse, records.encode_Ros1Clearpath_mission_manager_msgsGetNetworkMissionResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_mission_manager_msgs/GetPointOfInterest exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsGetPointOfInterestRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_mission_manager_msgsGetPointOfInterestRequest,
) -> core.Observation(records.Ros1Clearpath_mission_manager_msgsGetPointOfInterestResponse) {
    result: core.Observation(records.Ros1Clearpath_mission_manager_msgsGetPointOfInterestResponse)
    bytes: [260]u8
    size, code := records.encode_Ros1Clearpath_mission_manager_msgsGetPointOfInterestRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_mission_manager_msgsGetPointOfInterestResponse, aliasBytes, 1209,
        records.decode_Ros1Clearpath_mission_manager_msgsGetPointOfInterestResponse, records.encode_Ros1Clearpath_mission_manager_msgsGetPointOfInterestResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_mission_manager_msgs/GetTask exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsGetTaskRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_mission_manager_msgsGetTaskRequest,
) -> core.Observation(records.Ros1Clearpath_mission_manager_msgsGetTaskResponse) {
    result: core.Observation(records.Ros1Clearpath_mission_manager_msgsGetTaskResponse)
    bytes: [260]u8
    size, code := records.encode_Ros1Clearpath_mission_manager_msgsGetTaskRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_mission_manager_msgsGetTaskResponse, aliasBytes, 1457,
        records.decode_Ros1Clearpath_mission_manager_msgsGetTaskResponse, records.encode_Ros1Clearpath_mission_manager_msgsGetTaskResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_mission_manager_msgs/GetWaypoint exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsGetWaypointRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_mission_manager_msgsGetWaypointRequest,
) -> core.Observation(records.Ros1Clearpath_mission_manager_msgsGetWaypointResponse) {
    result: core.Observation(records.Ros1Clearpath_mission_manager_msgsGetWaypointResponse)
    bytes: [260]u8
    size, code := records.encode_Ros1Clearpath_mission_manager_msgsGetWaypointRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_mission_manager_msgsGetWaypointResponse, aliasBytes, 3350,
        records.decode_Ros1Clearpath_mission_manager_msgsGetWaypointResponse, records.encode_Ros1Clearpath_mission_manager_msgsGetWaypointResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_mission_manager_msgs/ImportData exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsImportDataRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_mission_manager_msgsImportDataRequest,
) -> core.Observation(records.Ros1Clearpath_mission_manager_msgsImportDataResponse) {
    result: core.Observation(records.Ros1Clearpath_mission_manager_msgsImportDataResponse)
    bytes: [260]u8
    size, code := records.encode_Ros1Clearpath_mission_manager_msgsImportDataRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_mission_manager_msgsImportDataResponse, aliasBytes, 32768,
        records.decode_Ros1Clearpath_mission_manager_msgsImportDataResponse, records.encode_Ros1Clearpath_mission_manager_msgsImportDataResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_mission_manager_msgs/ImportMission exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsImportMissionRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_mission_manager_msgsImportMissionRequest,
) -> core.Observation(records.Ros1Clearpath_mission_manager_msgsImportMissionResponse) {
    result: core.Observation(records.Ros1Clearpath_mission_manager_msgsImportMissionResponse)
    bytes: [13336]u8
    size, code := records.encode_Ros1Clearpath_mission_manager_msgsImportMissionRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_mission_manager_msgsImportMissionResponse, aliasBytes, 13336,
        records.decode_Ros1Clearpath_mission_manager_msgsImportMissionResponse, records.encode_Ros1Clearpath_mission_manager_msgsImportMissionResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_mission_manager_msgs/ImportNetworkMap exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsImportNetworkMapRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_mission_manager_msgsImportNetworkMapRequest,
) -> core.Observation(records.Ros1Clearpath_mission_manager_msgsImportNetworkMapResponse) {
    result: core.Observation(records.Ros1Clearpath_mission_manager_msgsImportNetworkMapResponse)
    bytes: [2608]u8
    size, code := records.encode_Ros1Clearpath_mission_manager_msgsImportNetworkMapRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_mission_manager_msgsImportNetworkMapResponse, aliasBytes, 2608,
        records.decode_Ros1Clearpath_mission_manager_msgsImportNetworkMapResponse, records.encode_Ros1Clearpath_mission_manager_msgsImportNetworkMapResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_mission_manager_msgs/ImportNetworkMission exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsImportNetworkMissionRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_mission_manager_msgsImportNetworkMissionRequest,
) -> core.Observation(records.Ros1Clearpath_mission_manager_msgsImportNetworkMissionResponse) {
    result: core.Observation(records.Ros1Clearpath_mission_manager_msgsImportNetworkMissionResponse)
    bytes: [13606]u8
    size, code := records.encode_Ros1Clearpath_mission_manager_msgsImportNetworkMissionRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_mission_manager_msgsImportNetworkMissionResponse, aliasBytes, 13606,
        records.decode_Ros1Clearpath_mission_manager_msgsImportNetworkMissionResponse, records.encode_Ros1Clearpath_mission_manager_msgsImportNetworkMissionResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_mission_manager_msgs/SplitNetworkEdge exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsSplitNetworkEdgeRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_mission_manager_msgsSplitNetworkEdgeRequest,
) -> core.Observation(records.Ros1Clearpath_mission_manager_msgsSplitNetworkEdgeResponse) {
    result: core.Observation(records.Ros1Clearpath_mission_manager_msgsSplitNetworkEdgeResponse)
    bytes: [537]u8
    size, code := records.encode_Ros1Clearpath_mission_manager_msgsSplitNetworkEdgeRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_mission_manager_msgsSplitNetworkEdgeResponse, aliasBytes, 2608,
        records.decode_Ros1Clearpath_mission_manager_msgsSplitNetworkEdgeResponse, records.encode_Ros1Clearpath_mission_manager_msgsSplitNetworkEdgeResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_mission_manager_msgs/UpdateMission exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsUpdateMissionRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_mission_manager_msgsUpdateMissionRequest,
) -> core.Observation(records.Ros1Clearpath_mission_manager_msgsUpdateMissionResponse) {
    result: core.Observation(records.Ros1Clearpath_mission_manager_msgsUpdateMissionResponse)
    bytes: [2224]u8
    size, code := records.encode_Ros1Clearpath_mission_manager_msgsUpdateMissionRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_mission_manager_msgsUpdateMissionResponse, aliasBytes, 13336,
        records.decode_Ros1Clearpath_mission_manager_msgsUpdateMissionResponse, records.encode_Ros1Clearpath_mission_manager_msgsUpdateMissionResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_mission_manager_msgs/UpdateNetworkEdge exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsUpdateNetworkEdgeRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_mission_manager_msgsUpdateNetworkEdgeRequest,
) -> core.Observation(records.Ros1Clearpath_mission_manager_msgsUpdateNetworkEdgeResponse) {
    result: core.Observation(records.Ros1Clearpath_mission_manager_msgsUpdateNetworkEdgeResponse)
    bytes: [1052]u8
    size, code := records.encode_Ros1Clearpath_mission_manager_msgsUpdateNetworkEdgeRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_mission_manager_msgsUpdateNetworkEdgeResponse, aliasBytes, 824,
        records.decode_Ros1Clearpath_mission_manager_msgsUpdateNetworkEdgeResponse, records.encode_Ros1Clearpath_mission_manager_msgsUpdateNetworkEdgeResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_mission_manager_msgs/UpdateNetworkEdges exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsUpdateNetworkEdgesRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_mission_manager_msgsUpdateNetworkEdgesRequest,
) -> core.Observation(records.Ros1Clearpath_mission_manager_msgsUpdateNetworkEdgesResponse) {
    result: core.Observation(records.Ros1Clearpath_mission_manager_msgsUpdateNetworkEdgesResponse)
    bytes: [820]u8
    size, code := records.encode_Ros1Clearpath_mission_manager_msgsUpdateNetworkEdgesRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_mission_manager_msgsUpdateNetworkEdgesResponse, aliasBytes, 1652,
        records.decode_Ros1Clearpath_mission_manager_msgsUpdateNetworkEdgesResponse, records.encode_Ros1Clearpath_mission_manager_msgsUpdateNetworkEdgesResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_mission_manager_msgs/UpdateNetworkMap exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsUpdateNetworkMapRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_mission_manager_msgsUpdateNetworkMapRequest,
) -> core.Observation(records.Ros1Clearpath_mission_manager_msgsUpdateNetworkMapResponse) {
    result: core.Observation(records.Ros1Clearpath_mission_manager_msgsUpdateNetworkMapResponse)
    bytes: [400]u8
    size, code := records.encode_Ros1Clearpath_mission_manager_msgsUpdateNetworkMapRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_mission_manager_msgsUpdateNetworkMapResponse, aliasBytes, 2608,
        records.decode_Ros1Clearpath_mission_manager_msgsUpdateNetworkMapResponse, records.encode_Ros1Clearpath_mission_manager_msgsUpdateNetworkMapResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_mission_manager_msgs/UpdateNetworkMission exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsUpdateNetworkMissionRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_mission_manager_msgsUpdateNetworkMissionRequest,
) -> core.Observation(records.Ros1Clearpath_mission_manager_msgsUpdateNetworkMissionResponse) {
    result: core.Observation(records.Ros1Clearpath_mission_manager_msgsUpdateNetworkMissionResponse)
    bytes: [2494]u8
    size, code := records.encode_Ros1Clearpath_mission_manager_msgsUpdateNetworkMissionRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_mission_manager_msgsUpdateNetworkMissionResponse, aliasBytes, 13606,
        records.decode_Ros1Clearpath_mission_manager_msgsUpdateNetworkMissionResponse, records.encode_Ros1Clearpath_mission_manager_msgsUpdateNetworkMissionResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_mission_manager_msgs/UpdateNetworkPoint exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsUpdateNetworkPointRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_mission_manager_msgsUpdateNetworkPointRequest,
) -> core.Observation(records.Ros1Clearpath_mission_manager_msgsUpdateNetworkPointResponse) {
    result: core.Observation(records.Ros1Clearpath_mission_manager_msgsUpdateNetworkPointResponse)
    bytes: [536]u8
    size, code := records.encode_Ros1Clearpath_mission_manager_msgsUpdateNetworkPointRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_mission_manager_msgsUpdateNetworkPointResponse, aliasBytes, 276,
        records.decode_Ros1Clearpath_mission_manager_msgsUpdateNetworkPointResponse, records.encode_Ros1Clearpath_mission_manager_msgsUpdateNetworkPointResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_mission_manager_msgs/UpdateNetworkPoints exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsUpdateNetworkPointsRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_mission_manager_msgsUpdateNetworkPointsRequest,
) -> core.Observation(records.Ros1Clearpath_mission_manager_msgsUpdateNetworkPointsResponse) {
    result: core.Observation(records.Ros1Clearpath_mission_manager_msgsUpdateNetworkPointsResponse)
    bytes: [824]u8
    size, code := records.encode_Ros1Clearpath_mission_manager_msgsUpdateNetworkPointsRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_mission_manager_msgsUpdateNetworkPointsResponse, aliasBytes, 556,
        records.decode_Ros1Clearpath_mission_manager_msgsUpdateNetworkPointsResponse, records.encode_Ros1Clearpath_mission_manager_msgsUpdateNetworkPointsResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_mission_manager_msgs/UpdatePointOfInterest exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsUpdatePointOfInterestRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_mission_manager_msgsUpdatePointOfInterestRequest,
) -> core.Observation(records.Ros1Clearpath_mission_manager_msgsUpdatePointOfInterestResponse) {
    result: core.Observation(records.Ros1Clearpath_mission_manager_msgsUpdatePointOfInterestResponse)
    bytes: [1209]u8
    size, code := records.encode_Ros1Clearpath_mission_manager_msgsUpdatePointOfInterestRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_mission_manager_msgsUpdatePointOfInterestResponse, aliasBytes, 1209,
        records.decode_Ros1Clearpath_mission_manager_msgsUpdatePointOfInterestResponse, records.encode_Ros1Clearpath_mission_manager_msgsUpdatePointOfInterestResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_mission_manager_msgs/UpdateTask exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsUpdateTaskRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_mission_manager_msgsUpdateTaskRequest,
) -> core.Observation(records.Ros1Clearpath_mission_manager_msgsUpdateTaskResponse) {
    result: core.Observation(records.Ros1Clearpath_mission_manager_msgsUpdateTaskResponse)
    bytes: [1457]u8
    size, code := records.encode_Ros1Clearpath_mission_manager_msgsUpdateTaskRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_mission_manager_msgsUpdateTaskResponse, aliasBytes, 1457,
        records.decode_Ros1Clearpath_mission_manager_msgsUpdateTaskResponse, records.encode_Ros1Clearpath_mission_manager_msgsUpdateTaskResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_mission_manager_msgs/UpdateWaypoint exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsUpdateWaypointRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_mission_manager_msgsUpdateWaypointRequest,
) -> core.Observation(records.Ros1Clearpath_mission_manager_msgsUpdateWaypointResponse) {
    result: core.Observation(records.Ros1Clearpath_mission_manager_msgsUpdateWaypointResponse)
    bytes: [956]u8
    size, code := records.encode_Ros1Clearpath_mission_manager_msgsUpdateWaypointRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_mission_manager_msgsUpdateWaypointResponse, aliasBytes, 3350,
        records.decode_Ros1Clearpath_mission_manager_msgsUpdateWaypointResponse, records.encode_Ros1Clearpath_mission_manager_msgsUpdateWaypointResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_mission_manager_msgs/ValidateNetworkMap exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsValidateNetworkMapRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_mission_manager_msgsValidateNetworkMapRequest,
) -> core.Observation(records.Ros1Clearpath_mission_manager_msgsValidateNetworkMapResponse) {
    result: core.Observation(records.Ros1Clearpath_mission_manager_msgsValidateNetworkMapResponse)
    bytes: [260]u8
    size, code := records.encode_Ros1Clearpath_mission_manager_msgsValidateNetworkMapRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_mission_manager_msgsValidateNetworkMapResponse, aliasBytes, 790,
        records.decode_Ros1Clearpath_mission_manager_msgsValidateNetworkMapResponse, records.encode_Ros1Clearpath_mission_manager_msgsValidateNetworkMapResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_mission_scheduler_msgs/CloneSchedule exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_scheduler_msgsCloneScheduleRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_mission_scheduler_msgsCloneScheduleRequest,
) -> core.Observation(records.Ros1Clearpath_mission_scheduler_msgsCloneScheduleResponse) {
    result: core.Observation(records.Ros1Clearpath_mission_scheduler_msgsCloneScheduleResponse)
    bytes: [520]u8
    size, code := records.encode_Ros1Clearpath_mission_scheduler_msgsCloneScheduleRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_mission_scheduler_msgsCloneScheduleResponse, aliasBytes, 944,
        records.decode_Ros1Clearpath_mission_scheduler_msgsCloneScheduleResponse, records.encode_Ros1Clearpath_mission_scheduler_msgsCloneScheduleResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_mission_scheduler_msgs/CreateSchedule exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_scheduler_msgsCreateScheduleRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_mission_scheduler_msgsCreateScheduleRequest,
) -> core.Observation(records.Ros1Clearpath_mission_scheduler_msgsCreateScheduleResponse) {
    result: core.Observation(records.Ros1Clearpath_mission_scheduler_msgsCreateScheduleResponse)
    bytes: [684]u8
    size, code := records.encode_Ros1Clearpath_mission_scheduler_msgsCreateScheduleRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_mission_scheduler_msgsCreateScheduleResponse, aliasBytes, 944,
        records.decode_Ros1Clearpath_mission_scheduler_msgsCreateScheduleResponse, records.encode_Ros1Clearpath_mission_scheduler_msgsCreateScheduleResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_mission_scheduler_msgs/EnableSchedule exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_scheduler_msgsEnableScheduleRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_mission_scheduler_msgsEnableScheduleRequest,
) -> core.Observation(records.Ros1Clearpath_mission_scheduler_msgsEnableScheduleResponse) {
    result: core.Observation(records.Ros1Clearpath_mission_scheduler_msgsEnableScheduleResponse)
    bytes: [261]u8
    size, code := records.encode_Ros1Clearpath_mission_scheduler_msgsEnableScheduleRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_mission_scheduler_msgsEnableScheduleResponse, aliasBytes, 1,
        records.decode_Ros1Clearpath_mission_scheduler_msgsEnableScheduleResponse, records.encode_Ros1Clearpath_mission_scheduler_msgsEnableScheduleResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_mission_scheduler_msgs/ExportData exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_scheduler_msgsExportDataRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_mission_scheduler_msgsExportDataRequest,
) -> core.Observation(records.Ros1Clearpath_mission_scheduler_msgsExportDataResponse) {
    result: core.Observation(records.Ros1Clearpath_mission_scheduler_msgsExportDataResponse)
    bytes: [1]u8
    size, code := records.encode_Ros1Clearpath_mission_scheduler_msgsExportDataRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_mission_scheduler_msgsExportDataResponse, aliasBytes, 260,
        records.decode_Ros1Clearpath_mission_scheduler_msgsExportDataResponse, records.encode_Ros1Clearpath_mission_scheduler_msgsExportDataResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_mission_scheduler_msgs/GetAllSchedules exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_scheduler_msgsGetAllSchedulesRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_mission_scheduler_msgsGetAllSchedulesRequest,
) -> core.Observation(records.Ros1Clearpath_mission_scheduler_msgsGetAllSchedulesResponse) {
    result: core.Observation(records.Ros1Clearpath_mission_scheduler_msgsGetAllSchedulesResponse)
    bytes: [1]u8
    size, code := records.encode_Ros1Clearpath_mission_scheduler_msgsGetAllSchedulesRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_mission_scheduler_msgsGetAllSchedulesResponse, aliasBytes, 1892,
        records.decode_Ros1Clearpath_mission_scheduler_msgsGetAllSchedulesResponse, records.encode_Ros1Clearpath_mission_scheduler_msgsGetAllSchedulesResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_mission_scheduler_msgs/GetNextSchedule exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_scheduler_msgsGetNextScheduleRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_mission_scheduler_msgsGetNextScheduleRequest,
) -> core.Observation(records.Ros1Clearpath_mission_scheduler_msgsGetNextScheduleResponse) {
    result: core.Observation(records.Ros1Clearpath_mission_scheduler_msgsGetNextScheduleResponse)
    bytes: [1]u8
    size, code := records.encode_Ros1Clearpath_mission_scheduler_msgsGetNextScheduleRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_mission_scheduler_msgsGetNextScheduleResponse, aliasBytes, 268,
        records.decode_Ros1Clearpath_mission_scheduler_msgsGetNextScheduleResponse, records.encode_Ros1Clearpath_mission_scheduler_msgsGetNextScheduleResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_mission_scheduler_msgs/GetSchedule exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_scheduler_msgsGetScheduleRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_mission_scheduler_msgsGetScheduleRequest,
) -> core.Observation(records.Ros1Clearpath_mission_scheduler_msgsGetScheduleResponse) {
    result: core.Observation(records.Ros1Clearpath_mission_scheduler_msgsGetScheduleResponse)
    bytes: [260]u8
    size, code := records.encode_Ros1Clearpath_mission_scheduler_msgsGetScheduleRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_mission_scheduler_msgsGetScheduleResponse, aliasBytes, 944,
        records.decode_Ros1Clearpath_mission_scheduler_msgsGetScheduleResponse, records.encode_Ros1Clearpath_mission_scheduler_msgsGetScheduleResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_mission_scheduler_msgs/ImportData exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_scheduler_msgsImportDataRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_mission_scheduler_msgsImportDataRequest,
) -> core.Observation(records.Ros1Clearpath_mission_scheduler_msgsImportDataResponse) {
    result: core.Observation(records.Ros1Clearpath_mission_scheduler_msgsImportDataResponse)
    bytes: [260]u8
    size, code := records.encode_Ros1Clearpath_mission_scheduler_msgsImportDataRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_mission_scheduler_msgsImportDataResponse, aliasBytes, 1892,
        records.decode_Ros1Clearpath_mission_scheduler_msgsImportDataResponse, records.encode_Ros1Clearpath_mission_scheduler_msgsImportDataResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_mission_scheduler_msgs/UpdateSchedule exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_scheduler_msgsUpdateScheduleRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_mission_scheduler_msgsUpdateScheduleRequest,
) -> core.Observation(records.Ros1Clearpath_mission_scheduler_msgsUpdateScheduleResponse) {
    result: core.Observation(records.Ros1Clearpath_mission_scheduler_msgsUpdateScheduleResponse)
    bytes: [944]u8
    size, code := records.encode_Ros1Clearpath_mission_scheduler_msgsUpdateScheduleRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_mission_scheduler_msgsUpdateScheduleResponse, aliasBytes, 944,
        records.decode_Ros1Clearpath_mission_scheduler_msgsUpdateScheduleResponse, records.encode_Ros1Clearpath_mission_scheduler_msgsUpdateScheduleResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_navigation_msgs/AutonomyTaskSrv exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_navigation_msgsAutonomyTaskSrvRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_navigation_msgsAutonomyTaskSrvRequest,
) -> core.Observation(records.Ros1Clearpath_navigation_msgsAutonomyTaskSrvResponse) {
    result: core.Observation(records.Ros1Clearpath_navigation_msgsAutonomyTaskSrvResponse)
    bytes: [804]u8
    size, code := records.encode_Ros1Clearpath_navigation_msgsAutonomyTaskSrvRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_navigation_msgsAutonomyTaskSrvResponse, aliasBytes, 2,
        records.decode_Ros1Clearpath_navigation_msgsAutonomyTaskSrvResponse, records.encode_Ros1Clearpath_navigation_msgsAutonomyTaskSrvResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_navigation_msgs/SetDelayCompensation exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_navigation_msgsSetDelayCompensationRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_navigation_msgsSetDelayCompensationRequest,
) -> core.Observation(records.Ros1Clearpath_navigation_msgsSetDelayCompensationResponse) {
    result: core.Observation(records.Ros1Clearpath_navigation_msgsSetDelayCompensationResponse)
    bytes: [3]u8
    size, code := records.encode_Ros1Clearpath_navigation_msgsSetDelayCompensationRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_navigation_msgsSetDelayCompensationResponse, aliasBytes, 261,
        records.decode_Ros1Clearpath_navigation_msgsSetDelayCompensationResponse, records.encode_Ros1Clearpath_navigation_msgsSetDelayCompensationResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_navigation_msgs/SetPathShifter exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_navigation_msgsSetPathShifterRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_navigation_msgsSetPathShifterRequest,
) -> core.Observation(records.Ros1Clearpath_navigation_msgsSetPathShifterResponse) {
    result: core.Observation(records.Ros1Clearpath_navigation_msgsSetPathShifterResponse)
    bytes: [9]u8
    size, code := records.encode_Ros1Clearpath_navigation_msgsSetPathShifterRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_navigation_msgsSetPathShifterResponse, aliasBytes, 261,
        records.decode_Ros1Clearpath_navigation_msgsSetPathShifterResponse, records.encode_Ros1Clearpath_navigation_msgsSetPathShifterResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_navigation_msgs/SetPathSmoother exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_navigation_msgsSetPathSmootherRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_navigation_msgsSetPathSmootherRequest,
) -> core.Observation(records.Ros1Clearpath_navigation_msgsSetPathSmootherResponse) {
    result: core.Observation(records.Ros1Clearpath_navigation_msgsSetPathSmootherResponse)
    bytes: [9]u8
    size, code := records.encode_Ros1Clearpath_navigation_msgsSetPathSmootherRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_navigation_msgsSetPathSmootherResponse, aliasBytes, 261,
        records.decode_Ros1Clearpath_navigation_msgsSetPathSmootherResponse, records.encode_Ros1Clearpath_navigation_msgsSetPathSmootherResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_navigation_msgs/SetStopDistance exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_navigation_msgsSetStopDistanceRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_navigation_msgsSetStopDistanceRequest,
) -> core.Observation(records.Ros1Clearpath_navigation_msgsSetStopDistanceResponse) {
    result: core.Observation(records.Ros1Clearpath_navigation_msgsSetStopDistanceResponse)
    bytes: [5]u8
    size, code := records.encode_Ros1Clearpath_navigation_msgsSetStopDistanceRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_navigation_msgsSetStopDistanceResponse, aliasBytes, 261,
        records.decode_Ros1Clearpath_navigation_msgsSetStopDistanceResponse, records.encode_Ros1Clearpath_navigation_msgsSetStopDistanceResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_safety_msgs/AddCommunicationWatchdog exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_safety_msgsAddCommunicationWatchdogRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_safety_msgsAddCommunicationWatchdogRequest,
) -> core.Observation(records.Ros1Clearpath_safety_msgsAddCommunicationWatchdogResponse) {
    result: core.Observation(records.Ros1Clearpath_safety_msgsAddCommunicationWatchdogResponse)
    bytes: [1961]u8
    size, code := records.encode_Ros1Clearpath_safety_msgsAddCommunicationWatchdogRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_safety_msgsAddCommunicationWatchdogResponse, aliasBytes, 1,
        records.decode_Ros1Clearpath_safety_msgsAddCommunicationWatchdogResponse, records.encode_Ros1Clearpath_safety_msgsAddCommunicationWatchdogResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_safety_msgs/AddHeartbeatWatchdog exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_safety_msgsAddHeartbeatWatchdogRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_safety_msgsAddHeartbeatWatchdogRequest,
) -> core.Observation(records.Ros1Clearpath_safety_msgsAddHeartbeatWatchdogResponse) {
    result: core.Observation(records.Ros1Clearpath_safety_msgsAddHeartbeatWatchdogResponse)
    bytes: [1441]u8
    size, code := records.encode_Ros1Clearpath_safety_msgsAddHeartbeatWatchdogRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_safety_msgsAddHeartbeatWatchdogResponse, aliasBytes, 1,
        records.decode_Ros1Clearpath_safety_msgsAddHeartbeatWatchdogResponse, records.encode_Ros1Clearpath_safety_msgsAddHeartbeatWatchdogResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_safety_msgs/AddInclinationWatchdog exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_safety_msgsAddInclinationWatchdogRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_safety_msgsAddInclinationWatchdogRequest,
) -> core.Observation(records.Ros1Clearpath_safety_msgsAddInclinationWatchdogResponse) {
    result: core.Observation(records.Ros1Clearpath_safety_msgsAddInclinationWatchdogResponse)
    bytes: [1449]u8
    size, code := records.encode_Ros1Clearpath_safety_msgsAddInclinationWatchdogRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_safety_msgsAddInclinationWatchdogResponse, aliasBytes, 1,
        records.decode_Ros1Clearpath_safety_msgsAddInclinationWatchdogResponse, records.encode_Ros1Clearpath_safety_msgsAddInclinationWatchdogResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_safety_msgs/AddNodeStatusWatchdog exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_safety_msgsAddNodeStatusWatchdogRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_safety_msgsAddNodeStatusWatchdogRequest,
) -> core.Observation(records.Ros1Clearpath_safety_msgsAddNodeStatusWatchdogResponse) {
    result: core.Observation(records.Ros1Clearpath_safety_msgsAddNodeStatusWatchdogResponse)
    bytes: [1438]u8
    size, code := records.encode_Ros1Clearpath_safety_msgsAddNodeStatusWatchdogRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_safety_msgsAddNodeStatusWatchdogResponse, aliasBytes, 1,
        records.decode_Ros1Clearpath_safety_msgsAddNodeStatusWatchdogResponse, records.encode_Ros1Clearpath_safety_msgsAddNodeStatusWatchdogResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_safety_msgs/AddNodeletStatusWatchdog exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_safety_msgsAddNodeletStatusWatchdogRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_safety_msgsAddNodeletStatusWatchdogRequest,
) -> core.Observation(records.Ros1Clearpath_safety_msgsAddNodeletStatusWatchdogResponse) {
    result: core.Observation(records.Ros1Clearpath_safety_msgsAddNodeletStatusWatchdogResponse)
    bytes: [1698]u8
    size, code := records.encode_Ros1Clearpath_safety_msgsAddNodeletStatusWatchdogRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_safety_msgsAddNodeletStatusWatchdogResponse, aliasBytes, 1,
        records.decode_Ros1Clearpath_safety_msgsAddNodeletStatusWatchdogResponse, records.encode_Ros1Clearpath_safety_msgsAddNodeletStatusWatchdogResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_safety_msgs/AddNumPointsWatchdog exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_safety_msgsAddNumPointsWatchdogRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_safety_msgsAddNumPointsWatchdogRequest,
) -> core.Observation(records.Ros1Clearpath_safety_msgsAddNumPointsWatchdogResponse) {
    result: core.Observation(records.Ros1Clearpath_safety_msgsAddNumPointsWatchdogResponse)
    bytes: [1441]u8
    size, code := records.encode_Ros1Clearpath_safety_msgsAddNumPointsWatchdogRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_safety_msgsAddNumPointsWatchdogResponse, aliasBytes, 1,
        records.decode_Ros1Clearpath_safety_msgsAddNumPointsWatchdogResponse, records.encode_Ros1Clearpath_safety_msgsAddNumPointsWatchdogResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_safety_msgs/AddOdomCovarianceWatchdog exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_safety_msgsAddOdomCovarianceWatchdogRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_safety_msgsAddOdomCovarianceWatchdogRequest,
) -> core.Observation(records.Ros1Clearpath_safety_msgsAddOdomCovarianceWatchdogResponse) {
    result: core.Observation(records.Ros1Clearpath_safety_msgsAddOdomCovarianceWatchdogResponse)
    bytes: [1449]u8
    size, code := records.encode_Ros1Clearpath_safety_msgsAddOdomCovarianceWatchdogRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_safety_msgsAddOdomCovarianceWatchdogResponse, aliasBytes, 1,
        records.decode_Ros1Clearpath_safety_msgsAddOdomCovarianceWatchdogResponse, records.encode_Ros1Clearpath_safety_msgsAddOdomCovarianceWatchdogResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_safety_msgs/AddRtkFixWatchdog exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_safety_msgsAddRtkFixWatchdogRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_safety_msgsAddRtkFixWatchdogRequest,
) -> core.Observation(records.Ros1Clearpath_safety_msgsAddRtkFixWatchdogResponse) {
    result: core.Observation(records.Ros1Clearpath_safety_msgsAddRtkFixWatchdogResponse)
    bytes: [1443]u8
    size, code := records.encode_Ros1Clearpath_safety_msgsAddRtkFixWatchdogRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_safety_msgsAddRtkFixWatchdogResponse, aliasBytes, 1,
        records.decode_Ros1Clearpath_safety_msgsAddRtkFixWatchdogResponse, records.encode_Ros1Clearpath_safety_msgsAddRtkFixWatchdogResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_safety_msgs/AddTopicDataWatchdog exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_safety_msgsAddTopicDataWatchdogRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_safety_msgsAddTopicDataWatchdogRequest,
) -> core.Observation(records.Ros1Clearpath_safety_msgsAddTopicDataWatchdogResponse) {
    result: core.Observation(records.Ros1Clearpath_safety_msgsAddTopicDataWatchdogResponse)
    bytes: [1441]u8
    size, code := records.encode_Ros1Clearpath_safety_msgsAddTopicDataWatchdogRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_safety_msgsAddTopicDataWatchdogResponse, aliasBytes, 1,
        records.decode_Ros1Clearpath_safety_msgsAddTopicDataWatchdogResponse, records.encode_Ros1Clearpath_safety_msgsAddTopicDataWatchdogResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_safety_msgs/RemoveWatchdog exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_safety_msgsRemoveWatchdogRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_safety_msgsRemoveWatchdogRequest,
) -> core.Observation(records.Ros1Clearpath_safety_msgsRemoveWatchdogResponse) {
    result: core.Observation(records.Ros1Clearpath_safety_msgsRemoveWatchdogResponse)
    bytes: [132]u8
    size, code := records.encode_Ros1Clearpath_safety_msgsRemoveWatchdogRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_safety_msgsRemoveWatchdogResponse, aliasBytes, 1,
        records.decode_Ros1Clearpath_safety_msgsRemoveWatchdogResponse, records.encode_Ros1Clearpath_safety_msgsRemoveWatchdogResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_safety_msgs/UpdateCommunicationWatchdog exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_safety_msgsUpdateCommunicationWatchdogRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_safety_msgsUpdateCommunicationWatchdogRequest,
) -> core.Observation(records.Ros1Clearpath_safety_msgsUpdateCommunicationWatchdogResponse) {
    result: core.Observation(records.Ros1Clearpath_safety_msgsUpdateCommunicationWatchdogResponse)
    bytes: [2221]u8
    size, code := records.encode_Ros1Clearpath_safety_msgsUpdateCommunicationWatchdogRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_safety_msgsUpdateCommunicationWatchdogResponse, aliasBytes, 1,
        records.decode_Ros1Clearpath_safety_msgsUpdateCommunicationWatchdogResponse, records.encode_Ros1Clearpath_safety_msgsUpdateCommunicationWatchdogResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_safety_msgs/UpdateHeartbeatWatchdog exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_safety_msgsUpdateHeartbeatWatchdogRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_safety_msgsUpdateHeartbeatWatchdogRequest,
) -> core.Observation(records.Ros1Clearpath_safety_msgsUpdateHeartbeatWatchdogResponse) {
    result: core.Observation(records.Ros1Clearpath_safety_msgsUpdateHeartbeatWatchdogResponse)
    bytes: [1701]u8
    size, code := records.encode_Ros1Clearpath_safety_msgsUpdateHeartbeatWatchdogRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_safety_msgsUpdateHeartbeatWatchdogResponse, aliasBytes, 1,
        records.decode_Ros1Clearpath_safety_msgsUpdateHeartbeatWatchdogResponse, records.encode_Ros1Clearpath_safety_msgsUpdateHeartbeatWatchdogResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_safety_msgs/UpdateInclinationWatchdog exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_safety_msgsUpdateInclinationWatchdogRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_safety_msgsUpdateInclinationWatchdogRequest,
) -> core.Observation(records.Ros1Clearpath_safety_msgsUpdateInclinationWatchdogResponse) {
    result: core.Observation(records.Ros1Clearpath_safety_msgsUpdateInclinationWatchdogResponse)
    bytes: [1709]u8
    size, code := records.encode_Ros1Clearpath_safety_msgsUpdateInclinationWatchdogRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_safety_msgsUpdateInclinationWatchdogResponse, aliasBytes, 1,
        records.decode_Ros1Clearpath_safety_msgsUpdateInclinationWatchdogResponse, records.encode_Ros1Clearpath_safety_msgsUpdateInclinationWatchdogResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_safety_msgs/UpdateNodeStatusWatchdog exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_safety_msgsUpdateNodeStatusWatchdogRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_safety_msgsUpdateNodeStatusWatchdogRequest,
) -> core.Observation(records.Ros1Clearpath_safety_msgsUpdateNodeStatusWatchdogResponse) {
    result: core.Observation(records.Ros1Clearpath_safety_msgsUpdateNodeStatusWatchdogResponse)
    bytes: [1698]u8
    size, code := records.encode_Ros1Clearpath_safety_msgsUpdateNodeStatusWatchdogRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_safety_msgsUpdateNodeStatusWatchdogResponse, aliasBytes, 1,
        records.decode_Ros1Clearpath_safety_msgsUpdateNodeStatusWatchdogResponse, records.encode_Ros1Clearpath_safety_msgsUpdateNodeStatusWatchdogResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_safety_msgs/UpdateNodeletStatusWatchdog exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_safety_msgsUpdateNodeletStatusWatchdogRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_safety_msgsUpdateNodeletStatusWatchdogRequest,
) -> core.Observation(records.Ros1Clearpath_safety_msgsUpdateNodeletStatusWatchdogResponse) {
    result: core.Observation(records.Ros1Clearpath_safety_msgsUpdateNodeletStatusWatchdogResponse)
    bytes: [1958]u8
    size, code := records.encode_Ros1Clearpath_safety_msgsUpdateNodeletStatusWatchdogRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_safety_msgsUpdateNodeletStatusWatchdogResponse, aliasBytes, 1,
        records.decode_Ros1Clearpath_safety_msgsUpdateNodeletStatusWatchdogResponse, records.encode_Ros1Clearpath_safety_msgsUpdateNodeletStatusWatchdogResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_safety_msgs/UpdateNumPointsWatchdog exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_safety_msgsUpdateNumPointsWatchdogRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_safety_msgsUpdateNumPointsWatchdogRequest,
) -> core.Observation(records.Ros1Clearpath_safety_msgsUpdateNumPointsWatchdogResponse) {
    result: core.Observation(records.Ros1Clearpath_safety_msgsUpdateNumPointsWatchdogResponse)
    bytes: [1701]u8
    size, code := records.encode_Ros1Clearpath_safety_msgsUpdateNumPointsWatchdogRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_safety_msgsUpdateNumPointsWatchdogResponse, aliasBytes, 1,
        records.decode_Ros1Clearpath_safety_msgsUpdateNumPointsWatchdogResponse, records.encode_Ros1Clearpath_safety_msgsUpdateNumPointsWatchdogResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_safety_msgs/UpdateOdomCovarianceWatchdog exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_safety_msgsUpdateOdomCovarianceWatchdogRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_safety_msgsUpdateOdomCovarianceWatchdogRequest,
) -> core.Observation(records.Ros1Clearpath_safety_msgsUpdateOdomCovarianceWatchdogResponse) {
    result: core.Observation(records.Ros1Clearpath_safety_msgsUpdateOdomCovarianceWatchdogResponse)
    bytes: [1709]u8
    size, code := records.encode_Ros1Clearpath_safety_msgsUpdateOdomCovarianceWatchdogRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_safety_msgsUpdateOdomCovarianceWatchdogResponse, aliasBytes, 1,
        records.decode_Ros1Clearpath_safety_msgsUpdateOdomCovarianceWatchdogResponse, records.encode_Ros1Clearpath_safety_msgsUpdateOdomCovarianceWatchdogResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_safety_msgs/UpdateRtkFixWatchdog exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_safety_msgsUpdateRtkFixWatchdogRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_safety_msgsUpdateRtkFixWatchdogRequest,
) -> core.Observation(records.Ros1Clearpath_safety_msgsUpdateRtkFixWatchdogResponse) {
    result: core.Observation(records.Ros1Clearpath_safety_msgsUpdateRtkFixWatchdogResponse)
    bytes: [1703]u8
    size, code := records.encode_Ros1Clearpath_safety_msgsUpdateRtkFixWatchdogRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_safety_msgsUpdateRtkFixWatchdogResponse, aliasBytes, 1,
        records.decode_Ros1Clearpath_safety_msgsUpdateRtkFixWatchdogResponse, records.encode_Ros1Clearpath_safety_msgsUpdateRtkFixWatchdogResponse,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_safety_msgs/UpdateTopicDataWatchdog exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_safety_msgsUpdateTopicDataWatchdogRequest :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros1Clearpath_safety_msgsUpdateTopicDataWatchdogRequest,
) -> core.Observation(records.Ros1Clearpath_safety_msgsUpdateTopicDataWatchdogResponse) {
    result: core.Observation(records.Ros1Clearpath_safety_msgsUpdateTopicDataWatchdogResponse)
    bytes: [1701]u8
    size, code := records.encode_Ros1Clearpath_safety_msgsUpdateTopicDataWatchdogRequest(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros1Clearpath_safety_msgsUpdateTopicDataWatchdogResponse, aliasBytes, 1,
        records.decode_Ros1Clearpath_safety_msgsUpdateTopicDataWatchdogResponse, records.encode_Ros1Clearpath_safety_msgsUpdateTopicDataWatchdogResponse,
        1, bytes[:size],
    )
    return result
}
