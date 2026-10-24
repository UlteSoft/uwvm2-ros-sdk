/**
 * @file observation.odin
 * @brief Represent the complete original FANUC ROS 2 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */
// @brief Observe complete original Fanuc ROS 2 messages in genuine Odin.
// @details All values own their bytes; successful acquisitions close exactly once.
package fanuc
import core "ros:odin/observation"
import records "fanuc:odin/ros2"

// @brief Observe every original fanuc_msgs/msg/ConnectionStatus field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_connection_status :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros2Fanuc_msgsMsgConnectionStatus) {
    return core.receive(
        records.Ros2Fanuc_msgsMsgConnectionStatus,
        alias_bytes,
        1,
        records.decode_Ros2Fanuc_msgsMsgConnectionStatus,
        records.encode_Ros2Fanuc_msgsMsgConnectionStatus,
        attempts,
    )
}

// @brief Observe every original fanuc_msgs/msg/ForceSensor field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_force_sensor :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros2Fanuc_msgsMsgForceSensor) {
    return core.receive(
        records.Ros2Fanuc_msgsMsgForceSensor,
        alias_bytes,
        28,
        records.decode_Ros2Fanuc_msgsMsgForceSensor,
        records.encode_Ros2Fanuc_msgsMsgForceSensor,
        attempts,
    )
}

// @brief Observe every original fanuc_msgs/msg/Frame field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_frame :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros2Fanuc_msgsMsgFrame) {
    return core.receive(
        records.Ros2Fanuc_msgsMsgFrame,
        alias_bytes,
        24,
        records.decode_Ros2Fanuc_msgsMsgFrame,
        records.encode_Ros2Fanuc_msgsMsgFrame,
        attempts,
    )
}

