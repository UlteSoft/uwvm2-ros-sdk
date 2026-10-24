// @brief Observe complete original Unitree ROS 2 messages in genuine Odin.
// @details All values own their bytes; successful acquisitions close exactly once.
package unitree
import core "unitree:odin"
import records "unitree:odin/ros2"

// @brief Observe every original unitree_go/msg/SportModeState field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_motion_state :: proc "contextless"(
    alias_bytes: []u8,
    attempts: u32,
) -> core.Observation(records.Ros2Unitree_goMsgSportModeState) {
    return core.receive(
        records.Ros2Unitree_goMsgSportModeState,
        alias_bytes,
        227,
        records.decode_Ros2Unitree_goMsgSportModeState,
        records.encode_Ros2Unitree_goMsgSportModeState,
        attempts,
    )
}

// @brief Observe every original unitree_go/msg/LowState field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_low_state :: proc "contextless"(
    alias_bytes: []u8,
    attempts: u32,
) -> core.Observation(records.Ros2Unitree_goMsgLowState) {
    return core.receive(
        records.Ros2Unitree_goMsgLowState,
        alias_bytes,
        1050,
        records.decode_Ros2Unitree_goMsgLowState,
        records.encode_Ros2Unitree_goMsgLowState,
        attempts,
    )
}

// @brief Observe every original unitree_go/msg/WirelessController field through one retained owner.
// @param alias_bytes Borrowed exact-type strict UTF-8 subscription alias.
// @param attempts Total finite poll budget in 1..250.
// @return Complete owned original record and independent operation/close facts.
// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
wait_wireless_controller :: proc "contextless"(
    alias_bytes: []u8,
    attempts: u32,
) -> core.Observation(records.Ros2Unitree_goMsgWirelessController) {
    return core.receive(
        records.Ros2Unitree_goMsgWirelessController,
        alias_bytes,
        18,
        records.decode_Ros2Unitree_goMsgWirelessController,
        records.encode_Ros2Unitree_goMsgWirelessController,
        attempts,
    )
}
