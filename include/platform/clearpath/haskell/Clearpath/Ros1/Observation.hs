-- | @file Observation.hs
-- @brief Typed complete clearpath observers and service clients.
module Clearpath.Ros1.Observation where
import Data.Word
import Native.Observation
import qualified Clearpath.Ros1.Records as R
-- | @brief Observe every original clearpath_configuration_msgs/AutonomyConfig field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_configuration_msgsAutonomyConfig :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_configuration_msgsAutonomyConfig)
waitRos1Clearpath_configuration_msgsAutonomyConfig =
    receive
        R.decodeRos1Clearpath_configuration_msgsAutonomyConfig
        R.encodeRos1Clearpath_configuration_msgsAutonomyConfig
        268

-- | @brief Observe every original clearpath_configuration_msgs/PlatformConfig field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_configuration_msgsPlatformConfig :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_configuration_msgsPlatformConfig)
waitRos1Clearpath_configuration_msgsPlatformConfig =
    receive
        R.decodeRos1Clearpath_configuration_msgsPlatformConfig
        R.encodeRos1Clearpath_configuration_msgsPlatformConfig
        0

-- | @brief Observe every original clearpath_control_msgs/AutonomySync field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_control_msgsAutonomySync :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_control_msgsAutonomySync)
waitRos1Clearpath_control_msgsAutonomySync =
    receive
        R.decodeRos1Clearpath_control_msgsAutonomySync
        R.encodeRos1Clearpath_control_msgsAutonomySync
        7

-- | @brief Observe every original clearpath_control_msgs/ControlMode field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_control_msgsControlMode :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_control_msgsControlMode)
waitRos1Clearpath_control_msgsControlMode =
    receive
        R.decodeRos1Clearpath_control_msgsControlMode
        R.encodeRos1Clearpath_control_msgsControlMode
        1

-- | @brief Observe every original clearpath_control_msgs/ControlSelectionState field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_control_msgsControlSelectionState :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_control_msgsControlSelectionState)
waitRos1Clearpath_control_msgsControlSelectionState =
    receive
        R.decodeRos1Clearpath_control_msgsControlSelectionState
        R.encodeRos1Clearpath_control_msgsControlSelectionState
        3

-- | @brief Observe every original clearpath_control_msgs/ControlState field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_control_msgsControlState :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_control_msgsControlState)
waitRos1Clearpath_control_msgsControlState =
    receive
        R.decodeRos1Clearpath_control_msgsControlState
        R.encodeRos1Clearpath_control_msgsControlState
        2

-- | @brief Observe every original clearpath_dock_msgs/DockInfo field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_dock_msgsDockInfo :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_dock_msgsDockInfo)
waitRos1Clearpath_dock_msgsDockInfo =
    receive
        R.decodeRos1Clearpath_dock_msgsDockInfo
        R.encodeRos1Clearpath_dock_msgsDockInfo
        1204

-- | @brief Observe every original clearpath_dock_msgs/DockProperties field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_dock_msgsDockProperties :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_dock_msgsDockProperties)
waitRos1Clearpath_dock_msgsDockProperties =
    receive
        R.decodeRos1Clearpath_dock_msgsDockProperties
        R.encodeRos1Clearpath_dock_msgsDockProperties
        2412

-- | @brief Observe every original clearpath_dock_msgs/DockState field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_dock_msgsDockState :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_dock_msgsDockState)
waitRos1Clearpath_dock_msgsDockState =
    receive
        R.decodeRos1Clearpath_dock_msgsDockState
        R.encodeRos1Clearpath_dock_msgsDockState
        1

-- | @brief Observe every original clearpath_dock_msgs/TargetTrackerState field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_dock_msgsTargetTrackerState :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_dock_msgsTargetTrackerState)
waitRos1Clearpath_dock_msgsTargetTrackerState =
    receive
        R.decodeRos1Clearpath_dock_msgsTargetTrackerState
        R.encodeRos1Clearpath_dock_msgsTargetTrackerState
        502

-- | @brief Observe every original clearpath_localization_msgs/GNSSStatus field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_localization_msgsGNSSStatus :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_localization_msgsGNSSStatus)
waitRos1Clearpath_localization_msgsGNSSStatus =
    receive
        R.decodeRos1Clearpath_localization_msgsGNSSStatus
        R.encodeRos1Clearpath_localization_msgsGNSSStatus
        273

-- | @brief Observe every original clearpath_localization_msgs/LocalizationStatus field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_localization_msgsLocalizationStatus :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_localization_msgsLocalizationStatus)
waitRos1Clearpath_localization_msgsLocalizationStatus =
    receive
        R.decodeRos1Clearpath_localization_msgsLocalizationStatus
        R.encodeRos1Clearpath_localization_msgsLocalizationStatus
        968

-- | @brief Observe every original clearpath_localization_msgs/SurveyProperties field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_localization_msgsSurveyProperties :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_localization_msgsSurveyProperties)
waitRos1Clearpath_localization_msgsSurveyProperties =
    receive
        R.decodeRos1Clearpath_localization_msgsSurveyProperties
        R.encodeRos1Clearpath_localization_msgsSurveyProperties
        509

-- | @brief Observe every original clearpath_localization_msgs/XvnStatus field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_localization_msgsXvnStatus :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_localization_msgsXvnStatus)
waitRos1Clearpath_localization_msgsXvnStatus =
    receive
        R.decodeRos1Clearpath_localization_msgsXvnStatus
        R.encodeRos1Clearpath_localization_msgsXvnStatus
        182

-- | @brief Observe every original clearpath_logger_msgs/Event field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_logger_msgsEvent :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_logger_msgsEvent)
waitRos1Clearpath_logger_msgsEvent =
    receive
        R.decodeRos1Clearpath_logger_msgsEvent
        R.encodeRos1Clearpath_logger_msgsEvent
        3190

-- | @brief Observe every original clearpath_logger_msgs/EventLog field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_logger_msgsEventLog :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_logger_msgsEventLog)
waitRos1Clearpath_logger_msgsEventLog =
    receive
        R.decodeRos1Clearpath_logger_msgsEventLog
        R.encodeRos1Clearpath_logger_msgsEventLog
        7064

-- | @brief Observe every original clearpath_logger_msgs/EventLogs field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_logger_msgsEventLogs :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_logger_msgsEventLogs)
waitRos1Clearpath_logger_msgsEventLogs =
    receive
        R.decodeRos1Clearpath_logger_msgsEventLogs
        R.encodeRos1Clearpath_logger_msgsEventLogs
        14132

-- | @brief Observe every original clearpath_mission_manager_msgs/NetworkEdgeReq field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_mission_manager_msgsNetworkEdgeReq :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_mission_manager_msgsNetworkEdgeReq)
waitRos1Clearpath_mission_manager_msgsNetworkEdgeReq =
    receive
        R.decodeRos1Clearpath_mission_manager_msgsNetworkEdgeReq
        R.encodeRos1Clearpath_mission_manager_msgsNetworkEdgeReq
        528

-- | @brief Observe every original clearpath_mission_manager_msgs/NetworkMapState field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_mission_manager_msgsNetworkMapState :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_mission_manager_msgsNetworkMapState)
waitRos1Clearpath_mission_manager_msgsNetworkMapState =
    receive
        R.decodeRos1Clearpath_mission_manager_msgsNetworkMapState
        R.encodeRos1Clearpath_mission_manager_msgsNetworkMapState
        790

-- | @brief Observe every original clearpath_mission_manager_msgs/NetworkMapValidityState field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_mission_manager_msgsNetworkMapValidityState :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_mission_manager_msgsNetworkMapValidityState)
waitRos1Clearpath_mission_manager_msgsNetworkMapValidityState =
    receive
        R.decodeRos1Clearpath_mission_manager_msgsNetworkMapValidityState
        R.encodeRos1Clearpath_mission_manager_msgsNetworkMapValidityState
        1584

-- | @brief Observe every original clearpath_mission_manager_msgs/StorageState field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_mission_manager_msgsStorageState :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_mission_manager_msgsStorageState)
waitRos1Clearpath_mission_manager_msgsStorageState =
    receive
        R.decodeRos1Clearpath_mission_manager_msgsStorageState
        R.encodeRos1Clearpath_mission_manager_msgsStorageState
        32768

-- | @brief Observe every original clearpath_mission_scheduler_msgs/NextSchedule field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_mission_scheduler_msgsNextSchedule :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_mission_scheduler_msgsNextSchedule)
waitRos1Clearpath_mission_scheduler_msgsNextSchedule =
    receive
        R.decodeRos1Clearpath_mission_scheduler_msgsNextSchedule
        R.encodeRos1Clearpath_mission_scheduler_msgsNextSchedule
        268

-- | @brief Observe every original clearpath_mission_scheduler_msgs/Schedule field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_mission_scheduler_msgsSchedule :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_mission_scheduler_msgsSchedule)
waitRos1Clearpath_mission_scheduler_msgsSchedule =
    receive
        R.decodeRos1Clearpath_mission_scheduler_msgsSchedule
        R.encodeRos1Clearpath_mission_scheduler_msgsSchedule
        944

-- | @brief Observe every original clearpath_mission_scheduler_msgs/StorageState field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_mission_scheduler_msgsStorageState :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_mission_scheduler_msgsStorageState)
waitRos1Clearpath_mission_scheduler_msgsStorageState =
    receive
        R.decodeRos1Clearpath_mission_scheduler_msgsStorageState
        R.encodeRos1Clearpath_mission_scheduler_msgsStorageState
        1892

-- | @brief Observe every original clearpath_mission_scheduler_msgs/UtcTime field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_mission_scheduler_msgsUtcTime :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_mission_scheduler_msgsUtcTime)
waitRos1Clearpath_mission_scheduler_msgsUtcTime =
    receive
        R.decodeRos1Clearpath_mission_scheduler_msgsUtcTime
        R.encodeRos1Clearpath_mission_scheduler_msgsUtcTime
        5

-- | @brief Observe every original clearpath_navigation_msgs/AutonomyStatus field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_navigation_msgsAutonomyStatus :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_navigation_msgsAutonomyStatus)
waitRos1Clearpath_navigation_msgsAutonomyStatus =
    receive
        R.decodeRos1Clearpath_navigation_msgsAutonomyStatus
        R.encodeRos1Clearpath_navigation_msgsAutonomyStatus
        673

-- | @brief Observe every original clearpath_navigation_msgs/DistanceToGoal field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_navigation_msgsDistanceToGoal :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_navigation_msgsDistanceToGoal)
waitRos1Clearpath_navigation_msgsDistanceToGoal =
    receive
        R.decodeRos1Clearpath_navigation_msgsDistanceToGoal
        R.encodeRos1Clearpath_navigation_msgsDistanceToGoal
        8

-- | @brief Observe every original clearpath_navigation_msgs/Metrics field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_navigation_msgsMetrics :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_navigation_msgsMetrics)
waitRos1Clearpath_navigation_msgsMetrics =
    receive
        R.decodeRos1Clearpath_navigation_msgsMetrics
        R.encodeRos1Clearpath_navigation_msgsMetrics
        56

-- | @brief Observe every original clearpath_navigation_msgs/Mission field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_navigation_msgsMission :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_navigation_msgsMission)
waitRos1Clearpath_navigation_msgsMission =
    receive
        R.decodeRos1Clearpath_navigation_msgsMission
        R.encodeRos1Clearpath_navigation_msgsMission
        13336

-- | @brief Observe every original clearpath_navigation_msgs/MissionStatus field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_navigation_msgsMissionStatus :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_navigation_msgsMissionStatus)
waitRos1Clearpath_navigation_msgsMissionStatus =
    receive
        R.decodeRos1Clearpath_navigation_msgsMissionStatus
        R.encodeRos1Clearpath_navigation_msgsMissionStatus
        7244

-- | @brief Observe every original clearpath_navigation_msgs/MotionState field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_navigation_msgsMotionState :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_navigation_msgsMotionState)
waitRos1Clearpath_navigation_msgsMotionState =
    receive
        R.decodeRos1Clearpath_navigation_msgsMotionState
        R.encodeRos1Clearpath_navigation_msgsMotionState
        3

-- | @brief Observe every original clearpath_navigation_msgs/NavigationState field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_navigation_msgsNavigationState :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_navigation_msgsNavigationState)
waitRos1Clearpath_navigation_msgsNavigationState =
    receive
        R.decodeRos1Clearpath_navigation_msgsNavigationState
        R.encodeRos1Clearpath_navigation_msgsNavigationState
        6

-- | @brief Observe every original clearpath_navigation_msgs/NetworkEdge field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_navigation_msgsNetworkEdge :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_navigation_msgsNetworkEdge)
waitRos1Clearpath_navigation_msgsNetworkEdge =
    receive
        R.decodeRos1Clearpath_navigation_msgsNetworkEdge
        R.encodeRos1Clearpath_navigation_msgsNetworkEdge
        824

