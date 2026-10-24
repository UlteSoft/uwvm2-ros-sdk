// @file main.go
// @brief malformed_wire the complete original nvidia-isaac-sim record with the real TinyGo frontend.
// @details All wire bytes are produced/validated at runtime by typed Go codecs.
// No native resource, timer, goroutine, GPU or implicit authority is constructed.
package main

import (
	"bytes"
	"encoding/hex"
	"fmt"
	types "nvidia-isaac-sim/tinygo/ros2/complete"
	"os"
	"strconv"
)

// @brief Construct every active original field from a caller-selected unsigned seed.
// @param seed Dimensionless uint32; all finite sample values retain bounded storage.
// @return Owned complete record with no borrowed/native memory or retained handle.
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

	value, err := types.DecodeRos2Sensor_msgsMsgJointState(wire)
	if err != nil {
		return 22
	}
	again, err := value.Encode()
	if err != nil || !bytes.Equal(wire, again) {
		return 22
	}
	if len(wire) == 0 {
		return 22
	}
	if _, err = types.DecodeRos2Sensor_msgsMsgJointState(wire[:len(wire)-1]); err == nil {
		return 22
	}
	extra := append(append([]byte{}, wire...), 0)
	if _, err = types.DecodeRos2Sensor_msgsMsgJointState(extra); err == nil {
		return 22
	}

	if _, err = fmt.Printf("wire_bytes=%d wire_hex=%s\n", len(wire), hex.EncodeToString(wire)); err != nil {
		return 5
	}
	return 0
}

// @brief Preserve the actual operation's checked exit status.
func main() { os.Exit(run()) }
