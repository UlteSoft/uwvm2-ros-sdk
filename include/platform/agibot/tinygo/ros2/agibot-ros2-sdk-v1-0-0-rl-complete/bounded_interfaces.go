// @file bounded_interfaces.go
// @brief Full agibot tinygo codecs and original record metadata.
// @details Complete agibot ros2_sdk_v1_0_0_rl values in tinygo. 19 original records retain 71 fields and 19
// interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
// definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
// profile API manual under document/platform/agibot/en_US/catalog/.
// Generated typed interfaces; separately granted exact native aliases.
package customtypes

import ros "uwvm2.local/roswasm"

// @brief Publish one complete aimdk_msgs/msg/CommonRequest message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgCommonRequest.
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
func PublishRos2Aimdk_msgsMsgCommonRequest(o *ros.Capability, v Ros2Aimdk_msgsMsgCommonRequest) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/CommonRequest message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgCommonRequest.
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
func PollRos2Aimdk_msgsMsgCommonRequest(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgCommonRequest, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgCommonRequest{}, e
	}
	return DecodeRos2Aimdk_msgsMsgCommonRequest(scratch[:n])
}

// @brief Publish one complete aimdk_msgs/msg/CommonResponse message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgCommonResponse.
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
func PublishRos2Aimdk_msgsMsgCommonResponse(o *ros.Capability, v Ros2Aimdk_msgsMsgCommonResponse) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/CommonResponse message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgCommonResponse.
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
func PollRos2Aimdk_msgsMsgCommonResponse(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgCommonResponse, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgCommonResponse{}, e
	}
	return DecodeRos2Aimdk_msgsMsgCommonResponse(scratch[:n])
}

// @brief Publish one complete aimdk_msgs/msg/CommonState message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgCommonState.
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
func PublishRos2Aimdk_msgsMsgCommonState(o *ros.Capability, v Ros2Aimdk_msgsMsgCommonState) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/CommonState message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgCommonState.
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
func PollRos2Aimdk_msgsMsgCommonState(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgCommonState, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgCommonState{}, e
	}
	return DecodeRos2Aimdk_msgsMsgCommonState(scratch[:n])
}

// @brief Publish one complete aimdk_msgs/msg/CommonTaskResponse message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgCommonTaskResponse.
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
func PublishRos2Aimdk_msgsMsgCommonTaskResponse(o *ros.Capability, v Ros2Aimdk_msgsMsgCommonTaskResponse) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/CommonTaskResponse message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgCommonTaskResponse.
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
func PollRos2Aimdk_msgsMsgCommonTaskResponse(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgCommonTaskResponse, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgCommonTaskResponse{}, e
	}
	return DecodeRos2Aimdk_msgsMsgCommonTaskResponse(scratch[:n])
}

// @brief Publish one complete aimdk_msgs/msg/DomainErrorState message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgDomainErrorState.
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
func PublishRos2Aimdk_msgsMsgDomainErrorState(o *ros.Capability, v Ros2Aimdk_msgsMsgDomainErrorState) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/DomainErrorState message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgDomainErrorState.
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
func PollRos2Aimdk_msgsMsgDomainErrorState(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgDomainErrorState, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgDomainErrorState{}, e
	}
	return DecodeRos2Aimdk_msgsMsgDomainErrorState(scratch[:n])
}

// @brief Publish one complete aimdk_msgs/msg/JointCommand message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgJointCommand.
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
func PublishRos2Aimdk_msgsMsgJointCommand(o *ros.Capability, v Ros2Aimdk_msgsMsgJointCommand) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/JointCommand message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgJointCommand.
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
func PollRos2Aimdk_msgsMsgJointCommand(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgJointCommand, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgJointCommand{}, e
	}
	return DecodeRos2Aimdk_msgsMsgJointCommand(scratch[:n])
}

// @brief Publish one complete aimdk_msgs/msg/JointCommandArray message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgJointCommandArray.
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
func PublishRos2Aimdk_msgsMsgJointCommandArray(o *ros.Capability, v Ros2Aimdk_msgsMsgJointCommandArray) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/JointCommandArray message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgJointCommandArray.
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
func PollRos2Aimdk_msgsMsgJointCommandArray(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgJointCommandArray, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgJointCommandArray{}, e
	}
	return DecodeRos2Aimdk_msgsMsgJointCommandArray(scratch[:n])
}

// @brief Publish one complete aimdk_msgs/msg/JointState message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgJointState.
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
func PublishRos2Aimdk_msgsMsgJointState(o *ros.Capability, v Ros2Aimdk_msgsMsgJointState) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/JointState message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgJointState.
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
func PollRos2Aimdk_msgsMsgJointState(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgJointState, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgJointState{}, e
	}
	return DecodeRos2Aimdk_msgsMsgJointState(scratch[:n])
}

// @brief Publish one complete aimdk_msgs/msg/JointStateArray message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgJointStateArray.
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
func PublishRos2Aimdk_msgsMsgJointStateArray(o *ros.Capability, v Ros2Aimdk_msgsMsgJointStateArray) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/JointStateArray message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgJointStateArray.
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
func PollRos2Aimdk_msgsMsgJointStateArray(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgJointStateArray, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgJointStateArray{}, e
	}
	return DecodeRos2Aimdk_msgsMsgJointStateArray(scratch[:n])
}

