//go:build wasip1 && wasm && ros2 && !ros1 && !tinygo

// @file query.go
// @brief Expose the retained one-shot YASKAWA ROS 2 read-service reactor.
// @details The caller serializes initialization, the single read operation, result inspection and
// close. Mode selection exercises explicit denial or an externally granted alias. Every native
// response field is retained, including controller-reported failures. Primary and cleanup statuses
// remain independent; the reactor never reopens or retries a request.
// Package query preserves the whole MotoROS2 ReadSingleIO service contract
// through the genuine official-Go SDK, not TinyGo's incompatible owner API.
// @brief Read one complete original value and preserve independent cleanup facts.
// @details Candidate compiler is Go 1.24.2/wasip1/wasm/ros2. Actual current build
// and Guest qualification are pending. No goroutine, retry, clock, native
// connection, IO output write, controller recovery or permission is created.
// @see QueryOnce; DecodeResponse
package query

import (
	"encoding/binary"
	"unicode/utf8"
	ros "uwvm2.local/roswasmgo"
)

// Request is the entire original ReadSingleIO request.
// @brief Own the original uint32 controller address without conversion.
// @details Controller-specific interpretation must be reviewed independently.
// @see QueryOnce
type Request struct {
	// Address is the original uint32 IO address, range 0..4294967295.
	// @brief Select a reviewed input address; the command sample uses 10011.
	// @details This value does not grant a read or any write operation.
	// @see QueryOnce
	Address uint32
}

// Response owns every original response field, including controller refusal.
// @brief Retain uint32 result, full message, strict Boolean and signed int32 value.
// @details Canonical order/bounds match the complete selected family. No native
// CDR, unit conversion, clipped message or partial typed response is exposed.
// @see DecodeResponse
type Response struct {
	// ResultCode is the complete original unsigned controller result.
	// @brief Preserve all uint32 bits independently of transport error status.
	// @see Outcome.Primary
	ResultCode uint32
	// Message is the whole original strict UTF-8 string, bounded to 512 bytes.
	// @brief Retain Unicode without truncation or C-string conversion.
	// @details The selected canonical profile rejects embedded NUL with Invalid22;
	// QueryOnce retains the complete raw SDK payload on that decoding refusal.
	// @see DecodeResponse
	Message string
	// Success is the original Boolean, accepting only canonical wire byte 0 or 1.
	// @brief This field alone does not establish overall application success.
	// @see QueryOnce
	Success bool
	// Value is the original signed int32 IO value in native address-map units.
	// @brief Preserve sign and all original bits without numeric coercion.
	// @see Request.Address
	Value int32
}

// Outcome preserves whole values and independent SDK/application/cleanup facts.
// @brief Own response and original transport observations after role close.
// @details Raw SDK Data remains diagnostic even when vendor decoding rejects it;
// Response is never populated with a partial value. Serialize shared mutation.
// @see QueryOnce
type Outcome struct {
	// Primary is the first constructor/transport/decode/application status.
	// @brief Original controller refusal maps to 5 without discarding its fields.
	// @see Status
	Primary uint32
	// Response is the entire decoded original value, or nil before full decode.
	// @brief A present value does not imply success, freshness or new permission.
	// @see Response
	Response *Response
	// Transport retains the exact SDK Result and actual advisory-length facts.
	// @brief Inspect with CallObserved and TransportCode, not an assumed default.
	// @see ros.Result
	Transport ros.Result
	// TransportCode is the original SDK status before vendor/application checks.
	// @brief Separate successful transport from Primary 5 controller refusal.
	// @see Transport
	TransportCode uint32
	// CallObserved marks an actual returned Owner.Request call.
	// @brief False if construction prevented the call; never infer a native effect.
	// @see Transport
	CallObserved bool
	// CloseObserved marks one explicit local owner-close attempt.
	// @brief False when no owner was acquired; close does not stop native work.
	// @see CloseCode
	CloseObserved bool
	// CloseCode preserves the original independent cleanup result.
	// @brief Meaningful only with CloseObserved, and never replaces Primary.
	// @see Status
	CloseCode uint32
}

