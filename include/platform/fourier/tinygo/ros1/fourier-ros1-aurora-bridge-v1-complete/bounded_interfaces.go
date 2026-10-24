// @file bounded_interfaces.go
// @brief Full fourier tinygo codecs and original record metadata.
// @details Complete fourier ros1_aurora_bridge_v1 values in tinygo. 51 original records retain 138 fields and 28
// interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
// definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
// profile API manual under document/platform/fourier/en_US/catalog/.
// Generated typed interfaces; separately granted exact native aliases.
package customtypes

import ros "uwvm2.local/roswasm"

// @brief Call the selected uwvm_fourier_bridge/ExecuteMove service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Uwvm_fourier_bridgeExecuteMoveRequest, response=Ros1Uwvm_fourier_bridgeExecuteMoveResponse.
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
func CallRos1Uwvm_fourier_bridgeExecuteMove(o *ros.Capability, q Ros1Uwvm_fourier_bridgeExecuteMoveRequest, output []byte) (Ros1Uwvm_fourier_bridgeExecuteMoveResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Uwvm_fourier_bridgeExecuteMoveResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Uwvm_fourier_bridgeExecuteMoveResponse{}, e
	}
	return DecodeRos1Uwvm_fourier_bridgeExecuteMoveResponse(output[:n])
}

// @brief Call the selected uwvm_fourier_bridge/GetBaseData service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Uwvm_fourier_bridgeGetBaseDataRequest, response=Ros1Uwvm_fourier_bridgeGetBaseDataResponse.
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
func CallRos1Uwvm_fourier_bridgeGetBaseData(o *ros.Capability, q Ros1Uwvm_fourier_bridgeGetBaseDataRequest, output []byte) (Ros1Uwvm_fourier_bridgeGetBaseDataResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Uwvm_fourier_bridgeGetBaseDataResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Uwvm_fourier_bridgeGetBaseDataResponse{}, e
	}
	return DecodeRos1Uwvm_fourier_bridgeGetBaseDataResponse(output[:n])
}

// @brief Call the selected uwvm_fourier_bridge/GetCartesianState service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Uwvm_fourier_bridgeGetCartesianStateRequest,
// response=Ros1Uwvm_fourier_bridgeGetCartesianStateResponse.
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
func CallRos1Uwvm_fourier_bridgeGetCartesianState(o *ros.Capability, q Ros1Uwvm_fourier_bridgeGetCartesianStateRequest, output []byte) (Ros1Uwvm_fourier_bridgeGetCartesianStateResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Uwvm_fourier_bridgeGetCartesianStateResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Uwvm_fourier_bridgeGetCartesianStateResponse{}, e
	}
	return DecodeRos1Uwvm_fourier_bridgeGetCartesianStateResponse(output[:n])
}

// @brief Call the selected uwvm_fourier_bridge/GetContactData service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Uwvm_fourier_bridgeGetContactDataRequest, response=Ros1Uwvm_fourier_bridgeGetContactDataResponse.
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
func CallRos1Uwvm_fourier_bridgeGetContactData(o *ros.Capability, q Ros1Uwvm_fourier_bridgeGetContactDataRequest, output []byte) (Ros1Uwvm_fourier_bridgeGetContactDataResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Uwvm_fourier_bridgeGetContactDataResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Uwvm_fourier_bridgeGetContactDataResponse{}, e
	}
	return DecodeRos1Uwvm_fourier_bridgeGetContactDataResponse(output[:n])
}

// @brief Call the selected uwvm_fourier_bridge/GetFsmName service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Uwvm_fourier_bridgeGetFsmNameRequest, response=Ros1Uwvm_fourier_bridgeGetFsmNameResponse.
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
func CallRos1Uwvm_fourier_bridgeGetFsmName(o *ros.Capability, q Ros1Uwvm_fourier_bridgeGetFsmNameRequest, output []byte) (Ros1Uwvm_fourier_bridgeGetFsmNameResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Uwvm_fourier_bridgeGetFsmNameResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Uwvm_fourier_bridgeGetFsmNameResponse{}, e
	}
	return DecodeRos1Uwvm_fourier_bridgeGetFsmNameResponse(output[:n])
}

