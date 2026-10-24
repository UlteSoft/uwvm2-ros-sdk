//go:build tinygo && (wasm || tinygo.wasm) && ros1 && !ros2 && pal_ros1_indigo_devel && !pal_ros1_humble_devel && !pal_ros2_humble_devel && !pal_ros1_noetic_devel

// Exactly one original source domain, never inferred from a model name.
// @file backend_ros1_indigo_devel.go
// @brief Preserve the complete pal typed controller or selected profile.
// @details Canonical bounds and numeric errors come from the shared SDK.
// No model, native transport or runtime grant is inferred by this source.
package main

import r "uwvm2.local/pal-example/records_ros1_indigo_devel"

type State = r.Ros1Pal_device_msgsBatteryState
type Command = r.Ros1Pal_device_msgsLedEffectParams

const stateCapacity = r.Ros1Pal_device_msgsBatteryStateMaxWireBytes

func decodeState(b []byte) (State, error)     { return r.DecodeRos1Pal_device_msgsBatteryState(b) }
func decodeCommand(b []byte) (Command, error) { return r.DecodeRos1Pal_device_msgsLedEffectParams(b) }
