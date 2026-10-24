-- | @file Observation.hs
-- @brief Represent the complete original YASKAWA ROS 2 canonical value catalog.
-- @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
-- fields, original constants and native defaults; field units and frames follow the retained
-- definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
-- native ROS objects; importing them grants no transport alias.
-- | @brief Observe complete original Yaskawa ROS 2 messages in genuine Haskell.
-- @details All values own their bytes; successful acquisitions close exactly once.
module YASKAWA.Ros2.Observation where
import Data.Word
import Ros.Observation
import qualified YASKAWA.Ros2.Records as R

-- | @brief Observe every original industrial_msgs/msg/RobotStatus field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRobotStatus :: [Word8] -> Word32 -> IO (Observation R.Ros2Industrial_msgsMsgRobotStatus)
waitRobotStatus =
    receive
        R.decodeRos2Industrial_msgsMsgRobotStatus
        R.encodeRos2Industrial_msgsMsgRobotStatus
        150

-- | @brief Observe every original sensor_msgs/msg/JointState field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitJointState :: [Word8] -> Word32 -> IO (Observation R.Ros2Sensor_msgsMsgJointState)
waitJointState =
    receive
        R.decodeRos2Sensor_msgsMsgJointState
        R.encodeRos2Sensor_msgsMsgJointState
        1196

-- | @brief Observe every original motoros2_interfaces/msg/AlarmInfo field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitAlarmInfo :: [Word8] -> Word32 -> IO (Observation R.Ros2Motoros2_interfacesMsgAlarmInfo)
waitAlarmInfo =
    receive
        R.decodeRos2Motoros2_interfacesMsgAlarmInfo
        R.encodeRos2Motoros2_interfacesMsgAlarmInfo
        25248

