//go:build wasip1 && wasm && ros2 && !ros1

// @brief Select only genuine ROS 2 complete original Unitree messages.
// @details Every public function retains one real owner and closes it once.
package unitree

import records "uwvm2.local/unitree-records-go-ros2"

// WaitMotionState reads every field of the original native SportModeState message.
// @brief Observe the complete native locomotion, odometry, IMU, and foot state.
// @param[in] alias Existing exact native type topic-subscription policy alias.
// @param[in] attempts Finite total poll budget in [1,250].
// @param[in] pause Caller wait after idle, required above one attempt.
// @return Entire owned record, complete canonical bytes, and independent errors.
// @details Inputs stay alive through the synchronous operation. No command,
// service request, source interpreter, backend fallback, or grant is created.
func WaitMotionState(alias string, attempts uint32, pause func() uint32) Outcome[records.Ros2Unitree_goMsgSportModeState] {
	return receive(alias, records.Ros2Unitree_goMsgSportModeStateMaxWireBytes, attempts, pause, records.DecodeRos2Unitree_goMsgSportModeState)
}

// WaitLowState reads every field of the original native LowState message.
// @brief Observe every native motor, BMS, force, remote, temperature, reserve, and CRC field.
// @param[in] alias Existing exact native type topic-subscription policy alias.
// @param[in] attempts Finite total poll budget in [1,250].
// @param[in] pause Caller wait after idle, required above one attempt.
// @return Entire owned record, complete canonical bytes, and independent errors.
// @details Inputs stay alive through the synchronous operation. No command,
// service request, source interpreter, backend fallback, or grant is created.
func WaitLowState(alias string, attempts uint32, pause func() uint32) Outcome[records.Ros2Unitree_goMsgLowState] {
	return receive(alias, records.Ros2Unitree_goMsgLowStateMaxWireBytes, attempts, pause, records.DecodeRos2Unitree_goMsgLowState)
}

// WaitWirelessController reads every field of the original native WirelessController message.
// @brief Observe all four joystick axes and the complete key bitmask without generating input.
// @param[in] alias Existing exact native type topic-subscription policy alias.
// @param[in] attempts Finite total poll budget in [1,250].
// @param[in] pause Caller wait after idle, required above one attempt.
// @return Entire owned record, complete canonical bytes, and independent errors.
// @details Inputs stay alive through the synchronous operation. No command,
// service request, source interpreter, backend fallback, or grant is created.
func WaitWirelessController(alias string, attempts uint32, pause func() uint32) Outcome[records.Ros2Unitree_goMsgWirelessController] {
	return receive(alias, records.Ros2Unitree_goMsgWirelessControllerMaxWireBytes, attempts, pause, records.DecodeRos2Unitree_goMsgWirelessController)
}
