// @file bounded_interfaces.go
// @brief Full leju tinygo codecs and original record metadata.
// @details Complete leju ros1_main_platform values in tinygo. 532 original records retain 1587 fields and 378
// interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
// definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
// profile API manual under document/platform/leju/en_US/catalog/.
// Generated typed interfaces; separately granted exact native aliases.
package customtypes

import ros "uwvm2.local/roswasm"

// @brief Publish one complete aruco_msgs/Marker message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Aruco_msgsMarker.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Aruco_msgsMarker(o *ros.Capability, v Ros1Aruco_msgsMarker) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aruco_msgs/Marker message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Aruco_msgsMarker.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Aruco_msgsMarker(o *ros.Capability, scratch []byte) (Ros1Aruco_msgsMarker, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Aruco_msgsMarker{}, e
	}
	return DecodeRos1Aruco_msgsMarker(scratch[:n])
}

// @brief Publish one complete aruco_msgs/MarkerArray message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Aruco_msgsMarkerArray.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Aruco_msgsMarkerArray(o *ros.Capability, v Ros1Aruco_msgsMarkerArray) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aruco_msgs/MarkerArray message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Aruco_msgsMarkerArray.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Aruco_msgsMarkerArray(o *ros.Capability, scratch []byte) (Ros1Aruco_msgsMarkerArray, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Aruco_msgsMarkerArray{}, e
	}
	return DecodeRos1Aruco_msgsMarkerArray(scratch[:n])
}

// @brief Call the selected easy_handeye_msgs/CheckStartingPose service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Easy_handeye_msgsCheckStartingPoseRequest, response=Ros1Easy_handeye_msgsCheckStartingPoseResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Easy_handeye_msgsCheckStartingPose(o *ros.Capability, q Ros1Easy_handeye_msgsCheckStartingPoseRequest, output []byte) (Ros1Easy_handeye_msgsCheckStartingPoseResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Easy_handeye_msgsCheckStartingPoseResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Easy_handeye_msgsCheckStartingPoseResponse{}, e
	}
	return DecodeRos1Easy_handeye_msgsCheckStartingPoseResponse(output[:n])
}

// @brief Call the selected easy_handeye_msgs/ComputeCalibration service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Easy_handeye_msgsComputeCalibrationRequest, response=Ros1Easy_handeye_msgsComputeCalibrationResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Easy_handeye_msgsComputeCalibration(o *ros.Capability, q Ros1Easy_handeye_msgsComputeCalibrationRequest, output []byte) (Ros1Easy_handeye_msgsComputeCalibrationResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Easy_handeye_msgsComputeCalibrationResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Easy_handeye_msgsComputeCalibrationResponse{}, e
	}
	return DecodeRos1Easy_handeye_msgsComputeCalibrationResponse(output[:n])
}

// @brief Call the selected easy_handeye_msgs/EnumerateTargetPoses service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Easy_handeye_msgsEnumerateTargetPosesRequest,
// response=Ros1Easy_handeye_msgsEnumerateTargetPosesResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Easy_handeye_msgsEnumerateTargetPoses(o *ros.Capability, q Ros1Easy_handeye_msgsEnumerateTargetPosesRequest, output []byte) (Ros1Easy_handeye_msgsEnumerateTargetPosesResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Easy_handeye_msgsEnumerateTargetPosesResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Easy_handeye_msgsEnumerateTargetPosesResponse{}, e
	}
	return DecodeRos1Easy_handeye_msgsEnumerateTargetPosesResponse(output[:n])
}

// @brief Call the selected easy_handeye_msgs/ExecutePlan service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Easy_handeye_msgsExecutePlanRequest, response=Ros1Easy_handeye_msgsExecutePlanResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Easy_handeye_msgsExecutePlan(o *ros.Capability, q Ros1Easy_handeye_msgsExecutePlanRequest, output []byte) (Ros1Easy_handeye_msgsExecutePlanResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Easy_handeye_msgsExecutePlanResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Easy_handeye_msgsExecutePlanResponse{}, e
	}
	return DecodeRos1Easy_handeye_msgsExecutePlanResponse(output[:n])
}

// @brief Publish one complete easy_handeye_msgs/HandeyeCalibration message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Easy_handeye_msgsHandeyeCalibration.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Easy_handeye_msgsHandeyeCalibration(o *ros.Capability, v Ros1Easy_handeye_msgsHandeyeCalibration) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete easy_handeye_msgs/HandeyeCalibration message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Easy_handeye_msgsHandeyeCalibration.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Easy_handeye_msgsHandeyeCalibration(o *ros.Capability, scratch []byte) (Ros1Easy_handeye_msgsHandeyeCalibration, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Easy_handeye_msgsHandeyeCalibration{}, e
	}
	return DecodeRos1Easy_handeye_msgsHandeyeCalibration(scratch[:n])
}

// @brief Call the selected easy_handeye_msgs/ListAlgorithms service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Easy_handeye_msgsListAlgorithmsRequest, response=Ros1Easy_handeye_msgsListAlgorithmsResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Easy_handeye_msgsListAlgorithms(o *ros.Capability, q Ros1Easy_handeye_msgsListAlgorithmsRequest, output []byte) (Ros1Easy_handeye_msgsListAlgorithmsResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Easy_handeye_msgsListAlgorithmsResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Easy_handeye_msgsListAlgorithmsResponse{}, e
	}
	return DecodeRos1Easy_handeye_msgsListAlgorithmsResponse(output[:n])
}

// @brief Call the selected easy_handeye_msgs/PlanToSelectedTargetPose service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Easy_handeye_msgsPlanToSelectedTargetPoseRequest,
// response=Ros1Easy_handeye_msgsPlanToSelectedTargetPoseResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Easy_handeye_msgsPlanToSelectedTargetPose(o *ros.Capability, q Ros1Easy_handeye_msgsPlanToSelectedTargetPoseRequest, output []byte) (Ros1Easy_handeye_msgsPlanToSelectedTargetPoseResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Easy_handeye_msgsPlanToSelectedTargetPoseResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Easy_handeye_msgsPlanToSelectedTargetPoseResponse{}, e
	}
	return DecodeRos1Easy_handeye_msgsPlanToSelectedTargetPoseResponse(output[:n])
}

// @brief Call the selected easy_handeye_msgs/RemoveSample service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Easy_handeye_msgsRemoveSampleRequest, response=Ros1Easy_handeye_msgsRemoveSampleResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Easy_handeye_msgsRemoveSample(o *ros.Capability, q Ros1Easy_handeye_msgsRemoveSampleRequest, output []byte) (Ros1Easy_handeye_msgsRemoveSampleResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Easy_handeye_msgsRemoveSampleResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Easy_handeye_msgsRemoveSampleResponse{}, e
	}
	return DecodeRos1Easy_handeye_msgsRemoveSampleResponse(output[:n])
}

// @brief Publish one complete easy_handeye_msgs/SampleList message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Easy_handeye_msgsSampleList.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Easy_handeye_msgsSampleList(o *ros.Capability, v Ros1Easy_handeye_msgsSampleList) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete easy_handeye_msgs/SampleList message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Easy_handeye_msgsSampleList.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Easy_handeye_msgsSampleList(o *ros.Capability, scratch []byte) (Ros1Easy_handeye_msgsSampleList, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Easy_handeye_msgsSampleList{}, e
	}
	return DecodeRos1Easy_handeye_msgsSampleList(scratch[:n])
}

// @brief Call the selected easy_handeye_msgs/SelectTargetPose service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Easy_handeye_msgsSelectTargetPoseRequest, response=Ros1Easy_handeye_msgsSelectTargetPoseResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Easy_handeye_msgsSelectTargetPose(o *ros.Capability, q Ros1Easy_handeye_msgsSelectTargetPoseRequest, output []byte) (Ros1Easy_handeye_msgsSelectTargetPoseResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Easy_handeye_msgsSelectTargetPoseResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Easy_handeye_msgsSelectTargetPoseResponse{}, e
	}
	return DecodeRos1Easy_handeye_msgsSelectTargetPoseResponse(output[:n])
}

// @brief Call the selected easy_handeye_msgs/SetAlgorithm service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Easy_handeye_msgsSetAlgorithmRequest, response=Ros1Easy_handeye_msgsSetAlgorithmResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Easy_handeye_msgsSetAlgorithm(o *ros.Capability, q Ros1Easy_handeye_msgsSetAlgorithmRequest, output []byte) (Ros1Easy_handeye_msgsSetAlgorithmResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Easy_handeye_msgsSetAlgorithmResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Easy_handeye_msgsSetAlgorithmResponse{}, e
	}
	return DecodeRos1Easy_handeye_msgsSetAlgorithmResponse(output[:n])
}

// @brief Call the selected easy_handeye_msgs/TakeSample service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Easy_handeye_msgsTakeSampleRequest, response=Ros1Easy_handeye_msgsTakeSampleResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Easy_handeye_msgsTakeSample(o *ros.Capability, q Ros1Easy_handeye_msgsTakeSampleRequest, output []byte) (Ros1Easy_handeye_msgsTakeSampleResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Easy_handeye_msgsTakeSampleResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Easy_handeye_msgsTakeSampleResponse{}, e
	}
	return DecodeRos1Easy_handeye_msgsTakeSampleResponse(output[:n])
}

// @brief Publish one complete easy_handeye_msgs/TargetPoseList message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Easy_handeye_msgsTargetPoseList.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Easy_handeye_msgsTargetPoseList(o *ros.Capability, v Ros1Easy_handeye_msgsTargetPoseList) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete easy_handeye_msgs/TargetPoseList message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Easy_handeye_msgsTargetPoseList.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Easy_handeye_msgsTargetPoseList(o *ros.Capability, scratch []byte) (Ros1Easy_handeye_msgsTargetPoseList, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Easy_handeye_msgsTargetPoseList{}, e
	}
	return DecodeRos1Easy_handeye_msgsTargetPoseList(scratch[:n])
}

// @brief Call the selected grid_map_msgs/GetGridMap service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Grid_map_msgsGetGridMapRequest, response=Ros1Grid_map_msgsGetGridMapResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Grid_map_msgsGetGridMap(o *ros.Capability, q Ros1Grid_map_msgsGetGridMapRequest, output []byte) (Ros1Grid_map_msgsGetGridMapResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Grid_map_msgsGetGridMapResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Grid_map_msgsGetGridMapResponse{}, e
	}
	return DecodeRos1Grid_map_msgsGetGridMapResponse(output[:n])
}

// @brief Call the selected grid_map_msgs/GetGridMapInfo service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Grid_map_msgsGetGridMapInfoRequest, response=Ros1Grid_map_msgsGetGridMapInfoResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Grid_map_msgsGetGridMapInfo(o *ros.Capability, q Ros1Grid_map_msgsGetGridMapInfoRequest, output []byte) (Ros1Grid_map_msgsGetGridMapInfoResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Grid_map_msgsGetGridMapInfoResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Grid_map_msgsGetGridMapInfoResponse{}, e
	}
	return DecodeRos1Grid_map_msgsGetGridMapInfoResponse(output[:n])
}

// @brief Publish one complete grid_map_msgs/GridMap message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Grid_map_msgsGridMap.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Grid_map_msgsGridMap(o *ros.Capability, v Ros1Grid_map_msgsGridMap) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete grid_map_msgs/GridMap message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Grid_map_msgsGridMap.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Grid_map_msgsGridMap(o *ros.Capability, scratch []byte) (Ros1Grid_map_msgsGridMap, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Grid_map_msgsGridMap{}, e
	}
	return DecodeRos1Grid_map_msgsGridMap(scratch[:n])
}

// @brief Publish one complete grid_map_msgs/GridMapInfo message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Grid_map_msgsGridMapInfo.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Grid_map_msgsGridMapInfo(o *ros.Capability, v Ros1Grid_map_msgsGridMapInfo) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete grid_map_msgs/GridMapInfo message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Grid_map_msgsGridMapInfo.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Grid_map_msgsGridMapInfo(o *ros.Capability, scratch []byte) (Ros1Grid_map_msgsGridMapInfo, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Grid_map_msgsGridMapInfo{}, e
	}
	return DecodeRos1Grid_map_msgsGridMapInfo(scratch[:n])
}

// @brief Call the selected grid_map_msgs/ProcessFile service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Grid_map_msgsProcessFileRequest, response=Ros1Grid_map_msgsProcessFileResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Grid_map_msgsProcessFile(o *ros.Capability, q Ros1Grid_map_msgsProcessFileRequest, output []byte) (Ros1Grid_map_msgsProcessFileResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Grid_map_msgsProcessFileResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Grid_map_msgsProcessFileResponse{}, e
	}
	return DecodeRos1Grid_map_msgsProcessFileResponse(output[:n])
}

// @brief Call the selected grid_map_msgs/SetGridMap service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Grid_map_msgsSetGridMapRequest, response=Ros1Grid_map_msgsSetGridMapResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Grid_map_msgsSetGridMap(o *ros.Capability, q Ros1Grid_map_msgsSetGridMapRequest, output []byte) (Ros1Grid_map_msgsSetGridMapResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Grid_map_msgsSetGridMapResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Grid_map_msgsSetGridMapResponse{}, e
	}
	return DecodeRos1Grid_map_msgsSetGridMapResponse(output[:n])
}

// @brief Publish one complete h12pro_controller_node/ECJointMotordata message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1H12pro_controller_nodeECJointMotordata.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1H12pro_controller_nodeECJointMotordata(o *ros.Capability, v Ros1H12pro_controller_nodeECJointMotordata) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete h12pro_controller_node/ECJointMotordata message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1H12pro_controller_nodeECJointMotordata.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1H12pro_controller_nodeECJointMotordata(o *ros.Capability, scratch []byte) (Ros1H12pro_controller_nodeECJointMotordata, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1H12pro_controller_nodeECJointMotordata{}, e
	}
	return DecodeRos1H12pro_controller_nodeECJointMotordata(scratch[:n])
}

// @brief Call the selected h12pro_controller_node/ExecuteArmAction service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1H12pro_controller_nodeExecuteArmActionRequest,
// response=Ros1H12pro_controller_nodeExecuteArmActionResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1H12pro_controller_nodeExecuteArmAction(o *ros.Capability, q Ros1H12pro_controller_nodeExecuteArmActionRequest, output []byte) (Ros1H12pro_controller_nodeExecuteArmActionResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1H12pro_controller_nodeExecuteArmActionResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1H12pro_controller_nodeExecuteArmActionResponse{}, e
	}
	return DecodeRos1H12pro_controller_nodeExecuteArmActionResponse(output[:n])
}

// @brief Publish one complete h12pro_controller_node/RobotActionState message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1H12pro_controller_nodeRobotActionState.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1H12pro_controller_nodeRobotActionState(o *ros.Capability, v Ros1H12pro_controller_nodeRobotActionState) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete h12pro_controller_node/RobotActionState message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1H12pro_controller_nodeRobotActionState.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1H12pro_controller_nodeRobotActionState(o *ros.Capability, scratch []byte) (Ros1H12pro_controller_nodeRobotActionState, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1H12pro_controller_nodeRobotActionState{}, e
	}
	return DecodeRos1H12pro_controller_nodeRobotActionState(scratch[:n])
}

// @brief Publish one complete h12pro_controller_node/UpdateH12CustomizeConfig message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1H12pro_controller_nodeUpdateH12CustomizeConfig.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1H12pro_controller_nodeUpdateH12CustomizeConfig(o *ros.Capability, v Ros1H12pro_controller_nodeUpdateH12CustomizeConfig) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete h12pro_controller_node/UpdateH12CustomizeConfig message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1H12pro_controller_nodeUpdateH12CustomizeConfig.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1H12pro_controller_nodeUpdateH12CustomizeConfig(o *ros.Capability, scratch []byte) (Ros1H12pro_controller_nodeUpdateH12CustomizeConfig, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1H12pro_controller_nodeUpdateH12CustomizeConfig{}, e
	}
	return DecodeRos1H12pro_controller_nodeUpdateH12CustomizeConfig(scratch[:n])
}

// @brief Call the selected h12pro_controller_node/changeAMBACCtrlMode service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1H12pro_controller_nodeChangeAMBACCtrlModeRequest,
// response=Ros1H12pro_controller_nodeChangeAMBACCtrlModeResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1H12pro_controller_nodeChangeAMBACCtrlMode(o *ros.Capability, q Ros1H12pro_controller_nodeChangeAMBACCtrlModeRequest, output []byte) (Ros1H12pro_controller_nodeChangeAMBACCtrlModeResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1H12pro_controller_nodeChangeAMBACCtrlModeResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1H12pro_controller_nodeChangeAMBACCtrlModeResponse{}, e
	}
	return DecodeRos1H12pro_controller_nodeChangeAMBACCtrlModeResponse(output[:n])
}

// @brief Call the selected h12pro_controller_node/changeArmCtrlMode service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1H12pro_controller_nodeChangeArmCtrlModeRequest,
// response=Ros1H12pro_controller_nodeChangeArmCtrlModeResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1H12pro_controller_nodeChangeArmCtrlMode(o *ros.Capability, q Ros1H12pro_controller_nodeChangeArmCtrlModeRequest, output []byte) (Ros1H12pro_controller_nodeChangeArmCtrlModeResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1H12pro_controller_nodeChangeArmCtrlModeResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1H12pro_controller_nodeChangeArmCtrlModeResponse{}, e
	}
	return DecodeRos1H12pro_controller_nodeChangeArmCtrlModeResponse(output[:n])
}

// @brief Call the selected h12pro_controller_node/changeHandArmPosesByConfigName service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameRequest,
// response=Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1H12pro_controller_nodeChangeHandArmPosesByConfigName(o *ros.Capability, q Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameRequest, output []byte) (Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameResponse{}, e
	}
	return DecodeRos1H12pro_controller_nodeChangeHandArmPosesByConfigNameResponse(output[:n])
}

// @brief Publish one complete h12pro_controller_node/h12proRemoteControllerChannel message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1H12pro_controller_nodeH12proRemoteControllerChannel.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1H12pro_controller_nodeH12proRemoteControllerChannel(o *ros.Capability, v Ros1H12pro_controller_nodeH12proRemoteControllerChannel) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete h12pro_controller_node/h12proRemoteControllerChannel message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1H12pro_controller_nodeH12proRemoteControllerChannel.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1H12pro_controller_nodeH12proRemoteControllerChannel(o *ros.Capability, scratch []byte) (Ros1H12pro_controller_nodeH12proRemoteControllerChannel, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1H12pro_controller_nodeH12proRemoteControllerChannel{}, e
	}
	return DecodeRos1H12pro_controller_nodeH12proRemoteControllerChannel(scratch[:n])
}

// @brief Call the selected h12pro_controller_node/playmusic service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1H12pro_controller_nodePlaymusicRequest, response=Ros1H12pro_controller_nodePlaymusicResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1H12pro_controller_nodePlaymusic(o *ros.Capability, q Ros1H12pro_controller_nodePlaymusicRequest, output []byte) (Ros1H12pro_controller_nodePlaymusicResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1H12pro_controller_nodePlaymusicResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1H12pro_controller_nodePlaymusicResponse{}, e
	}
	return DecodeRos1H12pro_controller_nodePlaymusicResponse(output[:n])
}

// @brief Publish one complete h12pro_controller_node/robotPhase message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1H12pro_controller_nodeRobotPhase.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1H12pro_controller_nodeRobotPhase(o *ros.Capability, v Ros1H12pro_controller_nodeRobotPhase) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete h12pro_controller_node/robotPhase message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1H12pro_controller_nodeRobotPhase.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1H12pro_controller_nodeRobotPhase(o *ros.Capability, scratch []byte) (Ros1H12pro_controller_nodeRobotPhase, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1H12pro_controller_nodeRobotPhase{}, e
	}
	return DecodeRos1H12pro_controller_nodeRobotPhase(scratch[:n])
}

// @brief Publish one complete h12pro_controller_node/robotQVTau message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1H12pro_controller_nodeRobotQVTau.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1H12pro_controller_nodeRobotQVTau(o *ros.Capability, v Ros1H12pro_controller_nodeRobotQVTau) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete h12pro_controller_node/robotQVTau message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1H12pro_controller_nodeRobotQVTau.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1H12pro_controller_nodeRobotQVTau(o *ros.Capability, scratch []byte) (Ros1H12pro_controller_nodeRobotQVTau, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1H12pro_controller_nodeRobotQVTau{}, e
	}
	return DecodeRos1H12pro_controller_nodeRobotQVTau(scratch[:n])
}

// @brief Publish one complete h12pro_controller_node/robotTorsoState message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1H12pro_controller_nodeRobotTorsoState.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1H12pro_controller_nodeRobotTorsoState(o *ros.Capability, v Ros1H12pro_controller_nodeRobotTorsoState) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete h12pro_controller_node/robotTorsoState message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1H12pro_controller_nodeRobotTorsoState.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1H12pro_controller_nodeRobotTorsoState(o *ros.Capability, scratch []byte) (Ros1H12pro_controller_nodeRobotTorsoState, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1H12pro_controller_nodeRobotTorsoState{}, e
	}
	return DecodeRos1H12pro_controller_nodeRobotTorsoState(scratch[:n])
}

// @brief Call the selected h12pro_controller_node/srvChangePhases service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1H12pro_controller_nodeSrvChangePhasesRequest,
// response=Ros1H12pro_controller_nodeSrvChangePhasesResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1H12pro_controller_nodeSrvChangePhases(o *ros.Capability, q Ros1H12pro_controller_nodeSrvChangePhasesRequest, output []byte) (Ros1H12pro_controller_nodeSrvChangePhasesResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1H12pro_controller_nodeSrvChangePhasesResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1H12pro_controller_nodeSrvChangePhasesResponse{}, e
	}
	return DecodeRos1H12pro_controller_nodeSrvChangePhasesResponse(output[:n])
}

// @brief Call the selected h12pro_controller_node/srvClearPositionCMD service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1H12pro_controller_nodeSrvClearPositionCMDRequest,
// response=Ros1H12pro_controller_nodeSrvClearPositionCMDResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1H12pro_controller_nodeSrvClearPositionCMD(o *ros.Capability, q Ros1H12pro_controller_nodeSrvClearPositionCMDRequest, output []byte) (Ros1H12pro_controller_nodeSrvClearPositionCMDResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1H12pro_controller_nodeSrvClearPositionCMDResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1H12pro_controller_nodeSrvClearPositionCMDResponse{}, e
	}
	return DecodeRos1H12pro_controller_nodeSrvClearPositionCMDResponse(output[:n])
}

// @brief Call the selected h12pro_controller_node/srvchangeCtlMode service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1H12pro_controller_nodeSrvchangeCtlModeRequest,
// response=Ros1H12pro_controller_nodeSrvchangeCtlModeResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1H12pro_controller_nodeSrvchangeCtlMode(o *ros.Capability, q Ros1H12pro_controller_nodeSrvchangeCtlModeRequest, output []byte) (Ros1H12pro_controller_nodeSrvchangeCtlModeResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1H12pro_controller_nodeSrvchangeCtlModeResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1H12pro_controller_nodeSrvchangeCtlModeResponse{}, e
	}
	return DecodeRos1H12pro_controller_nodeSrvchangeCtlModeResponse(output[:n])
}

// @brief Publish one complete h12pro_controller_node/walkCommand message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1H12pro_controller_nodeWalkCommand.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1H12pro_controller_nodeWalkCommand(o *ros.Capability, v Ros1H12pro_controller_nodeWalkCommand) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete h12pro_controller_node/walkCommand message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1H12pro_controller_nodeWalkCommand.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1H12pro_controller_nodeWalkCommand(o *ros.Capability, scratch []byte) (Ros1H12pro_controller_nodeWalkCommand, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1H12pro_controller_nodeWalkCommand{}, e
	}
	return DecodeRos1H12pro_controller_nodeWalkCommand(scratch[:n])
}

// @brief Publish one complete handcontrollerdemorosnode/armPoseWithTimeStamp message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1HandcontrollerdemorosnodeArmPoseWithTimeStamp.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1HandcontrollerdemorosnodeArmPoseWithTimeStamp(o *ros.Capability, v Ros1HandcontrollerdemorosnodeArmPoseWithTimeStamp) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete handcontrollerdemorosnode/armPoseWithTimeStamp message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1HandcontrollerdemorosnodeArmPoseWithTimeStamp.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1HandcontrollerdemorosnodeArmPoseWithTimeStamp(o *ros.Capability, scratch []byte) (Ros1HandcontrollerdemorosnodeArmPoseWithTimeStamp, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1HandcontrollerdemorosnodeArmPoseWithTimeStamp{}, e
	}
	return DecodeRos1HandcontrollerdemorosnodeArmPoseWithTimeStamp(scratch[:n])
}

