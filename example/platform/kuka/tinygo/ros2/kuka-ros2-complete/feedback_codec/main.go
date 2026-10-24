// @file main.go
// @brief Exercise the complete original control_msgs/action/FollowJointTrajectory_Feedback with the real TinyGo compiler.
// @details This local fixture opens no ROS owner or native controller resource.
package main

import (
	"bytes"
	"fmt"
	"os"
	records "uwvm2.sdk/kuka/tinygo/ros2/kuka-ros2-complete"
)

func main() {
	value := records.Ros2Control_msgsActionFollowJointTrajectory_Feedback{}
	wire, err := value.Encode()
	if err != nil {
		fmt.Fprintln(os.Stderr, err)
		os.Exit(22)
	}
	decoded, err := records.DecodeRos2Control_msgsActionFollowJointTrajectory_Feedback(wire)
	if err != nil {
		fmt.Fprintln(os.Stderr, err)
		os.Exit(22)
	}
	again, err := decoded.Encode()
	if err != nil || !bytes.Equal(wire, again) {
		os.Exit(22)
	}
	fmt.Printf("{\"type\":\"control_msgs/action/FollowJointTrajectory_Feedback\",\"bytes\":%d,\"wire_hex\":\"%x\"}\n", len(wire), wire)
}
