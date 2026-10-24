// @file main.go
// @brief Exercise the complete original dsr_msgs2/action/JogH2r_Feedback with the real Go compiler.
// @details This local fixture opens no ROS owner or native controller resource.
package main

import (
	"bytes"
	"fmt"
	"os"
	records "uwvm2.sdk/doosan/go/ros2/doosan-ros2-humble-complete"
)

func main() {
	value := records.Ros2Dsr_msgs2ActionJogH2r_Feedback{}
	wire, err := value.Encode()
	if err != nil {
		fmt.Fprintln(os.Stderr, err)
		os.Exit(22)
	}
	decoded, err := records.DecodeRos2Dsr_msgs2ActionJogH2r_Feedback(wire)
	if err != nil {
		fmt.Fprintln(os.Stderr, err)
		os.Exit(22)
	}
	again, err := decoded.Encode()
	if err != nil || !bytes.Equal(wire, again) {
		os.Exit(22)
	}
	fmt.Printf("{\"type\":\"dsr_msgs2/action/JogH2r_Feedback\",\"bytes\":%d,\"wire_hex\":\"%x\"}\n", len(wire), wire)
}