// @brief Call the selected handcontrollerdemorosnode/changeHandTrackingMode service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1HandcontrollerdemorosnodeChangeHandTrackingModeRequest,
// response=Ros1HandcontrollerdemorosnodeChangeHandTrackingModeResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1HandcontrollerdemorosnodeChangeHandTrackingMode(o *ros.Capability, q Ros1HandcontrollerdemorosnodeChangeHandTrackingModeRequest, output []byte) (Ros1HandcontrollerdemorosnodeChangeHandTrackingModeResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1HandcontrollerdemorosnodeChangeHandTrackingModeResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1HandcontrollerdemorosnodeChangeHandTrackingModeResponse{}, e
	}
	return DecodeRos1HandcontrollerdemorosnodeChangeHandTrackingModeResponse(output[:n])
}

// @brief Call the selected handcontrollerdemorosnode/controlEndHand service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1HandcontrollerdemorosnodeControlEndHandRequest,
// response=Ros1HandcontrollerdemorosnodeControlEndHandResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1HandcontrollerdemorosnodeControlEndHand(o *ros.Capability, q Ros1HandcontrollerdemorosnodeControlEndHandRequest, output []byte) (Ros1HandcontrollerdemorosnodeControlEndHandResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1HandcontrollerdemorosnodeControlEndHandResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1HandcontrollerdemorosnodeControlEndHandResponse{}, e
	}
	return DecodeRos1HandcontrollerdemorosnodeControlEndHandResponse(output[:n])
}

// @brief Publish one complete handcontrollerdemorosnode/handRotationEular message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1HandcontrollerdemorosnodeHandRotationEular.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1HandcontrollerdemorosnodeHandRotationEular(o *ros.Capability, v Ros1HandcontrollerdemorosnodeHandRotationEular) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete handcontrollerdemorosnode/handRotationEular message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1HandcontrollerdemorosnodeHandRotationEular.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1HandcontrollerdemorosnodeHandRotationEular(o *ros.Capability, scratch []byte) (Ros1HandcontrollerdemorosnodeHandRotationEular, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1HandcontrollerdemorosnodeHandRotationEular{}, e
	}
	return DecodeRos1HandcontrollerdemorosnodeHandRotationEular(scratch[:n])
}

// @brief Publish one complete handcontrollerdemorosnode/robotArmPose message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1HandcontrollerdemorosnodeRobotArmPose.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1HandcontrollerdemorosnodeRobotArmPose(o *ros.Capability, v Ros1HandcontrollerdemorosnodeRobotArmPose) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete handcontrollerdemorosnode/robotArmPose message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1HandcontrollerdemorosnodeRobotArmPose.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1HandcontrollerdemorosnodeRobotArmPose(o *ros.Capability, scratch []byte) (Ros1HandcontrollerdemorosnodeRobotArmPose, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1HandcontrollerdemorosnodeRobotArmPose{}, e
	}
	return DecodeRos1HandcontrollerdemorosnodeRobotArmPose(scratch[:n])
}

// @brief Publish one complete handcontrollerdemorosnode/robotHandPosition message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1HandcontrollerdemorosnodeRobotHandPosition.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1HandcontrollerdemorosnodeRobotHandPosition(o *ros.Capability, v Ros1HandcontrollerdemorosnodeRobotHandPosition) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete handcontrollerdemorosnode/robotHandPosition message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1HandcontrollerdemorosnodeRobotHandPosition.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1HandcontrollerdemorosnodeRobotHandPosition(o *ros.Capability, scratch []byte) (Ros1HandcontrollerdemorosnodeRobotHandPosition, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1HandcontrollerdemorosnodeRobotHandPosition{}, e
	}
	return DecodeRos1HandcontrollerdemorosnodeRobotHandPosition(scratch[:n])
}

// @brief Call the selected handcontrollerdemorosnode/srvArmIK service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1HandcontrollerdemorosnodeSrvArmIKRequest, response=Ros1HandcontrollerdemorosnodeSrvArmIKResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1HandcontrollerdemorosnodeSrvArmIK(o *ros.Capability, q Ros1HandcontrollerdemorosnodeSrvArmIKRequest, output []byte) (Ros1HandcontrollerdemorosnodeSrvArmIKResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1HandcontrollerdemorosnodeSrvArmIKResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1HandcontrollerdemorosnodeSrvArmIKResponse{}, e
	}
	return DecodeRos1HandcontrollerdemorosnodeSrvArmIKResponse(output[:n])
}

// @brief Publish one complete hardware_node/horizontalMotionByStep message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Hardware_nodeHorizontalMotionByStep.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Hardware_nodeHorizontalMotionByStep(o *ros.Capability, v Ros1Hardware_nodeHorizontalMotionByStep) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete hardware_node/horizontalMotionByStep message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Hardware_nodeHorizontalMotionByStep.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Hardware_nodeHorizontalMotionByStep(o *ros.Capability, scratch []byte) (Ros1Hardware_nodeHorizontalMotionByStep, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Hardware_nodeHorizontalMotionByStep{}, e
	}
	return DecodeRos1Hardware_nodeHorizontalMotionByStep(scratch[:n])
}

// @brief Publish one complete hardware_node/robotHeadMotionData message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Hardware_nodeRobotHeadMotionData.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Hardware_nodeRobotHeadMotionData(o *ros.Capability, v Ros1Hardware_nodeRobotHeadMotionData) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete hardware_node/robotHeadMotionData message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Hardware_nodeRobotHeadMotionData.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Hardware_nodeRobotHeadMotionData(o *ros.Capability, scratch []byte) (Ros1Hardware_nodeRobotHeadMotionData, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Hardware_nodeRobotHeadMotionData{}, e
	}
	return DecodeRos1Hardware_nodeRobotHeadMotionData(scratch[:n])
}

// @brief Call the selected humanoid_arm_control/armControl service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Humanoid_arm_controlArmControlRequest, response=Ros1Humanoid_arm_controlArmControlResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Humanoid_arm_controlArmControl(o *ros.Capability, q Ros1Humanoid_arm_controlArmControlRequest, output []byte) (Ros1Humanoid_arm_controlArmControlResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Humanoid_arm_controlArmControlResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Humanoid_arm_controlArmControlResponse{}, e
	}
	return DecodeRos1Humanoid_arm_controlArmControlResponse(output[:n])
}

// @brief Call the selected humanoid_arm_control/handUpAndGrab service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Humanoid_arm_controlHandUpAndGrabRequest, response=Ros1Humanoid_arm_controlHandUpAndGrabResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Humanoid_arm_controlHandUpAndGrab(o *ros.Capability, q Ros1Humanoid_arm_controlHandUpAndGrabRequest, output []byte) (Ros1Humanoid_arm_controlHandUpAndGrabResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Humanoid_arm_controlHandUpAndGrabResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Humanoid_arm_controlHandUpAndGrabResponse{}, e
	}
	return DecodeRos1Humanoid_arm_controlHandUpAndGrabResponse(output[:n])
}

// @brief Call the selected humanoid_plan_arm_trajectory/ExecuteArmAction service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Humanoid_plan_arm_trajectoryExecuteArmActionRequest,
// response=Ros1Humanoid_plan_arm_trajectoryExecuteArmActionResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Humanoid_plan_arm_trajectoryExecuteArmAction(o *ros.Capability, q Ros1Humanoid_plan_arm_trajectoryExecuteArmActionRequest, output []byte) (Ros1Humanoid_plan_arm_trajectoryExecuteArmActionResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Humanoid_plan_arm_trajectoryExecuteArmActionResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Humanoid_plan_arm_trajectoryExecuteArmActionResponse{}, e
	}
	return DecodeRos1Humanoid_plan_arm_trajectoryExecuteArmActionResponse(output[:n])
}

// @brief Publish one complete humanoid_plan_arm_trajectory/RobotActionState message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Humanoid_plan_arm_trajectoryRobotActionState.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Humanoid_plan_arm_trajectoryRobotActionState(o *ros.Capability, v Ros1Humanoid_plan_arm_trajectoryRobotActionState) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete humanoid_plan_arm_trajectory/RobotActionState message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Humanoid_plan_arm_trajectoryRobotActionState.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Humanoid_plan_arm_trajectoryRobotActionState(o *ros.Capability, scratch []byte) (Ros1Humanoid_plan_arm_trajectoryRobotActionState, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Humanoid_plan_arm_trajectoryRobotActionState{}, e
	}
	return DecodeRos1Humanoid_plan_arm_trajectoryRobotActionState(scratch[:n])
}

// @brief Publish one complete humanoid_plan_arm_trajectory/bezierCurveCubicPoint message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Humanoid_plan_arm_trajectoryBezierCurveCubicPoint.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Humanoid_plan_arm_trajectoryBezierCurveCubicPoint(o *ros.Capability, v Ros1Humanoid_plan_arm_trajectoryBezierCurveCubicPoint) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete humanoid_plan_arm_trajectory/bezierCurveCubicPoint message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Humanoid_plan_arm_trajectoryBezierCurveCubicPoint.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Humanoid_plan_arm_trajectoryBezierCurveCubicPoint(o *ros.Capability, scratch []byte) (Ros1Humanoid_plan_arm_trajectoryBezierCurveCubicPoint, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Humanoid_plan_arm_trajectoryBezierCurveCubicPoint{}, e
	}
	return DecodeRos1Humanoid_plan_arm_trajectoryBezierCurveCubicPoint(scratch[:n])
}

// @brief Publish one complete humanoid_plan_arm_trajectory/jointBezierTrajectory message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Humanoid_plan_arm_trajectoryJointBezierTrajectory.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Humanoid_plan_arm_trajectoryJointBezierTrajectory(o *ros.Capability, v Ros1Humanoid_plan_arm_trajectoryJointBezierTrajectory) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete humanoid_plan_arm_trajectory/jointBezierTrajectory message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Humanoid_plan_arm_trajectoryJointBezierTrajectory.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Humanoid_plan_arm_trajectoryJointBezierTrajectory(o *ros.Capability, scratch []byte) (Ros1Humanoid_plan_arm_trajectoryJointBezierTrajectory, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Humanoid_plan_arm_trajectoryJointBezierTrajectory{}, e
	}
	return DecodeRos1Humanoid_plan_arm_trajectoryJointBezierTrajectory(scratch[:n])
}

// @brief Publish one complete humanoid_plan_arm_trajectory/planArmState message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Humanoid_plan_arm_trajectoryPlanArmState.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Humanoid_plan_arm_trajectoryPlanArmState(o *ros.Capability, v Ros1Humanoid_plan_arm_trajectoryPlanArmState) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete humanoid_plan_arm_trajectory/planArmState message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Humanoid_plan_arm_trajectoryPlanArmState.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Humanoid_plan_arm_trajectoryPlanArmState(o *ros.Capability, scratch []byte) (Ros1Humanoid_plan_arm_trajectoryPlanArmState, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Humanoid_plan_arm_trajectoryPlanArmState{}, e
	}
	return DecodeRos1Humanoid_plan_arm_trajectoryPlanArmState(scratch[:n])
}

// @brief Call the selected humanoid_plan_arm_trajectory/planArmTrajectoryBezierCurve service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveRequest,
// response=Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurve(o *ros.Capability, q Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveRequest, output []byte) (Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveResponse{}, e
	}
	return DecodeRos1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveResponse(output[:n])
}

// @brief Call the selected humanoid_plan_arm_trajectory/planArmTrajectoryCubicSpline service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineRequest,
// response=Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSpline(o *ros.Capability, q Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineRequest, output []byte) (Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineResponse{}, e
	}
	return DecodeRos1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineResponse(output[:n])
}

// @brief Publish one complete kindr_msgs/VectorAtPosition message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kindr_msgsVectorAtPosition.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kindr_msgsVectorAtPosition(o *ros.Capability, v Ros1Kindr_msgsVectorAtPosition) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kindr_msgs/VectorAtPosition message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kindr_msgsVectorAtPosition.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kindr_msgsVectorAtPosition(o *ros.Capability, scratch []byte) (Ros1Kindr_msgsVectorAtPosition, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kindr_msgsVectorAtPosition{}, e
	}
	return DecodeRos1Kindr_msgsVectorAtPosition(scratch[:n])
}

// @brief Call the selected kuavo_audio_player/audio_status service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_audio_playerAudio_statusRequest, response=Ros1Kuavo_audio_playerAudio_statusResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_audio_playerAudio_status(o *ros.Capability, q Ros1Kuavo_audio_playerAudio_statusRequest, output []byte) (Ros1Kuavo_audio_playerAudio_statusResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_audio_playerAudio_statusResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_audio_playerAudio_statusResponse{}, e
	}
	return DecodeRos1Kuavo_audio_playerAudio_statusResponse(output[:n])
}

// @brief Call the selected kuavo_audio_player/playmusic service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_audio_playerPlaymusicRequest, response=Ros1Kuavo_audio_playerPlaymusicResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_audio_playerPlaymusic(o *ros.Capability, q Ros1Kuavo_audio_playerPlaymusicRequest, output []byte) (Ros1Kuavo_audio_playerPlaymusicResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_audio_playerPlaymusicResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_audio_playerPlaymusicResponse{}, e
	}
	return DecodeRos1Kuavo_audio_playerPlaymusicResponse(output[:n])
}

// @brief Call the selected kuavo_mapping/DeleteMap service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_mappingDeleteMapRequest, response=Ros1Kuavo_mappingDeleteMapResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_mappingDeleteMap(o *ros.Capability, q Ros1Kuavo_mappingDeleteMapRequest, output []byte) (Ros1Kuavo_mappingDeleteMapResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_mappingDeleteMapResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_mappingDeleteMapResponse{}, e
	}
	return DecodeRos1Kuavo_mappingDeleteMapResponse(output[:n])
}

// @brief Call the selected kuavo_mapping/EditMap service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_mappingEditMapRequest, response=Ros1Kuavo_mappingEditMapResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_mappingEditMap(o *ros.Capability, q Ros1Kuavo_mappingEditMapRequest, output []byte) (Ros1Kuavo_mappingEditMapResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_mappingEditMapResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_mappingEditMapResponse{}, e
	}
	return DecodeRos1Kuavo_mappingEditMapResponse(output[:n])
}

// @brief Call the selected kuavo_mapping/GetAllMaps service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_mappingGetAllMapsRequest, response=Ros1Kuavo_mappingGetAllMapsResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_mappingGetAllMaps(o *ros.Capability, q Ros1Kuavo_mappingGetAllMapsRequest, output []byte) (Ros1Kuavo_mappingGetAllMapsResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_mappingGetAllMapsResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_mappingGetAllMapsResponse{}, e
	}
	return DecodeRos1Kuavo_mappingGetAllMapsResponse(output[:n])
}

// @brief Call the selected kuavo_mapping/GetCurrentMap service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_mappingGetCurrentMapRequest, response=Ros1Kuavo_mappingGetCurrentMapResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_mappingGetCurrentMap(o *ros.Capability, q Ros1Kuavo_mappingGetCurrentMapRequest, output []byte) (Ros1Kuavo_mappingGetCurrentMapResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_mappingGetCurrentMapResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_mappingGetCurrentMapResponse{}, e
	}
	return DecodeRos1Kuavo_mappingGetCurrentMapResponse(output[:n])
}

// @brief Call the selected kuavo_mapping/InitialPoseWithTaskPoint service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_mappingInitialPoseWithTaskPointRequest,
// response=Ros1Kuavo_mappingInitialPoseWithTaskPointResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_mappingInitialPoseWithTaskPoint(o *ros.Capability, q Ros1Kuavo_mappingInitialPoseWithTaskPointRequest, output []byte) (Ros1Kuavo_mappingInitialPoseWithTaskPointResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_mappingInitialPoseWithTaskPointResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_mappingInitialPoseWithTaskPointResponse{}, e
	}
	return DecodeRos1Kuavo_mappingInitialPoseWithTaskPointResponse(output[:n])
}

// @brief Call the selected kuavo_mapping/LoadMap service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_mappingLoadMapRequest, response=Ros1Kuavo_mappingLoadMapResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_mappingLoadMap(o *ros.Capability, q Ros1Kuavo_mappingLoadMapRequest, output []byte) (Ros1Kuavo_mappingLoadMapResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_mappingLoadMapResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_mappingLoadMapResponse{}, e
	}
	return DecodeRos1Kuavo_mappingLoadMapResponse(output[:n])
}

// @brief Call the selected kuavo_mapping/NavigateToTaskPoint service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_mappingNavigateToTaskPointRequest, response=Ros1Kuavo_mappingNavigateToTaskPointResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_mappingNavigateToTaskPoint(o *ros.Capability, q Ros1Kuavo_mappingNavigateToTaskPointRequest, output []byte) (Ros1Kuavo_mappingNavigateToTaskPointResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_mappingNavigateToTaskPointResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_mappingNavigateToTaskPointResponse{}, e
	}
	return DecodeRos1Kuavo_mappingNavigateToTaskPointResponse(output[:n])
}

// @brief Call the selected kuavo_mapping/RenameMap service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_mappingRenameMapRequest, response=Ros1Kuavo_mappingRenameMapResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_mappingRenameMap(o *ros.Capability, q Ros1Kuavo_mappingRenameMapRequest, output []byte) (Ros1Kuavo_mappingRenameMapResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_mappingRenameMapResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_mappingRenameMapResponse{}, e
	}
	return DecodeRos1Kuavo_mappingRenameMapResponse(output[:n])
}

// @brief Call the selected kuavo_mapping/SaveMap service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_mappingSaveMapRequest, response=Ros1Kuavo_mappingSaveMapResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_mappingSaveMap(o *ros.Capability, q Ros1Kuavo_mappingSaveMapRequest, output []byte) (Ros1Kuavo_mappingSaveMapResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_mappingSaveMapResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_mappingSaveMapResponse{}, e
	}
	return DecodeRos1Kuavo_mappingSaveMapResponse(output[:n])
}

// @brief Call the selected kuavo_mapping/SetInitialPose service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_mappingSetInitialPoseRequest, response=Ros1Kuavo_mappingSetInitialPoseResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_mappingSetInitialPose(o *ros.Capability, q Ros1Kuavo_mappingSetInitialPoseRequest, output []byte) (Ros1Kuavo_mappingSetInitialPoseResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_mappingSetInitialPoseResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_mappingSetInitialPoseResponse{}, e
	}
	return DecodeRos1Kuavo_mappingSetInitialPoseResponse(output[:n])
}

// @brief Call the selected kuavo_mapping/StartMapping service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_mappingStartMappingRequest, response=Ros1Kuavo_mappingStartMappingResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_mappingStartMapping(o *ros.Capability, q Ros1Kuavo_mappingStartMappingRequest, output []byte) (Ros1Kuavo_mappingStartMappingResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_mappingStartMappingResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_mappingStartMappingResponse{}, e
	}
	return DecodeRos1Kuavo_mappingStartMappingResponse(output[:n])
}

// @brief Call the selected kuavo_mapping/StopMapping service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_mappingStopMappingRequest, response=Ros1Kuavo_mappingStopMappingResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_mappingStopMapping(o *ros.Capability, q Ros1Kuavo_mappingStopMappingRequest, output []byte) (Ros1Kuavo_mappingStopMappingResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_mappingStopMappingResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_mappingStopMappingResponse{}, e
	}
	return DecodeRos1Kuavo_mappingStopMappingResponse(output[:n])
}

// @brief Publish one complete kuavo_mapping/TaskPoint message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_mappingTaskPoint.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_mappingTaskPoint(o *ros.Capability, v Ros1Kuavo_mappingTaskPoint) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_mapping/TaskPoint message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_mappingTaskPoint.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_mappingTaskPoint(o *ros.Capability, scratch []byte) (Ros1Kuavo_mappingTaskPoint, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_mappingTaskPoint{}, e
	}
	return DecodeRos1Kuavo_mappingTaskPoint(scratch[:n])
}

// @brief Call the selected kuavo_mapping/TaskPointOperation service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_mappingTaskPointOperationRequest, response=Ros1Kuavo_mappingTaskPointOperationResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_mappingTaskPointOperation(o *ros.Capability, q Ros1Kuavo_mappingTaskPointOperationRequest, output []byte) (Ros1Kuavo_mappingTaskPointOperationResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_mappingTaskPointOperationResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_mappingTaskPointOperationResponse{}, e
	}
	return DecodeRos1Kuavo_mappingTaskPointOperationResponse(output[:n])
}

// @brief Publish one complete kuavo_msgs/AprilTagDetection message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsAprilTagDetection.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsAprilTagDetection(o *ros.Capability, v Ros1Kuavo_msgsAprilTagDetection) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/AprilTagDetection message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsAprilTagDetection.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsAprilTagDetection(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsAprilTagDetection, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsAprilTagDetection{}, e
	}
	return DecodeRos1Kuavo_msgsAprilTagDetection(scratch[:n])
}

// @brief Publish one complete kuavo_msgs/AprilTagDetectionArray message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Kuavo_msgsAprilTagDetectionArray.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsAprilTagDetectionArray(o *ros.Capability, v Ros1Kuavo_msgsAprilTagDetectionArray) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/AprilTagDetectionArray message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsAprilTagDetectionArray.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsAprilTagDetectionArray(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsAprilTagDetectionArray, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsAprilTagDetectionArray{}, e
	}
	return DecodeRos1Kuavo_msgsAprilTagDetectionArray(scratch[:n])
}

// @brief Publish one complete kuavo_msgs/AudioPlaybackStatus message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsAudioPlaybackStatus.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsAudioPlaybackStatus(o *ros.Capability, v Ros1Kuavo_msgsAudioPlaybackStatus) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/AudioPlaybackStatus message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsAudioPlaybackStatus.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsAudioPlaybackStatus(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsAudioPlaybackStatus, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsAudioPlaybackStatus{}, e
	}
	return DecodeRos1Kuavo_msgsAudioPlaybackStatus(scratch[:n])
}

// @brief Publish one complete kuavo_msgs/AudioReceiverData message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsAudioReceiverData.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsAudioReceiverData(o *ros.Capability, v Ros1Kuavo_msgsAudioReceiverData) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/AudioReceiverData message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsAudioReceiverData.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsAudioReceiverData(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsAudioReceiverData, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsAudioReceiverData{}, e
	}
	return DecodeRos1Kuavo_msgsAudioReceiverData(scratch[:n])
}

// @brief Publish one complete kuavo_msgs/BatteryInfo message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsBatteryInfo.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsBatteryInfo(o *ros.Capability, v Ros1Kuavo_msgsBatteryInfo) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/BatteryInfo message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsBatteryInfo.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsBatteryInfo(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsBatteryInfo, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsBatteryInfo{}, e
	}
	return DecodeRos1Kuavo_msgsBatteryInfo(scratch[:n])
}

// @brief Publish one complete kuavo_msgs/Color message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsColor.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsColor(o *ros.Capability, v Ros1Kuavo_msgsColor) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/Color message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsColor.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsColor(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsColor, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsColor{}, e
	}
	return DecodeRos1Kuavo_msgsColor(scratch[:n])
}

// @brief Publish one complete kuavo_msgs/ControllerSwitchEvent message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsControllerSwitchEvent.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsControllerSwitchEvent(o *ros.Capability, v Ros1Kuavo_msgsControllerSwitchEvent) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/ControllerSwitchEvent message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsControllerSwitchEvent.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsControllerSwitchEvent(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsControllerSwitchEvent, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsControllerSwitchEvent{}, e
	}
	return DecodeRos1Kuavo_msgsControllerSwitchEvent(scratch[:n])
}

// @brief Call the selected kuavo_msgs/CreatePath service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsCreatePathRequest, response=Ros1Kuavo_msgsCreatePathResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsCreatePath(o *ros.Capability, q Ros1Kuavo_msgsCreatePathRequest, output []byte) (Ros1Kuavo_msgsCreatePathResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsCreatePathResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsCreatePathResponse{}, e
	}
	return DecodeRos1Kuavo_msgsCreatePathResponse(output[:n])
}

// @brief Publish one complete kuavo_msgs/DanceTrajectoryState message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsDanceTrajectoryState.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsDanceTrajectoryState(o *ros.Capability, v Ros1Kuavo_msgsDanceTrajectoryState) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/DanceTrajectoryState message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsDanceTrajectoryState.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsDanceTrajectoryState(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsDanceTrajectoryState, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsDanceTrajectoryState{}, e
	}
	return DecodeRos1Kuavo_msgsDanceTrajectoryState(scratch[:n])
}

