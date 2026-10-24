// @file main.go
// @brief Exercise the complete original lifecycle_msgs/srv/ChangeState_Response with the real Go compiler.
// @details This local fixture opens no ROS owner or native controller resource.
package main

import (
	"bytes"
	"fmt"
	"os"
	records "uwvm2.sdk/kuka/go/ros2/kuka-ros2-complete"
)

func main() {
	value := records.Ros2Lifecycle_msgsSrvChangeState_Response{}
	wire, err := value.Encode()
	if err != nil {
		fmt.Fprintln(os.Stderr, err)
		os.Exit(22)
	}
	decoded, err := records.DecodeRos2Lifecycle_msgsSrvChangeState_Response(wire)
	if err != nil {
		fmt.Fprintln(os.Stderr, err)
		os.Exit(22)
	}
	again, err := decoded.Encode()
	if err != nil || !bytes.Equal(wire, again) {
		os.Exit(22)
	}
	fmt.Printf("{\"type\":\"lifecycle_msgs/srv/ChangeState_Response\",\"bytes\":%d,\"wire_hex\":\"%x\"}\n", len(wire), wire)
}
