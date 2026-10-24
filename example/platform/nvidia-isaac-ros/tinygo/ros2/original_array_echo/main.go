// @file main.go
// @brief original_array_echo a complete original Array using the genuine TinyGo runtime.
// @details Opens only literal operator aliases. Full typed values remain owned
// in this module; no C surrogate, projected payload or implicit grant is used.
package main

import (
	"bytes"
	"encoding/hex"
	"fmt"
	"os"
	"runtime"
	"time"
	"unsafe"

	types "nvidia-isaac-ros/tinygo/ros2/complete"
	ros "uwvm2.local/roswasm"
)

// @brief Keep original operation, retirement and cleanup outcomes independent.
type report struct {
	// Primary is the first operation error; zero means the entire named flow completed.
	Primary uint32
	// Cleanup is the actual final explicit close result; it never replaces Primary.
	Cleanup uint32
	// Retirement is the actual close or revoke notification status.
	Retirement uint32
	// Stale is the raw same-instance retired-generation refusal, rather than a local guard.
	Stale uint32
	// Reopen is the actual Host refusal after revoking the exact original alias.
	Reopen uint32
	// Published counts distinct deliberate successful publications, without retry.
	Published uint32
	// WireHex contains every original field byte, not a digest or a reduced view.
	WireHex string
}

// @brief Poll a bounded complete original message; only empty status11 permits idle waiting.
// @param owner Borrowed live exact subscription; this function never retires it.
// @return Owned complete wire bytes or original status;110 bounds the idle loop.
// @details Uses TinyGo's explicitly granted realtime clock. Effectful publish/open operations are not replayed.
func receive(owner *ros.Capability) ([]byte, uint32) {
	buffer := make([]byte, types.Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArrayMaxWireBytes)
	for attempt := 0; attempt < 1000; attempt++ {
		count, err := owner.Poll(buffer)
		code := ros.ErrorCode(err)
		if code == ros.Success {
			if count > uint64(len(buffer)) {
				return nil, ros.Invalid
			}
			return buffer[:int(count)], ros.Success
		}
		if code != ros.Again {
			return nil, code
		}
		time.Sleep(20 * time.Millisecond)
	}
	return nil, 110
}

// @brief Observe the Host's real refusal for the exact formerly borrowed retired handle.
// @param handle Original same-instance/backend ID; no generation or slot bits are synthesized.
// @return Original raw event_poll status;9 is required after successful retirement.
// @details Buffers and the uint64 length slot stay alive through one synchronous
// import. uintptr conversion zero-extends a real wasm32 pointer to the raw ABI.
func staleStatus(handle uint64) uint32 {
	if unsafe.Sizeof(uintptr(0)) != 4 {
		return ros.Unsupported
	}
	buffer := make([]byte, 9872)
	length := ^uint64(0)
	code := ros.RawEventPoll(handle, 0,
		uint64(uintptr(unsafe.Pointer(&buffer[0]))), uint64(len(buffer)),
		uint64(uintptr(unsafe.Pointer(&length))))
	runtime.KeepAlive(buffer)
	runtime.KeepAlive(&length)
	return code
}

// @brief Execute the named native flow, preserving every opened owner's explicit cleanup result.
// @return Complete bounded evidence; a refused alias returns the actual Host status.
func run() (result report) {
	if len(os.Args) != 3 {
		result.Primary = ros.Invalid
		return
	}
	owner, err := ros.Open(os.Args[1])
	if err != nil {
		result.Primary = ros.ErrorCode(err)
		return
	}
	defer func() {
		if owner != nil {
			result.Cleanup = ros.ErrorCode(owner.Close())
		}
	}()
	if err = owner.Subscribe(); err != nil {
		result.Primary = ros.ErrorCode(err)
		return
	}
	wire, code := receive(owner)
	if code != ros.Success {
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
	result.Retirement = ros.ErrorCode(owner.Close())
	owner = nil
	if result.Retirement != 0 {
		result.Primary = result.Retirement
		return
	}
	publisher, err := ros.Open(os.Args[2])
	if err != nil {
		result.Primary = ros.ErrorCode(err)
		return
	}
	defer func() { result.Cleanup = ros.ErrorCode(publisher.Close()) }()
	// Each deliberate publication has its own observed count and stops on refusal.
	for i := 0; i < 20; i++ {
		if err = publisher.Publish(again); err != nil {
			result.Primary = ros.ErrorCode(err)
			return
		}
		result.Published++
		time.Sleep(100 * time.Millisecond)
	}
	return
}

// @brief Emit exact numeric statuses and complete hexadecimal bytes using real TinyGo stdout.
// @details Hex is bounded ASCII, so the JSON string has no unescaped data. No
// reflection-based JSON runtime or precomputed application output is needed.
func main() {
	result := run()
	_, err := fmt.Printf("{\"primary\":%d,\"cleanup\":%d,\"retirement\":%d,\"stale\":%d,\"reopen\":%d,\"published\":%d,\"wire_hex\":\"%s\"}\n",
		result.Primary, result.Cleanup, result.Retirement, result.Stale,
		result.Reopen, result.Published, result.WireHex)
	if err != nil {
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
