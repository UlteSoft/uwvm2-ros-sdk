// @file bounded_interfaces.go
// @brief Full fourier tinygo codecs and original record metadata.
// @details Complete fourier ros2_aurora_bridge_v1 values in tinygo. 51 original records retain 138 fields and 28
// interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
// definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
// profile API manual under document/platform/fourier/en_US/catalog/.
// Generated typed interfaces; separately granted exact native aliases.
package customtypes

import ros "uwvm2.local/roswasm"

// @brief Publish one complete uwvm_fourier_bridge/msg/GroupState message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros2Uwvm_fourier_bridgeMsgGroupState.
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
func PublishRos2Uwvm_fourier_bridgeMsgGroupState(o *ros.Capability, v Ros2Uwvm_fourier_bridgeMsgGroupState) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete uwvm_fourier_bridge/msg/GroupState message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Uwvm_fourier_bridgeMsgGroupState.
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
func PollRos2Uwvm_fourier_bridgeMsgGroupState(o *ros.Capability, scratch []byte) (Ros2Uwvm_fourier_bridgeMsgGroupState, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Uwvm_fourier_bridgeMsgGroupState{}, e
	}
	return DecodeRos2Uwvm_fourier_bridgeMsgGroupState(scratch[:n])
}

// @brief Publish one complete uwvm_fourier_bridge/msg/GroupValues message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros2Uwvm_fourier_bridgeMsgGroupValues.
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
func PublishRos2Uwvm_fourier_bridgeMsgGroupValues(o *ros.Capability, v Ros2Uwvm_fourier_bridgeMsgGroupValues) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete uwvm_fourier_bridge/msg/GroupValues message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros2Uwvm_fourier_bridgeMsgGroupValues.
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
func PollRos2Uwvm_fourier_bridgeMsgGroupValues(o *ros.Capability, scratch []byte) (Ros2Uwvm_fourier_bridgeMsgGroupValues, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Uwvm_fourier_bridgeMsgGroupValues{}, e
	}
	return DecodeRos2Uwvm_fourier_bridgeMsgGroupValues(scratch[:n])
}

// @brief Publish one complete uwvm_fourier_bridge/msg/MotionRecipe message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros2Uwvm_fourier_bridgeMsgMotionRecipe.
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
func PublishRos2Uwvm_fourier_bridgeMsgMotionRecipe(o *ros.Capability, v Ros2Uwvm_fourier_bridgeMsgMotionRecipe) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete uwvm_fourier_bridge/msg/MotionRecipe message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros2Uwvm_fourier_bridgeMsgMotionRecipe.
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
func PollRos2Uwvm_fourier_bridgeMsgMotionRecipe(o *ros.Capability, scratch []byte) (Ros2Uwvm_fourier_bridgeMsgMotionRecipe, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Uwvm_fourier_bridgeMsgMotionRecipe{}, e
	}
	return DecodeRos2Uwvm_fourier_bridgeMsgMotionRecipe(scratch[:n])
}

// @brief Publish one complete uwvm_fourier_bridge/msg/Status message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Uwvm_fourier_bridgeMsgStatus.
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
func PublishRos2Uwvm_fourier_bridgeMsgStatus(o *ros.Capability, v Ros2Uwvm_fourier_bridgeMsgStatus) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete uwvm_fourier_bridge/msg/Status message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Uwvm_fourier_bridgeMsgStatus.
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
func PollRos2Uwvm_fourier_bridgeMsgStatus(o *ros.Capability, scratch []byte) (Ros2Uwvm_fourier_bridgeMsgStatus, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Uwvm_fourier_bridgeMsgStatus{}, e
	}
	return DecodeRos2Uwvm_fourier_bridgeMsgStatus(scratch[:n])
}

// @brief Publish one complete uwvm_fourier_bridge/msg/VelocityCommand message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros2Uwvm_fourier_bridgeMsgVelocityCommand.
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
func PublishRos2Uwvm_fourier_bridgeMsgVelocityCommand(o *ros.Capability, v Ros2Uwvm_fourier_bridgeMsgVelocityCommand) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete uwvm_fourier_bridge/msg/VelocityCommand message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros2Uwvm_fourier_bridgeMsgVelocityCommand.
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
func PollRos2Uwvm_fourier_bridgeMsgVelocityCommand(o *ros.Capability, scratch []byte) (Ros2Uwvm_fourier_bridgeMsgVelocityCommand, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Uwvm_fourier_bridgeMsgVelocityCommand{}, e
	}
	return DecodeRos2Uwvm_fourier_bridgeMsgVelocityCommand(scratch[:n])
}

