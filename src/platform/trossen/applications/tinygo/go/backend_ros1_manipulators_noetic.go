//go:build tinygo && (wasm || tinygo.wasm) && ros1 && !ros2 && trossen_ros1_manipulators_noetic

// Exactly one original source domain, never inferred from a model name.
// @file backend_ros1_manipulators_noetic.go
// @brief Preserve the complete trossen typed controller or selected profile.
// @details Canonical bounds and numeric errors come from the shared SDK.
// No model, native transport or runtime grant is inferred by this source.
package main

import r "uwvm2.local/trossen-example/records_ros1_manipulators_noetic"

type State = r.Ros1Interbotix_uxarm_joyArmJoy
type Command = r.Ros1Interbotix_uxarm_joyArmJoy

const stateCapacity = r.Ros1Interbotix_uxarm_joyArmJoyMaxWireBytes

func decodeState(b []byte) (State, error)     { return r.DecodeRos1Interbotix_uxarm_joyArmJoy(b) }
func decodeCommand(b []byte) (Command, error) { return r.DecodeRos1Interbotix_uxarm_joyArmJoy(b) }
