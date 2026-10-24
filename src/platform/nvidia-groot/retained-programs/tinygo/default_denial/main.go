//go:build tinygo && (wasm || tinygo.wasm) && ros2 && !ros1

// @file main.go
// @brief Exercise the selected source-language SDK operation for nvidia-groot.
// @details Build through this example's Xmake description. Runtime and ROS authority must be supplied explicitly
// by the deployment; source availability does not establish successful native communication.

// Actual Guest alias attempt; no model, ROS client, file or device owner starts.
package main

import ros "uwvm2.local/roswasm"

func main() {
	if ros.RawAbiVersion() != 1 {
		panic("unsupported ROS2 ABI")
	}
	capability, err := ros.Open("nvidia-groot-infer")
	if value, ok := err.(ros.Error); ok && value.Code == 13 && capability == nil {
		return
	}
	if capability != nil {
		_ = capability.Close()
	}
	panic("empty Guest authority did not deny GR00T alias")
}
