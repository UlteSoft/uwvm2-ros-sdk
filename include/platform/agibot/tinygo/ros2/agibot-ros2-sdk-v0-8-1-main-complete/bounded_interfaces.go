// @file bounded_interfaces.go
// @brief Full agibot tinygo codecs and original record metadata.
// @details Complete agibot ros2_sdk_v0_8_1_main values in tinygo. 72 original records retain 227 fields and 55
// interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
// definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
// profile API manual under document/platform/agibot/en_US/catalog/.
// Generated typed interfaces; separately granted exact native aliases.
package customtypes

import ros "uwvm2.local/roswasm"

// @brief Publish one complete aimdk_msgs/msg/AgentProperties message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgAgentProperties.
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
func PublishRos2Aimdk_msgsMsgAgentProperties(o *ros.Capability, v Ros2Aimdk_msgsMsgAgentProperties) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/AgentProperties message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgAgentProperties.
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
func PollRos2Aimdk_msgsMsgAgentProperties(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgAgentProperties, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgAgentProperties{}, e
	}
	return DecodeRos2Aimdk_msgsMsgAgentProperties(scratch[:n])
}

// @brief Publish one complete aimdk_msgs/msg/AgentPropertiesValue message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros2Aimdk_msgsMsgAgentPropertiesValue.
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
func PublishRos2Aimdk_msgsMsgAgentPropertiesValue(o *ros.Capability, v Ros2Aimdk_msgsMsgAgentPropertiesValue) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/AgentPropertiesValue message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros2Aimdk_msgsMsgAgentPropertiesValue.
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
func PollRos2Aimdk_msgsMsgAgentPropertiesValue(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgAgentPropertiesValue, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgAgentPropertiesValue{}, e
	}
	return DecodeRos2Aimdk_msgsMsgAgentPropertiesValue(scratch[:n])
}

// @brief Publish one complete aimdk_msgs/msg/AgentPropertyIdType message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros2Aimdk_msgsMsgAgentPropertyIdType.
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
func PublishRos2Aimdk_msgsMsgAgentPropertyIdType(o *ros.Capability, v Ros2Aimdk_msgsMsgAgentPropertyIdType) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/AgentPropertyIdType message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgAgentPropertyIdType.
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
func PollRos2Aimdk_msgsMsgAgentPropertyIdType(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgAgentPropertyIdType, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgAgentPropertyIdType{}, e
	}
	return DecodeRos2Aimdk_msgsMsgAgentPropertyIdType(scratch[:n])
}

// @brief Publish one complete aimdk_msgs/msg/AudioVadStateType message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgAudioVadStateType.
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
func PublishRos2Aimdk_msgsMsgAudioVadStateType(o *ros.Capability, v Ros2Aimdk_msgsMsgAudioVadStateType) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/AudioVadStateType message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgAudioVadStateType.
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
func PollRos2Aimdk_msgsMsgAudioVadStateType(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgAudioVadStateType, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgAudioVadStateType{}, e
	}
	return DecodeRos2Aimdk_msgsMsgAudioVadStateType(scratch[:n])
}

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

// @brief Publish one complete aimdk_msgs/msg/FaceEmojiStatus message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgFaceEmojiStatus.
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
func PublishRos2Aimdk_msgsMsgFaceEmojiStatus(o *ros.Capability, v Ros2Aimdk_msgsMsgFaceEmojiStatus) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/FaceEmojiStatus message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgFaceEmojiStatus.
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
func PollRos2Aimdk_msgsMsgFaceEmojiStatus(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgFaceEmojiStatus, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgFaceEmojiStatus{}, e
	}
	return DecodeRos2Aimdk_msgsMsgFaceEmojiStatus(scratch[:n])
}

// @brief Publish one complete aimdk_msgs/msg/HandCommand message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgHandCommand.
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
func PublishRos2Aimdk_msgsMsgHandCommand(o *ros.Capability, v Ros2Aimdk_msgsMsgHandCommand) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/HandCommand message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgHandCommand.
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
func PollRos2Aimdk_msgsMsgHandCommand(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgHandCommand, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgHandCommand{}, e
	}
	return DecodeRos2Aimdk_msgsMsgHandCommand(scratch[:n])
}

