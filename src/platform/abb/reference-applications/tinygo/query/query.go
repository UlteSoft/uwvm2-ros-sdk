// @file query.go
// @brief Expose the retained one-shot ABB ROS 2 read-service reactor.
// @details The caller serializes initialization, the single read operation, result inspection and
// close. Mode selection exercises explicit denial or an externally granted alias. Every native
// response field is retained, including controller-reported failures. Primary and cleanup statuses
// remain independent; the reactor never reopens or retries a request.
// Package query performs a complete ABB GetSpeedRatio observation.
// @brief Use the actual TinyGo ROS2 Guest SDK for one typed service call.
// @details Requires the genuine selected TinyGo/WASI compiler and matching Go
// root; this package is not an official-Go or host-ROS qualification. Importing
// it performs no IO or grant. Serialize backend access; no goroutine, executor,
// timer, retry, controller reset or recovery is created. A trap or terminating
// allocation failure cannot guarantee cleanup.
// @see QueryOnce
// @see Outcome
package query

import (
	types "uwvm2.local/abb-records"
	ros "uwvm2.local/roswasm"
)

// Request is the complete original GetSpeedRatio request.
// @brief Preserve every original request field under the selected family bounds.
// @details The original GetSpeedRatio request is logically empty; no override value is supplied. Encode
// validates the whole value before any role opens.
// @see types.Ros2Abb_robot_msgsSrvGetSpeedRatio_Request
type Request = types.Ros2Abb_robot_msgsSrvGetSpeedRatio_Request

// Response is the complete original GetSpeedRatio response.
// @brief Retain every original response field without clipping or unit conversion.
// @details Retains the original uint16 result_code, uint8 speed_ratio in percent and complete diagnostic
// message, including controller refusal. Stored values remain Guest-owned after capability close.
// @see types.Ros2Abb_robot_msgsSrvGetSpeedRatio_Response
type Response = types.Ros2Abb_robot_msgsSrvGetSpeedRatio_Response

// Outcome owns the complete response and independent error/cleanup observations.
// @brief Keep controller refusal, transport failure and cleanup separate.
// @details Response is nonnil only after full decoding, including refusal. The
// pointer refers to an escaped Guest Go value retained by this outcome, not a
// native pointer or temporary host buffer. No field is a physical-state proof.
// @see QueryOnce
type Outcome struct {
	// @brief First validation/open/call/application error, nil on application success.
	// @details Decoded controller refusal maps to ros.Error{Code:5}; original SDK
	// errors preserve their required-length facts. Cleanup is independent.
	// @see Outcome.Cleanup
	Primary error
	// @brief Complete decoded response, including a controller refusal.
	// @details Nil before successful decoding. The caller owns its retained Go
	// value and must not infer freshness or permission from its presence.
	// @see Response
	Response *Response
	// @brief Actual normal-close or construction-rollback report.
	// @details Retains every attempted cleanup status; no acquired owner yields
	// an empty report. Closing a capability does not cancel native work.
	// @see types.RPCCleanup
	Cleanup types.RPCCleanup
}

// QueryOnce sends one complete original request and closes the local service owner.
// @brief Perform one synchronous, caller-serialized GetSpeedRatio observation.
// @details Full request encoding precedes open. A constructor failure preserves
// rollback. A decoded response is retained. Application success requires
// result_code equals RC_SUCCESS (1) and speed_ratio is at most 100 percent; a complete response failing those
// checks yields error 5.
// No request is replayed after an unknown outcome;
// this call changes no grant, controller mode, IO output or native stop state.
// The request's nested storage must remain immutable during the call even though
// the top-level struct is passed by value. Returned response/cleanup values live
// independently of the closed owner. No goroutine or deadline clock is started.
// @param[in] alias Nonempty exact UTF-8 service alias, separately granted with
// original type, operations, quotas and reviewed deadline configuration.
// @param[in] request Entire valid bounded Request in original units; The original GetSpeedRatio request is
// logically empty; no override value is supplied.
// The caller retains ownership and must serialize shared backend use.
// @return Outcome with whole response and independent primary/cleanup facts.
// Numeric error returns clean up; a Wasm trap cannot promise that cleanup.
// @see types.NewRos2Abb_robot_msgsSrvGetSpeedRatioClient
// @see types.Ros2Abb_robot_msgsSrvGetSpeedRatioClient.Call
// @see types.Ros2Abb_robot_msgsSrvGetSpeedRatioClient.CloseChecked
func QueryOnce(alias string, request Request) Outcome {
	if _, err := request.Encode(); err != nil {
		return Outcome{Primary: err, Cleanup: types.RPCCleanup{Primary: err}}
	}
	client, err := types.NewRos2Abb_robot_msgsSrvGetSpeedRatioClient(alias, "", 1)
	if err != nil {
		if failure, ok := err.(*types.RPCOpenError); ok {
			return Outcome{Primary: failure.Primary, Cleanup: failure.Rollback}
		}
		return Outcome{Primary: err, Cleanup: types.RPCCleanup{Primary: err}}
	}
	value, primary := client.Call(request)
	var response *Response
	if primary == nil {
		response = &value
		if !(value.Result_code == 1 && value.Speed_ratio <= 100) {
			primary = ros.Error{Code: 5}
		}
	}
	cleanup := client.CloseChecked(primary)
	return Outcome{Primary: primary, Response: response, Cleanup: cleanup}
}