-- | @brief Observe every original clearpath_navigation_msgs/NetworkGoalState field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_navigation_msgsNetworkGoalState :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_navigation_msgsNetworkGoalState)
waitRos1Clearpath_navigation_msgsNetworkGoalState =
    receive
        R.decodeRos1Clearpath_navigation_msgsNetworkGoalState
        R.encodeRos1Clearpath_navigation_msgsNetworkGoalState
        3351

-- | @brief Observe every original clearpath_navigation_msgs/NetworkMap field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_navigation_msgsNetworkMap :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_navigation_msgsNetworkMap)
waitRos1Clearpath_navigation_msgsNetworkMap =
    receive
        R.decodeRos1Clearpath_navigation_msgsNetworkMap
        R.encodeRos1Clearpath_navigation_msgsNetworkMap
        2608

-- | @brief Observe every original clearpath_navigation_msgs/NetworkMission field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_navigation_msgsNetworkMission :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_navigation_msgsNetworkMission)
waitRos1Clearpath_navigation_msgsNetworkMission =
    receive
        R.decodeRos1Clearpath_navigation_msgsNetworkMission
        R.encodeRos1Clearpath_navigation_msgsNetworkMission
        13606

-- | @brief Observe every original clearpath_navigation_msgs/NetworkMissionSegment field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_navigation_msgsNetworkMissionSegment :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_navigation_msgsNetworkMissionSegment)
waitRos1Clearpath_navigation_msgsNetworkMissionSegment =
    receive
        R.decodeRos1Clearpath_navigation_msgsNetworkMissionSegment
        R.encodeRos1Clearpath_navigation_msgsNetworkMissionSegment
        3546

-- | @brief Observe every original clearpath_navigation_msgs/NetworkPoint field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_navigation_msgsNetworkPoint :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_navigation_msgsNetworkPoint)
waitRos1Clearpath_navigation_msgsNetworkPoint =
    receive
        R.decodeRos1Clearpath_navigation_msgsNetworkPoint
        R.encodeRos1Clearpath_navigation_msgsNetworkPoint
        276

-- | @brief Observe every original clearpath_navigation_msgs/OdomIntent field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_navigation_msgsOdomIntent :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_navigation_msgsOdomIntent)
waitRos1Clearpath_navigation_msgsOdomIntent =
    receive
        R.decodeRos1Clearpath_navigation_msgsOdomIntent
        R.encodeRos1Clearpath_navigation_msgsOdomIntent
        2316

-- | @brief Observe every original clearpath_navigation_msgs/PointOfInterest field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_navigation_msgsPointOfInterest :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_navigation_msgsPointOfInterest)
waitRos1Clearpath_navigation_msgsPointOfInterest =
    receive
        R.decodeRos1Clearpath_navigation_msgsPointOfInterest
        R.encodeRos1Clearpath_navigation_msgsPointOfInterest
        1209

-- | @brief Observe every original clearpath_navigation_msgs/PointVector field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_navigation_msgsPointVector :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_navigation_msgsPointVector)
waitRos1Clearpath_navigation_msgsPointVector =
    receive
        R.decodeRos1Clearpath_navigation_msgsPointVector
        R.encodeRos1Clearpath_navigation_msgsPointVector
        164

-- | @brief Observe every original clearpath_navigation_msgs/Progress field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_navigation_msgsProgress :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_navigation_msgsProgress)
waitRos1Clearpath_navigation_msgsProgress =
    receive
        R.decodeRos1Clearpath_navigation_msgsProgress
        R.encodeRos1Clearpath_navigation_msgsProgress
        12

-- | @brief Observe every original clearpath_navigation_msgs/ScanPoints field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_navigation_msgsScanPoints :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_navigation_msgsScanPoints)
waitRos1Clearpath_navigation_msgsScanPoints =
    receive
        R.decodeRos1Clearpath_navigation_msgsScanPoints
        R.encodeRos1Clearpath_navigation_msgsScanPoints
        1000

-- | @brief Observe every original clearpath_navigation_msgs/Task field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_navigation_msgsTask :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_navigation_msgsTask)
waitRos1Clearpath_navigation_msgsTask =
    receive
        R.decodeRos1Clearpath_navigation_msgsTask
        R.encodeRos1Clearpath_navigation_msgsTask
        1457

-- | @brief Observe every original clearpath_navigation_msgs/TrackError field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_navigation_msgsTrackError :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_navigation_msgsTrackError)
waitRos1Clearpath_navigation_msgsTrackError =
    receive
        R.decodeRos1Clearpath_navigation_msgsTrackError
        R.encodeRos1Clearpath_navigation_msgsTrackError
        152

-- | @brief Observe every original clearpath_navigation_msgs/Vector2D field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_navigation_msgsVector2D :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_navigation_msgsVector2D)
waitRos1Clearpath_navigation_msgsVector2D =
    receive
        R.decodeRos1Clearpath_navigation_msgsVector2D
        R.encodeRos1Clearpath_navigation_msgsVector2D
        8

-- | @brief Observe every original clearpath_navigation_msgs/Vector2D64 field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_navigation_msgsVector2D64 :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_navigation_msgsVector2D64)
waitRos1Clearpath_navigation_msgsVector2D64 =
    receive
        R.decodeRos1Clearpath_navigation_msgsVector2D64
        R.encodeRos1Clearpath_navigation_msgsVector2D64
        16

-- | @brief Observe every original clearpath_navigation_msgs/Waypoint field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_navigation_msgsWaypoint :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_navigation_msgsWaypoint)
waitRos1Clearpath_navigation_msgsWaypoint =
    receive
        R.decodeRos1Clearpath_navigation_msgsWaypoint
        R.encodeRos1Clearpath_navigation_msgsWaypoint
        3350

-- | @brief Observe every original clearpath_navigation_msgs/WaypointStatus field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_navigation_msgsWaypointStatus :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_navigation_msgsWaypointStatus)
waitRos1Clearpath_navigation_msgsWaypointStatus =
    receive
        R.decodeRos1Clearpath_navigation_msgsWaypointStatus
        R.encodeRos1Clearpath_navigation_msgsWaypointStatus
        3352

-- | @brief Observe every original clearpath_platform_msgs/Drive field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_platform_msgsDrive :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_platform_msgsDrive)
waitRos1Clearpath_platform_msgsDrive =
    receive
        R.decodeRos1Clearpath_platform_msgsDrive
        R.encodeRos1Clearpath_platform_msgsDrive
        9

-- | @brief Observe every original clearpath_platform_msgs/DriveFeedback field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_platform_msgsDriveFeedback :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_platform_msgsDriveFeedback)
waitRos1Clearpath_platform_msgsDriveFeedback =
    receive
        R.decodeRos1Clearpath_platform_msgsDriveFeedback
        R.encodeRos1Clearpath_platform_msgsDriveFeedback
        25

-- | @brief Observe every original clearpath_platform_msgs/Fans field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_platform_msgsFans :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_platform_msgsFans)
waitRos1Clearpath_platform_msgsFans =
    receive
        R.decodeRos1Clearpath_platform_msgsFans
        R.encodeRos1Clearpath_platform_msgsFans
        6

-- | @brief Observe every original clearpath_platform_msgs/Feedback field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_platform_msgsFeedback :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_platform_msgsFeedback)
waitRos1Clearpath_platform_msgsFeedback =
    receive
        R.decodeRos1Clearpath_platform_msgsFeedback
        R.encodeRos1Clearpath_platform_msgsFeedback
        196

-- | @brief Observe every original clearpath_platform_msgs/Lights field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_platform_msgsLights :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_platform_msgsLights)
waitRos1Clearpath_platform_msgsLights =
    receive
        R.decodeRos1Clearpath_platform_msgsLights
        R.encodeRos1Clearpath_platform_msgsLights
        10

-- | @brief Observe every original clearpath_platform_msgs/PlatformID field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_platform_msgsPlatformID :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_platform_msgsPlatformID)
waitRos1Clearpath_platform_msgsPlatformID =
    receive
        R.decodeRos1Clearpath_platform_msgsPlatformID
        R.encodeRos1Clearpath_platform_msgsPlatformID
        1040

-- | @brief Observe every original clearpath_platform_msgs/Power field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_platform_msgsPower :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_platform_msgsPower)
waitRos1Clearpath_platform_msgsPower =
    receive
        R.decodeRos1Clearpath_platform_msgsPower
        R.encodeRos1Clearpath_platform_msgsPower
        172

-- | @brief Observe every original clearpath_platform_msgs/RGB field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_platform_msgsRGB :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_platform_msgsRGB)
waitRos1Clearpath_platform_msgsRGB =
    receive
        R.decodeRos1Clearpath_platform_msgsRGB
        R.encodeRos1Clearpath_platform_msgsRGB
        3

-- | @brief Observe every original clearpath_platform_msgs/RYG field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_platform_msgsRYG :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_platform_msgsRYG)
waitRos1Clearpath_platform_msgsRYG =
    receive
        R.decodeRos1Clearpath_platform_msgsRYG
        R.encodeRos1Clearpath_platform_msgsRYG
        3

-- | @brief Observe every original clearpath_platform_msgs/StackLightState field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_platform_msgsStackLightState :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_platform_msgsStackLightState)
waitRos1Clearpath_platform_msgsStackLightState =
    receive
        R.decodeRos1Clearpath_platform_msgsStackLightState
        R.encodeRos1Clearpath_platform_msgsStackLightState
        264

-- | @brief Observe every original clearpath_platform_msgs/Status field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_platform_msgsStatus :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_platform_msgsStatus)
waitRos1Clearpath_platform_msgsStatus =
    receive
        R.decodeRos1Clearpath_platform_msgsStatus
        R.encodeRos1Clearpath_platform_msgsStatus
        688

-- | @brief Observe every original clearpath_platform_msgs/StopStatus field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_platform_msgsStopStatus :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_platform_msgsStopStatus)
waitRos1Clearpath_platform_msgsStopStatus =
    receive
        R.decodeRos1Clearpath_platform_msgsStopStatus
        R.encodeRos1Clearpath_platform_msgsStopStatus
        146

-- | @brief Observe every original clearpath_safety_msgs/AssistedTeleopState field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_safety_msgsAssistedTeleopState :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_safety_msgsAssistedTeleopState)
waitRos1Clearpath_safety_msgsAssistedTeleopState =
    receive
        R.decodeRos1Clearpath_safety_msgsAssistedTeleopState
        R.encodeRos1Clearpath_safety_msgsAssistedTeleopState
        262

-- | @brief Observe every original clearpath_safety_msgs/ObstacleMap field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_safety_msgsObstacleMap :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_safety_msgsObstacleMap)
waitRos1Clearpath_safety_msgsObstacleMap =
    receive
        R.decodeRos1Clearpath_safety_msgsObstacleMap
        R.encodeRos1Clearpath_safety_msgsObstacleMap
        12

-- | @brief Observe every original clearpath_safety_msgs/Safety field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_safety_msgsSafety :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_safety_msgsSafety)
waitRos1Clearpath_safety_msgsSafety =
    receive
        R.decodeRos1Clearpath_safety_msgsSafety
        R.encodeRos1Clearpath_safety_msgsSafety
        262

-- | @brief Observe every original clearpath_safety_msgs/WatchdogConfigArray field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_safety_msgsWatchdogConfigArray :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_safety_msgsWatchdogConfigArray)
waitRos1Clearpath_safety_msgsWatchdogConfigArray =
    receive
        R.decodeRos1Clearpath_safety_msgsWatchdogConfigArray
        R.encodeRos1Clearpath_safety_msgsWatchdogConfigArray
        27558

-- | @brief Observe every original clearpath_safety_msgs/WatchdogConfigCommon field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_safety_msgsWatchdogConfigCommon :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_safety_msgsWatchdogConfigCommon)
waitRos1Clearpath_safety_msgsWatchdogConfigCommon =
    receive
        R.decodeRos1Clearpath_safety_msgsWatchdogConfigCommon
        R.encodeRos1Clearpath_safety_msgsWatchdogConfigCommon
        1177

-- | @brief Observe every original clearpath_safety_msgs/WatchdogConfigCommunication field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_safety_msgsWatchdogConfigCommunication :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_safety_msgsWatchdogConfigCommunication)
waitRos1Clearpath_safety_msgsWatchdogConfigCommunication =
    receive
        R.decodeRos1Clearpath_safety_msgsWatchdogConfigCommunication
        R.encodeRos1Clearpath_safety_msgsWatchdogConfigCommunication
        1961