// Status selects original/local operation failure before observed cleanup failure.
// @brief Return the full-width code with no mutation, imports or authority.
// @param[in] value Immutable caller-owned observation; serialize shared mutation.
// @return Nonzero Primary, otherwise the observed close status or zero.
// @see Outcome
func (value Outcome) Status() uint32 {
	if value.Primary != 0 {
		return value.Primary
	}
	if value.CloseObserved {
		return value.CloseCode
	}
	return 0
}

// DecodeResponse transactionally decodes every original field from a whole body.
// @brief Validate the counted UTF-8 message and strict Boolean before committing.
// @param[in] wire Borrowed immutable canonical LE bytes, total 13..525. Message
// count must be <=512 and consume exactly its prefix plus final Boolean/int32.
// Embedded NUL is refused under the selected generated canonical profile;
// it is never interpreted as a terminator or silently removed.
// @return Owned whole Response and zero, otherwise unusable zero value plus
// Invalid22/TooLarge90. No input slice is retained and no native call occurs.
// @see Response
func DecodeResponse(wire []byte) (Response, uint32) {
	if len(wire) > 525 {
		return Response{}, ros.TooLarge
	}
	if len(wire) < 13 {
		return Response{}, ros.Invalid
	}
	count := binary.LittleEndian.Uint32(wire[4:8])
	if count > 512 || uint64(count)+13 != uint64(len(wire)) {
		return Response{}, ros.Invalid
	}
	end := 8 + int(count)
	if !utf8.Valid(wire[8:end]) || wire[end] > 1 {
		return Response{}, ros.Invalid
	}
	for _, octet := range wire[8:end] {
		if octet == 0 {
			return Response{}, ros.Invalid
		}
	}
	return Response{ResultCode: binary.LittleEndian.Uint32(wire[0:4]),
		Message: string(wire[8:end]), Success: wire[end] == 1,
		Value: int32(binary.LittleEndian.Uint32(wire[end+1 : end+5]))}, 0
}

// QueryOnce sends one full original address request, retains response and closes.
// @brief Use the actual official-Go ROS2 Owner.Request with complete length facts.
// @details Success requires original success=true and result_code 0. A decoded
// refusal stays available with Primary 5 and original TransportCode 0. No request
// is replayed after uncertainty. Normal returns close once; panic/abort/runtime
// allocation termination cannot guarantee reporting/cleanup. Calls are serialized.
// @param[in] alias Nonempty exact UTF-8 existing alias with independently granted
// original type/operation, capacities, quotas and reviewed Host deadline policy.
// @param[in] request Full original uint32 address, passed by value in native map
// units; no clipping, conversion, write authority or ownership transfer occurs.
// @return Owned response, full original SDK result/status and independent close.
// @see DecodeResponse; Outcome.Status; ros.Owner.Request
func QueryOnce(alias string, request Request) Outcome {
	var out Outcome
	if ros.AbiVersion() != 1 {
		out.Primary = ros.Unsupported
		return out
	}
	var body [4]byte
	binary.LittleEndian.PutUint32(body[:], request.Address)
	owner, code := ros.Open(alias)
	out.Primary = code
	if code != 0 {
		return out
	}
	out.Transport, out.TransportCode = owner.Request(ros.OpServiceCall, body[:], 525)
	out.CallObserved = true
	out.Primary = out.TransportCode
	if out.Primary == 0 {
		value, decoded := DecodeResponse(out.Transport.Data)
		out.Primary = decoded
		if decoded == 0 {
			out.Response = &value
			if !value.Success || value.ResultCode != 0 {
				out.Primary = 5
			}
		}
	}
	out.CloseCode = owner.Close()
	out.CloseObserved = true
	return out
}
