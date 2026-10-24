// @file api.odin
// @brief Typed complete clearpath observers and service clients.
package api
import core "native:odin/observation"
import records "clearpath:odin/ros2_jazzy"
// @brief Observe every original builtin_interfaces/msg/Duration field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros2Builtin_interfacesMsgDuration :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros2Builtin_interfacesMsgDuration) {
    return core.receive(
        records.Ros2Builtin_interfacesMsgDuration,
        alias_bytes,
        8,
        records.decode_Ros2Builtin_interfacesMsgDuration,
        records.encode_Ros2Builtin_interfacesMsgDuration,
        attempts,
    )
}

// @brief Observe every original builtin_interfaces/msg/Time field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros2Builtin_interfacesMsgTime :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros2Builtin_interfacesMsgTime) {
    return core.receive(
        records.Ros2Builtin_interfacesMsgTime,
        alias_bytes,
        8,
        records.decode_Ros2Builtin_interfacesMsgTime,
        records.encode_Ros2Builtin_interfacesMsgTime,
        attempts,
    )
}

// @brief Observe every original clearpath_control_msgs/msg/DeviceInfo field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros2Clearpath_control_msgsMsgDeviceInfo :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros2Clearpath_control_msgsMsgDeviceInfo) {
    return core.receive(
        records.Ros2Clearpath_control_msgsMsgDeviceInfo,
        alias_bytes,
        1820,
        records.decode_Ros2Clearpath_control_msgsMsgDeviceInfo,
        records.encode_Ros2Clearpath_control_msgsMsgDeviceInfo,
        attempts,
    )
}

// @brief Observe every original clearpath_control_msgs/msg/StreamControl field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros2Clearpath_control_msgsMsgStreamControl :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros2Clearpath_control_msgsMsgStreamControl) {
    return core.receive(
        records.Ros2Clearpath_control_msgsMsgStreamControl,
        alias_bytes,
        261,
        records.decode_Ros2Clearpath_control_msgsMsgStreamControl,
        records.encode_Ros2Clearpath_control_msgsMsgStreamControl,
        attempts,
    )
}

// @brief Observe every original clearpath_motor_msgs/msg/LynxDebug field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros2Clearpath_motor_msgsMsgLynxDebug :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros2Clearpath_motor_msgsMsgLynxDebug) {
    return core.receive(
        records.Ros2Clearpath_motor_msgsMsgLynxDebug,
        alias_bytes,
        291,
        records.decode_Ros2Clearpath_motor_msgsMsgLynxDebug,
        records.encode_Ros2Clearpath_motor_msgsMsgLynxDebug,
        attempts,
    )
}

// @brief Observe every original clearpath_motor_msgs/msg/LynxFeedback field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros2Clearpath_motor_msgsMsgLynxFeedback :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros2Clearpath_motor_msgsMsgLynxFeedback) {
    return core.receive(
        records.Ros2Clearpath_motor_msgsMsgLynxFeedback,
        alias_bytes,
        277,
        records.decode_Ros2Clearpath_motor_msgsMsgLynxFeedback,
        records.encode_Ros2Clearpath_motor_msgsMsgLynxFeedback,
        attempts,
    )
}

// @brief Observe every original clearpath_motor_msgs/msg/LynxMotorProtection field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros2Clearpath_motor_msgsMsgLynxMotorProtection :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros2Clearpath_motor_msgsMsgLynxMotorProtection) {
    return core.receive(
        records.Ros2Clearpath_motor_msgsMsgLynxMotorProtection,
        alias_bytes,
        262,
        records.decode_Ros2Clearpath_motor_msgsMsgLynxMotorProtection,
        records.encode_Ros2Clearpath_motor_msgsMsgLynxMotorProtection,
        attempts,
    )
}

// @brief Observe every original clearpath_motor_msgs/msg/LynxMultiDebug field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros2Clearpath_motor_msgsMsgLynxMultiDebug :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros2Clearpath_motor_msgsMsgLynxMultiDebug) {
    return core.receive(
        records.Ros2Clearpath_motor_msgsMsgLynxMultiDebug,
        alias_bytes,
        1308,
        records.decode_Ros2Clearpath_motor_msgsMsgLynxMultiDebug,
        records.encode_Ros2Clearpath_motor_msgsMsgLynxMultiDebug,
        attempts,
    )
}

// @brief Observe every original clearpath_motor_msgs/msg/LynxMultiFeedback field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros2Clearpath_motor_msgsMsgLynxMultiFeedback :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros2Clearpath_motor_msgsMsgLynxMultiFeedback) {
    return core.receive(
        records.Ros2Clearpath_motor_msgsMsgLynxMultiFeedback,
        alias_bytes,
        1252,
        records.decode_Ros2Clearpath_motor_msgsMsgLynxMultiFeedback,
        records.encode_Ros2Clearpath_motor_msgsMsgLynxMultiFeedback,
        attempts,
    )
}