// @brief Call the selected uwvm_fourier_bridge/GetFsmState service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Uwvm_fourier_bridgeGetFsmStateRequest, response=Ros1Uwvm_fourier_bridgeGetFsmStateResponse.
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
func CallRos1Uwvm_fourier_bridgeGetFsmState(o *ros.Capability, q Ros1Uwvm_fourier_bridgeGetFsmStateRequest, output []byte) (Ros1Uwvm_fourier_bridgeGetFsmStateResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Uwvm_fourier_bridgeGetFsmStateResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Uwvm_fourier_bridgeGetFsmStateResponse{}, e
	}
	return DecodeRos1Uwvm_fourier_bridgeGetFsmStateResponse(output[:n])
}

// @brief Call the selected uwvm_fourier_bridge/GetGroupMotionState service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest,
// response=Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse.
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
func CallRos1Uwvm_fourier_bridgeGetGroupMotionState(o *ros.Capability, q Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest, output []byte) (Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse{}, e
	}
	return DecodeRos1Uwvm_fourier_bridgeGetGroupMotionStateResponse(output[:n])
}

// @brief Call the selected uwvm_fourier_bridge/GetGroupMotorCfg service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest, response=Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse.
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
func CallRos1Uwvm_fourier_bridgeGetGroupMotorCfg(o *ros.Capability, q Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest, output []byte) (Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse{}, e
	}
	return DecodeRos1Uwvm_fourier_bridgeGetGroupMotorCfgResponse(output[:n])
}

// @brief Call the selected uwvm_fourier_bridge/GetGroupState service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Uwvm_fourier_bridgeGetGroupStateRequest, response=Ros1Uwvm_fourier_bridgeGetGroupStateResponse.
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
func CallRos1Uwvm_fourier_bridgeGetGroupState(o *ros.Capability, q Ros1Uwvm_fourier_bridgeGetGroupStateRequest, output []byte) (Ros1Uwvm_fourier_bridgeGetGroupStateResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Uwvm_fourier_bridgeGetGroupStateResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Uwvm_fourier_bridgeGetGroupStateResponse{}, e
	}
	return DecodeRos1Uwvm_fourier_bridgeGetGroupStateResponse(output[:n])
}

// @brief Call the selected uwvm_fourier_bridge/GetSnapshot service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Uwvm_fourier_bridgeGetSnapshotRequest, response=Ros1Uwvm_fourier_bridgeGetSnapshotResponse.
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
func CallRos1Uwvm_fourier_bridgeGetSnapshot(o *ros.Capability, q Ros1Uwvm_fourier_bridgeGetSnapshotRequest, output []byte) (Ros1Uwvm_fourier_bridgeGetSnapshotResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Uwvm_fourier_bridgeGetSnapshotResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Uwvm_fourier_bridgeGetSnapshotResponse{}, e
	}
	return DecodeRos1Uwvm_fourier_bridgeGetSnapshotResponse(output[:n])
}

// @brief Call the selected uwvm_fourier_bridge/GetStandPose service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Uwvm_fourier_bridgeGetStandPoseRequest, response=Ros1Uwvm_fourier_bridgeGetStandPoseResponse.
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
func CallRos1Uwvm_fourier_bridgeGetStandPose(o *ros.Capability, q Ros1Uwvm_fourier_bridgeGetStandPoseRequest, output []byte) (Ros1Uwvm_fourier_bridgeGetStandPoseResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Uwvm_fourier_bridgeGetStandPoseResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Uwvm_fourier_bridgeGetStandPoseResponse{}, e
	}
	return DecodeRos1Uwvm_fourier_bridgeGetStandPoseResponse(output[:n])
}

// @brief Call the selected uwvm_fourier_bridge/GetUpperFsmName service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest, response=Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse.
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
func CallRos1Uwvm_fourier_bridgeGetUpperFsmName(o *ros.Capability, q Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest, output []byte) (Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse{}, e
	}
	return DecodeRos1Uwvm_fourier_bridgeGetUpperFsmNameResponse(output[:n])
}

// @brief Call the selected uwvm_fourier_bridge/GetUpperFsmState service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest, response=Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse.
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
func CallRos1Uwvm_fourier_bridgeGetUpperFsmState(o *ros.Capability, q Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest, output []byte) (Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse{}, e
	}
	return DecodeRos1Uwvm_fourier_bridgeGetUpperFsmStateResponse(output[:n])
}