-- | @brief Observe every original clearpath_safety_msgs/WatchdogConfigHeartbeat field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_safety_msgsWatchdogConfigHeartbeat :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_safety_msgsWatchdogConfigHeartbeat)
waitRos1Clearpath_safety_msgsWatchdogConfigHeartbeat =
    receive
        R.decodeRos1Clearpath_safety_msgsWatchdogConfigHeartbeat
        R.encodeRos1Clearpath_safety_msgsWatchdogConfigHeartbeat
        1441

-- | @brief Observe every original clearpath_safety_msgs/WatchdogConfigInclination field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_safety_msgsWatchdogConfigInclination :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_safety_msgsWatchdogConfigInclination)
waitRos1Clearpath_safety_msgsWatchdogConfigInclination =
    receive
        R.decodeRos1Clearpath_safety_msgsWatchdogConfigInclination
        R.encodeRos1Clearpath_safety_msgsWatchdogConfigInclination
        1449

-- | @brief Observe every original clearpath_safety_msgs/WatchdogConfigNodeStatus field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_safety_msgsWatchdogConfigNodeStatus :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_safety_msgsWatchdogConfigNodeStatus)
waitRos1Clearpath_safety_msgsWatchdogConfigNodeStatus =
    receive
        R.decodeRos1Clearpath_safety_msgsWatchdogConfigNodeStatus
        R.encodeRos1Clearpath_safety_msgsWatchdogConfigNodeStatus
        1438

-- | @brief Observe every original clearpath_safety_msgs/WatchdogConfigNodeletStatus field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_safety_msgsWatchdogConfigNodeletStatus :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_safety_msgsWatchdogConfigNodeletStatus)
waitRos1Clearpath_safety_msgsWatchdogConfigNodeletStatus =
    receive
        R.decodeRos1Clearpath_safety_msgsWatchdogConfigNodeletStatus
        R.encodeRos1Clearpath_safety_msgsWatchdogConfigNodeletStatus
        1698

-- | @brief Observe every original clearpath_safety_msgs/WatchdogConfigNumPoints field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_safety_msgsWatchdogConfigNumPoints :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_safety_msgsWatchdogConfigNumPoints)
waitRos1Clearpath_safety_msgsWatchdogConfigNumPoints =
    receive
        R.decodeRos1Clearpath_safety_msgsWatchdogConfigNumPoints
        R.encodeRos1Clearpath_safety_msgsWatchdogConfigNumPoints
        1441

-- | @brief Observe every original clearpath_safety_msgs/WatchdogConfigOdomCovariance field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_safety_msgsWatchdogConfigOdomCovariance :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_safety_msgsWatchdogConfigOdomCovariance)
waitRos1Clearpath_safety_msgsWatchdogConfigOdomCovariance =
    receive
        R.decodeRos1Clearpath_safety_msgsWatchdogConfigOdomCovariance
        R.encodeRos1Clearpath_safety_msgsWatchdogConfigOdomCovariance
        1449

-- | @brief Observe every original clearpath_safety_msgs/WatchdogConfigRtkFix field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_safety_msgsWatchdogConfigRtkFix :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_safety_msgsWatchdogConfigRtkFix)
waitRos1Clearpath_safety_msgsWatchdogConfigRtkFix =
    receive
        R.decodeRos1Clearpath_safety_msgsWatchdogConfigRtkFix
        R.encodeRos1Clearpath_safety_msgsWatchdogConfigRtkFix
        1443

-- | @brief Observe every original clearpath_safety_msgs/WatchdogConfigTopicData field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_safety_msgsWatchdogConfigTopicData :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_safety_msgsWatchdogConfigTopicData)
waitRos1Clearpath_safety_msgsWatchdogConfigTopicData =
    receive
        R.decodeRos1Clearpath_safety_msgsWatchdogConfigTopicData
        R.encodeRos1Clearpath_safety_msgsWatchdogConfigTopicData
        1441

-- | @brief Observe every original clearpath_safety_msgs/WatchdogStatus field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_safety_msgsWatchdogStatus :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_safety_msgsWatchdogStatus)
waitRos1Clearpath_safety_msgsWatchdogStatus =
    receive
        R.decodeRos1Clearpath_safety_msgsWatchdogStatus
        R.encodeRos1Clearpath_safety_msgsWatchdogStatus
        653

-- | @brief Observe every original clearpath_safety_msgs/WatchdogStatusArray field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Clearpath_safety_msgsWatchdogStatusArray :: [Word8] -> Word32 -> IO (Observation R.Ros1Clearpath_safety_msgsWatchdogStatusArray)
waitRos1Clearpath_safety_msgsWatchdogStatusArray =
    receive
        R.decodeRos1Clearpath_safety_msgsWatchdogStatusArray
        R.encodeRos1Clearpath_safety_msgsWatchdogStatusArray
        1454

-- | @brief Observe every original geometry_msgs/Point field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Geometry_msgsPoint :: [Word8] -> Word32 -> IO (Observation R.Ros1Geometry_msgsPoint)
waitRos1Geometry_msgsPoint =
    receive
        R.decodeRos1Geometry_msgsPoint
        R.encodeRos1Geometry_msgsPoint
        24

-- | @brief Observe every original geometry_msgs/Pose field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Geometry_msgsPose :: [Word8] -> Word32 -> IO (Observation R.Ros1Geometry_msgsPose)
waitRos1Geometry_msgsPose =
    receive
        R.decodeRos1Geometry_msgsPose
        R.encodeRos1Geometry_msgsPose
        56

-- | @brief Observe every original geometry_msgs/PoseStamped field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Geometry_msgsPoseStamped :: [Word8] -> Word32 -> IO (Observation R.Ros1Geometry_msgsPoseStamped)
waitRos1Geometry_msgsPoseStamped =
    receive
        R.decodeRos1Geometry_msgsPoseStamped
        R.encodeRos1Geometry_msgsPoseStamped
        200

-- | @brief Observe every original geometry_msgs/PoseWithCovariance field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Geometry_msgsPoseWithCovariance :: [Word8] -> Word32 -> IO (Observation R.Ros1Geometry_msgsPoseWithCovariance)
waitRos1Geometry_msgsPoseWithCovariance =
    receive
        R.decodeRos1Geometry_msgsPoseWithCovariance
        R.encodeRos1Geometry_msgsPoseWithCovariance
        344

-- | @brief Observe every original geometry_msgs/PoseWithCovarianceStamped field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Geometry_msgsPoseWithCovarianceStamped :: [Word8] -> Word32 -> IO (Observation R.Ros1Geometry_msgsPoseWithCovarianceStamped)
waitRos1Geometry_msgsPoseWithCovarianceStamped =
    receive
        R.decodeRos1Geometry_msgsPoseWithCovarianceStamped
        R.encodeRos1Geometry_msgsPoseWithCovarianceStamped
        488

-- | @brief Observe every original geometry_msgs/Quaternion field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Geometry_msgsQuaternion :: [Word8] -> Word32 -> IO (Observation R.Ros1Geometry_msgsQuaternion)
waitRos1Geometry_msgsQuaternion =
    receive
        R.decodeRos1Geometry_msgsQuaternion
        R.encodeRos1Geometry_msgsQuaternion
        32

-- | @brief Observe every original geometry_msgs/Twist field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Geometry_msgsTwist :: [Word8] -> Word32 -> IO (Observation R.Ros1Geometry_msgsTwist)
waitRos1Geometry_msgsTwist =
    receive
        R.decodeRos1Geometry_msgsTwist
        R.encodeRos1Geometry_msgsTwist
        48

-- | @brief Observe every original geometry_msgs/TwistWithCovariance field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Geometry_msgsTwistWithCovariance :: [Word8] -> Word32 -> IO (Observation R.Ros1Geometry_msgsTwistWithCovariance)
waitRos1Geometry_msgsTwistWithCovariance =
    receive
        R.decodeRos1Geometry_msgsTwistWithCovariance
        R.encodeRos1Geometry_msgsTwistWithCovariance
        336

-- | @brief Observe every original geometry_msgs/Vector3 field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Geometry_msgsVector3 :: [Word8] -> Word32 -> IO (Observation R.Ros1Geometry_msgsVector3)
waitRos1Geometry_msgsVector3 =
    receive
        R.decodeRos1Geometry_msgsVector3
        R.encodeRos1Geometry_msgsVector3
        24

-- | @brief Observe every original husky_msgs/HuskyStatus field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Husky_msgsHuskyStatus :: [Word8] -> Word32 -> IO (Observation R.Ros1Husky_msgsHuskyStatus)
waitRos1Husky_msgsHuskyStatus =
    receive
        R.decodeRos1Husky_msgsHuskyStatus
        R.encodeRos1Husky_msgsHuskyStatus
        252

-- | @brief Observe every original jackal_msgs/Drive field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Jackal_msgsDrive :: [Word8] -> Word32 -> IO (Observation R.Ros1Jackal_msgsDrive)
waitRos1Jackal_msgsDrive =
    receive
        R.decodeRos1Jackal_msgsDrive
        R.encodeRos1Jackal_msgsDrive
        9

-- | @brief Observe every original jackal_msgs/DriveFeedback field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Jackal_msgsDriveFeedback :: [Word8] -> Word32 -> IO (Observation R.Ros1Jackal_msgsDriveFeedback)
waitRos1Jackal_msgsDriveFeedback =
    receive
        R.decodeRos1Jackal_msgsDriveFeedback
        R.encodeRos1Jackal_msgsDriveFeedback
        25

-- | @brief Observe every original jackal_msgs/Feedback field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Jackal_msgsFeedback :: [Word8] -> Word32 -> IO (Observation R.Ros1Jackal_msgsFeedback)
waitRos1Jackal_msgsFeedback =
    receive
        R.decodeRos1Jackal_msgsFeedback
        R.encodeRos1Jackal_msgsFeedback
        204

-- | @brief Observe every original jackal_msgs/Status field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Jackal_msgsStatus :: [Word8] -> Word32 -> IO (Observation R.Ros1Jackal_msgsStatus)
waitRos1Jackal_msgsStatus =
    receive
        R.decodeRos1Jackal_msgsStatus
        R.encodeRos1Jackal_msgsStatus
        463

-- | @brief Observe every original nav_msgs/Odometry field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Nav_msgsOdometry :: [Word8] -> Word32 -> IO (Observation R.Ros1Nav_msgsOdometry)
waitRos1Nav_msgsOdometry =
    receive
        R.decodeRos1Nav_msgsOdometry
        R.encodeRos1Nav_msgsOdometry
        1084

-- | @brief Observe every original nav_msgs/Path field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Nav_msgsPath :: [Word8] -> Word32 -> IO (Observation R.Ros1Nav_msgsPath)
waitRos1Nav_msgsPath =
    receive
        R.decodeRos1Nav_msgsPath
        R.encodeRos1Nav_msgsPath
        548

-- | @brief Observe every original sensor_msgs/NavSatFix field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Sensor_msgsNavSatFix :: [Word8] -> Word32 -> IO (Observation R.Ros1Sensor_msgsNavSatFix)
waitRos1Sensor_msgsNavSatFix =
    receive
        R.decodeRos1Sensor_msgsNavSatFix
        R.encodeRos1Sensor_msgsNavSatFix
        244

-- | @brief Observe every original sensor_msgs/NavSatStatus field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Sensor_msgsNavSatStatus :: [Word8] -> Word32 -> IO (Observation R.Ros1Sensor_msgsNavSatStatus)
waitRos1Sensor_msgsNavSatStatus =
    receive
        R.decodeRos1Sensor_msgsNavSatStatus
        R.encodeRos1Sensor_msgsNavSatStatus
        3

-- | @brief Observe every original std_msgs/Duration field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Std_msgsDuration :: [Word8] -> Word32 -> IO (Observation R.Ros1Std_msgsDuration)
waitRos1Std_msgsDuration =
    receive
        R.decodeRos1Std_msgsDuration
        R.encodeRos1Std_msgsDuration
        8

-- | @brief Observe every original std_msgs/Header field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Std_msgsHeader :: [Word8] -> Word32 -> IO (Observation R.Ros1Std_msgsHeader)
waitRos1Std_msgsHeader =
    receive
        R.decodeRos1Std_msgsHeader
        R.encodeRos1Std_msgsHeader
        144

-- | @brief Observe every original std_msgs/String field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Std_msgsString :: [Word8] -> Word32 -> IO (Observation R.Ros1Std_msgsString)
waitRos1Std_msgsString =
    receive
        R.decodeRos1Std_msgsString
        R.encodeRos1Std_msgsString
        260

-- | @brief Observe every original std_msgs/Time field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Std_msgsTime :: [Word8] -> Word32 -> IO (Observation R.Ros1Std_msgsTime)
waitRos1Std_msgsTime =
    receive
        R.decodeRos1Std_msgsTime
        R.encodeRos1Std_msgsTime
        8