// @brief Observe every original clearpath_motor_msgs/msg/LynxMultiStatus field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros2Clearpath_motor_msgsMsgLynxMultiStatus :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros2Clearpath_motor_msgsMsgLynxMultiStatus) {
    return core.receive(
        records.Ros2Clearpath_motor_msgsMsgLynxMultiStatus,
        alias_bytes,
        2328,
        records.decode_Ros2Clearpath_motor_msgsMsgLynxMultiStatus,
        records.encode_Ros2Clearpath_motor_msgsMsgLynxMultiStatus,
        attempts,
    )
}

// @brief Observe every original clearpath_motor_msgs/msg/LynxStatus field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros2Clearpath_motor_msgsMsgLynxStatus :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros2Clearpath_motor_msgsMsgLynxStatus) {
    return core.receive(
        records.Ros2Clearpath_motor_msgsMsgLynxStatus,
        alias_bytes,
        546,
        records.decode_Ros2Clearpath_motor_msgsMsgLynxStatus,
        records.encode_Ros2Clearpath_motor_msgsMsgLynxStatus,
        attempts,
    )
}

// @brief Observe every original clearpath_motor_msgs/msg/LynxSystemProtection field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros2Clearpath_motor_msgsMsgLynxSystemProtection :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros2Clearpath_motor_msgsMsgLynxSystemProtection) {
    return core.receive(
        records.Ros2Clearpath_motor_msgsMsgLynxSystemProtection,
        alias_bytes,
        669,
        records.decode_Ros2Clearpath_motor_msgsMsgLynxSystemProtection,
        records.encode_Ros2Clearpath_motor_msgsMsgLynxSystemProtection,
        attempts,
    )
}

// @brief Observe every original clearpath_motor_msgs/msg/PumaFeedback field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros2Clearpath_motor_msgsMsgPumaFeedback :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros2Clearpath_motor_msgsMsgPumaFeedback) {
    return core.receive(
        records.Ros2Clearpath_motor_msgsMsgPumaFeedback,
        alias_bytes,
        293,
        records.decode_Ros2Clearpath_motor_msgsMsgPumaFeedback,
        records.encode_Ros2Clearpath_motor_msgsMsgPumaFeedback,
        attempts,
    )
}

// @brief Observe every original clearpath_motor_msgs/msg/PumaMultiFeedback field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros2Clearpath_motor_msgsMsgPumaMultiFeedback :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros2Clearpath_motor_msgsMsgPumaMultiFeedback) {
    return core.receive(
        records.Ros2Clearpath_motor_msgsMsgPumaMultiFeedback,
        alias_bytes,
        1316,
        records.decode_Ros2Clearpath_motor_msgsMsgPumaMultiFeedback,
        records.encode_Ros2Clearpath_motor_msgsMsgPumaMultiFeedback,
        attempts,
    )
}

// @brief Observe every original clearpath_motor_msgs/msg/PumaMultiStatus field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros2Clearpath_motor_msgsMsgPumaMultiStatus :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros2Clearpath_motor_msgsMsgPumaMultiStatus) {
    return core.receive(
        records.Ros2Clearpath_motor_msgsMsgPumaMultiStatus,
        alias_bytes,
        1260,
        records.decode_Ros2Clearpath_motor_msgsMsgPumaMultiStatus,
        records.encode_Ros2Clearpath_motor_msgsMsgPumaMultiStatus,
        attempts,
    )
}

// @brief Observe every original clearpath_motor_msgs/msg/PumaStatus field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros2Clearpath_motor_msgsMsgPumaStatus :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros2Clearpath_motor_msgsMsgPumaStatus) {
    return core.receive(
        records.Ros2Clearpath_motor_msgsMsgPumaStatus,
        alias_bytes,
        279,
        records.decode_Ros2Clearpath_motor_msgsMsgPumaStatus,
        records.encode_Ros2Clearpath_motor_msgsMsgPumaStatus,
        attempts,
    )
}

// @brief Observe every original clearpath_platform_msgs/msg/DisplayStatus field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros2Clearpath_platform_msgsMsgDisplayStatus :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros2Clearpath_platform_msgsMsgDisplayStatus) {
    return core.receive(
        records.Ros2Clearpath_platform_msgsMsgDisplayStatus,
        alias_bytes,
        106,
        records.decode_Ros2Clearpath_platform_msgsMsgDisplayStatus,
        records.encode_Ros2Clearpath_platform_msgsMsgDisplayStatus,
        attempts,
    )
}

