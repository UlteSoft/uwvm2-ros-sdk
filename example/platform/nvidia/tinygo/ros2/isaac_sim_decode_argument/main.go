// @file main.go
// @brief Run complete NVIDIA codecs in the selected genuine Go/TinyGo frontend.
// @details All wire bytes come from real typed Encode/Decode calls. No ROS or GPU
// entity is created; standard output is the only application output effect.
package main

import (
	"bytes"
	"encoding/hex"
	"fmt"
	types "nvidia-isaac-sim/tinygo/ros2/complete"
	"os"
	"strconv"
)

// @brief Construct every active sample field from an actual unsigned input.
// @param seed Dimensionless uint32 selecting finite original-field values.
// @return Complete owned typed record; no alias or native object is opened.
func sample(seed uint32) types.Ros2Sensor_msgsMsgJointState {
	var v types.Ros2Sensor_msgsMsgJointState
	v.Header.Stamp.Sec = -2
	v.Header.Stamp.Nanosec = seed % 1000000000
	v.Header.Frame_id = "base"
	v.Name = []string{"j0", "j1"}
	v.Position = make([]float64, 2)
	v.Velocity = make([]float64, 2)
	v.Effort = make([]float64, 2)
	for i := range v.Position {
		v.Position[i] = float64(seed%41)/16 + float64(i)
		v.Velocity[i] = float64(i) / 32
		v.Effort[i] = float64(seed%23) / 4
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
	if "decode_argument" == "decode_argument" {
		if len(os.Args) != 2 || len(os.Args[1]) > types.Ros2Sensor_msgsMsgJointStateMaxWireBytes*2 {
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
	value, err := types.DecodeRos2Sensor_msgsMsgJointState(wire)
	if err != nil {
		return 22
	}
	again, err := value.Encode()
	if err != nil || !bytes.Equal(wire, again) {
		return 22
	}
	if "decode_argument" == "malformed_wire" {
		if len(wire) == 0 {
			return 22
		}
		if _, err = types.DecodeRos2Sensor_msgsMsgJointState(wire[:len(wire)-1]); err == nil {
			return 22
		}
		if _, err = types.DecodeRos2Sensor_msgsMsgJointState(append(append([]byte{}, wire...), 0)); err == nil {
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