-- @brief Call complete clearpath_camera_msgs/q62AreaZoom exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_camera_msgsQ62AreaZoomRequest ::
    [Word8] ->
    R.Ros1Clearpath_camera_msgsQ62AreaZoomRequest ->
    IO (Observation R.Ros1Clearpath_camera_msgsQ62AreaZoomResponse)
callRos1Clearpath_camera_msgsQ62AreaZoomRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_camera_msgsQ62AreaZoomRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_camera_msgsQ62AreaZoomResponse
                    R.encodeRos1Clearpath_camera_msgsQ62AreaZoomResponse
                    261 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_control_msgs/SetControlMode exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_control_msgsSetControlModeRequest ::
    [Word8] ->
    R.Ros1Clearpath_control_msgsSetControlModeRequest ->
    IO (Observation R.Ros1Clearpath_control_msgsSetControlModeResponse)
callRos1Clearpath_control_msgsSetControlModeRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_control_msgsSetControlModeRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_control_msgsSetControlModeResponse
                    R.encodeRos1Clearpath_control_msgsSetControlModeResponse
                    0 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_dock_msgs/AddDock exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_dock_msgsAddDockRequest ::
    [Word8] ->
    R.Ros1Clearpath_dock_msgsAddDockRequest ->
    IO (Observation R.Ros1Clearpath_dock_msgsAddDockResponse)
callRos1Clearpath_dock_msgsAddDockRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_dock_msgsAddDockRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_dock_msgsAddDockResponse
                    R.encodeRos1Clearpath_dock_msgsAddDockResponse
                    261 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_dock_msgs/ExportData exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_dock_msgsExportDataRequest ::
    [Word8] ->
    R.Ros1Clearpath_dock_msgsExportDataRequest ->
    IO (Observation R.Ros1Clearpath_dock_msgsExportDataResponse)
callRos1Clearpath_dock_msgsExportDataRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_dock_msgsExportDataRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_dock_msgsExportDataResponse
                    R.encodeRos1Clearpath_dock_msgsExportDataResponse
                    260 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_dock_msgs/GetDockByUuid exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_dock_msgsGetDockByUuidRequest ::
    [Word8] ->
    R.Ros1Clearpath_dock_msgsGetDockByUuidRequest ->
    IO (Observation R.Ros1Clearpath_dock_msgsGetDockByUuidResponse)
callRos1Clearpath_dock_msgsGetDockByUuidRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_dock_msgsGetDockByUuidRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_dock_msgsGetDockByUuidResponse
                    R.encodeRos1Clearpath_dock_msgsGetDockByUuidResponse
                    1316 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_dock_msgs/ImportData exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_dock_msgsImportDataRequest ::
    [Word8] ->
    R.Ros1Clearpath_dock_msgsImportDataRequest ->
    IO (Observation R.Ros1Clearpath_dock_msgsImportDataResponse)
callRos1Clearpath_dock_msgsImportDataRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_dock_msgsImportDataRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_dock_msgsImportDataResponse
                    R.encodeRos1Clearpath_dock_msgsImportDataResponse
                    2412 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_dock_msgs/RemoveDock exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_dock_msgsRemoveDockRequest ::
    [Word8] ->
    R.Ros1Clearpath_dock_msgsRemoveDockRequest ->
    IO (Observation R.Ros1Clearpath_dock_msgsRemoveDockResponse)
callRos1Clearpath_dock_msgsRemoveDockRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_dock_msgsRemoveDockRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_dock_msgsRemoveDockResponse
                    R.encodeRos1Clearpath_dock_msgsRemoveDockResponse
                    261 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_dock_msgs/SetDockLocationById exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_dock_msgsSetDockLocationByIdRequest ::
    [Word8] ->
    R.Ros1Clearpath_dock_msgsSetDockLocationByIdRequest ->
    IO (Observation R.Ros1Clearpath_dock_msgsSetDockLocationByIdResponse)
callRos1Clearpath_dock_msgsSetDockLocationByIdRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_dock_msgsSetDockLocationByIdRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_dock_msgsSetDockLocationByIdResponse
                    R.encodeRos1Clearpath_dock_msgsSetDockLocationByIdResponse
                    261 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_dock_msgs/SetDockLocationByName exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_dock_msgsSetDockLocationByNameRequest ::
    [Word8] ->
    R.Ros1Clearpath_dock_msgsSetDockLocationByNameRequest ->
    IO (Observation R.Ros1Clearpath_dock_msgsSetDockLocationByNameResponse)
callRos1Clearpath_dock_msgsSetDockLocationByNameRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_dock_msgsSetDockLocationByNameRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_dock_msgsSetDockLocationByNameResponse
                    R.encodeRos1Clearpath_dock_msgsSetDockLocationByNameResponse
                    261 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_localization_msgs/ConvertCartesianToLatLon exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_localization_msgsConvertCartesianToLatLonRequest ::
    [Word8] ->
    R.Ros1Clearpath_localization_msgsConvertCartesianToLatLonRequest ->
    IO (Observation R.Ros1Clearpath_localization_msgsConvertCartesianToLatLonResponse)
callRos1Clearpath_localization_msgsConvertCartesianToLatLonRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_localization_msgsConvertCartesianToLatLonRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_localization_msgsConvertCartesianToLatLonResponse
                    R.encodeRos1Clearpath_localization_msgsConvertCartesianToLatLonResponse
                    244 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_localization_msgs/ConvertCartesianToLatLonArray exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_localization_msgsConvertCartesianToLatLonArrayRequest ::
    [Word8] ->
    R.Ros1Clearpath_localization_msgsConvertCartesianToLatLonArrayRequest ->
    IO (Observation R.Ros1Clearpath_localization_msgsConvertCartesianToLatLonArrayResponse)
callRos1Clearpath_localization_msgsConvertCartesianToLatLonArrayRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_localization_msgsConvertCartesianToLatLonArrayRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_localization_msgsConvertCartesianToLatLonArrayResponse
                    R.encodeRos1Clearpath_localization_msgsConvertCartesianToLatLonArrayResponse
                    492 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_localization_msgs/ConvertLatLonToCartesian exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_localization_msgsConvertLatLonToCartesianRequest ::
    [Word8] ->
    R.Ros1Clearpath_localization_msgsConvertLatLonToCartesianRequest ->
    IO (Observation R.Ros1Clearpath_localization_msgsConvertLatLonToCartesianResponse)
callRos1Clearpath_localization_msgsConvertLatLonToCartesianRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_localization_msgsConvertLatLonToCartesianRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_localization_msgsConvertLatLonToCartesianResponse
                    R.encodeRos1Clearpath_localization_msgsConvertLatLonToCartesianResponse
                    200 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_localization_msgs/ConvertLatLonToCartesianArray exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_localization_msgsConvertLatLonToCartesianArrayRequest ::
    [Word8] ->
    R.Ros1Clearpath_localization_msgsConvertLatLonToCartesianArrayRequest ->
    IO (Observation R.Ros1Clearpath_localization_msgsConvertLatLonToCartesianArrayResponse)
callRos1Clearpath_localization_msgsConvertLatLonToCartesianArrayRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_localization_msgsConvertLatLonToCartesianArrayRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_localization_msgsConvertLatLonToCartesianArrayResponse
                    R.encodeRos1Clearpath_localization_msgsConvertLatLonToCartesianArrayResponse
                    404 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_localization_msgs/ResetLocalization exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_localization_msgsResetLocalizationRequest ::
    [Word8] ->
    R.Ros1Clearpath_localization_msgsResetLocalizationRequest ->
    IO (Observation R.Ros1Clearpath_localization_msgsResetLocalizationResponse)
callRos1Clearpath_localization_msgsResetLocalizationRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_localization_msgsResetLocalizationRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_localization_msgsResetLocalizationResponse
                    R.encodeRos1Clearpath_localization_msgsResetLocalizationResponse
                    1 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_localization_msgs/SetDatum exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_localization_msgsSetDatumRequest ::
    [Word8] ->
    R.Ros1Clearpath_localization_msgsSetDatumRequest ->
    IO (Observation R.Ros1Clearpath_localization_msgsSetDatumResponse)
callRos1Clearpath_localization_msgsSetDatumRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_localization_msgsSetDatumRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_localization_msgsSetDatumResponse
                    R.encodeRos1Clearpath_localization_msgsSetDatumResponse
                    1 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_logger_msgs/DeleteLog exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_logger_msgsDeleteLogRequest ::
    [Word8] ->
    R.Ros1Clearpath_logger_msgsDeleteLogRequest ->
    IO (Observation R.Ros1Clearpath_logger_msgsDeleteLogResponse)
callRos1Clearpath_logger_msgsDeleteLogRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_logger_msgsDeleteLogRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_logger_msgsDeleteLogResponse
                    R.encodeRos1Clearpath_logger_msgsDeleteLogResponse
                    1 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_logger_msgs/DownloadLog exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_logger_msgsDownloadLogRequest ::
    [Word8] ->
    R.Ros1Clearpath_logger_msgsDownloadLogRequest ->
    IO (Observation R.Ros1Clearpath_logger_msgsDownloadLogResponse)
callRos1Clearpath_logger_msgsDownloadLogRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_logger_msgsDownloadLogRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_logger_msgsDownloadLogResponse
                    R.encodeRos1Clearpath_logger_msgsDownloadLogResponse
                    261 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_logger_msgs/GetAllLogs exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_logger_msgsGetAllLogsRequest ::
    [Word8] ->
    R.Ros1Clearpath_logger_msgsGetAllLogsRequest ->
    IO (Observation R.Ros1Clearpath_logger_msgsGetAllLogsResponse)
callRos1Clearpath_logger_msgsGetAllLogsRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_logger_msgsGetAllLogsRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_logger_msgsGetAllLogsResponse
                    R.encodeRos1Clearpath_logger_msgsGetAllLogsResponse
                    14132 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_logger_msgs/RecordCustomEvent exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_logger_msgsRecordCustomEventRequest ::
    [Word8] ->
    R.Ros1Clearpath_logger_msgsRecordCustomEventRequest ->
    IO (Observation R.Ros1Clearpath_logger_msgsRecordCustomEventResponse)
callRos1Clearpath_logger_msgsRecordCustomEventRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_logger_msgsRecordCustomEventRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_logger_msgsRecordCustomEventResponse
                    R.encodeRos1Clearpath_logger_msgsRecordCustomEventResponse
                    3190 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_logger_msgs/RecordErrorEvent exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_logger_msgsRecordErrorEventRequest ::
    [Word8] ->
    R.Ros1Clearpath_logger_msgsRecordErrorEventRequest ->
    IO (Observation R.Ros1Clearpath_logger_msgsRecordErrorEventResponse)
callRos1Clearpath_logger_msgsRecordErrorEventRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_logger_msgsRecordErrorEventRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_logger_msgsRecordErrorEventResponse
                    R.encodeRos1Clearpath_logger_msgsRecordErrorEventResponse
                    3190 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_logger_msgs/RecordEvent exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_logger_msgsRecordEventRequest ::
    [Word8] ->
    R.Ros1Clearpath_logger_msgsRecordEventRequest ->
    IO (Observation R.Ros1Clearpath_logger_msgsRecordEventResponse)
callRos1Clearpath_logger_msgsRecordEventRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_logger_msgsRecordEventRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_logger_msgsRecordEventResponse
                    R.encodeRos1Clearpath_logger_msgsRecordEventResponse
                    3190 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_logger_msgs/RecordLocationEvent exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_logger_msgsRecordLocationEventRequest ::
    [Word8] ->
    R.Ros1Clearpath_logger_msgsRecordLocationEventRequest ->
    IO (Observation R.Ros1Clearpath_logger_msgsRecordLocationEventResponse)
callRos1Clearpath_logger_msgsRecordLocationEventRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_logger_msgsRecordLocationEventRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_logger_msgsRecordLocationEventResponse
                    R.encodeRos1Clearpath_logger_msgsRecordLocationEventResponse
                    3190 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_logger_msgs/RecordMediaEvent exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_logger_msgsRecordMediaEventRequest ::
    [Word8] ->
    R.Ros1Clearpath_logger_msgsRecordMediaEventRequest ->
    IO (Observation R.Ros1Clearpath_logger_msgsRecordMediaEventResponse)
callRos1Clearpath_logger_msgsRecordMediaEventRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_logger_msgsRecordMediaEventRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_logger_msgsRecordMediaEventResponse
                    R.encodeRos1Clearpath_logger_msgsRecordMediaEventResponse
                    3190 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_logger_msgs/RecordPowerEvent exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_logger_msgsRecordPowerEventRequest ::
    [Word8] ->
    R.Ros1Clearpath_logger_msgsRecordPowerEventRequest ->
    IO (Observation R.Ros1Clearpath_logger_msgsRecordPowerEventResponse)
