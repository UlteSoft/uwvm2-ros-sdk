## @file observation.nim
## @brief Typed complete clearpath observers and service clients.
import native/nim/observation as core
import native/nim/wire
import clearpath/nim/ros1/records
proc waitRos1Clearpath_configuration_msgsAutonomyConfig*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_configuration_msgsAutonomyConfig] =
    ## @brief Observe every original clearpath_configuration_msgs/AutonomyConfig field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_configuration_msgsAutonomyConfig](aliasBytes, 12, 268, attempts)

proc waitRos1Clearpath_configuration_msgsPlatformConfig*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_configuration_msgsPlatformConfig] =
    ## @brief Observe every original clearpath_configuration_msgs/PlatformConfig field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_configuration_msgsPlatformConfig](aliasBytes, 0, 0, attempts)

proc waitRos1Clearpath_control_msgsAutonomySync*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_control_msgsAutonomySync] =
    ## @brief Observe every original clearpath_control_msgs/AutonomySync field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_control_msgsAutonomySync](aliasBytes, 5, 7, attempts)

proc waitRos1Clearpath_control_msgsControlMode*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_control_msgsControlMode] =
    ## @brief Observe every original clearpath_control_msgs/ControlMode field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_control_msgsControlMode](aliasBytes, 1, 1, attempts)

proc waitRos1Clearpath_control_msgsControlSelectionState*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_control_msgsControlSelectionState] =
    ## @brief Observe every original clearpath_control_msgs/ControlSelectionState field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_control_msgsControlSelectionState](aliasBytes, 3, 3, attempts)

proc waitRos1Clearpath_control_msgsControlState*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_control_msgsControlState] =
    ## @brief Observe every original clearpath_control_msgs/ControlState field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_control_msgsControlState](aliasBytes, 2, 2, attempts)

proc waitRos1Clearpath_dock_msgsDockInfo*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_dock_msgsDockInfo] =
    ## @brief Observe every original clearpath_dock_msgs/DockInfo field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_dock_msgsDockInfo](aliasBytes, 52, 1204, attempts)

proc waitRos1Clearpath_dock_msgsDockProperties*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_dock_msgsDockProperties] =
    ## @brief Observe every original clearpath_dock_msgs/DockProperties field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_dock_msgsDockProperties](aliasBytes, 4, 2412, attempts)

proc waitRos1Clearpath_dock_msgsDockState*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_dock_msgsDockState] =
    ## @brief Observe every original clearpath_dock_msgs/DockState field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_dock_msgsDockState](aliasBytes, 1, 1, attempts)

proc waitRos1Clearpath_dock_msgsTargetTrackerState*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_dock_msgsTargetTrackerState] =
    ## @brief Observe every original clearpath_dock_msgs/TargetTrackerState field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_dock_msgsTargetTrackerState](aliasBytes, 374, 502, attempts)

proc waitRos1Clearpath_localization_msgsGNSSStatus*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_localization_msgsGNSSStatus] =
    ## @brief Observe every original clearpath_localization_msgs/GNSSStatus field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_localization_msgsGNSSStatus](aliasBytes, 17, 273, attempts)

proc waitRos1Clearpath_localization_msgsLocalizationStatus*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_localization_msgsLocalizationStatus] =
    ## @brief Observe every original clearpath_localization_msgs/LocalizationStatus field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_localization_msgsLocalizationStatus](aliasBytes, 72, 968, attempts)

proc waitRos1Clearpath_localization_msgsSurveyProperties*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_localization_msgsSurveyProperties] =
    ## @brief Observe every original clearpath_localization_msgs/SurveyProperties field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_localization_msgsSurveyProperties](aliasBytes, 125, 509, attempts)

proc waitRos1Clearpath_localization_msgsXvnStatus*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_localization_msgsXvnStatus] =
    ## @brief Observe every original clearpath_localization_msgs/XvnStatus field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_localization_msgsXvnStatus](aliasBytes, 54, 182, attempts)

proc waitRos1Clearpath_logger_msgsEvent*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_logger_msgsEvent] =
    ## @brief Observe every original clearpath_logger_msgs/Event field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_logger_msgsEvent](aliasBytes, 878, 3190, attempts)

proc waitRos1Clearpath_logger_msgsEventLog*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_logger_msgsEventLog] =
    ## @brief Observe every original clearpath_logger_msgs/EventLog field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_logger_msgsEventLog](aliasBytes, 44, 7064, attempts)

proc waitRos1Clearpath_logger_msgsEventLogs*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_logger_msgsEventLogs] =
    ## @brief Observe every original clearpath_logger_msgs/EventLogs field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_logger_msgsEventLogs](aliasBytes, 4, 14132, attempts)

proc waitRos1Clearpath_mission_manager_msgsNetworkEdgeReq*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_mission_manager_msgsNetworkEdgeReq] =
    ## @brief Observe every original clearpath_mission_manager_msgs/NetworkEdgeReq field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_mission_manager_msgsNetworkEdgeReq](aliasBytes, 16, 528, attempts)

proc waitRos1Clearpath_mission_manager_msgsNetworkMapState*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_mission_manager_msgsNetworkMapState] =
    ## @brief Observe every original clearpath_mission_manager_msgs/NetworkMapState field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_mission_manager_msgsNetworkMapState](aliasBytes, 14, 790, attempts)

proc waitRos1Clearpath_mission_manager_msgsNetworkMapValidityState*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_mission_manager_msgsNetworkMapValidityState] =
    ## @brief Observe every original clearpath_mission_manager_msgs/NetworkMapValidityState field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_mission_manager_msgsNetworkMapValidityState](aliasBytes, 4, 1584, attempts)

proc waitRos1Clearpath_mission_manager_msgsStorageState*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_mission_manager_msgsStorageState] =
    ## @brief Observe every original clearpath_mission_manager_msgs/StorageState field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_mission_manager_msgsStorageState](aliasBytes, 24, 32768, attempts)

proc waitRos1Clearpath_mission_scheduler_msgsNextSchedule*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_mission_scheduler_msgsNextSchedule] =
    ## @brief Observe every original clearpath_mission_scheduler_msgs/NextSchedule field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_mission_scheduler_msgsNextSchedule](aliasBytes, 12, 268, attempts)

proc waitRos1Clearpath_mission_scheduler_msgsSchedule*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_mission_scheduler_msgsSchedule] =
    ## @brief Observe every original clearpath_mission_scheduler_msgs/Schedule field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_mission_scheduler_msgsSchedule](aliasBytes, 40, 944, attempts)

proc waitRos1Clearpath_mission_scheduler_msgsStorageState*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_mission_scheduler_msgsStorageState] =
    ## @brief Observe every original clearpath_mission_scheduler_msgs/StorageState field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_mission_scheduler_msgsStorageState](aliasBytes, 4, 1892, attempts)

proc waitRos1Clearpath_mission_scheduler_msgsUtcTime*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_mission_scheduler_msgsUtcTime] =
    ## @brief Observe every original clearpath_mission_scheduler_msgs/UtcTime field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_mission_scheduler_msgsUtcTime](aliasBytes, 5, 5, attempts)

proc waitRos1Clearpath_navigation_msgsAutonomyStatus*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_navigation_msgsAutonomyStatus] =
    ## @brief Observe every original clearpath_navigation_msgs/AutonomyStatus field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_navigation_msgsAutonomyStatus](aliasBytes, 33, 673, attempts)

proc waitRos1Clearpath_navigation_msgsDistanceToGoal*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_navigation_msgsDistanceToGoal] =
    ## @brief Observe every original clearpath_navigation_msgs/DistanceToGoal field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_navigation_msgsDistanceToGoal](aliasBytes, 8, 8, attempts)

proc waitRos1Clearpath_navigation_msgsMetrics*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_navigation_msgsMetrics] =
    ## @brief Observe every original clearpath_navigation_msgs/Metrics field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_navigation_msgsMetrics](aliasBytes, 56, 56, attempts)

proc waitRos1Clearpath_navigation_msgsMission*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_navigation_msgsMission] =
    ## @brief Observe every original clearpath_navigation_msgs/Mission field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_navigation_msgsMission](aliasBytes, 40, 13336, attempts)

proc waitRos1Clearpath_navigation_msgsMissionStatus*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_navigation_msgsMissionStatus] =
    ## @brief Observe every original clearpath_navigation_msgs/MissionStatus field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_navigation_msgsMissionStatus](aliasBytes, 28, 7244, attempts)

proc waitRos1Clearpath_navigation_msgsMotionState*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_navigation_msgsMotionState] =
    ## @brief Observe every original clearpath_navigation_msgs/MotionState field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_navigation_msgsMotionState](aliasBytes, 3, 3, attempts)

proc waitRos1Clearpath_navigation_msgsNavigationState*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_navigation_msgsNavigationState] =
    ## @brief Observe every original clearpath_navigation_msgs/NavigationState field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_navigation_msgsNavigationState](aliasBytes, 4, 6, attempts)

