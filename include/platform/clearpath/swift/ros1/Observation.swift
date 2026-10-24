/// @file Observation.swift
/// @brief Typed complete clearpath observers and service clients.
public enum ClearpathRos1API {
  /// @brief Observe every original clearpath_configuration_msgs/AutonomyConfig field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_configuration_msgsAutonomyConfig(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros1Clearpath_configuration_msgsAutonomyConfig>
  {
    return nativeReceive(
      aliasBytes, 268, attempts, Ros1Clearpath_configuration_msgsAutonomyConfig.decode,
      { $0.encode() })
  }

  /// @brief Observe every original clearpath_configuration_msgs/PlatformConfig field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_configuration_msgsPlatformConfig(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros1Clearpath_configuration_msgsPlatformConfig>
  {
    return nativeReceive(
      aliasBytes, 0, attempts, Ros1Clearpath_configuration_msgsPlatformConfig.decode,
      { $0.encode() })
  }

  /// @brief Observe every original clearpath_control_msgs/AutonomySync field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_control_msgsAutonomySync(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros1Clearpath_control_msgsAutonomySync>
  {
    return nativeReceive(
      aliasBytes, 7, attempts, Ros1Clearpath_control_msgsAutonomySync.decode, { $0.encode() })
  }

  /// @brief Observe every original clearpath_control_msgs/ControlMode field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_control_msgsControlMode(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros1Clearpath_control_msgsControlMode>
  {
    return nativeReceive(
      aliasBytes, 1, attempts, Ros1Clearpath_control_msgsControlMode.decode, { $0.encode() })
  }

  /// @brief Observe every original clearpath_control_msgs/ControlSelectionState field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_control_msgsControlSelectionState(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros1Clearpath_control_msgsControlSelectionState>
  {
    return nativeReceive(
      aliasBytes, 3, attempts, Ros1Clearpath_control_msgsControlSelectionState.decode,
      { $0.encode() })
  }

  /// @brief Observe every original clearpath_control_msgs/ControlState field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_control_msgsControlState(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros1Clearpath_control_msgsControlState>
  {
    return nativeReceive(
      aliasBytes, 2, attempts, Ros1Clearpath_control_msgsControlState.decode, { $0.encode() })
  }

  /// @brief Observe every original clearpath_dock_msgs/DockInfo field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_dock_msgsDockInfo(_ aliasBytes: [UInt8], _ attempts: UInt32)
    -> NativeObservation<Ros1Clearpath_dock_msgsDockInfo>
  {
    return nativeReceive(
      aliasBytes, 1204, attempts, Ros1Clearpath_dock_msgsDockInfo.decode, { $0.encode() })
  }

  /// @brief Observe every original clearpath_dock_msgs/DockProperties field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_dock_msgsDockProperties(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros1Clearpath_dock_msgsDockProperties>
  {
    return nativeReceive(
      aliasBytes, 2412, attempts, Ros1Clearpath_dock_msgsDockProperties.decode, { $0.encode() })
  }

  /// @brief Observe every original clearpath_dock_msgs/DockState field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_dock_msgsDockState(_ aliasBytes: [UInt8], _ attempts: UInt32)
    -> NativeObservation<Ros1Clearpath_dock_msgsDockState>
  {
    return nativeReceive(
      aliasBytes, 1, attempts, Ros1Clearpath_dock_msgsDockState.decode, { $0.encode() })
  }

  /// @brief Observe every original clearpath_dock_msgs/TargetTrackerState field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_dock_msgsTargetTrackerState(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros1Clearpath_dock_msgsTargetTrackerState>
  {
    return nativeReceive(
      aliasBytes, 502, attempts, Ros1Clearpath_dock_msgsTargetTrackerState.decode, { $0.encode() })
  }

  /// @brief Observe every original clearpath_localization_msgs/GNSSStatus field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_localization_msgsGNSSStatus(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros1Clearpath_localization_msgsGNSSStatus>
  {
    return nativeReceive(
      aliasBytes, 273, attempts, Ros1Clearpath_localization_msgsGNSSStatus.decode, { $0.encode() })
  }

  /// @brief Observe every original clearpath_localization_msgs/LocalizationStatus field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_localization_msgsLocalizationStatus(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros1Clearpath_localization_msgsLocalizationStatus>
  {
    return nativeReceive(
      aliasBytes, 968, attempts, Ros1Clearpath_localization_msgsLocalizationStatus.decode,
      { $0.encode() })
  }

  /// @brief Observe every original clearpath_localization_msgs/SurveyProperties field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_localization_msgsSurveyProperties(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros1Clearpath_localization_msgsSurveyProperties>
  {
    return nativeReceive(
      aliasBytes, 509, attempts, Ros1Clearpath_localization_msgsSurveyProperties.decode,
      { $0.encode() })
  }

  /// @brief Observe every original clearpath_localization_msgs/XvnStatus field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_localization_msgsXvnStatus(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros1Clearpath_localization_msgsXvnStatus>
  {
    return nativeReceive(
      aliasBytes, 182, attempts, Ros1Clearpath_localization_msgsXvnStatus.decode, { $0.encode() })
  }

  /// @brief Observe every original clearpath_logger_msgs/Event field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_logger_msgsEvent(_ aliasBytes: [UInt8], _ attempts: UInt32)
    -> NativeObservation<Ros1Clearpath_logger_msgsEvent>
  {
    return nativeReceive(
      aliasBytes, 3190, attempts, Ros1Clearpath_logger_msgsEvent.decode, { $0.encode() })
  }

  /// @brief Observe every original clearpath_logger_msgs/EventLog field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_logger_msgsEventLog(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros1Clearpath_logger_msgsEventLog>
  {
    return nativeReceive(
      aliasBytes, 7064, attempts, Ros1Clearpath_logger_msgsEventLog.decode, { $0.encode() })
  }

  /// @brief Observe every original clearpath_logger_msgs/EventLogs field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_logger_msgsEventLogs(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros1Clearpath_logger_msgsEventLogs>
  {
    return nativeReceive(
      aliasBytes, 14132, attempts, Ros1Clearpath_logger_msgsEventLogs.decode, { $0.encode() })
  }

  /// @brief Observe every original clearpath_mission_manager_msgs/NetworkEdgeReq field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_mission_manager_msgsNetworkEdgeReq(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros1Clearpath_mission_manager_msgsNetworkEdgeReq>
  {
    return nativeReceive(
      aliasBytes, 528, attempts, Ros1Clearpath_mission_manager_msgsNetworkEdgeReq.decode,
      { $0.encode() })
  }

  /// @brief Observe every original clearpath_mission_manager_msgs/NetworkMapState field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_mission_manager_msgsNetworkMapState(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros1Clearpath_mission_manager_msgsNetworkMapState>
  {
    return nativeReceive(
      aliasBytes, 790, attempts, Ros1Clearpath_mission_manager_msgsNetworkMapState.decode,
      { $0.encode() })
  }

  /// @brief Observe every original clearpath_mission_manager_msgs/NetworkMapValidityState field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_mission_manager_msgsNetworkMapValidityState(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros1Clearpath_mission_manager_msgsNetworkMapValidityState>
  {
    return nativeReceive(
      aliasBytes, 1584, attempts, Ros1Clearpath_mission_manager_msgsNetworkMapValidityState.decode,
      { $0.encode() })
  }

  /// @brief Observe every original clearpath_mission_manager_msgs/StorageState field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_mission_manager_msgsStorageState(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros1Clearpath_mission_manager_msgsStorageState>
  {
    return nativeReceive(
      aliasBytes, 32768, attempts, Ros1Clearpath_mission_manager_msgsStorageState.decode,
      { $0.encode() })
  }

  /// @brief Observe every original clearpath_mission_scheduler_msgs/NextSchedule field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_mission_scheduler_msgsNextSchedule(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros1Clearpath_mission_scheduler_msgsNextSchedule>
  {
    return nativeReceive(
      aliasBytes, 268, attempts, Ros1Clearpath_mission_scheduler_msgsNextSchedule.decode,
      { $0.encode() })
  }

  /// @brief Observe every original clearpath_mission_scheduler_msgs/Schedule field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_mission_scheduler_msgsSchedule(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros1Clearpath_mission_scheduler_msgsSchedule>
  {
    return nativeReceive(
      aliasBytes, 944, attempts, Ros1Clearpath_mission_scheduler_msgsSchedule.decode,
      { $0.encode() })
  }

  /// @brief Observe every original clearpath_mission_scheduler_msgs/StorageState field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_mission_scheduler_msgsStorageState(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros1Clearpath_mission_scheduler_msgsStorageState>
  {
    return nativeReceive(
      aliasBytes, 1892, attempts, Ros1Clearpath_mission_scheduler_msgsStorageState.decode,
      { $0.encode() })
  }

  /// @brief Observe every original clearpath_mission_scheduler_msgs/UtcTime field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_mission_scheduler_msgsUtcTime(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros1Clearpath_mission_scheduler_msgsUtcTime>
  {
    return nativeReceive(
      aliasBytes, 5, attempts, Ros1Clearpath_mission_scheduler_msgsUtcTime.decode, { $0.encode() })
  }

  /// @brief Observe every original clearpath_navigation_msgs/AutonomyStatus field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_navigation_msgsAutonomyStatus(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros1Clearpath_navigation_msgsAutonomyStatus>
  {
    return nativeReceive(
      aliasBytes, 673, attempts, Ros1Clearpath_navigation_msgsAutonomyStatus.decode, { $0.encode() }
    )
  }

  /// @brief Observe every original clearpath_navigation_msgs/DistanceToGoal field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_navigation_msgsDistanceToGoal(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros1Clearpath_navigation_msgsDistanceToGoal>
  {
    return nativeReceive(
      aliasBytes, 8, attempts, Ros1Clearpath_navigation_msgsDistanceToGoal.decode, { $0.encode() })
  }

  /// @brief Observe every original clearpath_navigation_msgs/Metrics field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_navigation_msgsMetrics(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros1Clearpath_navigation_msgsMetrics>
  {
    return nativeReceive(
      aliasBytes, 56, attempts, Ros1Clearpath_navigation_msgsMetrics.decode, { $0.encode() })
  }

  /// @brief Observe every original clearpath_navigation_msgs/Mission field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_navigation_msgsMission(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros1Clearpath_navigation_msgsMission>
  {
    return nativeReceive(
      aliasBytes, 13336, attempts, Ros1Clearpath_navigation_msgsMission.decode, { $0.encode() })
  }

  /// @brief Observe every original clearpath_navigation_msgs/MissionStatus field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_navigation_msgsMissionStatus(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros1Clearpath_navigation_msgsMissionStatus>
  {
    return nativeReceive(
      aliasBytes, 7244, attempts, Ros1Clearpath_navigation_msgsMissionStatus.decode, { $0.encode() }
    )
  }

  /// @brief Observe every original clearpath_navigation_msgs/MotionState field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_navigation_msgsMotionState(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros1Clearpath_navigation_msgsMotionState>
  {
    return nativeReceive(
      aliasBytes, 3, attempts, Ros1Clearpath_navigation_msgsMotionState.decode, { $0.encode() })
  }

  /// @brief Observe every original clearpath_navigation_msgs/NavigationState field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_navigation_msgsNavigationState(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros1Clearpath_navigation_msgsNavigationState>
  {
    return nativeReceive(
      aliasBytes, 6, attempts, Ros1Clearpath_navigation_msgsNavigationState.decode, { $0.encode() })
  }

  /// @brief Observe every original clearpath_navigation_msgs/NetworkEdge field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_navigation_msgsNetworkEdge(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros1Clearpath_navigation_msgsNetworkEdge>
  {
    return nativeReceive(
      aliasBytes, 824, attempts, Ros1Clearpath_navigation_msgsNetworkEdge.decode, { $0.encode() })
  }