// @brief Call the selected kuavo_msgs/ExecuteArmAction service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsExecuteArmActionRequest, response=Ros1Kuavo_msgsExecuteArmActionResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsExecuteArmAction(o *ros.Capability, q Ros1Kuavo_msgsExecuteArmActionRequest, output []byte) (Ros1Kuavo_msgsExecuteArmActionResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsExecuteArmActionResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsExecuteArmActionResponse{}, e
	}
	return DecodeRos1Kuavo_msgsExecuteArmActionResponse(output[:n])
}

// @brief Publish one complete kuavo_msgs/FTsensorData message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsFTsensorData.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsFTsensorData(o *ros.Capability, v Ros1Kuavo_msgsFTsensorData) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/FTsensorData message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsFTsensorData.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsFTsensorData(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsFTsensorData, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsFTsensorData{}, e
	}
	return DecodeRos1Kuavo_msgsFTsensorData(scratch[:n])
}

// @brief Publish one complete kuavo_msgs/FaceBoundingBox message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsFaceBoundingBox.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsFaceBoundingBox(o *ros.Capability, v Ros1Kuavo_msgsFaceBoundingBox) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/FaceBoundingBox message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsFaceBoundingBox.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsFaceBoundingBox(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsFaceBoundingBox, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsFaceBoundingBox{}, e
	}
	return DecodeRos1Kuavo_msgsFaceBoundingBox(scratch[:n])
}

// @brief Call the selected kuavo_msgs/FallStandCommand service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsFallStandCommandRequest, response=Ros1Kuavo_msgsFallStandCommandResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsFallStandCommand(o *ros.Capability, q Ros1Kuavo_msgsFallStandCommandRequest, output []byte) (Ros1Kuavo_msgsFallStandCommandResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsFallStandCommandResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsFallStandCommandResponse{}, e
	}
	return DecodeRos1Kuavo_msgsFallStandCommandResponse(output[:n])
}

// @brief Publish one complete kuavo_msgs/Float32MultiArrayStamped message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Kuavo_msgsFloat32MultiArrayStamped.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsFloat32MultiArrayStamped(o *ros.Capability, v Ros1Kuavo_msgsFloat32MultiArrayStamped) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/Float32MultiArrayStamped message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Kuavo_msgsFloat32MultiArrayStamped.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsFloat32MultiArrayStamped(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsFloat32MultiArrayStamped, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsFloat32MultiArrayStamped{}, e
	}
	return DecodeRos1Kuavo_msgsFloat32MultiArrayStamped(scratch[:n])
}

// @brief Call the selected kuavo_msgs/GetAllMaps service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsGetAllMapsRequest, response=Ros1Kuavo_msgsGetAllMapsResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsGetAllMaps(o *ros.Capability, q Ros1Kuavo_msgsGetAllMapsRequest, output []byte) (Ros1Kuavo_msgsGetAllMapsResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsGetAllMapsResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsGetAllMapsResponse{}, e
	}
	return DecodeRos1Kuavo_msgsGetAllMapsResponse(output[:n])
}

// @brief Call the selected kuavo_msgs/GetBatteryInfo service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsGetBatteryInfoRequest, response=Ros1Kuavo_msgsGetBatteryInfoResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsGetBatteryInfo(o *ros.Capability, q Ros1Kuavo_msgsGetBatteryInfoRequest, output []byte) (Ros1Kuavo_msgsGetBatteryInfoResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsGetBatteryInfoResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsGetBatteryInfoResponse{}, e
	}
	return DecodeRos1Kuavo_msgsGetBatteryInfoResponse(output[:n])
}

// @brief Call the selected kuavo_msgs/GetCurrentMap service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsGetCurrentMapRequest, response=Ros1Kuavo_msgsGetCurrentMapResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsGetCurrentMap(o *ros.Capability, q Ros1Kuavo_msgsGetCurrentMapRequest, output []byte) (Ros1Kuavo_msgsGetCurrentMapResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsGetCurrentMapResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsGetCurrentMapResponse{}, e
	}
	return DecodeRos1Kuavo_msgsGetCurrentMapResponse(output[:n])
}

// @brief Call the selected kuavo_msgs/GetPowerBoardStatus service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsGetPowerBoardStatusRequest, response=Ros1Kuavo_msgsGetPowerBoardStatusResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsGetPowerBoardStatus(o *ros.Capability, q Ros1Kuavo_msgsGetPowerBoardStatusRequest, output []byte) (Ros1Kuavo_msgsGetPowerBoardStatusResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsGetPowerBoardStatusResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsGetPowerBoardStatusResponse{}, e
	}
	return DecodeRos1Kuavo_msgsGetPowerBoardStatusResponse(output[:n])
}

// @brief Call the selected kuavo_msgs/GetStringList service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsGetStringListRequest, response=Ros1Kuavo_msgsGetStringListResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsGetStringList(o *ros.Capability, q Ros1Kuavo_msgsGetStringListRequest, output []byte) (Ros1Kuavo_msgsGetStringListResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsGetStringListResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsGetStringListResponse{}, e
	}
	return DecodeRos1Kuavo_msgsGetStringListResponse(output[:n])
}

// @brief Call the selected kuavo_msgs/GetTargetPartPoseInCamera service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsGetTargetPartPoseInCameraRequest, response=Ros1Kuavo_msgsGetTargetPartPoseInCameraResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsGetTargetPartPoseInCamera(o *ros.Capability, q Ros1Kuavo_msgsGetTargetPartPoseInCameraRequest, output []byte) (Ros1Kuavo_msgsGetTargetPartPoseInCameraResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsGetTargetPartPoseInCameraResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsGetTargetPartPoseInCameraResponse{}, e
	}
	return DecodeRos1Kuavo_msgsGetTargetPartPoseInCameraResponse(output[:n])
}

// @brief Call the selected kuavo_msgs/InitialPoseWithTaskPoint service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsInitialPoseWithTaskPointRequest, response=Ros1Kuavo_msgsInitialPoseWithTaskPointResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsInitialPoseWithTaskPoint(o *ros.Capability, q Ros1Kuavo_msgsInitialPoseWithTaskPointRequest, output []byte) (Ros1Kuavo_msgsInitialPoseWithTaskPointResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsInitialPoseWithTaskPointResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsInitialPoseWithTaskPointResponse{}, e
	}
	return DecodeRos1Kuavo_msgsInitialPoseWithTaskPointResponse(output[:n])
}

// @brief Publish one complete kuavo_msgs/JoySticks message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsJoySticks.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsJoySticks(o *ros.Capability, v Ros1Kuavo_msgsJoySticks) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/JoySticks message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsJoySticks.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsJoySticks(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsJoySticks, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsJoySticks{}, e
	}
	return DecodeRos1Kuavo_msgsJoySticks(scratch[:n])
}

// @brief Call the selected kuavo_msgs/LoadMap service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsLoadMapRequest, response=Ros1Kuavo_msgsLoadMapResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsLoadMap(o *ros.Capability, q Ros1Kuavo_msgsLoadMapRequest, output []byte) (Ros1Kuavo_msgsLoadMapResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsLoadMapResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsLoadMapResponse{}, e
	}
	return DecodeRos1Kuavo_msgsLoadMapResponse(output[:n])
}

// @brief Publish one complete kuavo_msgs/Metadata message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsMetadata.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsMetadata(o *ros.Capability, v Ros1Kuavo_msgsMetadata) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/Metadata message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsMetadata.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsMetadata(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsMetadata, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsMetadata{}, e
	}
	return DecodeRos1Kuavo_msgsMetadata(scratch[:n])
}

// @brief Publish one complete kuavo_msgs/MmDetectionMsg message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsMmDetectionMsg.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsMmDetectionMsg(o *ros.Capability, v Ros1Kuavo_msgsMmDetectionMsg) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/MmDetectionMsg message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsMmDetectionMsg.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsMmDetectionMsg(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsMmDetectionMsg, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsMmDetectionMsg{}, e
	}
	return DecodeRos1Kuavo_msgsMmDetectionMsg(scratch[:n])
}

// @brief Publish one complete kuavo_msgs/MocapPoseRetarget message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsMocapPoseRetarget.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsMocapPoseRetarget(o *ros.Capability, v Ros1Kuavo_msgsMocapPoseRetarget) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/MocapPoseRetarget message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsMocapPoseRetarget.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsMocapPoseRetarget(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsMocapPoseRetarget, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsMocapPoseRetarget{}, e
	}
	return DecodeRos1Kuavo_msgsMocapPoseRetarget(scratch[:n])
}

// @brief Call the selected kuavo_msgs/NavigateToTaskPoint service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsNavigateToTaskPointRequest, response=Ros1Kuavo_msgsNavigateToTaskPointResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsNavigateToTaskPoint(o *ros.Capability, q Ros1Kuavo_msgsNavigateToTaskPointRequest, output []byte) (Ros1Kuavo_msgsNavigateToTaskPointResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsNavigateToTaskPointResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsNavigateToTaskPointResponse{}, e
	}
	return DecodeRos1Kuavo_msgsNavigateToTaskPointResponse(output[:n])
}

// @brief Call the selected kuavo_msgs/PlayMusicImmediate service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsPlayMusicImmediateRequest, response=Ros1Kuavo_msgsPlayMusicImmediateResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsPlayMusicImmediate(o *ros.Capability, q Ros1Kuavo_msgsPlayMusicImmediateRequest, output []byte) (Ros1Kuavo_msgsPlayMusicImmediateResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsPlayMusicImmediateResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsPlayMusicImmediateResponse{}, e
	}
	return DecodeRos1Kuavo_msgsPlayMusicImmediateResponse(output[:n])
}

// @brief Publish one complete kuavo_msgs/PowerBoardStatus message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsPowerBoardStatus.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsPowerBoardStatus(o *ros.Capability, v Ros1Kuavo_msgsPowerBoardStatus) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/PowerBoardStatus message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsPowerBoardStatus.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsPowerBoardStatus(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsPowerBoardStatus, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsPowerBoardStatus{}, e
	}
	return DecodeRos1Kuavo_msgsPowerBoardStatus(scratch[:n])
}

// @brief Call the selected kuavo_msgs/RelaySelectChannel service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsRelaySelectChannelRequest, response=Ros1Kuavo_msgsRelaySelectChannelResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsRelaySelectChannel(o *ros.Capability, q Ros1Kuavo_msgsRelaySelectChannelRequest, output []byte) (Ros1Kuavo_msgsRelaySelectChannelResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsRelaySelectChannelResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsRelaySelectChannelResponse{}, e
	}
	return DecodeRos1Kuavo_msgsRelaySelectChannelResponse(output[:n])
}

// @brief Call the selected kuavo_msgs/RepublishTFs service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsRepublishTFsRequest, response=Ros1Kuavo_msgsRepublishTFsResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsRepublishTFs(o *ros.Capability, q Ros1Kuavo_msgsRepublishTFsRequest, output []byte) (Ros1Kuavo_msgsRepublishTFsResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsRepublishTFsResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsRepublishTFsResponse{}, e
	}
	return DecodeRos1Kuavo_msgsRepublishTFsResponse(output[:n])
}

// @brief Publish one complete kuavo_msgs/RigidBodyDescription message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsRigidBodyDescription.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsRigidBodyDescription(o *ros.Capability, v Ros1Kuavo_msgsRigidBodyDescription) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/RigidBodyDescription message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsRigidBodyDescription.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsRigidBodyDescription(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsRigidBodyDescription, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsRigidBodyDescription{}, e
	}
	return DecodeRos1Kuavo_msgsRigidBodyDescription(scratch[:n])
}

// @brief Publish one complete kuavo_msgs/RigidBodyFrame message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsRigidBodyFrame.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsRigidBodyFrame(o *ros.Capability, v Ros1Kuavo_msgsRigidBodyFrame) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/RigidBodyFrame message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsRigidBodyFrame.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsRigidBodyFrame(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsRigidBodyFrame, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsRigidBodyFrame{}, e
	}
	return DecodeRos1Kuavo_msgsRigidBodyFrame(scratch[:n])
}

// @brief Publish one complete kuavo_msgs/RobotActionState message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsRobotActionState.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsRobotActionState(o *ros.Capability, v Ros1Kuavo_msgsRobotActionState) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/RobotActionState message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsRobotActionState.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsRobotActionState(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsRobotActionState, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsRobotActionState{}, e
	}
	return DecodeRos1Kuavo_msgsRobotActionState(scratch[:n])
}

// @brief Call the selected kuavo_msgs/SetHeadControlMode service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsSetHeadControlModeRequest, response=Ros1Kuavo_msgsSetHeadControlModeResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsSetHeadControlMode(o *ros.Capability, q Ros1Kuavo_msgsSetHeadControlModeRequest, output []byte) (Ros1Kuavo_msgsSetHeadControlModeResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsSetHeadControlModeResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsSetHeadControlModeResponse{}, e
	}
	return DecodeRos1Kuavo_msgsSetHeadControlModeResponse(output[:n])
}

// @brief Call the selected kuavo_msgs/SetIncrementalArmTrajLink service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsSetIncrementalArmTrajLinkRequest, response=Ros1Kuavo_msgsSetIncrementalArmTrajLinkResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsSetIncrementalArmTrajLink(o *ros.Capability, q Ros1Kuavo_msgsSetIncrementalArmTrajLinkRequest, output []byte) (Ros1Kuavo_msgsSetIncrementalArmTrajLinkResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsSetIncrementalArmTrajLinkResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsSetIncrementalArmTrajLinkResponse{}, e
	}
	return DecodeRos1Kuavo_msgsSetIncrementalArmTrajLinkResponse(output[:n])
}

// @brief Call the selected kuavo_msgs/SetInitialPose service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsSetInitialPoseRequest, response=Ros1Kuavo_msgsSetInitialPoseResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsSetInitialPose(o *ros.Capability, q Ros1Kuavo_msgsSetInitialPoseRequest, output []byte) (Ros1Kuavo_msgsSetInitialPoseResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsSetInitialPoseResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsSetInitialPoseResponse{}, e
	}
	return DecodeRos1Kuavo_msgsSetInitialPoseResponse(output[:n])
}

// @brief Call the selected kuavo_msgs/SetJoyTopic service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsSetJoyTopicRequest, response=Ros1Kuavo_msgsSetJoyTopicResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsSetJoyTopic(o *ros.Capability, q Ros1Kuavo_msgsSetJoyTopicRequest, output []byte) (Ros1Kuavo_msgsSetJoyTopicResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsSetJoyTopicResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsSetJoyTopicResponse{}, e
	}
	return DecodeRos1Kuavo_msgsSetJoyTopicResponse(output[:n])
}

// @brief Call the selected kuavo_msgs/SetLEDMode service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsSetLEDModeRequest, response=Ros1Kuavo_msgsSetLEDModeResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsSetLEDMode(o *ros.Capability, q Ros1Kuavo_msgsSetLEDModeRequest, output []byte) (Ros1Kuavo_msgsSetLEDModeResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsSetLEDModeResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsSetLEDModeResponse{}, e
	}
	return DecodeRos1Kuavo_msgsSetLEDModeResponse(output[:n])
}

// @brief Call the selected kuavo_msgs/SetLEDMode_free service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsSetLEDMode_freeRequest, response=Ros1Kuavo_msgsSetLEDMode_freeResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsSetLEDMode_free(o *ros.Capability, q Ros1Kuavo_msgsSetLEDMode_freeRequest, output []byte) (Ros1Kuavo_msgsSetLEDMode_freeResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsSetLEDMode_freeResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsSetLEDMode_freeResponse{}, e
	}
	return DecodeRos1Kuavo_msgsSetLEDMode_freeResponse(output[:n])
}

// @brief Call the selected kuavo_msgs/SetString service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsSetStringRequest, response=Ros1Kuavo_msgsSetStringResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsSetString(o *ros.Capability, q Ros1Kuavo_msgsSetStringRequest, output []byte) (Ros1Kuavo_msgsSetStringResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsSetStringResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsSetStringResponse{}, e
	}
	return DecodeRos1Kuavo_msgsSetStringResponse(output[:n])
}

// @brief Publish one complete kuavo_msgs/SkeletonFrame message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsSkeletonFrame.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsSkeletonFrame(o *ros.Capability, v Ros1Kuavo_msgsSkeletonFrame) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/SkeletonFrame message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsSkeletonFrame.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsSkeletonFrame(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsSkeletonFrame, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsSkeletonFrame{}, e
	}
	return DecodeRos1Kuavo_msgsSkeletonFrame(scratch[:n])
}

// @brief Call the selected kuavo_msgs/SpeechSynthesis service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsSpeechSynthesisRequest, response=Ros1Kuavo_msgsSpeechSynthesisResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsSpeechSynthesis(o *ros.Capability, q Ros1Kuavo_msgsSpeechSynthesisRequest, output []byte) (Ros1Kuavo_msgsSpeechSynthesisResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsSpeechSynthesisResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsSpeechSynthesisResponse{}, e
	}
	return DecodeRos1Kuavo_msgsSpeechSynthesisResponse(output[:n])
}

// @brief Publish one complete kuavo_msgs/TFArray message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsTFArray.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsTFArray(o *ros.Capability, v Ros1Kuavo_msgsTFArray) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/TFArray message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsTFArray.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsTFArray(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsTFArray, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsTFArray{}, e
	}
	return DecodeRos1Kuavo_msgsTFArray(scratch[:n])
}

// @brief Publish one complete kuavo_msgs/TaskPoint message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsTaskPoint.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsTaskPoint(o *ros.Capability, v Ros1Kuavo_msgsTaskPoint) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/TaskPoint message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsTaskPoint.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsTaskPoint(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsTaskPoint, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsTaskPoint{}, e
	}
	return DecodeRos1Kuavo_msgsTaskPoint(scratch[:n])
}

// @brief Call the selected kuavo_msgs/TaskPointOperation service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsTaskPointOperationRequest, response=Ros1Kuavo_msgsTaskPointOperationResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsTaskPointOperation(o *ros.Capability, q Ros1Kuavo_msgsTaskPointOperationRequest, output []byte) (Ros1Kuavo_msgsTaskPointOperationResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsTaskPointOperationResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsTaskPointOperationResponse{}, e
	}
	return DecodeRos1Kuavo_msgsTaskPointOperationResponse(output[:n])
}

// @brief Call the selected kuavo_msgs/TransportModeCommand service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsTransportModeCommandRequest, response=Ros1Kuavo_msgsTransportModeCommandResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsTransportModeCommand(o *ros.Capability, q Ros1Kuavo_msgsTransportModeCommandRequest, output []byte) (Ros1Kuavo_msgsTransportModeCommandResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsTransportModeCommandResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsTransportModeCommandResponse{}, e
	}
	return DecodeRos1Kuavo_msgsTransportModeCommandResponse(output[:n])
}

// @brief Publish one complete kuavo_msgs/VMPTrajectoryState message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsVMPTrajectoryState.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsVMPTrajectoryState(o *ros.Capability, v Ros1Kuavo_msgsVMPTrajectoryState) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/VMPTrajectoryState message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsVMPTrajectoryState.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsVMPTrajectoryState(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsVMPTrajectoryState, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsVMPTrajectoryState{}, e
	}
	return DecodeRos1Kuavo_msgsVMPTrajectoryState(scratch[:n])
}

// @brief Call the selected kuavo_msgs/accessIkSolve service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsAccessIkSolveRequest, response=Ros1Kuavo_msgsAccessIkSolveResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsAccessIkSolve(o *ros.Capability, q Ros1Kuavo_msgsAccessIkSolveRequest, output []byte) (Ros1Kuavo_msgsAccessIkSolveResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsAccessIkSolveResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsAccessIkSolveResponse{}, e
	}
	return DecodeRos1Kuavo_msgsAccessIkSolveResponse(output[:n])
}

// @brief Call the selected kuavo_msgs/adjustZeroPoint service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsAdjustZeroPointRequest, response=Ros1Kuavo_msgsAdjustZeroPointResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsAdjustZeroPoint(o *ros.Capability, q Ros1Kuavo_msgsAdjustZeroPointRequest, output []byte) (Ros1Kuavo_msgsAdjustZeroPointResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsAdjustZeroPointResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsAdjustZeroPointResponse{}, e
	}
	return DecodeRos1Kuavo_msgsAdjustZeroPointResponse(output[:n])
}

// @brief Publish one complete kuavo_msgs/armCollisionCheckInfo message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsArmCollisionCheckInfo.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsArmCollisionCheckInfo(o *ros.Capability, v Ros1Kuavo_msgsArmCollisionCheckInfo) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/armCollisionCheckInfo message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsArmCollisionCheckInfo.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsArmCollisionCheckInfo(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsArmCollisionCheckInfo, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsArmCollisionCheckInfo{}, e
	}
	return DecodeRos1Kuavo_msgsArmCollisionCheckInfo(scratch[:n])
}

// @brief Publish one complete kuavo_msgs/armHandPose message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsArmHandPose.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsArmHandPose(o *ros.Capability, v Ros1Kuavo_msgsArmHandPose) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/armHandPose message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsArmHandPose.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsArmHandPose(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsArmHandPose, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsArmHandPose{}, e
	}
	return DecodeRos1Kuavo_msgsArmHandPose(scratch[:n])
}

// @brief Publish one complete kuavo_msgs/armHandPoseFree message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsArmHandPoseFree.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsArmHandPoseFree(o *ros.Capability, v Ros1Kuavo_msgsArmHandPoseFree) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/armHandPoseFree message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsArmHandPoseFree.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsArmHandPoseFree(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsArmHandPoseFree, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsArmHandPoseFree{}, e
	}
	return DecodeRos1Kuavo_msgsArmHandPoseFree(scratch[:n])
}

// @brief Publish one complete kuavo_msgs/armPoseWithTimeStamp message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsArmPoseWithTimeStamp.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsArmPoseWithTimeStamp(o *ros.Capability, v Ros1Kuavo_msgsArmPoseWithTimeStamp) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/armPoseWithTimeStamp message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsArmPoseWithTimeStamp.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsArmPoseWithTimeStamp(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsArmPoseWithTimeStamp, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsArmPoseWithTimeStamp{}, e
	}
	return DecodeRos1Kuavo_msgsArmPoseWithTimeStamp(scratch[:n])
}

// @brief Publish one complete kuavo_msgs/armTargetPoses message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsArmTargetPoses.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsArmTargetPoses(o *ros.Capability, v Ros1Kuavo_msgsArmTargetPoses) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/armTargetPoses message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsArmTargetPoses.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsArmTargetPoses(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsArmTargetPoses, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsArmTargetPoses{}, e
	}
	return DecodeRos1Kuavo_msgsArmTargetPoses(scratch[:n])
}

// @brief Publish one complete kuavo_msgs/bezierCurveCubicPoint message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsBezierCurveCubicPoint.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsBezierCurveCubicPoint(o *ros.Capability, v Ros1Kuavo_msgsBezierCurveCubicPoint) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/bezierCurveCubicPoint message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsBezierCurveCubicPoint.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsBezierCurveCubicPoint(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsBezierCurveCubicPoint, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsBezierCurveCubicPoint{}, e
	}
	return DecodeRos1Kuavo_msgsBezierCurveCubicPoint(scratch[:n])
}

// @brief Call the selected kuavo_msgs/changeArmCtrlMode service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsChangeArmCtrlModeRequest, response=Ros1Kuavo_msgsChangeArmCtrlModeResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsChangeArmCtrlMode(o *ros.Capability, q Ros1Kuavo_msgsChangeArmCtrlModeRequest, output []byte) (Ros1Kuavo_msgsChangeArmCtrlModeResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsChangeArmCtrlModeResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsChangeArmCtrlModeResponse{}, e
	}
	return DecodeRos1Kuavo_msgsChangeArmCtrlModeResponse(output[:n])
}

// @brief Call the selected kuavo_msgs/changeArmCtrlModeKuavo service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsChangeArmCtrlModeKuavoRequest, response=Ros1Kuavo_msgsChangeArmCtrlModeKuavoResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsChangeArmCtrlModeKuavo(o *ros.Capability, q Ros1Kuavo_msgsChangeArmCtrlModeKuavoRequest, output []byte) (Ros1Kuavo_msgsChangeArmCtrlModeKuavoResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsChangeArmCtrlModeKuavoResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsChangeArmCtrlModeKuavoResponse{}, e
	}
	return DecodeRos1Kuavo_msgsChangeArmCtrlModeKuavoResponse(output[:n])
}

