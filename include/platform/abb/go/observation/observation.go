//go:build wasip1 && wasm && ros2 && !ros1

// @file observation.go
// @brief Represent the complete original ABB ROS 2 canonical value catalog.
// @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
// fields, original constants and native defaults; field units and frames follow the retained
// definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
// native ROS objects; importing them grants no transport alias.
// Package observation reads complete ABB ROS 2 values using the official-Go SDK.
// @brief Preserve complete vendor payloads and independent transport/close facts.
// @details Each synchronous function opens one externally granted alias, performs
// one service request or a finite topic-poll sequence, and closes its owner once. There are no goroutines,
// implicit timers, service retries, native connections, or authority changes.
// @see ReadSpeed; ReadIO; ReadSystemState
package observation

import (
	"unicode/utf8"

	records "uwvm2.local/abb-records-go"
	ros "uwvm2.local/roswasmgo"
)

// Outcome owns one complete typed response and every independent failure fact.
// @brief A retained response may describe controller refusal; inspect Primary.
// @tparam T Complete generated vendor record, never a native struct projection.
// @details Value and Wire are valid only when ResponsePresent is true. The
// original transport Result survives decoding/application refusal and cleanup.
// The caller must serialize shared mutation and retain borrowed inputs until return.
// @see Outcome.Status
type Outcome[T any] struct {
	Primary         uint32     // @brief First validation, open, transport, decode, or controller error.
	Cleanup         uint32     // @brief Independent once-only close result when CleanupPresent is true.
	CleanupPresent  bool       // @brief True only after closing a successfully opened owner.
	ResponsePresent bool       // @brief True only after complete decoding and re-encoding.
	RPCPresent      bool       // @brief True only when the request or poll actually returned.
	RPCStatus       uint32     // @brief Original SDK status before local validation or application checks.
	RPC             ros.Result // @brief Original owned body/advisory-length observations.
	Value           T          // @brief Complete owned generated response, governed by ResponsePresent.
	Wire            []byte     // @brief Complete canonical response bytes, with no dropped fields.
}

// Status selects the primary failure before any independent cleanup failure.
// @brief Read the original full unsigned status without a host operation.
// @param[in] value Owned immutable outcome; read no Value when ResponsePresent is false.
// @return Primary when nonzero, otherwise Cleanup; zero requires both to succeed.
// @see Outcome
func (value Outcome[T]) Status() uint32 {
	if value.Primary != 0 {
		return value.Primary
	}
	return value.Cleanup
}

// receive performs one finite transport operation followed by complete decoding.
// @brief Internal typed observation implementation; it never retries a request.
// @param[in] alias Existing exact service or topic capability alias.
// @param[in] input Complete already-validated request bytes; nil for an empty body.
// @param[in] capacity Maximum complete response size from the selected schema.
// @param[in] topic True selects subscribe/poll; false selects ServiceCall.
// @param[in] attempts Finite poll budget; service callers pass one.
// @param[in] pause Optional pause callback; required when attempts exceeds one.
// @param[in] decode Complete transactional generated decoder.
// @param[in] encode Complete generated response encoder.
// @param[in] accepted Application-level controller result predicate.
// @return Owned typed outcome with separate original RPC and cleanup observations.
// @details Go allocation failure/panic may prevent normal cleanup. Ordinary
// numeric and decoder errors always run the single checked close below.
// @see ReadSpeed; ReadIO; ReadSystemState
func receive[T any](alias string, input []byte, capacity uint32, topic bool, attempts uint32, pause func() uint32,
	decode func([]byte) (T, error), encode func(T) ([]byte, error), accepted func(T) bool) Outcome[T] {
	var out Outcome[T]
	if attempts == 0 || attempts > 250 || (attempts > 1 && pause == nil) {
		out.Primary = ros.Invalid
		return out
	}
	if ros.AbiVersion() != 1 {
		out.Primary = ros.Unsupported
		return out
	}
	owner, code := ros.Open(alias)
	out.Primary = code
	if code != 0 {
		return out
	}
	if topic {
		out.Primary = owner.Subscribe()
		if out.Primary == 0 {
			for index := uint32(0); index < attempts; index++ {
				out.RPC, out.RPCStatus = owner.Poll(capacity)
				out.RPCPresent = true
				if out.RPCStatus != 11 || index+1 == attempts {
					break
				}
				out.Primary = pause()
				if out.Primary != 0 {
					break
				}
			}
		}
	} else {
		out.RPC, out.RPCStatus = owner.Request(ros.OpServiceCall, input, capacity)
		out.RPCPresent = true
	}
	if out.RPCPresent && out.Primary == 0 {
		out.Primary = out.RPCStatus
		if out.Primary == 0 {
			value, err := decode(out.RPC.Data)
			if err != nil {
				out.Primary = ros.Invalid
			} else {
				wire, err := encode(value)
				if err != nil {
					out.Primary = ros.Invalid
				} else {
					out.Value, out.Wire, out.ResponsePresent = value, wire, true
					if !accepted(value) {
						out.Primary = 5
					}
				}
			}
		}
	}
	out.CleanupPresent = true
	out.Cleanup = owner.Close()
	return out
}