  /// @brief Observe every original clearpath_navigation_msgs/NetworkGoalState field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_navigation_msgsNetworkGoalState(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros1Clearpath_navigation_msgsNetworkGoalState>
  {
    return nativeReceive(
      aliasBytes, 3351, attempts, Ros1Clearpath_navigation_msgsNetworkGoalState.decode,
      { $0.encode() })
  }

  /// @brief Observe every original clearpath_navigation_msgs/NetworkMap field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_navigation_msgsNetworkMap(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros1Clearpath_navigation_msgsNetworkMap>
  {
    return nativeReceive(
      aliasBytes, 2608, attempts, Ros1Clearpath_navigation_msgsNetworkMap.decode, { $0.encode() })
  }

  /// @brief Observe every original clearpath_navigation_msgs/NetworkMission field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_navigation_msgsNetworkMission(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros1Clearpath_navigation_msgsNetworkMission>
  {
    return nativeReceive(
      aliasBytes, 13606, attempts, Ros1Clearpath_navigation_msgsNetworkMission.decode,
      { $0.encode() })
  }

  /// @brief Observe every original clearpath_navigation_msgs/NetworkMissionSegment field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_navigation_msgsNetworkMissionSegment(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros1Clearpath_navigation_msgsNetworkMissionSegment>
  {
    return nativeReceive(
      aliasBytes, 3546, attempts, Ros1Clearpath_navigation_msgsNetworkMissionSegment.decode,
      { $0.encode() })
  }

  /// @brief Observe every original clearpath_navigation_msgs/NetworkPoint field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_navigation_msgsNetworkPoint(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros1Clearpath_navigation_msgsNetworkPoint>
  {
    return nativeReceive(
      aliasBytes, 276, attempts, Ros1Clearpath_navigation_msgsNetworkPoint.decode, { $0.encode() })
  }

  /// @brief Observe every original clearpath_navigation_msgs/OdomIntent field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_navigation_msgsOdomIntent(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros1Clearpath_navigation_msgsOdomIntent>
  {
    return nativeReceive(
      aliasBytes, 2316, attempts, Ros1Clearpath_navigation_msgsOdomIntent.decode, { $0.encode() })
  }

  /// @brief Observe every original clearpath_navigation_msgs/PointOfInterest field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_navigation_msgsPointOfInterest(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros1Clearpath_navigation_msgsPointOfInterest>
  {
    return nativeReceive(
      aliasBytes, 1209, attempts, Ros1Clearpath_navigation_msgsPointOfInterest.decode,
      { $0.encode() })
  }

  /// @brief Observe every original clearpath_navigation_msgs/PointVector field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_navigation_msgsPointVector(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros1Clearpath_navigation_msgsPointVector>
  {
    return nativeReceive(
      aliasBytes, 164, attempts, Ros1Clearpath_navigation_msgsPointVector.decode, { $0.encode() })
  }

  /// @brief Observe every original clearpath_navigation_msgs/Progress field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_navigation_msgsProgress(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros1Clearpath_navigation_msgsProgress>
  {
    return nativeReceive(
      aliasBytes, 12, attempts, Ros1Clearpath_navigation_msgsProgress.decode, { $0.encode() })
  }

  /// @brief Observe every original clearpath_navigation_msgs/ScanPoints field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_navigation_msgsScanPoints(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros1Clearpath_navigation_msgsScanPoints>
  {
    return nativeReceive(
      aliasBytes, 1000, attempts, Ros1Clearpath_navigation_msgsScanPoints.decode, { $0.encode() })
  }

  /// @brief Observe every original clearpath_navigation_msgs/Task field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_navigation_msgsTask(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros1Clearpath_navigation_msgsTask>
  {
    return nativeReceive(
      aliasBytes, 1457, attempts, Ros1Clearpath_navigation_msgsTask.decode, { $0.encode() })
  }

  /// @brief Observe every original clearpath_navigation_msgs/TrackError field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_navigation_msgsTrackError(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros1Clearpath_navigation_msgsTrackError>
  {
    return nativeReceive(
      aliasBytes, 152, attempts, Ros1Clearpath_navigation_msgsTrackError.decode, { $0.encode() })
  }

  /// @brief Observe every original clearpath_navigation_msgs/Vector2D field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_navigation_msgsVector2D(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros1Clearpath_navigation_msgsVector2D>
  {
    return nativeReceive(
      aliasBytes, 8, attempts, Ros1Clearpath_navigation_msgsVector2D.decode, { $0.encode() })
  }

  /// @brief Observe every original clearpath_navigation_msgs/Vector2D64 field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_navigation_msgsVector2D64(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros1Clearpath_navigation_msgsVector2D64>
  {
    return nativeReceive(
      aliasBytes, 16, attempts, Ros1Clearpath_navigation_msgsVector2D64.decode, { $0.encode() })
  }

  /// @brief Observe every original clearpath_navigation_msgs/Waypoint field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_navigation_msgsWaypoint(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros1Clearpath_navigation_msgsWaypoint>
  {
    return nativeReceive(
      aliasBytes, 3350, attempts, Ros1Clearpath_navigation_msgsWaypoint.decode, { $0.encode() })
  }

  /// @brief Observe every original clearpath_navigation_msgs/WaypointStatus field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_navigation_msgsWaypointStatus(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros1Clearpath_navigation_msgsWaypointStatus>
  {
    return nativeReceive(
      aliasBytes, 3352, attempts, Ros1Clearpath_navigation_msgsWaypointStatus.decode,
      { $0.encode() })
  }

  /// @brief Observe every original clearpath_platform_msgs/Drive field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_platform_msgsDrive(_ aliasBytes: [UInt8], _ attempts: UInt32)
    -> NativeObservation<Ros1Clearpath_platform_msgsDrive>
  {
    return nativeReceive(
      aliasBytes, 9, attempts, Ros1Clearpath_platform_msgsDrive.decode, { $0.encode() })
  }

  /// @brief Observe every original clearpath_platform_msgs/DriveFeedback field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_platform_msgsDriveFeedback(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros1Clearpath_platform_msgsDriveFeedback>
  {
    return nativeReceive(
      aliasBytes, 25, attempts, Ros1Clearpath_platform_msgsDriveFeedback.decode, { $0.encode() })
  }

  /// @brief Observe every original clearpath_platform_msgs/Fans field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_platform_msgsFans(_ aliasBytes: [UInt8], _ attempts: UInt32)
    -> NativeObservation<Ros1Clearpath_platform_msgsFans>
  {
    return nativeReceive(
      aliasBytes, 6, attempts, Ros1Clearpath_platform_msgsFans.decode, { $0.encode() })
  }

  /// @brief Observe every original clearpath_platform_msgs/Feedback field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_platform_msgsFeedback(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros1Clearpath_platform_msgsFeedback>
  {
    return nativeReceive(
      aliasBytes, 196, attempts, Ros1Clearpath_platform_msgsFeedback.decode, { $0.encode() })
  }

  /// @brief Observe every original clearpath_platform_msgs/Lights field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_platform_msgsLights(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros1Clearpath_platform_msgsLights>
  {
    return nativeReceive(
      aliasBytes, 10, attempts, Ros1Clearpath_platform_msgsLights.decode, { $0.encode() })
  }

  /// @brief Observe every original clearpath_platform_msgs/PlatformID field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_platform_msgsPlatformID(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros1Clearpath_platform_msgsPlatformID>
  {
    return nativeReceive(
      aliasBytes, 1040, attempts, Ros1Clearpath_platform_msgsPlatformID.decode, { $0.encode() })
  }

  /// @brief Observe every original clearpath_platform_msgs/Power field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_platform_msgsPower(_ aliasBytes: [UInt8], _ attempts: UInt32)
    -> NativeObservation<Ros1Clearpath_platform_msgsPower>
  {
    return nativeReceive(
      aliasBytes, 172, attempts, Ros1Clearpath_platform_msgsPower.decode, { $0.encode() })
  }

  /// @brief Observe every original clearpath_platform_msgs/RGB field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_platform_msgsRGB(_ aliasBytes: [UInt8], _ attempts: UInt32)
    -> NativeObservation<Ros1Clearpath_platform_msgsRGB>
  {
    return nativeReceive(
      aliasBytes, 3, attempts, Ros1Clearpath_platform_msgsRGB.decode, { $0.encode() })
  }

  /// @brief Observe every original clearpath_platform_msgs/RYG field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_platform_msgsRYG(_ aliasBytes: [UInt8], _ attempts: UInt32)
    -> NativeObservation<Ros1Clearpath_platform_msgsRYG>
  {
    return nativeReceive(
      aliasBytes, 3, attempts, Ros1Clearpath_platform_msgsRYG.decode, { $0.encode() })
  }

  /// @brief Observe every original clearpath_platform_msgs/StackLightState field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_platform_msgsStackLightState(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros1Clearpath_platform_msgsStackLightState>
  {
    return nativeReceive(
      aliasBytes, 264, attempts, Ros1Clearpath_platform_msgsStackLightState.decode, { $0.encode() })
  }

  /// @brief Observe every original clearpath_platform_msgs/Status field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_platform_msgsStatus(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros1Clearpath_platform_msgsStatus>
  {
    return nativeReceive(
      aliasBytes, 688, attempts, Ros1Clearpath_platform_msgsStatus.decode, { $0.encode() })
  }

  /// @brief Observe every original clearpath_platform_msgs/StopStatus field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_platform_msgsStopStatus(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros1Clearpath_platform_msgsStopStatus>
  {
    return nativeReceive(
      aliasBytes, 146, attempts, Ros1Clearpath_platform_msgsStopStatus.decode, { $0.encode() })
  }

  /// @brief Observe every original clearpath_safety_msgs/AssistedTeleopState field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_safety_msgsAssistedTeleopState(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros1Clearpath_safety_msgsAssistedTeleopState>
  {
    return nativeReceive(
      aliasBytes, 262, attempts, Ros1Clearpath_safety_msgsAssistedTeleopState.decode,
      { $0.encode() })
  }

  /// @brief Observe every original clearpath_safety_msgs/ObstacleMap field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_safety_msgsObstacleMap(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros1Clearpath_safety_msgsObstacleMap>
  {
    return nativeReceive(
      aliasBytes, 12, attempts, Ros1Clearpath_safety_msgsObstacleMap.decode, { $0.encode() })
  }

  /// @brief Observe every original clearpath_safety_msgs/Safety field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_safety_msgsSafety(_ aliasBytes: [UInt8], _ attempts: UInt32)
    -> NativeObservation<Ros1Clearpath_safety_msgsSafety>
  {
    return nativeReceive(
      aliasBytes, 262, attempts, Ros1Clearpath_safety_msgsSafety.decode, { $0.encode() })
  }

  /// @brief Observe every original clearpath_safety_msgs/WatchdogConfigArray field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_safety_msgsWatchdogConfigArray(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros1Clearpath_safety_msgsWatchdogConfigArray>
  {
    return nativeReceive(
      aliasBytes, 27558, attempts, Ros1Clearpath_safety_msgsWatchdogConfigArray.decode,
      { $0.encode() })
  }

  /// @brief Observe every original clearpath_safety_msgs/WatchdogConfigCommon field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_safety_msgsWatchdogConfigCommon(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros1Clearpath_safety_msgsWatchdogConfigCommon>
  {
    return nativeReceive(
      aliasBytes, 1177, attempts, Ros1Clearpath_safety_msgsWatchdogConfigCommon.decode,
      { $0.encode() })
  }

  /// @brief Observe every original clearpath_safety_msgs/WatchdogConfigCommunication field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_safety_msgsWatchdogConfigCommunication(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros1Clearpath_safety_msgsWatchdogConfigCommunication>
  {
    return nativeReceive(
      aliasBytes, 1961, attempts, Ros1Clearpath_safety_msgsWatchdogConfigCommunication.decode,
      { $0.encode() })
  }