// @brief Publish one complete aimdk_msgs/msg/HandCommandArray message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgHandCommandArray.
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
func PublishRos2Aimdk_msgsMsgHandCommandArray(o *ros.Capability, v Ros2Aimdk_msgsMsgHandCommandArray) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/HandCommandArray message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgHandCommandArray.
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
func PollRos2Aimdk_msgsMsgHandCommandArray(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgHandCommandArray, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgHandCommandArray{}, e
	}
	return DecodeRos2Aimdk_msgsMsgHandCommandArray(scratch[:n])
}

// @brief Publish one complete aimdk_msgs/msg/HandState message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgHandState.
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
func PublishRos2Aimdk_msgsMsgHandState(o *ros.Capability, v Ros2Aimdk_msgsMsgHandState) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/HandState message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgHandState.
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
func PollRos2Aimdk_msgsMsgHandState(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgHandState, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgHandState{}, e
	}
	return DecodeRos2Aimdk_msgsMsgHandState(scratch[:n])
}

// @brief Publish one complete aimdk_msgs/msg/HandStateArray message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgHandStateArray.
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
func PublishRos2Aimdk_msgsMsgHandStateArray(o *ros.Capability, v Ros2Aimdk_msgsMsgHandStateArray) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/HandStateArray message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgHandStateArray.
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
func PollRos2Aimdk_msgsMsgHandStateArray(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgHandStateArray, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgHandStateArray{}, e
	}
	return DecodeRos2Aimdk_msgsMsgHandStateArray(scratch[:n])
}

// @brief Publish one complete aimdk_msgs/msg/HandType message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgHandType.
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
func PublishRos2Aimdk_msgsMsgHandType(o *ros.Capability, v Ros2Aimdk_msgsMsgHandType) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/HandType message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgHandType.
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
func PollRos2Aimdk_msgsMsgHandType(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgHandType, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgHandType{}, e
	}
	return DecodeRos2Aimdk_msgsMsgHandType(scratch[:n])
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

// @brief Publish one complete aimdk_msgs/msg/McAction message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcAction.
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
func PublishRos2Aimdk_msgsMsgMcAction(o *ros.Capability, v Ros2Aimdk_msgsMsgMcAction) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/McAction message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgMcAction.
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
func PollRos2Aimdk_msgsMsgMcAction(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgMcAction, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgMcAction{}, e
	}
	return DecodeRos2Aimdk_msgsMsgMcAction(scratch[:n])
}

// @brief Publish one complete aimdk_msgs/msg/McActionCommand message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcActionCommand.
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
func PublishRos2Aimdk_msgsMsgMcActionCommand(o *ros.Capability, v Ros2Aimdk_msgsMsgMcActionCommand) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/McActionCommand message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgMcActionCommand.
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
func PollRos2Aimdk_msgsMsgMcActionCommand(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgMcActionCommand, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgMcActionCommand{}, e
	}
	return DecodeRos2Aimdk_msgsMsgMcActionCommand(scratch[:n])
}

// @brief Publish one complete aimdk_msgs/msg/McActionInfo message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcActionInfo.
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
func PublishRos2Aimdk_msgsMsgMcActionInfo(o *ros.Capability, v Ros2Aimdk_msgsMsgMcActionInfo) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/McActionInfo message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgMcActionInfo.
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
func PollRos2Aimdk_msgsMsgMcActionInfo(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgMcActionInfo, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgMcActionInfo{}, e
	}
	return DecodeRos2Aimdk_msgsMsgMcActionInfo(scratch[:n])
}

// @brief Publish one complete aimdk_msgs/msg/McActionStatus message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcActionStatus.
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
func PublishRos2Aimdk_msgsMsgMcActionStatus(o *ros.Capability, v Ros2Aimdk_msgsMsgMcActionStatus) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/McActionStatus message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgMcActionStatus.
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
func PollRos2Aimdk_msgsMsgMcActionStatus(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgMcActionStatus, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgMcActionStatus{}, e
	}
	return DecodeRos2Aimdk_msgsMsgMcActionStatus(scratch[:n])
}

// @brief Publish one complete aimdk_msgs/msg/McControlArea message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcControlArea.
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
func PublishRos2Aimdk_msgsMsgMcControlArea(o *ros.Capability, v Ros2Aimdk_msgsMsgMcControlArea) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/McControlArea message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgMcControlArea.
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
func PollRos2Aimdk_msgsMsgMcControlArea(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgMcControlArea, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgMcControlArea{}, e
	}
	return DecodeRos2Aimdk_msgsMsgMcControlArea(scratch[:n])
}

