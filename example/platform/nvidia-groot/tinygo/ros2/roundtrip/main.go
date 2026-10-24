// @file main.go
// @brief roundtrip the complete original nvidia-groot record with the real TinyGo frontend.
// @details All wire bytes are produced/validated at runtime by typed Go codecs.
// No native resource, timer, goroutine, GPU or implicit authority is constructed.
package main

import (
	"bytes"
	"encoding/hex"
	"fmt"
	types "nvidia-groot/tinygo/ros2/complete"
	"os"
	"strconv"
)

// @brief Construct every active original field from a caller-selected unsigned seed.
// @param seed Dimensionless uint32; all finite sample values retain bounded storage.
// @return Owned complete record with no borrowed/native memory or retained handle.
func sample(seed uint32) types.Ros2Uwvm_groot_bridgeMsgFloatTensor {
	var v types.Ros2Uwvm_groot_bridgeMsgFloatTensor
	v.Key = "state"
	v.Shape = [3]uint32{1, 1, 3}
	v.Values = make([]float32, 3)
	for i := range v.Values {
		v.Values[i] = float32(seed%97)/8 + float32(i)
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

	value, err := types.DecodeRos2Uwvm_groot_bridgeMsgFloatTensor(wire)
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
