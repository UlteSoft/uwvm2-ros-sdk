//go:build tinygo && (wasm || tinygo.wasm) && ros2 && !ros1 && tb3_main && !tb3_noetic && !tb3_humble && !tb3_jazzy

// Select one exact full original state and the genuine controlled backend.
// @file backend_main.go
// @brief Preserve the complete robotis typed controller or selected profile.
// @details Canonical bounds and numeric errors come from the shared SDK.
// No model, native transport or runtime grant is inferred by this source.
package main

import r "uwvm2.local/turtlebot3-example/records_main"

type State = r.Ros2Turtlebot3_msgsMsgSensorState

const stateCapacity = r.Ros2Turtlebot3_msgsMsgSensorStateMaxWireBytes

func decodeState(b []byte) (State, error) { return r.DecodeRos2Turtlebot3_msgsMsgSensorState(b) }
