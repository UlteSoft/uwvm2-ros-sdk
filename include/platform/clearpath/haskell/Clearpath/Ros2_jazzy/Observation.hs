-- | @file Observation.hs
-- @brief Typed complete clearpath observers and service clients.
module Clearpath.Ros2_jazzy.Observation where
import Data.Word
import Native.Observation
import qualified Clearpath.Ros2_jazzy.Records as R
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

-- | @brief Observe every original clearpath_control_msgs/msg/DeviceInfo field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos2Clearpath_control_msgsMsgDeviceInfo :: [Word8] -> Word32 -> IO (Observation R.Ros2Clearpath_control_msgsMsgDeviceInfo)
waitRos2Clearpath_control_msgsMsgDeviceInfo =
    receive
        R.decodeRos2Clearpath_control_msgsMsgDeviceInfo
        R.encodeRos2Clearpath_control_msgsMsgDeviceInfo
        1820

-- | @brief Observe every original clearpath_control_msgs/msg/StreamControl field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos2Clearpath_control_msgsMsgStreamControl :: [Word8] -> Word32 -> IO (Observation R.Ros2Clearpath_control_msgsMsgStreamControl)
waitRos2Clearpath_control_msgsMsgStreamControl =
    receive
        R.decodeRos2Clearpath_control_msgsMsgStreamControl
        R.encodeRos2Clearpath_control_msgsMsgStreamControl
        261

-- | @brief Observe every original clearpath_motor_msgs/msg/LynxDebug field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos2Clearpath_motor_msgsMsgLynxDebug :: [Word8] -> Word32 -> IO (Observation R.Ros2Clearpath_motor_msgsMsgLynxDebug)
waitRos2Clearpath_motor_msgsMsgLynxDebug =
    receive
        R.decodeRos2Clearpath_motor_msgsMsgLynxDebug
        R.encodeRos2Clearpath_motor_msgsMsgLynxDebug
        291

-- | @brief Observe every original clearpath_motor_msgs/msg/LynxFeedback field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos2Clearpath_motor_msgsMsgLynxFeedback :: [Word8] -> Word32 -> IO (Observation R.Ros2Clearpath_motor_msgsMsgLynxFeedback)
waitRos2Clearpath_motor_msgsMsgLynxFeedback =
    receive
        R.decodeRos2Clearpath_motor_msgsMsgLynxFeedback
        R.encodeRos2Clearpath_motor_msgsMsgLynxFeedback
        277

-- | @brief Observe every original clearpath_motor_msgs/msg/LynxMotorProtection field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos2Clearpath_motor_msgsMsgLynxMotorProtection :: [Word8] -> Word32 -> IO (Observation R.Ros2Clearpath_motor_msgsMsgLynxMotorProtection)
waitRos2Clearpath_motor_msgsMsgLynxMotorProtection =
    receive
        R.decodeRos2Clearpath_motor_msgsMsgLynxMotorProtection
        R.encodeRos2Clearpath_motor_msgsMsgLynxMotorProtection
        262

-- | @brief Observe every original clearpath_motor_msgs/msg/LynxMultiDebug field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos2Clearpath_motor_msgsMsgLynxMultiDebug :: [Word8] -> Word32 -> IO (Observation R.Ros2Clearpath_motor_msgsMsgLynxMultiDebug)
waitRos2Clearpath_motor_msgsMsgLynxMultiDebug =
    receive
        R.decodeRos2Clearpath_motor_msgsMsgLynxMultiDebug
        R.encodeRos2Clearpath_motor_msgsMsgLynxMultiDebug
        1308

-- | @brief Observe every original clearpath_motor_msgs/msg/LynxMultiFeedback field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos2Clearpath_motor_msgsMsgLynxMultiFeedback :: [Word8] -> Word32 -> IO (Observation R.Ros2Clearpath_motor_msgsMsgLynxMultiFeedback)
waitRos2Clearpath_motor_msgsMsgLynxMultiFeedback =
    receive
        R.decodeRos2Clearpath_motor_msgsMsgLynxMultiFeedback
        R.encodeRos2Clearpath_motor_msgsMsgLynxMultiFeedback
        1252

