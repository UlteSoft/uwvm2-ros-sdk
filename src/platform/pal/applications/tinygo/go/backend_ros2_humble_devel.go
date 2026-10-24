//go:build tinygo && (wasm || tinygo.wasm) && ros2 && !ros1 && pal_ros2_humble_devel && !pal_ros1_humble_devel && !pal_ros1_indigo_devel && !pal_ros1_noetic_devel

// Exactly one original source domain, never inferred from a model name.
// @file backend_ros2_humble_devel.go
// @brief Preserve the complete pal typed controller or selected profile.
// @details Canonical bounds and numeric errors come from the shared SDK.
// No model, native transport or runtime grant is inferred by this source.
package main

import r "uwvm2.local/pal-example/records_ros2_humble_devel"

type State = r.Ros2Pal_device_msgsMsgBatteryState
type Command = r.Ros2Pal_device_msgsMsgLedEffectParams

const stateCapacity = r.Ros2Pal_device_msgsMsgBatteryStateMaxWireBytes

func decodeState(b []byte) (State, error) { return r.DecodeRos2Pal_device_msgsMsgBatteryState(b) }
func decodeCommand(b []byte) (Command, error) {
	return r.DecodeRos2Pal_device_msgsMsgLedEffectParams(b)
}