callRos1Clearpath_logger_msgsRecordPowerEventRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_logger_msgsRecordPowerEventRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_logger_msgsRecordPowerEventResponse
                    R.encodeRos1Clearpath_logger_msgsRecordPowerEventResponse
                    3190 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_logger_msgs/StartRecording exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_logger_msgsStartRecordingRequest ::
    [Word8] ->
    R.Ros1Clearpath_logger_msgsStartRecordingRequest ->
    IO (Observation R.Ros1Clearpath_logger_msgsStartRecordingResponse)
callRos1Clearpath_logger_msgsStartRecordingRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_logger_msgsStartRecordingRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_logger_msgsStartRecordingResponse
                    R.encodeRos1Clearpath_logger_msgsStartRecordingResponse
                    7064 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_logger_msgs/StopRecording exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_logger_msgsStopRecordingRequest ::
    [Word8] ->
    R.Ros1Clearpath_logger_msgsStopRecordingRequest ->
    IO (Observation R.Ros1Clearpath_logger_msgsStopRecordingResponse)
callRos1Clearpath_logger_msgsStopRecordingRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_logger_msgsStopRecordingRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_logger_msgsStopRecordingResponse
                    R.encodeRos1Clearpath_logger_msgsStopRecordingResponse
                    7064 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_mission_manager_msgs/AddNetworkEdge exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsAddNetworkEdgeRequest ::
    [Word8] ->
    R.Ros1Clearpath_mission_manager_msgsAddNetworkEdgeRequest ->
    IO (Observation R.Ros1Clearpath_mission_manager_msgsAddNetworkEdgeResponse)
callRos1Clearpath_mission_manager_msgsAddNetworkEdgeRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_mission_manager_msgsAddNetworkEdgeRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_mission_manager_msgsAddNetworkEdgeResponse
                    R.encodeRos1Clearpath_mission_manager_msgsAddNetworkEdgeResponse
                    1652 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_mission_manager_msgs/AddNetworkPath exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsAddNetworkPathRequest ::
    [Word8] ->
    R.Ros1Clearpath_mission_manager_msgsAddNetworkPathRequest ->
    IO (Observation R.Ros1Clearpath_mission_manager_msgsAddNetworkPathResponse)
callRos1Clearpath_mission_manager_msgsAddNetworkPathRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_mission_manager_msgsAddNetworkPathRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_mission_manager_msgsAddNetworkPathResponse
                    R.encodeRos1Clearpath_mission_manager_msgsAddNetworkPathResponse
                    261 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_mission_manager_msgs/AddNetworkPoint exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsAddNetworkPointRequest ::
    [Word8] ->
    R.Ros1Clearpath_mission_manager_msgsAddNetworkPointRequest ->
    IO (Observation R.Ros1Clearpath_mission_manager_msgsAddNetworkPointResponse)
callRos1Clearpath_mission_manager_msgsAddNetworkPointRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_mission_manager_msgsAddNetworkPointRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_mission_manager_msgsAddNetworkPointResponse
                    R.encodeRos1Clearpath_mission_manager_msgsAddNetworkPointResponse
                    276 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_mission_manager_msgs/AddRemoveById exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsAddRemoveByIdRequest ::
    [Word8] ->
    R.Ros1Clearpath_mission_manager_msgsAddRemoveByIdRequest ->
    IO (Observation R.Ros1Clearpath_mission_manager_msgsAddRemoveByIdResponse)
callRos1Clearpath_mission_manager_msgsAddRemoveByIdRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_mission_manager_msgsAddRemoveByIdRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_mission_manager_msgsAddRemoveByIdResponse
                    R.encodeRos1Clearpath_mission_manager_msgsAddRemoveByIdResponse
                    1 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_mission_manager_msgs/AddRemoveTag exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsAddRemoveTagRequest ::
    [Word8] ->
    R.Ros1Clearpath_mission_manager_msgsAddRemoveTagRequest ->
    IO (Observation R.Ros1Clearpath_mission_manager_msgsAddRemoveTagResponse)
callRos1Clearpath_mission_manager_msgsAddRemoveTagRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_mission_manager_msgsAddRemoveTagRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_mission_manager_msgsAddRemoveTagResponse
                    R.encodeRos1Clearpath_mission_manager_msgsAddRemoveTagResponse
                    524 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_mission_manager_msgs/CloneMission exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsCloneMissionRequest ::
    [Word8] ->
    R.Ros1Clearpath_mission_manager_msgsCloneMissionRequest ->
    IO (Observation R.Ros1Clearpath_mission_manager_msgsCloneMissionResponse)
callRos1Clearpath_mission_manager_msgsCloneMissionRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_mission_manager_msgsCloneMissionRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_mission_manager_msgsCloneMissionResponse
                    R.encodeRos1Clearpath_mission_manager_msgsCloneMissionResponse
                    13336 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_mission_manager_msgs/CloneNetworkMap exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsCloneNetworkMapRequest ::
    [Word8] ->
    R.Ros1Clearpath_mission_manager_msgsCloneNetworkMapRequest ->
    IO (Observation R.Ros1Clearpath_mission_manager_msgsCloneNetworkMapResponse)
callRos1Clearpath_mission_manager_msgsCloneNetworkMapRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_mission_manager_msgsCloneNetworkMapRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_mission_manager_msgsCloneNetworkMapResponse
                    R.encodeRos1Clearpath_mission_manager_msgsCloneNetworkMapResponse
                    2608 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_mission_manager_msgs/CloneNetworkMission exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsCloneNetworkMissionRequest ::
    [Word8] ->
    R.Ros1Clearpath_mission_manager_msgsCloneNetworkMissionRequest ->
    IO (Observation R.Ros1Clearpath_mission_manager_msgsCloneNetworkMissionResponse)
callRos1Clearpath_mission_manager_msgsCloneNetworkMissionRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_mission_manager_msgsCloneNetworkMissionRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_mission_manager_msgsCloneNetworkMissionResponse
                    R.encodeRos1Clearpath_mission_manager_msgsCloneNetworkMissionResponse
                    13606 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_mission_manager_msgs/ClonePointOfInterest exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsClonePointOfInterestRequest ::
    [Word8] ->
    R.Ros1Clearpath_mission_manager_msgsClonePointOfInterestRequest ->
    IO (Observation R.Ros1Clearpath_mission_manager_msgsClonePointOfInterestResponse)
callRos1Clearpath_mission_manager_msgsClonePointOfInterestRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_mission_manager_msgsClonePointOfInterestRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_mission_manager_msgsClonePointOfInterestResponse
                    R.encodeRos1Clearpath_mission_manager_msgsClonePointOfInterestResponse
                    1209 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_mission_manager_msgs/CreateMission exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsCreateMissionRequest ::
    [Word8] ->
    R.Ros1Clearpath_mission_manager_msgsCreateMissionRequest ->
    IO (Observation R.Ros1Clearpath_mission_manager_msgsCreateMissionResponse)
callRos1Clearpath_mission_manager_msgsCreateMissionRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_mission_manager_msgsCreateMissionRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_mission_manager_msgsCreateMissionResponse
                    R.encodeRos1Clearpath_mission_manager_msgsCreateMissionResponse
                    13336 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_mission_manager_msgs/CreateNetworkMap exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsCreateNetworkMapRequest ::
    [Word8] ->
    R.Ros1Clearpath_mission_manager_msgsCreateNetworkMapRequest ->
    IO (Observation R.Ros1Clearpath_mission_manager_msgsCreateNetworkMapResponse)
callRos1Clearpath_mission_manager_msgsCreateNetworkMapRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_mission_manager_msgsCreateNetworkMapRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_mission_manager_msgsCreateNetworkMapResponse
                    R.encodeRos1Clearpath_mission_manager_msgsCreateNetworkMapResponse
                    2608 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_mission_manager_msgs/CreateNetworkMission exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsCreateNetworkMissionRequest ::
    [Word8] ->
    R.Ros1Clearpath_mission_manager_msgsCreateNetworkMissionRequest ->
    IO (Observation R.Ros1Clearpath_mission_manager_msgsCreateNetworkMissionResponse)
callRos1Clearpath_mission_manager_msgsCreateNetworkMissionRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_mission_manager_msgsCreateNetworkMissionRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_mission_manager_msgsCreateNetworkMissionResponse
                    R.encodeRos1Clearpath_mission_manager_msgsCreateNetworkMissionResponse
                    13606 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_mission_manager_msgs/CreatePointOfInterest exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsCreatePointOfInterestRequest ::
    [Word8] ->
    R.Ros1Clearpath_mission_manager_msgsCreatePointOfInterestRequest ->
    IO (Observation R.Ros1Clearpath_mission_manager_msgsCreatePointOfInterestResponse)
callRos1Clearpath_mission_manager_msgsCreatePointOfInterestRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_mission_manager_msgsCreatePointOfInterestRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_mission_manager_msgsCreatePointOfInterestResponse
                    R.encodeRos1Clearpath_mission_manager_msgsCreatePointOfInterestResponse
                    1209 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_mission_manager_msgs/CreateTask exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsCreateTaskRequest ::
    [Word8] ->
    R.Ros1Clearpath_mission_manager_msgsCreateTaskRequest ->
    IO (Observation R.Ros1Clearpath_mission_manager_msgsCreateTaskResponse)
callRos1Clearpath_mission_manager_msgsCreateTaskRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_mission_manager_msgsCreateTaskRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_mission_manager_msgsCreateTaskResponse
                    R.encodeRos1Clearpath_mission_manager_msgsCreateTaskResponse
                    1457 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_mission_manager_msgs/CreateWaypoint exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsCreateWaypointRequest ::
    [Word8] ->
    R.Ros1Clearpath_mission_manager_msgsCreateWaypointRequest ->
    IO (Observation R.Ros1Clearpath_mission_manager_msgsCreateWaypointResponse)
callRos1Clearpath_mission_manager_msgsCreateWaypointRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_mission_manager_msgsCreateWaypointRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_mission_manager_msgsCreateWaypointResponse
                    R.encodeRos1Clearpath_mission_manager_msgsCreateWaypointResponse
                    3350 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_mission_manager_msgs/CreateWaypointFromPoi exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsCreateWaypointFromPoiRequest ::
    [Word8] ->
    R.Ros1Clearpath_mission_manager_msgsCreateWaypointFromPoiRequest ->
    IO (Observation R.Ros1Clearpath_mission_manager_msgsCreateWaypointFromPoiResponse)
callRos1Clearpath_mission_manager_msgsCreateWaypointFromPoiRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_mission_manager_msgsCreateWaypointFromPoiRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_mission_manager_msgsCreateWaypointFromPoiResponse
                    R.encodeRos1Clearpath_mission_manager_msgsCreateWaypointFromPoiResponse
                    3350 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_mission_manager_msgs/DeleteById exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsDeleteByIdRequest ::
    [Word8] ->
    R.Ros1Clearpath_mission_manager_msgsDeleteByIdRequest ->
    IO (Observation R.Ros1Clearpath_mission_manager_msgsDeleteByIdResponse)
callRos1Clearpath_mission_manager_msgsDeleteByIdRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_mission_manager_msgsDeleteByIdRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_mission_manager_msgsDeleteByIdResponse
                    R.encodeRos1Clearpath_mission_manager_msgsDeleteByIdResponse
                    1 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_mission_manager_msgs/DeleteEverything exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsDeleteEverythingRequest ::
    [Word8] ->
    R.Ros1Clearpath_mission_manager_msgsDeleteEverythingRequest ->
    IO (Observation R.Ros1Clearpath_mission_manager_msgsDeleteEverythingResponse)
callRos1Clearpath_mission_manager_msgsDeleteEverythingRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_mission_manager_msgsDeleteEverythingRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_mission_manager_msgsDeleteEverythingResponse
                    R.encodeRos1Clearpath_mission_manager_msgsDeleteEverythingResponse
                    1 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_mission_manager_msgs/DeleteMultiple exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsDeleteMultipleRequest ::
    [Word8] ->
    R.Ros1Clearpath_mission_manager_msgsDeleteMultipleRequest ->
    IO (Observation R.Ros1Clearpath_mission_manager_msgsDeleteMultipleResponse)
callRos1Clearpath_mission_manager_msgsDeleteMultipleRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_mission_manager_msgsDeleteMultipleRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_mission_manager_msgsDeleteMultipleResponse
                    R.encodeRos1Clearpath_mission_manager_msgsDeleteMultipleResponse
                    524 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_mission_manager_msgs/ExportData exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsExportDataRequest ::
    [Word8] ->
    R.Ros1Clearpath_mission_manager_msgsExportDataRequest ->
    IO (Observation R.Ros1Clearpath_mission_manager_msgsExportDataResponse)
