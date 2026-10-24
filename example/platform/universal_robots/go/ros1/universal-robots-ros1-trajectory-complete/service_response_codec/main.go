// @file main.go
// @brief Exercise the complete original ur_dashboard_msgs/AddToLogResponse with the real Go compiler.
// @details This local fixture opens no ROS owner or native controller resource.
package main

import (
	"bytes"
	"fmt"
	"os"
	records "uwvm2.sdk/universal_robots/go/ros1/universal-robots-ros1-trajectory-complete"
)

func main() {
	value := records.Ros1Ur_dashboard_msgsAddToLogResponse{}
	wire, err := value.Encode()
	if err != nil {
		fmt.Fprintln(os.Stderr, err)
		os.Exit(22)
	}
	decoded, err := records.DecodeRos1Ur_dashboard_msgsAddToLogResponse(wire)
	if err != nil {
		fmt.Fprintln(os.Stderr, err)
		os.Exit(22)
	}
	again, err := decoded.Encode()
	if err != nil || !bytes.Equal(wire, again) {
		os.Exit(22)
	}
	fmt.Printf("{\"type\":\"ur_dashboard_msgs/AddToLogResponse\",\"bytes\":%d,\"wire_hex\":\"%x\"}\n", len(wire), wire)
}