// @brief Observe every original clearpath_platform_msgs/msg/Drive field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros2Clearpath_platform_msgsMsgDrive :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros2Clearpath_platform_msgsMsgDrive) {
    return core.receive(
        records.Ros2Clearpath_platform_msgsMsgDrive,
        alias_bytes,
        9,
        records.decode_Ros2Clearpath_platform_msgsMsgDrive,
        records.encode_Ros2Clearpath_platform_msgsMsgDrive,
        attempts,
    )
}

// @brief Observe every original clearpath_platform_msgs/msg/DriveFeedback field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros2Clearpath_platform_msgsMsgDriveFeedback :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros2Clearpath_platform_msgsMsgDriveFeedback) {
    return core.receive(
        records.Ros2Clearpath_platform_msgsMsgDriveFeedback,
        alias_bytes,
        25,
        records.decode_Ros2Clearpath_platform_msgsMsgDriveFeedback,
        records.encode_Ros2Clearpath_platform_msgsMsgDriveFeedback,
        attempts,
    )
}

// @brief Observe every original clearpath_platform_msgs/msg/Fans field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros2Clearpath_platform_msgsMsgFans :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros2Clearpath_platform_msgsMsgFans) {
    return core.receive(
        records.Ros2Clearpath_platform_msgsMsgFans,
        alias_bytes,
        6,
        records.decode_Ros2Clearpath_platform_msgsMsgFans,
        records.encode_Ros2Clearpath_platform_msgsMsgFans,
        attempts,
    )
}

// @brief Observe every original clearpath_platform_msgs/msg/Feedback field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros2Clearpath_platform_msgsMsgFeedback :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros2Clearpath_platform_msgsMsgFeedback) {
    return core.receive(
        records.Ros2Clearpath_platform_msgsMsgFeedback,
        alias_bytes,
        192,
        records.decode_Ros2Clearpath_platform_msgsMsgFeedback,
        records.encode_Ros2Clearpath_platform_msgsMsgFeedback,
        attempts,
    )
}

// @brief Observe every original clearpath_platform_msgs/msg/Lights field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros2Clearpath_platform_msgsMsgLights :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros2Clearpath_platform_msgsMsgLights) {
    return core.receive(
        records.Ros2Clearpath_platform_msgsMsgLights,
        alias_bytes,
        10,
        records.decode_Ros2Clearpath_platform_msgsMsgLights,
        records.encode_Ros2Clearpath_platform_msgsMsgLights,
        attempts,
    )
}

// @brief Observe every original clearpath_platform_msgs/msg/PinoutCommand field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros2Clearpath_platform_msgsMsgPinoutCommand :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros2Clearpath_platform_msgsMsgPinoutCommand) {
    return core.receive(
        records.Ros2Clearpath_platform_msgsMsgPinoutCommand,
        alias_bytes,
        18,
        records.decode_Ros2Clearpath_platform_msgsMsgPinoutCommand,
        records.encode_Ros2Clearpath_platform_msgsMsgPinoutCommand,
        attempts,
    )
}

// @brief Observe every original clearpath_platform_msgs/msg/PinoutState field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros2Clearpath_platform_msgsMsgPinoutState :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros2Clearpath_platform_msgsMsgPinoutState) {
    return core.receive(
        records.Ros2Clearpath_platform_msgsMsgPinoutState,
        alias_bytes,
        170,
        records.decode_Ros2Clearpath_platform_msgsMsgPinoutState,
        records.encode_Ros2Clearpath_platform_msgsMsgPinoutState,
        attempts,
    )
}

// @brief Observe every original clearpath_platform_msgs/msg/Power field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros2Clearpath_platform_msgsMsgPower :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros2Clearpath_platform_msgsMsgPower) {
    return core.receive(
        records.Ros2Clearpath_platform_msgsMsgPower,
        alias_bytes,
        169,
        records.decode_Ros2Clearpath_platform_msgsMsgPower,
        records.encode_Ros2Clearpath_platform_msgsMsgPower,
        attempts,
    )
}

// @brief Observe every original clearpath_platform_msgs/msg/RGB field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros2Clearpath_platform_msgsMsgRGB :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros2Clearpath_platform_msgsMsgRGB) {
    return core.receive(
        records.Ros2Clearpath_platform_msgsMsgRGB,
        alias_bytes,
        3,
        records.decode_Ros2Clearpath_platform_msgsMsgRGB,
        records.encode_Ros2Clearpath_platform_msgsMsgRGB,
        attempts,
    )
}

