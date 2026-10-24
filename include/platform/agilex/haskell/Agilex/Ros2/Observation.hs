-- | @file Observation.hs
-- @brief Typed complete agilex observers and service clients.
module Agilex.Ros2.Observation where
import Data.Word
import Native.Observation
import qualified Agilex.Ros2.Records as R
-- | @brief Observe every original builtin_interfaces/msg/Time field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos2Builtin_interfacesMsgTime :: [Word8] -> Word32 -> IO (Observation R.Ros2Builtin_interfacesMsgTime)
waitRos2Builtin_interfacesMsgTime =
    receive
        R.decodeRos2Builtin_interfacesMsgTime
        R.encodeRos2Builtin_interfacesMsgTime
        8

-- | @brief Observe every original geometry_msgs/msg/Point field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos2Geometry_msgsMsgPoint :: [Word8] -> Word32 -> IO (Observation R.Ros2Geometry_msgsMsgPoint)
waitRos2Geometry_msgsMsgPoint =
    receive
        R.decodeRos2Geometry_msgsMsgPoint
        R.encodeRos2Geometry_msgsMsgPoint
        24

-- | @brief Observe every original geometry_msgs/msg/Pose field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos2Geometry_msgsMsgPose :: [Word8] -> Word32 -> IO (Observation R.Ros2Geometry_msgsMsgPose)
waitRos2Geometry_msgsMsgPose =
    receive
        R.decodeRos2Geometry_msgsMsgPose
        R.encodeRos2Geometry_msgsMsgPose
        56

-- | @brief Observe every original geometry_msgs/msg/PoseWithCovariance field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos2Geometry_msgsMsgPoseWithCovariance :: [Word8] -> Word32 -> IO (Observation R.Ros2Geometry_msgsMsgPoseWithCovariance)
waitRos2Geometry_msgsMsgPoseWithCovariance =
    receive
        R.decodeRos2Geometry_msgsMsgPoseWithCovariance
        R.encodeRos2Geometry_msgsMsgPoseWithCovariance
        344

-- | @brief Observe every original geometry_msgs/msg/Quaternion field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos2Geometry_msgsMsgQuaternion :: [Word8] -> Word32 -> IO (Observation R.Ros2Geometry_msgsMsgQuaternion)
waitRos2Geometry_msgsMsgQuaternion =
    receive
        R.decodeRos2Geometry_msgsMsgQuaternion
        R.encodeRos2Geometry_msgsMsgQuaternion
        32

-- | @brief Observe every original geometry_msgs/msg/Twist field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos2Geometry_msgsMsgTwist :: [Word8] -> Word32 -> IO (Observation R.Ros2Geometry_msgsMsgTwist)
waitRos2Geometry_msgsMsgTwist =
    receive
        R.decodeRos2Geometry_msgsMsgTwist
        R.encodeRos2Geometry_msgsMsgTwist
        48

-- | @brief Observe every original geometry_msgs/msg/TwistWithCovariance field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos2Geometry_msgsMsgTwistWithCovariance :: [Word8] -> Word32 -> IO (Observation R.Ros2Geometry_msgsMsgTwistWithCovariance)
waitRos2Geometry_msgsMsgTwistWithCovariance =
    receive
        R.decodeRos2Geometry_msgsMsgTwistWithCovariance
        R.encodeRos2Geometry_msgsMsgTwistWithCovariance
        336

-- | @brief Observe every original geometry_msgs/msg/Vector3 field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos2Geometry_msgsMsgVector3 :: [Word8] -> Word32 -> IO (Observation R.Ros2Geometry_msgsMsgVector3)
waitRos2Geometry_msgsMsgVector3 =
    receive
        R.decodeRos2Geometry_msgsMsgVector3
        R.encodeRos2Geometry_msgsMsgVector3
        24

-- | @brief Observe every original nav_msgs/msg/Odometry field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos2Nav_msgsMsgOdometry :: [Word8] -> Word32 -> IO (Observation R.Ros2Nav_msgsMsgOdometry)
waitRos2Nav_msgsMsgOdometry =
    receive
        R.decodeRos2Nav_msgsMsgOdometry
        R.encodeRos2Nav_msgsMsgOdometry
        952

-- | @brief Observe every original scout_msgs/msg/ScoutActuatorState field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos2Scout_msgsMsgScoutActuatorState :: [Word8] -> Word32 -> IO (Observation R.Ros2Scout_msgsMsgScoutActuatorState)
waitRos2Scout_msgsMsgScoutActuatorState =
    receive
        R.decodeRos2Scout_msgsMsgScoutActuatorState
        R.encodeRos2Scout_msgsMsgScoutActuatorState
        19

-- | @brief Observe every original scout_msgs/msg/ScoutLightCmd field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos2Scout_msgsMsgScoutLightCmd :: [Word8] -> Word32 -> IO (Observation R.Ros2Scout_msgsMsgScoutLightCmd)
waitRos2Scout_msgsMsgScoutLightCmd =
    receive
        R.decodeRos2Scout_msgsMsgScoutLightCmd
        R.encodeRos2Scout_msgsMsgScoutLightCmd
        5

-- | @brief Observe every original scout_msgs/msg/ScoutLightState field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos2Scout_msgsMsgScoutLightState :: [Word8] -> Word32 -> IO (Observation R.Ros2Scout_msgsMsgScoutLightState)
waitRos2Scout_msgsMsgScoutLightState =
    receive
        R.decodeRos2Scout_msgsMsgScoutLightState
        R.encodeRos2Scout_msgsMsgScoutLightState
        2

-- | @brief Observe every original scout_msgs/msg/ScoutRCState field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos2Scout_msgsMsgScoutRCState :: [Word8] -> Word32 -> IO (Observation R.Ros2Scout_msgsMsgScoutRCState)
waitRos2Scout_msgsMsgScoutRCState =
    receive
        R.decodeRos2Scout_msgsMsgScoutRCState
        R.encodeRos2Scout_msgsMsgScoutRCState
        9

-- | @brief Observe every original scout_msgs/msg/ScoutStatus field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos2Scout_msgsMsgScoutStatus :: [Word8] -> Word32 -> IO (Observation R.Ros2Scout_msgsMsgScoutStatus)
waitRos2Scout_msgsMsgScoutStatus =
    receive
        R.decodeRos2Scout_msgsMsgScoutStatus
        R.encodeRos2Scout_msgsMsgScoutStatus
        249

-- | @brief Observe every original std_msgs/msg/Header field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos2Std_msgsMsgHeader :: [Word8] -> Word32 -> IO (Observation R.Ros2Std_msgsMsgHeader)
waitRos2Std_msgsMsgHeader =
    receive
        R.decodeRos2Std_msgsMsgHeader
        R.encodeRos2Std_msgsMsgHeader
        140