// @brief Publish one complete aimdk_msgs/msg/McInputAction message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcInputAction.
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
func PublishRos2Aimdk_msgsMsgMcInputAction(o *ros.Capability, v Ros2Aimdk_msgsMsgMcInputAction) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/McInputAction message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgMcInputAction.
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
func PollRos2Aimdk_msgsMsgMcInputAction(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgMcInputAction, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgMcInputAction{}, e
	}
	return DecodeRos2Aimdk_msgsMsgMcInputAction(scratch[:n])
}

// @brief Publish one complete aimdk_msgs/msg/McInputSource message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcInputSource.
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
func PublishRos2Aimdk_msgsMsgMcInputSource(o *ros.Capability, v Ros2Aimdk_msgsMsgMcInputSource) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/McInputSource message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgMcInputSource.
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
func PollRos2Aimdk_msgsMsgMcInputSource(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgMcInputSource, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgMcInputSource{}, e
	}
	return DecodeRos2Aimdk_msgsMsgMcInputSource(scratch[:n])
}

// @brief Publish one complete aimdk_msgs/msg/McLocomotionVelocity message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros2Aimdk_msgsMsgMcLocomotionVelocity.
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
func PublishRos2Aimdk_msgsMsgMcLocomotionVelocity(o *ros.Capability, v Ros2Aimdk_msgsMsgMcLocomotionVelocity) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/McLocomotionVelocity message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros2Aimdk_msgsMsgMcLocomotionVelocity.
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
func PollRos2Aimdk_msgsMsgMcLocomotionVelocity(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgMcLocomotionVelocity, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgMcLocomotionVelocity{}, e
	}
	return DecodeRos2Aimdk_msgsMsgMcLocomotionVelocity(scratch[:n])
}

// @brief Publish one complete aimdk_msgs/msg/McPresetMotion message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcPresetMotion.
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
func PublishRos2Aimdk_msgsMsgMcPresetMotion(o *ros.Capability, v Ros2Aimdk_msgsMsgMcPresetMotion) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/McPresetMotion message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgMcPresetMotion.
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
func PollRos2Aimdk_msgsMsgMcPresetMotion(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgMcPresetMotion, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgMcPresetMotion{}, e
	}
	return DecodeRos2Aimdk_msgsMsgMcPresetMotion(scratch[:n])
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

// @brief Publish one complete aimdk_msgs/msg/PlayMediaFileRequest message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros2Aimdk_msgsMsgPlayMediaFileRequest.
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
func PublishRos2Aimdk_msgsMsgPlayMediaFileRequest(o *ros.Capability, v Ros2Aimdk_msgsMsgPlayMediaFileRequest) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/PlayMediaFileRequest message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros2Aimdk_msgsMsgPlayMediaFileRequest.
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
func PollRos2Aimdk_msgsMsgPlayMediaFileRequest(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgPlayMediaFileRequest, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgPlayMediaFileRequest{}, e
	}
	return DecodeRos2Aimdk_msgsMsgPlayMediaFileRequest(scratch[:n])
}

// @brief Publish one complete aimdk_msgs/msg/PlayTtsRequest message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgPlayTtsRequest.
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
func PublishRos2Aimdk_msgsMsgPlayTtsRequest(o *ros.Capability, v Ros2Aimdk_msgsMsgPlayTtsRequest) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/PlayTtsRequest message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgPlayTtsRequest.
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
func PollRos2Aimdk_msgsMsgPlayTtsRequest(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgPlayTtsRequest, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgPlayTtsRequest{}, e
	}
	return DecodeRos2Aimdk_msgsMsgPlayTtsRequest(scratch[:n])
}

// @brief Publish one complete aimdk_msgs/msg/PlayTtsResponse message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgPlayTtsResponse.
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
func PublishRos2Aimdk_msgsMsgPlayTtsResponse(o *ros.Capability, v Ros2Aimdk_msgsMsgPlayTtsResponse) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/PlayTtsResponse message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgPlayTtsResponse.
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
func PollRos2Aimdk_msgsMsgPlayTtsResponse(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgPlayTtsResponse, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgPlayTtsResponse{}, e
	}
	return DecodeRos2Aimdk_msgsMsgPlayTtsResponse(scratch[:n])
}

// @brief Publish one complete aimdk_msgs/msg/PmuState message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgPmuState.
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
func PublishRos2Aimdk_msgsMsgPmuState(o *ros.Capability, v Ros2Aimdk_msgsMsgPmuState) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/PmuState message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgPmuState.
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
func PollRos2Aimdk_msgsMsgPmuState(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgPmuState, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgPmuState{}, e
	}
	return DecodeRos2Aimdk_msgsMsgPmuState(scratch[:n])
}

