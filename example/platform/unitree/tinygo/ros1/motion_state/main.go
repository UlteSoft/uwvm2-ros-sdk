// @file main.go
// @brief Observe the complete native ROS 1 high-level state and every nested field.
// @details The genuine TinyGo compiler emits the entire application and its
// real WASI/ROS imports into one Wasm command. No host interpreter is involved.
package main

import unitree "uwvm2.local/unitree-tinygo"

// main observes one entire actual native HighState message.
// @brief Retain one subscription, decode all original fields, close once, and print all bytes.
// @details Exactly one alias argument is required. The finite 250-poll budget
// uses real monotonic waits after idle. No socket import, robot command,
// source interpreter, native callback, or implicit ROS permission is created.
func main() {
	arguments, status := unitree.Arguments()
	if status != 0 {
		unitree.Exit(status)
		return
	}
	if len(arguments) != 2 {
		unitree.Exit(22)
		return
	}
	value := unitree.WaitMotionState(arguments[1], 250, unitree.Pause)
	unitree.Exit(unitree.Output(value))
}