// @brief Publish one complete aimdk_msgs/msg/MessageHeader message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMessageHeader.
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
func PublishRos2Aimdk_msgsMsgMessageHeader(o *ros.Capability, v Ros2Aimdk_msgsMsgMessageHeader) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/MessageHeader message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgMessageHeader.
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
func PollRos2Aimdk_msgsMsgMessageHeader(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgMessageHeader, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgMessageHeader{}, e
	}
	return DecodeRos2Aimdk_msgsMsgMessageHeader(scratch[:n])
}

// @brief Publish one complete aimdk_msgs/msg/ModuleChannelInfo message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgModuleChannelInfo.
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
func PublishRos2Aimdk_msgsMsgModuleChannelInfo(o *ros.Capability, v Ros2Aimdk_msgsMsgModuleChannelInfo) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/ModuleChannelInfo message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgModuleChannelInfo.
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
func PollRos2Aimdk_msgsMsgModuleChannelInfo(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgModuleChannelInfo, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgModuleChannelInfo{}, e
	}
	return DecodeRos2Aimdk_msgsMsgModuleChannelInfo(scratch[:n])
}

// @brief Publish one complete aimdk_msgs/msg/ModuleResourceInfo message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgModuleResourceInfo.
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
func PublishRos2Aimdk_msgsMsgModuleResourceInfo(o *ros.Capability, v Ros2Aimdk_msgsMsgModuleResourceInfo) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/ModuleResourceInfo message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgModuleResourceInfo.
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
func PollRos2Aimdk_msgsMsgModuleResourceInfo(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgModuleResourceInfo, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgModuleResourceInfo{}, e
	}
	return DecodeRos2Aimdk_msgsMsgModuleResourceInfo(scratch[:n])
}

// @brief Publish one complete aimdk_msgs/msg/ModuleRpcInfo message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgModuleRpcInfo.
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
func PublishRos2Aimdk_msgsMsgModuleRpcInfo(o *ros.Capability, v Ros2Aimdk_msgsMsgModuleRpcInfo) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/ModuleRpcInfo message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgModuleRpcInfo.
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
func PollRos2Aimdk_msgsMsgModuleRpcInfo(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgModuleRpcInfo, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgModuleRpcInfo{}, e
	}
	return DecodeRos2Aimdk_msgsMsgModuleRpcInfo(scratch[:n])
}

// @brief Publish one complete aimdk_msgs/msg/ProcessInfo message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgProcessInfo.
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
func PublishRos2Aimdk_msgsMsgProcessInfo(o *ros.Capability, v Ros2Aimdk_msgsMsgProcessInfo) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/ProcessInfo message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgProcessInfo.
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
func PollRos2Aimdk_msgsMsgProcessInfo(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgProcessInfo, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgProcessInfo{}, e
	}
	return DecodeRos2Aimdk_msgsMsgProcessInfo(scratch[:n])
}

// @brief Publish one complete aimdk_msgs/msg/ProcessResourceInfo message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros2Aimdk_msgsMsgProcessResourceInfo.
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
func PublishRos2Aimdk_msgsMsgProcessResourceInfo(o *ros.Capability, v Ros2Aimdk_msgsMsgProcessResourceInfo) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/ProcessResourceInfo message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgProcessResourceInfo.
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
func PollRos2Aimdk_msgsMsgProcessResourceInfo(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgProcessResourceInfo, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgProcessResourceInfo{}, e
	}
	return DecodeRos2Aimdk_msgsMsgProcessResourceInfo(scratch[:n])
}

// @brief Publish one complete aimdk_msgs/msg/RequestHeader message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgRequestHeader.
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
func PublishRos2Aimdk_msgsMsgRequestHeader(o *ros.Capability, v Ros2Aimdk_msgsMsgRequestHeader) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/RequestHeader message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgRequestHeader.
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
func PollRos2Aimdk_msgsMsgRequestHeader(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgRequestHeader, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgRequestHeader{}, e
	}
	return DecodeRos2Aimdk_msgsMsgRequestHeader(scratch[:n])
}

// @brief Publish one complete aimdk_msgs/msg/ResponseHeader message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgResponseHeader.
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
func PublishRos2Aimdk_msgsMsgResponseHeader(o *ros.Capability, v Ros2Aimdk_msgsMsgResponseHeader) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/ResponseHeader message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgResponseHeader.
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
func PollRos2Aimdk_msgsMsgResponseHeader(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgResponseHeader, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgResponseHeader{}, e
	}
	return DecodeRos2Aimdk_msgsMsgResponseHeader(scratch[:n])
}

// @brief Publish one complete aimdk_msgs/msg/ThreadResourceInfo message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgThreadResourceInfo.
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
func PublishRos2Aimdk_msgsMsgThreadResourceInfo(o *ros.Capability, v Ros2Aimdk_msgsMsgThreadResourceInfo) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/ThreadResourceInfo message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgThreadResourceInfo.
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
func PollRos2Aimdk_msgsMsgThreadResourceInfo(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgThreadResourceInfo, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgThreadResourceInfo{}, e
	}
	return DecodeRos2Aimdk_msgsMsgThreadResourceInfo(scratch[:n])
}
