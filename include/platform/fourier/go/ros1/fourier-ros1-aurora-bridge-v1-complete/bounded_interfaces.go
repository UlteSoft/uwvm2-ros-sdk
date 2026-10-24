// @file bounded_interfaces.go
// @brief Full fourier go codecs and original record metadata.
// @details Complete fourier ros1_aurora_bridge_v1 values in go. 51 original records retain 138 fields and 28
// interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
// definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
// profile API manual under document/platform/fourier/en_US/catalog/.
// Generated typed interfaces; separately granted exact native aliases.
package customtypes

import ros "uwvm2.local/roswasmgo"

// @brief Call the selected uwvm_fourier_bridge/ExecuteMove service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Uwvm_fourier_bridgeExecuteMoveRequest, response=Ros1Uwvm_fourier_bridgeExecuteMoveResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Uwvm_fourier_bridgeExecuteMove(o *ros.Owner, q Ros1Uwvm_fourier_bridgeExecuteMoveRequest) (Ros1Uwvm_fourier_bridgeExecuteMoveResponse, error) {
	return ros.CallValue(o, q, 136, DecodeRos1Uwvm_fourier_bridgeExecuteMoveResponse)
}

// @brief Call the selected uwvm_fourier_bridge/GetBaseData service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Uwvm_fourier_bridgeGetBaseDataRequest, response=Ros1Uwvm_fourier_bridgeGetBaseDataResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Uwvm_fourier_bridgeGetBaseData(o *ros.Owner, q Ros1Uwvm_fourier_bridgeGetBaseDataRequest) (Ros1Uwvm_fourier_bridgeGetBaseDataResponse, error) {
	return ros.CallValue(o, q, 652, DecodeRos1Uwvm_fourier_bridgeGetBaseDataResponse)
}

// @brief Call the selected uwvm_fourier_bridge/GetCartesianState service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Uwvm_fourier_bridgeGetCartesianStateRequest,
// response=Ros1Uwvm_fourier_bridgeGetCartesianStateResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Uwvm_fourier_bridgeGetCartesianState(o *ros.Owner, q Ros1Uwvm_fourier_bridgeGetCartesianStateRequest) (Ros1Uwvm_fourier_bridgeGetCartesianStateResponse, error) {
	return ros.CallValue(o, q, 652, DecodeRos1Uwvm_fourier_bridgeGetCartesianStateResponse)
}

// @brief Call the selected uwvm_fourier_bridge/GetContactData service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Uwvm_fourier_bridgeGetContactDataRequest, response=Ros1Uwvm_fourier_bridgeGetContactDataResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Uwvm_fourier_bridgeGetContactData(o *ros.Owner, q Ros1Uwvm_fourier_bridgeGetContactDataRequest) (Ros1Uwvm_fourier_bridgeGetContactDataResponse, error) {
	return ros.CallValue(o, q, 652, DecodeRos1Uwvm_fourier_bridgeGetContactDataResponse)
}

// @brief Call the selected uwvm_fourier_bridge/GetFsmName service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Uwvm_fourier_bridgeGetFsmNameRequest, response=Ros1Uwvm_fourier_bridgeGetFsmNameResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Uwvm_fourier_bridgeGetFsmName(o *ros.Owner, q Ros1Uwvm_fourier_bridgeGetFsmNameRequest) (Ros1Uwvm_fourier_bridgeGetFsmNameResponse, error) {
	return ros.CallValue(o, q, 268, DecodeRos1Uwvm_fourier_bridgeGetFsmNameResponse)
}

// @brief Call the selected uwvm_fourier_bridge/GetFsmState service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Uwvm_fourier_bridgeGetFsmStateRequest, response=Ros1Uwvm_fourier_bridgeGetFsmStateResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Uwvm_fourier_bridgeGetFsmState(o *ros.Owner, q Ros1Uwvm_fourier_bridgeGetFsmStateRequest) (Ros1Uwvm_fourier_bridgeGetFsmStateResponse, error) {
	return ros.CallValue(o, q, 140, DecodeRos1Uwvm_fourier_bridgeGetFsmStateResponse)
}

// @brief Call the selected uwvm_fourier_bridge/GetGroupMotionState service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest,
// response=Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Uwvm_fourier_bridgeGetGroupMotionState(o *ros.Owner, q Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest) (Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse, error) {
	return ros.CallValue(o, q, 140, DecodeRos1Uwvm_fourier_bridgeGetGroupMotionStateResponse)
}

// @brief Call the selected uwvm_fourier_bridge/GetGroupMotorCfg service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest, response=Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Uwvm_fourier_bridgeGetGroupMotorCfg(o *ros.Owner, q Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest) (Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse, error) {
	return ros.CallValue(o, q, 652, DecodeRos1Uwvm_fourier_bridgeGetGroupMotorCfgResponse)
}

