-- | @file Observation.hs
-- @brief Typed complete agilex observers and service clients.
module Agilex.Ros1.Observation where
import Data.Word
import Native.Observation
import qualified Agilex.Ros1.Records as R
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
        956

-- | @brief Observe every original scout_msgs/ScoutBmsStatus field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Scout_msgsScoutBmsStatus :: [Word8] -> Word32 -> IO (Observation R.Ros1Scout_msgsScoutBmsStatus)
waitRos1Scout_msgsScoutBmsStatus =
    receive
        R.decodeRos1Scout_msgsScoutBmsStatus
        R.encodeRos1Scout_msgsScoutBmsStatus
        44

-- | @brief Observe every original scout_msgs/ScoutDriverState field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Scout_msgsScoutDriverState :: [Word8] -> Word32 -> IO (Observation R.Ros1Scout_msgsScoutDriverState)
waitRos1Scout_msgsScoutDriverState =
    receive
        R.decodeRos1Scout_msgsScoutDriverState
        R.encodeRos1Scout_msgsScoutDriverState
        17

-- | @brief Observe every original scout_msgs/ScoutLightCmd field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Scout_msgsScoutLightCmd :: [Word8] -> Word32 -> IO (Observation R.Ros1Scout_msgsScoutLightCmd)
waitRos1Scout_msgsScoutLightCmd =
    receive
        R.decodeRos1Scout_msgsScoutLightCmd
        R.encodeRos1Scout_msgsScoutLightCmd
        5

-- | @brief Observe every original scout_msgs/ScoutLightState field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Scout_msgsScoutLightState :: [Word8] -> Word32 -> IO (Observation R.Ros1Scout_msgsScoutLightState)
waitRos1Scout_msgsScoutLightState =
    receive
        R.decodeRos1Scout_msgsScoutLightState
        R.encodeRos1Scout_msgsScoutLightState
        2

-- | @brief Observe every original scout_msgs/ScoutMotorState field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Scout_msgsScoutMotorState :: [Word8] -> Word32 -> IO (Observation R.Ros1Scout_msgsScoutMotorState)
waitRos1Scout_msgsScoutMotorState =
    receive
        R.decodeRos1Scout_msgsScoutMotorState
        R.encodeRos1Scout_msgsScoutMotorState
        32

-- | @brief Observe every original scout_msgs/ScoutRsStatus field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Scout_msgsScoutRsStatus :: [Word8] -> Word32 -> IO (Observation R.Ros1Scout_msgsScoutRsStatus)
waitRos1Scout_msgsScoutRsStatus =
    receive
        R.decodeRos1Scout_msgsScoutRsStatus
        R.encodeRos1Scout_msgsScoutRsStatus
        153

-- | @brief Observe every original scout_msgs/ScoutStatus field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos1Scout_msgsScoutStatus :: [Word8] -> Word32 -> IO (Observation R.Ros1Scout_msgsScoutStatus)
waitRos1Scout_msgsScoutStatus =
    receive
        R.decodeRos1Scout_msgsScoutStatus
        R.encodeRos1Scout_msgsScoutStatus
        381

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