proc waitRos1Clearpath_navigation_msgsNetworkEdge*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_navigation_msgsNetworkEdge] =
    ## @brief Observe every original clearpath_navigation_msgs/NetworkEdge field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_navigation_msgsNetworkEdge](aliasBytes, 56, 824, attempts)

proc waitRos1Clearpath_navigation_msgsNetworkGoalState*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_navigation_msgsNetworkGoalState] =
    ## @brief Observe every original clearpath_navigation_msgs/NetworkGoalState field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_navigation_msgsNetworkGoalState](aliasBytes, 53, 3351, attempts)

proc waitRos1Clearpath_navigation_msgsNetworkMap*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_navigation_msgsNetworkMap] =
    ## @brief Observe every original clearpath_navigation_msgs/NetworkMap field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_navigation_msgsNetworkMap](aliasBytes, 24, 2608, attempts)

proc waitRos1Clearpath_navigation_msgsNetworkMission*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_navigation_msgsNetworkMission] =
    ## @brief Observe every original clearpath_navigation_msgs/NetworkMission field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_navigation_msgsNetworkMission](aliasBytes, 54, 13606, attempts)

proc waitRos1Clearpath_navigation_msgsNetworkMissionSegment*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_navigation_msgsNetworkMissionSegment] =
    ## @brief Observe every original clearpath_navigation_msgs/NetworkMissionSegment field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_navigation_msgsNetworkMissionSegment](aliasBytes, 72, 3546, attempts)

proc waitRos1Clearpath_navigation_msgsNetworkPoint*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_navigation_msgsNetworkPoint] =
    ## @brief Observe every original clearpath_navigation_msgs/NetworkPoint field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_navigation_msgsNetworkPoint](aliasBytes, 20, 276, attempts)

proc waitRos1Clearpath_navigation_msgsOdomIntent*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_navigation_msgsOdomIntent] =
    ## @brief Observe every original clearpath_navigation_msgs/OdomIntent field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_navigation_msgsOdomIntent](aliasBytes, 1420, 2316, attempts)

proc waitRos1Clearpath_navigation_msgsPointOfInterest*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_navigation_msgsPointOfInterest] =
    ## @brief Observe every original clearpath_navigation_msgs/PointOfInterest field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_navigation_msgsPointOfInterest](aliasBytes, 49, 1209, attempts)

proc waitRos1Clearpath_navigation_msgsPointVector*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_navigation_msgsPointVector] =
    ## @brief Observe every original clearpath_navigation_msgs/PointVector field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_navigation_msgsPointVector](aliasBytes, 20, 164, attempts)

proc waitRos1Clearpath_navigation_msgsProgress*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_navigation_msgsProgress] =
    ## @brief Observe every original clearpath_navigation_msgs/Progress field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_navigation_msgsProgress](aliasBytes, 12, 12, attempts)

proc waitRos1Clearpath_navigation_msgsScanPoints*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_navigation_msgsScanPoints] =
    ## @brief Observe every original clearpath_navigation_msgs/ScanPoints field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_navigation_msgsScanPoints](aliasBytes, 24, 1000, attempts)

proc waitRos1Clearpath_navigation_msgsTask*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_navigation_msgsTask] =
    ## @brief Observe every original clearpath_navigation_msgs/Task field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_navigation_msgsTask](aliasBytes, 25, 1457, attempts)

proc waitRos1Clearpath_navigation_msgsTrackError*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_navigation_msgsTrackError] =
    ## @brief Observe every original clearpath_navigation_msgs/TrackError field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_navigation_msgsTrackError](aliasBytes, 24, 152, attempts)

proc waitRos1Clearpath_navigation_msgsVector2D*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_navigation_msgsVector2D] =
    ## @brief Observe every original clearpath_navigation_msgs/Vector2D field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_navigation_msgsVector2D](aliasBytes, 8, 8, attempts)

proc waitRos1Clearpath_navigation_msgsVector2D64*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_navigation_msgsVector2D64] =
    ## @brief Observe every original clearpath_navigation_msgs/Vector2D64 field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_navigation_msgsVector2D64](aliasBytes, 16, 16, attempts)

proc waitRos1Clearpath_navigation_msgsWaypoint*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_navigation_msgsWaypoint] =
    ## @brief Observe every original clearpath_navigation_msgs/Waypoint field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_navigation_msgsWaypoint](aliasBytes, 52, 3350, attempts)

proc waitRos1Clearpath_navigation_msgsWaypointStatus*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_navigation_msgsWaypointStatus] =
    ## @brief Observe every original clearpath_navigation_msgs/WaypointStatus field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_navigation_msgsWaypointStatus](aliasBytes, 54, 3352, attempts)

proc waitRos1Clearpath_platform_msgsDrive*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_platform_msgsDrive] =
    ## @brief Observe every original clearpath_platform_msgs/Drive field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_platform_msgsDrive](aliasBytes, 9, 9, attempts)

proc waitRos1Clearpath_platform_msgsDriveFeedback*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_platform_msgsDriveFeedback] =
    ## @brief Observe every original clearpath_platform_msgs/DriveFeedback field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_platform_msgsDriveFeedback](aliasBytes, 25, 25, attempts)

proc waitRos1Clearpath_platform_msgsFans*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_platform_msgsFans] =
    ## @brief Observe every original clearpath_platform_msgs/Fans field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_platform_msgsFans](aliasBytes, 4, 6, attempts)

proc waitRos1Clearpath_platform_msgsFeedback*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_platform_msgsFeedback] =
    ## @brief Observe every original clearpath_platform_msgs/Feedback field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_platform_msgsFeedback](aliasBytes, 68, 196, attempts)

proc waitRos1Clearpath_platform_msgsLights*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_platform_msgsLights] =
    ## @brief Observe every original clearpath_platform_msgs/Lights field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_platform_msgsLights](aliasBytes, 4, 10, attempts)

proc waitRos1Clearpath_platform_msgsPlatformID*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_platform_msgsPlatformID] =
    ## @brief Observe every original clearpath_platform_msgs/PlatformID field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_platform_msgsPlatformID](aliasBytes, 16, 1040, attempts)

proc waitRos1Clearpath_platform_msgsPower*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_platform_msgsPower] =
    ## @brief Observe every original clearpath_platform_msgs/Power field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_platform_msgsPower](aliasBytes, 28, 172, attempts)

proc waitRos1Clearpath_platform_msgsRGB*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_platform_msgsRGB] =
    ## @brief Observe every original clearpath_platform_msgs/RGB field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_platform_msgsRGB](aliasBytes, 3, 3, attempts)

proc waitRos1Clearpath_platform_msgsRYG*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_platform_msgsRYG] =
    ## @brief Observe every original clearpath_platform_msgs/RYG field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_platform_msgsRYG](aliasBytes, 3, 3, attempts)

proc waitRos1Clearpath_platform_msgsStackLightState*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_platform_msgsStackLightState] =
    ## @brief Observe every original clearpath_platform_msgs/StackLightState field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_platform_msgsStackLightState](aliasBytes, 8, 264, attempts)

proc waitRos1Clearpath_platform_msgsStatus*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_platform_msgsStatus] =
    ## @brief Observe every original clearpath_platform_msgs/Status field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_platform_msgsStatus](aliasBytes, 48, 688, attempts)

proc waitRos1Clearpath_platform_msgsStopStatus*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_platform_msgsStopStatus] =
    ## @brief Observe every original clearpath_platform_msgs/StopStatus field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_platform_msgsStopStatus](aliasBytes, 18, 146, attempts)

proc waitRos1Clearpath_safety_msgsAssistedTeleopState*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_safety_msgsAssistedTeleopState] =
    ## @brief Observe every original clearpath_safety_msgs/AssistedTeleopState field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_safety_msgsAssistedTeleopState](aliasBytes, 6, 262, attempts)

proc waitRos1Clearpath_safety_msgsObstacleMap*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_safety_msgsObstacleMap] =
    ## @brief Observe every original clearpath_safety_msgs/ObstacleMap field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_safety_msgsObstacleMap](aliasBytes, 4, 12, attempts)

proc waitRos1Clearpath_safety_msgsSafety*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_safety_msgsSafety] =
    ## @brief Observe every original clearpath_safety_msgs/Safety field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_safety_msgsSafety](aliasBytes, 6, 262, attempts)

proc waitRos1Clearpath_safety_msgsWatchdogConfigArray*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_safety_msgsWatchdogConfigArray] =
    ## @brief Observe every original clearpath_safety_msgs/WatchdogConfigArray field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_safety_msgsWatchdogConfigArray](aliasBytes, 36, 27558, attempts)

proc waitRos1Clearpath_safety_msgsWatchdogConfigCommon*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_safety_msgsWatchdogConfigCommon] =
    ## @brief Observe every original clearpath_safety_msgs/WatchdogConfigCommon field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_safety_msgsWatchdogConfigCommon](aliasBytes, 17, 1177, attempts)