// @brief Call the selected uwvm_fourier_bridge/srv/ExecuteMove service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request, response=Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response.
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
func CallRos2Uwvm_fourier_bridgeSrvExecuteMove(o *ros.Capability, q Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request, output []byte) (Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response{}, e
	}
	return DecodeRos2Uwvm_fourier_bridgeSrvExecuteMove_Response(output[:n])
}

// @brief Call the selected uwvm_fourier_bridge/srv/GetBaseData service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request, response=Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response.
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
func CallRos2Uwvm_fourier_bridgeSrvGetBaseData(o *ros.Capability, q Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request, output []byte) (Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response{}, e
	}
	return DecodeRos2Uwvm_fourier_bridgeSrvGetBaseData_Response(output[:n])
}

// @brief Call the selected uwvm_fourier_bridge/srv/GetCartesianState service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request,
// response=Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response.
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
func CallRos2Uwvm_fourier_bridgeSrvGetCartesianState(o *ros.Capability, q Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request, output []byte) (Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response{}, e
	}
	return DecodeRos2Uwvm_fourier_bridgeSrvGetCartesianState_Response(output[:n])
}

// @brief Call the selected uwvm_fourier_bridge/srv/GetContactData service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Uwvm_fourier_bridgeSrvGetContactData_Request,
// response=Ros2Uwvm_fourier_bridgeSrvGetContactData_Response.
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
func CallRos2Uwvm_fourier_bridgeSrvGetContactData(o *ros.Capability, q Ros2Uwvm_fourier_bridgeSrvGetContactData_Request, output []byte) (Ros2Uwvm_fourier_bridgeSrvGetContactData_Response, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros2Uwvm_fourier_bridgeSrvGetContactData_Response{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros2Uwvm_fourier_bridgeSrvGetContactData_Response{}, e
	}
	return DecodeRos2Uwvm_fourier_bridgeSrvGetContactData_Response(output[:n])
}

// @brief Call the selected uwvm_fourier_bridge/srv/GetFsmName service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request, response=Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response.
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
func CallRos2Uwvm_fourier_bridgeSrvGetFsmName(o *ros.Capability, q Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request, output []byte) (Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response{}, e
	}
	return DecodeRos2Uwvm_fourier_bridgeSrvGetFsmName_Response(output[:n])
}

// @brief Call the selected uwvm_fourier_bridge/srv/GetFsmState service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request, response=Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response.
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
func CallRos2Uwvm_fourier_bridgeSrvGetFsmState(o *ros.Capability, q Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request, output []byte) (Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response{}, e
	}
	return DecodeRos2Uwvm_fourier_bridgeSrvGetFsmState_Response(output[:n])
}

// @brief Call the selected uwvm_fourier_bridge/srv/GetGroupMotionState service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request,
// response=Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response.
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
func CallRos2Uwvm_fourier_bridgeSrvGetGroupMotionState(o *ros.Capability, q Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request, output []byte) (Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response{}, e
	}
	return DecodeRos2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response(output[:n])
}

// @brief Call the selected uwvm_fourier_bridge/srv/GetGroupMotorCfg service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request,
// response=Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response.
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
func CallRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg(o *ros.Capability, q Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request, output []byte) (Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response{}, e
	}
	return DecodeRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response(output[:n])
}

// @brief Call the selected uwvm_fourier_bridge/srv/GetGroupState service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request,
// response=Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response.
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
func CallRos2Uwvm_fourier_bridgeSrvGetGroupState(o *ros.Capability, q Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request, output []byte) (Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response{}, e
	}
	return DecodeRos2Uwvm_fourier_bridgeSrvGetGroupState_Response(output[:n])
}

// @brief Call the selected uwvm_fourier_bridge/srv/GetSnapshot service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request, response=Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response.
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
func CallRos2Uwvm_fourier_bridgeSrvGetSnapshot(o *ros.Capability, q Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request, output []byte) (Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response{}, e
	}
	return DecodeRos2Uwvm_fourier_bridgeSrvGetSnapshot_Response(output[:n])
}