// @brief Call the selected kuavo_msgs/changeLbMpcObsUpdateModeSrv service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvRequest,
// response=Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsChangeLbMpcObsUpdateModeSrv(o *ros.Capability, q Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvRequest, output []byte) (Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvResponse{}, e
	}
	return DecodeRos1Kuavo_msgsChangeLbMpcObsUpdateModeSrvResponse(output[:n])
}

// @brief Call the selected kuavo_msgs/changeLbQuickModeSrv service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsChangeLbQuickModeSrvRequest, response=Ros1Kuavo_msgsChangeLbQuickModeSrvResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsChangeLbQuickModeSrv(o *ros.Capability, q Ros1Kuavo_msgsChangeLbQuickModeSrvRequest, output []byte) (Ros1Kuavo_msgsChangeLbQuickModeSrvResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsChangeLbQuickModeSrvResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsChangeLbQuickModeSrvResponse{}, e
	}
	return DecodeRos1Kuavo_msgsChangeLbQuickModeSrvResponse(output[:n])
}

// @brief Call the selected kuavo_msgs/changeMotorParam service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsChangeMotorParamRequest, response=Ros1Kuavo_msgsChangeMotorParamResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsChangeMotorParam(o *ros.Capability, q Ros1Kuavo_msgsChangeMotorParamRequest, output []byte) (Ros1Kuavo_msgsChangeMotorParamResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsChangeMotorParamResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsChangeMotorParamResponse{}, e
	}
	return DecodeRos1Kuavo_msgsChangeMotorParamResponse(output[:n])
}

// @brief Call the selected kuavo_msgs/changeTorsoCtrlMode service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsChangeTorsoCtrlModeRequest, response=Ros1Kuavo_msgsChangeTorsoCtrlModeResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsChangeTorsoCtrlMode(o *ros.Capability, q Ros1Kuavo_msgsChangeTorsoCtrlModeRequest, output []byte) (Ros1Kuavo_msgsChangeTorsoCtrlModeResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsChangeTorsoCtrlModeResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsChangeTorsoCtrlModeResponse{}, e
	}
	return DecodeRos1Kuavo_msgsChangeTorsoCtrlModeResponse(output[:n])
}

// @brief Call the selected kuavo_msgs/changeWaistCtrlMode service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsChangeWaistCtrlModeRequest, response=Ros1Kuavo_msgsChangeWaistCtrlModeResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsChangeWaistCtrlMode(o *ros.Capability, q Ros1Kuavo_msgsChangeWaistCtrlModeRequest, output []byte) (Ros1Kuavo_msgsChangeWaistCtrlModeResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsChangeWaistCtrlModeResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsChangeWaistCtrlModeResponse{}, e
	}
	return DecodeRos1Kuavo_msgsChangeWaistCtrlModeResponse(output[:n])
}

// @brief Call the selected kuavo_msgs/chassisPoseCmdSrv service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsChassisPoseCmdSrvRequest, response=Ros1Kuavo_msgsChassisPoseCmdSrvResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsChassisPoseCmdSrv(o *ros.Capability, q Ros1Kuavo_msgsChassisPoseCmdSrvRequest, output []byte) (Ros1Kuavo_msgsChassisPoseCmdSrvResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsChassisPoseCmdSrvResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsChassisPoseCmdSrvResponse{}, e
	}
	return DecodeRos1Kuavo_msgsChassisPoseCmdSrvResponse(output[:n])
}

// @brief Call the selected kuavo_msgs/controlLejuClaw service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsControlLejuClawRequest, response=Ros1Kuavo_msgsControlLejuClawResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsControlLejuClaw(o *ros.Capability, q Ros1Kuavo_msgsControlLejuClawRequest, output []byte) (Ros1Kuavo_msgsControlLejuClawResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsControlLejuClawResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsControlLejuClawResponse{}, e
	}
	return DecodeRos1Kuavo_msgsControlLejuClawResponse(output[:n])
}

// @brief Publish one complete kuavo_msgs/dexhandCommand message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsDexhandCommand.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsDexhandCommand(o *ros.Capability, v Ros1Kuavo_msgsDexhandCommand) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/dexhandCommand message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsDexhandCommand.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsDexhandCommand(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsDexhandCommand, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsDexhandCommand{}, e
	}
	return DecodeRos1Kuavo_msgsDexhandCommand(scratch[:n])
}

// @brief Publish one complete kuavo_msgs/dexhandTouchState message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsDexhandTouchState.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsDexhandTouchState(o *ros.Capability, v Ros1Kuavo_msgsDexhandTouchState) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/dexhandTouchState message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsDexhandTouchState.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsDexhandTouchState(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsDexhandTouchState, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsDexhandTouchState{}, e
	}
	return DecodeRos1Kuavo_msgsDexhandTouchState(scratch[:n])
}

// @brief Call the selected kuavo_msgs/eePoseReachError service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsEePoseReachErrorRequest, response=Ros1Kuavo_msgsEePoseReachErrorResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsEePoseReachError(o *ros.Capability, q Ros1Kuavo_msgsEePoseReachErrorRequest, output []byte) (Ros1Kuavo_msgsEePoseReachErrorResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsEePoseReachErrorResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsEePoseReachErrorResponse{}, e
	}
	return DecodeRos1Kuavo_msgsEePoseReachErrorResponse(output[:n])
}

// @brief Call the selected kuavo_msgs/enableHandTouchSensor service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsEnableHandTouchSensorRequest, response=Ros1Kuavo_msgsEnableHandTouchSensorResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsEnableHandTouchSensor(o *ros.Capability, q Ros1Kuavo_msgsEnableHandTouchSensorRequest, output []byte) (Ros1Kuavo_msgsEnableHandTouchSensorResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsEnableHandTouchSensorResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsEnableHandTouchSensorResponse{}, e
	}
	return DecodeRos1Kuavo_msgsEnableHandTouchSensorResponse(output[:n])
}

// @brief Publish one complete kuavo_msgs/endEffectorData message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsEndEffectorData.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsEndEffectorData(o *ros.Capability, v Ros1Kuavo_msgsEndEffectorData) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/endEffectorData message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsEndEffectorData.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsEndEffectorData(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsEndEffectorData, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsEndEffectorData{}, e
	}
	return DecodeRos1Kuavo_msgsEndEffectorData(scratch[:n])
}

// @brief Call the selected kuavo_msgs/fkSrv service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsFkSrvRequest, response=Ros1Kuavo_msgsFkSrvResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsFkSrv(o *ros.Capability, q Ros1Kuavo_msgsFkSrvRequest, output []byte) (Ros1Kuavo_msgsFkSrvResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsFkSrvResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsFkSrvResponse{}, e
	}
	return DecodeRos1Kuavo_msgsFkSrvResponse(output[:n])
}

// @brief Call the selected kuavo_msgs/fkSrvWithReferFrame service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsFkSrvWithReferFrameRequest, response=Ros1Kuavo_msgsFkSrvWithReferFrameResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsFkSrvWithReferFrame(o *ros.Capability, q Ros1Kuavo_msgsFkSrvWithReferFrameRequest, output []byte) (Ros1Kuavo_msgsFkSrvWithReferFrameResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsFkSrvWithReferFrameResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsFkSrvWithReferFrameResponse{}, e
	}
	return DecodeRos1Kuavo_msgsFkSrvWithReferFrameResponse(output[:n])
}

// @brief Publish one complete kuavo_msgs/footPose message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsFootPose.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsFootPose(o *ros.Capability, v Ros1Kuavo_msgsFootPose) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/footPose message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsFootPose.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsFootPose(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsFootPose, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsFootPose{}, e
	}
	return DecodeRos1Kuavo_msgsFootPose(scratch[:n])
}

// @brief Publish one complete kuavo_msgs/footPose6D message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsFootPose6D.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsFootPose6D(o *ros.Capability, v Ros1Kuavo_msgsFootPose6D) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/footPose6D message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsFootPose6D.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsFootPose6D(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsFootPose6D, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsFootPose6D{}, e
	}
	return DecodeRos1Kuavo_msgsFootPose6D(scratch[:n])
}

// @brief Publish one complete kuavo_msgs/footPose6DTargetTrajectories message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Kuavo_msgsFootPose6DTargetTrajectories.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsFootPose6DTargetTrajectories(o *ros.Capability, v Ros1Kuavo_msgsFootPose6DTargetTrajectories) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/footPose6DTargetTrajectories message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Kuavo_msgsFootPose6DTargetTrajectories.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsFootPose6DTargetTrajectories(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsFootPose6DTargetTrajectories, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsFootPose6DTargetTrajectories{}, e
	}
	return DecodeRos1Kuavo_msgsFootPose6DTargetTrajectories(scratch[:n])
}

// @brief Call the selected kuavo_msgs/footPose6DTargetTrajectoriesSrv service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvRequest,
// response=Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsFootPose6DTargetTrajectoriesSrv(o *ros.Capability, q Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvRequest, output []byte) (Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvResponse{}, e
	}
	return DecodeRos1Kuavo_msgsFootPose6DTargetTrajectoriesSrvResponse(output[:n])
}

// @brief Publish one complete kuavo_msgs/footPoseTargetTrajectories message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Kuavo_msgsFootPoseTargetTrajectories.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsFootPoseTargetTrajectories(o *ros.Capability, v Ros1Kuavo_msgsFootPoseTargetTrajectories) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/footPoseTargetTrajectories message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Kuavo_msgsFootPoseTargetTrajectories.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsFootPoseTargetTrajectories(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsFootPoseTargetTrajectories, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsFootPoseTargetTrajectories{}, e
	}
	return DecodeRos1Kuavo_msgsFootPoseTargetTrajectories(scratch[:n])
}

// @brief Call the selected kuavo_msgs/footPoseTargetTrajectoriesSrv service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvRequest,
// response=Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsFootPoseTargetTrajectoriesSrv(o *ros.Capability, q Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvRequest, output []byte) (Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvResponse{}, e
	}
	return DecodeRos1Kuavo_msgsFootPoseTargetTrajectoriesSrvResponse(output[:n])
}

// @brief Publish one complete kuavo_msgs/footPoseWithVision message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsFootPoseWithVision.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsFootPoseWithVision(o *ros.Capability, v Ros1Kuavo_msgsFootPoseWithVision) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/footPoseWithVision message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsFootPoseWithVision.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsFootPoseWithVision(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsFootPoseWithVision, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsFootPoseWithVision{}, e
	}
	return DecodeRos1Kuavo_msgsFootPoseWithVision(scratch[:n])
}

// @brief Publish one complete kuavo_msgs/footPoseWithVisionArray message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Kuavo_msgsFootPoseWithVisionArray.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsFootPoseWithVisionArray(o *ros.Capability, v Ros1Kuavo_msgsFootPoseWithVisionArray) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/footPoseWithVisionArray message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Kuavo_msgsFootPoseWithVisionArray.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsFootPoseWithVisionArray(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsFootPoseWithVisionArray, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsFootPoseWithVisionArray{}, e
	}
	return DecodeRos1Kuavo_msgsFootPoseWithVisionArray(scratch[:n])
}

// @brief Publish one complete kuavo_msgs/footPoses message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsFootPoses.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsFootPoses(o *ros.Capability, v Ros1Kuavo_msgsFootPoses) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/footPoses message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsFootPoses.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsFootPoses(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsFootPoses, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsFootPoses{}, e
	}
	return DecodeRos1Kuavo_msgsFootPoses(scratch[:n])
}

// @brief Publish one complete kuavo_msgs/footPoses6D message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsFootPoses6D.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsFootPoses6D(o *ros.Capability, v Ros1Kuavo_msgsFootPoses6D) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/footPoses6D message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsFootPoses6D.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsFootPoses6D(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsFootPoses6D, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsFootPoses6D{}, e
	}
	return DecodeRos1Kuavo_msgsFootPoses6D(scratch[:n])
}

// @brief Publish one complete kuavo_msgs/fullBodyTargetTrajectories message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Kuavo_msgsFullBodyTargetTrajectories.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsFullBodyTargetTrajectories(o *ros.Capability, v Ros1Kuavo_msgsFullBodyTargetTrajectories) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/fullBodyTargetTrajectories message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Kuavo_msgsFullBodyTargetTrajectories.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsFullBodyTargetTrajectories(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsFullBodyTargetTrajectories, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsFullBodyTargetTrajectories{}, e
	}
	return DecodeRos1Kuavo_msgsFullBodyTargetTrajectories(scratch[:n])
}

// @brief Publish one complete kuavo_msgs/gaitTimeName message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsGaitTimeName.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsGaitTimeName(o *ros.Capability, v Ros1Kuavo_msgsGaitTimeName) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/gaitTimeName message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsGaitTimeName.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsGaitTimeName(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsGaitTimeName, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsGaitTimeName{}, e
	}
	return DecodeRos1Kuavo_msgsGaitTimeName(scratch[:n])
}

// @brief Call the selected kuavo_msgs/gestureExecute service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsGestureExecuteRequest, response=Ros1Kuavo_msgsGestureExecuteResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsGestureExecute(o *ros.Capability, q Ros1Kuavo_msgsGestureExecuteRequest, output []byte) (Ros1Kuavo_msgsGestureExecuteResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsGestureExecuteResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsGestureExecuteResponse{}, e
	}
	return DecodeRos1Kuavo_msgsGestureExecuteResponse(output[:n])
}

// @brief Call the selected kuavo_msgs/gestureExecuteState service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsGestureExecuteStateRequest, response=Ros1Kuavo_msgsGestureExecuteStateResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsGestureExecuteState(o *ros.Capability, q Ros1Kuavo_msgsGestureExecuteStateRequest, output []byte) (Ros1Kuavo_msgsGestureExecuteStateResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsGestureExecuteStateResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsGestureExecuteStateResponse{}, e
	}
	return DecodeRos1Kuavo_msgsGestureExecuteStateResponse(output[:n])
}

// @brief Publish one complete kuavo_msgs/gestureInfo message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsGestureInfo.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsGestureInfo(o *ros.Capability, v Ros1Kuavo_msgsGestureInfo) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/gestureInfo message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsGestureInfo.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsGestureInfo(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsGestureInfo, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsGestureInfo{}, e
	}
	return DecodeRos1Kuavo_msgsGestureInfo(scratch[:n])
}

// @brief Call the selected kuavo_msgs/gestureList service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsGestureListRequest, response=Ros1Kuavo_msgsGestureListResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsGestureList(o *ros.Capability, q Ros1Kuavo_msgsGestureListRequest, output []byte) (Ros1Kuavo_msgsGestureListResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsGestureListResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsGestureListResponse{}, e
	}
	return DecodeRos1Kuavo_msgsGestureListResponse(output[:n])
}

// @brief Publish one complete kuavo_msgs/gestureTask message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsGestureTask.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsGestureTask(o *ros.Capability, v Ros1Kuavo_msgsGestureTask) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/gestureTask message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsGestureTask.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsGestureTask(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsGestureTask, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsGestureTask{}, e
	}
	return DecodeRos1Kuavo_msgsGestureTask(scratch[:n])
}

// @brief Call the selected kuavo_msgs/getControllerList service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsGetControllerListRequest, response=Ros1Kuavo_msgsGetControllerListResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsGetControllerList(o *ros.Capability, q Ros1Kuavo_msgsGetControllerListRequest, output []byte) (Ros1Kuavo_msgsGetControllerListResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsGetControllerListResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsGetControllerListResponse{}, e
	}
	return DecodeRos1Kuavo_msgsGetControllerListResponse(output[:n])
}

// @brief Call the selected kuavo_msgs/getCurrentGaitName service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsGetCurrentGaitNameRequest, response=Ros1Kuavo_msgsGetCurrentGaitNameResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsGetCurrentGaitName(o *ros.Capability, q Ros1Kuavo_msgsGetCurrentGaitNameRequest, output []byte) (Ros1Kuavo_msgsGetCurrentGaitNameResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsGetCurrentGaitNameResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsGetCurrentGaitNameResponse{}, e
	}
	return DecodeRos1Kuavo_msgsGetCurrentGaitNameResponse(output[:n])
}

// @brief Call the selected kuavo_msgs/getLbTorsoInitialPose service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsGetLbTorsoInitialPoseRequest, response=Ros1Kuavo_msgsGetLbTorsoInitialPoseResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsGetLbTorsoInitialPose(o *ros.Capability, q Ros1Kuavo_msgsGetLbTorsoInitialPoseRequest, output []byte) (Ros1Kuavo_msgsGetLbTorsoInitialPoseResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsGetLbTorsoInitialPoseResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsGetLbTorsoInitialPoseResponse{}, e
	}
	return DecodeRos1Kuavo_msgsGetLbTorsoInitialPoseResponse(output[:n])
}

// @brief Call the selected kuavo_msgs/getMotorParam service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsGetMotorParamRequest, response=Ros1Kuavo_msgsGetMotorParamResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsGetMotorParam(o *ros.Capability, q Ros1Kuavo_msgsGetMotorParamRequest, output []byte) (Ros1Kuavo_msgsGetMotorParamResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsGetMotorParamResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsGetMotorParamResponse{}, e
	}
	return DecodeRos1Kuavo_msgsGetMotorParamResponse(output[:n])
}

// @brief Call the selected kuavo_msgs/getMotorZeroPoints service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsGetMotorZeroPointsRequest, response=Ros1Kuavo_msgsGetMotorZeroPointsResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsGetMotorZeroPoints(o *ros.Capability, q Ros1Kuavo_msgsGetMotorZeroPointsRequest, output []byte) (Ros1Kuavo_msgsGetMotorZeroPointsResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsGetMotorZeroPointsResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsGetMotorZeroPointsResponse{}, e
	}
	return DecodeRos1Kuavo_msgsGetMotorZeroPointsResponse(output[:n])
}

// @brief Call the selected kuavo_msgs/goToZeroPoint service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsGoToZeroPointRequest, response=Ros1Kuavo_msgsGoToZeroPointResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsGoToZeroPoint(o *ros.Capability, q Ros1Kuavo_msgsGoToZeroPointRequest, output []byte) (Ros1Kuavo_msgsGoToZeroPointResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsGoToZeroPointResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsGoToZeroPointResponse{}, e
	}
	return DecodeRos1Kuavo_msgsGoToZeroPointResponse(output[:n])
}

// @brief Call the selected kuavo_msgs/handForceLevel service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsHandForceLevelRequest, response=Ros1Kuavo_msgsHandForceLevelResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsHandForceLevel(o *ros.Capability, q Ros1Kuavo_msgsHandForceLevelRequest, output []byte) (Ros1Kuavo_msgsHandForceLevelResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsHandForceLevelResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsHandForceLevelResponse{}, e
	}
	return DecodeRos1Kuavo_msgsHandForceLevelResponse(output[:n])
}

// @brief Publish one complete kuavo_msgs/handPose message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsHandPose.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsHandPose(o *ros.Capability, v Ros1Kuavo_msgsHandPose) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/handPose message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsHandPose.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsHandPose(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsHandPose, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsHandPose{}, e
	}
	return DecodeRos1Kuavo_msgsHandPose(scratch[:n])
}

// @brief Publish one complete kuavo_msgs/headBodyPose message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsHeadBodyPose.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsHeadBodyPose(o *ros.Capability, v Ros1Kuavo_msgsHeadBodyPose) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/headBodyPose message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsHeadBodyPose.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsHeadBodyPose(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsHeadBodyPose, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsHeadBodyPose{}, e
	}
	return DecodeRos1Kuavo_msgsHeadBodyPose(scratch[:n])
}

// @brief Publish one complete kuavo_msgs/headCtrlMode message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsHeadCtrlMode.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsHeadCtrlMode(o *ros.Capability, v Ros1Kuavo_msgsHeadCtrlMode) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/headCtrlMode message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsHeadCtrlMode.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsHeadCtrlMode(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsHeadCtrlMode, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsHeadCtrlMode{}, e
	}
	return DecodeRos1Kuavo_msgsHeadCtrlMode(scratch[:n])
}

// @brief Publish one complete kuavo_msgs/ikSolveError message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsIkSolveError.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsIkSolveError(o *ros.Capability, v Ros1Kuavo_msgsIkSolveError) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/ikSolveError message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsIkSolveError.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsIkSolveError(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsIkSolveError, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsIkSolveError{}, e
	}
	return DecodeRos1Kuavo_msgsIkSolveError(scratch[:n])
}

// @brief Publish one complete kuavo_msgs/ikSolveParam message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsIkSolveParam.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsIkSolveParam(o *ros.Capability, v Ros1Kuavo_msgsIkSolveParam) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/ikSolveParam message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsIkSolveParam.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsIkSolveParam(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsIkSolveParam, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsIkSolveParam{}, e
	}
	return DecodeRos1Kuavo_msgsIkSolveParam(scratch[:n])
}

// @brief Publish one complete kuavo_msgs/imuData message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsImuData.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsImuData(o *ros.Capability, v Ros1Kuavo_msgsImuData) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/imuData message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsImuData.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsImuData(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsImuData, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsImuData{}, e
	}
	return DecodeRos1Kuavo_msgsImuData(scratch[:n])
}

// @brief Publish one complete kuavo_msgs/jointBezierTrajectory message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsJointBezierTrajectory.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsJointBezierTrajectory(o *ros.Capability, v Ros1Kuavo_msgsJointBezierTrajectory) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/jointBezierTrajectory message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsJointBezierTrajectory.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsJointBezierTrajectory(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsJointBezierTrajectory, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsJointBezierTrajectory{}, e
	}
	return DecodeRos1Kuavo_msgsJointBezierTrajectory(scratch[:n])
}

// @brief Publish one complete kuavo_msgs/jointCmd message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsJointCmd.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsJointCmd(o *ros.Capability, v Ros1Kuavo_msgsJointCmd) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/jointCmd message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsJointCmd.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsJointCmd(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsJointCmd, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsJointCmd{}, e
	}
	return DecodeRos1Kuavo_msgsJointCmd(scratch[:n])
}

// @brief Publish one complete kuavo_msgs/jointData message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsJointData.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsJointData(o *ros.Capability, v Ros1Kuavo_msgsJointData) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/jointData message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsJointData.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsJointData(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsJointData, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsJointData{}, e
	}
	return DecodeRos1Kuavo_msgsJointData(scratch[:n])
}

// @brief Call the selected kuavo_msgs/jointMoveTo service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsJointMoveToRequest, response=Ros1Kuavo_msgsJointMoveToResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsJointMoveTo(o *ros.Capability, q Ros1Kuavo_msgsJointMoveToRequest, output []byte) (Ros1Kuavo_msgsJointMoveToResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsJointMoveToResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsJointMoveToResponse{}, e
	}
	return DecodeRos1Kuavo_msgsJointMoveToResponse(output[:n])
}

// @brief Publish one complete kuavo_msgs/kuavoModeSchedule message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsKuavoModeSchedule.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsKuavoModeSchedule(o *ros.Capability, v Ros1Kuavo_msgsKuavoModeSchedule) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/kuavoModeSchedule message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsKuavoModeSchedule.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsKuavoModeSchedule(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsKuavoModeSchedule, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsKuavoModeSchedule{}, e
	}
	return DecodeRos1Kuavo_msgsKuavoModeSchedule(scratch[:n])
}

// @brief Call the selected kuavo_msgs/lbBaseLinkPoseCmdSrv service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvRequest, response=Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsLbBaseLinkPoseCmdSrv(o *ros.Capability, q Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvRequest, output []byte) (Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvResponse{}, e
	}
	return DecodeRos1Kuavo_msgsLbBaseLinkPoseCmdSrvResponse(output[:n])
}

// @brief Call the selected kuavo_msgs/lbLegControlSrv service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsLbLegControlSrvRequest, response=Ros1Kuavo_msgsLbLegControlSrvResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsLbLegControlSrv(o *ros.Capability, q Ros1Kuavo_msgsLbLegControlSrvRequest, output []byte) (Ros1Kuavo_msgsLbLegControlSrvResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsLbLegControlSrvResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsLbLegControlSrvResponse{}, e
	}
	return DecodeRos1Kuavo_msgsLbLegControlSrvResponse(output[:n])
}

// @brief Call the selected kuavo_msgs/lbMultiTimedOfflineTraj service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsLbMultiTimedOfflineTrajRequest, response=Ros1Kuavo_msgsLbMultiTimedOfflineTrajResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsLbMultiTimedOfflineTraj(o *ros.Capability, q Ros1Kuavo_msgsLbMultiTimedOfflineTrajRequest, output []byte) (Ros1Kuavo_msgsLbMultiTimedOfflineTrajResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsLbMultiTimedOfflineTrajResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsLbMultiTimedOfflineTrajResponse{}, e
	}
	return DecodeRos1Kuavo_msgsLbMultiTimedOfflineTrajResponse(output[:n])
}

