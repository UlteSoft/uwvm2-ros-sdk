//go:build wasip1 && wasm && tinygo

// @file client.go
// @brief Provide the complete agibot client.go source contract.
// @details Complete original fields, scalar widths, canonical quotas and interface roles are retained. Local
// encoding grants no ROS authority; invalid or partial wire is rejected before a value is exposed.
// SPDX-License-Identifier: Apache-2.0
// Package agibot implements TinyGo WASIp1 observations through uwvm2-ros.
// Build with the dedicated TinyGo producer, conservative non-moving collection,
// and scheduler=none. Calls borrow offsets only while the owning stack frame is
// live. The producer excludes moving goroutine stacks and opaque host callbacks.
// Complete generated value codecs are shared explicitly under agibot/shared/go.
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

//go:wasmimport wasi_snapshot_preview1 poll_oneoff
func pollOneoff(subscription, event, count, received uint32) uint32

// wasiClockSubscription is the fixed 48-byte WASIp1 clock subscription layout.
// The explicit padding preserves the canonical offsets on the wasm32 producer:
// tag=8, clock=16, timeout=24, precision=32, flags=40. A zero flag means a
// relative timeout measured in nanoseconds; clock 1 is CLOCK_MONOTONIC.
// This private transport record is unrelated to any Agibot ROS message.
type wasiClockSubscription struct {
	userData  uint64
	tag       uint8
	_         [7]byte
	clock     uint32
	_         uint32
	timeout   uint64
	precision uint64
	flags     uint16
	_         [6]byte
}

// wasiClockEvent is the fixed 32-byte WASIp1 event layout. A clock-only poll
// leaves the final 16 bytes unused. errno and event type remain independent
// from the poll function's own errno and must both be checked by the caller.
type wasiClockEvent struct {
	userData uint64
	errno    uint16
	tag      uint8
	_        [5]byte
	_        [2]uint64
}

// Both directions reject a producer whose record size differs from the ABI.
// The explicit fixed-width padding also fixes every documented field offset.
var (
	_ [48 - unsafe.Sizeof(wasiClockSubscription{})]byte
	_ [unsafe.Sizeof(wasiClockSubscription{}) - 48]byte
	_ [32 - unsafe.Sizeof(wasiClockEvent{})]byte
	_ [unsafe.Sizeof(wasiClockEvent{}) - 32]byte
)

// pauseMonotonic blocks for a bounded relative interval using the granted clock.
// TinyGo's scheduler=none makes time.Sleep unsuitable for observation pacing.
// The synchronous WASI import borrows these non-moving records until it returns.
// Return values preserve the original poll/event errno; 22 rejects an invalid
// event count, type or user-data cookie. No wall-clock authority is required.
func pauseMonotonic(nanoseconds uint64) uint32 {
	subscription := wasiClockSubscription{userData: 1, clock: 1, timeout: nanoseconds}
	var event wasiClockEvent
	var received uint32
	code := pollOneoff(
		uint32(uintptr(unsafe.Pointer(&subscription))),
		uint32(uintptr(unsafe.Pointer(&event))),
		1,
		uint32(uintptr(unsafe.Pointer(&received))),
	)
	runtime.KeepAlive(&subscription)
	runtime.KeepAlive(&event)
	runtime.KeepAlive(&received)
	if code != 0 {
		return code
	}
	if received != 1 || event.tag != 0 || event.userData != 1 {
		return 22
	}
	return uint32(event.errno)
}

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
	// The selected non-moving collector scans integer words conservatively.
	// scheduler=none keeps this synchronous stack frame at a stable address;
	// KeepAlive below retains each borrowed backing store until the import ends.
	code := capabilityOpen(0, uint64(uintptr(unsafe.Pointer(&name[0]))), uint64(len(name)), uint64(uintptr(unsafe.Pointer(&handle))))
	runtime.KeepAlive(name)
	if code != 0 {
		return nil, ObservationError{Code: code}
	}
	bytes := make([]byte, capacity)
	pointer := uint64(uintptr(unsafe.Pointer(&bytes[0])))
	lengthPointer := uint64(uintptr(unsafe.Pointer(&length)))
	if state {
		// Read the granted monotonic clock directly. time.Now would additionally
		// require the unrelated wall-clock permission, even for this deadline.
		var clock uint64
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
			if code != 0 {
				break
			}
			if clock < started {
				code = 5
				break
			}
			if clock-started >= uint64(timeout) {
				code = 110
				break
			}
			remaining := uint64(timeout) - (clock - started)
			interval := uint64(time.Millisecond)
			if remaining < interval {
				interval = remaining
			}
			code = pauseMonotonic(interval)
		}
	} else {
		request := [8]byte{}
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
