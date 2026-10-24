// @file client.go
// @brief Provide the complete agibot client.go source contract.
// @details Complete original fields, scalar widths, canonical quotas and interface roles are retained. Local
// encoding grants no ROS authority; invalid or partial wire is rejected before a value is exposed.
// SPDX-License-Identifier: Apache-2.0
// Package agibot implements the repository's TinyGo toolchain under the requested
// tingyo directory identifier. It uses three explicitly named WebAssembly imports,
// not an official-Go compiler substitute. The host owns HTTP; the guest owns JSON.
package agibot

import (
	"fmt"
	"unsafe"
)

//go:wasmimport agibot query_mode
func hostQueryMode(timeoutMs int32, response unsafe.Pointer, capacity uint32) int32

//go:wasmimport agibot next_motion_state
func hostNextMotionState(timeoutMs int32, response unsafe.Pointer, capacity uint32) int32

//go:wasmimport agibot list_resources
func hostListResources(timeoutMs int32, response unsafe.Pointer, capacity uint32) int32

// decode copies a complete response. Negative transport results never become valid JSON.
func decode(response []byte, result int32) (string, error) {
	if result <= 0 || int(result) >= len(response) {
		return "", fmt.Errorf("Agibot host transport failed: %d", result)
	}
	return string(response[:result]), nil
}

// QueryMode returns original GetMcAction JSON; timeoutMs covers discovery/response in ms.
func QueryMode(timeoutMs int32) (string, error) {
	response := make([]byte, 1048576)
	result := hostQueryMode(timeoutMs, unsafe.Pointer(&response[0]), uint32(len(response)))
	return decode(response, result)
}

// NextMotionState awaits one fresh McCommonState, preserving original units and frames.
func NextMotionState(timeoutMs int32) (string, error) {
	response := make([]byte, 1048576)
	result := hostNextMotionState(timeoutMs, unsafe.Pointer(&response[0]), uint32(len(response)))
	return decode(response, result)
}

// ListResources enumerates original X2 Ultra LinkCraft resources without playback.
func ListResources(timeoutMs int32) (string, error) {
	response := make([]byte, 1048576)
	result := hostListResources(timeoutMs, unsafe.Pointer(&response[0]), uint32(len(response)))
	return decode(response, result)
}