callRos1Clearpath_mission_manager_msgsExportDataRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_mission_manager_msgsExportDataRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_mission_manager_msgsExportDataResponse
                    R.encodeRos1Clearpath_mission_manager_msgsExportDataResponse
                    260 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_mission_manager_msgs/GetAllMissions exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsGetAllMissionsRequest ::
    [Word8] ->
    R.Ros1Clearpath_mission_manager_msgsGetAllMissionsRequest ->
    IO (Observation R.Ros1Clearpath_mission_manager_msgsGetAllMissionsResponse)
callRos1Clearpath_mission_manager_msgsGetAllMissionsRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_mission_manager_msgsGetAllMissionsRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_mission_manager_msgsGetAllMissionsResponse
                    R.encodeRos1Clearpath_mission_manager_msgsGetAllMissionsResponse
                    26676 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_mission_manager_msgs/GetAllNetworkMaps exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsGetAllNetworkMapsRequest ::
    [Word8] ->
    R.Ros1Clearpath_mission_manager_msgsGetAllNetworkMapsRequest ->
    IO (Observation R.Ros1Clearpath_mission_manager_msgsGetAllNetworkMapsResponse)
callRos1Clearpath_mission_manager_msgsGetAllNetworkMapsRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_mission_manager_msgsGetAllNetworkMapsRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_mission_manager_msgsGetAllNetworkMapsResponse
                    R.encodeRos1Clearpath_mission_manager_msgsGetAllNetworkMapsResponse
                    5220 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_mission_manager_msgs/GetAllNetworkMissions exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsGetAllNetworkMissionsRequest ::
    [Word8] ->
    R.Ros1Clearpath_mission_manager_msgsGetAllNetworkMissionsRequest ->
    IO (Observation R.Ros1Clearpath_mission_manager_msgsGetAllNetworkMissionsResponse)
callRos1Clearpath_mission_manager_msgsGetAllNetworkMissionsRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_mission_manager_msgsGetAllNetworkMissionsRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_mission_manager_msgsGetAllNetworkMissionsResponse
                    R.encodeRos1Clearpath_mission_manager_msgsGetAllNetworkMissionsResponse
                    27216 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_mission_manager_msgs/GetAllPointsOfInterest exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsGetAllPointsOfInterestRequest ::
    [Word8] ->
    R.Ros1Clearpath_mission_manager_msgsGetAllPointsOfInterestRequest ->
    IO (Observation R.Ros1Clearpath_mission_manager_msgsGetAllPointsOfInterestResponse)
callRos1Clearpath_mission_manager_msgsGetAllPointsOfInterestRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_mission_manager_msgsGetAllPointsOfInterestRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_mission_manager_msgsGetAllPointsOfInterestResponse
                    R.encodeRos1Clearpath_mission_manager_msgsGetAllPointsOfInterestResponse
                    2422 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_mission_manager_msgs/GetAllTasks exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsGetAllTasksRequest ::
    [Word8] ->
    R.Ros1Clearpath_mission_manager_msgsGetAllTasksRequest ->
    IO (Observation R.Ros1Clearpath_mission_manager_msgsGetAllTasksResponse)
callRos1Clearpath_mission_manager_msgsGetAllTasksRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_mission_manager_msgsGetAllTasksRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_mission_manager_msgsGetAllTasksResponse
                    R.encodeRos1Clearpath_mission_manager_msgsGetAllTasksResponse
                    2918 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_mission_manager_msgs/GetAllWaypoints exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsGetAllWaypointsRequest ::
    [Word8] ->
    R.Ros1Clearpath_mission_manager_msgsGetAllWaypointsRequest ->
    IO (Observation R.Ros1Clearpath_mission_manager_msgsGetAllWaypointsResponse)
callRos1Clearpath_mission_manager_msgsGetAllWaypointsRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_mission_manager_msgsGetAllWaypointsRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_mission_manager_msgsGetAllWaypointsResponse
                    R.encodeRos1Clearpath_mission_manager_msgsGetAllWaypointsResponse
                    6704 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_mission_manager_msgs/GetEverything exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsGetEverythingRequest ::
    [Word8] ->
    R.Ros1Clearpath_mission_manager_msgsGetEverythingRequest ->
    IO (Observation R.Ros1Clearpath_mission_manager_msgsGetEverythingResponse)
callRos1Clearpath_mission_manager_msgsGetEverythingRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_mission_manager_msgsGetEverythingRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_mission_manager_msgsGetEverythingResponse
                    R.encodeRos1Clearpath_mission_manager_msgsGetEverythingResponse
                    32768 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_mission_manager_msgs/GetMission exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsGetMissionRequest ::
    [Word8] ->
    R.Ros1Clearpath_mission_manager_msgsGetMissionRequest ->
    IO (Observation R.Ros1Clearpath_mission_manager_msgsGetMissionResponse)
callRos1Clearpath_mission_manager_msgsGetMissionRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_mission_manager_msgsGetMissionRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_mission_manager_msgsGetMissionResponse
                    R.encodeRos1Clearpath_mission_manager_msgsGetMissionResponse
                    13336 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_mission_manager_msgs/GetNetworkMap exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsGetNetworkMapRequest ::
    [Word8] ->
    R.Ros1Clearpath_mission_manager_msgsGetNetworkMapRequest ->
    IO (Observation R.Ros1Clearpath_mission_manager_msgsGetNetworkMapResponse)
callRos1Clearpath_mission_manager_msgsGetNetworkMapRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_mission_manager_msgsGetNetworkMapRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_mission_manager_msgsGetNetworkMapResponse
                    R.encodeRos1Clearpath_mission_manager_msgsGetNetworkMapResponse
                    2608 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_mission_manager_msgs/GetNetworkMission exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsGetNetworkMissionRequest ::
    [Word8] ->
    R.Ros1Clearpath_mission_manager_msgsGetNetworkMissionRequest ->
    IO (Observation R.Ros1Clearpath_mission_manager_msgsGetNetworkMissionResponse)
callRos1Clearpath_mission_manager_msgsGetNetworkMissionRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_mission_manager_msgsGetNetworkMissionRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_mission_manager_msgsGetNetworkMissionResponse
                    R.encodeRos1Clearpath_mission_manager_msgsGetNetworkMissionResponse
                    13606 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_mission_manager_msgs/GetPointOfInterest exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsGetPointOfInterestRequest ::
    [Word8] ->
    R.Ros1Clearpath_mission_manager_msgsGetPointOfInterestRequest ->
    IO (Observation R.Ros1Clearpath_mission_manager_msgsGetPointOfInterestResponse)
callRos1Clearpath_mission_manager_msgsGetPointOfInterestRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_mission_manager_msgsGetPointOfInterestRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_mission_manager_msgsGetPointOfInterestResponse
                    R.encodeRos1Clearpath_mission_manager_msgsGetPointOfInterestResponse
                    1209 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_mission_manager_msgs/GetTask exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsGetTaskRequest ::
    [Word8] ->
    R.Ros1Clearpath_mission_manager_msgsGetTaskRequest ->
    IO (Observation R.Ros1Clearpath_mission_manager_msgsGetTaskResponse)
callRos1Clearpath_mission_manager_msgsGetTaskRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_mission_manager_msgsGetTaskRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_mission_manager_msgsGetTaskResponse
                    R.encodeRos1Clearpath_mission_manager_msgsGetTaskResponse
                    1457 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_mission_manager_msgs/GetWaypoint exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsGetWaypointRequest ::
    [Word8] ->
    R.Ros1Clearpath_mission_manager_msgsGetWaypointRequest ->
    IO (Observation R.Ros1Clearpath_mission_manager_msgsGetWaypointResponse)
callRos1Clearpath_mission_manager_msgsGetWaypointRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_mission_manager_msgsGetWaypointRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_mission_manager_msgsGetWaypointResponse
                    R.encodeRos1Clearpath_mission_manager_msgsGetWaypointResponse
                    3350 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_mission_manager_msgs/ImportData exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsImportDataRequest ::
    [Word8] ->
    R.Ros1Clearpath_mission_manager_msgsImportDataRequest ->
    IO (Observation R.Ros1Clearpath_mission_manager_msgsImportDataResponse)
callRos1Clearpath_mission_manager_msgsImportDataRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_mission_manager_msgsImportDataRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_mission_manager_msgsImportDataResponse
                    R.encodeRos1Clearpath_mission_manager_msgsImportDataResponse
                    32768 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_mission_manager_msgs/ImportMission exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsImportMissionRequest ::
    [Word8] ->
    R.Ros1Clearpath_mission_manager_msgsImportMissionRequest ->
    IO (Observation R.Ros1Clearpath_mission_manager_msgsImportMissionResponse)
callRos1Clearpath_mission_manager_msgsImportMissionRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_mission_manager_msgsImportMissionRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_mission_manager_msgsImportMissionResponse
                    R.encodeRos1Clearpath_mission_manager_msgsImportMissionResponse
                    13336 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_mission_manager_msgs/ImportNetworkMap exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsImportNetworkMapRequest ::
    [Word8] ->
    R.Ros1Clearpath_mission_manager_msgsImportNetworkMapRequest ->
    IO (Observation R.Ros1Clearpath_mission_manager_msgsImportNetworkMapResponse)
callRos1Clearpath_mission_manager_msgsImportNetworkMapRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_mission_manager_msgsImportNetworkMapRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_mission_manager_msgsImportNetworkMapResponse
                    R.encodeRos1Clearpath_mission_manager_msgsImportNetworkMapResponse
                    2608 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_mission_manager_msgs/ImportNetworkMission exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsImportNetworkMissionRequest ::
    [Word8] ->
    R.Ros1Clearpath_mission_manager_msgsImportNetworkMissionRequest ->
    IO (Observation R.Ros1Clearpath_mission_manager_msgsImportNetworkMissionResponse)
callRos1Clearpath_mission_manager_msgsImportNetworkMissionRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_mission_manager_msgsImportNetworkMissionRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_mission_manager_msgsImportNetworkMissionResponse
                    R.encodeRos1Clearpath_mission_manager_msgsImportNetworkMissionResponse
                    13606 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_mission_manager_msgs/SplitNetworkEdge exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsSplitNetworkEdgeRequest ::
    [Word8] ->
    R.Ros1Clearpath_mission_manager_msgsSplitNetworkEdgeRequest ->
    IO (Observation R.Ros1Clearpath_mission_manager_msgsSplitNetworkEdgeResponse)
callRos1Clearpath_mission_manager_msgsSplitNetworkEdgeRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_mission_manager_msgsSplitNetworkEdgeRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_mission_manager_msgsSplitNetworkEdgeResponse
                    R.encodeRos1Clearpath_mission_manager_msgsSplitNetworkEdgeResponse
                    2608 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_mission_manager_msgs/UpdateMission exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsUpdateMissionRequest ::
    [Word8] ->
    R.Ros1Clearpath_mission_manager_msgsUpdateMissionRequest ->
    IO (Observation R.Ros1Clearpath_mission_manager_msgsUpdateMissionResponse)
callRos1Clearpath_mission_manager_msgsUpdateMissionRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_mission_manager_msgsUpdateMissionRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_mission_manager_msgsUpdateMissionResponse
                    R.encodeRos1Clearpath_mission_manager_msgsUpdateMissionResponse
                    13336 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_mission_manager_msgs/UpdateNetworkEdge exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsUpdateNetworkEdgeRequest ::
    [Word8] ->
    R.Ros1Clearpath_mission_manager_msgsUpdateNetworkEdgeRequest ->
    IO (Observation R.Ros1Clearpath_mission_manager_msgsUpdateNetworkEdgeResponse)
callRos1Clearpath_mission_manager_msgsUpdateNetworkEdgeRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_mission_manager_msgsUpdateNetworkEdgeRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_mission_manager_msgsUpdateNetworkEdgeResponse
                    R.encodeRos1Clearpath_mission_manager_msgsUpdateNetworkEdgeResponse
                    824 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_mission_manager_msgs/UpdateNetworkEdges exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsUpdateNetworkEdgesRequest ::
    [Word8] ->
    R.Ros1Clearpath_mission_manager_msgsUpdateNetworkEdgesRequest ->
    IO (Observation R.Ros1Clearpath_mission_manager_msgsUpdateNetworkEdgesResponse)
callRos1Clearpath_mission_manager_msgsUpdateNetworkEdgesRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_mission_manager_msgsUpdateNetworkEdgesRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_mission_manager_msgsUpdateNetworkEdgesResponse
                    R.encodeRos1Clearpath_mission_manager_msgsUpdateNetworkEdgesResponse
                    1652 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_mission_manager_msgs/UpdateNetworkMap exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsUpdateNetworkMapRequest ::
    [Word8] ->
    R.Ros1Clearpath_mission_manager_msgsUpdateNetworkMapRequest ->
    IO (Observation R.Ros1Clearpath_mission_manager_msgsUpdateNetworkMapResponse)