  /// @brief Observe every original clearpath_safety_msgs/WatchdogConfigHeartbeat field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_safety_msgsWatchdogConfigHeartbeat(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros1Clearpath_safety_msgsWatchdogConfigHeartbeat>
  {
    return nativeReceive(
      aliasBytes, 1441, attempts, Ros1Clearpath_safety_msgsWatchdogConfigHeartbeat.decode,
      { $0.encode() })
  }

  /// @brief Observe every original clearpath_safety_msgs/WatchdogConfigInclination field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_safety_msgsWatchdogConfigInclination(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros1Clearpath_safety_msgsWatchdogConfigInclination>
  {
    return nativeReceive(
      aliasBytes, 1449, attempts, Ros1Clearpath_safety_msgsWatchdogConfigInclination.decode,
      { $0.encode() })
  }

  /// @brief Observe every original clearpath_safety_msgs/WatchdogConfigNodeStatus field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_safety_msgsWatchdogConfigNodeStatus(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros1Clearpath_safety_msgsWatchdogConfigNodeStatus>
  {
    return nativeReceive(
      aliasBytes, 1438, attempts, Ros1Clearpath_safety_msgsWatchdogConfigNodeStatus.decode,
      { $0.encode() })
  }

  /// @brief Observe every original clearpath_safety_msgs/WatchdogConfigNodeletStatus field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_safety_msgsWatchdogConfigNodeletStatus(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros1Clearpath_safety_msgsWatchdogConfigNodeletStatus>
  {
    return nativeReceive(
      aliasBytes, 1698, attempts, Ros1Clearpath_safety_msgsWatchdogConfigNodeletStatus.decode,
      { $0.encode() })
  }

  /// @brief Observe every original clearpath_safety_msgs/WatchdogConfigNumPoints field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_safety_msgsWatchdogConfigNumPoints(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros1Clearpath_safety_msgsWatchdogConfigNumPoints>
  {
    return nativeReceive(
      aliasBytes, 1441, attempts, Ros1Clearpath_safety_msgsWatchdogConfigNumPoints.decode,
      { $0.encode() })
  }

  /// @brief Observe every original clearpath_safety_msgs/WatchdogConfigOdomCovariance field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_safety_msgsWatchdogConfigOdomCovariance(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros1Clearpath_safety_msgsWatchdogConfigOdomCovariance>
  {
    return nativeReceive(
      aliasBytes, 1449, attempts, Ros1Clearpath_safety_msgsWatchdogConfigOdomCovariance.decode,
      { $0.encode() })
  }

  /// @brief Observe every original clearpath_safety_msgs/WatchdogConfigRtkFix field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_safety_msgsWatchdogConfigRtkFix(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros1Clearpath_safety_msgsWatchdogConfigRtkFix>
  {
    return nativeReceive(
      aliasBytes, 1443, attempts, Ros1Clearpath_safety_msgsWatchdogConfigRtkFix.decode,
      { $0.encode() })
  }

  /// @brief Observe every original clearpath_safety_msgs/WatchdogConfigTopicData field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_safety_msgsWatchdogConfigTopicData(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros1Clearpath_safety_msgsWatchdogConfigTopicData>
  {
    return nativeReceive(
      aliasBytes, 1441, attempts, Ros1Clearpath_safety_msgsWatchdogConfigTopicData.decode,
      { $0.encode() })
  }

  /// @brief Observe every original clearpath_safety_msgs/WatchdogStatus field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_safety_msgsWatchdogStatus(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros1Clearpath_safety_msgsWatchdogStatus>
  {
    return nativeReceive(
      aliasBytes, 653, attempts, Ros1Clearpath_safety_msgsWatchdogStatus.decode, { $0.encode() })
  }

  /// @brief Observe every original clearpath_safety_msgs/WatchdogStatusArray field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Clearpath_safety_msgsWatchdogStatusArray(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros1Clearpath_safety_msgsWatchdogStatusArray>
  {
    return nativeReceive(
      aliasBytes, 1454, attempts, Ros1Clearpath_safety_msgsWatchdogStatusArray.decode,
      { $0.encode() })
  }

  /// @brief Observe every original geometry_msgs/Point field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Geometry_msgsPoint(_ aliasBytes: [UInt8], _ attempts: UInt32)
    -> NativeObservation<Ros1Geometry_msgsPoint>
  {
    return nativeReceive(aliasBytes, 24, attempts, Ros1Geometry_msgsPoint.decode, { $0.encode() })
  }

  /// @brief Observe every original geometry_msgs/Pose field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Geometry_msgsPose(_ aliasBytes: [UInt8], _ attempts: UInt32)
    -> NativeObservation<Ros1Geometry_msgsPose>
  {
    return nativeReceive(aliasBytes, 56, attempts, Ros1Geometry_msgsPose.decode, { $0.encode() })
  }

  /// @brief Observe every original geometry_msgs/PoseStamped field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Geometry_msgsPoseStamped(_ aliasBytes: [UInt8], _ attempts: UInt32)
    -> NativeObservation<Ros1Geometry_msgsPoseStamped>
  {
    return nativeReceive(
      aliasBytes, 200, attempts, Ros1Geometry_msgsPoseStamped.decode, { $0.encode() })
  }

  /// @brief Observe every original geometry_msgs/PoseWithCovariance field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Geometry_msgsPoseWithCovariance(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros1Geometry_msgsPoseWithCovariance>
  {
    return nativeReceive(
      aliasBytes, 344, attempts, Ros1Geometry_msgsPoseWithCovariance.decode, { $0.encode() })
  }

  /// @brief Observe every original geometry_msgs/PoseWithCovarianceStamped field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Geometry_msgsPoseWithCovarianceStamped(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros1Geometry_msgsPoseWithCovarianceStamped>
  {
    return nativeReceive(
      aliasBytes, 488, attempts, Ros1Geometry_msgsPoseWithCovarianceStamped.decode, { $0.encode() })
  }

  /// @brief Observe every original geometry_msgs/Quaternion field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Geometry_msgsQuaternion(_ aliasBytes: [UInt8], _ attempts: UInt32)
    -> NativeObservation<Ros1Geometry_msgsQuaternion>
  {
    return nativeReceive(
      aliasBytes, 32, attempts, Ros1Geometry_msgsQuaternion.decode, { $0.encode() })
  }

  /// @brief Observe every original geometry_msgs/Twist field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Geometry_msgsTwist(_ aliasBytes: [UInt8], _ attempts: UInt32)
    -> NativeObservation<Ros1Geometry_msgsTwist>
  {
    return nativeReceive(aliasBytes, 48, attempts, Ros1Geometry_msgsTwist.decode, { $0.encode() })
  }