// @brief Call the selected uwvm_fourier_bridge/GetVelocitySource service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest,
// response=Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse.
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
func CallRos1Uwvm_fourier_bridgeGetVelocitySource(o *ros.Capability, q Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest, output []byte) (Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse{}, e
	}
	return DecodeRos1Uwvm_fourier_bridgeGetVelocitySourceResponse(output[:n])
}

// @brief Call the selected uwvm_fourier_bridge/GetVelocitySourceName service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest,
// response=Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse.
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
func CallRos1Uwvm_fourier_bridgeGetVelocitySourceName(o *ros.Capability, q Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest, output []byte) (Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse{}, e
	}
	return DecodeRos1Uwvm_fourier_bridgeGetVelocitySourceNameResponse(output[:n])
}

// @brief Publish one complete uwvm_fourier_bridge/GroupState message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Uwvm_fourier_bridgeGroupState.
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
func PublishRos1Uwvm_fourier_bridgeGroupState(o *ros.Capability, v Ros1Uwvm_fourier_bridgeGroupState) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete uwvm_fourier_bridge/GroupState message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Uwvm_fourier_bridgeGroupState.
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
func PollRos1Uwvm_fourier_bridgeGroupState(o *ros.Capability, scratch []byte) (Ros1Uwvm_fourier_bridgeGroupState, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Uwvm_fourier_bridgeGroupState{}, e
	}
	return DecodeRos1Uwvm_fourier_bridgeGroupState(scratch[:n])
}

// @brief Publish one complete uwvm_fourier_bridge/GroupValues message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Uwvm_fourier_bridgeGroupValues.
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
func PublishRos1Uwvm_fourier_bridgeGroupValues(o *ros.Capability, v Ros1Uwvm_fourier_bridgeGroupValues) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete uwvm_fourier_bridge/GroupValues message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Uwvm_fourier_bridgeGroupValues.
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
func PollRos1Uwvm_fourier_bridgeGroupValues(o *ros.Capability, scratch []byte) (Ros1Uwvm_fourier_bridgeGroupValues, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Uwvm_fourier_bridgeGroupValues{}, e
	}
	return DecodeRos1Uwvm_fourier_bridgeGroupValues(scratch[:n])
}

// @brief Publish one complete uwvm_fourier_bridge/MotionRecipe message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Uwvm_fourier_bridgeMotionRecipe.
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
func PublishRos1Uwvm_fourier_bridgeMotionRecipe(o *ros.Capability, v Ros1Uwvm_fourier_bridgeMotionRecipe) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete uwvm_fourier_bridge/MotionRecipe message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Uwvm_fourier_bridgeMotionRecipe.
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
func PollRos1Uwvm_fourier_bridgeMotionRecipe(o *ros.Capability, scratch []byte) (Ros1Uwvm_fourier_bridgeMotionRecipe, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Uwvm_fourier_bridgeMotionRecipe{}, e
	}
	return DecodeRos1Uwvm_fourier_bridgeMotionRecipe(scratch[:n])
}

// @brief Call the selected uwvm_fourier_bridge/SetFsmState service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Uwvm_fourier_bridgeSetFsmStateRequest, response=Ros1Uwvm_fourier_bridgeSetFsmStateResponse.
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
func CallRos1Uwvm_fourier_bridgeSetFsmState(o *ros.Capability, q Ros1Uwvm_fourier_bridgeSetFsmStateRequest, output []byte) (Ros1Uwvm_fourier_bridgeSetFsmStateResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Uwvm_fourier_bridgeSetFsmStateResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Uwvm_fourier_bridgeSetFsmStateResponse{}, e
	}
	return DecodeRos1Uwvm_fourier_bridgeSetFsmStateResponse(output[:n])
}

// @brief Call the selected uwvm_fourier_bridge/SetGroupCommand service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Uwvm_fourier_bridgeSetGroupCommandRequest, response=Ros1Uwvm_fourier_bridgeSetGroupCommandResponse.
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
func CallRos1Uwvm_fourier_bridgeSetGroupCommand(o *ros.Capability, q Ros1Uwvm_fourier_bridgeSetGroupCommandRequest, output []byte) (Ros1Uwvm_fourier_bridgeSetGroupCommandResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Uwvm_fourier_bridgeSetGroupCommandResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Uwvm_fourier_bridgeSetGroupCommandResponse{}, e
	}
	return DecodeRos1Uwvm_fourier_bridgeSetGroupCommandResponse(output[:n])
}

