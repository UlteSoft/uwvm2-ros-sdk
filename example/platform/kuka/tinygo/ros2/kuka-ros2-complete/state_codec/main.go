// @file main.go
// @brief Exercise the complete original kuka_driver_interfaces/msg/KssStatus with the real TinyGo compiler.
// @details This local fixture opens no ROS owner or native controller resource.
package main

import (
	"bytes"
	"fmt"
	"os"
	records "uwvm2.sdk/kuka/tinygo/ros2/kuka-ros2-complete"
)

func main() {
	value := records.Ros2Kuka_driver_interfacesMsgKssStatus{}
	wire, err := value.Encode()
	if err != nil {
		fmt.Fprintln(os.Stderr, err)
		os.Exit(22)
	}
	decoded, err := records.DecodeRos2Kuka_driver_interfacesMsgKssStatus(wire)
	if err != nil {
		fmt.Fprintln(os.Stderr, err)
		os.Exit(22)
	}
	again, err := decoded.Encode()
	if err != nil || !bytes.Equal(wire, again) {
		os.Exit(22)
	}
	fmt.Printf("{\"type\":\"kuka_driver_interfaces/msg/KssStatus\",\"bytes\":%d,\"wire_hex\":\"%x\"}\n", len(wire), wire)
}