// @brief Publish one complete aimdk_msgs/msg/ProcessedAudioOutput message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros2Aimdk_msgsMsgProcessedAudioOutput.
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
func PublishRos2Aimdk_msgsMsgProcessedAudioOutput(o *ros.Capability, v Ros2Aimdk_msgsMsgProcessedAudioOutput) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/ProcessedAudioOutput message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros2Aimdk_msgsMsgProcessedAudioOutput.
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
func PollRos2Aimdk_msgsMsgProcessedAudioOutput(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgProcessedAudioOutput, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgProcessedAudioOutput{}, e
	}
	return DecodeRos2Aimdk_msgsMsgProcessedAudioOutput(scratch[:n])
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

// @brief Publish one complete aimdk_msgs/msg/TouchState message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgTouchState.
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
func PublishRos2Aimdk_msgsMsgTouchState(o *ros.Capability, v Ros2Aimdk_msgsMsgTouchState) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/TouchState message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgTouchState.
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
func PollRos2Aimdk_msgsMsgTouchState(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgTouchState, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgTouchState{}, e
	}
	return DecodeRos2Aimdk_msgsMsgTouchState(scratch[:n])
}

// @brief Publish one complete aimdk_msgs/msg/TtsPriorityLevel message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgTtsPriorityLevel.
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
func PublishRos2Aimdk_msgsMsgTtsPriorityLevel(o *ros.Capability, v Ros2Aimdk_msgsMsgTtsPriorityLevel) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/TtsPriorityLevel message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgTtsPriorityLevel.
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
func PollRos2Aimdk_msgsMsgTtsPriorityLevel(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgTtsPriorityLevel, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgTtsPriorityLevel{}, e
	}
	return DecodeRos2Aimdk_msgsMsgTtsPriorityLevel(scratch[:n])
}

// @brief Call the selected aimdk_msgs/srv/GetAllJointState service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Aimdk_msgsSrvGetAllJointState_Request, response=Ros2Aimdk_msgsSrvGetAllJointState_Response.
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
func CallRos2Aimdk_msgsSrvGetAllJointState(o *ros.Capability, q Ros2Aimdk_msgsSrvGetAllJointState_Request, output []byte) (Ros2Aimdk_msgsSrvGetAllJointState_Response, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros2Aimdk_msgsSrvGetAllJointState_Response{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros2Aimdk_msgsSrvGetAllJointState_Response{}, e
	}
	return DecodeRos2Aimdk_msgsSrvGetAllJointState_Response(output[:n])
}

// @brief Call the selected aimdk_msgs/srv/GetCurrentInputSource service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Aimdk_msgsSrvGetCurrentInputSource_Request, response=Ros2Aimdk_msgsSrvGetCurrentInputSource_Response.
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
func CallRos2Aimdk_msgsSrvGetCurrentInputSource(o *ros.Capability, q Ros2Aimdk_msgsSrvGetCurrentInputSource_Request, output []byte) (Ros2Aimdk_msgsSrvGetCurrentInputSource_Response, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros2Aimdk_msgsSrvGetCurrentInputSource_Response{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros2Aimdk_msgsSrvGetCurrentInputSource_Response{}, e
	}
	return DecodeRos2Aimdk_msgsSrvGetCurrentInputSource_Response(output[:n])
}

// @brief Call the selected aimdk_msgs/srv/GetHandType service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Aimdk_msgsSrvGetHandType_Request, response=Ros2Aimdk_msgsSrvGetHandType_Response.
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
func CallRos2Aimdk_msgsSrvGetHandType(o *ros.Capability, q Ros2Aimdk_msgsSrvGetHandType_Request, output []byte) (Ros2Aimdk_msgsSrvGetHandType_Response, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros2Aimdk_msgsSrvGetHandType_Response{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros2Aimdk_msgsSrvGetHandType_Response{}, e
	}
	return DecodeRos2Aimdk_msgsSrvGetHandType_Response(output[:n])
}

// @brief Call the selected aimdk_msgs/srv/GetMcAction service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Aimdk_msgsSrvGetMcAction_Request, response=Ros2Aimdk_msgsSrvGetMcAction_Response.
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
func CallRos2Aimdk_msgsSrvGetMcAction(o *ros.Capability, q Ros2Aimdk_msgsSrvGetMcAction_Request, output []byte) (Ros2Aimdk_msgsSrvGetMcAction_Response, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros2Aimdk_msgsSrvGetMcAction_Response{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros2Aimdk_msgsSrvGetMcAction_Response{}, e
	}
	return DecodeRos2Aimdk_msgsSrvGetMcAction_Response(output[:n])
}