// @brief Call the selected kuavo_msgs/lbMultiTimedPosCmd service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsLbMultiTimedPosCmdRequest, response=Ros1Kuavo_msgsLbMultiTimedPosCmdResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsLbMultiTimedPosCmd(o *ros.Capability, q Ros1Kuavo_msgsLbMultiTimedPosCmdRequest, output []byte) (Ros1Kuavo_msgsLbMultiTimedPosCmdResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsLbMultiTimedPosCmdResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsLbMultiTimedPosCmdResponse{}, e
	}
	return DecodeRos1Kuavo_msgsLbMultiTimedPosCmdResponse(output[:n])
}

// @brief Publish one complete kuavo_msgs/lbTimedOfflineTraj message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsLbTimedOfflineTraj.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsLbTimedOfflineTraj(o *ros.Capability, v Ros1Kuavo_msgsLbTimedOfflineTraj) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/lbTimedOfflineTraj message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsLbTimedOfflineTraj.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsLbTimedOfflineTraj(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsLbTimedOfflineTraj, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsLbTimedOfflineTraj{}, e
	}
	return DecodeRos1Kuavo_msgsLbTimedOfflineTraj(scratch[:n])
}

// @brief Call the selected kuavo_msgs/lbTimedPosCmd service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsLbTimedPosCmdRequest, response=Ros1Kuavo_msgsLbTimedPosCmdResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsLbTimedPosCmd(o *ros.Capability, q Ros1Kuavo_msgsLbTimedPosCmdRequest, output []byte) (Ros1Kuavo_msgsLbTimedPosCmdResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsLbTimedPosCmdResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsLbTimedPosCmdResponse{}, e
	}
	return DecodeRos1Kuavo_msgsLbTimedPosCmdResponse(output[:n])
}

// @brief Publish one complete kuavo_msgs/lejuClawCommand message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsLejuClawCommand.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsLejuClawCommand(o *ros.Capability, v Ros1Kuavo_msgsLejuClawCommand) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/lejuClawCommand message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsLejuClawCommand.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsLejuClawCommand(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsLejuClawCommand, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsLejuClawCommand{}, e
	}
	return DecodeRos1Kuavo_msgsLejuClawCommand(scratch[:n])
}

// @brief Call the selected kuavo_msgs/lejuClawRecovery service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsLejuClawRecoveryRequest, response=Ros1Kuavo_msgsLejuClawRecoveryResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsLejuClawRecovery(o *ros.Capability, q Ros1Kuavo_msgsLejuClawRecoveryRequest, output []byte) (Ros1Kuavo_msgsLejuClawRecoveryResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsLejuClawRecoveryResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsLejuClawRecoveryResponse{}, e
	}
	return DecodeRos1Kuavo_msgsLejuClawRecoveryResponse(output[:n])
}

// @brief Publish one complete kuavo_msgs/lejuClawState message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsLejuClawState.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsLejuClawState(o *ros.Capability, v Ros1Kuavo_msgsLejuClawState) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/lejuClawState message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsLejuClawState.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsLejuClawState(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsLejuClawState, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsLejuClawState{}, e
	}
	return DecodeRos1Kuavo_msgsLejuClawState(scratch[:n])
}

// @brief Publish one complete kuavo_msgs/lejuClawTarget message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsLejuClawTarget.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsLejuClawTarget(o *ros.Capability, v Ros1Kuavo_msgsLejuClawTarget) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/lejuClawTarget message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsLejuClawTarget.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsLejuClawTarget(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsLejuClawTarget, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsLejuClawTarget{}, e
	}
	return DecodeRos1Kuavo_msgsLejuClawTarget(scratch[:n])
}

// @brief Publish one complete kuavo_msgs/motorParam message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsMotorParam.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsMotorParam(o *ros.Capability, v Ros1Kuavo_msgsMotorParam) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/motorParam message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsMotorParam.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsMotorParam(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsMotorParam, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsMotorParam{}, e
	}
	return DecodeRos1Kuavo_msgsMotorParam(scratch[:n])
}

// @brief Publish one complete kuavo_msgs/mpc_input message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsMpc_input.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsMpc_input(o *ros.Capability, v Ros1Kuavo_msgsMpc_input) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/mpc_input message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsMpc_input.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsMpc_input(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsMpc_input, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsMpc_input{}, e
	}
	return DecodeRos1Kuavo_msgsMpc_input(scratch[:n])
}

// @brief Publish one complete kuavo_msgs/mpc_state message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsMpc_state.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsMpc_state(o *ros.Capability, v Ros1Kuavo_msgsMpc_state) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/mpc_state message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsMpc_state.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsMpc_state(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsMpc_state, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsMpc_state{}, e
	}
	return DecodeRos1Kuavo_msgsMpc_state(scratch[:n])
}

// @brief Publish one complete kuavo_msgs/mpc_target_trajectories message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Kuavo_msgsMpc_target_trajectories.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsMpc_target_trajectories(o *ros.Capability, v Ros1Kuavo_msgsMpc_target_trajectories) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/mpc_target_trajectories message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Kuavo_msgsMpc_target_trajectories.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsMpc_target_trajectories(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsMpc_target_trajectories, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsMpc_target_trajectories{}, e
	}
	return DecodeRos1Kuavo_msgsMpc_target_trajectories(scratch[:n])
}

// @brief Publish one complete kuavo_msgs/picoPoseInfo message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsPicoPoseInfo.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsPicoPoseInfo(o *ros.Capability, v Ros1Kuavo_msgsPicoPoseInfo) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/picoPoseInfo message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsPicoPoseInfo.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsPicoPoseInfo(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsPicoPoseInfo, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsPicoPoseInfo{}, e
	}
	return DecodeRos1Kuavo_msgsPicoPoseInfo(scratch[:n])
}

// @brief Publish one complete kuavo_msgs/picoPoseInfoList message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsPicoPoseInfoList.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsPicoPoseInfoList(o *ros.Capability, v Ros1Kuavo_msgsPicoPoseInfoList) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/picoPoseInfoList message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsPicoPoseInfoList.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsPicoPoseInfoList(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsPicoPoseInfoList, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsPicoPoseInfoList{}, e
	}
	return DecodeRos1Kuavo_msgsPicoPoseInfoList(scratch[:n])
}

// @brief Publish one complete kuavo_msgs/picoPoseRetarget message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsPicoPoseRetarget.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsPicoPoseRetarget(o *ros.Capability, v Ros1Kuavo_msgsPicoPoseRetarget) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/picoPoseRetarget message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsPicoPoseRetarget.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsPicoPoseRetarget(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsPicoPoseRetarget, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsPicoPoseRetarget{}, e
	}
	return DecodeRos1Kuavo_msgsPicoPoseRetarget(scratch[:n])
}

// @brief Publish one complete kuavo_msgs/planArmState message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsPlanArmState.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsPlanArmState(o *ros.Capability, v Ros1Kuavo_msgsPlanArmState) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/planArmState message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsPlanArmState.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsPlanArmState(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsPlanArmState, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsPlanArmState{}, e
	}
	return DecodeRos1Kuavo_msgsPlanArmState(scratch[:n])
}

// @brief Call the selected kuavo_msgs/planArmTrajectoryBezierCurve service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveRequest,
// response=Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsPlanArmTrajectoryBezierCurve(o *ros.Capability, q Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveRequest, output []byte) (Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveResponse{}, e
	}
	return DecodeRos1Kuavo_msgsPlanArmTrajectoryBezierCurveResponse(output[:n])
}

// @brief Call the selected kuavo_msgs/planArmTrajectoryCubicSpline service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineRequest,
// response=Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsPlanArmTrajectoryCubicSpline(o *ros.Capability, q Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineRequest, output []byte) (Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineResponse{}, e
	}
	return DecodeRos1Kuavo_msgsPlanArmTrajectoryCubicSplineResponse(output[:n])
}

// @brief Call the selected kuavo_msgs/playmusic service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsPlaymusicRequest, response=Ros1Kuavo_msgsPlaymusicResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsPlaymusic(o *ros.Capability, q Ros1Kuavo_msgsPlaymusicRequest, output []byte) (Ros1Kuavo_msgsPlaymusicResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsPlaymusicResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsPlaymusicResponse{}, e
	}
	return DecodeRos1Kuavo_msgsPlaymusicResponse(output[:n])
}

// @brief Publish one complete kuavo_msgs/qv message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsQv.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsQv(o *ros.Capability, v Ros1Kuavo_msgsQv) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/qv message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsQv.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsQv(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsQv, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsQv{}, e
	}
	return DecodeRos1Kuavo_msgsQv(scratch[:n])
}

// @brief Publish one complete kuavo_msgs/recordArmHandPose message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsRecordArmHandPose.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsRecordArmHandPose(o *ros.Capability, v Ros1Kuavo_msgsRecordArmHandPose) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/recordArmHandPose message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsRecordArmHandPose.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsRecordArmHandPose(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsRecordArmHandPose, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsRecordArmHandPose{}, e
	}
	return DecodeRos1Kuavo_msgsRecordArmHandPose(scratch[:n])
}

// @brief Call the selected kuavo_msgs/recordmusic service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsRecordmusicRequest, response=Ros1Kuavo_msgsRecordmusicResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsRecordmusic(o *ros.Capability, q Ros1Kuavo_msgsRecordmusicRequest, output []byte) (Ros1Kuavo_msgsRecordmusicResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsRecordmusicResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsRecordmusicResponse{}, e
	}
	return DecodeRos1Kuavo_msgsRecordmusicResponse(output[:n])
}

// @brief Publish one complete kuavo_msgs/robotArmQVVD message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsRobotArmQVVD.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsRobotArmQVVD(o *ros.Capability, v Ros1Kuavo_msgsRobotArmQVVD) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/robotArmQVVD message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsRobotArmQVVD.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsRobotArmQVVD(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsRobotArmQVVD, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsRobotArmQVVD{}, e
	}
	return DecodeRos1Kuavo_msgsRobotArmQVVD(scratch[:n])
}

// @brief Publish one complete kuavo_msgs/robotBodyMatrices message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsRobotBodyMatrices.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsRobotBodyMatrices(o *ros.Capability, v Ros1Kuavo_msgsRobotBodyMatrices) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/robotBodyMatrices message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsRobotBodyMatrices.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsRobotBodyMatrices(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsRobotBodyMatrices, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsRobotBodyMatrices{}, e
	}
	return DecodeRos1Kuavo_msgsRobotBodyMatrices(scratch[:n])
}

// @brief Publish one complete kuavo_msgs/robotHandPosition message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsRobotHandPosition.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsRobotHandPosition(o *ros.Capability, v Ros1Kuavo_msgsRobotHandPosition) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/robotHandPosition message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsRobotHandPosition.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsRobotHandPosition(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsRobotHandPosition, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsRobotHandPosition{}, e
	}
	return DecodeRos1Kuavo_msgsRobotHandPosition(scratch[:n])
}

// @brief Publish one complete kuavo_msgs/robotHeadMotionData message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsRobotHeadMotionData.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsRobotHeadMotionData(o *ros.Capability, v Ros1Kuavo_msgsRobotHeadMotionData) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/robotHeadMotionData message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsRobotHeadMotionData.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsRobotHeadMotionData(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsRobotHeadMotionData, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsRobotHeadMotionData{}, e
	}
	return DecodeRos1Kuavo_msgsRobotHeadMotionData(scratch[:n])
}

// @brief Publish one complete kuavo_msgs/robotState message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsRobotState.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsRobotState(o *ros.Capability, v Ros1Kuavo_msgsRobotState) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/robotState message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsRobotState.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsRobotState(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsRobotState, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsRobotState{}, e
	}
	return DecodeRos1Kuavo_msgsRobotState(scratch[:n])
}

// @brief Call the selected kuavo_msgs/robotSwitchPose service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsRobotSwitchPoseRequest, response=Ros1Kuavo_msgsRobotSwitchPoseResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsRobotSwitchPose(o *ros.Capability, q Ros1Kuavo_msgsRobotSwitchPoseRequest, output []byte) (Ros1Kuavo_msgsRobotSwitchPoseResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsRobotSwitchPoseResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsRobotSwitchPoseResponse{}, e
	}
	return DecodeRos1Kuavo_msgsRobotSwitchPoseResponse(output[:n])
}

// @brief Publish one complete kuavo_msgs/robotWaistControl message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsRobotWaistControl.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsRobotWaistControl(o *ros.Capability, v Ros1Kuavo_msgsRobotWaistControl) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/robotWaistControl message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsRobotWaistControl.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsRobotWaistControl(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsRobotWaistControl, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsRobotWaistControl{}, e
	}
	return DecodeRos1Kuavo_msgsRobotWaistControl(scratch[:n])
}

// @brief Publish one complete kuavo_msgs/sensorsData message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsSensorsData.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsSensorsData(o *ros.Capability, v Ros1Kuavo_msgsSensorsData) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/sensorsData message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsSensorsData.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsSensorsData(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsSensorsData, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsSensorsData{}, e
	}
	return DecodeRos1Kuavo_msgsSensorsData(scratch[:n])
}

// @brief Call the selected kuavo_msgs/setContactForceInterpParams service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsSetContactForceInterpParamsRequest,
// response=Ros1Kuavo_msgsSetContactForceInterpParamsResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsSetContactForceInterpParams(o *ros.Capability, q Ros1Kuavo_msgsSetContactForceInterpParamsRequest, output []byte) (Ros1Kuavo_msgsSetContactForceInterpParamsResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsSetContactForceInterpParamsResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsSetContactForceInterpParamsResponse{}, e
	}
	return DecodeRos1Kuavo_msgsSetContactForceInterpParamsResponse(output[:n])
}

// @brief Call the selected kuavo_msgs/setHwIntialState service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsSetHwIntialStateRequest, response=Ros1Kuavo_msgsSetHwIntialStateResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsSetHwIntialState(o *ros.Capability, q Ros1Kuavo_msgsSetHwIntialStateRequest, output []byte) (Ros1Kuavo_msgsSetHwIntialStateResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsSetHwIntialStateResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsSetHwIntialStateResponse{}, e
	}
	return DecodeRos1Kuavo_msgsSetHwIntialStateResponse(output[:n])
}

// @brief Call the selected kuavo_msgs/setMmCtrlFrame service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsSetMmCtrlFrameRequest, response=Ros1Kuavo_msgsSetMmCtrlFrameResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsSetMmCtrlFrame(o *ros.Capability, q Ros1Kuavo_msgsSetMmCtrlFrameRequest, output []byte) (Ros1Kuavo_msgsSetMmCtrlFrameResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsSetMmCtrlFrameResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsSetMmCtrlFrameResponse{}, e
	}
	return DecodeRos1Kuavo_msgsSetMmCtrlFrameResponse(output[:n])
}

// @brief Call the selected kuavo_msgs/setMotorEncoderRoundService service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsSetMotorEncoderRoundServiceRequest,
// response=Ros1Kuavo_msgsSetMotorEncoderRoundServiceResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsSetMotorEncoderRoundService(o *ros.Capability, q Ros1Kuavo_msgsSetMotorEncoderRoundServiceRequest, output []byte) (Ros1Kuavo_msgsSetMotorEncoderRoundServiceResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsSetMotorEncoderRoundServiceResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsSetMotorEncoderRoundServiceResponse{}, e
	}
	return DecodeRos1Kuavo_msgsSetMotorEncoderRoundServiceResponse(output[:n])
}

// @brief Call the selected kuavo_msgs/setRuckigPlannerParams service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsSetRuckigPlannerParamsRequest, response=Ros1Kuavo_msgsSetRuckigPlannerParamsResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsSetRuckigPlannerParams(o *ros.Capability, q Ros1Kuavo_msgsSetRuckigPlannerParamsRequest, output []byte) (Ros1Kuavo_msgsSetRuckigPlannerParamsResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsSetRuckigPlannerParamsResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsSetRuckigPlannerParamsResponse{}, e
	}
	return DecodeRos1Kuavo_msgsSetRuckigPlannerParamsResponse(output[:n])
}

// @brief Call the selected kuavo_msgs/setTagId service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsSetTagIdRequest, response=Ros1Kuavo_msgsSetTagIdResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsSetTagId(o *ros.Capability, q Ros1Kuavo_msgsSetTagIdRequest, output []byte) (Ros1Kuavo_msgsSetTagIdResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsSetTagIdResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsSetTagIdResponse{}, e
	}
	return DecodeRos1Kuavo_msgsSetTagIdResponse(output[:n])
}

// @brief Call the selected kuavo_msgs/singleStepControl service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsSingleStepControlRequest, response=Ros1Kuavo_msgsSingleStepControlResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsSingleStepControl(o *ros.Capability, q Ros1Kuavo_msgsSingleStepControlRequest, output []byte) (Ros1Kuavo_msgsSingleStepControlResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsSingleStepControlResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsSingleStepControlResponse{}, e
	}
	return DecodeRos1Kuavo_msgsSingleStepControlResponse(output[:n])
}

// @brief Call the selected kuavo_msgs/stairAlignmentSrv service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsStairAlignmentSrvRequest, response=Ros1Kuavo_msgsStairAlignmentSrvResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsStairAlignmentSrv(o *ros.Capability, q Ros1Kuavo_msgsStairAlignmentSrvRequest, output []byte) (Ros1Kuavo_msgsStairAlignmentSrvResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsStairAlignmentSrvResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsStairAlignmentSrvResponse{}, e
	}
	return DecodeRos1Kuavo_msgsStairAlignmentSrvResponse(output[:n])
}

// @brief Call the selected kuavo_msgs/switchController service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsSwitchControllerRequest, response=Ros1Kuavo_msgsSwitchControllerResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsSwitchController(o *ros.Capability, q Ros1Kuavo_msgsSwitchControllerRequest, output []byte) (Ros1Kuavo_msgsSwitchControllerResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsSwitchControllerResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsSwitchControllerResponse{}, e
	}
	return DecodeRos1Kuavo_msgsSwitchControllerResponse(output[:n])
}

// @brief Publish one complete kuavo_msgs/switchGaitByName message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsSwitchGaitByName.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsSwitchGaitByName(o *ros.Capability, v Ros1Kuavo_msgsSwitchGaitByName) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/switchGaitByName message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsSwitchGaitByName.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsSwitchGaitByName(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsSwitchGaitByName, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsSwitchGaitByName{}, e
	}
	return DecodeRos1Kuavo_msgsSwitchGaitByName(scratch[:n])
}

// @brief Call the selected kuavo_msgs/switchToNextController service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsSwitchToNextControllerRequest, response=Ros1Kuavo_msgsSwitchToNextControllerResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsSwitchToNextController(o *ros.Capability, q Ros1Kuavo_msgsSwitchToNextControllerRequest, output []byte) (Ros1Kuavo_msgsSwitchToNextControllerResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsSwitchToNextControllerResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsSwitchToNextControllerResponse{}, e
	}
	return DecodeRos1Kuavo_msgsSwitchToNextControllerResponse(output[:n])
}

// @brief Publish one complete kuavo_msgs/tagDataArray message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsTagDataArray.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsTagDataArray(o *ros.Capability, v Ros1Kuavo_msgsTagDataArray) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/tagDataArray message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsTagDataArray.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsTagDataArray(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsTagDataArray, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsTagDataArray{}, e
	}
	return DecodeRos1Kuavo_msgsTagDataArray(scratch[:n])
}

// @brief Publish one complete kuavo_msgs/timedPoint message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsTimedPoint.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsTimedPoint(o *ros.Capability, v Ros1Kuavo_msgsTimedPoint) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/timedPoint message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsTimedPoint.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsTimedPoint(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsTimedPoint, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsTimedPoint{}, e
	}
	return DecodeRos1Kuavo_msgsTimedPoint(scratch[:n])
}

// @brief Publish one complete kuavo_msgs/timedSingleCmd message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsTimedSingleCmd.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsTimedSingleCmd(o *ros.Capability, v Ros1Kuavo_msgsTimedSingleCmd) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/timedSingleCmd message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsTimedSingleCmd.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsTimedSingleCmd(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsTimedSingleCmd, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsTimedSingleCmd{}, e
	}
	return DecodeRos1Kuavo_msgsTimedSingleCmd(scratch[:n])
}

// @brief Publish one complete kuavo_msgs/touchSensorStatus message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsTouchSensorStatus.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsTouchSensorStatus(o *ros.Capability, v Ros1Kuavo_msgsTouchSensorStatus) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/touchSensorStatus message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsTouchSensorStatus.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsTouchSensorStatus(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsTouchSensorStatus, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsTouchSensorStatus{}, e
	}
	return DecodeRos1Kuavo_msgsTouchSensorStatus(scratch[:n])
}

// @brief Publish one complete kuavo_msgs/twoArmHandPose message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsTwoArmHandPose.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsTwoArmHandPose(o *ros.Capability, v Ros1Kuavo_msgsTwoArmHandPose) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/twoArmHandPose message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsTwoArmHandPose.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsTwoArmHandPose(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsTwoArmHandPose, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsTwoArmHandPose{}, e
	}
	return DecodeRos1Kuavo_msgsTwoArmHandPose(scratch[:n])
}

// @brief Publish one complete kuavo_msgs/twoArmHandPoseCmd message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsTwoArmHandPoseCmd.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsTwoArmHandPoseCmd(o *ros.Capability, v Ros1Kuavo_msgsTwoArmHandPoseCmd) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/twoArmHandPoseCmd message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsTwoArmHandPoseCmd.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsTwoArmHandPoseCmd(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsTwoArmHandPoseCmd, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsTwoArmHandPoseCmd{}, e
	}
	return DecodeRos1Kuavo_msgsTwoArmHandPoseCmd(scratch[:n])
}

// @brief Publish one complete kuavo_msgs/twoArmHandPoseCmdFree message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsTwoArmHandPoseCmdFree.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsTwoArmHandPoseCmdFree(o *ros.Capability, v Ros1Kuavo_msgsTwoArmHandPoseCmdFree) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/twoArmHandPoseCmdFree message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsTwoArmHandPoseCmdFree.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsTwoArmHandPoseCmdFree(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsTwoArmHandPoseCmdFree, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsTwoArmHandPoseCmdFree{}, e
	}
	return DecodeRos1Kuavo_msgsTwoArmHandPoseCmdFree(scratch[:n])
}

// @brief Call the selected kuavo_msgs/twoArmHandPoseCmdFreeSrv service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvRequest, response=Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsTwoArmHandPoseCmdFreeSrv(o *ros.Capability, q Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvRequest, output []byte) (Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvResponse{}, e
	}
	return DecodeRos1Kuavo_msgsTwoArmHandPoseCmdFreeSrvResponse(output[:n])
}

// @brief Call the selected kuavo_msgs/twoArmHandPoseCmdSrv service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsTwoArmHandPoseCmdSrvRequest, response=Ros1Kuavo_msgsTwoArmHandPoseCmdSrvResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_msgsTwoArmHandPoseCmdSrv(o *ros.Capability, q Ros1Kuavo_msgsTwoArmHandPoseCmdSrvRequest, output []byte) (Ros1Kuavo_msgsTwoArmHandPoseCmdSrvResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_msgsTwoArmHandPoseCmdSrvResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_msgsTwoArmHandPoseCmdSrvResponse{}, e
	}
	return DecodeRos1Kuavo_msgsTwoArmHandPoseCmdSrvResponse(output[:n])
}

// @brief Publish one complete kuavo_msgs/twoArmHandPoseFree message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsTwoArmHandPoseFree.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsTwoArmHandPoseFree(o *ros.Capability, v Ros1Kuavo_msgsTwoArmHandPoseFree) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/twoArmHandPoseFree message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsTwoArmHandPoseFree.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsTwoArmHandPoseFree(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsTwoArmHandPoseFree, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsTwoArmHandPoseFree{}, e
	}
	return DecodeRos1Kuavo_msgsTwoArmHandPoseFree(scratch[:n])
}

// @brief Publish one complete kuavo_msgs/xsensePoseInfo message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsXsensePoseInfo.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsXsensePoseInfo(o *ros.Capability, v Ros1Kuavo_msgsXsensePoseInfo) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/xsensePoseInfo message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsXsensePoseInfo.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsXsensePoseInfo(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsXsensePoseInfo, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsXsensePoseInfo{}, e
	}
	return DecodeRos1Kuavo_msgsXsensePoseInfo(scratch[:n])
}

// @brief Publish one complete kuavo_msgs/xsensePoseInfoList message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsXsensePoseInfoList.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsXsensePoseInfoList(o *ros.Capability, v Ros1Kuavo_msgsXsensePoseInfoList) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/xsensePoseInfoList message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsXsensePoseInfoList.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsXsensePoseInfoList(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsXsensePoseInfoList, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsXsensePoseInfoList{}, e
	}
	return DecodeRos1Kuavo_msgsXsensePoseInfoList(scratch[:n])
}

