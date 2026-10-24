/**
 * @file observation.odin
 * @brief Represent the complete original ABB ROS 1 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */
// @brief Observe complete original Abb ROS 1 messages in genuine Odin.
// @details All values own their bytes; successful acquisitions close exactly once.
package abb
import core "ros:odin/observation"
import records "abb:odin/ros1"

// @brief Observe every original abb_robot_msgs/SystemState field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_system_state :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Abb_robot_msgsSystemState) {
    return core.receive(
        records.Ros1Abb_robot_msgsSystemState,
        alias_bytes,
        2331,
        records.decode_Ros1Abb_robot_msgsSystemState,
        records.encode_Ros1Abb_robot_msgsSystemState,
        attempts,
    )
}

// @brief Observe every original abb_egm_msgs/EGMState field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_egm_state :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Abb_egm_msgsEGMState) {
    return core.receive(
        records.Ros1Abb_egm_msgsEGMState,
        alias_bytes,
        1380,
        records.decode_Ros1Abb_egm_msgsEGMState,
        records.encode_Ros1Abb_egm_msgsEGMState,
        attempts,
    )
}

// @brief Observe every original abb_rapid_sm_addin_msgs/RuntimeState field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_runtime_state :: proc "contextless"(alias_bytes: []u8, attempts: u32) -> core.Observation(records.Ros1Abb_rapid_sm_addin_msgsRuntimeState) {
    return core.receive(
        records.Ros1Abb_rapid_sm_addin_msgsRuntimeState,
        alias_bytes,
        8372,
        records.decode_Ros1Abb_rapid_sm_addin_msgsRuntimeState,
        records.encode_Ros1Abb_rapid_sm_addin_msgsRuntimeState,
        attempts,
    )
}

