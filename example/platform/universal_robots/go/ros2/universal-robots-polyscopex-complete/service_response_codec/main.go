// @file main.go
// @brief Exercise the complete original urinterfaces/srv/SetAnalogOutput_Response with the real Go compiler.
// @details This local fixture opens no ROS owner or native controller resource.
package main

import (
	"bytes"
	"fmt"
	"os"
	records "uwvm2.sdk/universal_robots/go/ros2/universal-robots-polyscopex-complete"
)

func main() {
	value := records.Ros2UrinterfacesSrvSetAnalogOutput_Response{}
	wire, err := value.Encode()
	if err != nil {
		fmt.Fprintln(os.Stderr, err)
		os.Exit(22)
	}
	decoded, err := records.DecodeRos2UrinterfacesSrvSetAnalogOutput_Response(wire)
	if err != nil {
		fmt.Fprintln(os.Stderr, err)
		os.Exit(22)
	}
	again, err := decoded.Encode()
	if err != nil || !bytes.Equal(wire, again) {
		os.Exit(22)
	}
	fmt.Printf("{\"type\":\"urinterfaces/srv/SetAnalogOutput_Response\",\"bytes\":%d,\"wire_hex\":\"%x\"}\n", len(wire), wire)
}
