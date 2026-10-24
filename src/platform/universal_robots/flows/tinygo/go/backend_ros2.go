//go:build tinygo && (wasm || tinygo.wasm) && urros2 && !urros1 && !polyscopex && ros2 && !ros1

// @file backend_ros2.go
// @brief Retained universal_robots native ROS application flow over the public typed SDK.
// @details Select the exact original source profile and manually configured deployment before use. Observe the
// operation and cleanup statuses separately. Source retention does not establish native communication, current
// robot state, or controller compatibility.
// @see document/platform/universal_robots/en_US/README.md

// Explicit source selection; complete records are never mixed in one package.
package main

import r "uwvm2.sdk/universal_robots/tinygo/ros2/universal-robots-ros2-complete"

type IOState = r.Ros2Ur_msgsMsgIOStates

const ioCapacity = r.Ros2Ur_msgsMsgIOStatesMaxWireBytes

func decodeIOState(b []byte) (IOState, error) { return r.DecodeRos2Ur_msgsMsgIOStates(b) }
