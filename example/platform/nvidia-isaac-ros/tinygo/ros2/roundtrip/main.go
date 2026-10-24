// @file main.go
// @brief roundtrip the complete original nvidia-isaac-ros record with the real TinyGo frontend.
// @details All wire bytes are produced/validated at runtime by typed Go codecs.
// No native resource, timer, goroutine, GPU or implicit authority is constructed.
package main

import (
	"bytes"
	"encoding/hex"
	"fmt"
	types "nvidia-isaac-ros/tinygo/ros2/complete"
	"os"
	"strconv"
)

// @brief Construct every active original field from a caller-selected unsigned seed.
// @param seed Dimensionless uint32; all finite sample values retain bounded storage.
// @return Owned complete record with no borrowed/native memory or retained handle.
func sample(seed uint32) types.Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray {
	var value types.Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray
	value.Header.Stamp.Sec = -42
	value.Header.Stamp.Nanosec = seed % 1000000000
	value.Header.Frame_id = "camera-µ"
	value.Detections = make([]types.Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection, 2)
	families := [2]string{"tag36h11", "tag25h9"}
	for i := range value.Detections {
		d := &value.Detections[i]
		d.Family = families[i]
		d.Id = int32(seed) - 29 + int32(i)*17
		d.Center.X = float64(seed)/8 + float64(i)
		d.Center.Y = -float64(i+1) / 4
		d.Center.Z = float64(i+3) / 2
		for j := range d.Corners {
			d.Corners[j].X = float64(seed)/16 + float64(j)
			d.Corners[j].Y = -float64(i+j+1) / 8
			d.Corners[j].Z = float64(i+j+2) / 4
		}
		d.Pose.Header.Stamp.Sec = -45 + int32(i)
		d.Pose.Header.Stamp.Nanosec = (1000 + seed) % 1000000000
		d.Pose.Header.Frame_id = "pose-" + strconv.Itoa(i)
		d.Pose.Pose.Pose.Position.X = float64(i+5) / 8
		d.Pose.Pose.Pose.Position.Y = -float64(seed) / 16
		d.Pose.Pose.Pose.Position.Z = float64(i+7) / 4
		d.Pose.Pose.Pose.Orientation.X = float64(i+1) / 16
		d.Pose.Pose.Pose.Orientation.Y = -float64(i+2) / 16
		d.Pose.Pose.Pose.Orientation.Z = float64(i+3) / 16
		d.Pose.Pose.Pose.Orientation.W = 3.0 / 4
		for j := range d.Pose.Pose.Covariance {
			d.Pose.Pose.Covariance[j] = float64(i+1)*100 + float64(seed)/16 + float64(j)/32
		}
	}
	return value
}

// @brief Validate one complete operation and preserve codec/output refusal.
// @return Zero on success,22 for input/codec invariants,5 for stdout failure.
func run() int {
	seed := uint64(17)
	if len(os.Args) > 2 {
		return 22
	}
	if len(os.Args) == 2 {
		parsed, err := strconv.ParseUint(os.Args[1], 10, 32)
		if err != nil {
			return 22
		}
		seed = parsed
	}
	wire, err := sample(uint32(seed)).Encode()
	if err != nil {
		return 22
	}

	value, err := types.DecodeRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray(wire)
	if err != nil {
		return 22
	}
	again, err := value.Encode()
	if err != nil || !bytes.Equal(wire, again) {
		return 22
	}

	if _, err = fmt.Printf("wire_bytes=%d wire_hex=%s\n", len(wire), hex.EncodeToString(wire)); err != nil {
		return 5
	}
	return 0
}

// @brief Preserve the actual operation's checked exit status.
func main() { os.Exit(run()) }
