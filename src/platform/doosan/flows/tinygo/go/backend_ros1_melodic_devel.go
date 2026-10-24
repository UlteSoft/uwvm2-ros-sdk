//go:build tinygo && (wasm || tinygo.wasm) && ros1 && !ros2 && doosan_ros1_melodic_devel && !doosan_ros1_aws_robot && !doosan_ros1_aws_simulation && !doosan_ros1_doosan_robotics_patch_1 && !doosan_ros1_kinetic_devel_descrepted && !doosan_ros1_main && !doosan_ros1_master && !doosan_ros1_noetic_devel && !doosan_ros1_patch_1 && !doosan_ros1_song_ms_patch_1 && !doosan_ros2_humble && !doosan_ros2_jazzy

// @file backend_ros1_melodic_devel.go
// @brief Retained doosan native ROS application flow over the public typed SDK.
// @details Select the exact original source profile and manually configured deployment before use. Observe the
// operation and cleanup statuses separately. Source retention does not establish native communication, current
// robot state, or controller compatibility.
// @see document/platform/doosan/en_US/README.md

// Exactly one original source domain, never inferred from a model name.
package main

import r "uwvm2.sdk/doosan/tinygo/ros1/doosan-ros1-melodic-devel-complete"

type State = r.Ros1Dsr_msgsRobotState
type Command = r.Ros1Dsr_msgsRobotStop

const stateCapacity = r.Ros1Dsr_msgsRobotStateMaxWireBytes

func decodeState(b []byte) (State, error)     { return r.DecodeRos1Dsr_msgsRobotState(b) }
func decodeCommand(b []byte) (Command, error) { return r.DecodeRos1Dsr_msgsRobotStop(b) }
