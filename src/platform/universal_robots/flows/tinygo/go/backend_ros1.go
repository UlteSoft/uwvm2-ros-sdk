//go:build tinygo && (wasm || tinygo.wasm) && urros1 && !urros2 && !polyscopex && ros1 && !ros2

// @file backend_ros1.go
// @brief Retained universal_robots native ROS application flow over the public typed SDK.
// @details Select the exact original source profile and manually configured deployment before use. Observe the
// operation and cleanup statuses separately. Source retention does not establish native communication, current
// robot state, or controller compatibility.
// @see document/platform/universal_robots/en_US/README.md

// Explicit source selection; complete records are never mixed in one package.
package main

import r "uwvm2.sdk/universal_robots/tinygo/ros1/universal-robots-ros1-complete"

type IOState = r.Ros1Ur_msgsIOStates

const ioCapacity = r.Ros1Ur_msgsIOStatesMaxWireBytes

func decodeIOState(b []byte) (IOState, error) { return r.DecodeRos1Ur_msgsIOStates(b) }
