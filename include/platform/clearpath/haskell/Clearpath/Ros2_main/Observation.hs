-- | @file Observation.hs
-- @brief Typed complete clearpath observers and service clients.
module Clearpath.Ros2_main.Observation where
import Data.Word
import Native.Observation
import qualified Clearpath.Ros2_main.Records as R
-- | @brief Observe every original builtin_interfaces/msg/Duration field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos2Builtin_interfacesMsgDuration :: [Word8] -> Word32 -> IO (Observation R.Ros2Builtin_interfacesMsgDuration)
waitRos2Builtin_interfacesMsgDuration =
    receive
        R.decodeRos2Builtin_interfacesMsgDuration
        R.encodeRos2Builtin_interfacesMsgDuration
        8

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

-- | @brief Observe every original clearpath_platform_msgs/msg/Drive field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos2Clearpath_platform_msgsMsgDrive :: [Word8] -> Word32 -> IO (Observation R.Ros2Clearpath_platform_msgsMsgDrive)
waitRos2Clearpath_platform_msgsMsgDrive =
    receive
        R.decodeRos2Clearpath_platform_msgsMsgDrive
        R.encodeRos2Clearpath_platform_msgsMsgDrive
        9

-- | @brief Observe every original clearpath_platform_msgs/msg/DriveFeedback field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos2Clearpath_platform_msgsMsgDriveFeedback :: [Word8] -> Word32 -> IO (Observation R.Ros2Clearpath_platform_msgsMsgDriveFeedback)
waitRos2Clearpath_platform_msgsMsgDriveFeedback =
    receive
        R.decodeRos2Clearpath_platform_msgsMsgDriveFeedback
        R.encodeRos2Clearpath_platform_msgsMsgDriveFeedback
        25

-- | @brief Observe every original clearpath_platform_msgs/msg/Fans field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos2Clearpath_platform_msgsMsgFans :: [Word8] -> Word32 -> IO (Observation R.Ros2Clearpath_platform_msgsMsgFans)
waitRos2Clearpath_platform_msgsMsgFans =
    receive
        R.decodeRos2Clearpath_platform_msgsMsgFans
        R.encodeRos2Clearpath_platform_msgsMsgFans
        6

-- | @brief Observe every original clearpath_platform_msgs/msg/Feedback field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos2Clearpath_platform_msgsMsgFeedback :: [Word8] -> Word32 -> IO (Observation R.Ros2Clearpath_platform_msgsMsgFeedback)
waitRos2Clearpath_platform_msgsMsgFeedback =
    receive
        R.decodeRos2Clearpath_platform_msgsMsgFeedback
        R.encodeRos2Clearpath_platform_msgsMsgFeedback
        192

-- | @brief Observe every original clearpath_platform_msgs/msg/Lights field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos2Clearpath_platform_msgsMsgLights :: [Word8] -> Word32 -> IO (Observation R.Ros2Clearpath_platform_msgsMsgLights)
waitRos2Clearpath_platform_msgsMsgLights =
    receive
        R.decodeRos2Clearpath_platform_msgsMsgLights
        R.encodeRos2Clearpath_platform_msgsMsgLights
        10

-- | @brief Observe every original clearpath_platform_msgs/msg/Power field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos2Clearpath_platform_msgsMsgPower :: [Word8] -> Word32 -> IO (Observation R.Ros2Clearpath_platform_msgsMsgPower)
waitRos2Clearpath_platform_msgsMsgPower =
    receive
        R.decodeRos2Clearpath_platform_msgsMsgPower
        R.encodeRos2Clearpath_platform_msgsMsgPower
        169

-- | @brief Observe every original clearpath_platform_msgs/msg/RGB field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos2Clearpath_platform_msgsMsgRGB :: [Word8] -> Word32 -> IO (Observation R.Ros2Clearpath_platform_msgsMsgRGB)
waitRos2Clearpath_platform_msgsMsgRGB =
    receive
        R.decodeRos2Clearpath_platform_msgsMsgRGB
        R.encodeRos2Clearpath_platform_msgsMsgRGB
        3

-- | @brief Observe every original clearpath_platform_msgs/msg/Status field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos2Clearpath_platform_msgsMsgStatus :: [Word8] -> Word32 -> IO (Observation R.Ros2Clearpath_platform_msgsMsgStatus)
waitRos2Clearpath_platform_msgsMsgStatus =
    receive
        R.decodeRos2Clearpath_platform_msgsMsgStatus
        R.encodeRos2Clearpath_platform_msgsMsgStatus
        684

-- | @brief Observe every original clearpath_platform_msgs/msg/StopStatus field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos2Clearpath_platform_msgsMsgStopStatus :: [Word8] -> Word32 -> IO (Observation R.Ros2Clearpath_platform_msgsMsgStopStatus)
waitRos2Clearpath_platform_msgsMsgStopStatus =
    receive
        R.decodeRos2Clearpath_platform_msgsMsgStopStatus
        R.encodeRos2Clearpath_platform_msgsMsgStopStatus
        143

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

-- @brief Call complete clearpath_platform_msgs/srv/ConfigureMcu exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos2Clearpath_platform_msgsSrvConfigureMcu ::
    [Word8] ->
    R.Ros2Clearpath_platform_msgsSrvConfigureMcu_Request ->
    IO (Observation R.Ros2Clearpath_platform_msgsSrvConfigureMcu_Response)
callRos2Clearpath_platform_msgsSrvConfigureMcu aliasBytes requestValue
    | otherwise = case R.encodeRos2Clearpath_platform_msgsSrvConfigureMcu_Request requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos2Clearpath_platform_msgsSrvConfigureMcu_Response
                    R.encodeRos2Clearpath_platform_msgsSrvConfigureMcu_Response
                    261 aliasBytes 1 bytes
                pure result
