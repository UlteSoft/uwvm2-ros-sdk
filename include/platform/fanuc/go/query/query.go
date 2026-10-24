//go:build wasip1 && wasm && ros2 && !ros1 && !tinygo

// @file query.go
// @brief Expose the retained one-shot FANUC ROS 2 read-service reactor.
// @details The caller serializes initialization, the single read operation, result inspection and
// close. Mode selection exercises explicit denial or an externally granted alias. Every native
// response field is retained, including controller-reported failures. Primary and cleanup statuses
// remain independent; the reactor never reopens or retries a request.
// Package query implements the complete FANUC GetTCPSpeed value contract over
// the genuine official-Go Guest SDK, not the incompatible TinyGo owner API.
// @brief Perform one full original service observation without hidden retries.
// @details Selected compiler candidate is Go 1.24.2, GOOS=wasip1, GOARCH=wasm,
// ros2 tag. Current compilation/Guest qualification is pending. Calls require
// independent exact service/type/quota/deadline grants and serialized ownership.
// No goroutine, timer, alias, native connection or recovery operation is created.
// @see QueryOnce; Request; Response
package query

import (
	"encoding/binary"
	"math"
	ros "uwvm2.local/roswasmgo"
)

// Request preserves every original request field.
// @brief Complete fanuc_msgs/srv/GetTCPSpeed request.
// @details Canonical request is exactly one uint8 group; no native CDR is used.
// @see QueryOnce
type Request struct {
	// Group is the original uint8 identifier, range 0..255.
	// @brief Select a reviewed native group without granting its service rights.
	// @see QueryOnce
	Group uint8
}

// Response preserves the entire original response, including controller refusal.
// @brief Owned result, timetag, speed and group values.
// @details Original IDL declares no speed/timetag unit or epoch; no conversion
// occurs. A decoded response does not certify physical freshness or permission.
// @see DecodeResponse
type Response struct {
	// Result is the complete original signed int32 controller status.
	// @brief Preserve refusal codes independently of transport status.
	// @see Outcome.Primary
	Result int32
	// Timetag is the original signed int32 value with unspecified IDL units.
	// @brief Retain the original value without epoch or unit conversion.
	// @see Response
	Timetag int32
	// Speed is the finite original float32 value, with no declared IDL unit.
	// @brief Preserve all finite IEEE754 bits, including signed zero.
	// @see DecodeResponse
	Speed float32
	// Group is the original uint8 response identifier.
	// @brief Compare with Request.Group for application success.
	// @see QueryOnce
	Group uint8
}

// Outcome retains complete response and independent full SDK/close observations.
// @brief Keep transport failure, controller refusal and cleanup separate.
// @details Returned values own their Go storage after the local owner closes.
// The SDK Result owns raw successful bytes or actual advisory-length facts;
// malformed vendor bytes never become a partial typed Response.
// @see QueryOnce
type Outcome struct {
	// Primary is the first constructor/transport/decode/application status.
	// @brief Preserve the full uint32 code; decoded controller refusal maps to 5.
	// @see Status
	Primary uint32
	// Response is the complete decoded original value, or nil before full decode.
	// @brief Retain the response even when application success checks fail.
	// @see Response
	Response *Response
	// Transport is the exact official-Go SDK result, including required-length facts.
	// @brief Inspect only with CallObserved and TransportCode.
	// @see ros.Result
	Transport ros.Result
	// TransportCode is the original returned SDK status, before vendor decoding.
	// @brief Preserve transport success/failure independently of application code 5.
	// @see Transport; Primary
	TransportCode uint32
	// CallObserved distinguishes an actual returned request from an empty default.
	// @brief False if construction prevented the Host call.
	// @see Transport
	CallObserved bool
	// CloseObserved records the once-only explicit owner-retirement attempt.
	// @brief False when no owner was acquired; close does not stop native work.
	// @see CloseCode
	CloseObserved bool
	// CloseCode is the actual independent Close result when CloseObserved is true.
	// @brief Preserve cleanup failure without replacing Primary.
	// @see Status
	CloseCode uint32
}

// Status selects operation failure before an independent cleanup error.
// @brief Read a full-width process status without new imports or grants.
// @param[in] value Caller-owned immutable Outcome; serialize concurrent mutation.
// @return Primary if nonzero, otherwise the observed close status or zero.
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

// DecodeResponse validates the entire exact canonical original response.
// @brief Decode 13 LE bytes transactionally, preserving every original field.
// @param[in] wire Borrowed immutable bytes valid for this synchronous call;
// floats must be finite and no trailing bytes are admitted.
// @return Owned Response and zero, or an unusable zero value with Invalid22/
// TooLarge90. No input storage is retained and no IO occurs.
// @see Response
func DecodeResponse(wire []byte) (Response, uint32) {
	if len(wire) > 13 {
		return Response{}, ros.TooLarge
	}
	if len(wire) != 13 {
		return Response{}, ros.Invalid
	}
	value := Response{Result: int32(binary.LittleEndian.Uint32(wire[0:4])),
		Timetag: int32(binary.LittleEndian.Uint32(wire[4:8])),
		Speed:   math.Float32frombits(binary.LittleEndian.Uint32(wire[8:12])), Group: wire[12]}
	if math.IsNaN(float64(value.Speed)) || math.IsInf(float64(value.Speed), 0) {
		return Response{}, ros.Invalid
	}
	return value, 0
}

// QueryOnce sends the complete original request, retains response and closes once.
// @brief Use official-Go Owner.Request and preserve full returned length facts.
// @details Application success requires result 0, matching group and nonnegative
// finite speed; refusal is retained with local code 5. No request is retried after
// uncertainty. Normal returns close the acquired owner; panic/abort/runtime or
// allocation termination cannot guarantee reporting/cleanup. No goroutine runs.
// @param[in] alias Exact nonempty UTF-8 existing service alias, externally granted
// with the original type/operation, capacities, quotas and Host deadline policy.
// @param[in] request Complete uint8 group value, passed by value with no transfer.
// @return Owned complete Outcome; calls must be serialized per Guest instance.
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
	out.Transport, out.TransportCode = owner.Request(ros.OpServiceCall, []byte{request.Group}, 13)
	out.Primary = out.TransportCode
	out.CallObserved = true
	if out.Primary == 0 {
		value, decoded := DecodeResponse(out.Transport.Data)
		out.Primary = decoded
		if decoded == 0 {
			out.Response = &value
			if value.Result != 0 || value.Group != request.Group || value.Speed < 0 {
				out.Primary = 5
			}
		}
	}
	out.CloseCode = owner.Close()
	out.CloseObserved = true
	return out
}