// @brief Call the selected uwvm_fourier_bridge/SetMotorCfgPd service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest, response=Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse.
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
func CallRos1Uwvm_fourier_bridgeSetMotorCfgPd(o *ros.Capability, q Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest, output []byte) (Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse{}, e
	}
	return DecodeRos1Uwvm_fourier_bridgeSetMotorCfgPdResponse(output[:n])
}

// @brief Call the selected uwvm_fourier_bridge/SetStandPose service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Uwvm_fourier_bridgeSetStandPoseRequest, response=Ros1Uwvm_fourier_bridgeSetStandPoseResponse.
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
func CallRos1Uwvm_fourier_bridgeSetStandPose(o *ros.Capability, q Ros1Uwvm_fourier_bridgeSetStandPoseRequest, output []byte) (Ros1Uwvm_fourier_bridgeSetStandPoseResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Uwvm_fourier_bridgeSetStandPoseResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Uwvm_fourier_bridgeSetStandPoseResponse{}, e
	}
	return DecodeRos1Uwvm_fourier_bridgeSetStandPoseResponse(output[:n])
}

// @brief Call the selected uwvm_fourier_bridge/SetUpperFsmState service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest, response=Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse.
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
func CallRos1Uwvm_fourier_bridgeSetUpperFsmState(o *ros.Capability, q Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest, output []byte) (Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse{}, e
	}
	return DecodeRos1Uwvm_fourier_bridgeSetUpperFsmStateResponse(output[:n])
}

// @brief Call the selected uwvm_fourier_bridge/SetVelocity service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Uwvm_fourier_bridgeSetVelocityRequest, response=Ros1Uwvm_fourier_bridgeSetVelocityResponse.
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
func CallRos1Uwvm_fourier_bridgeSetVelocity(o *ros.Capability, q Ros1Uwvm_fourier_bridgeSetVelocityRequest, output []byte) (Ros1Uwvm_fourier_bridgeSetVelocityResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Uwvm_fourier_bridgeSetVelocityResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Uwvm_fourier_bridgeSetVelocityResponse{}, e
	}
	return DecodeRos1Uwvm_fourier_bridgeSetVelocityResponse(output[:n])
}

// @brief Call the selected uwvm_fourier_bridge/SetVelocitySource service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest,
// response=Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse.
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
func CallRos1Uwvm_fourier_bridgeSetVelocitySource(o *ros.Capability, q Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest, output []byte) (Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse{}, e
	}
	return DecodeRos1Uwvm_fourier_bridgeSetVelocitySourceResponse(output[:n])
}

// @brief Publish one complete uwvm_fourier_bridge/Status message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Uwvm_fourier_bridgeStatus.
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
func PublishRos1Uwvm_fourier_bridgeStatus(o *ros.Capability, v Ros1Uwvm_fourier_bridgeStatus) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete uwvm_fourier_bridge/Status message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Uwvm_fourier_bridgeStatus.
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
func PollRos1Uwvm_fourier_bridgeStatus(o *ros.Capability, scratch []byte) (Ros1Uwvm_fourier_bridgeStatus, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Uwvm_fourier_bridgeStatus{}, e
	}
	return DecodeRos1Uwvm_fourier_bridgeStatus(scratch[:n])
}

// @brief Publish one complete uwvm_fourier_bridge/VelocityCommand message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Uwvm_fourier_bridgeVelocityCommand.
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
func PublishRos1Uwvm_fourier_bridgeVelocityCommand(o *ros.Capability, v Ros1Uwvm_fourier_bridgeVelocityCommand) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete uwvm_fourier_bridge/VelocityCommand message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Uwvm_fourier_bridgeVelocityCommand.
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
func PollRos1Uwvm_fourier_bridgeVelocityCommand(o *ros.Capability, scratch []byte) (Ros1Uwvm_fourier_bridgeVelocityCommand, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros1Uwvm_fourier_bridgeVelocityCommand{}, e
	}
	return DecodeRos1Uwvm_fourier_bridgeVelocityCommand(scratch[:n])
}

// @brief Call the selected uwvm_fourier_bridge/WaitGroupsMotionComplete service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest,
// response=Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse.
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
func CallRos1Uwvm_fourier_bridgeWaitGroupsMotionComplete(o *ros.Capability, q Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest, output []byte) (Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse{}, e
	}
	return DecodeRos1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse(output[:n])
}