proc waitRos1Clearpath_safety_msgsWatchdogConfigCommunication*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_safety_msgsWatchdogConfigCommunication] =
    ## @brief Observe every original clearpath_safety_msgs/WatchdogConfigCommunication field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_safety_msgsWatchdogConfigCommunication](aliasBytes, 33, 1961, attempts)

proc waitRos1Clearpath_safety_msgsWatchdogConfigHeartbeat*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_safety_msgsWatchdogConfigHeartbeat] =
    ## @brief Observe every original clearpath_safety_msgs/WatchdogConfigHeartbeat field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_safety_msgsWatchdogConfigHeartbeat](aliasBytes, 25, 1441, attempts)

proc waitRos1Clearpath_safety_msgsWatchdogConfigInclination*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_safety_msgsWatchdogConfigInclination] =
    ## @brief Observe every original clearpath_safety_msgs/WatchdogConfigInclination field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_safety_msgsWatchdogConfigInclination](aliasBytes, 33, 1449, attempts)

proc waitRos1Clearpath_safety_msgsWatchdogConfigNodeStatus*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_safety_msgsWatchdogConfigNodeStatus] =
    ## @brief Observe every original clearpath_safety_msgs/WatchdogConfigNodeStatus field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_safety_msgsWatchdogConfigNodeStatus](aliasBytes, 22, 1438, attempts)

proc waitRos1Clearpath_safety_msgsWatchdogConfigNodeletStatus*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_safety_msgsWatchdogConfigNodeletStatus] =
    ## @brief Observe every original clearpath_safety_msgs/WatchdogConfigNodeletStatus field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_safety_msgsWatchdogConfigNodeletStatus](aliasBytes, 26, 1698, attempts)

proc waitRos1Clearpath_safety_msgsWatchdogConfigNumPoints*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_safety_msgsWatchdogConfigNumPoints] =
    ## @brief Observe every original clearpath_safety_msgs/WatchdogConfigNumPoints field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_safety_msgsWatchdogConfigNumPoints](aliasBytes, 25, 1441, attempts)

proc waitRos1Clearpath_safety_msgsWatchdogConfigOdomCovariance*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_safety_msgsWatchdogConfigOdomCovariance] =
    ## @brief Observe every original clearpath_safety_msgs/WatchdogConfigOdomCovariance field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_safety_msgsWatchdogConfigOdomCovariance](aliasBytes, 33, 1449, attempts)

proc waitRos1Clearpath_safety_msgsWatchdogConfigRtkFix*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_safety_msgsWatchdogConfigRtkFix] =
    ## @brief Observe every original clearpath_safety_msgs/WatchdogConfigRtkFix field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_safety_msgsWatchdogConfigRtkFix](aliasBytes, 27, 1443, attempts)

proc waitRos1Clearpath_safety_msgsWatchdogConfigTopicData*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_safety_msgsWatchdogConfigTopicData] =
    ## @brief Observe every original clearpath_safety_msgs/WatchdogConfigTopicData field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_safety_msgsWatchdogConfigTopicData](aliasBytes, 25, 1441, attempts)

proc waitRos1Clearpath_safety_msgsWatchdogStatus*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_safety_msgsWatchdogStatus] =
    ## @brief Observe every original clearpath_safety_msgs/WatchdogStatus field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_safety_msgsWatchdogStatus](aliasBytes, 13, 653, attempts)

proc waitRos1Clearpath_safety_msgsWatchdogStatusArray*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Clearpath_safety_msgsWatchdogStatusArray] =
    ## @brief Observe every original clearpath_safety_msgs/WatchdogStatusArray field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Clearpath_safety_msgsWatchdogStatusArray](aliasBytes, 20, 1454, attempts)

proc waitRos1Geometry_msgsPoint*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Geometry_msgsPoint] =
    ## @brief Observe every original geometry_msgs/Point field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Geometry_msgsPoint](aliasBytes, 24, 24, attempts)

proc waitRos1Geometry_msgsPose*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Geometry_msgsPose] =
    ## @brief Observe every original geometry_msgs/Pose field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Geometry_msgsPose](aliasBytes, 56, 56, attempts)

proc waitRos1Geometry_msgsPoseStamped*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Geometry_msgsPoseStamped] =
    ## @brief Observe every original geometry_msgs/PoseStamped field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Geometry_msgsPoseStamped](aliasBytes, 72, 200, attempts)

proc waitRos1Geometry_msgsPoseWithCovariance*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Geometry_msgsPoseWithCovariance] =
    ## @brief Observe every original geometry_msgs/PoseWithCovariance field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Geometry_msgsPoseWithCovariance](aliasBytes, 344, 344, attempts)

proc waitRos1Geometry_msgsPoseWithCovarianceStamped*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Geometry_msgsPoseWithCovarianceStamped] =
    ## @brief Observe every original geometry_msgs/PoseWithCovarianceStamped field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Geometry_msgsPoseWithCovarianceStamped](aliasBytes, 360, 488, attempts)

proc waitRos1Geometry_msgsQuaternion*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Geometry_msgsQuaternion] =
    ## @brief Observe every original geometry_msgs/Quaternion field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Geometry_msgsQuaternion](aliasBytes, 32, 32, attempts)

proc waitRos1Geometry_msgsTwist*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Geometry_msgsTwist] =
    ## @brief Observe every original geometry_msgs/Twist field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Geometry_msgsTwist](aliasBytes, 48, 48, attempts)

proc waitRos1Geometry_msgsTwistWithCovariance*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Geometry_msgsTwistWithCovariance] =
    ## @brief Observe every original geometry_msgs/TwistWithCovariance field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Geometry_msgsTwistWithCovariance](aliasBytes, 336, 336, attempts)

proc waitRos1Geometry_msgsVector3*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Geometry_msgsVector3] =
    ## @brief Observe every original geometry_msgs/Vector3 field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Geometry_msgsVector3](aliasBytes, 24, 24, attempts)

proc waitRos1Husky_msgsHuskyStatus*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Husky_msgsHuskyStatus] =
    ## @brief Observe every original husky_msgs/HuskyStatus field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Husky_msgsHuskyStatus](aliasBytes, 124, 252, attempts)

proc waitRos1Jackal_msgsDrive*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Jackal_msgsDrive] =
    ## @brief Observe every original jackal_msgs/Drive field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Jackal_msgsDrive](aliasBytes, 9, 9, attempts)

proc waitRos1Jackal_msgsDriveFeedback*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Jackal_msgsDriveFeedback] =
    ## @brief Observe every original jackal_msgs/DriveFeedback field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Jackal_msgsDriveFeedback](aliasBytes, 25, 25, attempts)

proc waitRos1Jackal_msgsFeedback*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Jackal_msgsFeedback] =
    ## @brief Observe every original jackal_msgs/Feedback field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Jackal_msgsFeedback](aliasBytes, 76, 204, attempts)

proc waitRos1Jackal_msgsStatus*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Jackal_msgsStatus] =
    ## @brief Observe every original jackal_msgs/Status field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Jackal_msgsStatus](aliasBytes, 79, 463, attempts)

proc waitRos1Nav_msgsOdometry*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Nav_msgsOdometry] =
    ## @brief Observe every original nav_msgs/Odometry field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Nav_msgsOdometry](aliasBytes, 700, 1084, attempts)

proc waitRos1Nav_msgsPath*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Nav_msgsPath] =
    ## @brief Observe every original nav_msgs/Path field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Nav_msgsPath](aliasBytes, 20, 548, attempts)

proc waitRos1Sensor_msgsNavSatFix*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Sensor_msgsNavSatFix] =
    ## @brief Observe every original sensor_msgs/NavSatFix field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Sensor_msgsNavSatFix](aliasBytes, 116, 244, attempts)

proc waitRos1Sensor_msgsNavSatStatus*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Sensor_msgsNavSatStatus] =
    ## @brief Observe every original sensor_msgs/NavSatStatus field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Sensor_msgsNavSatStatus](aliasBytes, 3, 3, attempts)

proc waitRos1Std_msgsDuration*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Std_msgsDuration] =
    ## @brief Observe every original std_msgs/Duration field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Std_msgsDuration](aliasBytes, 8, 8, attempts)

proc waitRos1Std_msgsHeader*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Std_msgsHeader] =
    ## @brief Observe every original std_msgs/Header field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Std_msgsHeader](aliasBytes, 16, 144, attempts)

proc waitRos1Std_msgsString*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Std_msgsString] =
    ## @brief Observe every original std_msgs/String field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Std_msgsString](aliasBytes, 4, 260, attempts)

proc waitRos1Std_msgsTime*(aliasBytes: openArray[byte]; attempts: uint32): core.Observation[Ros1Std_msgsTime] =
    ## @brief Observe every original std_msgs/Time field through one retained owner.
    ## @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
    ## @param attempts Total finite poll budget in 1..250.
    ## @return Complete owned original record and independent operation/close facts.
    ## @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
    core.receive[Ros1Std_msgsTime](aliasBytes, 8, 8, attempts)

