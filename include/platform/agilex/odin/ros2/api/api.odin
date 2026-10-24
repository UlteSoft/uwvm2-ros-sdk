// @file api.odin
// @brief Typed complete agilex observers and service clients.
package api
import core "native:odin/observation"
import records "agilex:odin/ros2"
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

// @brief Observe every original geometry_msgs/msg/Point field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros2Geometry_msgsMsgPoint :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros2Geometry_msgsMsgPoint) {
    return core.receive(
        records.Ros2Geometry_msgsMsgPoint,
        alias_bytes,
        24,
        records.decode_Ros2Geometry_msgsMsgPoint,
        records.encode_Ros2Geometry_msgsMsgPoint,
        attempts,
    )
}

// @brief Observe every original geometry_msgs/msg/Pose field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros2Geometry_msgsMsgPose :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros2Geometry_msgsMsgPose) {
    return core.receive(
        records.Ros2Geometry_msgsMsgPose,
        alias_bytes,
        56,
        records.decode_Ros2Geometry_msgsMsgPose,
        records.encode_Ros2Geometry_msgsMsgPose,
        attempts,
    )
}

// @brief Observe every original geometry_msgs/msg/PoseWithCovariance field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros2Geometry_msgsMsgPoseWithCovariance :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros2Geometry_msgsMsgPoseWithCovariance) {
    return core.receive(
        records.Ros2Geometry_msgsMsgPoseWithCovariance,
        alias_bytes,
        344,
        records.decode_Ros2Geometry_msgsMsgPoseWithCovariance,
        records.encode_Ros2Geometry_msgsMsgPoseWithCovariance,
        attempts,
    )
}

// @brief Observe every original geometry_msgs/msg/Quaternion field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros2Geometry_msgsMsgQuaternion :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros2Geometry_msgsMsgQuaternion) {
    return core.receive(
        records.Ros2Geometry_msgsMsgQuaternion,
        alias_bytes,
        32,
        records.decode_Ros2Geometry_msgsMsgQuaternion,
        records.encode_Ros2Geometry_msgsMsgQuaternion,
        attempts,
    )
}

// @brief Observe every original geometry_msgs/msg/Twist field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros2Geometry_msgsMsgTwist :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros2Geometry_msgsMsgTwist) {
    return core.receive(
        records.Ros2Geometry_msgsMsgTwist,
        alias_bytes,
        48,
        records.decode_Ros2Geometry_msgsMsgTwist,
        records.encode_Ros2Geometry_msgsMsgTwist,
        attempts,
    )
}

// @brief Observe every original geometry_msgs/msg/TwistWithCovariance field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros2Geometry_msgsMsgTwistWithCovariance :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros2Geometry_msgsMsgTwistWithCovariance) {
    return core.receive(
        records.Ros2Geometry_msgsMsgTwistWithCovariance,
        alias_bytes,
        336,
        records.decode_Ros2Geometry_msgsMsgTwistWithCovariance,
        records.encode_Ros2Geometry_msgsMsgTwistWithCovariance,
        attempts,
    )
}

// @brief Observe every original geometry_msgs/msg/Vector3 field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros2Geometry_msgsMsgVector3 :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros2Geometry_msgsMsgVector3) {
    return core.receive(
        records.Ros2Geometry_msgsMsgVector3,
        alias_bytes,
        24,
        records.decode_Ros2Geometry_msgsMsgVector3,
        records.encode_Ros2Geometry_msgsMsgVector3,
        attempts,
    )
}

// @brief Observe every original nav_msgs/msg/Odometry field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros2Nav_msgsMsgOdometry :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros2Nav_msgsMsgOdometry) {
    return core.receive(
        records.Ros2Nav_msgsMsgOdometry,
        alias_bytes,
        952,
        records.decode_Ros2Nav_msgsMsgOdometry,
        records.encode_Ros2Nav_msgsMsgOdometry,
        attempts,
    )
}

// @brief Observe every original scout_msgs/msg/ScoutActuatorState field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros2Scout_msgsMsgScoutActuatorState :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros2Scout_msgsMsgScoutActuatorState) {
    return core.receive(
        records.Ros2Scout_msgsMsgScoutActuatorState,
        alias_bytes,
        19,
        records.decode_Ros2Scout_msgsMsgScoutActuatorState,
        records.encode_Ros2Scout_msgsMsgScoutActuatorState,
        attempts,
    )
}

// @brief Observe every original scout_msgs/msg/ScoutLightCmd field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros2Scout_msgsMsgScoutLightCmd :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros2Scout_msgsMsgScoutLightCmd) {
    return core.receive(
        records.Ros2Scout_msgsMsgScoutLightCmd,
        alias_bytes,
        5,
        records.decode_Ros2Scout_msgsMsgScoutLightCmd,
        records.encode_Ros2Scout_msgsMsgScoutLightCmd,
        attempts,
    )
}

// @brief Observe every original scout_msgs/msg/ScoutLightState field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros2Scout_msgsMsgScoutLightState :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros2Scout_msgsMsgScoutLightState) {
    return core.receive(
        records.Ros2Scout_msgsMsgScoutLightState,
        alias_bytes,
        2,
        records.decode_Ros2Scout_msgsMsgScoutLightState,
        records.encode_Ros2Scout_msgsMsgScoutLightState,
        attempts,
    )
}

// @brief Observe every original scout_msgs/msg/ScoutRCState field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros2Scout_msgsMsgScoutRCState :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros2Scout_msgsMsgScoutRCState) {
    return core.receive(
        records.Ros2Scout_msgsMsgScoutRCState,
        alias_bytes,
        9,
        records.decode_Ros2Scout_msgsMsgScoutRCState,
        records.encode_Ros2Scout_msgsMsgScoutRCState,
        attempts,
    )
}

// @brief Observe every original scout_msgs/msg/ScoutStatus field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_Ros2Scout_msgsMsgScoutStatus :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros2Scout_msgsMsgScoutStatus) {
    return core.receive(
        records.Ros2Scout_msgsMsgScoutStatus,
        alias_bytes,
        249,
        records.decode_Ros2Scout_msgsMsgScoutStatus,
        records.encode_Ros2Scout_msgsMsgScoutStatus,
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
