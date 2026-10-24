// @file main.go
// @brief Exercise the complete original dsr_msgs/RobotState with the real TinyGo compiler.
// @details This local fixture opens no ROS owner or native controller resource.
package main

import (
	"bytes"
	"fmt"
	"os"
	records "uwvm2.sdk/doosan/tinygo/ros1/doosan-ros1-master-complete"
)

func main() {
	value := records.Ros1Dsr_msgsRobotState{}
	wire, err := value.Encode()
	if err != nil {
		fmt.Fprintln(os.Stderr, err)
		os.Exit(22)
	}
	decoded, err := records.DecodeRos1Dsr_msgsRobotState(wire)
	if err != nil {
		fmt.Fprintln(os.Stderr, err)
		os.Exit(22)
	}
	again, err := decoded.Encode()
	if err != nil || !bytes.Equal(wire, again) {
		os.Exit(22)
	}
	fmt.Printf("{\"type\":\"dsr_msgs/RobotState\",\"bytes\":%d,\"wire_hex\":\"%x\"}\n", len(wire), wire)
}