// @brief Call the selected uwvm_fourier_bridge/srv/GetStandPose service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request, response=Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response.
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
func CallRos2Uwvm_fourier_bridgeSrvGetStandPose(o *ros.Capability, q Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request, output []byte) (Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response{}, e
	}
	return DecodeRos2Uwvm_fourier_bridgeSrvGetStandPose_Response(output[:n])
}

// @brief Call the selected uwvm_fourier_bridge/srv/GetUpperFsmName service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request,
// response=Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response.
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
func CallRos2Uwvm_fourier_bridgeSrvGetUpperFsmName(o *ros.Capability, q Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request, output []byte) (Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response{}, e
	}
	return DecodeRos2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response(output[:n])
}

// @brief Call the selected uwvm_fourier_bridge/srv/GetUpperFsmState service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request,
// response=Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response.
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
func CallRos2Uwvm_fourier_bridgeSrvGetUpperFsmState(o *ros.Capability, q Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request, output []byte) (Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response{}, e
	}
	return DecodeRos2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response(output[:n])
}

// @brief Call the selected uwvm_fourier_bridge/srv/GetVelocitySource service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request,
// response=Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response.
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
func CallRos2Uwvm_fourier_bridgeSrvGetVelocitySource(o *ros.Capability, q Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request, output []byte) (Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response{}, e
	}
	return DecodeRos2Uwvm_fourier_bridgeSrvGetVelocitySource_Response(output[:n])
}

// @brief Call the selected uwvm_fourier_bridge/srv/GetVelocitySourceName service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request,
// response=Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response.
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
func CallRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName(o *ros.Capability, q Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request, output []byte) (Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response{}, e
	}
	return DecodeRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response(output[:n])
}

// @brief Call the selected uwvm_fourier_bridge/srv/SetFsmState service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request, response=Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response.
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
func CallRos2Uwvm_fourier_bridgeSrvSetFsmState(o *ros.Capability, q Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request, output []byte) (Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response{}, e
	}
	return DecodeRos2Uwvm_fourier_bridgeSrvSetFsmState_Response(output[:n])
}

// @brief Call the selected uwvm_fourier_bridge/srv/SetGroupCommand service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request,
// response=Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response.
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
func CallRos2Uwvm_fourier_bridgeSrvSetGroupCommand(o *ros.Capability, q Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request, output []byte) (Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response{}, e
	}
	return DecodeRos2Uwvm_fourier_bridgeSrvSetGroupCommand_Response(output[:n])
}

// @brief Call the selected uwvm_fourier_bridge/srv/SetMotorCfgPd service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request,
// response=Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response.
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
func CallRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd(o *ros.Capability, q Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request, output []byte) (Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response{}, e
	}
	return DecodeRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response(output[:n])
}

// @brief Call the selected uwvm_fourier_bridge/srv/SetStandPose service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request, response=Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response.
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
func CallRos2Uwvm_fourier_bridgeSrvSetStandPose(o *ros.Capability, q Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request, output []byte) (Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response{}, e
	}
	return DecodeRos2Uwvm_fourier_bridgeSrvSetStandPose_Response(output[:n])
}

// @brief Call the selected uwvm_fourier_bridge/srv/SetUpperFsmState service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request,
// response=Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response.
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
func CallRos2Uwvm_fourier_bridgeSrvSetUpperFsmState(o *ros.Capability, q Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request, output []byte) (Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response{}, e
	}
	return DecodeRos2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response(output[:n])
}

// @brief Call the selected uwvm_fourier_bridge/srv/SetVelocity service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request, response=Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response.
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
func CallRos2Uwvm_fourier_bridgeSrvSetVelocity(o *ros.Capability, q Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request, output []byte) (Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response{}, e
	}
	return DecodeRos2Uwvm_fourier_bridgeSrvSetVelocity_Response(output[:n])
}

// @brief Call the selected uwvm_fourier_bridge/srv/SetVelocitySource service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request,
// response=Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response.
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
func CallRos2Uwvm_fourier_bridgeSrvSetVelocitySource(o *ros.Capability, q Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request, output []byte) (Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response{}, e
	}
	return DecodeRos2Uwvm_fourier_bridgeSrvSetVelocitySource_Response(output[:n])
}

// @brief Call the selected uwvm_fourier_bridge/srv/WaitGroupsMotionComplete service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request,
// response=Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response.
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
func CallRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete(o *ros.Capability, q Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request, output []byte) (Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response{}, e
	}
	return DecodeRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response(output[:n])
}