// ReadSpeed reads the entire GetSpeedRatio response without setting an override.
// @brief Perform one original empty service request and preserve its whole reply.
// @param[in] alias Existing GetSpeedRatio alias with externally granted call permission.
// @return Owned speed percent, controller result, diagnostic text, and status facts.
// @details Application success requires result_code=1 and speed_ratio<=100.
// Controller refusal returns status 5 while preserving the complete response.
// @see Outcome.Status
func ReadSpeed(alias string) Outcome[records.Ros2Abb_robot_msgsSrvGetSpeedRatio_Response] {
	type Response = records.Ros2Abb_robot_msgsSrvGetSpeedRatio_Response
	return receive(alias, nil, records.Ros2Abb_robot_msgsSrvGetSpeedRatio_ResponseMaxWireBytes,
		false, 1, nil, records.DecodeRos2Abb_robot_msgsSrvGetSpeedRatio_Response,
		func(value Response) ([]byte, error) { return value.Encode() },
		func(value Response) bool { return value.Result_code == 1 && value.Speed_ratio <= 100 })
}

// ReadIO reads one configured IO signal without writing its value.
// @brief Validate the complete signal name before capability acquisition.
// @param[in] alias Existing GetIOSignal service alias with exact type permission.
// @param[in] signal Nonempty strict UTF-8 signal name, at most 512 bytes, no NUL.
// @return Whole response with separate controller/transport/cleanup observations.
// @details Request storage is copied by the generated encoder. A complete
// controller refusal remains observable as a response with application status 5.
// @see ReadSpeed
func ReadIO(alias, signal string) Outcome[records.Ros2Abb_robot_msgsSrvGetIOSignal_Response] {
	type Response = records.Ros2Abb_robot_msgsSrvGetIOSignal_Response
	if len(signal) == 0 || len(signal) > 512 || !utf8.ValidString(signal) {
		return Outcome[Response]{Primary: ros.Invalid}
	}
	request := records.Ros2Abb_robot_msgsSrvGetIOSignal_Request{Signal: signal}
	wire, err := request.Encode()
	if err != nil {
		return Outcome[Response]{Primary: ros.Invalid}
	}
	return receive(alias, wire, records.Ros2Abb_robot_msgsSrvGetIOSignal_ResponseMaxWireBytes,
		false, 1, nil, records.DecodeRos2Abb_robot_msgsSrvGetIOSignal_Response,
		func(value Response) ([]byte, error) { return value.Encode() },
		func(value Response) bool { return value.Result_code == 1 })
}

// ReadSystemState subscribes and attempts one nonblocking complete state read.
// @brief Retain the original Header, flags, RAPID tasks, and mechanical units.
// @param[in] alias Existing SystemState topic alias with subscription permission.
// @return Whole typed state when present; idle 11 is retained as a nonzero status.
// @details There is no timer or busy loop. Callers needing a persistent stream
// should retain an explicit SDK Owner and drive their own finite polling loop.
// @see Outcome.ResponsePresent
func ReadSystemState(alias string) Outcome[records.Ros2Abb_robot_msgsMsgSystemState] {
	type Response = records.Ros2Abb_robot_msgsMsgSystemState
	return receive(alias, nil, records.Ros2Abb_robot_msgsMsgSystemStateMaxWireBytes,
		true, 1, nil, records.DecodeRos2Abb_robot_msgsMsgSystemState,
		func(value Response) ([]byte, error) { return value.Encode() },
		func(Response) bool { return true })
}

// WaitSystemState retains one subscription until a sample or the finite limit.
// @brief Preserve the complete state and independent last-poll/cleanup facts.
// @param[in] alias Existing exact SystemState subscription capability alias.
// @param[in] attempts Poll budget in [1,250], including the immediate first poll.
// @param[in] pause Required between polls; return zero or a primary SDK error.
// @return Whole typed state on success, otherwise the original failure facts.
// @details Only idle 11 admits another poll. A pause error does not replace the
// separately recorded last RPC status. Exhaustion retains idle 11. No goroutine
// or timer is created by this API; the caller controls each pause.
// @see ReadSystemState
func WaitSystemState(alias string,
	attempts uint32,
	pause func() uint32) Outcome[records.Ros2Abb_robot_msgsMsgSystemState] {
	type Response = records.Ros2Abb_robot_msgsMsgSystemState
	return receive(alias, nil, records.Ros2Abb_robot_msgsMsgSystemStateMaxWireBytes,
		true, attempts, pause, records.DecodeRos2Abb_robot_msgsMsgSystemState,
		func(value Response) ([]byte, error) { return value.Encode() },
		func(Response) bool { return true })
}