callRos1Clearpath_mission_manager_msgsUpdateNetworkMapRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_mission_manager_msgsUpdateNetworkMapRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_mission_manager_msgsUpdateNetworkMapResponse
                    R.encodeRos1Clearpath_mission_manager_msgsUpdateNetworkMapResponse
                    2608 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_mission_manager_msgs/UpdateNetworkMission exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsUpdateNetworkMissionRequest ::
    [Word8] ->
    R.Ros1Clearpath_mission_manager_msgsUpdateNetworkMissionRequest ->
    IO (Observation R.Ros1Clearpath_mission_manager_msgsUpdateNetworkMissionResponse)
callRos1Clearpath_mission_manager_msgsUpdateNetworkMissionRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_mission_manager_msgsUpdateNetworkMissionRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_mission_manager_msgsUpdateNetworkMissionResponse
                    R.encodeRos1Clearpath_mission_manager_msgsUpdateNetworkMissionResponse
                    13606 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_mission_manager_msgs/UpdateNetworkPoint exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsUpdateNetworkPointRequest ::
    [Word8] ->
    R.Ros1Clearpath_mission_manager_msgsUpdateNetworkPointRequest ->
    IO (Observation R.Ros1Clearpath_mission_manager_msgsUpdateNetworkPointResponse)
callRos1Clearpath_mission_manager_msgsUpdateNetworkPointRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_mission_manager_msgsUpdateNetworkPointRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_mission_manager_msgsUpdateNetworkPointResponse
                    R.encodeRos1Clearpath_mission_manager_msgsUpdateNetworkPointResponse
                    276 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_mission_manager_msgs/UpdateNetworkPoints exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsUpdateNetworkPointsRequest ::
    [Word8] ->
    R.Ros1Clearpath_mission_manager_msgsUpdateNetworkPointsRequest ->
    IO (Observation R.Ros1Clearpath_mission_manager_msgsUpdateNetworkPointsResponse)
callRos1Clearpath_mission_manager_msgsUpdateNetworkPointsRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_mission_manager_msgsUpdateNetworkPointsRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_mission_manager_msgsUpdateNetworkPointsResponse
                    R.encodeRos1Clearpath_mission_manager_msgsUpdateNetworkPointsResponse
                    556 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_mission_manager_msgs/UpdatePointOfInterest exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsUpdatePointOfInterestRequest ::
    [Word8] ->
    R.Ros1Clearpath_mission_manager_msgsUpdatePointOfInterestRequest ->
    IO (Observation R.Ros1Clearpath_mission_manager_msgsUpdatePointOfInterestResponse)
callRos1Clearpath_mission_manager_msgsUpdatePointOfInterestRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_mission_manager_msgsUpdatePointOfInterestRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_mission_manager_msgsUpdatePointOfInterestResponse
                    R.encodeRos1Clearpath_mission_manager_msgsUpdatePointOfInterestResponse
                    1209 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_mission_manager_msgs/UpdateTask exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsUpdateTaskRequest ::
    [Word8] ->
    R.Ros1Clearpath_mission_manager_msgsUpdateTaskRequest ->
    IO (Observation R.Ros1Clearpath_mission_manager_msgsUpdateTaskResponse)
callRos1Clearpath_mission_manager_msgsUpdateTaskRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_mission_manager_msgsUpdateTaskRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_mission_manager_msgsUpdateTaskResponse
                    R.encodeRos1Clearpath_mission_manager_msgsUpdateTaskResponse
                    1457 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_mission_manager_msgs/UpdateWaypoint exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsUpdateWaypointRequest ::
    [Word8] ->
    R.Ros1Clearpath_mission_manager_msgsUpdateWaypointRequest ->
    IO (Observation R.Ros1Clearpath_mission_manager_msgsUpdateWaypointResponse)
callRos1Clearpath_mission_manager_msgsUpdateWaypointRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_mission_manager_msgsUpdateWaypointRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_mission_manager_msgsUpdateWaypointResponse
                    R.encodeRos1Clearpath_mission_manager_msgsUpdateWaypointResponse
                    3350 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_mission_manager_msgs/ValidateNetworkMap exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_manager_msgsValidateNetworkMapRequest ::
    [Word8] ->
    R.Ros1Clearpath_mission_manager_msgsValidateNetworkMapRequest ->
    IO (Observation R.Ros1Clearpath_mission_manager_msgsValidateNetworkMapResponse)
callRos1Clearpath_mission_manager_msgsValidateNetworkMapRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_mission_manager_msgsValidateNetworkMapRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_mission_manager_msgsValidateNetworkMapResponse
                    R.encodeRos1Clearpath_mission_manager_msgsValidateNetworkMapResponse
                    790 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_mission_scheduler_msgs/CloneSchedule exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_scheduler_msgsCloneScheduleRequest ::
    [Word8] ->
    R.Ros1Clearpath_mission_scheduler_msgsCloneScheduleRequest ->
    IO (Observation R.Ros1Clearpath_mission_scheduler_msgsCloneScheduleResponse)
callRos1Clearpath_mission_scheduler_msgsCloneScheduleRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_mission_scheduler_msgsCloneScheduleRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_mission_scheduler_msgsCloneScheduleResponse
                    R.encodeRos1Clearpath_mission_scheduler_msgsCloneScheduleResponse
                    944 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_mission_scheduler_msgs/CreateSchedule exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_scheduler_msgsCreateScheduleRequest ::
    [Word8] ->
    R.Ros1Clearpath_mission_scheduler_msgsCreateScheduleRequest ->
    IO (Observation R.Ros1Clearpath_mission_scheduler_msgsCreateScheduleResponse)
callRos1Clearpath_mission_scheduler_msgsCreateScheduleRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_mission_scheduler_msgsCreateScheduleRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_mission_scheduler_msgsCreateScheduleResponse
                    R.encodeRos1Clearpath_mission_scheduler_msgsCreateScheduleResponse
                    944 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_mission_scheduler_msgs/EnableSchedule exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_scheduler_msgsEnableScheduleRequest ::
    [Word8] ->
    R.Ros1Clearpath_mission_scheduler_msgsEnableScheduleRequest ->
    IO (Observation R.Ros1Clearpath_mission_scheduler_msgsEnableScheduleResponse)
callRos1Clearpath_mission_scheduler_msgsEnableScheduleRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_mission_scheduler_msgsEnableScheduleRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_mission_scheduler_msgsEnableScheduleResponse
                    R.encodeRos1Clearpath_mission_scheduler_msgsEnableScheduleResponse
                    1 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_mission_scheduler_msgs/ExportData exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_scheduler_msgsExportDataRequest ::
    [Word8] ->
    R.Ros1Clearpath_mission_scheduler_msgsExportDataRequest ->
    IO (Observation R.Ros1Clearpath_mission_scheduler_msgsExportDataResponse)
callRos1Clearpath_mission_scheduler_msgsExportDataRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_mission_scheduler_msgsExportDataRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_mission_scheduler_msgsExportDataResponse
                    R.encodeRos1Clearpath_mission_scheduler_msgsExportDataResponse
                    260 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_mission_scheduler_msgs/GetAllSchedules exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_scheduler_msgsGetAllSchedulesRequest ::
    [Word8] ->
    R.Ros1Clearpath_mission_scheduler_msgsGetAllSchedulesRequest ->
    IO (Observation R.Ros1Clearpath_mission_scheduler_msgsGetAllSchedulesResponse)
callRos1Clearpath_mission_scheduler_msgsGetAllSchedulesRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_mission_scheduler_msgsGetAllSchedulesRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_mission_scheduler_msgsGetAllSchedulesResponse
                    R.encodeRos1Clearpath_mission_scheduler_msgsGetAllSchedulesResponse
                    1892 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_mission_scheduler_msgs/GetNextSchedule exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_scheduler_msgsGetNextScheduleRequest ::
    [Word8] ->
    R.Ros1Clearpath_mission_scheduler_msgsGetNextScheduleRequest ->
    IO (Observation R.Ros1Clearpath_mission_scheduler_msgsGetNextScheduleResponse)
callRos1Clearpath_mission_scheduler_msgsGetNextScheduleRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_mission_scheduler_msgsGetNextScheduleRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_mission_scheduler_msgsGetNextScheduleResponse
                    R.encodeRos1Clearpath_mission_scheduler_msgsGetNextScheduleResponse
                    268 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_mission_scheduler_msgs/GetSchedule exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_scheduler_msgsGetScheduleRequest ::
    [Word8] ->
    R.Ros1Clearpath_mission_scheduler_msgsGetScheduleRequest ->
    IO (Observation R.Ros1Clearpath_mission_scheduler_msgsGetScheduleResponse)
callRos1Clearpath_mission_scheduler_msgsGetScheduleRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_mission_scheduler_msgsGetScheduleRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_mission_scheduler_msgsGetScheduleResponse
                    R.encodeRos1Clearpath_mission_scheduler_msgsGetScheduleResponse
                    944 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_mission_scheduler_msgs/ImportData exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_scheduler_msgsImportDataRequest ::
    [Word8] ->
    R.Ros1Clearpath_mission_scheduler_msgsImportDataRequest ->
    IO (Observation R.Ros1Clearpath_mission_scheduler_msgsImportDataResponse)
callRos1Clearpath_mission_scheduler_msgsImportDataRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_mission_scheduler_msgsImportDataRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_mission_scheduler_msgsImportDataResponse
                    R.encodeRos1Clearpath_mission_scheduler_msgsImportDataResponse
                    1892 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_mission_scheduler_msgs/UpdateSchedule exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_mission_scheduler_msgsUpdateScheduleRequest ::
    [Word8] ->
    R.Ros1Clearpath_mission_scheduler_msgsUpdateScheduleRequest ->
    IO (Observation R.Ros1Clearpath_mission_scheduler_msgsUpdateScheduleResponse)
callRos1Clearpath_mission_scheduler_msgsUpdateScheduleRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_mission_scheduler_msgsUpdateScheduleRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_mission_scheduler_msgsUpdateScheduleResponse
                    R.encodeRos1Clearpath_mission_scheduler_msgsUpdateScheduleResponse
                    944 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_navigation_msgs/AutonomyTaskSrv exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_navigation_msgsAutonomyTaskSrvRequest ::
    [Word8] ->
    R.Ros1Clearpath_navigation_msgsAutonomyTaskSrvRequest ->
    IO (Observation R.Ros1Clearpath_navigation_msgsAutonomyTaskSrvResponse)
callRos1Clearpath_navigation_msgsAutonomyTaskSrvRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_navigation_msgsAutonomyTaskSrvRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_navigation_msgsAutonomyTaskSrvResponse
                    R.encodeRos1Clearpath_navigation_msgsAutonomyTaskSrvResponse
                    2 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_navigation_msgs/SetDelayCompensation exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_navigation_msgsSetDelayCompensationRequest ::
    [Word8] ->
    R.Ros1Clearpath_navigation_msgsSetDelayCompensationRequest ->
    IO (Observation R.Ros1Clearpath_navigation_msgsSetDelayCompensationResponse)
callRos1Clearpath_navigation_msgsSetDelayCompensationRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_navigation_msgsSetDelayCompensationRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_navigation_msgsSetDelayCompensationResponse
                    R.encodeRos1Clearpath_navigation_msgsSetDelayCompensationResponse
                    261 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_navigation_msgs/SetPathShifter exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_navigation_msgsSetPathShifterRequest ::
    [Word8] ->
    R.Ros1Clearpath_navigation_msgsSetPathShifterRequest ->
    IO (Observation R.Ros1Clearpath_navigation_msgsSetPathShifterResponse)
callRos1Clearpath_navigation_msgsSetPathShifterRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_navigation_msgsSetPathShifterRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_navigation_msgsSetPathShifterResponse
                    R.encodeRos1Clearpath_navigation_msgsSetPathShifterResponse
                    261 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_navigation_msgs/SetPathSmoother exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_navigation_msgsSetPathSmootherRequest ::
    [Word8] ->
    R.Ros1Clearpath_navigation_msgsSetPathSmootherRequest ->
    IO (Observation R.Ros1Clearpath_navigation_msgsSetPathSmootherResponse)
callRos1Clearpath_navigation_msgsSetPathSmootherRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_navigation_msgsSetPathSmootherRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_navigation_msgsSetPathSmootherResponse
                    R.encodeRos1Clearpath_navigation_msgsSetPathSmootherResponse
                    261 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_navigation_msgs/SetStopDistance exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_navigation_msgsSetStopDistanceRequest ::
    [Word8] ->
    R.Ros1Clearpath_navigation_msgsSetStopDistanceRequest ->
    IO (Observation R.Ros1Clearpath_navigation_msgsSetStopDistanceResponse)