-- | @brief Observe every original clearpath_motor_msgs/msg/LynxMultiStatus field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos2Clearpath_motor_msgsMsgLynxMultiStatus :: [Word8] -> Word32 -> IO (Observation R.Ros2Clearpath_motor_msgsMsgLynxMultiStatus)
waitRos2Clearpath_motor_msgsMsgLynxMultiStatus =
    receive
        R.decodeRos2Clearpath_motor_msgsMsgLynxMultiStatus
        R.encodeRos2Clearpath_motor_msgsMsgLynxMultiStatus
        2328

-- | @brief Observe every original clearpath_motor_msgs/msg/LynxStatus field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos2Clearpath_motor_msgsMsgLynxStatus :: [Word8] -> Word32 -> IO (Observation R.Ros2Clearpath_motor_msgsMsgLynxStatus)
waitRos2Clearpath_motor_msgsMsgLynxStatus =
    receive
        R.decodeRos2Clearpath_motor_msgsMsgLynxStatus
        R.encodeRos2Clearpath_motor_msgsMsgLynxStatus
        546

-- | @brief Observe every original clearpath_motor_msgs/msg/LynxSystemProtection field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos2Clearpath_motor_msgsMsgLynxSystemProtection :: [Word8] -> Word32 -> IO (Observation R.Ros2Clearpath_motor_msgsMsgLynxSystemProtection)
waitRos2Clearpath_motor_msgsMsgLynxSystemProtection =
    receive
        R.decodeRos2Clearpath_motor_msgsMsgLynxSystemProtection
        R.encodeRos2Clearpath_motor_msgsMsgLynxSystemProtection
        669

-- | @brief Observe every original clearpath_motor_msgs/msg/PumaFeedback field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos2Clearpath_motor_msgsMsgPumaFeedback :: [Word8] -> Word32 -> IO (Observation R.Ros2Clearpath_motor_msgsMsgPumaFeedback)
waitRos2Clearpath_motor_msgsMsgPumaFeedback =
    receive
        R.decodeRos2Clearpath_motor_msgsMsgPumaFeedback
        R.encodeRos2Clearpath_motor_msgsMsgPumaFeedback
        293

-- | @brief Observe every original clearpath_motor_msgs/msg/PumaMultiFeedback field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos2Clearpath_motor_msgsMsgPumaMultiFeedback :: [Word8] -> Word32 -> IO (Observation R.Ros2Clearpath_motor_msgsMsgPumaMultiFeedback)
waitRos2Clearpath_motor_msgsMsgPumaMultiFeedback =
    receive
        R.decodeRos2Clearpath_motor_msgsMsgPumaMultiFeedback
        R.encodeRos2Clearpath_motor_msgsMsgPumaMultiFeedback
        1316

-- | @brief Observe every original clearpath_motor_msgs/msg/PumaMultiStatus field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos2Clearpath_motor_msgsMsgPumaMultiStatus :: [Word8] -> Word32 -> IO (Observation R.Ros2Clearpath_motor_msgsMsgPumaMultiStatus)
waitRos2Clearpath_motor_msgsMsgPumaMultiStatus =
    receive
        R.decodeRos2Clearpath_motor_msgsMsgPumaMultiStatus
        R.encodeRos2Clearpath_motor_msgsMsgPumaMultiStatus
        1260

-- | @brief Observe every original clearpath_motor_msgs/msg/PumaStatus field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos2Clearpath_motor_msgsMsgPumaStatus :: [Word8] -> Word32 -> IO (Observation R.Ros2Clearpath_motor_msgsMsgPumaStatus)
waitRos2Clearpath_motor_msgsMsgPumaStatus =
    receive
        R.decodeRos2Clearpath_motor_msgsMsgPumaStatus
        R.encodeRos2Clearpath_motor_msgsMsgPumaStatus
        279

