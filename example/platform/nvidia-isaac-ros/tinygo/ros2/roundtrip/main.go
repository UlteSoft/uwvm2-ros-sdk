// @file main.go
// @brief Run complete NVIDIA codecs in the selected genuine Go/TinyGo frontend.
// @details All wire bytes come from real typed Encode/Decode calls. No ROS or GPU
// entity is created; standard output is the only application output effect.
package main

import (
	"bytes"
	"encoding/hex"
	"fmt"
	types "nvidia-isaac-ros/tinygo/ros2/complete"
	"os"
	"strconv"
)

// @brief Construct every active sample field from an actual unsigned input.
// @param seed Dimensionless uint32 selecting finite original-field values.
// @return Complete owned typed record; no alias or native object is opened.
func sample(seed uint32) types.Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray {
	var v types.Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray
	v.Header.Stamp.Sec = -3
	v.Header.Stamp.Nanosec = seed % 1000000000
	v.Header.Frame_id = "cam"
	v.Detections = make([]types.Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection, 1)
	d := &v.Detections[0]
	d.Family = "tag36h11"
	d.Id = int32(seed & 0x7fffffff)
	d.Center.X = float64(seed) / 8
	d.Pose.Pose.Pose.Orientation.W = 1
	for i := range d.Corners {
		d.Corners[i].X = float64(seed) + float64(i)
		d.Corners[i].Y = float64(i) * 2.5
	}
	for i := range d.Pose.Pose.Covariance {
		d.Pose.Pose.Covariance[i] = float64(seed%31) + float64(i)/64
	}
	return v
}

// @brief Execute one complete-value operation and retain real errors.
func run() int {
	if len(os.Args) > 2 {
		return 22
	}
	var wire []byte
	var err error
	if "roundtrip" == "decode_argument" {
		if len(os.Args) != 2 || len(
			os.Args[1]) > types.Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArrayMaxWireBytes*2 {
			return 22
		}
		wire, err = hex.DecodeString(os.Args[1])
		if err != nil {
			return 22
		}
	} else {
		seed := uint64(17)
		if len(os.Args) == 2 {
			seed, err = strconv.ParseUint(os.Args[1], 10, 32)
			if err != nil {
				return 22
			}
		}
		wire, err = sample(uint32(seed)).Encode()
		if err != nil {
			return 22
		}
	}
	value, err := types.DecodeRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray(wire)
	if err != nil {
		return 22
	}
	again, err := value.Encode()
	if err != nil || !bytes.Equal(wire, again) {
		return 22
	}
	if "roundtrip" == "malformed_wire" {
		if len(wire) == 0 {
			return 22
		}
		if _, err = types.DecodeRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray(wire[:len(wire)-1]); err == nil {
			return 22
		}
		if _, err = types.DecodeRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray(append(append([]byte{}, wire...),
			0)); err == nil {
			return 22
		}
	}
	if _, err = fmt.Printf("wire_bytes=%d wire_hex=%s\n", len(wire), hex.EncodeToString(wire)); err != nil {
		return 5
	}
	return 0
}

// @brief Exit with the actual codec/output result from the real language process.
func main() { os.Exit(run()) }
