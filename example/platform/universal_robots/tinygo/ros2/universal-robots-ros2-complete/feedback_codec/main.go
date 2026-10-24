// @file main.go
// @brief Exercise the complete original ur_msgs/action/FollowJointTrajectoryUntil_Feedback with the real TinyGo compiler.
// @details This local fixture opens no ROS owner or native controller resource.
package main

import (
	"bytes"
	"fmt"
	"os"
	records "uwvm2.sdk/universal_robots/tinygo/ros2/universal-robots-ros2-complete"
)

func main() {
	value := records.Ros2Ur_msgsActionFollowJointTrajectoryUntil_Feedback{}
	wire, err := value.Encode()
	if err != nil {
		fmt.Fprintln(os.Stderr, err)
		os.Exit(22)
	}
	decoded, err := records.DecodeRos2Ur_msgsActionFollowJointTrajectoryUntil_Feedback(wire)
	if err != nil {
		fmt.Fprintln(os.Stderr, err)
		os.Exit(22)
	}
	again, err := decoded.Encode()
	if err != nil || !bytes.Equal(wire, again) {
		os.Exit(22)
	}
	fmt.Printf("{\"type\":\"ur_msgs/action/FollowJointTrajectoryUntil_Feedback\",\"bytes\":%d,\"wire_hex\":\"%x\"}\n", len(wire), wire)
}
