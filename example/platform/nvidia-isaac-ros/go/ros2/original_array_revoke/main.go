// @file main.go
// @brief original_array_revoke the complete original Array using genuine Go and public ROS2 owners.
// @details Requires exact manually configured aliases. All decoded strings,
// detections, corners, poses and covariance elements remain owned Go values.
package main

import (
	"bytes"
	"encoding/hex"
	"encoding/json"
	"fmt"
	types "nvidia-isaac-ros/go/ros2/complete"
	"os"
	"time"
	ros "uwvm2.local/roswasmgo"
)

// @brief Preserve the first operation status separately from every cleanup result.
// @details WireHex is complete original canonical data, never a projected hash.
type report struct {
	Primary    uint32 `json:"primary"`
	Cleanup    uint32 `json:"cleanup"`
	Retirement uint32 `json:"retirement"`
	Stale      uint32 `json:"stale"`
	Reopen     uint32 `json:"reopen"`
	Published  uint32 `json:"published"`
	WireHex    string `json:"wire_hex"`
}

// @brief Receive a complete original message with finite idle waiting.
// @param owner Existing exact subscription owner; borrowed and never retired here.
// @return Owned full canonical bytes and original status;110 bounds idle waiting.
// @details Only status11 is idle; no effectful operation is replayed. The fixed
// loop and time.Sleep use explicitly granted monotonic time, without wall time.
func receive(owner *ros.Owner) ([]byte, uint32) {
	for attempt := 0; attempt < 1000; attempt++ {
		event, code := owner.Poll(types.Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArrayMaxWireBytes)
		if code == ros.OK {
			return event.Data, ros.OK
		}
		if code != ros.Again {
			return nil, code
		}
		time.Sleep(20 * time.Millisecond)
	}
	return nil, 110
}

// @brief Execute one native operation and retire every successfully opened owner.
// @return Complete report; a nonzero primary status remains the process result.
func run() (result report) {
	if len(os.Args) != 2 {
		result.Primary = ros.Invalid
		return
	}
	owner, code := ros.Open(os.Args[1])
	if code != ros.OK {
		result.Primary = code
		return
	}
	defer func() {
		if owner != nil {
			result.Cleanup = owner.Close()
		}
	}()
	if code = owner.Subscribe(); code != ros.OK {
		result.Primary = code
		return
	}
	wire, code := receive(owner)
	if code != ros.OK {
		result.Primary = code
		return
	}
	value, err := types.DecodeRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray(wire)
	if err != nil {
		result.Primary = ros.Invalid
		return
	}
	again, err := value.Encode()
	if err != nil || !bytes.Equal(wire, again) {
		result.Primary = ros.Invalid
		return
	}
	result.WireHex = hex.EncodeToString(again)
	copy := *owner
	result.Retirement = owner.Revoke()
	owner = nil
	_, result.Stale = copy.Poll(9872)
	replacement, status := ros.Open(os.Args[1])
	result.Reopen = status
	if replacement != nil {
		result.Cleanup = replacement.Close()
	}
	if result.Retirement != 0 {
		result.Primary = result.Retirement
		return
	}
	if result.Stale != ros.BadHandle || status != 125 {
		result.Primary = ros.Invalid
		return
	}
	return
}

// @brief Serialize all statuses and return the first failed operation unchanged.
func main() {
	result := run()
	text, err := json.Marshal(result)
	if err != nil {
		os.Exit(5)
	}
	if _, err = fmt.Println(string(text)); err != nil {
		os.Exit(5)
	}
	if result.Primary != 0 {
		os.Exit(int(result.Primary))
	}
	if result.Cleanup != 0 {
		os.Exit(int(result.Cleanup))
	}
	os.Exit(0)
}
