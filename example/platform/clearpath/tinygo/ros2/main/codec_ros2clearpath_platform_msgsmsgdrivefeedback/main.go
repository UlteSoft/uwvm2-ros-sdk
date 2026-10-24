// @brief Round-trip all original clearpath_platform_msgs/msg/DriveFeedback fields with the actual source codec.
// @details Bounds/trailing/truncation checks grant no authority and call no ROS operation.
package main

import (
	"bytes"
	"fmt"
	"os"
	records "uwvm2.local/clearpath-records-tinygo-ros2_main"
)

func main() {
	value := records.Ros2Clearpath_platform_msgsMsgDriveFeedback{}
	encoded, err := value.Encode()
	if err != nil {
		panic(err)
	}
	recovered, err := records.DecodeRos2Clearpath_platform_msgsMsgDriveFeedback(encoded)
	if err != nil {
		panic(err)
	}
	restored, err := recovered.Encode()
	if err != nil || !bytes.Equal(encoded, restored) {
		panic("whole original value changed")
	}
	trailing := append(append([]byte(nil), encoded...), 0)
	if _, err = records.DecodeRos2Clearpath_platform_msgsMsgDriveFeedback(trailing); err == nil {
		panic("trailing bytes accepted")
	}
	if len(encoded) > 0 {
		if _, err = records.DecodeRos2Clearpath_platform_msgsMsgDriveFeedback(encoded[:len(encoded)-1]); err == nil {
			panic("truncated bytes accepted")
		}
	}
	if _, err = fmt.Fprintln(os.Stdout, len(encoded)); err != nil {
		panic(err)
	}
}
