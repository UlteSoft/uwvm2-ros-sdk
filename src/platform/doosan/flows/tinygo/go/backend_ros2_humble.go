//go:build tinygo && (wasm || tinygo.wasm) && ros2 && !ros1 && doosan_ros2_humble && !doosan_ros1_aws_robot && !doosan_ros1_aws_simulation && !doosan_ros1_doosan_robotics_patch_1 && !doosan_ros1_kinetic_devel_descrepted && !doosan_ros1_main && !doosan_ros1_master && !doosan_ros1_melodic_devel && !doosan_ros1_noetic_devel && !doosan_ros1_patch_1 && !doosan_ros1_song_ms_patch_1 && !doosan_ros2_jazzy

// @file backend_ros2_humble.go
// @brief Retained doosan native ROS application flow over the public typed SDK.
// @details Select the exact original source profile and manually configured deployment before use. Observe the
// operation and cleanup statuses separately. Source retention does not establish native communication, current
// robot state, or controller compatibility.
// @see document/platform/doosan/en_US/README.md

// Exactly one original source domain, never inferred from a model name.
package main

import r "uwvm2.sdk/doosan/tinygo/ros2/doosan-ros2-humble-complete"

type State = r.Ros2Dsr_msgs2MsgRobotState
type Command = r.Ros2Dsr_msgs2MsgRobotStop

const stateCapacity = r.Ros2Dsr_msgs2MsgRobotStateMaxWireBytes

func decodeState(b []byte) (State, error)     { return r.DecodeRos2Dsr_msgs2MsgRobotState(b) }
func decodeCommand(b []byte) (Command, error) { return r.DecodeRos2Dsr_msgs2MsgRobotStop(b) }
