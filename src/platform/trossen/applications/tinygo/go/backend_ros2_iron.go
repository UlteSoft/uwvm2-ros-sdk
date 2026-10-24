//go:build tinygo && (wasm || tinygo.wasm) && ros2 && !ros1 && trossen_ros2_iron

// Exactly one original source domain, never inferred from a model name.
// @file backend_ros2_iron.go
// @brief Preserve the complete trossen typed controller or selected profile.
// @details Canonical bounds and numeric errors come from the shared SDK.
// No model, native transport or runtime grant is inferred by this source.
package main

import r "uwvm2.local/trossen-example/records_ros2_iron"

type State = r.Ros2Interbotix_xs_msgsMsgJointTemps
type Command = r.Ros2Interbotix_xs_msgsMsgJointGroupCommand

const stateCapacity = r.Ros2Interbotix_xs_msgsMsgJointTempsMaxWireBytes

func decodeState(b []byte) (State, error) { return r.DecodeRos2Interbotix_xs_msgsMsgJointTemps(b) }
func decodeCommand(b []byte) (Command, error) {
	return r.DecodeRos2Interbotix_xs_msgsMsgJointGroupCommand(b)
}