// @brief Call the selected aimdk_msgs/srv/GetMute service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Aimdk_msgsSrvGetMute_Request, response=Ros2Aimdk_msgsSrvGetMute_Response.
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
func CallRos2Aimdk_msgsSrvGetMute(o *ros.Capability, q Ros2Aimdk_msgsSrvGetMute_Request, output []byte) (Ros2Aimdk_msgsSrvGetMute_Response, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros2Aimdk_msgsSrvGetMute_Response{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros2Aimdk_msgsSrvGetMute_Response{}, e
	}
	return DecodeRos2Aimdk_msgsSrvGetMute_Response(output[:n])
}

// @brief Call the selected aimdk_msgs/srv/GetVolume service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Aimdk_msgsSrvGetVolume_Request, response=Ros2Aimdk_msgsSrvGetVolume_Response.
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
func CallRos2Aimdk_msgsSrvGetVolume(o *ros.Capability, q Ros2Aimdk_msgsSrvGetVolume_Request, output []byte) (Ros2Aimdk_msgsSrvGetVolume_Response, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros2Aimdk_msgsSrvGetVolume_Response{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros2Aimdk_msgsSrvGetVolume_Response{}, e
	}
	return DecodeRos2Aimdk_msgsSrvGetVolume_Response(output[:n])
}

// @brief Call the selected aimdk_msgs/srv/LedStripCommand service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Aimdk_msgsSrvLedStripCommand_Request, response=Ros2Aimdk_msgsSrvLedStripCommand_Response.
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
func CallRos2Aimdk_msgsSrvLedStripCommand(o *ros.Capability, q Ros2Aimdk_msgsSrvLedStripCommand_Request, output []byte) (Ros2Aimdk_msgsSrvLedStripCommand_Response, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros2Aimdk_msgsSrvLedStripCommand_Response{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros2Aimdk_msgsSrvLedStripCommand_Response{}, e
	}
	return DecodeRos2Aimdk_msgsSrvLedStripCommand_Response(output[:n])
}

// @brief Call the selected aimdk_msgs/srv/PlayEmoji service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Aimdk_msgsSrvPlayEmoji_Request, response=Ros2Aimdk_msgsSrvPlayEmoji_Response.
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
func CallRos2Aimdk_msgsSrvPlayEmoji(o *ros.Capability, q Ros2Aimdk_msgsSrvPlayEmoji_Request, output []byte) (Ros2Aimdk_msgsSrvPlayEmoji_Response, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros2Aimdk_msgsSrvPlayEmoji_Response{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros2Aimdk_msgsSrvPlayEmoji_Response{}, e
	}
	return DecodeRos2Aimdk_msgsSrvPlayEmoji_Response(output[:n])
}

// @brief Call the selected aimdk_msgs/srv/PlayMediaFile service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Aimdk_msgsSrvPlayMediaFile_Request, response=Ros2Aimdk_msgsSrvPlayMediaFile_Response.
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
func CallRos2Aimdk_msgsSrvPlayMediaFile(o *ros.Capability, q Ros2Aimdk_msgsSrvPlayMediaFile_Request, output []byte) (Ros2Aimdk_msgsSrvPlayMediaFile_Response, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros2Aimdk_msgsSrvPlayMediaFile_Response{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros2Aimdk_msgsSrvPlayMediaFile_Response{}, e
	}
	return DecodeRos2Aimdk_msgsSrvPlayMediaFile_Response(output[:n])
}

// @brief Call the selected aimdk_msgs/srv/PlayTts service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Aimdk_msgsSrvPlayTts_Request, response=Ros2Aimdk_msgsSrvPlayTts_Response.
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
func CallRos2Aimdk_msgsSrvPlayTts(o *ros.Capability, q Ros2Aimdk_msgsSrvPlayTts_Request, output []byte) (Ros2Aimdk_msgsSrvPlayTts_Response, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros2Aimdk_msgsSrvPlayTts_Response{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros2Aimdk_msgsSrvPlayTts_Response{}, e
	}
	return DecodeRos2Aimdk_msgsSrvPlayTts_Response(output[:n])
}