// @brief Publish one complete kuavo_msgs/xsensePoseRetarget message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsXsensePoseRetarget.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsXsensePoseRetarget(o *ros.Capability, v Ros1Kuavo_msgsXsensePoseRetarget) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/xsensePoseRetarget message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsXsensePoseRetarget.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsXsensePoseRetarget(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsXsensePoseRetarget, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsXsensePoseRetarget{}, e
	}
	return DecodeRos1Kuavo_msgsXsensePoseRetarget(scratch[:n])
}

// @brief Publish one complete kuavo_msgs/yoloDetection message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsYoloDetection.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsYoloDetection(o *ros.Capability, v Ros1Kuavo_msgsYoloDetection) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/yoloDetection message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsYoloDetection.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsYoloDetection(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsYoloDetection, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsYoloDetection{}, e
	}
	return DecodeRos1Kuavo_msgsYoloDetection(scratch[:n])
}

// @brief Publish one complete kuavo_msgs/yoloOutputData message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsYoloOutputData.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_msgsYoloOutputData(o *ros.Capability, v Ros1Kuavo_msgsYoloOutputData) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_msgs/yoloOutputData message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsYoloOutputData.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_msgsYoloOutputData(o *ros.Capability, scratch []byte) (Ros1Kuavo_msgsYoloOutputData, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_msgsYoloOutputData{}, e
	}
	return DecodeRos1Kuavo_msgsYoloOutputData(scratch[:n])
}

// @brief Call the selected kuavo_pico_gmr/AmpJoyRoute service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_pico_gmrAmpJoyRouteRequest, response=Ros1Kuavo_pico_gmrAmpJoyRouteResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_pico_gmrAmpJoyRoute(o *ros.Capability, q Ros1Kuavo_pico_gmrAmpJoyRouteRequest, output []byte) (Ros1Kuavo_pico_gmrAmpJoyRouteResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_pico_gmrAmpJoyRouteResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_pico_gmrAmpJoyRouteResponse{}, e
	}
	return DecodeRos1Kuavo_pico_gmrAmpJoyRouteResponse(output[:n])
}

// @brief Publish one complete kuavo_ros_interfaces/armTargetPoses message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Kuavo_ros_interfacesArmTargetPoses.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_ros_interfacesArmTargetPoses(o *ros.Capability, v Ros1Kuavo_ros_interfacesArmTargetPoses) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_ros_interfaces/armTargetPoses message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Kuavo_ros_interfacesArmTargetPoses.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_ros_interfacesArmTargetPoses(o *ros.Capability, scratch []byte) (Ros1Kuavo_ros_interfacesArmTargetPoses, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_ros_interfacesArmTargetPoses{}, e
	}
	return DecodeRos1Kuavo_ros_interfacesArmTargetPoses(scratch[:n])
}

// @brief Publish one complete kuavo_ros_interfaces/bezierCurveCubicPoint message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Kuavo_ros_interfacesBezierCurveCubicPoint.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_ros_interfacesBezierCurveCubicPoint(o *ros.Capability, v Ros1Kuavo_ros_interfacesBezierCurveCubicPoint) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_ros_interfaces/bezierCurveCubicPoint message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Kuavo_ros_interfacesBezierCurveCubicPoint.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_ros_interfacesBezierCurveCubicPoint(o *ros.Capability, scratch []byte) (Ros1Kuavo_ros_interfacesBezierCurveCubicPoint, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_ros_interfacesBezierCurveCubicPoint{}, e
	}
	return DecodeRos1Kuavo_ros_interfacesBezierCurveCubicPoint(scratch[:n])
}

// @brief Publish one complete kuavo_ros_interfaces/jointBezierTrajectory message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Kuavo_ros_interfacesJointBezierTrajectory.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_ros_interfacesJointBezierTrajectory(o *ros.Capability, v Ros1Kuavo_ros_interfacesJointBezierTrajectory) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_ros_interfaces/jointBezierTrajectory message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Kuavo_ros_interfacesJointBezierTrajectory.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_ros_interfacesJointBezierTrajectory(o *ros.Capability, scratch []byte) (Ros1Kuavo_ros_interfacesJointBezierTrajectory, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_ros_interfacesJointBezierTrajectory{}, e
	}
	return DecodeRos1Kuavo_ros_interfacesJointBezierTrajectory(scratch[:n])
}

// @brief Call the selected kuavo_ros_interfaces/ocs2ChangeArmCtrlMode service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeRequest,
// response=Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_ros_interfacesOcs2ChangeArmCtrlMode(o *ros.Capability, q Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeRequest, output []byte) (Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeResponse{}, e
	}
	return DecodeRos1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeResponse(output[:n])
}

// @brief Publish one complete kuavo_ros_interfaces/planArmState message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Kuavo_ros_interfacesPlanArmState.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_ros_interfacesPlanArmState(o *ros.Capability, v Ros1Kuavo_ros_interfacesPlanArmState) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_ros_interfaces/planArmState message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_ros_interfacesPlanArmState.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_ros_interfacesPlanArmState(o *ros.Capability, scratch []byte) (Ros1Kuavo_ros_interfacesPlanArmState, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_ros_interfacesPlanArmState{}, e
	}
	return DecodeRos1Kuavo_ros_interfacesPlanArmState(scratch[:n])
}

// @brief Call the selected kuavo_ros_interfaces/planArmTrajectoryBezierCurve service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveRequest,
// response=Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurve(o *ros.Capability, q Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveRequest, output []byte) (Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveResponse{}, e
	}
	return DecodeRos1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveResponse(output[:n])
}

// @brief Publish one complete kuavo_ros_interfaces/robotHandPosition message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Kuavo_ros_interfacesRobotHandPosition.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_ros_interfacesRobotHandPosition(o *ros.Capability, v Ros1Kuavo_ros_interfacesRobotHandPosition) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_ros_interfaces/robotHandPosition message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Kuavo_ros_interfacesRobotHandPosition.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_ros_interfacesRobotHandPosition(o *ros.Capability, scratch []byte) (Ros1Kuavo_ros_interfacesRobotHandPosition, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_ros_interfacesRobotHandPosition{}, e
	}
	return DecodeRos1Kuavo_ros_interfacesRobotHandPosition(scratch[:n])
}

// @brief Publish one complete kuavo_ros_interfaces/robotHeadMotionData message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Kuavo_ros_interfacesRobotHeadMotionData.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Kuavo_ros_interfacesRobotHeadMotionData(o *ros.Capability, v Ros1Kuavo_ros_interfacesRobotHeadMotionData) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete kuavo_ros_interfaces/robotHeadMotionData message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Kuavo_ros_interfacesRobotHeadMotionData.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Kuavo_ros_interfacesRobotHeadMotionData(o *ros.Capability, scratch []byte) (Ros1Kuavo_ros_interfacesRobotHeadMotionData, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Kuavo_ros_interfacesRobotHeadMotionData{}, e
	}
	return DecodeRos1Kuavo_ros_interfacesRobotHeadMotionData(scratch[:n])
}

// @brief Call the selected kuavo_ros_interfaces/stopPlanArmTrajectory service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryRequest,
// response=Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Kuavo_ros_interfacesStopPlanArmTrajectory(o *ros.Capability, q Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryRequest, output []byte) (Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryResponse{}, e
	}
	return DecodeRos1Kuavo_ros_interfacesStopPlanArmTrajectoryResponse(output[:n])
}

// @brief Publish one complete leju_mobile_base_msgs/BMS message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Leju_mobile_base_msgsBMS.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Leju_mobile_base_msgsBMS(o *ros.Capability, v Ros1Leju_mobile_base_msgsBMS) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete leju_mobile_base_msgs/BMS message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Leju_mobile_base_msgsBMS.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Leju_mobile_base_msgsBMS(o *ros.Capability, scratch []byte) (Ros1Leju_mobile_base_msgsBMS, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Leju_mobile_base_msgsBMS{}, e
	}
	return DecodeRos1Leju_mobile_base_msgsBMS(scratch[:n])
}

// @brief Publish one complete leju_mobile_base_msgs/BaseCmdVelStatus message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Leju_mobile_base_msgsBaseCmdVelStatus.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Leju_mobile_base_msgsBaseCmdVelStatus(o *ros.Capability, v Ros1Leju_mobile_base_msgsBaseCmdVelStatus) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete leju_mobile_base_msgs/BaseCmdVelStatus message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Leju_mobile_base_msgsBaseCmdVelStatus.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Leju_mobile_base_msgsBaseCmdVelStatus(o *ros.Capability, scratch []byte) (Ros1Leju_mobile_base_msgsBaseCmdVelStatus, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Leju_mobile_base_msgsBaseCmdVelStatus{}, e
	}
	return DecodeRos1Leju_mobile_base_msgsBaseCmdVelStatus(scratch[:n])
}

// @brief Call the selected leju_mobile_base_msgs/BaseMove service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Leju_mobile_base_msgsBaseMoveRequest, response=Ros1Leju_mobile_base_msgsBaseMoveResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Leju_mobile_base_msgsBaseMove(o *ros.Capability, q Ros1Leju_mobile_base_msgsBaseMoveRequest, output []byte) (Ros1Leju_mobile_base_msgsBaseMoveResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Leju_mobile_base_msgsBaseMoveResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Leju_mobile_base_msgsBaseMoveResponse{}, e
	}
	return DecodeRos1Leju_mobile_base_msgsBaseMoveResponse(output[:n])
}

// @brief Publish one complete leju_mobile_base_msgs/Battery message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Leju_mobile_base_msgsBattery.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Leju_mobile_base_msgsBattery(o *ros.Capability, v Ros1Leju_mobile_base_msgsBattery) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete leju_mobile_base_msgs/Battery message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Leju_mobile_base_msgsBattery.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Leju_mobile_base_msgsBattery(o *ros.Capability, scratch []byte) (Ros1Leju_mobile_base_msgsBattery, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Leju_mobile_base_msgsBattery{}, e
	}
	return DecodeRos1Leju_mobile_base_msgsBattery(scratch[:n])
}

// @brief Call the selected leju_mobile_base_msgs/CheckArrived service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Leju_mobile_base_msgsCheckArrivedRequest, response=Ros1Leju_mobile_base_msgsCheckArrivedResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Leju_mobile_base_msgsCheckArrived(o *ros.Capability, q Ros1Leju_mobile_base_msgsCheckArrivedRequest, output []byte) (Ros1Leju_mobile_base_msgsCheckArrivedResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Leju_mobile_base_msgsCheckArrivedResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Leju_mobile_base_msgsCheckArrivedResponse{}, e
	}
	return DecodeRos1Leju_mobile_base_msgsCheckArrivedResponse(output[:n])
}

// @brief Call the selected leju_mobile_base_msgs/ControlLaserScan service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Leju_mobile_base_msgsControlLaserScanRequest,
// response=Ros1Leju_mobile_base_msgsControlLaserScanResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Leju_mobile_base_msgsControlLaserScan(o *ros.Capability, q Ros1Leju_mobile_base_msgsControlLaserScanRequest, output []byte) (Ros1Leju_mobile_base_msgsControlLaserScanResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Leju_mobile_base_msgsControlLaserScanResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Leju_mobile_base_msgsControlLaserScanResponse{}, e
	}
	return DecodeRos1Leju_mobile_base_msgsControlLaserScanResponse(output[:n])
}

// @brief Call the selected leju_mobile_base_msgs/DispatchMove service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Leju_mobile_base_msgsDispatchMoveRequest, response=Ros1Leju_mobile_base_msgsDispatchMoveResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Leju_mobile_base_msgsDispatchMove(o *ros.Capability, q Ros1Leju_mobile_base_msgsDispatchMoveRequest, output []byte) (Ros1Leju_mobile_base_msgsDispatchMoveResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Leju_mobile_base_msgsDispatchMoveResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Leju_mobile_base_msgsDispatchMoveResponse{}, e
	}
	return DecodeRos1Leju_mobile_base_msgsDispatchMoveResponse(output[:n])
}

// @brief Call the selected leju_mobile_base_msgs/ExecTask service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Leju_mobile_base_msgsExecTaskRequest, response=Ros1Leju_mobile_base_msgsExecTaskResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Leju_mobile_base_msgsExecTask(o *ros.Capability, q Ros1Leju_mobile_base_msgsExecTaskRequest, output []byte) (Ros1Leju_mobile_base_msgsExecTaskResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Leju_mobile_base_msgsExecTaskResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Leju_mobile_base_msgsExecTaskResponse{}, e
	}
	return DecodeRos1Leju_mobile_base_msgsExecTaskResponse(output[:n])
}

// @brief Call the selected leju_mobile_base_msgs/GetGlobalOdometer service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Leju_mobile_base_msgsGetGlobalOdometerRequest,
// response=Ros1Leju_mobile_base_msgsGetGlobalOdometerResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Leju_mobile_base_msgsGetGlobalOdometer(o *ros.Capability, q Ros1Leju_mobile_base_msgsGetGlobalOdometerRequest, output []byte) (Ros1Leju_mobile_base_msgsGetGlobalOdometerResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Leju_mobile_base_msgsGetGlobalOdometerResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Leju_mobile_base_msgsGetGlobalOdometerResponse{}, e
	}
	return DecodeRos1Leju_mobile_base_msgsGetGlobalOdometerResponse(output[:n])
}

// @brief Call the selected leju_mobile_base_msgs/GetLaserScanList service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Leju_mobile_base_msgsGetLaserScanListRequest,
// response=Ros1Leju_mobile_base_msgsGetLaserScanListResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Leju_mobile_base_msgsGetLaserScanList(o *ros.Capability, q Ros1Leju_mobile_base_msgsGetLaserScanListRequest, output []byte) (Ros1Leju_mobile_base_msgsGetLaserScanListResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Leju_mobile_base_msgsGetLaserScanListResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Leju_mobile_base_msgsGetLaserScanListResponse{}, e
	}
	return DecodeRos1Leju_mobile_base_msgsGetLaserScanListResponse(output[:n])
}

// @brief Publish one complete leju_mobile_base_msgs/HardwareStatus message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Leju_mobile_base_msgsHardwareStatus.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Leju_mobile_base_msgsHardwareStatus(o *ros.Capability, v Ros1Leju_mobile_base_msgsHardwareStatus) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete leju_mobile_base_msgs/HardwareStatus message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Leju_mobile_base_msgsHardwareStatus.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Leju_mobile_base_msgsHardwareStatus(o *ros.Capability, scratch []byte) (Ros1Leju_mobile_base_msgsHardwareStatus, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Leju_mobile_base_msgsHardwareStatus{}, e
	}
	return DecodeRos1Leju_mobile_base_msgsHardwareStatus(scratch[:n])
}

// @brief Publish one complete leju_mobile_base_msgs/Information message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Leju_mobile_base_msgsInformation.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Leju_mobile_base_msgsInformation(o *ros.Capability, v Ros1Leju_mobile_base_msgsInformation) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete leju_mobile_base_msgs/Information message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Leju_mobile_base_msgsInformation.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Leju_mobile_base_msgsInformation(o *ros.Capability, scratch []byte) (Ros1Leju_mobile_base_msgsInformation, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Leju_mobile_base_msgsInformation{}, e
	}
	return DecodeRos1Leju_mobile_base_msgsInformation(scratch[:n])
}

// @brief Publish one complete leju_mobile_base_msgs/LED message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Leju_mobile_base_msgsLED.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Leju_mobile_base_msgsLED(o *ros.Capability, v Ros1Leju_mobile_base_msgsLED) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete leju_mobile_base_msgs/LED message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Leju_mobile_base_msgsLED.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Leju_mobile_base_msgsLED(o *ros.Capability, scratch []byte) (Ros1Leju_mobile_base_msgsLED, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Leju_mobile_base_msgsLED{}, e
	}
	return DecodeRos1Leju_mobile_base_msgsLED(scratch[:n])
}

// @brief Publish one complete leju_mobile_base_msgs/LiftControl3Feedback message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Leju_mobile_base_msgsLiftControl3Feedback.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Leju_mobile_base_msgsLiftControl3Feedback(o *ros.Capability, v Ros1Leju_mobile_base_msgsLiftControl3Feedback) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete leju_mobile_base_msgs/LiftControl3Feedback message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Leju_mobile_base_msgsLiftControl3Feedback.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Leju_mobile_base_msgsLiftControl3Feedback(o *ros.Capability, scratch []byte) (Ros1Leju_mobile_base_msgsLiftControl3Feedback, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Leju_mobile_base_msgsLiftControl3Feedback{}, e
	}
	return DecodeRos1Leju_mobile_base_msgsLiftControl3Feedback(scratch[:n])
}

// @brief Publish one complete leju_mobile_base_msgs/LiftControl3Goal message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Leju_mobile_base_msgsLiftControl3Goal.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Leju_mobile_base_msgsLiftControl3Goal(o *ros.Capability, v Ros1Leju_mobile_base_msgsLiftControl3Goal) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete leju_mobile_base_msgs/LiftControl3Goal message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Leju_mobile_base_msgsLiftControl3Goal.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Leju_mobile_base_msgsLiftControl3Goal(o *ros.Capability, scratch []byte) (Ros1Leju_mobile_base_msgsLiftControl3Goal, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Leju_mobile_base_msgsLiftControl3Goal{}, e
	}
	return DecodeRos1Leju_mobile_base_msgsLiftControl3Goal(scratch[:n])
}

// @brief Publish one complete leju_mobile_base_msgs/LiftControl3Result message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Leju_mobile_base_msgsLiftControl3Result.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Leju_mobile_base_msgsLiftControl3Result(o *ros.Capability, v Ros1Leju_mobile_base_msgsLiftControl3Result) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete leju_mobile_base_msgs/LiftControl3Result message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Leju_mobile_base_msgsLiftControl3Result.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Leju_mobile_base_msgsLiftControl3Result(o *ros.Capability, scratch []byte) (Ros1Leju_mobile_base_msgsLiftControl3Result, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Leju_mobile_base_msgsLiftControl3Result{}, e
	}
	return DecodeRos1Leju_mobile_base_msgsLiftControl3Result(scratch[:n])
}

// @brief Publish one complete leju_mobile_base_msgs/LiftStatus message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Leju_mobile_base_msgsLiftStatus.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Leju_mobile_base_msgsLiftStatus(o *ros.Capability, v Ros1Leju_mobile_base_msgsLiftStatus) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete leju_mobile_base_msgs/LiftStatus message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Leju_mobile_base_msgsLiftStatus.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Leju_mobile_base_msgsLiftStatus(o *ros.Capability, scratch []byte) (Ros1Leju_mobile_base_msgsLiftStatus, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Leju_mobile_base_msgsLiftStatus{}, e
	}
	return DecodeRos1Leju_mobile_base_msgsLiftStatus(scratch[:n])
}

// @brief Publish one complete leju_mobile_base_msgs/MoveBaseActionGoal message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Leju_mobile_base_msgsMoveBaseActionGoal.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Leju_mobile_base_msgsMoveBaseActionGoal(o *ros.Capability, v Ros1Leju_mobile_base_msgsMoveBaseActionGoal) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete leju_mobile_base_msgs/MoveBaseActionGoal message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Leju_mobile_base_msgsMoveBaseActionGoal.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Leju_mobile_base_msgsMoveBaseActionGoal(o *ros.Capability, scratch []byte) (Ros1Leju_mobile_base_msgsMoveBaseActionGoal, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Leju_mobile_base_msgsMoveBaseActionGoal{}, e
	}
	return DecodeRos1Leju_mobile_base_msgsMoveBaseActionGoal(scratch[:n])
}

// @brief Call the selected leju_mobile_base_msgs/MoveToTarget service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Leju_mobile_base_msgsMoveToTargetRequest, response=Ros1Leju_mobile_base_msgsMoveToTargetResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Leju_mobile_base_msgsMoveToTarget(o *ros.Capability, q Ros1Leju_mobile_base_msgsMoveToTargetRequest, output []byte) (Ros1Leju_mobile_base_msgsMoveToTargetResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Leju_mobile_base_msgsMoveToTargetResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Leju_mobile_base_msgsMoveToTargetResponse{}, e
	}
	return DecodeRos1Leju_mobile_base_msgsMoveToTargetResponse(output[:n])
}

// @brief Publish one complete leju_mobile_base_msgs/MoveToTargetOptions message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Leju_mobile_base_msgsMoveToTargetOptions.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Leju_mobile_base_msgsMoveToTargetOptions(o *ros.Capability, v Ros1Leju_mobile_base_msgsMoveToTargetOptions) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete leju_mobile_base_msgs/MoveToTargetOptions message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Leju_mobile_base_msgsMoveToTargetOptions.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Leju_mobile_base_msgsMoveToTargetOptions(o *ros.Capability, scratch []byte) (Ros1Leju_mobile_base_msgsMoveToTargetOptions, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Leju_mobile_base_msgsMoveToTargetOptions{}, e
	}
	return DecodeRos1Leju_mobile_base_msgsMoveToTargetOptions(scratch[:n])
}

// @brief Publish one complete leju_mobile_base_msgs/NavigationModeGoal message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Leju_mobile_base_msgsNavigationModeGoal.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Leju_mobile_base_msgsNavigationModeGoal(o *ros.Capability, v Ros1Leju_mobile_base_msgsNavigationModeGoal) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete leju_mobile_base_msgs/NavigationModeGoal message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Leju_mobile_base_msgsNavigationModeGoal.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Leju_mobile_base_msgsNavigationModeGoal(o *ros.Capability, scratch []byte) (Ros1Leju_mobile_base_msgsNavigationModeGoal, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Leju_mobile_base_msgsNavigationModeGoal{}, e
	}
	return DecodeRos1Leju_mobile_base_msgsNavigationModeGoal(scratch[:n])
}

// @brief Publish one complete leju_mobile_base_msgs/Parameter message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Leju_mobile_base_msgsParameter.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Leju_mobile_base_msgsParameter(o *ros.Capability, v Ros1Leju_mobile_base_msgsParameter) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete leju_mobile_base_msgs/Parameter message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Leju_mobile_base_msgsParameter.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Leju_mobile_base_msgsParameter(o *ros.Capability, scratch []byte) (Ros1Leju_mobile_base_msgsParameter, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Leju_mobile_base_msgsParameter{}, e
	}
	return DecodeRos1Leju_mobile_base_msgsParameter(scratch[:n])
}

// @brief Call the selected leju_mobile_base_msgs/ResetTemporaryOdometer service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Leju_mobile_base_msgsResetTemporaryOdometerRequest,
// response=Ros1Leju_mobile_base_msgsResetTemporaryOdometerResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Leju_mobile_base_msgsResetTemporaryOdometer(o *ros.Capability, q Ros1Leju_mobile_base_msgsResetTemporaryOdometerRequest, output []byte) (Ros1Leju_mobile_base_msgsResetTemporaryOdometerResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Leju_mobile_base_msgsResetTemporaryOdometerResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Leju_mobile_base_msgsResetTemporaryOdometerResponse{}, e
	}
	return DecodeRos1Leju_mobile_base_msgsResetTemporaryOdometerResponse(output[:n])
}

// @brief Publish one complete leju_mobile_base_msgs/RobotStatus message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Leju_mobile_base_msgsRobotStatus.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Leju_mobile_base_msgsRobotStatus(o *ros.Capability, v Ros1Leju_mobile_base_msgsRobotStatus) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete leju_mobile_base_msgs/RobotStatus message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Leju_mobile_base_msgsRobotStatus.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Leju_mobile_base_msgsRobotStatus(o *ros.Capability, scratch []byte) (Ros1Leju_mobile_base_msgsRobotStatus, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Leju_mobile_base_msgsRobotStatus{}, e
	}
	return DecodeRos1Leju_mobile_base_msgsRobotStatus(scratch[:n])
}

// @brief Call the selected leju_mobile_base_msgs/SetDispatchMode service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Leju_mobile_base_msgsSetDispatchModeRequest,
// response=Ros1Leju_mobile_base_msgsSetDispatchModeResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Leju_mobile_base_msgsSetDispatchMode(o *ros.Capability, q Ros1Leju_mobile_base_msgsSetDispatchModeRequest, output []byte) (Ros1Leju_mobile_base_msgsSetDispatchModeResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Leju_mobile_base_msgsSetDispatchModeResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Leju_mobile_base_msgsSetDispatchModeResponse{}, e
	}
	return DecodeRos1Leju_mobile_base_msgsSetDispatchModeResponse(output[:n])
}

