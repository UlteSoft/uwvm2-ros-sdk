//go:build wasip1 && wasm && !tinygo

// @file client.go
// @brief Provide the complete agibot client.go source contract.
// @details Complete original fields, scalar widths, canonical quotas and interface roles are retained. Local
// encoding grants no ROS authority; invalid or partial wire is rejected before a value is exposed.
// SPDX-License-Identifier: Apache-2.0
// Package agibot implements X2 AimDK observation through uwvm2-ros imports.
// Compile with official Go for GOOS=wasip1 GOARCH=wasm. No network or native
// library is used; only exact aliases granted by the runtime can reach ROS.
package agibot

import (
	"fmt"
	"runtime"
	"time"
	"unsafe"

	aimdk "agibot/shared/go/aimdk_v1_1_0"
)

//go:wasmimport uwvm_ros2_v1 abi_version
func abiVersion() uint32

//go:wasmimport uwvm_ros2_v1 capability_open
func capabilityOpen(memory uint32, alias, size, result uint64) uint32

//go:wasmimport uwvm_ros2_v1 capability_close
func capabilityClose(handle uint64) uint32

//go:wasmimport uwvm_ros2_v1 service_call
func serviceCall(handle uint64, memory uint32, request, size, output, capacity, length uint64) uint32

//go:wasmimport uwvm_ros2_v1 topic_subscribe
func topicSubscribe(handle uint64) uint32

//go:wasmimport uwvm_ros2_v1 event_poll
func eventPoll(handle uint64, memory uint32, output, capacity, length uint64) uint32

//go:wasmimport wasi_snapshot_preview1 clock_time_get
func clockTimeGet(clock uint32, precision uint64, output uint32) uint32

// ObservationError retains both the primary errno and the independent close error.
// A timeout never triggers a service retry. Vendor response codes stay in values.
type ObservationError struct {
	// Code is the original observation errno, or the close errno after success.
	Code uint32
	// Cleanup is the independent capability_close result; zero means closed.
	Cleanup uint32
}

// Error formats the original runtime errors without claiming a vendor rejection.
func (e ObservationError) Error() string {
	return fmt.Sprintf("Agibot observation failed: %d; close: %d", e.Code, e.Cleanup)
}

// observe owns one capability and its bytes. Every successful open is closed;
// the request and output remain alive in the same guest memory through imports.
func observe(alias string, state bool, capacity int, timeout time.Duration) ([]byte, error) {
	if len(alias) == 0 || len(alias) > 255 || timeout < time.Millisecond || timeout > 30*time.Second {
		return nil, ObservationError{Code: 22}
	}
	if abiVersion() != 1 {
		return nil, ObservationError{Code: 95}
	}
	name := []byte(alias)
	var handle, length uint64
	// Integer-valued ABI offsets are invisible to Go's pointer liveness analysis.
	// Pin first: the scalar slots escape to the heap, and neither a growing
	// goroutine stack nor a collection during polling can invalidate an offset.
	var pinned runtime.Pinner
	pinned.Pin(&name[0])
	pinned.Pin(&handle)
	pinned.Pin(&length)
	defer pinned.Unpin()
	code := capabilityOpen(0, uint64(uintptr(unsafe.Pointer(&name[0]))), uint64(len(name)), uint64(uintptr(unsafe.Pointer(&handle))))
	runtime.KeepAlive(name)
	if code != 0 {
		return nil, ObservationError{Code: code}
	}
	bytes := make([]byte, capacity)
	pinned.Pin(&bytes[0])
	pointer := uint64(uintptr(unsafe.Pointer(&bytes[0])))
	lengthPointer := uint64(uintptr(unsafe.Pointer(&length)))
	if state {
		// Read the granted monotonic clock directly. time.Now would additionally
		// require the unrelated wall-clock permission, even for this deadline.
		var clock uint64
		pinned.Pin(&clock)
		clockPointer := uint32(uintptr(unsafe.Pointer(&clock)))
		code = clockTimeGet(1, 1, clockPointer)
		started := clock
		if code == 0 {
			code = topicSubscribe(handle)
		}
		for code == 0 {
			code = eventPoll(handle, 0, pointer, uint64(capacity), lengthPointer)
			if code != 11 {
				break
			}
			code = clockTimeGet(1, 1, clockPointer)
			if code != 0 || clock < started {
				code = 5
				break
			}
			if clock-started >= uint64(timeout) {
				code = 110
				break
			}
			time.Sleep(time.Millisecond)
			code = 0
		}
	} else {
		request := [8]byte{}
		pinned.Pin(&request[0])
		code = serviceCall(handle, 0, uint64(uintptr(unsafe.Pointer(&request[0]))), 8, pointer, uint64(capacity), lengthPointer)
		runtime.KeepAlive(request)
	}
	runtime.KeepAlive(bytes)
	cleanup := capabilityClose(handle)
	if code == 0 && length > uint64(capacity) {
		code = 90
	}
	if code == 0 {
		code = cleanup
	}
	if code != 0 {
		return nil, ObservationError{Code: code, Cleanup: cleanup}
	}
	return bytes[:int(length)], nil
}

// QueryMode sends GetMcAction once under the host policy deadline. The complete
// response preserves the official header, action information and vendor code.
func QueryMode(alias string) (aimdk.Ros2Aimdk_msgsSrvGetMcAction_Response, error) {
	bytes, err := observe(alias, false, 156, 3*time.Second)
	if err != nil {
		return aimdk.Ros2Aimdk_msgsSrvGetMcAction_Response{}, err
	}
	return aimdk.DecodeRos2Aimdk_msgsSrvGetMcAction_Response(bytes)
}

// NextMotionState receives one complete original state. timeout is a monotonic
// polling deadline; TRANSIENT_LOCAL may supply an older retained timestamp.
// The returned value owns its slices and strings and retains original units.
func NextMotionState(alias string, timeout time.Duration) (aimdk.Ros2Aimdk_msgsMsgMcCommonState, error) {
	bytes, err := observe(alias, true, 698, timeout)
	if err != nil {
		return aimdk.Ros2Aimdk_msgsMsgMcCommonState{}, err
	}
	return aimdk.DecodeRos2Aimdk_msgsMsgMcCommonState(bytes)
}

// ListResources enumerates original X2 Ultra resources without playing actions.
// All uint64 values remain exact. The selected bounded codec permits four
// resources and 128-byte strings; an oversized native response fails explicitly.
func ListResources(alias string) (aimdk.Ros2Aimdk_msgsSrvGetRobotResources_Response, error) {
	bytes, err := observe(alias, false, 10236, 3*time.Second)
	if err != nil {
		return aimdk.Ros2Aimdk_msgsSrvGetRobotResources_Response{}, err
	}
	return aimdk.DecodeRos2Aimdk_msgsSrvGetRobotResources_Response(bytes)
}
