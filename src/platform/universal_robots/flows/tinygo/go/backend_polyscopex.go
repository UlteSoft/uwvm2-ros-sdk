//go:build tinygo && (wasm || tinygo.wasm) && polyscopex && !urros1 && !urros2 && ros2 && !ros1

// @file backend_polyscopex.go
// @brief Retained universal_robots native ROS application flow over the public typed SDK.
// @details Select the exact original source profile and manually configured deployment before use. Observe the
// operation and cleanup statuses separately. Source retention does not establish native communication, current
// robot state, or controller compatibility.
// @see document/platform/universal_robots/en_US/README.md

// Explicit source selection; complete records are never mixed in one package.
package main

import r "uwvm2.sdk/universal_robots/tinygo/ros2/universal-robots-polyscopex-complete"

type IOState = r.Ros2UrinterfacesMsgDigitalIOStateStamped

const ioCapacity = r.Ros2UrinterfacesMsgDigitalIOStateStampedMaxWireBytes

func decodeIOState(b []byte) (IOState, error) {
	return r.DecodeRos2UrinterfacesMsgDigitalIOStateStamped(b)
}