// @brief Call the selected leju_mobile_base_msgs/SetMapServer service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Leju_mobile_base_msgsSetMapServerRequest, response=Ros1Leju_mobile_base_msgsSetMapServerResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Leju_mobile_base_msgsSetMapServer(o *ros.Capability, q Ros1Leju_mobile_base_msgsSetMapServerRequest, output []byte) (Ros1Leju_mobile_base_msgsSetMapServerResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Leju_mobile_base_msgsSetMapServerResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Leju_mobile_base_msgsSetMapServerResponse{}, e
	}
	return DecodeRos1Leju_mobile_base_msgsSetMapServerResponse(output[:n])
}

// @brief Call the selected leju_mobile_base_msgs/StartLocalization service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Leju_mobile_base_msgsStartLocalizationRequest,
// response=Ros1Leju_mobile_base_msgsStartLocalizationResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Leju_mobile_base_msgsStartLocalization(o *ros.Capability, q Ros1Leju_mobile_base_msgsStartLocalizationRequest, output []byte) (Ros1Leju_mobile_base_msgsStartLocalizationResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Leju_mobile_base_msgsStartLocalizationResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Leju_mobile_base_msgsStartLocalizationResponse{}, e
	}
	return DecodeRos1Leju_mobile_base_msgsStartLocalizationResponse(output[:n])
}

// @brief Publish one complete leju_mobile_base_msgs/StepControlGoal message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Leju_mobile_base_msgsStepControlGoal.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Leju_mobile_base_msgsStepControlGoal(o *ros.Capability, v Ros1Leju_mobile_base_msgsStepControlGoal) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete leju_mobile_base_msgs/StepControlGoal message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Leju_mobile_base_msgsStepControlGoal.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Leju_mobile_base_msgsStepControlGoal(o *ros.Capability, scratch []byte) (Ros1Leju_mobile_base_msgsStepControlGoal, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Leju_mobile_base_msgsStepControlGoal{}, e
	}
	return DecodeRos1Leju_mobile_base_msgsStepControlGoal(scratch[:n])
}

// @brief Call the selected leju_mobile_base_msgs/SyncCostmap service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Leju_mobile_base_msgsSyncCostmapRequest, response=Ros1Leju_mobile_base_msgsSyncCostmapResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Leju_mobile_base_msgsSyncCostmap(o *ros.Capability, q Ros1Leju_mobile_base_msgsSyncCostmapRequest, output []byte) (Ros1Leju_mobile_base_msgsSyncCostmapResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Leju_mobile_base_msgsSyncCostmapResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Leju_mobile_base_msgsSyncCostmapResponse{}, e
	}
	return DecodeRos1Leju_mobile_base_msgsSyncCostmapResponse(output[:n])
}

// @brief Publish one complete leju_mobile_base_msgs/TaskDetailStatus message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Leju_mobile_base_msgsTaskDetailStatus.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Leju_mobile_base_msgsTaskDetailStatus(o *ros.Capability, v Ros1Leju_mobile_base_msgsTaskDetailStatus) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete leju_mobile_base_msgs/TaskDetailStatus message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Leju_mobile_base_msgsTaskDetailStatus.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Leju_mobile_base_msgsTaskDetailStatus(o *ros.Capability, scratch []byte) (Ros1Leju_mobile_base_msgsTaskDetailStatus, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Leju_mobile_base_msgsTaskDetailStatus{}, e
	}
	return DecodeRos1Leju_mobile_base_msgsTaskDetailStatus(scratch[:n])
}

// @brief Publish one complete motioncapture/ForcePlateData message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1MotioncaptureForcePlateData.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1MotioncaptureForcePlateData(o *ros.Capability, v Ros1MotioncaptureForcePlateData) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete motioncapture/ForcePlateData message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1MotioncaptureForcePlateData.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1MotioncaptureForcePlateData(o *ros.Capability, scratch []byte) (Ros1MotioncaptureForcePlateData, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1MotioncaptureForcePlateData{}, e
	}
	return DecodeRos1MotioncaptureForcePlateData(scratch[:n])
}

// @brief Call the selected network_monitor/NetworkPing service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Network_monitorNetworkPingRequest, response=Ros1Network_monitorNetworkPingResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Network_monitorNetworkPing(o *ros.Capability, q Ros1Network_monitorNetworkPingRequest, output []byte) (Ros1Network_monitorNetworkPingResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Network_monitorNetworkPingResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Network_monitorNetworkPingResponse{}, e
	}
	return DecodeRos1Network_monitorNetworkPingResponse(output[:n])
}

// @brief Publish one complete network_monitor/NetworkPingMsg message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Network_monitorNetworkPingMsg.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Network_monitorNetworkPingMsg(o *ros.Capability, v Ros1Network_monitorNetworkPingMsg) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete network_monitor/NetworkPingMsg message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Network_monitorNetworkPingMsg.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Network_monitorNetworkPingMsg(o *ros.Capability, scratch []byte) (Ros1Network_monitorNetworkPingMsg, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Network_monitorNetworkPingMsg{}, e
	}
	return DecodeRos1Network_monitorNetworkPingMsg(scratch[:n])
}

// @brief Publish one complete nimservos_controller/motor_cmd message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Nimservos_controllerMotor_cmd.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Nimservos_controllerMotor_cmd(o *ros.Capability, v Ros1Nimservos_controllerMotor_cmd) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete nimservos_controller/motor_cmd message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Nimservos_controllerMotor_cmd.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Nimservos_controllerMotor_cmd(o *ros.Capability, scratch []byte) (Ros1Nimservos_controllerMotor_cmd, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Nimservos_controllerMotor_cmd{}, e
	}
	return DecodeRos1Nimservos_controllerMotor_cmd(scratch[:n])
}

// @brief Publish one complete nimservos_controller/motor_state message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Nimservos_controllerMotor_state.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Nimservos_controllerMotor_state(o *ros.Capability, v Ros1Nimservos_controllerMotor_state) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete nimservos_controller/motor_state message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Nimservos_controllerMotor_state.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Nimservos_controllerMotor_state(o *ros.Capability, scratch []byte) (Ros1Nimservos_controllerMotor_state, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Nimservos_controllerMotor_state{}, e
	}
	return DecodeRos1Nimservos_controllerMotor_state(scratch[:n])
}

// @brief Publish one complete nlink_parser/IotFrame0 message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Nlink_parserIotFrame0.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Nlink_parserIotFrame0(o *ros.Capability, v Ros1Nlink_parserIotFrame0) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete nlink_parser/IotFrame0 message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Nlink_parserIotFrame0.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Nlink_parserIotFrame0(o *ros.Capability, scratch []byte) (Ros1Nlink_parserIotFrame0, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Nlink_parserIotFrame0{}, e
	}
	return DecodeRos1Nlink_parserIotFrame0(scratch[:n])
}

// @brief Publish one complete nlink_parser/IotFrame0Node message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Nlink_parserIotFrame0Node.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Nlink_parserIotFrame0Node(o *ros.Capability, v Ros1Nlink_parserIotFrame0Node) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete nlink_parser/IotFrame0Node message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Nlink_parserIotFrame0Node.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Nlink_parserIotFrame0Node(o *ros.Capability, scratch []byte) (Ros1Nlink_parserIotFrame0Node, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Nlink_parserIotFrame0Node{}, e
	}
	return DecodeRos1Nlink_parserIotFrame0Node(scratch[:n])
}

// @brief Publish one complete nlink_parser/LinktrackAnchorframe0 message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Nlink_parserLinktrackAnchorframe0.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Nlink_parserLinktrackAnchorframe0(o *ros.Capability, v Ros1Nlink_parserLinktrackAnchorframe0) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete nlink_parser/LinktrackAnchorframe0 message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Nlink_parserLinktrackAnchorframe0.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Nlink_parserLinktrackAnchorframe0(o *ros.Capability, scratch []byte) (Ros1Nlink_parserLinktrackAnchorframe0, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Nlink_parserLinktrackAnchorframe0{}, e
	}
	return DecodeRos1Nlink_parserLinktrackAnchorframe0(scratch[:n])
}

// @brief Publish one complete nlink_parser/LinktrackAoaNode0 message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Nlink_parserLinktrackAoaNode0.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Nlink_parserLinktrackAoaNode0(o *ros.Capability, v Ros1Nlink_parserLinktrackAoaNode0) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete nlink_parser/LinktrackAoaNode0 message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Nlink_parserLinktrackAoaNode0.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Nlink_parserLinktrackAoaNode0(o *ros.Capability, scratch []byte) (Ros1Nlink_parserLinktrackAoaNode0, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Nlink_parserLinktrackAoaNode0{}, e
	}
	return DecodeRos1Nlink_parserLinktrackAoaNode0(scratch[:n])
}

// @brief Publish one complete nlink_parser/LinktrackAoaNodeframe0 message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Nlink_parserLinktrackAoaNodeframe0.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Nlink_parserLinktrackAoaNodeframe0(o *ros.Capability, v Ros1Nlink_parserLinktrackAoaNodeframe0) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete nlink_parser/LinktrackAoaNodeframe0 message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Nlink_parserLinktrackAoaNodeframe0.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Nlink_parserLinktrackAoaNodeframe0(o *ros.Capability, scratch []byte) (Ros1Nlink_parserLinktrackAoaNodeframe0, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Nlink_parserLinktrackAoaNodeframe0{}, e
	}
	return DecodeRos1Nlink_parserLinktrackAoaNodeframe0(scratch[:n])
}

// @brief Publish one complete nlink_parser/LinktrackNode0 message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Nlink_parserLinktrackNode0.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Nlink_parserLinktrackNode0(o *ros.Capability, v Ros1Nlink_parserLinktrackNode0) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete nlink_parser/LinktrackNode0 message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Nlink_parserLinktrackNode0.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Nlink_parserLinktrackNode0(o *ros.Capability, scratch []byte) (Ros1Nlink_parserLinktrackNode0, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Nlink_parserLinktrackNode0{}, e
	}
	return DecodeRos1Nlink_parserLinktrackNode0(scratch[:n])
}

// @brief Publish one complete nlink_parser/LinktrackNode1 message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Nlink_parserLinktrackNode1.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Nlink_parserLinktrackNode1(o *ros.Capability, v Ros1Nlink_parserLinktrackNode1) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete nlink_parser/LinktrackNode1 message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Nlink_parserLinktrackNode1.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Nlink_parserLinktrackNode1(o *ros.Capability, scratch []byte) (Ros1Nlink_parserLinktrackNode1, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Nlink_parserLinktrackNode1{}, e
	}
	return DecodeRos1Nlink_parserLinktrackNode1(scratch[:n])
}

// @brief Publish one complete nlink_parser/LinktrackNode2 message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Nlink_parserLinktrackNode2.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Nlink_parserLinktrackNode2(o *ros.Capability, v Ros1Nlink_parserLinktrackNode2) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete nlink_parser/LinktrackNode2 message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Nlink_parserLinktrackNode2.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Nlink_parserLinktrackNode2(o *ros.Capability, scratch []byte) (Ros1Nlink_parserLinktrackNode2, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Nlink_parserLinktrackNode2{}, e
	}
	return DecodeRos1Nlink_parserLinktrackNode2(scratch[:n])
}

// @brief Publish one complete nlink_parser/LinktrackNode4Anchor message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Nlink_parserLinktrackNode4Anchor.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Nlink_parserLinktrackNode4Anchor(o *ros.Capability, v Ros1Nlink_parserLinktrackNode4Anchor) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete nlink_parser/LinktrackNode4Anchor message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Nlink_parserLinktrackNode4Anchor.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Nlink_parserLinktrackNode4Anchor(o *ros.Capability, scratch []byte) (Ros1Nlink_parserLinktrackNode4Anchor, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Nlink_parserLinktrackNode4Anchor{}, e
	}
	return DecodeRos1Nlink_parserLinktrackNode4Anchor(scratch[:n])
}

// @brief Publish one complete nlink_parser/LinktrackNode4Tag message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Nlink_parserLinktrackNode4Tag.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Nlink_parserLinktrackNode4Tag(o *ros.Capability, v Ros1Nlink_parserLinktrackNode4Tag) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete nlink_parser/LinktrackNode4Tag message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Nlink_parserLinktrackNode4Tag.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Nlink_parserLinktrackNode4Tag(o *ros.Capability, scratch []byte) (Ros1Nlink_parserLinktrackNode4Tag, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Nlink_parserLinktrackNode4Tag{}, e
	}
	return DecodeRos1Nlink_parserLinktrackNode4Tag(scratch[:n])
}

// @brief Publish one complete nlink_parser/LinktrackNode5 message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Nlink_parserLinktrackNode5.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Nlink_parserLinktrackNode5(o *ros.Capability, v Ros1Nlink_parserLinktrackNode5) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete nlink_parser/LinktrackNode5 message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Nlink_parserLinktrackNode5.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Nlink_parserLinktrackNode5(o *ros.Capability, scratch []byte) (Ros1Nlink_parserLinktrackNode5, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Nlink_parserLinktrackNode5{}, e
	}
	return DecodeRos1Nlink_parserLinktrackNode5(scratch[:n])
}

// @brief Publish one complete nlink_parser/LinktrackNode6 message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Nlink_parserLinktrackNode6.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Nlink_parserLinktrackNode6(o *ros.Capability, v Ros1Nlink_parserLinktrackNode6) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete nlink_parser/LinktrackNode6 message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Nlink_parserLinktrackNode6.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Nlink_parserLinktrackNode6(o *ros.Capability, scratch []byte) (Ros1Nlink_parserLinktrackNode6, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Nlink_parserLinktrackNode6{}, e
	}
	return DecodeRos1Nlink_parserLinktrackNode6(scratch[:n])
}

// @brief Publish one complete nlink_parser/LinktrackNodeframe0 message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Nlink_parserLinktrackNodeframe0.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Nlink_parserLinktrackNodeframe0(o *ros.Capability, v Ros1Nlink_parserLinktrackNodeframe0) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete nlink_parser/LinktrackNodeframe0 message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Nlink_parserLinktrackNodeframe0.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Nlink_parserLinktrackNodeframe0(o *ros.Capability, scratch []byte) (Ros1Nlink_parserLinktrackNodeframe0, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Nlink_parserLinktrackNodeframe0{}, e
	}
	return DecodeRos1Nlink_parserLinktrackNodeframe0(scratch[:n])
}

// @brief Publish one complete nlink_parser/LinktrackNodeframe1 message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Nlink_parserLinktrackNodeframe1.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Nlink_parserLinktrackNodeframe1(o *ros.Capability, v Ros1Nlink_parserLinktrackNodeframe1) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete nlink_parser/LinktrackNodeframe1 message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Nlink_parserLinktrackNodeframe1.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Nlink_parserLinktrackNodeframe1(o *ros.Capability, scratch []byte) (Ros1Nlink_parserLinktrackNodeframe1, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Nlink_parserLinktrackNodeframe1{}, e
	}
	return DecodeRos1Nlink_parserLinktrackNodeframe1(scratch[:n])
}

// @brief Publish one complete nlink_parser/LinktrackNodeframe2 message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Nlink_parserLinktrackNodeframe2.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Nlink_parserLinktrackNodeframe2(o *ros.Capability, v Ros1Nlink_parserLinktrackNodeframe2) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete nlink_parser/LinktrackNodeframe2 message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Nlink_parserLinktrackNodeframe2.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Nlink_parserLinktrackNodeframe2(o *ros.Capability, scratch []byte) (Ros1Nlink_parserLinktrackNodeframe2, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Nlink_parserLinktrackNodeframe2{}, e
	}
	return DecodeRos1Nlink_parserLinktrackNodeframe2(scratch[:n])
}

// @brief Publish one complete nlink_parser/LinktrackNodeframe3 message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Nlink_parserLinktrackNodeframe3.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Nlink_parserLinktrackNodeframe3(o *ros.Capability, v Ros1Nlink_parserLinktrackNodeframe3) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete nlink_parser/LinktrackNodeframe3 message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Nlink_parserLinktrackNodeframe3.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Nlink_parserLinktrackNodeframe3(o *ros.Capability, scratch []byte) (Ros1Nlink_parserLinktrackNodeframe3, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Nlink_parserLinktrackNodeframe3{}, e
	}
	return DecodeRos1Nlink_parserLinktrackNodeframe3(scratch[:n])
}

// @brief Publish one complete nlink_parser/LinktrackNodeframe4 message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Nlink_parserLinktrackNodeframe4.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Nlink_parserLinktrackNodeframe4(o *ros.Capability, v Ros1Nlink_parserLinktrackNodeframe4) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete nlink_parser/LinktrackNodeframe4 message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Nlink_parserLinktrackNodeframe4.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Nlink_parserLinktrackNodeframe4(o *ros.Capability, scratch []byte) (Ros1Nlink_parserLinktrackNodeframe4, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Nlink_parserLinktrackNodeframe4{}, e
	}
	return DecodeRos1Nlink_parserLinktrackNodeframe4(scratch[:n])
}

// @brief Publish one complete nlink_parser/LinktrackNodeframe5 message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Nlink_parserLinktrackNodeframe5.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Nlink_parserLinktrackNodeframe5(o *ros.Capability, v Ros1Nlink_parserLinktrackNodeframe5) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete nlink_parser/LinktrackNodeframe5 message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Nlink_parserLinktrackNodeframe5.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Nlink_parserLinktrackNodeframe5(o *ros.Capability, scratch []byte) (Ros1Nlink_parserLinktrackNodeframe5, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Nlink_parserLinktrackNodeframe5{}, e
	}
	return DecodeRos1Nlink_parserLinktrackNodeframe5(scratch[:n])
}

// @brief Publish one complete nlink_parser/LinktrackNodeframe6 message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Nlink_parserLinktrackNodeframe6.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Nlink_parserLinktrackNodeframe6(o *ros.Capability, v Ros1Nlink_parserLinktrackNodeframe6) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete nlink_parser/LinktrackNodeframe6 message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Nlink_parserLinktrackNodeframe6.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Nlink_parserLinktrackNodeframe6(o *ros.Capability, scratch []byte) (Ros1Nlink_parserLinktrackNodeframe6, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Nlink_parserLinktrackNodeframe6{}, e
	}
	return DecodeRos1Nlink_parserLinktrackNodeframe6(scratch[:n])
}

// @brief Publish one complete nlink_parser/LinktrackTag message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Nlink_parserLinktrackTag.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Nlink_parserLinktrackTag(o *ros.Capability, v Ros1Nlink_parserLinktrackTag) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete nlink_parser/LinktrackTag message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Nlink_parserLinktrackTag.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Nlink_parserLinktrackTag(o *ros.Capability, scratch []byte) (Ros1Nlink_parserLinktrackTag, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Nlink_parserLinktrackTag{}, e
	}
	return DecodeRos1Nlink_parserLinktrackTag(scratch[:n])
}

// @brief Publish one complete nlink_parser/LinktrackTagframe0 message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Nlink_parserLinktrackTagframe0.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Nlink_parserLinktrackTagframe0(o *ros.Capability, v Ros1Nlink_parserLinktrackTagframe0) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete nlink_parser/LinktrackTagframe0 message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Nlink_parserLinktrackTagframe0.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Nlink_parserLinktrackTagframe0(o *ros.Capability, scratch []byte) (Ros1Nlink_parserLinktrackTagframe0, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Nlink_parserLinktrackTagframe0{}, e
	}
	return DecodeRos1Nlink_parserLinktrackTagframe0(scratch[:n])
}

// @brief Publish one complete nlink_parser/TofsenseCascade message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Nlink_parserTofsenseCascade.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Nlink_parserTofsenseCascade(o *ros.Capability, v Ros1Nlink_parserTofsenseCascade) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete nlink_parser/TofsenseCascade message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Nlink_parserTofsenseCascade.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Nlink_parserTofsenseCascade(o *ros.Capability, scratch []byte) (Ros1Nlink_parserTofsenseCascade, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Nlink_parserTofsenseCascade{}, e
	}
	return DecodeRos1Nlink_parserTofsenseCascade(scratch[:n])
}

// @brief Publish one complete nlink_parser/TofsenseFrame0 message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Nlink_parserTofsenseFrame0.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Nlink_parserTofsenseFrame0(o *ros.Capability, v Ros1Nlink_parserTofsenseFrame0) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete nlink_parser/TofsenseFrame0 message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Nlink_parserTofsenseFrame0.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Nlink_parserTofsenseFrame0(o *ros.Capability, scratch []byte) (Ros1Nlink_parserTofsenseFrame0, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Nlink_parserTofsenseFrame0{}, e
	}
	return DecodeRos1Nlink_parserTofsenseFrame0(scratch[:n])
}

// @brief Publish one complete nlink_parser/TofsenseMFrame0 message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Nlink_parserTofsenseMFrame0.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Nlink_parserTofsenseMFrame0(o *ros.Capability, v Ros1Nlink_parserTofsenseMFrame0) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete nlink_parser/TofsenseMFrame0 message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Nlink_parserTofsenseMFrame0.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Nlink_parserTofsenseMFrame0(o *ros.Capability, scratch []byte) (Ros1Nlink_parserTofsenseMFrame0, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Nlink_parserTofsenseMFrame0{}, e
	}
	return DecodeRos1Nlink_parserTofsenseMFrame0(scratch[:n])
}

// @brief Publish one complete nlink_parser/TofsenseMFrame0Pixel message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Nlink_parserTofsenseMFrame0Pixel.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Nlink_parserTofsenseMFrame0Pixel(o *ros.Capability, v Ros1Nlink_parserTofsenseMFrame0Pixel) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete nlink_parser/TofsenseMFrame0Pixel message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Nlink_parserTofsenseMFrame0Pixel.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Nlink_parserTofsenseMFrame0Pixel(o *ros.Capability, scratch []byte) (Ros1Nlink_parserTofsenseMFrame0Pixel, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Nlink_parserTofsenseMFrame0Pixel{}, e
	}
	return DecodeRos1Nlink_parserTofsenseMFrame0Pixel(scratch[:n])
}

// @brief Publish one complete noitom_hi5_hand_udp_python/JoySticks message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Noitom_hi5_hand_udp_pythonJoySticks.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Noitom_hi5_hand_udp_pythonJoySticks(o *ros.Capability, v Ros1Noitom_hi5_hand_udp_pythonJoySticks) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete noitom_hi5_hand_udp_python/JoySticks message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Noitom_hi5_hand_udp_pythonJoySticks.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Noitom_hi5_hand_udp_pythonJoySticks(o *ros.Capability, scratch []byte) (Ros1Noitom_hi5_hand_udp_pythonJoySticks, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Noitom_hi5_hand_udp_pythonJoySticks{}, e
	}
	return DecodeRos1Noitom_hi5_hand_udp_pythonJoySticks(scratch[:n])
}

// @brief Publish one complete noitom_hi5_hand_udp_python/PoseInfo message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Noitom_hi5_hand_udp_pythonPoseInfo.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Noitom_hi5_hand_udp_pythonPoseInfo(o *ros.Capability, v Ros1Noitom_hi5_hand_udp_pythonPoseInfo) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete noitom_hi5_hand_udp_python/PoseInfo message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Noitom_hi5_hand_udp_pythonPoseInfo.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Noitom_hi5_hand_udp_pythonPoseInfo(o *ros.Capability, scratch []byte) (Ros1Noitom_hi5_hand_udp_pythonPoseInfo, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Noitom_hi5_hand_udp_pythonPoseInfo{}, e
	}
	return DecodeRos1Noitom_hi5_hand_udp_pythonPoseInfo(scratch[:n])
}

// @brief Publish one complete noitom_hi5_hand_udp_python/PoseInfoList message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Noitom_hi5_hand_udp_pythonPoseInfoList.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Noitom_hi5_hand_udp_pythonPoseInfoList(o *ros.Capability, v Ros1Noitom_hi5_hand_udp_pythonPoseInfoList) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete noitom_hi5_hand_udp_python/PoseInfoList message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Noitom_hi5_hand_udp_pythonPoseInfoList.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Noitom_hi5_hand_udp_pythonPoseInfoList(o *ros.Capability, scratch []byte) (Ros1Noitom_hi5_hand_udp_pythonPoseInfoList, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Noitom_hi5_hand_udp_pythonPoseInfoList{}, e
	}
	return DecodeRos1Noitom_hi5_hand_udp_pythonPoseInfoList(scratch[:n])
}