// @brief Call the selected uwvm_fourier_bridge/GetGroupState service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Uwvm_fourier_bridgeGetGroupStateRequest, response=Ros1Uwvm_fourier_bridgeGetGroupStateResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Uwvm_fourier_bridgeGetGroupState(o *ros.Owner, q Ros1Uwvm_fourier_bridgeGetGroupStateRequest) (Ros1Uwvm_fourier_bridgeGetGroupStateResponse, error) {
	return ros.CallValue(o, q, 652, DecodeRos1Uwvm_fourier_bridgeGetGroupStateResponse)
}

// @brief Call the selected uwvm_fourier_bridge/GetSnapshot service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Uwvm_fourier_bridgeGetSnapshotRequest, response=Ros1Uwvm_fourier_bridgeGetSnapshotResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Uwvm_fourier_bridgeGetSnapshot(o *ros.Owner, q Ros1Uwvm_fourier_bridgeGetSnapshotRequest) (Ros1Uwvm_fourier_bridgeGetSnapshotResponse, error) {
	return ros.CallValue(o, q, 14536, DecodeRos1Uwvm_fourier_bridgeGetSnapshotResponse)
}

// @brief Call the selected uwvm_fourier_bridge/GetStandPose service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Uwvm_fourier_bridgeGetStandPoseRequest, response=Ros1Uwvm_fourier_bridgeGetStandPoseResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Uwvm_fourier_bridgeGetStandPose(o *ros.Owner, q Ros1Uwvm_fourier_bridgeGetStandPoseRequest) (Ros1Uwvm_fourier_bridgeGetStandPoseResponse, error) {
	return ros.CallValue(o, q, 652, DecodeRos1Uwvm_fourier_bridgeGetStandPoseResponse)
}

// @brief Call the selected uwvm_fourier_bridge/GetUpperFsmName service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest, response=Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Uwvm_fourier_bridgeGetUpperFsmName(o *ros.Owner, q Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest) (Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse, error) {
	return ros.CallValue(o, q, 268, DecodeRos1Uwvm_fourier_bridgeGetUpperFsmNameResponse)
}

// @brief Call the selected uwvm_fourier_bridge/GetUpperFsmState service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest, response=Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Uwvm_fourier_bridgeGetUpperFsmState(o *ros.Owner, q Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest) (Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse, error) {
	return ros.CallValue(o, q, 140, DecodeRos1Uwvm_fourier_bridgeGetUpperFsmStateResponse)
}

// @brief Call the selected uwvm_fourier_bridge/GetVelocitySource service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest,
// response=Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Uwvm_fourier_bridgeGetVelocitySource(o *ros.Owner, q Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest) (Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse, error) {
	return ros.CallValue(o, q, 140, DecodeRos1Uwvm_fourier_bridgeGetVelocitySourceResponse)
}

// @brief Call the selected uwvm_fourier_bridge/GetVelocitySourceName service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest,
// response=Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Uwvm_fourier_bridgeGetVelocitySourceName(o *ros.Owner, q Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest) (Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse, error) {
	return ros.CallValue(o, q, 268, DecodeRos1Uwvm_fourier_bridgeGetVelocitySourceNameResponse)
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
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Uwvm_fourier_bridgeGroupState(o *ros.Owner, v Ros1Uwvm_fourier_bridgeGroupState) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete uwvm_fourier_bridge/GroupState message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Uwvm_fourier_bridgeGroupState.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Uwvm_fourier_bridgeGroupState(o *ros.Owner) (Ros1Uwvm_fourier_bridgeGroupState, error) {
	return ros.PollValue(o, 1684, DecodeRos1Uwvm_fourier_bridgeGroupState)
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
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Uwvm_fourier_bridgeGroupValues(o *ros.Owner, v Ros1Uwvm_fourier_bridgeGroupValues) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete uwvm_fourier_bridge/GroupValues message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Uwvm_fourier_bridgeGroupValues.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Uwvm_fourier_bridgeGroupValues(o *ros.Owner) (Ros1Uwvm_fourier_bridgeGroupValues, error) {
	return ros.PollValue(o, 648, DecodeRos1Uwvm_fourier_bridgeGroupValues)
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
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Uwvm_fourier_bridgeMotionRecipe(o *ros.Owner, v Ros1Uwvm_fourier_bridgeMotionRecipe) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete uwvm_fourier_bridge/MotionRecipe message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Uwvm_fourier_bridgeMotionRecipe.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Uwvm_fourier_bridgeMotionRecipe(o *ros.Owner) (Ros1Uwvm_fourier_bridgeMotionRecipe, error) {
	return ros.PollValue(o, 1170, DecodeRos1Uwvm_fourier_bridgeMotionRecipe)
}

// @brief Call the selected uwvm_fourier_bridge/SetFsmState service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Uwvm_fourier_bridgeSetFsmStateRequest, response=Ros1Uwvm_fourier_bridgeSetFsmStateResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Uwvm_fourier_bridgeSetFsmState(o *ros.Owner, q Ros1Uwvm_fourier_bridgeSetFsmStateRequest) (Ros1Uwvm_fourier_bridgeSetFsmStateResponse, error) {
	return ros.CallValue(o, q, 136, DecodeRos1Uwvm_fourier_bridgeSetFsmStateResponse)
}

// @brief Call the selected uwvm_fourier_bridge/SetGroupCommand service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Uwvm_fourier_bridgeSetGroupCommandRequest, response=Ros1Uwvm_fourier_bridgeSetGroupCommandResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Uwvm_fourier_bridgeSetGroupCommand(o *ros.Owner, q Ros1Uwvm_fourier_bridgeSetGroupCommandRequest) (Ros1Uwvm_fourier_bridgeSetGroupCommandResponse, error) {
	return ros.CallValue(o, q, 136, DecodeRos1Uwvm_fourier_bridgeSetGroupCommandResponse)
}

