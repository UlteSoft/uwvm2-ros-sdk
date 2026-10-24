//go:build tinygo && (wasm || tinygo.wasm) && ros1 && !ros2

// @brief Select only genuine ROS 1 complete original Unitree messages.
// @details Every public function retains one real owner and closes it once.
package unitree

import records "uwvm2.local/unitree-records-tinygo-ros1"

// WaitMotionState reads every field of the original native HighState message.
// @brief Observe the complete native ROS 1 high-level state and every nested field.
// @param[in] alias Existing exact native type topic-subscription policy alias.
// @param[in] attempts Finite total poll budget in [1,250].
// @param[in] pause Caller wait after idle, required above one attempt.
// @return Entire owned record, complete canonical bytes, and independent errors.
// @details Inputs stay alive through the synchronous operation. No command,
// service request, source interpreter, backend fallback, or grant is created.
func WaitMotionState(alias string, attempts uint32, pause func() uint32) Outcome[records.Ros1Unitree_legged_msgsHighState] {
	return receive(alias, records.Ros1Unitree_legged_msgsHighStateMaxWireBytes, attempts, pause, records.DecodeRos1Unitree_legged_msgsHighState)
}

// WaitLowState reads every field of the original native LowState message.
// @brief Observe the complete native ROS 1 low-level state with all twenty motors.
// @param[in] alias Existing exact native type topic-subscription policy alias.
// @param[in] attempts Finite total poll budget in [1,250].
// @param[in] pause Caller wait after idle, required above one attempt.
// @return Entire owned record, complete canonical bytes, and independent errors.
// @details Inputs stay alive through the synchronous operation. No command,
// service request, source interpreter, backend fallback, or grant is created.
func WaitLowState(alias string, attempts uint32, pause func() uint32) Outcome[records.Ros1Unitree_legged_msgsLowState] {
	return receive(alias, records.Ros1Unitree_legged_msgsLowStateMaxWireBytes, attempts, pause, records.DecodeRos1Unitree_legged_msgsLowState)
}

// WaitMotorState reads every field of the original native MotorState message.
// @brief Observe a native Gazebo joint-controller state, preserving every original motor field.
// @param[in] alias Existing exact native type topic-subscription policy alias.
// @param[in] attempts Finite total poll budget in [1,250].
// @param[in] pause Caller wait after idle, required above one attempt.
// @return Entire owned record, complete canonical bytes, and independent errors.
// @details Inputs stay alive through the synchronous operation. No command,
// service request, source interpreter, backend fallback, or grant is created.
func WaitMotorState(alias string, attempts uint32, pause func() uint32) Outcome[records.Ros1Unitree_legged_msgsMotorState] {
	return receive(alias, records.Ros1Unitree_legged_msgsMotorStateMaxWireBytes, attempts, pause, records.DecodeRos1Unitree_legged_msgsMotorState)
}