proc callRos1Clearpath_camera_msgsQ62AreaZoomRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_camera_msgsQ62AreaZoomRequest
): core.Observation[Ros1Clearpath_camera_msgsQ62AreaZoomResponse] =
    ## @brief Call complete clearpath_camera_msgs/q62AreaZoom exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[12, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 12, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_camera_msgsQ62AreaZoomResponse](aliasBytes, 5, 261, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_control_msgsSetControlModeRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_control_msgsSetControlModeRequest
): core.Observation[Ros1Clearpath_control_msgsSetControlModeResponse] =
    ## @brief Call complete clearpath_control_msgs/SetControlMode exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[1, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 1, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_control_msgsSetControlModeResponse](aliasBytes, 0, 0, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_dock_msgsAddDockRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_dock_msgsAddDockRequest
): core.Observation[Ros1Clearpath_dock_msgsAddDockResponse] =
    ## @brief Call complete clearpath_dock_msgs/AddDock exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[1204, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 1204, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_dock_msgsAddDockResponse](aliasBytes, 5, 261, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_dock_msgsExportDataRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_dock_msgsExportDataRequest
): core.Observation[Ros1Clearpath_dock_msgsExportDataResponse] =
    ## @brief Call complete clearpath_dock_msgs/ExportData exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[1, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 0, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_dock_msgsExportDataResponse](aliasBytes, 4, 260, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_dock_msgsGetDockByUuidRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_dock_msgsGetDockByUuidRequest
): core.Observation[Ros1Clearpath_dock_msgsGetDockByUuidResponse] =
    ## @brief Call complete clearpath_dock_msgs/GetDockByUuid exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[260, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 260, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_dock_msgsGetDockByUuidResponse](aliasBytes, 164, 1316, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_dock_msgsImportDataRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_dock_msgsImportDataRequest
): core.Observation[Ros1Clearpath_dock_msgsImportDataResponse] =
    ## @brief Call complete clearpath_dock_msgs/ImportData exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[260, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 260, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_dock_msgsImportDataResponse](aliasBytes, 4, 2412, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_dock_msgsRemoveDockRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_dock_msgsRemoveDockRequest
): core.Observation[Ros1Clearpath_dock_msgsRemoveDockResponse] =
    ## @brief Call complete clearpath_dock_msgs/RemoveDock exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[392, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 392, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_dock_msgsRemoveDockResponse](aliasBytes, 5, 261, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_dock_msgsSetDockLocationByIdRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_dock_msgsSetDockLocationByIdRequest
): core.Observation[Ros1Clearpath_dock_msgsSetDockLocationByIdResponse] =
    ## @brief Call complete clearpath_dock_msgs/SetDockLocationById exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[260, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 260, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_dock_msgsSetDockLocationByIdResponse](aliasBytes, 5, 261, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_dock_msgsSetDockLocationByNameRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_dock_msgsSetDockLocationByNameRequest
): core.Observation[Ros1Clearpath_dock_msgsSetDockLocationByNameResponse] =
    ## @brief Call complete clearpath_dock_msgs/SetDockLocationByName exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[132, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 132, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_dock_msgsSetDockLocationByNameResponse](aliasBytes, 5, 261, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_localization_msgsConvertCartesianToLatLonRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_localization_msgsConvertCartesianToLatLonRequest
): core.Observation[Ros1Clearpath_localization_msgsConvertCartesianToLatLonResponse] =
    ## @brief Call complete clearpath_localization_msgs/ConvertCartesianToLatLon exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[200, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 200, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_localization_msgsConvertCartesianToLatLonResponse](aliasBytes, 116, 244, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_localization_msgsConvertCartesianToLatLonArrayRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_localization_msgsConvertCartesianToLatLonArrayRequest
): core.Observation[Ros1Clearpath_localization_msgsConvertCartesianToLatLonArrayResponse] =
    ## @brief Call complete clearpath_localization_msgs/ConvertCartesianToLatLonArray exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[404, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 404, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_localization_msgsConvertCartesianToLatLonArrayResponse](aliasBytes, 4, 492, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_localization_msgsConvertLatLonToCartesianRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_localization_msgsConvertLatLonToCartesianRequest
): core.Observation[Ros1Clearpath_localization_msgsConvertLatLonToCartesianResponse] =
    ## @brief Call complete clearpath_localization_msgs/ConvertLatLonToCartesian exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[244, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 244, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_localization_msgsConvertLatLonToCartesianResponse](aliasBytes, 72, 200, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_localization_msgsConvertLatLonToCartesianArrayRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_localization_msgsConvertLatLonToCartesianArrayRequest
): core.Observation[Ros1Clearpath_localization_msgsConvertLatLonToCartesianArrayResponse] =
    ## @brief Call complete clearpath_localization_msgs/ConvertLatLonToCartesianArray exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[492, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 492, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_localization_msgsConvertLatLonToCartesianArrayResponse](aliasBytes, 4, 404, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_localization_msgsResetLocalizationRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_localization_msgsResetLocalizationRequest
): core.Observation[Ros1Clearpath_localization_msgsResetLocalizationResponse] =
    ## @brief Call complete clearpath_localization_msgs/ResetLocalization exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[5, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 5, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_localization_msgsResetLocalizationResponse](aliasBytes, 1, 1, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_localization_msgsSetDatumRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_localization_msgsSetDatumRequest
): core.Observation[Ros1Clearpath_localization_msgsSetDatumResponse] =
    ## @brief Call complete clearpath_localization_msgs/SetDatum exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[8, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 8, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_localization_msgsSetDatumResponse](aliasBytes, 1, 1, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_logger_msgsDeleteLogRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_logger_msgsDeleteLogRequest
): core.Observation[Ros1Clearpath_logger_msgsDeleteLogResponse] =
    ## @brief Call complete clearpath_logger_msgs/DeleteLog exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[262, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 262, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_logger_msgsDeleteLogResponse](aliasBytes, 1, 1, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_logger_msgsDownloadLogRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_logger_msgsDownloadLogRequest
): core.Observation[Ros1Clearpath_logger_msgsDownloadLogResponse] =
    ## @brief Call complete clearpath_logger_msgs/DownloadLog exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[260, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 260, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_logger_msgsDownloadLogResponse](aliasBytes, 5, 261, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_logger_msgsGetAllLogsRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_logger_msgsGetAllLogsRequest
): core.Observation[Ros1Clearpath_logger_msgsGetAllLogsResponse] =
    ## @brief Call complete clearpath_logger_msgs/GetAllLogs exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[1, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 0, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_logger_msgsGetAllLogsResponse](aliasBytes, 4, 14132, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_logger_msgsRecordCustomEventRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_logger_msgsRecordCustomEventRequest
): core.Observation[Ros1Clearpath_logger_msgsRecordCustomEventResponse] =
    ## @brief Call complete clearpath_logger_msgs/RecordCustomEvent exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[916, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 916, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_logger_msgsRecordCustomEventResponse](aliasBytes, 878, 3190, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_logger_msgsRecordErrorEventRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_logger_msgsRecordErrorEventRequest
): core.Observation[Ros1Clearpath_logger_msgsRecordErrorEventResponse] =
    ## @brief Call complete clearpath_logger_msgs/RecordErrorEvent exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[524, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 524, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_logger_msgsRecordErrorEventResponse](aliasBytes, 878, 3190, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_logger_msgsRecordEventRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_logger_msgsRecordEventRequest
): core.Observation[Ros1Clearpath_logger_msgsRecordEventResponse] =
    ## @brief Call complete clearpath_logger_msgs/RecordEvent exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[3190, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 3190, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_logger_msgsRecordEventResponse](aliasBytes, 878, 3190, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_logger_msgsRecordLocationEventRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_logger_msgsRecordLocationEventRequest
): core.Observation[Ros1Clearpath_logger_msgsRecordLocationEventResponse] =
    ## @brief Call complete clearpath_logger_msgs/RecordLocationEvent exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[1680, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 1680, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_logger_msgsRecordLocationEventResponse](aliasBytes, 878, 3190, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_logger_msgsRecordMediaEventRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_logger_msgsRecordMediaEventRequest
): core.Observation[Ros1Clearpath_logger_msgsRecordMediaEventResponse] =
    ## @brief Call complete clearpath_logger_msgs/RecordMediaEvent exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[652, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 652, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_logger_msgsRecordMediaEventResponse](aliasBytes, 878, 3190, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_logger_msgsRecordPowerEventRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_logger_msgsRecordPowerEventRequest
): core.Observation[Ros1Clearpath_logger_msgsRecordPowerEventResponse] =
    ## @brief Call complete clearpath_logger_msgs/RecordPowerEvent exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[5, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 5, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_logger_msgsRecordPowerEventResponse](aliasBytes, 878, 3190, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_logger_msgsStartRecordingRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_logger_msgsStartRecordingRequest
): core.Observation[Ros1Clearpath_logger_msgsStartRecordingResponse] =
    ## @brief Call complete clearpath_logger_msgs/StartRecording exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[132, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 132, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_logger_msgsStartRecordingResponse](aliasBytes, 44, 7064, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_logger_msgsStopRecordingRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_logger_msgsStopRecordingRequest
): core.Observation[Ros1Clearpath_logger_msgsStopRecordingResponse] =
    ## @brief Call complete clearpath_logger_msgs/StopRecording exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[260, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 260, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_logger_msgsStopRecordingResponse](aliasBytes, 44, 7064, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_mission_manager_msgsAddNetworkEdgeRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_mission_manager_msgsAddNetworkEdgeRequest
): core.Observation[Ros1Clearpath_mission_manager_msgsAddNetworkEdgeResponse] =
    ## @brief Call complete clearpath_mission_manager_msgs/AddNetworkEdge exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[793, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 793, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_mission_manager_msgsAddNetworkEdgeResponse](aliasBytes, 4, 1652, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_mission_manager_msgsAddNetworkPathRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_mission_manager_msgsAddNetworkPathRequest
): core.Observation[Ros1Clearpath_mission_manager_msgsAddNetworkPathResponse] =
    ## @brief Call complete clearpath_mission_manager_msgs/AddNetworkPath exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[301, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 301, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_mission_manager_msgsAddNetworkPathResponse](aliasBytes, 5, 261, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_mission_manager_msgsAddNetworkPointRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_mission_manager_msgsAddNetworkPointRequest
): core.Observation[Ros1Clearpath_mission_manager_msgsAddNetworkPointResponse] =
    ## @brief Call complete clearpath_mission_manager_msgs/AddNetworkPoint exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[1325, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 1325, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_mission_manager_msgsAddNetworkPointResponse](aliasBytes, 20, 276, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_mission_manager_msgsAddRemoveByIdRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_mission_manager_msgsAddRemoveByIdRequest
): core.Observation[Ros1Clearpath_mission_manager_msgsAddRemoveByIdResponse] =
    ## @brief Call complete clearpath_mission_manager_msgs/AddRemoveById exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[524, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 524, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_mission_manager_msgsAddRemoveByIdResponse](aliasBytes, 1, 1, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_mission_manager_msgsAddRemoveTagRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_mission_manager_msgsAddRemoveTagRequest
): core.Observation[Ros1Clearpath_mission_manager_msgsAddRemoveTagResponse] =
    ## @brief Call complete clearpath_mission_manager_msgs/AddRemoveTag exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[520, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 520, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_mission_manager_msgsAddRemoveTagResponse](aliasBytes, 4, 524, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_mission_manager_msgsCloneMissionRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_mission_manager_msgsCloneMissionRequest
): core.Observation[Ros1Clearpath_mission_manager_msgsCloneMissionResponse] =
    ## @brief Call complete clearpath_mission_manager_msgs/CloneMission exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[521, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 521, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_mission_manager_msgsCloneMissionResponse](aliasBytes, 40, 13336, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_mission_manager_msgsCloneNetworkMapRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_mission_manager_msgsCloneNetworkMapRequest
): core.Observation[Ros1Clearpath_mission_manager_msgsCloneNetworkMapResponse] =
    ## @brief Call complete clearpath_mission_manager_msgs/CloneNetworkMap exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[520, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 520, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_mission_manager_msgsCloneNetworkMapResponse](aliasBytes, 24, 2608, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_mission_manager_msgsCloneNetworkMissionRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_mission_manager_msgsCloneNetworkMissionRequest
): core.Observation[Ros1Clearpath_mission_manager_msgsCloneNetworkMissionResponse] =
    ## @brief Call complete clearpath_mission_manager_msgs/CloneNetworkMission exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[521, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 521, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_mission_manager_msgsCloneNetworkMissionResponse](aliasBytes, 54, 13606, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_mission_manager_msgsClonePointOfInterestRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_mission_manager_msgsClonePointOfInterestRequest
): core.Observation[Ros1Clearpath_mission_manager_msgsClonePointOfInterestResponse] =
    ## @brief Call complete clearpath_mission_manager_msgs/ClonePointOfInterest exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[520, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 520, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_mission_manager_msgsClonePointOfInterestResponse](aliasBytes, 49, 1209, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_mission_manager_msgsCreateMissionRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_mission_manager_msgsCreateMissionRequest
): core.Observation[Ros1Clearpath_mission_manager_msgsCreateMissionResponse] =
    ## @brief Call complete clearpath_mission_manager_msgs/CreateMission exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[1964, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 1964, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_mission_manager_msgsCreateMissionResponse](aliasBytes, 40, 13336, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_mission_manager_msgsCreateNetworkMapRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_mission_manager_msgsCreateNetworkMapRequest
): core.Observation[Ros1Clearpath_mission_manager_msgsCreateNetworkMapResponse] =
    ## @brief Call complete clearpath_mission_manager_msgs/CreateNetworkMap exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[1756, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 1756, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_mission_manager_msgsCreateNetworkMapResponse](aliasBytes, 24, 2608, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_mission_manager_msgsCreateNetworkMissionRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_mission_manager_msgsCreateNetworkMissionRequest
): core.Observation[Ros1Clearpath_mission_manager_msgsCreateNetworkMissionResponse] =
    ## @brief Call complete clearpath_mission_manager_msgs/CreateNetworkMission exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[2234, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 2234, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_mission_manager_msgsCreateNetworkMissionResponse](aliasBytes, 54, 13606, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_mission_manager_msgsCreatePointOfInterestRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_mission_manager_msgsCreatePointOfInterestRequest
): core.Observation[Ros1Clearpath_mission_manager_msgsCreatePointOfInterestResponse] =
    ## @brief Call complete clearpath_mission_manager_msgs/CreatePointOfInterest exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[949, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 949, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_mission_manager_msgsCreatePointOfInterestResponse](aliasBytes, 49, 1209, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_mission_manager_msgsCreateTaskRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_mission_manager_msgsCreateTaskRequest
): core.Observation[Ros1Clearpath_mission_manager_msgsCreateTaskResponse] =
    ## @brief Call complete clearpath_mission_manager_msgs/CreateTask exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[2769, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 2769, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_mission_manager_msgsCreateTaskResponse](aliasBytes, 25, 1457, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_mission_manager_msgsCreateWaypointRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_mission_manager_msgsCreateWaypointRequest
): core.Observation[Ros1Clearpath_mission_manager_msgsCreateWaypointResponse] =
    ## @brief Call complete clearpath_mission_manager_msgs/CreateWaypoint exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[1220, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 1220, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_mission_manager_msgsCreateWaypointResponse](aliasBytes, 52, 3350, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_mission_manager_msgsCreateWaypointFromPoiRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_mission_manager_msgsCreateWaypointFromPoiRequest
): core.Observation[Ros1Clearpath_mission_manager_msgsCreateWaypointFromPoiResponse] =
    ## @brief Call complete clearpath_mission_manager_msgs/CreateWaypointFromPoi exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[1209, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 1209, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_mission_manager_msgsCreateWaypointFromPoiResponse](aliasBytes, 52, 3350, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_mission_manager_msgsDeleteByIdRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_mission_manager_msgsDeleteByIdRequest
): core.Observation[Ros1Clearpath_mission_manager_msgsDeleteByIdResponse] =
    ## @brief Call complete clearpath_mission_manager_msgs/DeleteById exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[260, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 260, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_mission_manager_msgsDeleteByIdResponse](aliasBytes, 1, 1, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_mission_manager_msgsDeleteEverythingRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_mission_manager_msgsDeleteEverythingRequest
): core.Observation[Ros1Clearpath_mission_manager_msgsDeleteEverythingResponse] =
    ## @brief Call complete clearpath_mission_manager_msgs/DeleteEverything exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[1, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 1, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_mission_manager_msgsDeleteEverythingResponse](aliasBytes, 1, 1, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_mission_manager_msgsDeleteMultipleRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_mission_manager_msgsDeleteMultipleRequest
): core.Observation[Ros1Clearpath_mission_manager_msgsDeleteMultipleResponse] =
    ## @brief Call complete clearpath_mission_manager_msgs/DeleteMultiple exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[784, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 784, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_mission_manager_msgsDeleteMultipleResponse](aliasBytes, 4, 524, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_mission_manager_msgsExportDataRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_mission_manager_msgsExportDataRequest
): core.Observation[Ros1Clearpath_mission_manager_msgsExportDataResponse] =
    ## @brief Call complete clearpath_mission_manager_msgs/ExportData exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[1, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 0, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_mission_manager_msgsExportDataResponse](aliasBytes, 4, 260, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_mission_manager_msgsGetAllMissionsRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_mission_manager_msgsGetAllMissionsRequest
): core.Observation[Ros1Clearpath_mission_manager_msgsGetAllMissionsResponse] =
    ## @brief Call complete clearpath_mission_manager_msgs/GetAllMissions exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[1, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 0, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_mission_manager_msgsGetAllMissionsResponse](aliasBytes, 4, 26676, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_mission_manager_msgsGetAllNetworkMapsRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_mission_manager_msgsGetAllNetworkMapsRequest
): core.Observation[Ros1Clearpath_mission_manager_msgsGetAllNetworkMapsResponse] =
    ## @brief Call complete clearpath_mission_manager_msgs/GetAllNetworkMaps exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[1, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 0, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_mission_manager_msgsGetAllNetworkMapsResponse](aliasBytes, 4, 5220, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_mission_manager_msgsGetAllNetworkMissionsRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_mission_manager_msgsGetAllNetworkMissionsRequest
): core.Observation[Ros1Clearpath_mission_manager_msgsGetAllNetworkMissionsResponse] =
    ## @brief Call complete clearpath_mission_manager_msgs/GetAllNetworkMissions exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[1, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 0, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_mission_manager_msgsGetAllNetworkMissionsResponse](aliasBytes, 4, 27216, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_mission_manager_msgsGetAllPointsOfInterestRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_mission_manager_msgsGetAllPointsOfInterestRequest
): core.Observation[Ros1Clearpath_mission_manager_msgsGetAllPointsOfInterestResponse] =
    ## @brief Call complete clearpath_mission_manager_msgs/GetAllPointsOfInterest exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[1, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 0, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_mission_manager_msgsGetAllPointsOfInterestResponse](aliasBytes, 4, 2422, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_mission_manager_msgsGetAllTasksRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_mission_manager_msgsGetAllTasksRequest
): core.Observation[Ros1Clearpath_mission_manager_msgsGetAllTasksResponse] =
    ## @brief Call complete clearpath_mission_manager_msgs/GetAllTasks exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[1, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 0, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_mission_manager_msgsGetAllTasksResponse](aliasBytes, 4, 2918, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_mission_manager_msgsGetAllWaypointsRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_mission_manager_msgsGetAllWaypointsRequest
): core.Observation[Ros1Clearpath_mission_manager_msgsGetAllWaypointsResponse] =
    ## @brief Call complete clearpath_mission_manager_msgs/GetAllWaypoints exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[1, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 0, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_mission_manager_msgsGetAllWaypointsResponse](aliasBytes, 4, 6704, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_mission_manager_msgsGetEverythingRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_mission_manager_msgsGetEverythingRequest
): core.Observation[Ros1Clearpath_mission_manager_msgsGetEverythingResponse] =
    ## @brief Call complete clearpath_mission_manager_msgs/GetEverything exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[1, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 0, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_mission_manager_msgsGetEverythingResponse](aliasBytes, 24, 32768, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_mission_manager_msgsGetMissionRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_mission_manager_msgsGetMissionRequest
): core.Observation[Ros1Clearpath_mission_manager_msgsGetMissionResponse] =
    ## @brief Call complete clearpath_mission_manager_msgs/GetMission exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[260, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 260, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_mission_manager_msgsGetMissionResponse](aliasBytes, 40, 13336, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_mission_manager_msgsGetNetworkMapRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_mission_manager_msgsGetNetworkMapRequest
): core.Observation[Ros1Clearpath_mission_manager_msgsGetNetworkMapResponse] =
    ## @brief Call complete clearpath_mission_manager_msgs/GetNetworkMap exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[260, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 260, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_mission_manager_msgsGetNetworkMapResponse](aliasBytes, 24, 2608, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_mission_manager_msgsGetNetworkMissionRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_mission_manager_msgsGetNetworkMissionRequest
): core.Observation[Ros1Clearpath_mission_manager_msgsGetNetworkMissionResponse] =
    ## @brief Call complete clearpath_mission_manager_msgs/GetNetworkMission exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[260, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 260, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_mission_manager_msgsGetNetworkMissionResponse](aliasBytes, 54, 13606, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_mission_manager_msgsGetPointOfInterestRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_mission_manager_msgsGetPointOfInterestRequest
): core.Observation[Ros1Clearpath_mission_manager_msgsGetPointOfInterestResponse] =
    ## @brief Call complete clearpath_mission_manager_msgs/GetPointOfInterest exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[260, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 260, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_mission_manager_msgsGetPointOfInterestResponse](aliasBytes, 49, 1209, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_mission_manager_msgsGetTaskRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_mission_manager_msgsGetTaskRequest
): core.Observation[Ros1Clearpath_mission_manager_msgsGetTaskResponse] =
    ## @brief Call complete clearpath_mission_manager_msgs/GetTask exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[260, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 260, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_mission_manager_msgsGetTaskResponse](aliasBytes, 25, 1457, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_mission_manager_msgsGetWaypointRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_mission_manager_msgsGetWaypointRequest
): core.Observation[Ros1Clearpath_mission_manager_msgsGetWaypointResponse] =
    ## @brief Call complete clearpath_mission_manager_msgs/GetWaypoint exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[260, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 260, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_mission_manager_msgsGetWaypointResponse](aliasBytes, 52, 3350, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_mission_manager_msgsImportDataRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_mission_manager_msgsImportDataRequest
): core.Observation[Ros1Clearpath_mission_manager_msgsImportDataResponse] =
    ## @brief Call complete clearpath_mission_manager_msgs/ImportData exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[260, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 260, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_mission_manager_msgsImportDataResponse](aliasBytes, 24, 32768, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_mission_manager_msgsImportMissionRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_mission_manager_msgsImportMissionRequest
): core.Observation[Ros1Clearpath_mission_manager_msgsImportMissionResponse] =
    ## @brief Call complete clearpath_mission_manager_msgs/ImportMission exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[13336, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 13336, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_mission_manager_msgsImportMissionResponse](aliasBytes, 40, 13336, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_mission_manager_msgsImportNetworkMapRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_mission_manager_msgsImportNetworkMapRequest
): core.Observation[Ros1Clearpath_mission_manager_msgsImportNetworkMapResponse] =
    ## @brief Call complete clearpath_mission_manager_msgs/ImportNetworkMap exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[2608, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 2608, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_mission_manager_msgsImportNetworkMapResponse](aliasBytes, 24, 2608, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_mission_manager_msgsImportNetworkMissionRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_mission_manager_msgsImportNetworkMissionRequest
): core.Observation[Ros1Clearpath_mission_manager_msgsImportNetworkMissionResponse] =
    ## @brief Call complete clearpath_mission_manager_msgs/ImportNetworkMission exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[13606, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 13606, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_mission_manager_msgsImportNetworkMissionResponse](aliasBytes, 54, 13606, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_mission_manager_msgsSplitNetworkEdgeRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_mission_manager_msgsSplitNetworkEdgeRequest
): core.Observation[Ros1Clearpath_mission_manager_msgsSplitNetworkEdgeResponse] =
    ## @brief Call complete clearpath_mission_manager_msgs/SplitNetworkEdge exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[537, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 537, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_mission_manager_msgsSplitNetworkEdgeResponse](aliasBytes, 24, 2608, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_mission_manager_msgsUpdateMissionRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_mission_manager_msgsUpdateMissionRequest
): core.Observation[Ros1Clearpath_mission_manager_msgsUpdateMissionResponse] =
    ## @brief Call complete clearpath_mission_manager_msgs/UpdateMission exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[2224, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 2224, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_mission_manager_msgsUpdateMissionResponse](aliasBytes, 40, 13336, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_mission_manager_msgsUpdateNetworkEdgeRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_mission_manager_msgsUpdateNetworkEdgeRequest
): core.Observation[Ros1Clearpath_mission_manager_msgsUpdateNetworkEdgeResponse] =
    ## @brief Call complete clearpath_mission_manager_msgs/UpdateNetworkEdge exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[1052, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 1052, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_mission_manager_msgsUpdateNetworkEdgeResponse](aliasBytes, 56, 824, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_mission_manager_msgsUpdateNetworkEdgesRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_mission_manager_msgsUpdateNetworkEdgesRequest
): core.Observation[Ros1Clearpath_mission_manager_msgsUpdateNetworkEdgesResponse] =
    ## @brief Call complete clearpath_mission_manager_msgs/UpdateNetworkEdges exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[820, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 820, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_mission_manager_msgsUpdateNetworkEdgesResponse](aliasBytes, 4, 1652, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_mission_manager_msgsUpdateNetworkMapRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_mission_manager_msgsUpdateNetworkMapRequest
): core.Observation[Ros1Clearpath_mission_manager_msgsUpdateNetworkMapResponse] =
    ## @brief Call complete clearpath_mission_manager_msgs/UpdateNetworkMap exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[400, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 400, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_mission_manager_msgsUpdateNetworkMapResponse](aliasBytes, 24, 2608, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_mission_manager_msgsUpdateNetworkMissionRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_mission_manager_msgsUpdateNetworkMissionRequest
): core.Observation[Ros1Clearpath_mission_manager_msgsUpdateNetworkMissionResponse] =
    ## @brief Call complete clearpath_mission_manager_msgs/UpdateNetworkMission exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[2494, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 2494, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_mission_manager_msgsUpdateNetworkMissionResponse](aliasBytes, 54, 13606, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_mission_manager_msgsUpdateNetworkPointRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_mission_manager_msgsUpdateNetworkPointRequest
): core.Observation[Ros1Clearpath_mission_manager_msgsUpdateNetworkPointResponse] =
    ## @brief Call complete clearpath_mission_manager_msgs/UpdateNetworkPoint exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[536, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 536, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_mission_manager_msgsUpdateNetworkPointResponse](aliasBytes, 20, 276, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_mission_manager_msgsUpdateNetworkPointsRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_mission_manager_msgsUpdateNetworkPointsRequest
): core.Observation[Ros1Clearpath_mission_manager_msgsUpdateNetworkPointsResponse] =
    ## @brief Call complete clearpath_mission_manager_msgs/UpdateNetworkPoints exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[824, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 824, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_mission_manager_msgsUpdateNetworkPointsResponse](aliasBytes, 4, 556, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_mission_manager_msgsUpdatePointOfInterestRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_mission_manager_msgsUpdatePointOfInterestRequest
): core.Observation[Ros1Clearpath_mission_manager_msgsUpdatePointOfInterestResponse] =
    ## @brief Call complete clearpath_mission_manager_msgs/UpdatePointOfInterest exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[1209, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 1209, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_mission_manager_msgsUpdatePointOfInterestResponse](aliasBytes, 49, 1209, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_mission_manager_msgsUpdateTaskRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_mission_manager_msgsUpdateTaskRequest
): core.Observation[Ros1Clearpath_mission_manager_msgsUpdateTaskResponse] =
    ## @brief Call complete clearpath_mission_manager_msgs/UpdateTask exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[1457, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 1457, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_mission_manager_msgsUpdateTaskResponse](aliasBytes, 25, 1457, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_mission_manager_msgsUpdateWaypointRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_mission_manager_msgsUpdateWaypointRequest
): core.Observation[Ros1Clearpath_mission_manager_msgsUpdateWaypointResponse] =
    ## @brief Call complete clearpath_mission_manager_msgs/UpdateWaypoint exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[956, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 956, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_mission_manager_msgsUpdateWaypointResponse](aliasBytes, 52, 3350, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_mission_manager_msgsValidateNetworkMapRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_mission_manager_msgsValidateNetworkMapRequest
): core.Observation[Ros1Clearpath_mission_manager_msgsValidateNetworkMapResponse] =
    ## @brief Call complete clearpath_mission_manager_msgs/ValidateNetworkMap exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[260, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 260, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_mission_manager_msgsValidateNetworkMapResponse](aliasBytes, 14, 790, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_mission_scheduler_msgsCloneScheduleRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_mission_scheduler_msgsCloneScheduleRequest
): core.Observation[Ros1Clearpath_mission_scheduler_msgsCloneScheduleResponse] =
    ## @brief Call complete clearpath_mission_scheduler_msgs/CloneSchedule exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[520, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 520, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_mission_scheduler_msgsCloneScheduleResponse](aliasBytes, 40, 944, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_mission_scheduler_msgsCreateScheduleRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_mission_scheduler_msgsCreateScheduleRequest
): core.Observation[Ros1Clearpath_mission_scheduler_msgsCreateScheduleResponse] =
    ## @brief Call complete clearpath_mission_scheduler_msgs/CreateSchedule exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[684, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 684, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_mission_scheduler_msgsCreateScheduleResponse](aliasBytes, 40, 944, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_mission_scheduler_msgsEnableScheduleRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_mission_scheduler_msgsEnableScheduleRequest
): core.Observation[Ros1Clearpath_mission_scheduler_msgsEnableScheduleResponse] =
    ## @brief Call complete clearpath_mission_scheduler_msgs/EnableSchedule exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[261, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 261, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_mission_scheduler_msgsEnableScheduleResponse](aliasBytes, 1, 1, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_mission_scheduler_msgsExportDataRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_mission_scheduler_msgsExportDataRequest
): core.Observation[Ros1Clearpath_mission_scheduler_msgsExportDataResponse] =
    ## @brief Call complete clearpath_mission_scheduler_msgs/ExportData exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[1, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 0, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_mission_scheduler_msgsExportDataResponse](aliasBytes, 4, 260, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_mission_scheduler_msgsGetAllSchedulesRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_mission_scheduler_msgsGetAllSchedulesRequest
): core.Observation[Ros1Clearpath_mission_scheduler_msgsGetAllSchedulesResponse] =
    ## @brief Call complete clearpath_mission_scheduler_msgs/GetAllSchedules exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[1, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 0, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_mission_scheduler_msgsGetAllSchedulesResponse](aliasBytes, 4, 1892, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_mission_scheduler_msgsGetNextScheduleRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_mission_scheduler_msgsGetNextScheduleRequest
): core.Observation[Ros1Clearpath_mission_scheduler_msgsGetNextScheduleResponse] =
    ## @brief Call complete clearpath_mission_scheduler_msgs/GetNextSchedule exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[1, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 0, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_mission_scheduler_msgsGetNextScheduleResponse](aliasBytes, 12, 268, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_mission_scheduler_msgsGetScheduleRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_mission_scheduler_msgsGetScheduleRequest
): core.Observation[Ros1Clearpath_mission_scheduler_msgsGetScheduleResponse] =
    ## @brief Call complete clearpath_mission_scheduler_msgs/GetSchedule exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[260, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 260, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_mission_scheduler_msgsGetScheduleResponse](aliasBytes, 40, 944, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_mission_scheduler_msgsImportDataRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_mission_scheduler_msgsImportDataRequest
): core.Observation[Ros1Clearpath_mission_scheduler_msgsImportDataResponse] =
    ## @brief Call complete clearpath_mission_scheduler_msgs/ImportData exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[260, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 260, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_mission_scheduler_msgsImportDataResponse](aliasBytes, 4, 1892, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_mission_scheduler_msgsUpdateScheduleRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_mission_scheduler_msgsUpdateScheduleRequest
): core.Observation[Ros1Clearpath_mission_scheduler_msgsUpdateScheduleResponse] =
    ## @brief Call complete clearpath_mission_scheduler_msgs/UpdateSchedule exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[944, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 944, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_mission_scheduler_msgsUpdateScheduleResponse](aliasBytes, 40, 944, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_navigation_msgsAutonomyTaskSrvRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_navigation_msgsAutonomyTaskSrvRequest
): core.Observation[Ros1Clearpath_navigation_msgsAutonomyTaskSrvResponse] =
    ## @brief Call complete clearpath_navigation_msgs/AutonomyTaskSrv exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[804, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 804, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_navigation_msgsAutonomyTaskSrvResponse](aliasBytes, 2, 2, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_navigation_msgsSetDelayCompensationRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_navigation_msgsSetDelayCompensationRequest
): core.Observation[Ros1Clearpath_navigation_msgsSetDelayCompensationResponse] =
    ## @brief Call complete clearpath_navigation_msgs/SetDelayCompensation exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[3, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 3, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_navigation_msgsSetDelayCompensationResponse](aliasBytes, 5, 261, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_navigation_msgsSetPathShifterRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_navigation_msgsSetPathShifterRequest
): core.Observation[Ros1Clearpath_navigation_msgsSetPathShifterResponse] =
    ## @brief Call complete clearpath_navigation_msgs/SetPathShifter exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[9, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 9, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_navigation_msgsSetPathShifterResponse](aliasBytes, 5, 261, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_navigation_msgsSetPathSmootherRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_navigation_msgsSetPathSmootherRequest
): core.Observation[Ros1Clearpath_navigation_msgsSetPathSmootherResponse] =
    ## @brief Call complete clearpath_navigation_msgs/SetPathSmoother exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[9, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 9, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_navigation_msgsSetPathSmootherResponse](aliasBytes, 5, 261, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_navigation_msgsSetStopDistanceRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_navigation_msgsSetStopDistanceRequest
): core.Observation[Ros1Clearpath_navigation_msgsSetStopDistanceResponse] =
    ## @brief Call complete clearpath_navigation_msgs/SetStopDistance exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[5, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 5, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_navigation_msgsSetStopDistanceResponse](aliasBytes, 5, 261, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_safety_msgsAddCommunicationWatchdogRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_safety_msgsAddCommunicationWatchdogRequest
): core.Observation[Ros1Clearpath_safety_msgsAddCommunicationWatchdogResponse] =
    ## @brief Call complete clearpath_safety_msgs/AddCommunicationWatchdog exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[1961, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 1961, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_safety_msgsAddCommunicationWatchdogResponse](aliasBytes, 1, 1, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_safety_msgsAddHeartbeatWatchdogRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_safety_msgsAddHeartbeatWatchdogRequest
): core.Observation[Ros1Clearpath_safety_msgsAddHeartbeatWatchdogResponse] =
    ## @brief Call complete clearpath_safety_msgs/AddHeartbeatWatchdog exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[1441, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 1441, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_safety_msgsAddHeartbeatWatchdogResponse](aliasBytes, 1, 1, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_safety_msgsAddInclinationWatchdogRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_safety_msgsAddInclinationWatchdogRequest
): core.Observation[Ros1Clearpath_safety_msgsAddInclinationWatchdogResponse] =
    ## @brief Call complete clearpath_safety_msgs/AddInclinationWatchdog exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[1449, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 1449, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_safety_msgsAddInclinationWatchdogResponse](aliasBytes, 1, 1, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_safety_msgsAddNodeStatusWatchdogRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_safety_msgsAddNodeStatusWatchdogRequest
): core.Observation[Ros1Clearpath_safety_msgsAddNodeStatusWatchdogResponse] =
    ## @brief Call complete clearpath_safety_msgs/AddNodeStatusWatchdog exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[1438, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 1438, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_safety_msgsAddNodeStatusWatchdogResponse](aliasBytes, 1, 1, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_safety_msgsAddNodeletStatusWatchdogRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_safety_msgsAddNodeletStatusWatchdogRequest
): core.Observation[Ros1Clearpath_safety_msgsAddNodeletStatusWatchdogResponse] =
    ## @brief Call complete clearpath_safety_msgs/AddNodeletStatusWatchdog exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[1698, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 1698, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_safety_msgsAddNodeletStatusWatchdogResponse](aliasBytes, 1, 1, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_safety_msgsAddNumPointsWatchdogRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_safety_msgsAddNumPointsWatchdogRequest
): core.Observation[Ros1Clearpath_safety_msgsAddNumPointsWatchdogResponse] =
    ## @brief Call complete clearpath_safety_msgs/AddNumPointsWatchdog exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[1441, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 1441, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_safety_msgsAddNumPointsWatchdogResponse](aliasBytes, 1, 1, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_safety_msgsAddOdomCovarianceWatchdogRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_safety_msgsAddOdomCovarianceWatchdogRequest
): core.Observation[Ros1Clearpath_safety_msgsAddOdomCovarianceWatchdogResponse] =
    ## @brief Call complete clearpath_safety_msgs/AddOdomCovarianceWatchdog exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[1449, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 1449, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_safety_msgsAddOdomCovarianceWatchdogResponse](aliasBytes, 1, 1, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_safety_msgsAddRtkFixWatchdogRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_safety_msgsAddRtkFixWatchdogRequest
): core.Observation[Ros1Clearpath_safety_msgsAddRtkFixWatchdogResponse] =
    ## @brief Call complete clearpath_safety_msgs/AddRtkFixWatchdog exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[1443, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 1443, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_safety_msgsAddRtkFixWatchdogResponse](aliasBytes, 1, 1, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_safety_msgsAddTopicDataWatchdogRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_safety_msgsAddTopicDataWatchdogRequest
): core.Observation[Ros1Clearpath_safety_msgsAddTopicDataWatchdogResponse] =
    ## @brief Call complete clearpath_safety_msgs/AddTopicDataWatchdog exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[1441, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 1441, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_safety_msgsAddTopicDataWatchdogResponse](aliasBytes, 1, 1, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_safety_msgsRemoveWatchdogRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_safety_msgsRemoveWatchdogRequest
): core.Observation[Ros1Clearpath_safety_msgsRemoveWatchdogResponse] =
    ## @brief Call complete clearpath_safety_msgs/RemoveWatchdog exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[132, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 132, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_safety_msgsRemoveWatchdogResponse](aliasBytes, 1, 1, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_safety_msgsUpdateCommunicationWatchdogRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_safety_msgsUpdateCommunicationWatchdogRequest
): core.Observation[Ros1Clearpath_safety_msgsUpdateCommunicationWatchdogResponse] =
    ## @brief Call complete clearpath_safety_msgs/UpdateCommunicationWatchdog exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[2221, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 2221, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_safety_msgsUpdateCommunicationWatchdogResponse](aliasBytes, 1, 1, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_safety_msgsUpdateHeartbeatWatchdogRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_safety_msgsUpdateHeartbeatWatchdogRequest
): core.Observation[Ros1Clearpath_safety_msgsUpdateHeartbeatWatchdogResponse] =
    ## @brief Call complete clearpath_safety_msgs/UpdateHeartbeatWatchdog exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[1701, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 1701, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_safety_msgsUpdateHeartbeatWatchdogResponse](aliasBytes, 1, 1, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_safety_msgsUpdateInclinationWatchdogRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_safety_msgsUpdateInclinationWatchdogRequest
): core.Observation[Ros1Clearpath_safety_msgsUpdateInclinationWatchdogResponse] =
    ## @brief Call complete clearpath_safety_msgs/UpdateInclinationWatchdog exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[1709, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 1709, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_safety_msgsUpdateInclinationWatchdogResponse](aliasBytes, 1, 1, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_safety_msgsUpdateNodeStatusWatchdogRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_safety_msgsUpdateNodeStatusWatchdogRequest
): core.Observation[Ros1Clearpath_safety_msgsUpdateNodeStatusWatchdogResponse] =
    ## @brief Call complete clearpath_safety_msgs/UpdateNodeStatusWatchdog exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[1698, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 1698, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_safety_msgsUpdateNodeStatusWatchdogResponse](aliasBytes, 1, 1, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_safety_msgsUpdateNodeletStatusWatchdogRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_safety_msgsUpdateNodeletStatusWatchdogRequest
): core.Observation[Ros1Clearpath_safety_msgsUpdateNodeletStatusWatchdogResponse] =
    ## @brief Call complete clearpath_safety_msgs/UpdateNodeletStatusWatchdog exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[1958, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 1958, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_safety_msgsUpdateNodeletStatusWatchdogResponse](aliasBytes, 1, 1, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_safety_msgsUpdateNumPointsWatchdogRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_safety_msgsUpdateNumPointsWatchdogRequest
): core.Observation[Ros1Clearpath_safety_msgsUpdateNumPointsWatchdogResponse] =
    ## @brief Call complete clearpath_safety_msgs/UpdateNumPointsWatchdog exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[1701, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 1701, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_safety_msgsUpdateNumPointsWatchdogResponse](aliasBytes, 1, 1, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_safety_msgsUpdateOdomCovarianceWatchdogRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_safety_msgsUpdateOdomCovarianceWatchdogRequest
): core.Observation[Ros1Clearpath_safety_msgsUpdateOdomCovarianceWatchdogResponse] =
    ## @brief Call complete clearpath_safety_msgs/UpdateOdomCovarianceWatchdog exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[1709, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 1709, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_safety_msgsUpdateOdomCovarianceWatchdogResponse](aliasBytes, 1, 1, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_safety_msgsUpdateRtkFixWatchdogRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_safety_msgsUpdateRtkFixWatchdogRequest
): core.Observation[Ros1Clearpath_safety_msgsUpdateRtkFixWatchdogResponse] =
    ## @brief Call complete clearpath_safety_msgs/UpdateRtkFixWatchdog exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[1703, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 1703, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_safety_msgsUpdateRtkFixWatchdogResponse](aliasBytes, 1, 1, 1,
        bytes.toOpenArray(0, written - 1))

proc callRos1Clearpath_safety_msgsUpdateTopicDataWatchdogRequest*(
    aliasBytes: openArray[byte];
    requestValue: Ros1Clearpath_safety_msgsUpdateTopicDataWatchdogRequest
): core.Observation[Ros1Clearpath_safety_msgsUpdateTopicDataWatchdogResponse] =
    ## @brief Call complete clearpath_safety_msgs/UpdateTopicDataWatchdog exactly once.
    ## @details Encode the complete request before acquisition. Retain original transport and close errors.
    ## @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
    ## @param requestValue Complete immutable original request; every field and bound is validated.
    ## @return Entire owned response with independent transport, provider and cleanup facts.
    ## @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
    var bytes: array[1701, byte]
    var written: int
    var ownedRequest = requestValue
    result.primary = wire.encode(ownedRequest, bytes, 1701, written)
    if result.primary != 0: return
    result = core.request[Ros1Clearpath_safety_msgsUpdateTopicDataWatchdogResponse](aliasBytes, 1, 1, 1,
        bytes.toOpenArray(0, written - 1))