// @brief Call the selected uwvm_fourier_bridge/SetMotorCfgPd service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest, response=Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Uwvm_fourier_bridgeSetMotorCfgPd(o *ros.Owner, q Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest) (Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse, error) {
	return ros.CallValue(o, q, 136, DecodeRos1Uwvm_fourier_bridgeSetMotorCfgPdResponse)
}

// @brief Call the selected uwvm_fourier_bridge/SetStandPose service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Uwvm_fourier_bridgeSetStandPoseRequest, response=Ros1Uwvm_fourier_bridgeSetStandPoseResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Uwvm_fourier_bridgeSetStandPose(o *ros.Owner, q Ros1Uwvm_fourier_bridgeSetStandPoseRequest) (Ros1Uwvm_fourier_bridgeSetStandPoseResponse, error) {
	return ros.CallValue(o, q, 136, DecodeRos1Uwvm_fourier_bridgeSetStandPoseResponse)
}

// @brief Call the selected uwvm_fourier_bridge/SetUpperFsmState service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest, response=Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Uwvm_fourier_bridgeSetUpperFsmState(o *ros.Owner, q Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest) (Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse, error) {
	return ros.CallValue(o, q, 136, DecodeRos1Uwvm_fourier_bridgeSetUpperFsmStateResponse)
}

// @brief Call the selected uwvm_fourier_bridge/SetVelocity service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Uwvm_fourier_bridgeSetVelocityRequest, response=Ros1Uwvm_fourier_bridgeSetVelocityResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Uwvm_fourier_bridgeSetVelocity(o *ros.Owner, q Ros1Uwvm_fourier_bridgeSetVelocityRequest) (Ros1Uwvm_fourier_bridgeSetVelocityResponse, error) {
	return ros.CallValue(o, q, 136, DecodeRos1Uwvm_fourier_bridgeSetVelocityResponse)
}

// @brief Call the selected uwvm_fourier_bridge/SetVelocitySource service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest,
// response=Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Uwvm_fourier_bridgeSetVelocitySource(o *ros.Owner, q Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest) (Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse, error) {
	return ros.CallValue(o, q, 136, DecodeRos1Uwvm_fourier_bridgeSetVelocitySourceResponse)
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
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Uwvm_fourier_bridgeStatus(o *ros.Owner, v Ros1Uwvm_fourier_bridgeStatus) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete uwvm_fourier_bridge/Status message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Uwvm_fourier_bridgeStatus.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Uwvm_fourier_bridgeStatus(o *ros.Owner) (Ros1Uwvm_fourier_bridgeStatus, error) {
	return ros.PollValue(o, 14400, DecodeRos1Uwvm_fourier_bridgeStatus)
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
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Uwvm_fourier_bridgeVelocityCommand(o *ros.Owner, v Ros1Uwvm_fourier_bridgeVelocityCommand) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete uwvm_fourier_bridge/VelocityCommand message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Uwvm_fourier_bridgeVelocityCommand.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Uwvm_fourier_bridgeVelocityCommand(o *ros.Owner) (Ros1Uwvm_fourier_bridgeVelocityCommand, error) {
	return ros.PollValue(o, 40, DecodeRos1Uwvm_fourier_bridgeVelocityCommand)
}

// @brief Call the selected uwvm_fourier_bridge/WaitGroupsMotionComplete service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest,
// response=Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Uwvm_fourier_bridgeWaitGroupsMotionComplete(o *ros.Owner, q Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest) (Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse, error) {
	return ros.CallValue(o, q, 137, DecodeRos1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse)
}