-- | @brief Observe every original clearpath_platform_msgs/msg/DisplayStatus field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos2Clearpath_platform_msgsMsgDisplayStatus :: [Word8] -> Word32 -> IO (Observation R.Ros2Clearpath_platform_msgsMsgDisplayStatus)
waitRos2Clearpath_platform_msgsMsgDisplayStatus =
    receive
        R.decodeRos2Clearpath_platform_msgsMsgDisplayStatus
        R.encodeRos2Clearpath_platform_msgsMsgDisplayStatus
        106

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

-- | @brief Observe every original clearpath_platform_msgs/msg/PinoutCommand field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos2Clearpath_platform_msgsMsgPinoutCommand :: [Word8] -> Word32 -> IO (Observation R.Ros2Clearpath_platform_msgsMsgPinoutCommand)
waitRos2Clearpath_platform_msgsMsgPinoutCommand =
    receive
        R.decodeRos2Clearpath_platform_msgsMsgPinoutCommand
        R.encodeRos2Clearpath_platform_msgsMsgPinoutCommand
        18

-- | @brief Observe every original clearpath_platform_msgs/msg/PinoutState field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos2Clearpath_platform_msgsMsgPinoutState :: [Word8] -> Word32 -> IO (Observation R.Ros2Clearpath_platform_msgsMsgPinoutState)
waitRos2Clearpath_platform_msgsMsgPinoutState =
    receive
        R.decodeRos2Clearpath_platform_msgsMsgPinoutState
        R.encodeRos2Clearpath_platform_msgsMsgPinoutState
        170

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
        676

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

-- | @brief Observe every original clearpath_platform_msgs/msg/Temperature field through one retained owner.
-- @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
-- @param attempts Total finite poll budget in 1..250.
-- @return Complete owned original record and independent operation/close facts.
-- @details Only idle 11 is retried; fatal runtime failures cannot promise cleanup.
waitRos2Clearpath_platform_msgsMsgTemperature :: [Word8] -> Word32 -> IO (Observation R.Ros2Clearpath_platform_msgsMsgTemperature)
waitRos2Clearpath_platform_msgsMsgTemperature =
    receive
        R.decodeRos2Clearpath_platform_msgsMsgTemperature
        R.encodeRos2Clearpath_platform_msgsMsgTemperature
        152

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

-- @brief Call complete clearpath_control_msgs/srv/PowerControl exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos2Clearpath_control_msgsSrvPowerControl ::
    [Word8] ->
    R.Ros2Clearpath_control_msgsSrvPowerControl_Request ->
    IO (Observation R.Ros2Clearpath_control_msgsSrvPowerControl_Response)
callRos2Clearpath_control_msgsSrvPowerControl aliasBytes requestValue
    | otherwise = case R.encodeRos2Clearpath_control_msgsSrvPowerControl_Request requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos2Clearpath_control_msgsSrvPowerControl_Response
                    R.encodeRos2Clearpath_control_msgsSrvPowerControl_Response
                    261 aliasBytes 1 bytes
                pure result

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

-- @brief Call complete clearpath_platform_msgs/srv/SetPinout exactly once.
-- @details Encode the complete request before acquisition. Retain original transport and close errors.
-- @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
-- @param requestValue Complete immutable original request; every field and bound is validated.
-- @return Entire owned response with independent transport, provider and cleanup facts.
-- @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos2Clearpath_platform_msgsSrvSetPinout ::
    [Word8] ->
    R.Ros2Clearpath_platform_msgsSrvSetPinout_Request ->
    IO (Observation R.Ros2Clearpath_platform_msgsSrvSetPinout_Response)
callRos2Clearpath_platform_msgsSrvSetPinout aliasBytes requestValue
    | otherwise = case R.encodeRos2Clearpath_platform_msgsSrvSetPinout_Request requestValue of
        Left failure -> pure empty {primary = failure}
        Right bytes -> do
                result <- request
                    R.decodeRos2Clearpath_platform_msgsSrvSetPinout_Response
                    R.encodeRos2Clearpath_platform_msgsSrvSetPinout_Response
                    261 aliasBytes 1 bytes
                pure result