callRos1Clearpath_navigation_msgsSetStopDistanceRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_navigation_msgsSetStopDistanceRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_navigation_msgsSetStopDistanceResponse
                    R.encodeRos1Clearpath_navigation_msgsSetStopDistanceResponse
                    261 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_safety_msgs/AddCommunicationWatchdog exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_safety_msgsAddCommunicationWatchdogRequest ::
    [Word8] ->
    R.Ros1Clearpath_safety_msgsAddCommunicationWatchdogRequest ->
    IO (Observation R.Ros1Clearpath_safety_msgsAddCommunicationWatchdogResponse)
callRos1Clearpath_safety_msgsAddCommunicationWatchdogRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_safety_msgsAddCommunicationWatchdogRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_safety_msgsAddCommunicationWatchdogResponse
                    R.encodeRos1Clearpath_safety_msgsAddCommunicationWatchdogResponse
                    1 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_safety_msgs/AddHeartbeatWatchdog exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_safety_msgsAddHeartbeatWatchdogRequest ::
    [Word8] ->
    R.Ros1Clearpath_safety_msgsAddHeartbeatWatchdogRequest ->
    IO (Observation R.Ros1Clearpath_safety_msgsAddHeartbeatWatchdogResponse)
callRos1Clearpath_safety_msgsAddHeartbeatWatchdogRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_safety_msgsAddHeartbeatWatchdogRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_safety_msgsAddHeartbeatWatchdogResponse
                    R.encodeRos1Clearpath_safety_msgsAddHeartbeatWatchdogResponse
                    1 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_safety_msgs/AddInclinationWatchdog exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_safety_msgsAddInclinationWatchdogRequest ::
    [Word8] ->
    R.Ros1Clearpath_safety_msgsAddInclinationWatchdogRequest ->
    IO (Observation R.Ros1Clearpath_safety_msgsAddInclinationWatchdogResponse)
callRos1Clearpath_safety_msgsAddInclinationWatchdogRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_safety_msgsAddInclinationWatchdogRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_safety_msgsAddInclinationWatchdogResponse
                    R.encodeRos1Clearpath_safety_msgsAddInclinationWatchdogResponse
                    1 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_safety_msgs/AddNodeStatusWatchdog exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_safety_msgsAddNodeStatusWatchdogRequest ::
    [Word8] ->
    R.Ros1Clearpath_safety_msgsAddNodeStatusWatchdogRequest ->
    IO (Observation R.Ros1Clearpath_safety_msgsAddNodeStatusWatchdogResponse)
callRos1Clearpath_safety_msgsAddNodeStatusWatchdogRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_safety_msgsAddNodeStatusWatchdogRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_safety_msgsAddNodeStatusWatchdogResponse
                    R.encodeRos1Clearpath_safety_msgsAddNodeStatusWatchdogResponse
                    1 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_safety_msgs/AddNodeletStatusWatchdog exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_safety_msgsAddNodeletStatusWatchdogRequest ::
    [Word8] ->
    R.Ros1Clearpath_safety_msgsAddNodeletStatusWatchdogRequest ->
    IO (Observation R.Ros1Clearpath_safety_msgsAddNodeletStatusWatchdogResponse)
callRos1Clearpath_safety_msgsAddNodeletStatusWatchdogRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_safety_msgsAddNodeletStatusWatchdogRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_safety_msgsAddNodeletStatusWatchdogResponse
                    R.encodeRos1Clearpath_safety_msgsAddNodeletStatusWatchdogResponse
                    1 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_safety_msgs/AddNumPointsWatchdog exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_safety_msgsAddNumPointsWatchdogRequest ::
    [Word8] ->
    R.Ros1Clearpath_safety_msgsAddNumPointsWatchdogRequest ->
    IO (Observation R.Ros1Clearpath_safety_msgsAddNumPointsWatchdogResponse)
callRos1Clearpath_safety_msgsAddNumPointsWatchdogRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_safety_msgsAddNumPointsWatchdogRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_safety_msgsAddNumPointsWatchdogResponse
                    R.encodeRos1Clearpath_safety_msgsAddNumPointsWatchdogResponse
                    1 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_safety_msgs/AddOdomCovarianceWatchdog exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_safety_msgsAddOdomCovarianceWatchdogRequest ::
    [Word8] ->
    R.Ros1Clearpath_safety_msgsAddOdomCovarianceWatchdogRequest ->
    IO (Observation R.Ros1Clearpath_safety_msgsAddOdomCovarianceWatchdogResponse)
callRos1Clearpath_safety_msgsAddOdomCovarianceWatchdogRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_safety_msgsAddOdomCovarianceWatchdogRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_safety_msgsAddOdomCovarianceWatchdogResponse
                    R.encodeRos1Clearpath_safety_msgsAddOdomCovarianceWatchdogResponse
                    1 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_safety_msgs/AddRtkFixWatchdog exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_safety_msgsAddRtkFixWatchdogRequest ::
    [Word8] ->
    R.Ros1Clearpath_safety_msgsAddRtkFixWatchdogRequest ->
    IO (Observation R.Ros1Clearpath_safety_msgsAddRtkFixWatchdogResponse)
callRos1Clearpath_safety_msgsAddRtkFixWatchdogRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_safety_msgsAddRtkFixWatchdogRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_safety_msgsAddRtkFixWatchdogResponse
                    R.encodeRos1Clearpath_safety_msgsAddRtkFixWatchdogResponse
                    1 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_safety_msgs/AddTopicDataWatchdog exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_safety_msgsAddTopicDataWatchdogRequest ::
    [Word8] ->
    R.Ros1Clearpath_safety_msgsAddTopicDataWatchdogRequest ->
    IO (Observation R.Ros1Clearpath_safety_msgsAddTopicDataWatchdogResponse)
callRos1Clearpath_safety_msgsAddTopicDataWatchdogRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_safety_msgsAddTopicDataWatchdogRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_safety_msgsAddTopicDataWatchdogResponse
                    R.encodeRos1Clearpath_safety_msgsAddTopicDataWatchdogResponse
                    1 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_safety_msgs/RemoveWatchdog exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_safety_msgsRemoveWatchdogRequest ::
    [Word8] ->
    R.Ros1Clearpath_safety_msgsRemoveWatchdogRequest ->
    IO (Observation R.Ros1Clearpath_safety_msgsRemoveWatchdogResponse)
callRos1Clearpath_safety_msgsRemoveWatchdogRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_safety_msgsRemoveWatchdogRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_safety_msgsRemoveWatchdogResponse
                    R.encodeRos1Clearpath_safety_msgsRemoveWatchdogResponse
                    1 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_safety_msgs/UpdateCommunicationWatchdog exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_safety_msgsUpdateCommunicationWatchdogRequest ::
    [Word8] ->
    R.Ros1Clearpath_safety_msgsUpdateCommunicationWatchdogRequest ->
    IO (Observation R.Ros1Clearpath_safety_msgsUpdateCommunicationWatchdogResponse)
callRos1Clearpath_safety_msgsUpdateCommunicationWatchdogRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_safety_msgsUpdateCommunicationWatchdogRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_safety_msgsUpdateCommunicationWatchdogResponse
                    R.encodeRos1Clearpath_safety_msgsUpdateCommunicationWatchdogResponse
                    1 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_safety_msgs/UpdateHeartbeatWatchdog exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_safety_msgsUpdateHeartbeatWatchdogRequest ::
    [Word8] ->
    R.Ros1Clearpath_safety_msgsUpdateHeartbeatWatchdogRequest ->
    IO (Observation R.Ros1Clearpath_safety_msgsUpdateHeartbeatWatchdogResponse)
callRos1Clearpath_safety_msgsUpdateHeartbeatWatchdogRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_safety_msgsUpdateHeartbeatWatchdogRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_safety_msgsUpdateHeartbeatWatchdogResponse
                    R.encodeRos1Clearpath_safety_msgsUpdateHeartbeatWatchdogResponse
                    1 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_safety_msgs/UpdateInclinationWatchdog exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_safety_msgsUpdateInclinationWatchdogRequest ::
    [Word8] ->
    R.Ros1Clearpath_safety_msgsUpdateInclinationWatchdogRequest ->
    IO (Observation R.Ros1Clearpath_safety_msgsUpdateInclinationWatchdogResponse)
callRos1Clearpath_safety_msgsUpdateInclinationWatchdogRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_safety_msgsUpdateInclinationWatchdogRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_safety_msgsUpdateInclinationWatchdogResponse
                    R.encodeRos1Clearpath_safety_msgsUpdateInclinationWatchdogResponse
                    1 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_safety_msgs/UpdateNodeStatusWatchdog exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_safety_msgsUpdateNodeStatusWatchdogRequest ::
    [Word8] ->
    R.Ros1Clearpath_safety_msgsUpdateNodeStatusWatchdogRequest ->
    IO (Observation R.Ros1Clearpath_safety_msgsUpdateNodeStatusWatchdogResponse)
callRos1Clearpath_safety_msgsUpdateNodeStatusWatchdogRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_safety_msgsUpdateNodeStatusWatchdogRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_safety_msgsUpdateNodeStatusWatchdogResponse
                    R.encodeRos1Clearpath_safety_msgsUpdateNodeStatusWatchdogResponse
                    1 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_safety_msgs/UpdateNodeletStatusWatchdog exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_safety_msgsUpdateNodeletStatusWatchdogRequest ::
    [Word8] ->
    R.Ros1Clearpath_safety_msgsUpdateNodeletStatusWatchdogRequest ->
    IO (Observation R.Ros1Clearpath_safety_msgsUpdateNodeletStatusWatchdogResponse)
callRos1Clearpath_safety_msgsUpdateNodeletStatusWatchdogRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_safety_msgsUpdateNodeletStatusWatchdogRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_safety_msgsUpdateNodeletStatusWatchdogResponse
                    R.encodeRos1Clearpath_safety_msgsUpdateNodeletStatusWatchdogResponse
                    1 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_safety_msgs/UpdateNumPointsWatchdog exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_safety_msgsUpdateNumPointsWatchdogRequest ::
    [Word8] ->
    R.Ros1Clearpath_safety_msgsUpdateNumPointsWatchdogRequest ->
    IO (Observation R.Ros1Clearpath_safety_msgsUpdateNumPointsWatchdogResponse)
callRos1Clearpath_safety_msgsUpdateNumPointsWatchdogRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_safety_msgsUpdateNumPointsWatchdogRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_safety_msgsUpdateNumPointsWatchdogResponse
                    R.encodeRos1Clearpath_safety_msgsUpdateNumPointsWatchdogResponse
                    1 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_safety_msgs/UpdateOdomCovarianceWatchdog exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_safety_msgsUpdateOdomCovarianceWatchdogRequest ::
    [Word8] ->
    R.Ros1Clearpath_safety_msgsUpdateOdomCovarianceWatchdogRequest ->
    IO (Observation R.Ros1Clearpath_safety_msgsUpdateOdomCovarianceWatchdogResponse)
callRos1Clearpath_safety_msgsUpdateOdomCovarianceWatchdogRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_safety_msgsUpdateOdomCovarianceWatchdogRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_safety_msgsUpdateOdomCovarianceWatchdogResponse
                    R.encodeRos1Clearpath_safety_msgsUpdateOdomCovarianceWatchdogResponse
                    1 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_safety_msgs/UpdateRtkFixWatchdog exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_safety_msgsUpdateRtkFixWatchdogRequest ::
    [Word8] ->
    R.Ros1Clearpath_safety_msgsUpdateRtkFixWatchdogRequest ->
    IO (Observation R.Ros1Clearpath_safety_msgsUpdateRtkFixWatchdogResponse)
callRos1Clearpath_safety_msgsUpdateRtkFixWatchdogRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_safety_msgsUpdateRtkFixWatchdogRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_safety_msgsUpdateRtkFixWatchdogResponse
                    R.encodeRos1Clearpath_safety_msgsUpdateRtkFixWatchdogResponse
                    1 aliasBytes 1 bytes
                pure result

-- @brief Call complete clearpath_safety_msgs/UpdateTopicDataWatchdog exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos1Clearpath_safety_msgsUpdateTopicDataWatchdogRequest ::
    [Word8] ->
    R.Ros1Clearpath_safety_msgsUpdateTopicDataWatchdogRequest ->
    IO (Observation R.Ros1Clearpath_safety_msgsUpdateTopicDataWatchdogResponse)
callRos1Clearpath_safety_msgsUpdateTopicDataWatchdogRequest aliasBytes requestValue
    | otherwise = case R.encodeRos1Clearpath_safety_msgsUpdateTopicDataWatchdogRequest requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos1Clearpath_safety_msgsUpdateTopicDataWatchdogResponse
                    R.encodeRos1Clearpath_safety_msgsUpdateTopicDataWatchdogResponse
                    1 aliasBytes 1 bytes
                pure result
