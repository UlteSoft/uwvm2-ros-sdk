// @file api.odin
// @brief Typed complete agilex observers and service clients.
package api
import core "native:odin/observation"
import records "agilex:odin/ros1"
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

// @brief Observe every original nav_msgs/Odometry field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Nav_msgsOdometry :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Nav_msgsOdometry) {
    return core.receive(
        records.Ros1Nav_msgsOdometry,
        alias_bytes,
        956,
        records.decode_Ros1Nav_msgsOdometry,
        records.encode_Ros1Nav_msgsOdometry,
        attempts,
    )
}

// @brief Observe every original scout_msgs/ScoutBmsStatus field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Scout_msgsScoutBmsStatus :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Scout_msgsScoutBmsStatus) {
    return core.receive(
        records.Ros1Scout_msgsScoutBmsStatus,
        alias_bytes,
        44,
        records.decode_Ros1Scout_msgsScoutBmsStatus,
        records.encode_Ros1Scout_msgsScoutBmsStatus,
        attempts,
    )
}

// @brief Observe every original scout_msgs/ScoutDriverState field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Scout_msgsScoutDriverState :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Scout_msgsScoutDriverState) {
    return core.receive(
        records.Ros1Scout_msgsScoutDriverState,
        alias_bytes,
        17,
        records.decode_Ros1Scout_msgsScoutDriverState,
        records.encode_Ros1Scout_msgsScoutDriverState,
        attempts,
    )
}

// @brief Observe every original scout_msgs/ScoutLightCmd field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Scout_msgsScoutLightCmd :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Scout_msgsScoutLightCmd) {
    return core.receive(
        records.Ros1Scout_msgsScoutLightCmd,
        alias_bytes,
        5,
        records.decode_Ros1Scout_msgsScoutLightCmd,
        records.encode_Ros1Scout_msgsScoutLightCmd,
        attempts,
    )
}

// @brief Observe every original scout_msgs/ScoutLightState field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Scout_msgsScoutLightState :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Scout_msgsScoutLightState) {
    return core.receive(
        records.Ros1Scout_msgsScoutLightState,
        alias_bytes,
        2,
        records.decode_Ros1Scout_msgsScoutLightState,
        records.encode_Ros1Scout_msgsScoutLightState,
        attempts,
    )
}

// @brief Observe every original scout_msgs/ScoutMotorState field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Scout_msgsScoutMotorState :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Scout_msgsScoutMotorState) {
    return core.receive(
        records.Ros1Scout_msgsScoutMotorState,
        alias_bytes,
        32,
        records.decode_Ros1Scout_msgsScoutMotorState,
        records.encode_Ros1Scout_msgsScoutMotorState,
        attempts,
    )
}

// @brief Observe every original scout_msgs/ScoutRsStatus field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Scout_msgsScoutRsStatus :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Scout_msgsScoutRsStatus) {
    return core.receive(
        records.Ros1Scout_msgsScoutRsStatus,
        alias_bytes,
        153,
        records.decode_Ros1Scout_msgsScoutRsStatus,
        records.encode_Ros1Scout_msgsScoutRsStatus,
        attempts,
    )
}

// @brief Observe every original scout_msgs/ScoutStatus field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros1Scout_msgsScoutStatus :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Scout_msgsScoutStatus) {
    return core.receive(
        records.Ros1Scout_msgsScoutStatus,
        alias_bytes,
        381,
        records.decode_Ros1Scout_msgsScoutStatus,
        records.encode_Ros1Scout_msgsScoutStatus,
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
