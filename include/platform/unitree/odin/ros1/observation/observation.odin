// @brief Observe complete original Unitree ROS 1 messages in genuine Odin.
// @details All values own their bytes; successful acquisitions close exactly once.
package unitree
import core "unitree:odin"
import records "unitree:odin/ros1"

// @brief Observe every original unitree_legged_msgs/HighState field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_motion_state :: proc "contextless"(
    alias_bytes: []u8,
    attempts: u32,
) -> core.Observation(records.Ros1Unitree_legged_msgsHighState) {
    return core.receive(
        records.Ros1Unitree_legged_msgsHighState,
        alias_bytes,
        1087,
        records.decode_Ros1Unitree_legged_msgsHighState,
        records.encode_Ros1Unitree_legged_msgsHighState,
        attempts,
    )
}

// @brief Observe every original unitree_legged_msgs/LowState field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_low_state :: proc "contextless"(
    alias_bytes: []u8,
    attempts: u32,
) -> core.Observation(records.Ros1Unitree_legged_msgsLowState) {
    return core.receive(
        records.Ros1Unitree_legged_msgsLowState,
        alias_bytes,
        1069,
        records.decode_Ros1Unitree_legged_msgsLowState,
        records.encode_Ros1Unitree_legged_msgsLowState,
        attempts,
    )
}

// @brief Observe every original unitree_legged_msgs/MotorState field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_motor_state :: proc "contextless"(
    alias_bytes: []u8,
    attempts: u32,
) -> core.Observation(records.Ros1Unitree_legged_msgsMotorState) {
    return core.receive(
        records.Ros1Unitree_legged_msgsMotorState,
        alias_bytes,
        38,
        records.decode_Ros1Unitree_legged_msgsMotorState,
        records.encode_Ros1Unitree_legged_msgsMotorState,
        attempts,
    )
}