// @brief Publish one complete noitom_hi5_hand_udp_python/QuaternionArray message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Noitom_hi5_hand_udp_pythonQuaternionArray.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Noitom_hi5_hand_udp_pythonQuaternionArray(o *ros.Capability, v Ros1Noitom_hi5_hand_udp_pythonQuaternionArray) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete noitom_hi5_hand_udp_python/QuaternionArray message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Noitom_hi5_hand_udp_pythonQuaternionArray.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Noitom_hi5_hand_udp_pythonQuaternionArray(o *ros.Capability, scratch []byte) (Ros1Noitom_hi5_hand_udp_pythonQuaternionArray, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Noitom_hi5_hand_udp_pythonQuaternionArray{}, e
	}
	return DecodeRos1Noitom_hi5_hand_udp_pythonQuaternionArray(scratch[:n])
}

// @brief Publish one complete noitom_hi5_hand_udp_python/Vector4 message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Noitom_hi5_hand_udp_pythonVector4.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Noitom_hi5_hand_udp_pythonVector4(o *ros.Capability, v Ros1Noitom_hi5_hand_udp_pythonVector4) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete noitom_hi5_hand_udp_python/Vector4 message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Noitom_hi5_hand_udp_pythonVector4.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Noitom_hi5_hand_udp_pythonVector4(o *ros.Capability, scratch []byte) (Ros1Noitom_hi5_hand_udp_pythonVector4, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Noitom_hi5_hand_udp_pythonVector4{}, e
	}
	return DecodeRos1Noitom_hi5_hand_udp_pythonVector4(scratch[:n])
}

// @brief Publish one complete noitom_hi5_hand_udp_python/handRotation message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Noitom_hi5_hand_udp_pythonHandRotation.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Noitom_hi5_hand_udp_pythonHandRotation(o *ros.Capability, v Ros1Noitom_hi5_hand_udp_pythonHandRotation) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete noitom_hi5_hand_udp_python/handRotation message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Noitom_hi5_hand_udp_pythonHandRotation.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Noitom_hi5_hand_udp_pythonHandRotation(o *ros.Capability, scratch []byte) (Ros1Noitom_hi5_hand_udp_pythonHandRotation, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Noitom_hi5_hand_udp_pythonHandRotation{}, e
	}
	return DecodeRos1Noitom_hi5_hand_udp_pythonHandRotation(scratch[:n])
}

// @brief Publish one complete noitom_hi5_hand_udp_python/handRotationEular message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Noitom_hi5_hand_udp_pythonHandRotationEular.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Noitom_hi5_hand_udp_pythonHandRotationEular(o *ros.Capability, v Ros1Noitom_hi5_hand_udp_pythonHandRotationEular) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete noitom_hi5_hand_udp_python/handRotationEular message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Noitom_hi5_hand_udp_pythonHandRotationEular.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Noitom_hi5_hand_udp_pythonHandRotationEular(o *ros.Capability, scratch []byte) (Ros1Noitom_hi5_hand_udp_pythonHandRotationEular, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Noitom_hi5_hand_udp_pythonHandRotationEular{}, e
	}
	return DecodeRos1Noitom_hi5_hand_udp_pythonHandRotationEular(scratch[:n])
}

// @brief Publish one complete ocs2_msgs/constraint message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Ocs2_msgsConstraint.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Ocs2_msgsConstraint(o *ros.Capability, v Ros1Ocs2_msgsConstraint) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete ocs2_msgs/constraint message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Ocs2_msgsConstraint.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Ocs2_msgsConstraint(o *ros.Capability, scratch []byte) (Ros1Ocs2_msgsConstraint, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Ocs2_msgsConstraint{}, e
	}
	return DecodeRos1Ocs2_msgsConstraint(scratch[:n])
}

// @brief Publish one complete ocs2_msgs/controller_data message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Ocs2_msgsController_data.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Ocs2_msgsController_data(o *ros.Capability, v Ros1Ocs2_msgsController_data) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete ocs2_msgs/controller_data message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Ocs2_msgsController_data.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Ocs2_msgsController_data(o *ros.Capability, scratch []byte) (Ros1Ocs2_msgsController_data, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Ocs2_msgsController_data{}, e
	}
	return DecodeRos1Ocs2_msgsController_data(scratch[:n])
}

// @brief Publish one complete ocs2_msgs/lagrangian_metrics message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Ocs2_msgsLagrangian_metrics.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Ocs2_msgsLagrangian_metrics(o *ros.Capability, v Ros1Ocs2_msgsLagrangian_metrics) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete ocs2_msgs/lagrangian_metrics message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Ocs2_msgsLagrangian_metrics.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Ocs2_msgsLagrangian_metrics(o *ros.Capability, scratch []byte) (Ros1Ocs2_msgsLagrangian_metrics, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Ocs2_msgsLagrangian_metrics{}, e
	}
	return DecodeRos1Ocs2_msgsLagrangian_metrics(scratch[:n])
}

// @brief Publish one complete ocs2_msgs/mode_schedule message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Ocs2_msgsMode_schedule.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Ocs2_msgsMode_schedule(o *ros.Capability, v Ros1Ocs2_msgsMode_schedule) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete ocs2_msgs/mode_schedule message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Ocs2_msgsMode_schedule.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Ocs2_msgsMode_schedule(o *ros.Capability, scratch []byte) (Ros1Ocs2_msgsMode_schedule, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Ocs2_msgsMode_schedule{}, e
	}
	return DecodeRos1Ocs2_msgsMode_schedule(scratch[:n])
}

// @brief Publish one complete ocs2_msgs/mpc_flattened_controller message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Ocs2_msgsMpc_flattened_controller.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Ocs2_msgsMpc_flattened_controller(o *ros.Capability, v Ros1Ocs2_msgsMpc_flattened_controller) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete ocs2_msgs/mpc_flattened_controller message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Ocs2_msgsMpc_flattened_controller.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Ocs2_msgsMpc_flattened_controller(o *ros.Capability, scratch []byte) (Ros1Ocs2_msgsMpc_flattened_controller, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Ocs2_msgsMpc_flattened_controller{}, e
	}
	return DecodeRos1Ocs2_msgsMpc_flattened_controller(scratch[:n])
}

// @brief Publish one complete ocs2_msgs/mpc_input message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Ocs2_msgsMpc_input.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Ocs2_msgsMpc_input(o *ros.Capability, v Ros1Ocs2_msgsMpc_input) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete ocs2_msgs/mpc_input message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Ocs2_msgsMpc_input.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Ocs2_msgsMpc_input(o *ros.Capability, scratch []byte) (Ros1Ocs2_msgsMpc_input, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Ocs2_msgsMpc_input{}, e
	}
	return DecodeRos1Ocs2_msgsMpc_input(scratch[:n])
}

// @brief Publish one complete ocs2_msgs/mpc_observation message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Ocs2_msgsMpc_observation.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Ocs2_msgsMpc_observation(o *ros.Capability, v Ros1Ocs2_msgsMpc_observation) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete ocs2_msgs/mpc_observation message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Ocs2_msgsMpc_observation.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Ocs2_msgsMpc_observation(o *ros.Capability, scratch []byte) (Ros1Ocs2_msgsMpc_observation, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Ocs2_msgsMpc_observation{}, e
	}
	return DecodeRos1Ocs2_msgsMpc_observation(scratch[:n])
}

// @brief Publish one complete ocs2_msgs/mpc_performance_indices message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Ocs2_msgsMpc_performance_indices.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Ocs2_msgsMpc_performance_indices(o *ros.Capability, v Ros1Ocs2_msgsMpc_performance_indices) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete ocs2_msgs/mpc_performance_indices message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Ocs2_msgsMpc_performance_indices.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Ocs2_msgsMpc_performance_indices(o *ros.Capability, scratch []byte) (Ros1Ocs2_msgsMpc_performance_indices, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Ocs2_msgsMpc_performance_indices{}, e
	}
	return DecodeRos1Ocs2_msgsMpc_performance_indices(scratch[:n])
}

// @brief Publish one complete ocs2_msgs/mpc_solver_data message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Ocs2_msgsMpc_solver_data.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Ocs2_msgsMpc_solver_data(o *ros.Capability, v Ros1Ocs2_msgsMpc_solver_data) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete ocs2_msgs/mpc_solver_data message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Ocs2_msgsMpc_solver_data.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Ocs2_msgsMpc_solver_data(o *ros.Capability, scratch []byte) (Ros1Ocs2_msgsMpc_solver_data, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Ocs2_msgsMpc_solver_data{}, e
	}
	return DecodeRos1Ocs2_msgsMpc_solver_data(scratch[:n])
}

// @brief Publish one complete ocs2_msgs/mpc_state message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Ocs2_msgsMpc_state.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Ocs2_msgsMpc_state(o *ros.Capability, v Ros1Ocs2_msgsMpc_state) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete ocs2_msgs/mpc_state message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Ocs2_msgsMpc_state.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Ocs2_msgsMpc_state(o *ros.Capability, scratch []byte) (Ros1Ocs2_msgsMpc_state, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Ocs2_msgsMpc_state{}, e
	}
	return DecodeRos1Ocs2_msgsMpc_state(scratch[:n])
}

// @brief Publish one complete ocs2_msgs/mpc_target_trajectories message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Ocs2_msgsMpc_target_trajectories.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Ocs2_msgsMpc_target_trajectories(o *ros.Capability, v Ros1Ocs2_msgsMpc_target_trajectories) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete ocs2_msgs/mpc_target_trajectories message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Ocs2_msgsMpc_target_trajectories.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Ocs2_msgsMpc_target_trajectories(o *ros.Capability, scratch []byte) (Ros1Ocs2_msgsMpc_target_trajectories, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Ocs2_msgsMpc_target_trajectories{}, e
	}
	return DecodeRos1Ocs2_msgsMpc_target_trajectories(scratch[:n])
}

// @brief Publish one complete ocs2_msgs/multiplier message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Ocs2_msgsMultiplier.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Ocs2_msgsMultiplier(o *ros.Capability, v Ros1Ocs2_msgsMultiplier) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete ocs2_msgs/multiplier message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Ocs2_msgsMultiplier.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Ocs2_msgsMultiplier(o *ros.Capability, scratch []byte) (Ros1Ocs2_msgsMultiplier, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Ocs2_msgsMultiplier{}, e
	}
	return DecodeRos1Ocs2_msgsMultiplier(scratch[:n])
}

// @brief Call the selected ocs2_msgs/pause_resume service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Ocs2_msgsPause_resumeRequest, response=Ros1Ocs2_msgsPause_resumeResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Ocs2_msgsPause_resume(o *ros.Capability, q Ros1Ocs2_msgsPause_resumeRequest, output []byte) (Ros1Ocs2_msgsPause_resumeResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Ocs2_msgsPause_resumeResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Ocs2_msgsPause_resumeResponse{}, e
	}
	return DecodeRos1Ocs2_msgsPause_resumeResponse(output[:n])
}

// @brief Call the selected ocs2_msgs/reset service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Ocs2_msgsResetRequest, response=Ros1Ocs2_msgsResetResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Ocs2_msgsReset(o *ros.Capability, q Ros1Ocs2_msgsResetRequest, output []byte) (Ros1Ocs2_msgsResetResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Ocs2_msgsResetResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Ocs2_msgsResetResponse{}, e
	}
	return DecodeRos1Ocs2_msgsResetResponse(output[:n])
}

// @brief Publish one complete ocs2_switched_model_msgs/gait message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Ocs2_switched_model_msgsGait.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Ocs2_switched_model_msgsGait(o *ros.Capability, v Ros1Ocs2_switched_model_msgsGait) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete ocs2_switched_model_msgs/gait message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Ocs2_switched_model_msgsGait.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Ocs2_switched_model_msgsGait(o *ros.Capability, scratch []byte) (Ros1Ocs2_switched_model_msgsGait, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Ocs2_switched_model_msgsGait{}, e
	}
	return DecodeRos1Ocs2_switched_model_msgsGait(scratch[:n])
}

// @brief Publish one complete ocs2_switched_model_msgs/gait_sequence message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Ocs2_switched_model_msgsGait_sequence.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Ocs2_switched_model_msgsGait_sequence(o *ros.Capability, v Ros1Ocs2_switched_model_msgsGait_sequence) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete ocs2_switched_model_msgs/gait_sequence message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Ocs2_switched_model_msgsGait_sequence.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Ocs2_switched_model_msgsGait_sequence(o *ros.Capability, scratch []byte) (Ros1Ocs2_switched_model_msgsGait_sequence, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Ocs2_switched_model_msgsGait_sequence{}, e
	}
	return DecodeRos1Ocs2_switched_model_msgsGait_sequence(scratch[:n])
}

// @brief Publish one complete ocs2_switched_model_msgs/scheduled_gait_sequence message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Ocs2_switched_model_msgsScheduled_gait_sequence.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Ocs2_switched_model_msgsScheduled_gait_sequence(o *ros.Capability, v Ros1Ocs2_switched_model_msgsScheduled_gait_sequence) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete ocs2_switched_model_msgs/scheduled_gait_sequence message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Ocs2_switched_model_msgsScheduled_gait_sequence.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Ocs2_switched_model_msgsScheduled_gait_sequence(o *ros.Capability, scratch []byte) (Ros1Ocs2_switched_model_msgsScheduled_gait_sequence, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Ocs2_switched_model_msgsScheduled_gait_sequence{}, e
	}
	return DecodeRos1Ocs2_switched_model_msgsScheduled_gait_sequence(scratch[:n])
}

// @brief Call the selected ocs2_switched_model_msgs/trajectory_request service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Ocs2_switched_model_msgsTrajectory_requestRequest,
// response=Ros1Ocs2_switched_model_msgsTrajectory_requestResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Ocs2_switched_model_msgsTrajectory_request(o *ros.Capability, q Ros1Ocs2_switched_model_msgsTrajectory_requestRequest, output []byte) (Ros1Ocs2_switched_model_msgsTrajectory_requestResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Ocs2_switched_model_msgsTrajectory_requestResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Ocs2_switched_model_msgsTrajectory_requestResponse{}, e
	}
	return DecodeRos1Ocs2_switched_model_msgsTrajectory_requestResponse(output[:n])
}

// @brief Publish one complete robot_calibration_msgs/CalibrationData message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Robot_calibration_msgsCalibrationData.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Robot_calibration_msgsCalibrationData(o *ros.Capability, v Ros1Robot_calibration_msgsCalibrationData) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete robot_calibration_msgs/CalibrationData message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Robot_calibration_msgsCalibrationData.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Robot_calibration_msgsCalibrationData(o *ros.Capability, scratch []byte) (Ros1Robot_calibration_msgsCalibrationData, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Robot_calibration_msgsCalibrationData{}, e
	}
	return DecodeRos1Robot_calibration_msgsCalibrationData(scratch[:n])
}

// @brief Publish one complete robot_calibration_msgs/CameraParameter message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Robot_calibration_msgsCameraParameter.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Robot_calibration_msgsCameraParameter(o *ros.Capability, v Ros1Robot_calibration_msgsCameraParameter) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete robot_calibration_msgs/CameraParameter message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Robot_calibration_msgsCameraParameter.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Robot_calibration_msgsCameraParameter(o *ros.Capability, scratch []byte) (Ros1Robot_calibration_msgsCameraParameter, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Robot_calibration_msgsCameraParameter{}, e
	}
	return DecodeRos1Robot_calibration_msgsCameraParameter(scratch[:n])
}

// @brief Publish one complete robot_calibration_msgs/CaptureConfig message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Robot_calibration_msgsCaptureConfig.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Robot_calibration_msgsCaptureConfig(o *ros.Capability, v Ros1Robot_calibration_msgsCaptureConfig) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete robot_calibration_msgs/CaptureConfig message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Robot_calibration_msgsCaptureConfig.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Robot_calibration_msgsCaptureConfig(o *ros.Capability, scratch []byte) (Ros1Robot_calibration_msgsCaptureConfig, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Robot_calibration_msgsCaptureConfig{}, e
	}
	return DecodeRos1Robot_calibration_msgsCaptureConfig(scratch[:n])
}

// @brief Publish one complete robot_calibration_msgs/ExtendedCameraInfo message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Robot_calibration_msgsExtendedCameraInfo.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Robot_calibration_msgsExtendedCameraInfo(o *ros.Capability, v Ros1Robot_calibration_msgsExtendedCameraInfo) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete robot_calibration_msgs/ExtendedCameraInfo message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Robot_calibration_msgsExtendedCameraInfo.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Robot_calibration_msgsExtendedCameraInfo(o *ros.Capability, scratch []byte) (Ros1Robot_calibration_msgsExtendedCameraInfo, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Robot_calibration_msgsExtendedCameraInfo{}, e
	}
	return DecodeRos1Robot_calibration_msgsExtendedCameraInfo(scratch[:n])
}

// @brief Submit a complete robot_calibration_msgs/GripperLedCommand Action goal.
// @details Validate and encode the entire goal before admission. Return its exact nonzero u64 ownership ID;
// admission is distinct from acceptance, feedback, cancellation and terminal completion. Components:
// goal=Ros1Robot_calibration_msgsGripperLedCommandGoal, result=Ros1Robot_calibration_msgsGripperLedCommandResult,
// feedback=Ros1Robot_calibration_msgsGripperLedCommandFeedback.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func SendRos1Robot_calibration_msgsGripperLedCommand(o *ros.Capability, q Ros1Robot_calibration_msgsGripperLedCommandGoal, output []byte) (uint64, error) {
	b, e := q.Encode()
	if e != nil {
		return 0, e
	}
	n, e := o.Request(ros.OpActionSendGoal, b, output)
	if e != nil {
		return 0, e
	}
	if n != 8 {
		return 0, ros.Error{Code: ros.Invalid}
	}
	var id uint64
	for i := uint(0); i < 8; i++ {
		id |= uint64(output[i]) << (8 * i)
	}
	if id == 0 {
		return 0, ros.Error{Code: ros.Invalid}
	}
	return id, nil
}

// @brief Publish one complete robot_calibration_msgs/Observation message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Robot_calibration_msgsObservation.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1Robot_calibration_msgsObservation(o *ros.Capability, v Ros1Robot_calibration_msgsObservation) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete robot_calibration_msgs/Observation message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Robot_calibration_msgsObservation.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1Robot_calibration_msgsObservation(o *ros.Capability, scratch []byte) (Ros1Robot_calibration_msgsObservation, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Robot_calibration_msgsObservation{}, e
	}
	return DecodeRos1Robot_calibration_msgsObservation(scratch[:n])
}

// @brief Call the selected robot_localization/FromLL service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Robot_localizationFromLLRequest, response=Ros1Robot_localizationFromLLResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Robot_localizationFromLL(o *ros.Capability, q Ros1Robot_localizationFromLLRequest, output []byte) (Ros1Robot_localizationFromLLResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Robot_localizationFromLLResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Robot_localizationFromLLResponse{}, e
	}
	return DecodeRos1Robot_localizationFromLLResponse(output[:n])
}

// @brief Call the selected robot_localization/GetState service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Robot_localizationGetStateRequest, response=Ros1Robot_localizationGetStateResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Robot_localizationGetState(o *ros.Capability, q Ros1Robot_localizationGetStateRequest, output []byte) (Ros1Robot_localizationGetStateResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Robot_localizationGetStateResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Robot_localizationGetStateResponse{}, e
	}
	return DecodeRos1Robot_localizationGetStateResponse(output[:n])
}

// @brief Call the selected robot_localization/SetDatum service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Robot_localizationSetDatumRequest, response=Ros1Robot_localizationSetDatumResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Robot_localizationSetDatum(o *ros.Capability, q Ros1Robot_localizationSetDatumRequest, output []byte) (Ros1Robot_localizationSetDatumResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Robot_localizationSetDatumResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Robot_localizationSetDatumResponse{}, e
	}
	return DecodeRos1Robot_localizationSetDatumResponse(output[:n])
}

// @brief Call the selected robot_localization/SetPose service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Robot_localizationSetPoseRequest, response=Ros1Robot_localizationSetPoseResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Robot_localizationSetPose(o *ros.Capability, q Ros1Robot_localizationSetPoseRequest, output []byte) (Ros1Robot_localizationSetPoseResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Robot_localizationSetPoseResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Robot_localizationSetPoseResponse{}, e
	}
	return DecodeRos1Robot_localizationSetPoseResponse(output[:n])
}

// @brief Call the selected robot_localization/SetUTMZone service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Robot_localizationSetUTMZoneRequest, response=Ros1Robot_localizationSetUTMZoneResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Robot_localizationSetUTMZone(o *ros.Capability, q Ros1Robot_localizationSetUTMZoneRequest, output []byte) (Ros1Robot_localizationSetUTMZoneResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Robot_localizationSetUTMZoneResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Robot_localizationSetUTMZoneResponse{}, e
	}
	return DecodeRos1Robot_localizationSetUTMZoneResponse(output[:n])
}

// @brief Call the selected robot_localization/ToLL service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Robot_localizationToLLRequest, response=Ros1Robot_localizationToLLResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Robot_localizationToLL(o *ros.Capability, q Ros1Robot_localizationToLLRequest, output []byte) (Ros1Robot_localizationToLLResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Robot_localizationToLLResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Robot_localizationToLLResponse{}, e
	}
	return DecodeRos1Robot_localizationToLLResponse(output[:n])
}

// @brief Call the selected robot_localization/ToggleFilterProcessing service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Robot_localizationToggleFilterProcessingRequest,
// response=Ros1Robot_localizationToggleFilterProcessingResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Robot_localizationToggleFilterProcessing(o *ros.Capability, q Ros1Robot_localizationToggleFilterProcessingRequest, output []byte) (Ros1Robot_localizationToggleFilterProcessingResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Robot_localizationToggleFilterProcessingResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Robot_localizationToggleFilterProcessingResponse{}, e
	}
	return DecodeRos1Robot_localizationToggleFilterProcessingResponse(output[:n])
}

// @brief Call the selected taiji_trigger_node/PerformTaiji service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Taiji_trigger_nodePerformTaijiRequest, response=Ros1Taiji_trigger_nodePerformTaijiResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func CallRos1Taiji_trigger_nodePerformTaiji(o *ros.Capability, q Ros1Taiji_trigger_nodePerformTaijiRequest, output []byte) (Ros1Taiji_trigger_nodePerformTaijiResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Taiji_trigger_nodePerformTaijiResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Taiji_trigger_nodePerformTaijiResponse{}, e
	}
	return DecodeRos1Taiji_trigger_nodePerformTaijiResponse(output[:n])
}

// @brief Publish one complete user_pkg/piddebug message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1User_pkgPiddebug.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1User_pkgPiddebug(o *ros.Capability, v Ros1User_pkgPiddebug) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete user_pkg/piddebug message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1User_pkgPiddebug.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1User_pkgPiddebug(o *ros.Capability, scratch []byte) (Ros1User_pkgPiddebug, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1User_pkgPiddebug{}, e
	}
	return DecodeRos1User_pkgPiddebug(scratch[:n])
}

// @brief Publish one complete user_pkg/uwbdebug message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1User_pkgUwbdebug.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1User_pkgUwbdebug(o *ros.Capability, v Ros1User_pkgUwbdebug) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete user_pkg/uwbdebug message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1User_pkgUwbdebug.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1User_pkgUwbdebug(o *ros.Capability, scratch []byte) (Ros1User_pkgUwbdebug, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1User_pkgUwbdebug{}, e
	}
	return DecodeRos1User_pkgUwbdebug(scratch[:n])
}

// @brief Publish one complete wiimote/IrSourceInfo message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1WiimoteIrSourceInfo.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1WiimoteIrSourceInfo(o *ros.Capability, v Ros1WiimoteIrSourceInfo) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete wiimote/IrSourceInfo message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1WiimoteIrSourceInfo.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1WiimoteIrSourceInfo(o *ros.Capability, scratch []byte) (Ros1WiimoteIrSourceInfo, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1WiimoteIrSourceInfo{}, e
	}
	return DecodeRos1WiimoteIrSourceInfo(scratch[:n])
}

// @brief Publish one complete wiimote/State message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1WiimoteState.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1WiimoteState(o *ros.Capability, v Ros1WiimoteState) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete wiimote/State message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1WiimoteState.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1WiimoteState(o *ros.Capability, scratch []byte) (Ros1WiimoteState, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1WiimoteState{}, e
	}
	return DecodeRos1WiimoteState(scratch[:n])
}

// @brief Publish one complete wiimote/TimedSwitch message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1WiimoteTimedSwitch.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos1WiimoteTimedSwitch(o *ros.Capability, v Ros1WiimoteTimedSwitch) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete wiimote/TimedSwitch message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1WiimoteTimedSwitch.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos1WiimoteTimedSwitch(o *ros.Capability, scratch []byte) (Ros1WiimoteTimedSwitch, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1WiimoteTimedSwitch{}, e
	}
	return DecodeRos1WiimoteTimedSwitch(scratch[:n])
}