// @brief Observe every original clearpath_platform_msgs/msg/Status field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros2Clearpath_platform_msgsMsgStatus :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros2Clearpath_platform_msgsMsgStatus) {
    return core.receive(
        records.Ros2Clearpath_platform_msgsMsgStatus,
        alias_bytes,
        676,
        records.decode_Ros2Clearpath_platform_msgsMsgStatus,
        records.encode_Ros2Clearpath_platform_msgsMsgStatus,
        attempts,
    )
}

// @brief Observe every original clearpath_platform_msgs/msg/StopStatus field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros2Clearpath_platform_msgsMsgStopStatus :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros2Clearpath_platform_msgsMsgStopStatus) {
    return core.receive(
        records.Ros2Clearpath_platform_msgsMsgStopStatus,
        alias_bytes,
        143,
        records.decode_Ros2Clearpath_platform_msgsMsgStopStatus,
        records.encode_Ros2Clearpath_platform_msgsMsgStopStatus,
        attempts,
    )
}

// @brief Observe every original clearpath_platform_msgs/msg/Temperature field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros2Clearpath_platform_msgsMsgTemperature :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros2Clearpath_platform_msgsMsgTemperature) {
    return core.receive(
        records.Ros2Clearpath_platform_msgsMsgTemperature,
        alias_bytes,
        152,
        records.decode_Ros2Clearpath_platform_msgsMsgTemperature,
        records.encode_Ros2Clearpath_platform_msgsMsgTemperature,
        attempts,
    )
}

// @brief Observe every original std_msgs/msg/Header field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros2Std_msgsMsgHeader :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros2Std_msgsMsgHeader) {
    return core.receive(
        records.Ros2Std_msgsMsgHeader,
        alias_bytes,
        140,
        records.decode_Ros2Std_msgsMsgHeader,
        records.encode_Ros2Std_msgsMsgHeader,
        attempts,
    )
}

// @brief Call complete clearpath_control_msgs/srv/PowerControl exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos2Clearpath_control_msgsSrvPowerControl :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros2Clearpath_control_msgsSrvPowerControl_Request,
) -> core.Observation(records.Ros2Clearpath_control_msgsSrvPowerControl_Response) {
    result: core.Observation(records.Ros2Clearpath_control_msgsSrvPowerControl_Response)
    bytes: [1]u8
    size, code := records.encode_Ros2Clearpath_control_msgsSrvPowerControl_Request(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros2Clearpath_control_msgsSrvPowerControl_Response, aliasBytes, 261,
        records.decode_Ros2Clearpath_control_msgsSrvPowerControl_Response, records.encode_Ros2Clearpath_control_msgsSrvPowerControl_Response,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_platform_msgs/srv/ConfigureMcu exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos2Clearpath_platform_msgsSrvConfigureMcu :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros2Clearpath_platform_msgsSrvConfigureMcu_Request,
) -> core.Observation(records.Ros2Clearpath_platform_msgsSrvConfigureMcu_Response) {
    result: core.Observation(records.Ros2Clearpath_platform_msgsSrvConfigureMcu_Response)
    bytes: [261]u8
    size, code := records.encode_Ros2Clearpath_platform_msgsSrvConfigureMcu_Request(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros2Clearpath_platform_msgsSrvConfigureMcu_Response, aliasBytes, 261,
        records.decode_Ros2Clearpath_platform_msgsSrvConfigureMcu_Response, records.encode_Ros2Clearpath_platform_msgsSrvConfigureMcu_Response,
        1, bytes[:size],
    )
    return result
}

// @brief Call complete clearpath_platform_msgs/srv/SetPinout exactly once.
// @details Encode the complete request before acquisition. Retain original transport and close errors.
// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
// @param requestValue Complete immutable original request; every field and bound is validated.
// @return Entire owned response with independent transport, provider and cleanup facts.
// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
callRos2Clearpath_platform_msgsSrvSetPinout :: proc "contextless"(
    aliasBytes: []u8,
    requestValue: ^records.Ros2Clearpath_platform_msgsSrvSetPinout_Request,
) -> core.Observation(records.Ros2Clearpath_platform_msgsSrvSetPinout_Response) {
    result: core.Observation(records.Ros2Clearpath_platform_msgsSrvSetPinout_Response)
    bytes: [5]u8
    size, code := records.encode_Ros2Clearpath_platform_msgsSrvSetPinout_Request(requestValue, bytes[:])
    if code != 0 { result.primary = code; return result }
    result = core.request(
        records.Ros2Clearpath_platform_msgsSrvSetPinout_Response, aliasBytes, 261,
        records.decode_Ros2Clearpath_platform_msgsSrvSetPinout_Response, records.encode_Ros2Clearpath_platform_msgsSrvSetPinout_Response,
        1, bytes[:size],
    )
    return result
}
