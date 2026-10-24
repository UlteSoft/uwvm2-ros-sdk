//go:build wasip1 && wasm && ros2 && !ros1 && !tinygo

// @file query.go
// @brief Expose the retained one-shot ABB ROS 2 read-service reactor.
// @details The caller serializes initialization, the single read operation, result inspection and
// close. Mode selection exercises explicit denial or an externally granted alias. Every native
// response field is retained, including controller-reported failures. Primary and cleanup statuses
// remain independent; the reactor never reopens or retries a request.
// Package query implements the whole ABB GetSpeedRatio observation using the
// real official-Go SDK Owner/Result API, distinct from the TinyGo backend.
// @brief Retain original fields, exact SDK length observations and checked close.
// @details Go 1.24.2/wasip1/wasm/ros2 is the selected source candidate; actual
// compiler/Guest acceptance remains pending. The function starts no goroutine,
// timer, retry, controller recovery or native connection and supplies no grant.
// @see QueryOnce; DecodeResponse
package query

import (
	"encoding/binary"
	"unicode/utf8"
	ros "uwvm2.local/roswasmgo"
)

// Request is the logically empty original service request.
// @brief Preserve the empty wire body without a C-layout dummy or override field.
// @details Owns no external storage and supplies no setting/mode-change authority.
// @see QueryOnce
type Request struct{}

// Response preserves every original field, including a controller refusal.
// @brief Own complete uint8 percent, uint16 result and bounded UTF-8 message.
// @details Bytes follow the pinned complete family's original field order and
// 512-byte message bound; a longer message is refused, never truncated.
// @see DecodeResponse
type Response struct {
	// SpeedRatio is the original uint8 percent value, without conversion.
	// @brief Application success additionally requires at most 100 percent.
	// @see QueryOnce
	SpeedRatio uint8
	// ResultCode is the complete original uint16 controller result.
	// @brief RC_SUCCESS is 1; other values remain observable on refusal.
	// @see Outcome.Primary
	ResultCode uint16
	// Message owns the complete original strict UTF-8 diagnostic string.
	// @brief Retain Unicode and up to 512 bytes without clipping.
	// @details The selected canonical profile rejects embedded NUL with Invalid22;
	// QueryOnce still retains the whole raw SDK payload on that decoding refusal.
	// @see DecodeResponse
	Message string
}

// Outcome keeps whole response, original transport and close observations apart.
// @brief Returned Go values survive local capability retirement.
// @details SDK raw bytes/advisory lengths are independently retained. Malformed
// vendor bytes produce no partial typed Response. Serialize caller mutation.
// @see QueryOnce
type Outcome struct {
	// Primary is the first constructor/transport/decode/application status.
	// @brief Complete controller refusal maps to 5, without replacing raw facts.
	// @see Status
	Primary uint32
	// Response is the whole decoded response, or nil before a complete decode.
	// @brief Presence does not imply controller success or physical freshness.
	// @see Response
	Response *Response
	// Transport is the exact SDK Result, with original advisory-length facts.
	// @brief Valid observation only when CallObserved is true.
	// @see TransportCode; ros.Result
	Transport ros.Result
	// TransportCode is the exact original SDK status before application checks.
	// @brief Remains zero on a decoded controller refusal with Primary 5.
	// @see Transport
	TransportCode uint32
	// CallObserved records an actual returned Owner.Request operation.
	// @brief False when validation/construction prevented that call.
	// @see Transport
	CallObserved bool
	// CloseObserved distinguishes actual once-only cleanup from an empty default.
	// @brief False when no owner was acquired; close does not stop native work.
	// @see CloseCode
	CloseObserved bool
	// CloseCode is the independent original cleanup status, when observed.
	// @brief Never overwrite primary or transport errors with cleanup failure.
	// @see Status
	CloseCode uint32
}

// Status reads the full-width primary code before independent close failure.
// @brief Perform no Host call, grant or mutation when selecting process status.
// @param[in] value Immutable caller-owned Outcome; serialize shared mutation.
// @return Nonzero Primary, otherwise observed close status or zero.
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

// DecodeResponse consumes the complete original canonical response transactionally.
// @brief Decode ratio, result and the entire counted strict UTF-8 message.
// @param[in] wire Immutable borrowed complete LE body, 7..519 bytes. A u32
// message count is bounded to 512 and must exactly consume the remaining bytes.
// Embedded NUL is refused, matching the selected generated canonical profile;
// it is never treated as a C-string terminator or silently removed.
// @return Independently owned Response and zero; otherwise unusable zero value
// with Invalid22/TooLarge90. It retains no input slice and performs no IO.
// @see Response
func DecodeResponse(wire []byte) (Response, uint32) {
	if len(wire) > 519 {
		return Response{}, ros.TooLarge
	}
	if len(wire) < 7 {
		return Response{}, ros.Invalid
	}
	count := binary.LittleEndian.Uint32(wire[3:7])
	if count > 512 || uint64(count) != uint64(len(wire)-7) || !utf8.Valid(wire[7:]) {
		return Response{}, ros.Invalid
	}
	for _, octet := range wire[7:] {
		if octet == 0 {
			return Response{}, ros.Invalid
		}
	}
	return Response{SpeedRatio: wire[0], ResultCode: binary.LittleEndian.Uint16(wire[1:3]),
		Message: string(wire[7:])}, 0
}

// QueryOnce issues one whole empty request, retains the response and closes once.
// @brief Use the genuine official-Go ROS2 SDK rather than a host or TinyGo owner.
// @details Success requires RC_SUCCESS1 and ratio<=100 percent; a whole refusal
// remains with local application code 5. No request is retried after uncertainty.
// Normal returns close once. Panic/abort/runtime allocation failure cannot promise
// normal reporting or cleanup. Calls are synchronous and caller serialized.
// @param[in] alias Nonempty exact UTF-8 existing service alias, externally granted
// with original type, operation, capacities, quotas and Host deadline policy.
// @param[in] request Complete logically empty original request, passed by value.
// @return Owned response, full original SDK result/status and independent close.
// @see DecodeResponse; Outcome.Status; ros.Owner.Request
func QueryOnce(alias string, request Request) Outcome {
	var out Outcome
	if ros.AbiVersion() != 1 {
		out.Primary = ros.Unsupported
		return out
	}
	owner, code := ros.Open(alias)
	out.Primary = code
	if code != 0 {
		return out
	}
	out.Transport, out.TransportCode = owner.Request(ros.OpServiceCall, nil, 519)
	out.CallObserved = true
	out.Primary = out.TransportCode
	if out.Primary == 0 {
		value, decoded := DecodeResponse(out.Transport.Data)
		out.Primary = decoded
		if decoded == 0 {
			out.Response = &value
			if value.ResultCode != 1 || value.SpeedRatio > 100 {
				out.Primary = 5
			}
		}
	}
	out.CloseCode = owner.Close()
	out.CloseObserved = true
	return out
}