// @brief Call the selected aimdk_msgs/srv/PlayVideo service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Aimdk_msgsSrvPlayVideo_Request, response=Ros2Aimdk_msgsSrvPlayVideo_Response.
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
func CallRos2Aimdk_msgsSrvPlayVideo(o *ros.Capability, q Ros2Aimdk_msgsSrvPlayVideo_Request, output []byte) (Ros2Aimdk_msgsSrvPlayVideo_Response, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros2Aimdk_msgsSrvPlayVideo_Response{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros2Aimdk_msgsSrvPlayVideo_Response{}, e
	}
	return DecodeRos2Aimdk_msgsSrvPlayVideo_Response(output[:n])
}

// @brief Call the selected aimdk_msgs/srv/SetAgentPropertiesRequest service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request,
// response=Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response.
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
func CallRos2Aimdk_msgsSrvSetAgentPropertiesRequest(o *ros.Capability, q Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request, output []byte) (Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response{}, e
	}
	return DecodeRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Response(output[:n])
}

// @brief Call the selected aimdk_msgs/srv/SetMcAction service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Aimdk_msgsSrvSetMcAction_Request, response=Ros2Aimdk_msgsSrvSetMcAction_Response.
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
func CallRos2Aimdk_msgsSrvSetMcAction(o *ros.Capability, q Ros2Aimdk_msgsSrvSetMcAction_Request, output []byte) (Ros2Aimdk_msgsSrvSetMcAction_Response, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros2Aimdk_msgsSrvSetMcAction_Response{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros2Aimdk_msgsSrvSetMcAction_Response{}, e
	}
	return DecodeRos2Aimdk_msgsSrvSetMcAction_Response(output[:n])
}

// @brief Call the selected aimdk_msgs/srv/SetMcInputSource service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Aimdk_msgsSrvSetMcInputSource_Request, response=Ros2Aimdk_msgsSrvSetMcInputSource_Response.
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
func CallRos2Aimdk_msgsSrvSetMcInputSource(o *ros.Capability, q Ros2Aimdk_msgsSrvSetMcInputSource_Request, output []byte) (Ros2Aimdk_msgsSrvSetMcInputSource_Response, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros2Aimdk_msgsSrvSetMcInputSource_Response{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros2Aimdk_msgsSrvSetMcInputSource_Response{}, e
	}
	return DecodeRos2Aimdk_msgsSrvSetMcInputSource_Response(output[:n])
}

// @brief Call the selected aimdk_msgs/srv/SetMcPresetMotion service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Aimdk_msgsSrvSetMcPresetMotion_Request, response=Ros2Aimdk_msgsSrvSetMcPresetMotion_Response.
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
func CallRos2Aimdk_msgsSrvSetMcPresetMotion(o *ros.Capability, q Ros2Aimdk_msgsSrvSetMcPresetMotion_Request, output []byte) (Ros2Aimdk_msgsSrvSetMcPresetMotion_Response, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros2Aimdk_msgsSrvSetMcPresetMotion_Response{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros2Aimdk_msgsSrvSetMcPresetMotion_Response{}, e
	}
	return DecodeRos2Aimdk_msgsSrvSetMcPresetMotion_Response(output[:n])
}

// @brief Call the selected aimdk_msgs/srv/SetMute service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Aimdk_msgsSrvSetMute_Request, response=Ros2Aimdk_msgsSrvSetMute_Response.
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
func CallRos2Aimdk_msgsSrvSetMute(o *ros.Capability, q Ros2Aimdk_msgsSrvSetMute_Request, output []byte) (Ros2Aimdk_msgsSrvSetMute_Response, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros2Aimdk_msgsSrvSetMute_Response{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros2Aimdk_msgsSrvSetMute_Response{}, e
	}
	return DecodeRos2Aimdk_msgsSrvSetMute_Response(output[:n])
}

// @brief Call the selected aimdk_msgs/srv/SetVolume service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Aimdk_msgsSrvSetVolume_Request, response=Ros2Aimdk_msgsSrvSetVolume_Response.
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
func CallRos2Aimdk_msgsSrvSetVolume(o *ros.Capability, q Ros2Aimdk_msgsSrvSetVolume_Request, output []byte) (Ros2Aimdk_msgsSrvSetVolume_Response, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros2Aimdk_msgsSrvSetVolume_Response{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros2Aimdk_msgsSrvSetVolume_Response{}, e
	}
	return DecodeRos2Aimdk_msgsSrvSetVolume_Response(output[:n])
}
