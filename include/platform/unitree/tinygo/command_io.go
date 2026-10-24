//go:build tinygo && (wasm || tinygo.wasm)

// @brief Provide real bounded WASI command IO for genuine TinyGo Unitree guests.
// @details All imports execute in the compiled Wasm command. No os.File method
// table, source interpreter, socket import, or native callback is required.
package unitree

import (
	"encoding/binary"
	"runtime"
	"strconv"
	"unicode/utf8"
	"unsafe"
)

//go:wasmimport wasi_snapshot_preview1 args_sizes_get
func commandArgsSizes(count uint32, bytes uint32) uint32

//go:wasmimport wasi_snapshot_preview1 args_get
func commandArgs(pointers uint32, bytes uint32) uint32

//go:wasmimport wasi_snapshot_preview1 fd_write
func commandWrite(fd uint32, iov uint32, count uint32, written uint32) uint32

//go:wasmimport wasi_snapshot_preview1 poll_oneoff
func commandPoll(input uint32, output uint32, count uint32, ready uint32) uint32

//go:wasmimport wasi_snapshot_preview1 proc_exit
func commandExit(status uint32)

// Arguments reads the entire actual WASI argument vector into owned strings.
// @brief Validate finite framing and strict UTF-8 before publishing any argument.
// @return Owned argument strings and status 0, or nil and original/invalid status.
// @details The fixed Preview 1 pointer ABI is qualified only for wasm32. At
// most 16 arguments and 4096 aggregate bytes are accepted. Temporary guest
// pointers remain rooted through each synchronous import; none escapes the call.
func Arguments() ([]string, uint32) {
	var count, size uint32
	status := commandArgsSizes(uint32(uintptr(unsafe.Pointer(&count))), uint32(uintptr(unsafe.Pointer(&size))))
	if status != 0 {
		return nil, status
	}
	if count == 0 || count > 16 || size == 0 || size > 4096 {
		return nil, 22
	}
	pointers := make([]uint32, count)
	bytes := make([]byte, size)
	status = commandArgs(uint32(uintptr(unsafe.Pointer(&pointers[0]))), uint32(uintptr(unsafe.Pointer(&bytes[0]))))
	runtime.KeepAlive(pointers)
	runtime.KeepAlive(bytes)
	if status != 0 {
		return nil, status
	}
	start := uint32(uintptr(unsafe.Pointer(&bytes[0])))
	output := make([]string, 0, count)
	for _, pointer := range pointers {
		if pointer < start || uint64(pointer)-uint64(start) >= uint64(size) {
			return nil, 22
		}
		begin := pointer - start
		end := begin
		for end < size && bytes[end] != 0 {
			end++
		}
		if end == size || !utf8.Valid(bytes[begin:end]) {
			return nil, 22
		}
		output = append(output, string(bytes[begin:end]))
	}
	return output, 0
}

// Pause waits twenty milliseconds through the actual WASI monotonic clock.
// @brief Perform one synchronous clock-event wait between idle native polls.
// @return Zero only after one complete clock event; otherwise original/invalid status.
// @details Input/output use Preview 1's fixed 48/32-byte records. No descriptor,
// native thread, hidden timer worker, ROS owner, or command publication is created.
func Pause() uint32 {
	var input [48]byte
	var output [32]byte
	var ready uint32
	binary.LittleEndian.PutUint32(input[16:], 1)
	binary.LittleEndian.PutUint64(input[24:], 20000000)
	binary.LittleEndian.PutUint64(input[32:], 1000000)
	status := commandPoll(uint32(uintptr(unsafe.Pointer(&input[0]))), uint32(uintptr(unsafe.Pointer(&output[0]))), 1, uint32(uintptr(unsafe.Pointer(&ready))))
	runtime.KeepAlive(input)
	runtime.KeepAlive(output)
	if status != 0 {
		return status
	}
	if ready != 1 || binary.LittleEndian.Uint16(output[8:]) != 0 || output[10] != 0 {
		return 5
	}
	return 0
}

// Exit terminates this actual WASI command after its normal checked cleanup.
// @brief Clamp the original process status to 125 and invoke real proc_exit.
// @param[in] status Original operation/cleanup/IO status, not a native robot result.
// @details Fatal termination runs no language destructor or robot recovery.
func Exit(status uint32) {
	if status > 125 {
		status = 125
	}
	commandExit(status)
}

// appendNumber appends one exact unsigned JSON number to its owned output.
// @brief Internal synchronous numeric formatter; no floating conversion is used.
// @param[in] output Exclusive owned byte prefix, borrowed through append.
// @param[in] name Fixed trusted JSON member name.
// @param[in] value Complete unsigned value; full u64 precision is preserved.
// @return Owned extended byte prefix; no host operation is performed.
func appendNumber(output []byte, name string, value uint64) []byte {
	output = append(output, name...)
	return strconv.AppendUint(output, value, 10)
}

// truth converts an observed presence flag into the exact JSON numeric spelling.
// @brief Internal local conversion preserving the original presence fact.
// @param[in] value Observed true/false flag, never inferred from an empty body.
// @return 1 for true, otherwise 0; this creates no native observation.
func truth(value bool) uint64 {
	if value {
		return 1
	}
	return 0
}

// Output writes every accepted record byte and independent operation fact.
// @brief Emit one complete canonical observation as a single JSON line.
// @tparam T Complete original generated Unitree message type.
// @param[in] value Immutable owned outcome; all native owners are already closed.
// @return Original primary, cleanup, or stdout error, in that precedence order.
// @details Short writes are completed without repeating any ROS operation.
// Managed successful values/bytes own their storage; no native pointer escapes.
func Output[T any](value Outcome[T]) uint32 {
	output := []byte("{\"primary\":")
	output = strconv.AppendUint(output, uint64(value.Primary), 10)
	output = appendNumber(output, ",\"cleanup\":", uint64(value.Cleanup))
	output = appendNumber(output, ",\"cleanup_present\":", truth(value.CleanupPresent))
	output = appendNumber(output, ",\"response_present\":", truth(value.ResponsePresent))
	output = appendNumber(output, ",\"rpc_present\":", truth(value.RPCPresent))
	output = appendNumber(output, ",\"rpc_status\":", uint64(value.RPCStatus))
	output = appendNumber(output, ",\"polls\":", uint64(value.Polls))
	output = appendNumber(output, ",\"required_present\":", truth(value.RequiredPresent))
	output = appendNumber(output, ",\"required\":", value.Required)
	output = append(output, ",\"encoding\":0,\"wire_hex\":\""...)
	const digits = "0123456789abcdef"
	for _, b := range value.Wire {
		output = append(output, digits[b>>4], digits[b&15])
	}
	output = append(output, '"', '}', '\n')
	status := value.Status()
	offset := uint32(0)
	for offset < uint32(len(output)) {
		iov := [2]uint32{uint32(uintptr(unsafe.Pointer(&output[offset]))), uint32(len(output)) - offset}
		var written uint32
		actual := commandWrite(1, uint32(uintptr(unsafe.Pointer(&iov[0]))), 1, uint32(uintptr(unsafe.Pointer(&written))))
		runtime.KeepAlive(output)
		runtime.KeepAlive(iov)
		if actual != 0 || written == 0 || written > iov[1] {
			if status == 0 {
				status = 5
			}
			break
		}
		offset += written
	}
	return status
}