  /// @brief Observe every original geometry_msgs/TwistWithCovariance field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Geometry_msgsTwistWithCovariance(
    _ aliasBytes: [UInt8], _ attempts: UInt32
  )
    -> NativeObservation<Ros1Geometry_msgsTwistWithCovariance>
  {
    return nativeReceive(
      aliasBytes, 336, attempts, Ros1Geometry_msgsTwistWithCovariance.decode, { $0.encode() })
  }

  /// @brief Observe every original geometry_msgs/Vector3 field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Geometry_msgsVector3(_ aliasBytes: [UInt8], _ attempts: UInt32)
    -> NativeObservation<Ros1Geometry_msgsVector3>
  {
    return nativeReceive(aliasBytes, 24, attempts, Ros1Geometry_msgsVector3.decode, { $0.encode() })
  }

  /// @brief Observe every original husky_msgs/HuskyStatus field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Husky_msgsHuskyStatus(_ aliasBytes: [UInt8], _ attempts: UInt32)
    -> NativeObservation<Ros1Husky_msgsHuskyStatus>
  {
    return nativeReceive(
      aliasBytes, 252, attempts, Ros1Husky_msgsHuskyStatus.decode, { $0.encode() })
  }

  /// @brief Observe every original jackal_msgs/Drive field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Jackal_msgsDrive(_ aliasBytes: [UInt8], _ attempts: UInt32)
    -> NativeObservation<Ros1Jackal_msgsDrive>
  {
    return nativeReceive(aliasBytes, 9, attempts, Ros1Jackal_msgsDrive.decode, { $0.encode() })
  }

  /// @brief Observe every original jackal_msgs/DriveFeedback field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Jackal_msgsDriveFeedback(_ aliasBytes: [UInt8], _ attempts: UInt32)
    -> NativeObservation<Ros1Jackal_msgsDriveFeedback>
  {
    return nativeReceive(
      aliasBytes, 25, attempts, Ros1Jackal_msgsDriveFeedback.decode, { $0.encode() })
  }

  /// @brief Observe every original jackal_msgs/Feedback field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Jackal_msgsFeedback(_ aliasBytes: [UInt8], _ attempts: UInt32)
    -> NativeObservation<Ros1Jackal_msgsFeedback>
  {
    return nativeReceive(aliasBytes, 204, attempts, Ros1Jackal_msgsFeedback.decode, { $0.encode() })
  }

  /// @brief Observe every original jackal_msgs/Status field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Jackal_msgsStatus(_ aliasBytes: [UInt8], _ attempts: UInt32)
    -> NativeObservation<Ros1Jackal_msgsStatus>
  {
    return nativeReceive(aliasBytes, 463, attempts, Ros1Jackal_msgsStatus.decode, { $0.encode() })
  }

  /// @brief Observe every original nav_msgs/Odometry field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Nav_msgsOdometry(_ aliasBytes: [UInt8], _ attempts: UInt32)
    -> NativeObservation<Ros1Nav_msgsOdometry>
  {
    return nativeReceive(aliasBytes, 1084, attempts, Ros1Nav_msgsOdometry.decode, { $0.encode() })
  }

  /// @brief Observe every original nav_msgs/Path field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Nav_msgsPath(_ aliasBytes: [UInt8], _ attempts: UInt32)
    -> NativeObservation<Ros1Nav_msgsPath>
  {
    return nativeReceive(aliasBytes, 548, attempts, Ros1Nav_msgsPath.decode, { $0.encode() })
  }

  /// @brief Observe every original sensor_msgs/NavSatFix field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Sensor_msgsNavSatFix(_ aliasBytes: [UInt8], _ attempts: UInt32)
    -> NativeObservation<Ros1Sensor_msgsNavSatFix>
  {
    return nativeReceive(
      aliasBytes, 244, attempts, Ros1Sensor_msgsNavSatFix.decode, { $0.encode() })
  }

  /// @brief Observe every original sensor_msgs/NavSatStatus field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Sensor_msgsNavSatStatus(_ aliasBytes: [UInt8], _ attempts: UInt32)
    -> NativeObservation<Ros1Sensor_msgsNavSatStatus>
  {
    return nativeReceive(
      aliasBytes, 3, attempts, Ros1Sensor_msgsNavSatStatus.decode, { $0.encode() })
  }

  /// @brief Observe every original std_msgs/Duration field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Std_msgsDuration(_ aliasBytes: [UInt8], _ attempts: UInt32)
    -> NativeObservation<Ros1Std_msgsDuration>
  {
    return nativeReceive(aliasBytes, 8, attempts, Ros1Std_msgsDuration.decode, { $0.encode() })
  }

  /// @brief Observe every original std_msgs/Header field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Std_msgsHeader(_ aliasBytes: [UInt8], _ attempts: UInt32)
    -> NativeObservation<Ros1Std_msgsHeader>
  {
    return nativeReceive(aliasBytes, 144, attempts, Ros1Std_msgsHeader.decode, { $0.encode() })
  }

  /// @brief Observe every original std_msgs/String field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Std_msgsString(_ aliasBytes: [UInt8], _ attempts: UInt32)
    -> NativeObservation<Ros1Std_msgsString>
  {
    return nativeReceive(aliasBytes, 260, attempts, Ros1Std_msgsString.decode, { $0.encode() })
  }

  /// @brief Observe every original std_msgs/Time field through one retained owner.
  /// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
  /// @param attempts Total finite poll budget in 1..250.
  /// @return Complete owned original record and independent operation/close facts.
  /// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
  public static func waitRos1Std_msgsTime(_ aliasBytes: [UInt8], _ attempts: UInt32)
    -> NativeObservation<Ros1Std_msgsTime>
  {
    return nativeReceive(aliasBytes, 8, attempts, Ros1Std_msgsTime.decode, { $0.encode() })
  }

  /// @brief Call complete clearpath_camera_msgs/q62AreaZoom exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_camera_msgsQ62AreaZoomRequest(
    _ aliasBytes: [UInt8], _ requestValue: inout Ros1Clearpath_camera_msgsQ62AreaZoomRequest
  )
    -> NativeObservation<Ros1Clearpath_camera_msgsQ62AreaZoomResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_camera_msgsQ62AreaZoomResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 261, 1, encoded.bytes, Ros1Clearpath_camera_msgsQ62AreaZoomResponse.decode,
      { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_control_msgs/SetControlMode exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_control_msgsSetControlModeRequest(
    _ aliasBytes: [UInt8], _ requestValue: inout Ros1Clearpath_control_msgsSetControlModeRequest
  )
    -> NativeObservation<Ros1Clearpath_control_msgsSetControlModeResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_control_msgsSetControlModeResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 0, 1, encoded.bytes, Ros1Clearpath_control_msgsSetControlModeResponse.decode,
      { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_dock_msgs/AddDock exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_dock_msgsAddDockRequest(
    _ aliasBytes: [UInt8], _ requestValue: inout Ros1Clearpath_dock_msgsAddDockRequest
  )
    -> NativeObservation<Ros1Clearpath_dock_msgsAddDockResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_dock_msgsAddDockResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 261, 1, encoded.bytes, Ros1Clearpath_dock_msgsAddDockResponse.decode,
      { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_dock_msgs/ExportData exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_dock_msgsExportDataRequest(
    _ aliasBytes: [UInt8], _ requestValue: inout Ros1Clearpath_dock_msgsExportDataRequest
  )
    -> NativeObservation<Ros1Clearpath_dock_msgsExportDataResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_dock_msgsExportDataResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 260, 1, encoded.bytes, Ros1Clearpath_dock_msgsExportDataResponse.decode,
      { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_dock_msgs/GetDockByUuid exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_dock_msgsGetDockByUuidRequest(
    _ aliasBytes: [UInt8], _ requestValue: inout Ros1Clearpath_dock_msgsGetDockByUuidRequest
  )
    -> NativeObservation<Ros1Clearpath_dock_msgsGetDockByUuidResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_dock_msgsGetDockByUuidResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 1316, 1, encoded.bytes, Ros1Clearpath_dock_msgsGetDockByUuidResponse.decode,
      { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_dock_msgs/ImportData exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_dock_msgsImportDataRequest(
    _ aliasBytes: [UInt8], _ requestValue: inout Ros1Clearpath_dock_msgsImportDataRequest
  )
    -> NativeObservation<Ros1Clearpath_dock_msgsImportDataResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_dock_msgsImportDataResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 2412, 1, encoded.bytes, Ros1Clearpath_dock_msgsImportDataResponse.decode,
      { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_dock_msgs/RemoveDock exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_dock_msgsRemoveDockRequest(
    _ aliasBytes: [UInt8], _ requestValue: inout Ros1Clearpath_dock_msgsRemoveDockRequest
  )
    -> NativeObservation<Ros1Clearpath_dock_msgsRemoveDockResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_dock_msgsRemoveDockResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 261, 1, encoded.bytes, Ros1Clearpath_dock_msgsRemoveDockResponse.decode,
      { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_dock_msgs/SetDockLocationById exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_dock_msgsSetDockLocationByIdRequest(
    _ aliasBytes: [UInt8], _ requestValue: inout Ros1Clearpath_dock_msgsSetDockLocationByIdRequest
  )
    -> NativeObservation<Ros1Clearpath_dock_msgsSetDockLocationByIdResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_dock_msgsSetDockLocationByIdResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 261, 1, encoded.bytes, Ros1Clearpath_dock_msgsSetDockLocationByIdResponse.decode,
      { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_dock_msgs/SetDockLocationByName exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_dock_msgsSetDockLocationByNameRequest(
    _ aliasBytes: [UInt8], _ requestValue: inout Ros1Clearpath_dock_msgsSetDockLocationByNameRequest
  )
    -> NativeObservation<Ros1Clearpath_dock_msgsSetDockLocationByNameResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_dock_msgsSetDockLocationByNameResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 261, 1, encoded.bytes,
      Ros1Clearpath_dock_msgsSetDockLocationByNameResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_localization_msgs/ConvertCartesianToLatLon exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_localization_msgsConvertCartesianToLatLonRequest(
    _ aliasBytes: [UInt8],
    _ requestValue: inout Ros1Clearpath_localization_msgsConvertCartesianToLatLonRequest
  )
    -> NativeObservation<Ros1Clearpath_localization_msgsConvertCartesianToLatLonResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<
        Ros1Clearpath_localization_msgsConvertCartesianToLatLonResponse
      >()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 244, 1, encoded.bytes,
      Ros1Clearpath_localization_msgsConvertCartesianToLatLonResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_localization_msgs/ConvertCartesianToLatLonArray exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_localization_msgsConvertCartesianToLatLonArrayRequest(
    _ aliasBytes: [UInt8],
    _ requestValue: inout Ros1Clearpath_localization_msgsConvertCartesianToLatLonArrayRequest
  )
    -> NativeObservation<Ros1Clearpath_localization_msgsConvertCartesianToLatLonArrayResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<
        Ros1Clearpath_localization_msgsConvertCartesianToLatLonArrayResponse
      >()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 492, 1, encoded.bytes,
      Ros1Clearpath_localization_msgsConvertCartesianToLatLonArrayResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_localization_msgs/ConvertLatLonToCartesian exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_localization_msgsConvertLatLonToCartesianRequest(
    _ aliasBytes: [UInt8],
    _ requestValue: inout Ros1Clearpath_localization_msgsConvertLatLonToCartesianRequest
  )
    -> NativeObservation<Ros1Clearpath_localization_msgsConvertLatLonToCartesianResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<
        Ros1Clearpath_localization_msgsConvertLatLonToCartesianResponse
      >()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 200, 1, encoded.bytes,
      Ros1Clearpath_localization_msgsConvertLatLonToCartesianResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_localization_msgs/ConvertLatLonToCartesianArray exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_localization_msgsConvertLatLonToCartesianArrayRequest(
    _ aliasBytes: [UInt8],
    _ requestValue: inout Ros1Clearpath_localization_msgsConvertLatLonToCartesianArrayRequest
  )
    -> NativeObservation<Ros1Clearpath_localization_msgsConvertLatLonToCartesianArrayResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<
        Ros1Clearpath_localization_msgsConvertLatLonToCartesianArrayResponse
      >()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 404, 1, encoded.bytes,
      Ros1Clearpath_localization_msgsConvertLatLonToCartesianArrayResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_localization_msgs/ResetLocalization exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_localization_msgsResetLocalizationRequest(
    _ aliasBytes: [UInt8],
    _ requestValue: inout Ros1Clearpath_localization_msgsResetLocalizationRequest
  )
    -> NativeObservation<Ros1Clearpath_localization_msgsResetLocalizationResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_localization_msgsResetLocalizationResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 1, 1, encoded.bytes,
      Ros1Clearpath_localization_msgsResetLocalizationResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_localization_msgs/SetDatum exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_localization_msgsSetDatumRequest(
    _ aliasBytes: [UInt8], _ requestValue: inout Ros1Clearpath_localization_msgsSetDatumRequest
  )
    -> NativeObservation<Ros1Clearpath_localization_msgsSetDatumResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_localization_msgsSetDatumResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 1, 1, encoded.bytes, Ros1Clearpath_localization_msgsSetDatumResponse.decode,
      { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_logger_msgs/DeleteLog exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_logger_msgsDeleteLogRequest(
    _ aliasBytes: [UInt8], _ requestValue: inout Ros1Clearpath_logger_msgsDeleteLogRequest
  )
    -> NativeObservation<Ros1Clearpath_logger_msgsDeleteLogResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_logger_msgsDeleteLogResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 1, 1, encoded.bytes, Ros1Clearpath_logger_msgsDeleteLogResponse.decode,
      { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_logger_msgs/DownloadLog exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_logger_msgsDownloadLogRequest(
    _ aliasBytes: [UInt8], _ requestValue: inout Ros1Clearpath_logger_msgsDownloadLogRequest
  )
    -> NativeObservation<Ros1Clearpath_logger_msgsDownloadLogResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_logger_msgsDownloadLogResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 261, 1, encoded.bytes, Ros1Clearpath_logger_msgsDownloadLogResponse.decode,
      { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_logger_msgs/GetAllLogs exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_logger_msgsGetAllLogsRequest(
    _ aliasBytes: [UInt8], _ requestValue: inout Ros1Clearpath_logger_msgsGetAllLogsRequest
  )
    -> NativeObservation<Ros1Clearpath_logger_msgsGetAllLogsResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_logger_msgsGetAllLogsResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 14132, 1, encoded.bytes, Ros1Clearpath_logger_msgsGetAllLogsResponse.decode,
      { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_logger_msgs/RecordCustomEvent exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_logger_msgsRecordCustomEventRequest(
    _ aliasBytes: [UInt8], _ requestValue: inout Ros1Clearpath_logger_msgsRecordCustomEventRequest
  )
    -> NativeObservation<Ros1Clearpath_logger_msgsRecordCustomEventResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_logger_msgsRecordCustomEventResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 3190, 1, encoded.bytes, Ros1Clearpath_logger_msgsRecordCustomEventResponse.decode,
      { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_logger_msgs/RecordErrorEvent exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_logger_msgsRecordErrorEventRequest(
    _ aliasBytes: [UInt8], _ requestValue: inout Ros1Clearpath_logger_msgsRecordErrorEventRequest
  )
    -> NativeObservation<Ros1Clearpath_logger_msgsRecordErrorEventResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_logger_msgsRecordErrorEventResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 3190, 1, encoded.bytes, Ros1Clearpath_logger_msgsRecordErrorEventResponse.decode,
      { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_logger_msgs/RecordEvent exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_logger_msgsRecordEventRequest(
    _ aliasBytes: [UInt8], _ requestValue: inout Ros1Clearpath_logger_msgsRecordEventRequest
  )
    -> NativeObservation<Ros1Clearpath_logger_msgsRecordEventResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_logger_msgsRecordEventResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 3190, 1, encoded.bytes, Ros1Clearpath_logger_msgsRecordEventResponse.decode,
      { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_logger_msgs/RecordLocationEvent exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_logger_msgsRecordLocationEventRequest(
    _ aliasBytes: [UInt8], _ requestValue: inout Ros1Clearpath_logger_msgsRecordLocationEventRequest
  )
    -> NativeObservation<Ros1Clearpath_logger_msgsRecordLocationEventResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_logger_msgsRecordLocationEventResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 3190, 1, encoded.bytes,
      Ros1Clearpath_logger_msgsRecordLocationEventResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_logger_msgs/RecordMediaEvent exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_logger_msgsRecordMediaEventRequest(
    _ aliasBytes: [UInt8], _ requestValue: inout Ros1Clearpath_logger_msgsRecordMediaEventRequest
  )
    -> NativeObservation<Ros1Clearpath_logger_msgsRecordMediaEventResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_logger_msgsRecordMediaEventResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 3190, 1, encoded.bytes, Ros1Clearpath_logger_msgsRecordMediaEventResponse.decode,
      { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_logger_msgs/RecordPowerEvent exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_logger_msgsRecordPowerEventRequest(
    _ aliasBytes: [UInt8], _ requestValue: inout Ros1Clearpath_logger_msgsRecordPowerEventRequest
  )
    -> NativeObservation<Ros1Clearpath_logger_msgsRecordPowerEventResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_logger_msgsRecordPowerEventResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 3190, 1, encoded.bytes, Ros1Clearpath_logger_msgsRecordPowerEventResponse.decode,
      { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_logger_msgs/StartRecording exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_logger_msgsStartRecordingRequest(
    _ aliasBytes: [UInt8], _ requestValue: inout Ros1Clearpath_logger_msgsStartRecordingRequest
  )
    -> NativeObservation<Ros1Clearpath_logger_msgsStartRecordingResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_logger_msgsStartRecordingResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 7064, 1, encoded.bytes, Ros1Clearpath_logger_msgsStartRecordingResponse.decode,
      { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_logger_msgs/StopRecording exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_logger_msgsStopRecordingRequest(
    _ aliasBytes: [UInt8], _ requestValue: inout Ros1Clearpath_logger_msgsStopRecordingRequest
  )
    -> NativeObservation<Ros1Clearpath_logger_msgsStopRecordingResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_logger_msgsStopRecordingResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 7064, 1, encoded.bytes, Ros1Clearpath_logger_msgsStopRecordingResponse.decode,
      { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_mission_manager_msgs/AddNetworkEdge exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_mission_manager_msgsAddNetworkEdgeRequest(
    _ aliasBytes: [UInt8],
    _ requestValue: inout Ros1Clearpath_mission_manager_msgsAddNetworkEdgeRequest
  )
    -> NativeObservation<Ros1Clearpath_mission_manager_msgsAddNetworkEdgeResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_mission_manager_msgsAddNetworkEdgeResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 1652, 1, encoded.bytes,
      Ros1Clearpath_mission_manager_msgsAddNetworkEdgeResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_mission_manager_msgs/AddNetworkPath exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_mission_manager_msgsAddNetworkPathRequest(
    _ aliasBytes: [UInt8],
    _ requestValue: inout Ros1Clearpath_mission_manager_msgsAddNetworkPathRequest
  )
    -> NativeObservation<Ros1Clearpath_mission_manager_msgsAddNetworkPathResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_mission_manager_msgsAddNetworkPathResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 261, 1, encoded.bytes,
      Ros1Clearpath_mission_manager_msgsAddNetworkPathResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_mission_manager_msgs/AddNetworkPoint exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_mission_manager_msgsAddNetworkPointRequest(
    _ aliasBytes: [UInt8],
    _ requestValue: inout Ros1Clearpath_mission_manager_msgsAddNetworkPointRequest
  )
    -> NativeObservation<Ros1Clearpath_mission_manager_msgsAddNetworkPointResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_mission_manager_msgsAddNetworkPointResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 276, 1, encoded.bytes,
      Ros1Clearpath_mission_manager_msgsAddNetworkPointResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_mission_manager_msgs/AddRemoveById exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_mission_manager_msgsAddRemoveByIdRequest(
    _ aliasBytes: [UInt8],
    _ requestValue: inout Ros1Clearpath_mission_manager_msgsAddRemoveByIdRequest
  )
    -> NativeObservation<Ros1Clearpath_mission_manager_msgsAddRemoveByIdResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_mission_manager_msgsAddRemoveByIdResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 1, 1, encoded.bytes,
      Ros1Clearpath_mission_manager_msgsAddRemoveByIdResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_mission_manager_msgs/AddRemoveTag exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_mission_manager_msgsAddRemoveTagRequest(
    _ aliasBytes: [UInt8],
    _ requestValue: inout Ros1Clearpath_mission_manager_msgsAddRemoveTagRequest
  )
    -> NativeObservation<Ros1Clearpath_mission_manager_msgsAddRemoveTagResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_mission_manager_msgsAddRemoveTagResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 524, 1, encoded.bytes,
      Ros1Clearpath_mission_manager_msgsAddRemoveTagResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_mission_manager_msgs/CloneMission exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_mission_manager_msgsCloneMissionRequest(
    _ aliasBytes: [UInt8],
    _ requestValue: inout Ros1Clearpath_mission_manager_msgsCloneMissionRequest
  )
    -> NativeObservation<Ros1Clearpath_mission_manager_msgsCloneMissionResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_mission_manager_msgsCloneMissionResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 13336, 1, encoded.bytes,
      Ros1Clearpath_mission_manager_msgsCloneMissionResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_mission_manager_msgs/CloneNetworkMap exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_mission_manager_msgsCloneNetworkMapRequest(
    _ aliasBytes: [UInt8],
    _ requestValue: inout Ros1Clearpath_mission_manager_msgsCloneNetworkMapRequest
  )
    -> NativeObservation<Ros1Clearpath_mission_manager_msgsCloneNetworkMapResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_mission_manager_msgsCloneNetworkMapResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 2608, 1, encoded.bytes,
      Ros1Clearpath_mission_manager_msgsCloneNetworkMapResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_mission_manager_msgs/CloneNetworkMission exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_mission_manager_msgsCloneNetworkMissionRequest(
    _ aliasBytes: [UInt8],
    _ requestValue: inout Ros1Clearpath_mission_manager_msgsCloneNetworkMissionRequest
  )
    -> NativeObservation<Ros1Clearpath_mission_manager_msgsCloneNetworkMissionResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<
        Ros1Clearpath_mission_manager_msgsCloneNetworkMissionResponse
      >()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 13606, 1, encoded.bytes,
      Ros1Clearpath_mission_manager_msgsCloneNetworkMissionResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_mission_manager_msgs/ClonePointOfInterest exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_mission_manager_msgsClonePointOfInterestRequest(
    _ aliasBytes: [UInt8],
    _ requestValue: inout Ros1Clearpath_mission_manager_msgsClonePointOfInterestRequest
  )
    -> NativeObservation<Ros1Clearpath_mission_manager_msgsClonePointOfInterestResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<
        Ros1Clearpath_mission_manager_msgsClonePointOfInterestResponse
      >()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 1209, 1, encoded.bytes,
      Ros1Clearpath_mission_manager_msgsClonePointOfInterestResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_mission_manager_msgs/CreateMission exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_mission_manager_msgsCreateMissionRequest(
    _ aliasBytes: [UInt8],
    _ requestValue: inout Ros1Clearpath_mission_manager_msgsCreateMissionRequest
  )
    -> NativeObservation<Ros1Clearpath_mission_manager_msgsCreateMissionResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_mission_manager_msgsCreateMissionResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 13336, 1, encoded.bytes,
      Ros1Clearpath_mission_manager_msgsCreateMissionResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_mission_manager_msgs/CreateNetworkMap exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_mission_manager_msgsCreateNetworkMapRequest(
    _ aliasBytes: [UInt8],
    _ requestValue: inout Ros1Clearpath_mission_manager_msgsCreateNetworkMapRequest
  )
    -> NativeObservation<Ros1Clearpath_mission_manager_msgsCreateNetworkMapResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_mission_manager_msgsCreateNetworkMapResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 2608, 1, encoded.bytes,
      Ros1Clearpath_mission_manager_msgsCreateNetworkMapResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_mission_manager_msgs/CreateNetworkMission exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_mission_manager_msgsCreateNetworkMissionRequest(
    _ aliasBytes: [UInt8],
    _ requestValue: inout Ros1Clearpath_mission_manager_msgsCreateNetworkMissionRequest
  )
    -> NativeObservation<Ros1Clearpath_mission_manager_msgsCreateNetworkMissionResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<
        Ros1Clearpath_mission_manager_msgsCreateNetworkMissionResponse
      >()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 13606, 1, encoded.bytes,
      Ros1Clearpath_mission_manager_msgsCreateNetworkMissionResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_mission_manager_msgs/CreatePointOfInterest exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_mission_manager_msgsCreatePointOfInterestRequest(
    _ aliasBytes: [UInt8],
    _ requestValue: inout Ros1Clearpath_mission_manager_msgsCreatePointOfInterestRequest
  )
    -> NativeObservation<Ros1Clearpath_mission_manager_msgsCreatePointOfInterestResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<
        Ros1Clearpath_mission_manager_msgsCreatePointOfInterestResponse
      >()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 1209, 1, encoded.bytes,
      Ros1Clearpath_mission_manager_msgsCreatePointOfInterestResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_mission_manager_msgs/CreateTask exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_mission_manager_msgsCreateTaskRequest(
    _ aliasBytes: [UInt8], _ requestValue: inout Ros1Clearpath_mission_manager_msgsCreateTaskRequest
  )
    -> NativeObservation<Ros1Clearpath_mission_manager_msgsCreateTaskResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_mission_manager_msgsCreateTaskResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 1457, 1, encoded.bytes,
      Ros1Clearpath_mission_manager_msgsCreateTaskResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_mission_manager_msgs/CreateWaypoint exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_mission_manager_msgsCreateWaypointRequest(
    _ aliasBytes: [UInt8],
    _ requestValue: inout Ros1Clearpath_mission_manager_msgsCreateWaypointRequest
  )
    -> NativeObservation<Ros1Clearpath_mission_manager_msgsCreateWaypointResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_mission_manager_msgsCreateWaypointResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 3350, 1, encoded.bytes,
      Ros1Clearpath_mission_manager_msgsCreateWaypointResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_mission_manager_msgs/CreateWaypointFromPoi exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_mission_manager_msgsCreateWaypointFromPoiRequest(
    _ aliasBytes: [UInt8],
    _ requestValue: inout Ros1Clearpath_mission_manager_msgsCreateWaypointFromPoiRequest
  )
    -> NativeObservation<Ros1Clearpath_mission_manager_msgsCreateWaypointFromPoiResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<
        Ros1Clearpath_mission_manager_msgsCreateWaypointFromPoiResponse
      >()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 3350, 1, encoded.bytes,
      Ros1Clearpath_mission_manager_msgsCreateWaypointFromPoiResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_mission_manager_msgs/DeleteById exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_mission_manager_msgsDeleteByIdRequest(
    _ aliasBytes: [UInt8], _ requestValue: inout Ros1Clearpath_mission_manager_msgsDeleteByIdRequest
  )
    -> NativeObservation<Ros1Clearpath_mission_manager_msgsDeleteByIdResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_mission_manager_msgsDeleteByIdResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 1, 1, encoded.bytes, Ros1Clearpath_mission_manager_msgsDeleteByIdResponse.decode,
      { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_mission_manager_msgs/DeleteEverything exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_mission_manager_msgsDeleteEverythingRequest(
    _ aliasBytes: [UInt8],
    _ requestValue: inout Ros1Clearpath_mission_manager_msgsDeleteEverythingRequest
  )
    -> NativeObservation<Ros1Clearpath_mission_manager_msgsDeleteEverythingResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_mission_manager_msgsDeleteEverythingResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 1, 1, encoded.bytes,
      Ros1Clearpath_mission_manager_msgsDeleteEverythingResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_mission_manager_msgs/DeleteMultiple exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_mission_manager_msgsDeleteMultipleRequest(
    _ aliasBytes: [UInt8],
    _ requestValue: inout Ros1Clearpath_mission_manager_msgsDeleteMultipleRequest
  )
    -> NativeObservation<Ros1Clearpath_mission_manager_msgsDeleteMultipleResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_mission_manager_msgsDeleteMultipleResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 524, 1, encoded.bytes,
      Ros1Clearpath_mission_manager_msgsDeleteMultipleResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_mission_manager_msgs/ExportData exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_mission_manager_msgsExportDataRequest(
    _ aliasBytes: [UInt8], _ requestValue: inout Ros1Clearpath_mission_manager_msgsExportDataRequest
  )
    -> NativeObservation<Ros1Clearpath_mission_manager_msgsExportDataResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_mission_manager_msgsExportDataResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 260, 1, encoded.bytes,
      Ros1Clearpath_mission_manager_msgsExportDataResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_mission_manager_msgs/GetAllMissions exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_mission_manager_msgsGetAllMissionsRequest(
    _ aliasBytes: [UInt8],
    _ requestValue: inout Ros1Clearpath_mission_manager_msgsGetAllMissionsRequest
  )
    -> NativeObservation<Ros1Clearpath_mission_manager_msgsGetAllMissionsResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_mission_manager_msgsGetAllMissionsResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 26676, 1, encoded.bytes,
      Ros1Clearpath_mission_manager_msgsGetAllMissionsResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_mission_manager_msgs/GetAllNetworkMaps exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_mission_manager_msgsGetAllNetworkMapsRequest(
    _ aliasBytes: [UInt8],
    _ requestValue: inout Ros1Clearpath_mission_manager_msgsGetAllNetworkMapsRequest
  )
    -> NativeObservation<Ros1Clearpath_mission_manager_msgsGetAllNetworkMapsResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_mission_manager_msgsGetAllNetworkMapsResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 5220, 1, encoded.bytes,
      Ros1Clearpath_mission_manager_msgsGetAllNetworkMapsResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_mission_manager_msgs/GetAllNetworkMissions exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_mission_manager_msgsGetAllNetworkMissionsRequest(
    _ aliasBytes: [UInt8],
    _ requestValue: inout Ros1Clearpath_mission_manager_msgsGetAllNetworkMissionsRequest
  )
    -> NativeObservation<Ros1Clearpath_mission_manager_msgsGetAllNetworkMissionsResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<
        Ros1Clearpath_mission_manager_msgsGetAllNetworkMissionsResponse
      >()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 27216, 1, encoded.bytes,
      Ros1Clearpath_mission_manager_msgsGetAllNetworkMissionsResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_mission_manager_msgs/GetAllPointsOfInterest exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_mission_manager_msgsGetAllPointsOfInterestRequest(
    _ aliasBytes: [UInt8],
    _ requestValue: inout Ros1Clearpath_mission_manager_msgsGetAllPointsOfInterestRequest
  )
    -> NativeObservation<Ros1Clearpath_mission_manager_msgsGetAllPointsOfInterestResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<
        Ros1Clearpath_mission_manager_msgsGetAllPointsOfInterestResponse
      >()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 2422, 1, encoded.bytes,
      Ros1Clearpath_mission_manager_msgsGetAllPointsOfInterestResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_mission_manager_msgs/GetAllTasks exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_mission_manager_msgsGetAllTasksRequest(
    _ aliasBytes: [UInt8],
    _ requestValue: inout Ros1Clearpath_mission_manager_msgsGetAllTasksRequest
  )
    -> NativeObservation<Ros1Clearpath_mission_manager_msgsGetAllTasksResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_mission_manager_msgsGetAllTasksResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 2918, 1, encoded.bytes,
      Ros1Clearpath_mission_manager_msgsGetAllTasksResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_mission_manager_msgs/GetAllWaypoints exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_mission_manager_msgsGetAllWaypointsRequest(
    _ aliasBytes: [UInt8],
    _ requestValue: inout Ros1Clearpath_mission_manager_msgsGetAllWaypointsRequest
  )
    -> NativeObservation<Ros1Clearpath_mission_manager_msgsGetAllWaypointsResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_mission_manager_msgsGetAllWaypointsResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 6704, 1, encoded.bytes,
      Ros1Clearpath_mission_manager_msgsGetAllWaypointsResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_mission_manager_msgs/GetEverything exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_mission_manager_msgsGetEverythingRequest(
    _ aliasBytes: [UInt8],
    _ requestValue: inout Ros1Clearpath_mission_manager_msgsGetEverythingRequest
  )
    -> NativeObservation<Ros1Clearpath_mission_manager_msgsGetEverythingResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_mission_manager_msgsGetEverythingResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 32768, 1, encoded.bytes,
      Ros1Clearpath_mission_manager_msgsGetEverythingResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_mission_manager_msgs/GetMission exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_mission_manager_msgsGetMissionRequest(
    _ aliasBytes: [UInt8], _ requestValue: inout Ros1Clearpath_mission_manager_msgsGetMissionRequest
  )
    -> NativeObservation<Ros1Clearpath_mission_manager_msgsGetMissionResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_mission_manager_msgsGetMissionResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 13336, 1, encoded.bytes,
      Ros1Clearpath_mission_manager_msgsGetMissionResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_mission_manager_msgs/GetNetworkMap exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_mission_manager_msgsGetNetworkMapRequest(
    _ aliasBytes: [UInt8],
    _ requestValue: inout Ros1Clearpath_mission_manager_msgsGetNetworkMapRequest
  )
    -> NativeObservation<Ros1Clearpath_mission_manager_msgsGetNetworkMapResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_mission_manager_msgsGetNetworkMapResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 2608, 1, encoded.bytes,
      Ros1Clearpath_mission_manager_msgsGetNetworkMapResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_mission_manager_msgs/GetNetworkMission exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_mission_manager_msgsGetNetworkMissionRequest(
    _ aliasBytes: [UInt8],
    _ requestValue: inout Ros1Clearpath_mission_manager_msgsGetNetworkMissionRequest
  )
    -> NativeObservation<Ros1Clearpath_mission_manager_msgsGetNetworkMissionResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_mission_manager_msgsGetNetworkMissionResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 13606, 1, encoded.bytes,
      Ros1Clearpath_mission_manager_msgsGetNetworkMissionResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_mission_manager_msgs/GetPointOfInterest exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_mission_manager_msgsGetPointOfInterestRequest(
    _ aliasBytes: [UInt8],
    _ requestValue: inout Ros1Clearpath_mission_manager_msgsGetPointOfInterestRequest
  )
    -> NativeObservation<Ros1Clearpath_mission_manager_msgsGetPointOfInterestResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<
        Ros1Clearpath_mission_manager_msgsGetPointOfInterestResponse
      >()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 1209, 1, encoded.bytes,
      Ros1Clearpath_mission_manager_msgsGetPointOfInterestResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_mission_manager_msgs/GetTask exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_mission_manager_msgsGetTaskRequest(
    _ aliasBytes: [UInt8], _ requestValue: inout Ros1Clearpath_mission_manager_msgsGetTaskRequest
  )
    -> NativeObservation<Ros1Clearpath_mission_manager_msgsGetTaskResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_mission_manager_msgsGetTaskResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 1457, 1, encoded.bytes, Ros1Clearpath_mission_manager_msgsGetTaskResponse.decode,
      { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_mission_manager_msgs/GetWaypoint exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_mission_manager_msgsGetWaypointRequest(
    _ aliasBytes: [UInt8],
    _ requestValue: inout Ros1Clearpath_mission_manager_msgsGetWaypointRequest
  )
    -> NativeObservation<Ros1Clearpath_mission_manager_msgsGetWaypointResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_mission_manager_msgsGetWaypointResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 3350, 1, encoded.bytes,
      Ros1Clearpath_mission_manager_msgsGetWaypointResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_mission_manager_msgs/ImportData exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_mission_manager_msgsImportDataRequest(
    _ aliasBytes: [UInt8], _ requestValue: inout Ros1Clearpath_mission_manager_msgsImportDataRequest
  )
    -> NativeObservation<Ros1Clearpath_mission_manager_msgsImportDataResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_mission_manager_msgsImportDataResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 32768, 1, encoded.bytes,
      Ros1Clearpath_mission_manager_msgsImportDataResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_mission_manager_msgs/ImportMission exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_mission_manager_msgsImportMissionRequest(
    _ aliasBytes: [UInt8],
    _ requestValue: inout Ros1Clearpath_mission_manager_msgsImportMissionRequest
  )
    -> NativeObservation<Ros1Clearpath_mission_manager_msgsImportMissionResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_mission_manager_msgsImportMissionResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 13336, 1, encoded.bytes,
      Ros1Clearpath_mission_manager_msgsImportMissionResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_mission_manager_msgs/ImportNetworkMap exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_mission_manager_msgsImportNetworkMapRequest(
    _ aliasBytes: [UInt8],
    _ requestValue: inout Ros1Clearpath_mission_manager_msgsImportNetworkMapRequest
  )
    -> NativeObservation<Ros1Clearpath_mission_manager_msgsImportNetworkMapResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_mission_manager_msgsImportNetworkMapResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 2608, 1, encoded.bytes,
      Ros1Clearpath_mission_manager_msgsImportNetworkMapResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_mission_manager_msgs/ImportNetworkMission exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_mission_manager_msgsImportNetworkMissionRequest(
    _ aliasBytes: [UInt8],
    _ requestValue: inout Ros1Clearpath_mission_manager_msgsImportNetworkMissionRequest
  )
    -> NativeObservation<Ros1Clearpath_mission_manager_msgsImportNetworkMissionResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<
        Ros1Clearpath_mission_manager_msgsImportNetworkMissionResponse
      >()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 13606, 1, encoded.bytes,
      Ros1Clearpath_mission_manager_msgsImportNetworkMissionResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_mission_manager_msgs/SplitNetworkEdge exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_mission_manager_msgsSplitNetworkEdgeRequest(
    _ aliasBytes: [UInt8],
    _ requestValue: inout Ros1Clearpath_mission_manager_msgsSplitNetworkEdgeRequest
  )
    -> NativeObservation<Ros1Clearpath_mission_manager_msgsSplitNetworkEdgeResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_mission_manager_msgsSplitNetworkEdgeResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 2608, 1, encoded.bytes,
      Ros1Clearpath_mission_manager_msgsSplitNetworkEdgeResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_mission_manager_msgs/UpdateMission exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_mission_manager_msgsUpdateMissionRequest(
    _ aliasBytes: [UInt8],
    _ requestValue: inout Ros1Clearpath_mission_manager_msgsUpdateMissionRequest
  )
    -> NativeObservation<Ros1Clearpath_mission_manager_msgsUpdateMissionResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_mission_manager_msgsUpdateMissionResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 13336, 1, encoded.bytes,
      Ros1Clearpath_mission_manager_msgsUpdateMissionResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_mission_manager_msgs/UpdateNetworkEdge exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_mission_manager_msgsUpdateNetworkEdgeRequest(
    _ aliasBytes: [UInt8],
    _ requestValue: inout Ros1Clearpath_mission_manager_msgsUpdateNetworkEdgeRequest
  )
    -> NativeObservation<Ros1Clearpath_mission_manager_msgsUpdateNetworkEdgeResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_mission_manager_msgsUpdateNetworkEdgeResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 824, 1, encoded.bytes,
      Ros1Clearpath_mission_manager_msgsUpdateNetworkEdgeResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_mission_manager_msgs/UpdateNetworkEdges exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_mission_manager_msgsUpdateNetworkEdgesRequest(
    _ aliasBytes: [UInt8],
    _ requestValue: inout Ros1Clearpath_mission_manager_msgsUpdateNetworkEdgesRequest
  )
    -> NativeObservation<Ros1Clearpath_mission_manager_msgsUpdateNetworkEdgesResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<
        Ros1Clearpath_mission_manager_msgsUpdateNetworkEdgesResponse
      >()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 1652, 1, encoded.bytes,
      Ros1Clearpath_mission_manager_msgsUpdateNetworkEdgesResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_mission_manager_msgs/UpdateNetworkMap exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_mission_manager_msgsUpdateNetworkMapRequest(
    _ aliasBytes: [UInt8],
    _ requestValue: inout Ros1Clearpath_mission_manager_msgsUpdateNetworkMapRequest
  )
    -> NativeObservation<Ros1Clearpath_mission_manager_msgsUpdateNetworkMapResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_mission_manager_msgsUpdateNetworkMapResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 2608, 1, encoded.bytes,
      Ros1Clearpath_mission_manager_msgsUpdateNetworkMapResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_mission_manager_msgs/UpdateNetworkMission exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_mission_manager_msgsUpdateNetworkMissionRequest(
    _ aliasBytes: [UInt8],
    _ requestValue: inout Ros1Clearpath_mission_manager_msgsUpdateNetworkMissionRequest
  )
    -> NativeObservation<Ros1Clearpath_mission_manager_msgsUpdateNetworkMissionResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<
        Ros1Clearpath_mission_manager_msgsUpdateNetworkMissionResponse
      >()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 13606, 1, encoded.bytes,
      Ros1Clearpath_mission_manager_msgsUpdateNetworkMissionResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_mission_manager_msgs/UpdateNetworkPoint exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_mission_manager_msgsUpdateNetworkPointRequest(
    _ aliasBytes: [UInt8],
    _ requestValue: inout Ros1Clearpath_mission_manager_msgsUpdateNetworkPointRequest
  )
    -> NativeObservation<Ros1Clearpath_mission_manager_msgsUpdateNetworkPointResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<
        Ros1Clearpath_mission_manager_msgsUpdateNetworkPointResponse
      >()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 276, 1, encoded.bytes,
      Ros1Clearpath_mission_manager_msgsUpdateNetworkPointResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_mission_manager_msgs/UpdateNetworkPoints exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_mission_manager_msgsUpdateNetworkPointsRequest(
    _ aliasBytes: [UInt8],
    _ requestValue: inout Ros1Clearpath_mission_manager_msgsUpdateNetworkPointsRequest
  )
    -> NativeObservation<Ros1Clearpath_mission_manager_msgsUpdateNetworkPointsResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<
        Ros1Clearpath_mission_manager_msgsUpdateNetworkPointsResponse
      >()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 556, 1, encoded.bytes,
      Ros1Clearpath_mission_manager_msgsUpdateNetworkPointsResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_mission_manager_msgs/UpdatePointOfInterest exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_mission_manager_msgsUpdatePointOfInterestRequest(
    _ aliasBytes: [UInt8],
    _ requestValue: inout Ros1Clearpath_mission_manager_msgsUpdatePointOfInterestRequest
  )
    -> NativeObservation<Ros1Clearpath_mission_manager_msgsUpdatePointOfInterestResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<
        Ros1Clearpath_mission_manager_msgsUpdatePointOfInterestResponse
      >()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 1209, 1, encoded.bytes,
      Ros1Clearpath_mission_manager_msgsUpdatePointOfInterestResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_mission_manager_msgs/UpdateTask exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_mission_manager_msgsUpdateTaskRequest(
    _ aliasBytes: [UInt8], _ requestValue: inout Ros1Clearpath_mission_manager_msgsUpdateTaskRequest
  )
    -> NativeObservation<Ros1Clearpath_mission_manager_msgsUpdateTaskResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_mission_manager_msgsUpdateTaskResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 1457, 1, encoded.bytes,
      Ros1Clearpath_mission_manager_msgsUpdateTaskResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_mission_manager_msgs/UpdateWaypoint exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_mission_manager_msgsUpdateWaypointRequest(
    _ aliasBytes: [UInt8],
    _ requestValue: inout Ros1Clearpath_mission_manager_msgsUpdateWaypointRequest
  )
    -> NativeObservation<Ros1Clearpath_mission_manager_msgsUpdateWaypointResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_mission_manager_msgsUpdateWaypointResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 3350, 1, encoded.bytes,
      Ros1Clearpath_mission_manager_msgsUpdateWaypointResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_mission_manager_msgs/ValidateNetworkMap exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_mission_manager_msgsValidateNetworkMapRequest(
    _ aliasBytes: [UInt8],
    _ requestValue: inout Ros1Clearpath_mission_manager_msgsValidateNetworkMapRequest
  )
    -> NativeObservation<Ros1Clearpath_mission_manager_msgsValidateNetworkMapResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<
        Ros1Clearpath_mission_manager_msgsValidateNetworkMapResponse
      >()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 790, 1, encoded.bytes,
      Ros1Clearpath_mission_manager_msgsValidateNetworkMapResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_mission_scheduler_msgs/CloneSchedule exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_mission_scheduler_msgsCloneScheduleRequest(
    _ aliasBytes: [UInt8],
    _ requestValue: inout Ros1Clearpath_mission_scheduler_msgsCloneScheduleRequest
  )
    -> NativeObservation<Ros1Clearpath_mission_scheduler_msgsCloneScheduleResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_mission_scheduler_msgsCloneScheduleResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 944, 1, encoded.bytes,
      Ros1Clearpath_mission_scheduler_msgsCloneScheduleResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_mission_scheduler_msgs/CreateSchedule exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_mission_scheduler_msgsCreateScheduleRequest(
    _ aliasBytes: [UInt8],
    _ requestValue: inout Ros1Clearpath_mission_scheduler_msgsCreateScheduleRequest
  )
    -> NativeObservation<Ros1Clearpath_mission_scheduler_msgsCreateScheduleResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_mission_scheduler_msgsCreateScheduleResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 944, 1, encoded.bytes,
      Ros1Clearpath_mission_scheduler_msgsCreateScheduleResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_mission_scheduler_msgs/EnableSchedule exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_mission_scheduler_msgsEnableScheduleRequest(
    _ aliasBytes: [UInt8],
    _ requestValue: inout Ros1Clearpath_mission_scheduler_msgsEnableScheduleRequest
  )
    -> NativeObservation<Ros1Clearpath_mission_scheduler_msgsEnableScheduleResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_mission_scheduler_msgsEnableScheduleResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 1, 1, encoded.bytes,
      Ros1Clearpath_mission_scheduler_msgsEnableScheduleResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_mission_scheduler_msgs/ExportData exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_mission_scheduler_msgsExportDataRequest(
    _ aliasBytes: [UInt8],
    _ requestValue: inout Ros1Clearpath_mission_scheduler_msgsExportDataRequest
  )
    -> NativeObservation<Ros1Clearpath_mission_scheduler_msgsExportDataResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_mission_scheduler_msgsExportDataResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 260, 1, encoded.bytes,
      Ros1Clearpath_mission_scheduler_msgsExportDataResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_mission_scheduler_msgs/GetAllSchedules exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_mission_scheduler_msgsGetAllSchedulesRequest(
    _ aliasBytes: [UInt8],
    _ requestValue: inout Ros1Clearpath_mission_scheduler_msgsGetAllSchedulesRequest
  )
    -> NativeObservation<Ros1Clearpath_mission_scheduler_msgsGetAllSchedulesResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_mission_scheduler_msgsGetAllSchedulesResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 1892, 1, encoded.bytes,
      Ros1Clearpath_mission_scheduler_msgsGetAllSchedulesResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_mission_scheduler_msgs/GetNextSchedule exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_mission_scheduler_msgsGetNextScheduleRequest(
    _ aliasBytes: [UInt8],
    _ requestValue: inout Ros1Clearpath_mission_scheduler_msgsGetNextScheduleRequest
  )
    -> NativeObservation<Ros1Clearpath_mission_scheduler_msgsGetNextScheduleResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_mission_scheduler_msgsGetNextScheduleResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 268, 1, encoded.bytes,
      Ros1Clearpath_mission_scheduler_msgsGetNextScheduleResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_mission_scheduler_msgs/GetSchedule exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_mission_scheduler_msgsGetScheduleRequest(
    _ aliasBytes: [UInt8],
    _ requestValue: inout Ros1Clearpath_mission_scheduler_msgsGetScheduleRequest
  )
    -> NativeObservation<Ros1Clearpath_mission_scheduler_msgsGetScheduleResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_mission_scheduler_msgsGetScheduleResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 944, 1, encoded.bytes,
      Ros1Clearpath_mission_scheduler_msgsGetScheduleResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_mission_scheduler_msgs/ImportData exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_mission_scheduler_msgsImportDataRequest(
    _ aliasBytes: [UInt8],
    _ requestValue: inout Ros1Clearpath_mission_scheduler_msgsImportDataRequest
  )
    -> NativeObservation<Ros1Clearpath_mission_scheduler_msgsImportDataResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_mission_scheduler_msgsImportDataResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 1892, 1, encoded.bytes,
      Ros1Clearpath_mission_scheduler_msgsImportDataResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_mission_scheduler_msgs/UpdateSchedule exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_mission_scheduler_msgsUpdateScheduleRequest(
    _ aliasBytes: [UInt8],
    _ requestValue: inout Ros1Clearpath_mission_scheduler_msgsUpdateScheduleRequest
  )
    -> NativeObservation<Ros1Clearpath_mission_scheduler_msgsUpdateScheduleResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_mission_scheduler_msgsUpdateScheduleResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 944, 1, encoded.bytes,
      Ros1Clearpath_mission_scheduler_msgsUpdateScheduleResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_navigation_msgs/AutonomyTaskSrv exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_navigation_msgsAutonomyTaskSrvRequest(
    _ aliasBytes: [UInt8], _ requestValue: inout Ros1Clearpath_navigation_msgsAutonomyTaskSrvRequest
  )
    -> NativeObservation<Ros1Clearpath_navigation_msgsAutonomyTaskSrvResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_navigation_msgsAutonomyTaskSrvResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 2, 1, encoded.bytes, Ros1Clearpath_navigation_msgsAutonomyTaskSrvResponse.decode,
      { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_navigation_msgs/SetDelayCompensation exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_navigation_msgsSetDelayCompensationRequest(
    _ aliasBytes: [UInt8],
    _ requestValue: inout Ros1Clearpath_navigation_msgsSetDelayCompensationRequest
  )
    -> NativeObservation<Ros1Clearpath_navigation_msgsSetDelayCompensationResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_navigation_msgsSetDelayCompensationResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 261, 1, encoded.bytes,
      Ros1Clearpath_navigation_msgsSetDelayCompensationResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_navigation_msgs/SetPathShifter exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_navigation_msgsSetPathShifterRequest(
    _ aliasBytes: [UInt8], _ requestValue: inout Ros1Clearpath_navigation_msgsSetPathShifterRequest
  )
    -> NativeObservation<Ros1Clearpath_navigation_msgsSetPathShifterResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_navigation_msgsSetPathShifterResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 261, 1, encoded.bytes, Ros1Clearpath_navigation_msgsSetPathShifterResponse.decode,
      { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_navigation_msgs/SetPathSmoother exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_navigation_msgsSetPathSmootherRequest(
    _ aliasBytes: [UInt8], _ requestValue: inout Ros1Clearpath_navigation_msgsSetPathSmootherRequest
  )
    -> NativeObservation<Ros1Clearpath_navigation_msgsSetPathSmootherResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_navigation_msgsSetPathSmootherResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 261, 1, encoded.bytes,
      Ros1Clearpath_navigation_msgsSetPathSmootherResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_navigation_msgs/SetStopDistance exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_navigation_msgsSetStopDistanceRequest(
    _ aliasBytes: [UInt8], _ requestValue: inout Ros1Clearpath_navigation_msgsSetStopDistanceRequest
  )
    -> NativeObservation<Ros1Clearpath_navigation_msgsSetStopDistanceResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_navigation_msgsSetStopDistanceResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 261, 1, encoded.bytes,
      Ros1Clearpath_navigation_msgsSetStopDistanceResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_safety_msgs/AddCommunicationWatchdog exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_safety_msgsAddCommunicationWatchdogRequest(
    _ aliasBytes: [UInt8],
    _ requestValue: inout Ros1Clearpath_safety_msgsAddCommunicationWatchdogRequest
  )
    -> NativeObservation<Ros1Clearpath_safety_msgsAddCommunicationWatchdogResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_safety_msgsAddCommunicationWatchdogResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 1, 1, encoded.bytes,
      Ros1Clearpath_safety_msgsAddCommunicationWatchdogResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_safety_msgs/AddHeartbeatWatchdog exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_safety_msgsAddHeartbeatWatchdogRequest(
    _ aliasBytes: [UInt8],
    _ requestValue: inout Ros1Clearpath_safety_msgsAddHeartbeatWatchdogRequest
  )
    -> NativeObservation<Ros1Clearpath_safety_msgsAddHeartbeatWatchdogResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_safety_msgsAddHeartbeatWatchdogResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 1, 1, encoded.bytes, Ros1Clearpath_safety_msgsAddHeartbeatWatchdogResponse.decode,
      { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_safety_msgs/AddInclinationWatchdog exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_safety_msgsAddInclinationWatchdogRequest(
    _ aliasBytes: [UInt8],
    _ requestValue: inout Ros1Clearpath_safety_msgsAddInclinationWatchdogRequest
  )
    -> NativeObservation<Ros1Clearpath_safety_msgsAddInclinationWatchdogResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_safety_msgsAddInclinationWatchdogResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 1, 1, encoded.bytes,
      Ros1Clearpath_safety_msgsAddInclinationWatchdogResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_safety_msgs/AddNodeStatusWatchdog exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_safety_msgsAddNodeStatusWatchdogRequest(
    _ aliasBytes: [UInt8],
    _ requestValue: inout Ros1Clearpath_safety_msgsAddNodeStatusWatchdogRequest
  )
    -> NativeObservation<Ros1Clearpath_safety_msgsAddNodeStatusWatchdogResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_safety_msgsAddNodeStatusWatchdogResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 1, 1, encoded.bytes,
      Ros1Clearpath_safety_msgsAddNodeStatusWatchdogResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_safety_msgs/AddNodeletStatusWatchdog exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_safety_msgsAddNodeletStatusWatchdogRequest(
    _ aliasBytes: [UInt8],
    _ requestValue: inout Ros1Clearpath_safety_msgsAddNodeletStatusWatchdogRequest
  )
    -> NativeObservation<Ros1Clearpath_safety_msgsAddNodeletStatusWatchdogResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_safety_msgsAddNodeletStatusWatchdogResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 1, 1, encoded.bytes,
      Ros1Clearpath_safety_msgsAddNodeletStatusWatchdogResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_safety_msgs/AddNumPointsWatchdog exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_safety_msgsAddNumPointsWatchdogRequest(
    _ aliasBytes: [UInt8],
    _ requestValue: inout Ros1Clearpath_safety_msgsAddNumPointsWatchdogRequest
  )
    -> NativeObservation<Ros1Clearpath_safety_msgsAddNumPointsWatchdogResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_safety_msgsAddNumPointsWatchdogResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 1, 1, encoded.bytes, Ros1Clearpath_safety_msgsAddNumPointsWatchdogResponse.decode,
      { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_safety_msgs/AddOdomCovarianceWatchdog exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_safety_msgsAddOdomCovarianceWatchdogRequest(
    _ aliasBytes: [UInt8],
    _ requestValue: inout Ros1Clearpath_safety_msgsAddOdomCovarianceWatchdogRequest
  )
    -> NativeObservation<Ros1Clearpath_safety_msgsAddOdomCovarianceWatchdogResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_safety_msgsAddOdomCovarianceWatchdogResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 1, 1, encoded.bytes,
      Ros1Clearpath_safety_msgsAddOdomCovarianceWatchdogResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_safety_msgs/AddRtkFixWatchdog exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_safety_msgsAddRtkFixWatchdogRequest(
    _ aliasBytes: [UInt8], _ requestValue: inout Ros1Clearpath_safety_msgsAddRtkFixWatchdogRequest
  )
    -> NativeObservation<Ros1Clearpath_safety_msgsAddRtkFixWatchdogResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_safety_msgsAddRtkFixWatchdogResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 1, 1, encoded.bytes, Ros1Clearpath_safety_msgsAddRtkFixWatchdogResponse.decode,
      { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_safety_msgs/AddTopicDataWatchdog exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_safety_msgsAddTopicDataWatchdogRequest(
    _ aliasBytes: [UInt8],
    _ requestValue: inout Ros1Clearpath_safety_msgsAddTopicDataWatchdogRequest
  )
    -> NativeObservation<Ros1Clearpath_safety_msgsAddTopicDataWatchdogResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_safety_msgsAddTopicDataWatchdogResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 1, 1, encoded.bytes, Ros1Clearpath_safety_msgsAddTopicDataWatchdogResponse.decode,
      { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_safety_msgs/RemoveWatchdog exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_safety_msgsRemoveWatchdogRequest(
    _ aliasBytes: [UInt8], _ requestValue: inout Ros1Clearpath_safety_msgsRemoveWatchdogRequest
  )
    -> NativeObservation<Ros1Clearpath_safety_msgsRemoveWatchdogResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_safety_msgsRemoveWatchdogResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 1, 1, encoded.bytes, Ros1Clearpath_safety_msgsRemoveWatchdogResponse.decode,
      { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_safety_msgs/UpdateCommunicationWatchdog exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_safety_msgsUpdateCommunicationWatchdogRequest(
    _ aliasBytes: [UInt8],
    _ requestValue: inout Ros1Clearpath_safety_msgsUpdateCommunicationWatchdogRequest
  )
    -> NativeObservation<Ros1Clearpath_safety_msgsUpdateCommunicationWatchdogResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<
        Ros1Clearpath_safety_msgsUpdateCommunicationWatchdogResponse
      >()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 1, 1, encoded.bytes,
      Ros1Clearpath_safety_msgsUpdateCommunicationWatchdogResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_safety_msgs/UpdateHeartbeatWatchdog exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_safety_msgsUpdateHeartbeatWatchdogRequest(
    _ aliasBytes: [UInt8],
    _ requestValue: inout Ros1Clearpath_safety_msgsUpdateHeartbeatWatchdogRequest
  )
    -> NativeObservation<Ros1Clearpath_safety_msgsUpdateHeartbeatWatchdogResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_safety_msgsUpdateHeartbeatWatchdogResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 1, 1, encoded.bytes,
      Ros1Clearpath_safety_msgsUpdateHeartbeatWatchdogResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_safety_msgs/UpdateInclinationWatchdog exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_safety_msgsUpdateInclinationWatchdogRequest(
    _ aliasBytes: [UInt8],
    _ requestValue: inout Ros1Clearpath_safety_msgsUpdateInclinationWatchdogRequest
  )
    -> NativeObservation<Ros1Clearpath_safety_msgsUpdateInclinationWatchdogResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_safety_msgsUpdateInclinationWatchdogResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 1, 1, encoded.bytes,
      Ros1Clearpath_safety_msgsUpdateInclinationWatchdogResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_safety_msgs/UpdateNodeStatusWatchdog exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_safety_msgsUpdateNodeStatusWatchdogRequest(
    _ aliasBytes: [UInt8],
    _ requestValue: inout Ros1Clearpath_safety_msgsUpdateNodeStatusWatchdogRequest
  )
    -> NativeObservation<Ros1Clearpath_safety_msgsUpdateNodeStatusWatchdogResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_safety_msgsUpdateNodeStatusWatchdogResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 1, 1, encoded.bytes,
      Ros1Clearpath_safety_msgsUpdateNodeStatusWatchdogResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_safety_msgs/UpdateNodeletStatusWatchdog exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_safety_msgsUpdateNodeletStatusWatchdogRequest(
    _ aliasBytes: [UInt8],
    _ requestValue: inout Ros1Clearpath_safety_msgsUpdateNodeletStatusWatchdogRequest
  )
    -> NativeObservation<Ros1Clearpath_safety_msgsUpdateNodeletStatusWatchdogResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<
        Ros1Clearpath_safety_msgsUpdateNodeletStatusWatchdogResponse
      >()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 1, 1, encoded.bytes,
      Ros1Clearpath_safety_msgsUpdateNodeletStatusWatchdogResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_safety_msgs/UpdateNumPointsWatchdog exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_safety_msgsUpdateNumPointsWatchdogRequest(
    _ aliasBytes: [UInt8],
    _ requestValue: inout Ros1Clearpath_safety_msgsUpdateNumPointsWatchdogRequest
  )
    -> NativeObservation<Ros1Clearpath_safety_msgsUpdateNumPointsWatchdogResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_safety_msgsUpdateNumPointsWatchdogResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 1, 1, encoded.bytes,
      Ros1Clearpath_safety_msgsUpdateNumPointsWatchdogResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_safety_msgs/UpdateOdomCovarianceWatchdog exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_safety_msgsUpdateOdomCovarianceWatchdogRequest(
    _ aliasBytes: [UInt8],
    _ requestValue: inout Ros1Clearpath_safety_msgsUpdateOdomCovarianceWatchdogRequest
  )
    -> NativeObservation<Ros1Clearpath_safety_msgsUpdateOdomCovarianceWatchdogResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<
        Ros1Clearpath_safety_msgsUpdateOdomCovarianceWatchdogResponse
      >()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 1, 1, encoded.bytes,
      Ros1Clearpath_safety_msgsUpdateOdomCovarianceWatchdogResponse.decode, { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_safety_msgs/UpdateRtkFixWatchdog exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_safety_msgsUpdateRtkFixWatchdogRequest(
    _ aliasBytes: [UInt8],
    _ requestValue: inout Ros1Clearpath_safety_msgsUpdateRtkFixWatchdogRequest
  )
    -> NativeObservation<Ros1Clearpath_safety_msgsUpdateRtkFixWatchdogResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_safety_msgsUpdateRtkFixWatchdogResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 1, 1, encoded.bytes, Ros1Clearpath_safety_msgsUpdateRtkFixWatchdogResponse.decode,
      { $0.encode() })
    return result
  }

  /// @brief Call complete clearpath_safety_msgs/UpdateTopicDataWatchdog exactly once.
  /// @details Encode the complete request before acquisition. Retain original transport and close errors.
  /// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
  /// @param requestValue Complete immutable original request; every field and bound is validated.
  /// @return Entire owned response with independent transport, provider and cleanup facts.
  /// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
  public static func callRos1Clearpath_safety_msgsUpdateTopicDataWatchdogRequest(
    _ aliasBytes: [UInt8],
    _ requestValue: inout Ros1Clearpath_safety_msgsUpdateTopicDataWatchdogRequest
  )
    -> NativeObservation<Ros1Clearpath_safety_msgsUpdateTopicDataWatchdogResponse>
  {
    let encoded = requestValue.encode()
    if encoded.status != 0 {
      var refused = NativeObservation<Ros1Clearpath_safety_msgsUpdateTopicDataWatchdogResponse>()
      refused.primary = encoded.status
      return refused
    }
    var result = nativeRequest(
      aliasBytes, 1, 1, encoded.bytes,
      Ros1Clearpath_safety_msgsUpdateTopicDataWatchdogResponse.decode, { $0.encode() })
    return result
  }

}
